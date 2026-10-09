Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.07?download=true
inline.NumInlined: 1226
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [7 x i8] c"default", align 1
@1 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @0, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@2 = private unnamed_addr constant [11 x i8] c"PatternKind", align 1
@3 = private unnamed_addr constant [4 x i8] c"Text", align 1
@4 = private unnamed_addr constant [3 x i8] c"Hex", align 1
@5 = private unnamed_addr constant [6 x i8] c"Regexp", align 1
@6 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @3, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @5, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@7 = private unnamed_addr constant [24 x i8] c"variant index 0 <= i < 3", align 1
@8 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @7, [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsaeRQ2XwCvzm_10serde_core2deReNtB5_8Expected3fmt }>, align 8
@10 = private unnamed_addr constant [33 x i8] c"___figment_relative_metadata_path", align 1
@11 = private unnamed_addr constant [24 x i8] c"___figment_relative_path", align 1
@12 = private unnamed_addr constant [3 x i8] c"fmt", align 1
@13 = private unnamed_addr constant [5 x i8] c"check", align 1
@14 = private unnamed_addr constant [8 x i8] c"warnings", align 1
@15 = private unnamed_addr constant [4 x i8] c"rule", align 1
@16 = private unnamed_addr constant [4 x i8] c"meta", align 1
@17 = private unnamed_addr constant [8 x i8] c"patterns", align 1
@18 = private unnamed_addr constant [8 x i8] c"metadata", align 1
@19 = private unnamed_addr constant [9 x i8] c"rule_name", align 1
@20 = private unnamed_addr constant [4 x i8] c"tags", align 1
@21 = private unnamed_addr constant [7 x i8] c"allowed", align 1
@22 = private unnamed_addr constant [6 x i8] c"regexp", align 1
@23 = private unnamed_addr constant [5 x i8] c"error", align 1
@24 = private unnamed_addr constant [4 x i8] c"type", align 1
@25 = private unnamed_addr constant [8 x i8] c"required", align 1
@26 = private unnamed_addr constant [22 x i8] c"indent_section_headers", align 1
@27 = private unnamed_addr constant [23 x i8] c"indent_section_contents", align 1
@28 = private unnamed_addr constant [13 x i8] c"indent_spaces", align 1
@29 = private unnamed_addr constant [26 x i8] c"newline_before_curly_brace", align 1
@30 = private unnamed_addr constant [32 x i8] c"empty_line_before_section_header", align 1
@31 = private unnamed_addr constant [31 x i8] c"empty_line_after_section_header", align 1
@32 = private unnamed_addr constant [12 x i8] c"align_values", align 1
@33 = private unnamed_addr constant [8 x i8] c"disabled", align 1
@34 = private unnamed_addr constant [21 x i8] c"___figment_tagged_tag", align 1
@35 = private unnamed_addr constant [23 x i8] c"___figment_tagged_value", align 1
@36 = private unnamed_addr constant [6 x i8] c"string", align 1
@37 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.6/src/builder/value_parser.rs\00", align 1
@38 = private unnamed_addr constant [96 x i8] c"ValueEnum::value_variants contains only values with a corresponding ValueEnum::to_possible_value", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @37, [16 x i8] c"s\00\00\00\00\00\00\00c\04\00\00\16\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt }>, align 8
@41 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr @40, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCskIqAKC4t9Ft_2yr }>, align 8
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCskKLDkoKarTP_4core3num5errorNtB4_15TryFromIntErrorNtNtB8_3fmt7Display3fmt }>, align 8
@43 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCskKLDkoKarTP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs_NtNtCskKLDkoKarTP_4core3num5errorNtB4_15TryFromIntErrorNtNtB8_3fmt7Display3fmt, ptr @42, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCskIqAKC4t9Ft_2yr }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@45 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6460878669419779630 to ptr), ptr inttoptr (i64 -115202506172784058 to ptr) }>, align 8
@46 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8215364328835377466 to ptr), ptr inttoptr (i64 1143497104323759030 to ptr) }>, align 8
@47 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2295908376422842543 to ptr), ptr inttoptr (i64 -7784810587718615805 to ptr) }>, align 8
@48 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6225226525835713052 to ptr), ptr inttoptr (i64 28271719069533859 to ptr) }>, align 8
@49 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2823067676338150437 to ptr), ptr inttoptr (i64 -3480893085272704849 to ptr) }>, align 8
@50 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3670754173410178879 to ptr), ptr inttoptr (i64 -3375759610920111893 to ptr) }>, align 8
@51 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2724188134956199339 to ptr), ptr inttoptr (i64 -7993673810352186047 to ptr) }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENtB5_14AnyValueParser9parse_refB1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENtB5_14AnyValueParser10parse_ref_B1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENtB5_14AnyValueParser7type_idB1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENtB5_14AnyValueParser15possible_valuesB1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENtB5_14AnyValueParser9clone_anyB1q_ }>, align 8
@53 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB5_14AnyValueParser9parse_refB1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB5_14AnyValueParser10parse_ref_B1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB5_14AnyValueParser7type_idB1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB5_14AnyValueParser15possible_valuesB1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB5_14AnyValueParser9clone_anyB1q_ }>, align 8
@54 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtB5_14AnyValueParser9parse_refB1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtB5_14AnyValueParser10parse_ref_B1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtB5_14AnyValueParser7type_idB1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtB5_14AnyValueParser15possible_valuesB1q_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtB5_14AnyValueParser9clone_anyB1q_ }>, align 8
@55 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB5_14AnyValueParser9parse_refCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB5_14AnyValueParser10parse_ref_CskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB5_14AnyValueParser7type_idCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB5_14AnyValueParser15possible_valuesCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB5_14AnyValueParser9clone_anyCskIqAKC4t9Ft_2yr }>, align 8
@56 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser9parse_refCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser10parse_ref_CskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser7type_idCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser15possible_valuesCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser9clone_anyCskIqAKC4t9Ft_2yr }>, align 8
@57 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser9parse_refCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser10parse_ref_CskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser7type_idCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser15possible_valuesCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser9clone_anyCskIqAKC4t9Ft_2yr }>, align 8
@58 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands19external_var_parserNtB5_14AnyValueParser9parse_refB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands19external_var_parserNtB5_14AnyValueParser10parse_ref_B11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands19external_var_parserNtB5_14AnyValueParser7type_idB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands19external_var_parserNtB5_14AnyValueParser15possible_valuesB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands19external_var_parserNtB5_14AnyValueParser9clone_anyB11_ }>, align 8
@59 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands20existing_path_parserNtB5_14AnyValueParser9parse_refB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands20existing_path_parserNtB5_14AnyValueParser10parse_ref_B11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands20existing_path_parserNtB5_14AnyValueParser7type_idB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands20existing_path_parserNtB5_14AnyValueParser15possible_valuesB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands20existing_path_parserNtB5_14AnyValueParser9clone_anyB11_ }>, align 8
@60 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands22meta_file_value_parserNtB5_14AnyValueParser9parse_refB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands22meta_file_value_parserNtB5_14AnyValueParser10parse_ref_B11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands22meta_file_value_parserNtB5_14AnyValueParser7type_idB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands22meta_file_value_parserNtB5_14AnyValueParser15possible_valuesB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands22meta_file_value_parserNtB5_14AnyValueParser9clone_anyB11_ }>, align 8
@61 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands26path_with_namespace_parserNtB5_14AnyValueParser9parse_refB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands26path_with_namespace_parserNtB5_14AnyValueParser10parse_ref_B11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands26path_with_namespace_parserNtB5_14AnyValueParser7type_idB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands26path_with_namespace_parserNtB5_14AnyValueParser15possible_valuesB11_, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNvNtCskIqAKC4t9Ft_2yr8commands26path_with_namespace_parserNtB5_14AnyValueParser9clone_anyB11_ }>, align 8
@62 = private unnamed_addr constant [9 x i8] c"\00\01\02\03\04\05\06\07\08", align 1
@63 = private unnamed_addr constant [3 x i8] c"lnk", align 1
@64 = private unnamed_addr constant [5 x i8] c"macho", align 1
@65 = private unnamed_addr constant [3 x i8] c"elf", align 1
@66 = private unnamed_addr constant [2 x i8] c"pe", align 1
@67 = private unnamed_addr constant [6 x i8] c"dotnet", align 1
@68 = private unnamed_addr constant [5 x i8] c"olecf", align 1
@69 = private unnamed_addr constant [3 x i8] c"vba", align 1
@70 = private unnamed_addr constant [3 x i8] c"crx", align 1
@71 = private unnamed_addr constant [3 x i8] c"dex", align 1
@72 = private unnamed_addr constant [5 x i8] c"\00\01\02\03\04", align 1
@73 = private unnamed_addr constant [4 x i8] c"bash", align 1
@74 = private unnamed_addr constant [6 x i8] c"elvish", align 1
@75 = private unnamed_addr constant [4 x i8] c"fish", align 1
@76 = private unnamed_addr constant [10 x i8] c"powershell", align 1
@77 = private unnamed_addr constant [3 x i8] c"zsh", align 1
@78 = private unnamed_addr constant [3 x i8] c"\00\01\02", align 1
@79 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std4path7PathBufENtNtB7_3fmt5Debug3fmtCskIqAKC4t9Ft_2yr }>, align 8
@80 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr }>, align 8
@81 = private unnamed_addr constant [2 x i8] c"Io", align 1
@82 = private unnamed_addr constant [4 x i8] c"path", align 1
@83 = private unnamed_addr constant [3 x i8] c"err", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr }>, align 8
@86 = private unnamed_addr constant [4 x i8] c"Loop", align 1
@87 = private unnamed_addr constant [8 x i8] c"ancestor", align 1
@88 = private unnamed_addr constant [5 x i8] c"child", align 1
@89 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr }>, align 8
@90 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@91 = private unnamed_addr constant [2 x i8] c"\00\01", align 1
@92 = private unnamed_addr constant [4 x i8] c"json", align 1
@93 = private unnamed_addr constant [4 x i8] c"yaml", align 1
@94 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskIqAKC4t9Ft_2yr }>, align 8
@95 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@96 = private unnamed_addr constant [76 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/string.rs\00", align 1
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @96, [16 x i8] c"K\00\00\00\00\00\00\00\9A\0B\00\00\0E\00\00\00" }>, align 8
@98 = private unnamed_addr constant [5 x i8] c"Error", align 1
@99 = private unnamed_addr constant [4 x i8] c"None", align 1
@100 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr }>, align 8
@101 = private unnamed_addr constant [4 x i8] c"Some", align 1
@102 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr }>, align 8
@103 = private unnamed_addr constant [4 x i8] c"TOML", align 1
@104 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @103, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@105 = private unnamed_addr constant [8 x i8] c"\C0\05 file\00", align 1
@106 = private unnamed_addr constant [17 x i8] c"\C0\0E source string\00", align 1
@107 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyjNtB2_3Any7type_idCskIqAKC4t9Ft_2yr }>, align 8
@108 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser9parse_refCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser10parse_ref_CskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser7type_idCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser15possible_valuesCskIqAKC4t9Ft_2yr, ptr @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser9clone_anyCskIqAKC4t9Ft_2yr }>, align 8
@109 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsNtB2_3Any7type_idBx_ }>, align 8
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesNtB2_3Any7type_idBx_ }>, align 8
@111 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtB2_3Any7type_idBx_ }>, align 8
@112 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellNtB2_3Any7type_idCskIqAKC4t9Ft_2yr }>, align 8
@113 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyhNtB2_3Any7type_idCskIqAKC4t9Ft_2yr }>, align 8
@114 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyyNtB2_3Any7type_idCskIqAKC4t9Ft_2yr }>, align 8
@115 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5922854367957367317 to ptr), ptr inttoptr (i64 -1225632931048488146 to ptr) }>, align 8
@116 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2800070175561086965 to ptr), ptr inttoptr (i64 6103630910736011032 to ptr) }>, align 8
@117 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8494639776567078398 to ptr), ptr inttoptr (i64 -7260349541763996399 to ptr) }>, align 8
@118 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -881980423423523072 to ptr), ptr inttoptr (i64 9045655166206660159 to ptr) }>, align 8
@119 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@120 = private unnamed_addr constant [4 x i8] c"kind", align 1
@121 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskIqAKC4t9Ft_2yr }>, align 8
@122 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeEENtNtB7_3fmt5Debug3fmtCskIqAKC4t9Ft_2yr }>, align 8
@123 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsg2CeFYmfPbl_8protobuf7special13SpecialFieldsNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr }>, align 8
@124 = private unnamed_addr constant [6 x i8] c"Module", align 1
@125 = private unnamed_addr constant [4 x i8] c"name", align 1
@126 = private unnamed_addr constant [5 x i8] c"type_", align 1
@127 = private unnamed_addr constant [4 x i8] c"code", align 1
@128 = private unnamed_addr constant [14 x i8] c"special_fields", align 1
@129 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@130 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@131 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@132 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@133 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@134 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@135 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_, ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_ }>, align 8
@136 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserB1A_ENtB2C_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_, ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserB1A_ENtB2C_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_ }>, align 8
@137 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_, ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_ }>, align 8
@138 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr, ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr }>, align 8
@139 = private unnamed_addr constant [15 x i8] c"\C0\0B is not in \C0\00", align 1
@140 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECskIqAKC4t9Ft_2yr, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt }>, align 8
@141 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECskIqAKC4t9Ft_2yr, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBd_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt, ptr @140, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCskIqAKC4t9Ft_2yr, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCskIqAKC4t9Ft_2yr }>, align 8
@142 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@143 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -99370112454259007 to ptr), ptr inttoptr (i64 2388336598931281231 to ptr) }>, align 8
@144 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4736280870341790704 to ptr), ptr inttoptr (i64 1307520967493961046 to ptr) }>, align 8
@145 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1562177306831591964 to ptr), ptr inttoptr (i64 8243298732992676743 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.233 = private unnamed_addr constant [6 x ptr] [ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134], align 8
@switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.236 = private unnamed_addr constant [9 x ptr] [ptr @63, ptr @64, ptr @65, ptr @66, ptr @67, ptr @68, ptr @69, ptr @70, ptr @71], align 8
@switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.237 = private unnamed_addr constant [9 x i8] c"\03\05\03\02\06\05\03\03\03", align 8
@switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.240 = private unnamed_addr constant [5 x i8] c"\04\06\04\0A\03", align 8
@switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.241 = private unnamed_addr constant [5 x ptr] [ptr @73, ptr @74, ptr @75, ptr @76, ptr @77], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsgTIQnf6SZNZ_7figment9providers4dataINtB3_4DataNtB3_4TomlE10file_exactRNtNtCsG258MDvU3F_3std4path4PathECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @1, i64 24, i1 false)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskIqAKC4t9Ft_2yr(ptr noalias noundef nonnull align 8 captures(address, ret: address, provenance) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.e = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CskIqAKC4t9Ft_2yr.exit unwind label %bb.d

_RNCNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CskIqAKC4t9Ft_2yr.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNCNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CskIqAKC4t9Ft_2yr.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNCNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CskIqAKC4t9Ft_2yr.exit ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #21
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_Cs7wOm4VClMVn_7walkdirNtB5_7WalkDir3newRNtNtCsG258MDvU3F_3std4path4PathECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7wOm4VClMVn_7walkdir14WalkDirOptionsECskIqAKC4t9Ft_2yr(ptr null, ptr undef) #22
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 10, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMst_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB6_20RangedI64ValueParserhE5rangeINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivexEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) initializes((0, 32)) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMsd_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_5BoundRxE6clonedCskIqAKC4t9Ft_2yr(i64 noundef 0, ptr nonnull %2) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !6, !alias.scope !33, !noundef !5 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %.sroa.3.0.idx.i = select i1 %i.d, i64 0, i64 8
  %.sroa.3.0.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.3.0.idx.i
  %. = zext nneg i8 %i.c to i64
  %i.e = tail call { i64, i64 } @_RNvMsd_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_5BoundRxE6clonedCskIqAKC4t9Ft_2yr(i64 noundef %., ptr nonnull %.sroa.3.0.i) ; 2 uses
  %.sroa.010.0 = extractvalue { i64, i64 } %i.e, 0
  %.sroa.411.0 = extractvalue { i64, i64 } %i.e, 1
  %i.f = extractvalue { i64, i64 } %i.a, 1
  %i.g = extractvalue { i64, i64 } %i.a, 0
  store i64 %i.g, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.010.0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.411.0, ptr %i.j, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMst_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB6_20RangedI64ValueParserhE5rangeINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromxEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = call { i64, i64 } @_RNvMsd_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_5BoundRxE6clonedCskIqAKC4t9Ft_2yr(i64 noundef 0, ptr nonnull %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !7, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = call { i64, i64 } @_RNvMsd_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_5BoundRxE6clonedCskIqAKC4t9Ft_2yr(i64 noundef %i.d, ptr nonnull %i.e) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 1
  %i.h = extractvalue { i64, i64 } %i.f, 0
  %i.i = extractvalue { i64, i64 } %i.b, 1
  %i.j = extractvalue { i64, i64 } %i.b, 0
  store i64 %i.j, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.k, align 8
  store i64 %i.h, ptr %i.c, align 8
  store i64 %i.g, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsx_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB6_20RangedU64ValueParser5rangeINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromyEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = call { i64, i64 } @_RNvMsd_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_5BoundRyE6clonedCskIqAKC4t9Ft_2yr(i64 noundef 0, ptr nonnull %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !7, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = call { i64, i64 } @_RNvMsd_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_5BoundRyE6clonedCskIqAKC4t9Ft_2yr(i64 noundef %i.d, ptr nonnull %i.e) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 1
  %i.h = extractvalue { i64, i64 } %i.f, 0
  %i.i = extractvalue { i64, i64 } %i.b, 1
  %i.j = extractvalue { i64, i64 } %i.b, 0
  store i64 %i.j, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.k, align 8
  store i64 %i.h, ptr %i.c, align 8
  store i64 %i.g, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_0
begin_hunk_1_@_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIqAKC4t9Ft_2yr:bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #24, !noalias !1238
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !noalias !1238, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp samesign ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1238
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_RNvXs2_NtCsexYYUdYSQU6_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !noalias !1239
  br label %_RNvXs2_NtCsexYYUdYSQU6_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit

_RNvXs2_NtCsexYYUdYSQU6_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i.i, %bb.d
  store i64 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs2_NtCsexYYUdYSQU6_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs0_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCskKLDkoKarTP_4core7convert4FromNvNtCskIqAKC4t9Ft_2yr8commands19external_var_parserE4fromB1U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @58, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs0_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCskKLDkoKarTP_4core7convert4FromNvNtCskIqAKC4t9Ft_2yr8commands20existing_path_parserE4fromB1U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @59, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs0_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCskKLDkoKarTP_4core7convert4FromNvNtCskIqAKC4t9Ft_2yr8commands22meta_file_value_parserE4fromB1U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @60, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs0_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCskKLDkoKarTP_4core7convert4FromNvNtCskIqAKC4t9Ft_2yr8commands26path_with_namespace_parserE4fromB1U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @61, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringINtNtCskKLDkoKarTP_4core7convert4FromRNtNtCsexYYUdYSQU6_5alloc6string6StringE4fromCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !1245, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !noalias !1245, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1246
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1246
  %i.d = load i64, ptr %i.a, align 8, !range !18, !noalias !1246, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !19, !noalias !1246, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !1246
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #24, !noalias !1246
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !1246, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = icmp samesign ule i64 %.val1.i.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1246
  %.not.i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i, label %_RNvXNvXs0_NtNtCsG258MDvU3F_3std3ffi6os_strNtB8_8OsStringINtNtCskKLDkoKarTP_4core7convert4FromRpE4fromRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_14SpecToOsString17spec_to_os_stringCskIqAKC4t9Ft_2yr.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i, i1 false), !noalias !1247
  br label %_RNvXNvXs0_NtNtCsG258MDvU3F_3std3ffi6os_strNtB8_8OsStringINtNtCskKLDkoKarTP_4core7convert4FromRpE4fromRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_14SpecToOsString17spec_to_os_stringCskIqAKC4t9Ft_2yr.exit

_RNvXNvXs0_NtNtCsG258MDvU3F_3std3ffi6os_strNtB8_8OsStringINtNtCskKLDkoKarTP_4core7convert4FromRpE4fromRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_14SpecToOsString17spec_to_os_stringCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i.i, %bb.c
  store i64 %i.g, ptr %0, align 8, !alias.scope !1245
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1245
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !1245
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1258, !noalias !1257, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1258, !noalias !1257, !nonnull !5, !noundef !5
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !1258, !noalias !1257
  %.val.i = load i8, ptr %i.a, align 1, !range !6, !noalias !1259, !noundef !5
  %i.f = trunc nuw i8 %.val.i to i1
  %spec.select.i.i.i.i = select i1 %i.f, ptr @93, ptr @92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !1260, !noalias !1258
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !1260, !noalias !1258
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.i, align 8, !alias.scope !1260, !noalias !1258
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %spec.select.i.i.i.i, ptr %i.j, align 8, !alias.scope !1260, !noalias !1258
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 4, ptr %i.k, align 8, !alias.scope !1260, !noalias !1258
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.l, align 8, !alias.scope !1260, !noalias !1258
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0EBW_.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i64 [ 0, %bb.b ], [ -1, %bb.a ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !1257, !noalias !1258
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserB1A_ENtB2C_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1271, !noalias !1270, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1271, !noalias !1270, !nonnull !5, !noundef !5
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !1271, !noalias !1270
  %.val.i = load i8, ptr %i.a, align 1, !range !28, !noalias !1272, !noundef !5 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !1273, !noalias !1271
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1273, !noalias !1271
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1273, !noalias !1271
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1273, !noalias !1271
  %i.f = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.236, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.237, i64 %i.g
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1273, !noalias !1271
  store i64 %switch.ext, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1273, !noalias !1271
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1273, !noalias !1271
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2C_12value_parserINtB3S_15EnumValueParserBQ_ENtB3S_16TypedValueParser15possible_values0EBW_.exit

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !1270, !noalias !1271
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2C_12value_parserINtB3S_15EnumValueParserBQ_ENtB3S_16TypedValueParser15possible_values0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2C_12value_parserINtB3S_15EnumValueParserBQ_ENtB3S_16TypedValueParser15possible_values0EBW_.exit: ; preds = %switch.lookup, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserB1A_ENtB2C_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1278, !noalias !1277, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !1278, !noalias !1277 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !1278, !noalias !1277
  tail call void @_RNvXs2_NtNtCskIqAKC4t9Ft_2yr8commands4scanNtB5_13OutputFormatsNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e), !noalias !1278
  %i.g = load i64, ptr %0, align 8, !range !8, !alias.scope !1277, !noalias !1278, !noundef !5
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0EBW_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !1277, !noalias !1278
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0EBW_.exit: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1289, !noalias !1288, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1289, !noalias !1288, !nonnull !5, !noundef !5
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !1289, !noalias !1288
  %.val.i = load i8, ptr %i.a, align 1, !range !17, !noalias !1290, !noundef !5 ; 2 uses
  %i.f = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.240, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.241, i64 %i.g
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  store i64 0, ptr %0, align 8, !alias.scope !1291, !noalias !1289
  %.sroa.0.sroa.0.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1291, !noalias !1289
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1291, !noalias !1289
  %.sroa.0.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1291, !noalias !1289
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load2, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1291, !noalias !1289
  %.sroa.18.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %switch.ext, ptr %.sroa.18.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1291, !noalias !1289
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1291, !noalias !1289
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2H_12value_parserINtB3X_15EnumValueParserBQ_ENtB3X_16TypedValueParser15possible_values0ECskIqAKC4t9Ft_2yr.exit

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !1288, !noalias !1289
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2H_12value_parserINtB3X_15EnumValueParserBQ_ENtB3X_16TypedValueParser15possible_values0ECskIqAKC4t9Ft_2yr.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2H_12value_parserINtB3X_15EnumValueParserBQ_ENtB3X_16TypedValueParser15possible_values0ECskIqAKC4t9Ft_2yr.exit: ; preds = %switch.lookup, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1M_NtCsexYYUdYSQU6_5alloc6stringxNtB6_12SpecToString14spec_to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [19 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = icmp slt i64 %.0.val, 0
  br i1 %i.e, label %.noexc16, label %.noexc

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.b, align 8, !range !18, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !19, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %.noexc15, label %bb.b, !prof !20

.noexc15:                                         ; preds = %.noexc
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

.noexc16:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.a, align 8, !range !18, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !19, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc17, label %bb.d, !prof !20

.noexc17:                                         ; preds = %.noexc16
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #24
  unreachable

bb.b:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.s = icmp samesign ugt i64 %i.i, 18
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.c, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0 = phi i64 [ %i.x, %bb.e ], [ %.0.val, %bb.b ]
  %i.t = invoke { ptr, i64 } @_RNvMsf_NtNtNtCskKLDkoKarTP_4core3fmt3num3impy4__fmt(i64 noundef %.sroa.012.0, ptr noalias nofree noundef nonnull %i.d, i64 noundef 19)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %.noexc16
  %i.u = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.v = icmp samesign ugt i64 %i.o, 19
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.o, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1296, !nonnull !5, !noundef !5
  store i8 45, ptr %i.w, align 1
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !1296
  %i.x = sub i64 0, %.0.val
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.t, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.z)
          to label %.noexc20 unwind label %bb.j

.noexc20:                                         ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1297, !noundef !5 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1297, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false)
  %.pre.i = load i64, ptr %i.aa, align 8, !alias.scope !1297
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc20
  %i.ag = phi i64 [ %.pre.i, %bb.g ], [ %i.ab, %.noexc20 ]
  %i.ah = add i64 %i.ag, %i.z
  store i64 %i.ah, ptr %i.aa, align 8, !alias.scope !1297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter15filter_try_foldRNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenINtNtNtBb_3num7nonzero7NonZerojEINtNtBb_6option6OptionB2m_ENCNvMs0_NtB1J_9processorINtB3r_7ContextINtB1H_6TokensINtNtBV_7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB4D_6parser6ParserENCINvMs_B1J_NtB1J_9Formatter6formatRShNtNtNtBb_2io4util4SinkE0EEE5token0NCNvXs_NvNtNtNtBX_6traits8iterator8Iterator10advance_byINtBT_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterB1F_EB3j_ENtB6Y_13SpecAdvanceBy15spec_advance_by0E0INtB7_5FnMutTB2m_B1E_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !14, !noundef !5
  %.val.i = load ptr, ptr %.val, align 8, !noalias !1300, !nonnull !5, !align !14, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 696
  %i.c = load i32, ptr %i.b, align 8, !noalias !1300, !noundef !5
  %i.d = tail call noundef i32 @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt6tokensNtB2_5Token8category(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  %i.e = and i32 %i.d, %i.c
  %.not.i.i = icmp eq i32 %i.e, 0
  %i.f = sext i1 %.not.i.i to i64
  %spec.select.i = add i64 %1, %i.f
  ret i64 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter15filter_try_foldRNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenINtNtNtBb_3num7nonzero7NonZerojEINtNtBb_6option6OptionB2m_ENCNvMs0_NtB1J_9processorINtB3r_7ContextINtB1H_6TokensINtNtBV_7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB4D_6parser6ParserENCINvMs_B1J_NtB1J_9Formatter6formatRShQINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0EEE5token0NCNvXs_NvNtNtNtBX_6traits8iterator8Iterator10advance_byINtBT_6FilterINtNtNtNtB6Q_11collections9vec_deque4iter4IterB1F_EB3j_ENtB7E_13SpecAdvanceBy15spec_advance_by0E0INtB7_5FnMutTB2m_B1E_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !14, !noundef !5
  %.val.i = load ptr, ptr %.val, align 8, !noalias !1303, !nonnull !5, !align !14, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 696
  %i.c = load i32, ptr %i.b, align 8, !noalias !1303, !noundef !5
  %i.d = tail call noundef i32 @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt6tokensNtB2_5Token8category(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  %i.e = and i32 %i.d, %i.c
  %.not.i.i = icmp eq i32 %i.e, 0
  %i.f = sext i1 %.not.i.i to i64
  %spec.select.i = add i64 %1, %i.f
  ret i64 %spec.select.i
}

end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1Y_6StringINtNtBZ_7collect6ExtendcE6extendINtNtNtB11_8adapters5chain5ChainINtNtB3f_3map3MapINtNtB3f_7flatten7FlatMapINtNtB3f_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB5C_s_0EIB3Y_INtNtBb_6option4IterB2r_ENtNtNtBb_3str4iter5CharsNCB5C_s0_0EEE0E0INtB7_5FnMutTucEE8call_mutB5O_:bb.a
  %i.ac = or disjoint i8 %i.o, -64
  store i8 %i.ac, ptr %i.j, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.m, ptr %i.ad, align 1
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters5chain5ChainINtNtB2G_3map3MapINtNtB2G_7flatten7FlatMapINtNtB2G_4take4TakeINtNtNtBe_5slice4iter4IterhEENtNtBe_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB52_s_0EIB3o_INtNtBe_6option4IterB1S_ENtNtNtBe_3str4iter5CharsNCB52_s0_0EEE0E0B5e_.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = or disjoint i8 %i.s, -32
  store i8 %i.ae, ptr %i.j, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.q, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.m, ptr %i.ag, align 1
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters5chain5ChainINtNtB2G_3map3MapINtNtB2G_7flatten7FlatMapINtNtB2G_4take4TakeINtNtNtBe_5slice4iter4IterhEENtNtBe_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB52_s_0EIB3o_INtNtBe_6option4IterB1S_ENtNtNtBe_3str4iter5CharsNCB52_s0_0EEE0E0B5e_.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.x, ptr %i.j, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.u, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.q, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 %i.m, ptr %i.aj, align 1
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters5chain5ChainINtNtB2G_3map3MapINtNtB2G_7flatten7FlatMapINtNtB2G_4take4TakeINtNtNtBe_5slice4iter4IterhEENtNtBe_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB52_s_0EIB3o_INtNtBe_6option4IterB1S_ENtNtNtBe_3str4iter5CharsNCB52_s0_0EEE0E0B5e_.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters5chain5ChainINtNtB2G_3map3MapINtNtB2G_7flatten7FlatMapINtNtB2G_4take4TakeINtNtNtBe_5slice4iter4IterhEENtNtBe_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB52_s_0EIB3o_INtNtBe_6option4IterB1S_ENtNtNtBe_3str4iter5CharsNCB52_s0_0EEE0E0B5e_.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ak = add nuw i64 %.sroa.0.03.i.i.i, %i.c
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !1531
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1Y_6StringINtNtBZ_7collect6ExtendcE6extendINtNtNtB11_8adapters5chain5ChainINtNtB3f_3map3MapINtNtB3f_7flatten7FlatMapINtNtB3f_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB5C_s_0EIB3Y_INtNtBb_6option4IterB2r_ENtNtNtBb_3str4iter5CharsNCB5C_s0_0EEE0E0INtB7_5FnMutTucEE8call_mutB5O_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !14, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1534, !noundef !5 ; 4 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ult i32 %1, 128
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.g = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i.i.i = select i1 %i.g, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i = select i1 %i.f, i64 2, i64 %..i.i.i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.sroa.0.0.ph.i.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1534, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c ; 9 uses
  %i.k = trunc i32 %1 to i8
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128                ; 3 uses
  %i.n = lshr i32 %1, 6
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128                ; 2 uses
  %i.r = lshr i32 %1, 12
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  %i.t = and i8 %i.s, 63
  %i.u = or disjoint i8 %i.t, -128
  %i.v = lshr i32 %1, 18
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, -16
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef 1)
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1534, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.c
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters5chain5ChainINtNtB2G_3map3MapINtNtB2G_7flatten7FlatMapINtNtB2G_4take4TakeINtNtNtBe_5slice4iter4IterhEENtNtBe_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB52_s_0EIB3o_INtNtBe_6option4IterB1S_ENtNtNtBe_3str4iter5CharsNCB52_s0_0EEE0E0B5e_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = or disjoint i8 %i.o, -64
  store i8 %i.ac, ptr %i.j, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.m, ptr %i.ad, align 1
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters5chain5ChainINtNtB2G_3map3MapINtNtB2G_7flatten7FlatMapINtNtB2G_4take4TakeINtNtNtBe_5slice4iter4IterhEENtNtBe_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB52_s_0EIB3o_INtNtBe_6option4IterB1S_ENtNtNtBe_3str4iter5CharsNCB52_s0_0EEE0E0B5e_.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = or disjoint i8 %i.s, -32
  store i8 %i.ae, ptr %i.j, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.q, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.m, ptr %i.ag, align 1
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters5chain5ChainINtNtB2G_3map3MapINtNtB2G_7flatten7FlatMapINtNtB2G_4take4TakeINtNtNtBe_5slice4iter4IterhEENtNtBe_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB52_s_0EIB3o_INtNtBe_6option4IterB1S_ENtNtNtBe_3str4iter5CharsNCB52_s0_0EEE0E0B5e_.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.x, ptr %i.j, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.u, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.q, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 %i.m, ptr %i.aj, align 1
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters5chain5ChainINtNtB2G_3map3MapINtNtB2G_7flatten7FlatMapINtNtB2G_4take4TakeINtNtNtBe_5slice4iter4IterhEENtNtBe_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB52_s_0EIB3o_INtNtBe_6option4IterB1S_ENtNtNtBe_3str4iter5CharsNCB52_s0_0EEE0E0B5e_.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters5chain5ChainINtNtB2G_3map3MapINtNtB2G_7flatten7FlatMapINtNtB2G_4take4TakeINtNtNtBe_5slice4iter4IterhEENtNtBe_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB52_s_0EIB3o_INtNtBe_6option4IterB1S_ENtNtNtBe_3str4iter5CharsNCB52_s0_0EEE0E0B5e_.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ak = add nuw i64 %.sroa.0.03.i.i.i, %i.c
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !1534
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutB2j_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !6, !noundef !5
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutB2j_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !6, !noundef !5
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutB2j_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !6, !noundef !5
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !6, !noundef !5
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7wOm4VClMVn_7walkdir5error10ErrorInnerNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %i.d = load i64, ptr %i.c, align 8, !range !8, !alias.scope !1538, !noalias !1539, !noundef !5
  %.not.i = icmp eq i64 %i.d, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1540
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.e, ptr %i.a, align 8, !noalias !1540
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 8, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1540
  br label %_RNvXs3_NtCs7wOm4VClMVn_7walkdir5errorNtB5_10ErrorInnerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1540
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.b, align 8, !noalias !1540
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 4, ptr noundef nonnull readonly %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1540
  br label %_RNvXs3_NtCs7wOm4VClMVn_7walkdir5errorNtB5_10ErrorInnerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs3_NtCs7wOm4VClMVn_7walkdir5errorNtB5_10ErrorInnerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !29, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.233, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba3vba6ModuleNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1543
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.e, ptr %i.a, align 8, !noalias !1543
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 4, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @121, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @121, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1543
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtB6_7Display3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCskIqAKC4t9Ft_2yr.exit:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1547, !noalias !1548, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1547, !noalias !1548, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !1547
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCskKLDkoKarTP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeEENtNtB7_3fmt5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !1549, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std4path7PathBufENtNtB7_3fmt5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1552, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1552, !nonnull !5, !noundef !5
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
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1552, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
end_hunk_2
begin_hunk_3_@_RNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB5_16TypedValueParser9parse_refB1q_:bb.a
bb.z:                                             ; preds = %bb.aa, %.body.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1801
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.au, %bb.ax, %bb.ab, %bb.l, %bb.x, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.ab ], [ %eh.lpad-body.i, %bb.l ], [ %i.bf, %bb.x ], [ %.pn15.i, %bb.aa ], [ %i.db, %bb.au ], [ %.pn14.i15, %bb.ax ], [ %eh.lpad-body.i22, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %bb.l, %.body12.thread18.i
  %.pn15.i = phi { ptr, i32 } [ %i.al, %.body12.thread18.i ], [ %eh.lpad-body.i, %bb.l ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #22
          to label %common.resume unwind label %bb.z, !noalias !1801

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs0_0B1s_.exit: ; preds = %bb.w
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o), !noalias !1801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1801
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bi, align 8
  br label %bb.ay

_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i: ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !5 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 9 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 9 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 9 uses
  %.sroa.81.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 9 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 9 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 0, ptr %i.i, align 8, !noalias !1806
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1806
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1806
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1806
  store ptr @63, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1806
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1806
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1806
  %i.bn = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i unwind label %bb.ab, !noalias !1806

bb.ab:                                            ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.8, %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.7, %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.6, %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.5, %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4, %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3, %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2, %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1, %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #22
          to label %common.resume unwind label %bb.ac, !noalias !1806

bb.ac:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1806
  unreachable

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i: ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  br i1 %i.bn, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1

_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 0, ptr %i.i, align 8, !noalias !1806
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1806
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1806
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1806
  store ptr @64, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1806
  store i64 5, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1806
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1806
  %i.bq = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1 unwind label %bb.ab, !noalias !1806

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1: ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  br i1 %i.bq, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2

_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 0, ptr %i.i, align 8, !noalias !1806
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1806
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1806
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1806
  store ptr @65, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1806
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1806
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1806
  %i.br = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2 unwind label %bb.ab, !noalias !1806

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2: ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  br i1 %i.br, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3

_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 0, ptr %i.i, align 8, !noalias !1806
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1806
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1806
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1806
  store ptr @66, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1806
  store i64 2, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1806
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1806
  %i.bs = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.3 unwind label %bb.ab, !noalias !1806

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.3: ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  br i1 %i.bs, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4

_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 0, ptr %i.i, align 8, !noalias !1806
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1806
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1806
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1806
  store ptr @67, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1806
  store i64 6, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1806
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1806
  %i.bt = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.4 unwind label %bb.ab, !noalias !1806

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.4: ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  br i1 %i.bt, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.5

_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.5: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 0, ptr %i.i, align 8, !noalias !1806
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1806
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1806
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1806
  store ptr @68, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1806
  store i64 5, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1806
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1806
  %i.bu = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.5 unwind label %bb.ab, !noalias !1806

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.5: ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.5
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  br i1 %i.bu, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.6

_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.6: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 0, ptr %i.i, align 8, !noalias !1806
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1806
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1806
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1806
  store ptr @69, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1806
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1806
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1806
  %i.bv = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.6 unwind label %bb.ab, !noalias !1806

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.6: ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.6
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  br i1 %i.bv, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.7

_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.7: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 0, ptr %i.i, align 8, !noalias !1806
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1806
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1806
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1806
  store ptr @70, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1806
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1806
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1806
  %i.bw = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.7 unwind label %bb.ab, !noalias !1806

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.7: ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.7
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  br i1 %i.bw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.8

_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.8: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 0, ptr %i.i, align 8, !noalias !1806
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1806
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1806
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1806
  store ptr @71, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1806
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1806
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1806
  %i.bx = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.8 unwind label %bb.ab, !noalias !1806

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.8: ; preds = %_RNvXs0_NtNtCskIqAKC4t9Ft_2yr8commands4dumpNtB5_16SupportedModulesNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  br i1 %i.bx, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit, label %bb.ad

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.8, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.7, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.6, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.5, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.4, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.3, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i
  %.ptr.lcssa18 = phi ptr [ @62, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @62, i64 1), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1 ], [ getelementptr inbounds nuw (i8, ptr @62, i64 2), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2 ], [ getelementptr inbounds nuw (i8, ptr @62, i64 3), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.3 ], [ getelementptr inbounds nuw (i8, ptr @62, i64 4), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.4 ], [ getelementptr inbounds nuw (i8, ptr @62, i64 5), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.5 ], [ getelementptr inbounds nuw (i8, ptr @62, i64 6), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.6 ], [ getelementptr inbounds nuw (i8, ptr @62, i64 7), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.7 ], [ getelementptr inbounds nuw (i8, ptr @62, i64 8), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.8 ]
  %.val = load i8, ptr %.ptr.lcssa18, align 1, !range !28, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %i.by, align 1
  br label %bb.ay

bb.ad:                                            ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1807
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1807
  %i.bz = load i64, ptr %i.e, align 8, !range !18, !noalias !1807, !noundef !5
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !19, !noalias !1807, !noundef !5 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.ae, label %bb.af, !prof !20

bb.ae:                                            ; preds = %bb.ad
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !1807
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cc, i64 %i.ce) #24, !noalias !1807
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.cd, align 8, !noalias !1807, !nonnull !5, !noundef !5 ; 2 uses
  %i.cg = icmp ule i64 %i.bm, %i.cc
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1807
  %.not.i12 = icmp eq i64 %i.bm, 0
  br i1 %.not.i12, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  store i64 %i.cc, ptr %i.h, align 8, !noalias !1807
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cf, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !1807
  %.sroa.6.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx.i14, align 8, !noalias !1807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1807
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB4O_15EnumValueParserB3K_ENtB4O_16TypedValueParser9parse_refs_00ENCB4G_s_0ENCB4G_s0_0EE9from_iterB3Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull @62, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @62, i64 9))
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i16 unwind label %.body11.thread17.i, !noalias !1807

.body11.thread17.i:                               ; preds = %bb.ag
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull align 1 %i.bk, i64 %i.bm, i1 false), !noalias !1807
  br label %bb.ag

bb.ai:                                            ; preds = %.body.i20
  br i1 %.sroa.02.2.lpad-body.i21, label %bb.ax, label %common.resume

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i16: ; preds = %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1807, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !1807, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1807
  br i1 %.not, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1808
  store i64 0, ptr %i.d, align 8, !noalias !1808
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !1808
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1808
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.cm, align 8, !noalias !1808
  store ptr %i.d, ptr %i.c, align 8, !noalias !1808
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @94, ptr %i.cn, align 8, !noalias !1808
  %i.co = invoke noundef zeroext i1 @_RNvXs9_NtNtCs1ZTs3ySsPIM_12clap_builder7builder3argNtB5_3ArgNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.al unwind label %bb.ak, !noalias !1809

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %.body.i20 unwind label %bb.an, !noalias !1809

bb.al:                                            ; preds = %bb.aj
  br i1 %i.co, label %bb.am, label %bb.as, !prof !20

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #25
          to label %.noexc.i.i24 unwind label %bb.ak, !noalias !1809

.noexc.i.i24:                                     ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1809
  unreachable

bb.ao:                                            ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i16
  call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1811
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i25 unwind label %bb.aq, !noalias !1807

.noexc.i25:                                       ; preds = %bb.ao
  %i.cr = load i64, ptr %i.b, align 8, !range !18, !noalias !1811, !noundef !5
  %i.cs = trunc nuw i64 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !range !19, !noalias !1811, !noundef !5 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cs, label %bb.ap, label %_RNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB9_16TypedValueParser9parse_refs2_00B1u_.exit.i, !prof !20

bb.ap:                                            ; preds = %.noexc.i25
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !1811
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cu, i64 %i.cw) #24
          to label %.noexc9.i unwind label %bb.aq, !noalias !1807

.noexc9.i:                                        ; preds = %bb.ap
  unreachable

_RNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB9_16TypedValueParser9parse_refs2_00B1u_.exit.i: ; preds = %.noexc.i25
  %i.cx = load ptr, ptr %i.cv, align 8, !noalias !1811, !nonnull !5, !noundef !5 ; 2 uses
  %i.cy = icmp samesign ugt i64 %i.cu, 2
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1811
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cx, i8 46, i64 3, i1 false), !noalias !1811
  store i64 %i.cu, ptr %i.f, align 8, !alias.scope !1810, !noalias !1807
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cx, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !1810, !noalias !1807
  %.sroa.6.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i26, align 8, !alias.scope !1810, !noalias !1807
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %.sroa.02.2.i23 = phi i1 [ false, %bb.ar ], [ true, %bb.ap ], [ true, %bb.ao ]
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i20

.body.i20:                                        ; preds = %bb.aq, %bb.ak
  %.sroa.02.2.lpad-body.i21 = phi i1 [ %.sroa.02.2.i23, %bb.aq ], [ true, %bb.ak ]
  %eh.lpad-body.i22 = phi { ptr, i32 } [ %i.cz, %bb.aq ], [ %i.cp, %bb.ak ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.ai unwind label %bb.aw, !noalias !1807

bb.ar:                                            ; preds = %bb.as, %_RNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB9_16TypedValueParser9parse_refs2_00B1u_.exit.i
  %i.da = invoke noundef nonnull align 8 ptr @_RNvMNtCs1ZTs3ySsPIM_12clap_builder5errorNtB2_5Error13invalid_valueCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cj, i64 noundef %i.cl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.at unwind label %bb.aq, !noalias !1807

bb.as:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1808
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1807
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs2_0B1s_.exit unwind label %bb.au, !noalias !1807

bb.au:                                            ; preds = %bb.at
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.av, !noalias !1807

bb.av:                                            ; preds = %bb.au
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1807
  unreachable

bb.aw:                                            ; preds = %bb.ax, %.body.i20
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1807
  unreachable

bb.ax:                                            ; preds = %bb.ai, %.body11.thread17.i
  %.pn14.i15 = phi { ptr, i32 } [ %i.ch, %.body11.thread17.i ], [ %eh.lpad-body.i22, %bb.ai ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %common.resume unwind label %bb.aw, !noalias !1807

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs2_0B1s_.exit: ; preds = %bb.at
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !1807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1807
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %i.de, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs0_0B1s_.exit, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs2_0B1s_.exit, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs0_0B1s_.exit ], [ 1, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtB7_16TypedValueParser9parse_refs2_0B1s_.exit ], [ 0, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserBQ_ENtB2C_16TypedValueParser9parse_refs1_0EBW_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENtB5_16TypedValueParser9parse_refB1q_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
end_hunk_3
begin_hunk_4_@_RNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB5_16TypedValueParser9parse_refCskIqAKC4t9Ft_2yr:bb.a
.noexc.i:                                         ; preds = %bb.r
  %i.av = load i64, ptr %i.j, align 8, !range !18, !noalias !1865, !noundef !5
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !19, !noalias !1865, !noundef !5 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.s, label %_RNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs0_00CskIqAKC4t9Ft_2yr.exit.i, !prof !20

bb.s:                                             ; preds = %.noexc.i
  %i.ba = load i64, ptr %i.az, align 8, !noalias !1865
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #24
          to label %.noexc10.i unwind label %bb.t, !noalias !1861

.noexc10.i:                                       ; preds = %bb.s
  unreachable

_RNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs0_00CskIqAKC4t9Ft_2yr.exit.i: ; preds = %.noexc.i
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !1865, !nonnull !5, !noundef !5 ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.ay, 2
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1865
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i8 46, i64 3, i1 false), !noalias !1865
  store i64 %i.ay, ptr %i.n, align 8, !alias.scope !1864, !noalias !1861
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !1864, !noalias !1861
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1864, !noalias !1861
  br label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.sroa.02.2.i = phi i1 [ false, %bb.u ], [ true, %bb.s ], [ true, %bb.r ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.n
  %.sroa.02.2.lpad-body.i = phi i1 [ %.sroa.02.2.i, %bb.t ], [ true, %bb.n ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.at, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #22
          to label %bb.l unwind label %bb.z, !noalias !1861

bb.u:                                             ; preds = %bb.v, %_RNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs0_00CskIqAKC4t9Ft_2yr.exit.i
  %i.be = invoke noundef nonnull align 8 ptr @_RNvMNtCs1ZTs3ySsPIM_12clap_builder5errorNtB2_5Error13invalid_valueCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.an, i64 noundef %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.w unwind label %bb.t, !noalias !1861

bb.v:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1862
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1861
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs0_0CskIqAKC4t9Ft_2yr.exit unwind label %bb.x, !noalias !1861

bb.x:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.y, !noalias !1861

bb.y:                                             ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1861
  unreachable

bb.z:                                             ; preds = %bb.aa, %.body.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1861
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.au, %bb.ax, %bb.ab, %bb.l, %bb.x, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.ab ], [ %eh.lpad-body.i, %bb.l ], [ %i.bf, %bb.x ], [ %.pn15.i, %bb.aa ], [ %i.cx, %bb.au ], [ %.pn14.i15, %bb.ax ], [ %eh.lpad-body.i22, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %bb.l, %.body12.thread18.i
  %.pn15.i = phi { ptr, i32 } [ %i.al, %.body12.thread18.i ], [ %eh.lpad-body.i, %bb.l ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #22
          to label %common.resume unwind label %bb.z, !noalias !1861

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs0_0CskIqAKC4t9Ft_2yr.exit: ; preds = %bb.w
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o), !noalias !1861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1861
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bi, align 8
  br label %bb.ay

_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i: ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !5 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 5 uses
  %.sroa.81.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 5 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1866
  store i64 0, ptr %i.i, align 8, !noalias !1866
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1866
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1866
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1866
  store ptr @73, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1866
  store i64 4, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1866
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1866
  %i.bn = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i unwind label %bb.ab, !noalias !1866

bb.ab:                                            ; preds = %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4, %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3, %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2, %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1, %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #22
          to label %common.resume unwind label %bb.ac, !noalias !1866

bb.ac:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1866
  unreachable

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1866
  br i1 %i.bn, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserBQ_ENtB2H_16TypedValueParser9parse_refs1_0ECskIqAKC4t9Ft_2yr.exit, label %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1

_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1866
  store i64 0, ptr %i.i, align 8, !noalias !1866
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1866
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1866
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1866
  store ptr @74, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1866
  store i64 6, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1866
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1866
  %i.bq = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.1 unwind label %bb.ab, !noalias !1866

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.1: ; preds = %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1866
  br i1 %i.bq, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserBQ_ENtB2H_16TypedValueParser9parse_refs1_0ECskIqAKC4t9Ft_2yr.exit, label %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2

_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1866
  store i64 0, ptr %i.i, align 8, !noalias !1866
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1866
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1866
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1866
  store ptr @75, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1866
  store i64 4, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1866
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1866
  %i.br = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.2 unwind label %bb.ab, !noalias !1866

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.2: ; preds = %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1866
  br i1 %i.br, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserBQ_ENtB2H_16TypedValueParser9parse_refs1_0ECskIqAKC4t9Ft_2yr.exit, label %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3

_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1866
  store i64 0, ptr %i.i, align 8, !noalias !1866
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1866
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1866
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1866
  store ptr @76, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1866
  store i64 10, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1866
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1866
  %i.bs = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.3 unwind label %bb.ab, !noalias !1866

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.3: ; preds = %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1866
  br i1 %i.bs, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserBQ_ENtB2H_16TypedValueParser9parse_refs1_0ECskIqAKC4t9Ft_2yr.exit, label %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4

_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1866
  store i64 0, ptr %i.i, align 8, !noalias !1866
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !1866
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !1866
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1866
  store ptr @77, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !1866
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1866
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1866
  %i.bt = invoke noundef zeroext i1 @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.4 unwind label %bb.ab, !noalias !1866

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.4: ; preds = %_RNvXs0_NtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1866
  br i1 %i.bt, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserBQ_ENtB2H_16TypedValueParser9parse_refs1_0ECskIqAKC4t9Ft_2yr.exit, label %bb.ad

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserBQ_ENtB2H_16TypedValueParser9parse_refs1_0ECskIqAKC4t9Ft_2yr.exit: ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.4, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.3, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.2, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.1, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i
  %.ptr.lcssa18 = phi ptr [ @72, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i ], [ getelementptr inbounds nuw (i8, ptr @72, i64 1), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.1 ], [ getelementptr inbounds nuw (i8, ptr @72, i64 2), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.2 ], [ getelementptr inbounds nuw (i8, ptr @72, i64 3), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.3 ], [ getelementptr inbounds nuw (i8, ptr @72, i64 4), %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.4 ]
  %.val = load i8, ptr %.ptr.lcssa18, align 1, !range !17, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %i.bu, align 1
  br label %bb.ay

bb.ad:                                            ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs1_0CskIqAKC4t9Ft_2yr.exit.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1867
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1867
  %i.bv = load i64, ptr %i.e, align 8, !range !18, !noalias !1867, !noundef !5
  %i.bw = trunc nuw i64 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !19, !noalias !1867, !noundef !5 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bw, label %bb.ae, label %bb.af, !prof !20

bb.ae:                                            ; preds = %bb.ad
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !1867
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.by, i64 %i.ca) #24, !noalias !1867
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cb = load ptr, ptr %i.bz, align 8, !noalias !1867, !nonnull !5, !noundef !5 ; 2 uses
  %i.cc = icmp ule i64 %i.bm, %i.by
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1867
  %.not.i12 = icmp eq i64 %i.bm, 0
  br i1 %.not.i12, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  store i64 %i.by, ptr %i.h, align 8, !noalias !1867
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cb, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !1867
  %.sroa.6.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx.i14, align 8, !noalias !1867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1867
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB4T_15EnumValueParserB3K_ENtB4T_16TypedValueParser9parse_refs_00ENCB4L_s_0ENCB4L_s0_0EE9from_iterCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull @72, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @72, i64 5))
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs_0CskIqAKC4t9Ft_2yr.exit.i16 unwind label %.body11.thread17.i, !noalias !1867

.body11.thread17.i:                               ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull align 1 %i.bk, i64 %i.bm, i1 false), !noalias !1867
  br label %bb.ag

bb.ai:                                            ; preds = %.body.i20
  br i1 %.sroa.02.2.lpad-body.i21, label %bb.ax, label %common.resume

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs_0CskIqAKC4t9Ft_2yr.exit.i16: ; preds = %bb.ag
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !1867, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !1867, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1867
  br i1 %.not, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs_0CskIqAKC4t9Ft_2yr.exit.i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1868
  store i64 0, ptr %i.d, align 8, !noalias !1868
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !1868
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !1868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1868
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.ci, align 8, !noalias !1868
  store ptr %i.d, ptr %i.c, align 8, !noalias !1868
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @94, ptr %i.cj, align 8, !noalias !1868
  %i.ck = invoke noundef zeroext i1 @_RNvXs9_NtNtCs1ZTs3ySsPIM_12clap_builder7builder3argNtB5_3ArgNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.al unwind label %bb.ak, !noalias !1869

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %.body.i20 unwind label %bb.an, !noalias !1869

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ck, label %bb.am, label %bb.as, !prof !20

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #25
          to label %.noexc.i.i24 unwind label %bb.ak, !noalias !1869

.noexc.i.i24:                                     ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1869
  unreachable

bb.ao:                                            ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs_0CskIqAKC4t9Ft_2yr.exit.i16
  call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1871
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i25 unwind label %bb.aq, !noalias !1867

.noexc.i25:                                       ; preds = %bb.ao
  %i.cn = load i64, ptr %i.b, align 8, !range !18, !noalias !1871, !noundef !5
  %i.co = trunc nuw i64 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !19, !noalias !1871, !noundef !5 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.co, label %bb.ap, label %_RNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs2_00CskIqAKC4t9Ft_2yr.exit.i, !prof !20

bb.ap:                                            ; preds = %.noexc.i25
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !1871
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cq, i64 %i.cs) #24
          to label %.noexc9.i unwind label %bb.aq, !noalias !1867

.noexc9.i:                                        ; preds = %bb.ap
  unreachable

_RNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs2_00CskIqAKC4t9Ft_2yr.exit.i: ; preds = %.noexc.i25
  %i.ct = load ptr, ptr %i.cr, align 8, !noalias !1871, !nonnull !5, !noundef !5 ; 2 uses
  %i.cu = icmp samesign ugt i64 %i.cq, 2
  call void @llvm.assume(i1 %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1871
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ct, i8 46, i64 3, i1 false), !noalias !1871
  store i64 %i.cq, ptr %i.f, align 8, !alias.scope !1870, !noalias !1867
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ct, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !1870, !noalias !1867
  %.sroa.6.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i26, align 8, !alias.scope !1870, !noalias !1867
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %.sroa.02.2.i23 = phi i1 [ false, %bb.ar ], [ true, %bb.ap ], [ true, %bb.ao ]
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i20

.body.i20:                                        ; preds = %bb.aq, %bb.ak
  %.sroa.02.2.lpad-body.i21 = phi i1 [ %.sroa.02.2.i23, %bb.aq ], [ true, %bb.ak ]
  %eh.lpad-body.i22 = phi { ptr, i32 } [ %i.cv, %bb.aq ], [ %i.cl, %bb.ak ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.ai unwind label %bb.aw, !noalias !1867

bb.ar:                                            ; preds = %bb.as, %_RNCNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs2_00CskIqAKC4t9Ft_2yr.exit.i
  %i.cw = invoke noundef nonnull align 8 ptr @_RNvMNtCs1ZTs3ySsPIM_12clap_builder5errorNtB2_5Error13invalid_valueCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.at unwind label %bb.aq, !noalias !1867

bb.as:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1868
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1867
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs2_0CskIqAKC4t9Ft_2yr.exit unwind label %bb.au, !noalias !1867

bb.au:                                            ; preds = %bb.at
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.av, !noalias !1867

bb.av:                                            ; preds = %bb.au
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1867
  unreachable

bb.aw:                                            ; preds = %bb.ax, %.body.i20
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1867
  unreachable

bb.ax:                                            ; preds = %bb.ai, %.body11.thread17.i
  %.pn14.i15 = phi { ptr, i32 } [ %i.cd, %.body11.thread17.i ], [ %eh.lpad-body.i22, %bb.ai ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %common.resume unwind label %bb.aw, !noalias !1867

_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs2_0CskIqAKC4t9Ft_2yr.exit: ; preds = %bb.at
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !1867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1867
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.da, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs0_0CskIqAKC4t9Ft_2yr.exit, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs2_0CskIqAKC4t9Ft_2yr.exit, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserBQ_ENtB2H_16TypedValueParser9parse_refs1_0ECskIqAKC4t9Ft_2yr.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs0_0CskIqAKC4t9Ft_2yr.exit ], [ 1, %_RNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtB7_16TypedValueParser9parse_refs2_0CskIqAKC4t9Ft_2yr.exit ], [ 0, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserBQ_ENtB2H_16TypedValueParser9parse_refs1_0ECskIqAKC4t9Ft_2yr.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
end_hunk_4
begin_hunk_5_@_RNvXsy_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCskIqAKC4t9Ft_2yr:bb.a

.thread92:                                        ; preds = %.body.i, %bb.dk, %bb.dh, %bb.dg, %.thread106
  %.pn95 = phi { ptr, i32 } [ %i.jd, %bb.dg ], [ %lpad.thr_comm, %.thread106 ], [ %i.je, %bb.dh ], [ %i.ji, %bb.dk ], [ %.pn.i, %.body.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #22
          to label %bb.dp unwind label %bb.do

bb.dp:                                            ; preds = %.thread92, %bb.aq
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ea, %bb.aq ], [ %.pn95, %.thread92 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #22
          to label %common.resume unwind label %bb.do

bb.dq:                                            ; preds = %_RINvYTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECskIqAKC4t9Ft_2yr.exit.thread86, %bb.dn, %bb.b
  %.sroa.5.1 = phi ptr [ %i.ap, %bb.b ], [ %i.jl, %bb.dn ], [ %i.dm, %_RINvYTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECskIqAKC4t9Ft_2yr.exit.thread86 ]
  %.sroa.0.1 = phi i64 [ 1, %bb.b ], [ 1, %bb.dn ], [ 0, %_RINvYTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECskIqAKC4t9Ft_2yr.exit.thread86 ]
  %i.jn = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.jo = insertvalue { i64, ptr } %i.jn, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.jo
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2063, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2063
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2063
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !6, !noalias !2064, !noundef !5
  %i.h = trunc nuw i8 %.val.i.i.i to i1
  %spec.select.i.i.i.i.i.i = select i1 %i.h, ptr @93, ptr @92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2064
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !2064
  store i64 0, ptr %i.d, align 8, !noalias !2064
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2064
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !2064
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !2064
  store ptr %spec.select.i.i.i.i.i.i, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !2064
  store i64 4, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !2064
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i, align 8, !noalias !2064
  %i.i = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !2064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2064
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2089, !noalias !2090
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2093, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.i, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !2093
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !6, !noalias !2094, !noundef !5
  %i.h = trunc nuw i8 %.val.i.i.i.i to i1
  %spec.select.i.i.i.i.i.i.i = select i1 %i.h, ptr @93, ptr @92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2094
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !2094
  store i64 0, ptr %i.d, align 8, !noalias !2094
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2094
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2094
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2094
  store ptr %spec.select.i.i.i.i.i.i.i, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2094
  store i64 4, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2094
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2094
  %i.i = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !2094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2094
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.k = phi ptr [ %.pre3, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.l = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %bb.d ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  call void @llvm.experimental.noalias.scope.decl(metadata !2097)
  call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.n, ptr %1, align 8, !alias.scope !2089, !noalias !2090
  %.val.i.i = load i8, ptr %i.l, align 1, !range !6, !noalias !2099, !noundef !5
  %i.o = trunc nuw i8 %.val.i.i to i1
  %spec.select.i.i.i.i.i = select i1 %i.o, ptr @93, ptr @92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !2100, !noalias !2089
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.q, align 8, !alias.scope !2100, !noalias !2089
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.r, align 8, !alias.scope !2100, !noalias !2089
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %spec.select.i.i.i.i.i, ptr %i.s, align 8, !alias.scope !2100, !noalias !2089
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 4, ptr %i.t, align 8, !alias.scope !2100, !noalias !2089
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.u, align 8, !alias.scope !2100, !noalias !2089
  br label %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit

_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit: ; preds = %bb.c, %bb.e, %.loopexit
  %storemerge = phi i64 [ -1, %.loopexit ], [ 0, %bb.e ], [ -1, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3k_15EnumValueParserB2i_ENtB3k_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2112, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2112
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %switch.lookup ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3k_15EnumValueParserB2i_ENtB3k_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2112
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !28, !noalias !2113, !noundef !5 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.236, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.237, i64 %i.i
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext = zext i8 %switch.load4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2113
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !2113
  store i64 0, ptr %i.d, align 8, !noalias !2113
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2113
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !2113
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !2113
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !2113
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !2113
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i, align 8, !noalias !2113
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !2113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2113
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3k_15EnumValueParserB2i_ENtB3k_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3k_15EnumValueParserB2i_ENtB3k_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit: ; preds = %bb.c, %switch.lookup, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %switch.lookup ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2138, !noalias !2139
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2142, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.j, %switch.lookup ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !2142
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !28, !noalias !2143, !noundef !5 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.236, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.237, i64 %i.i
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext = zext i8 %switch.load12 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2143
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !2143
  store i64 0, ptr %i.d, align 8, !noalias !2143
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2143
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2143
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2143
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2143
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2143
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2143
  %i.j = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !2143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2143
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit: ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserB1A_ENtB2C_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

.loopexit:                                        ; preds = %switch.lookup, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %switch.lookup ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %switch.lookup ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.d, label %switch.lookup13

switch.lookup13:                                  ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.o, ptr %1, align 8, !alias.scope !2138, !noalias !2139
  %.val.i.i = load i8, ptr %i.m, align 1, !range !28, !noalias !2148, !noundef !5 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !2149, !noalias !2138
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2149, !noalias !2138
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2149, !noalias !2138
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2149, !noalias !2138
  %i.p = zext nneg i8 %.val.i.i to i64
  %switch.gep14 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.236, i64 %i.p
  %switch.load15 = load ptr, ptr %switch.gep14, align 8
  %i.q = zext nneg i8 %.val.i.i to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.237, i64 %i.q
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %switch.ext18 = zext i8 %switch.load17 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load15, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2149, !noalias !2138
  store i64 %switch.ext18, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2149, !noalias !2138
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2149, !noalias !2138
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserB1A_ENtB2C_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

bb.d:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !2139, !noalias !2138
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserB1A_ENtB2C_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2C_15EnumValueParserB1A_ENtB2C_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit: ; preds = %bb.d, %switch.lookup13, %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1u_ENtB2w_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2163, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2163 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i.i, %i.d
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i2 = phi i64 [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !2163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2164
  call void @_RNvXs2_NtNtCskIqAKC4t9Ft_2yr8commands4scanNtB5_13OutputFormatsNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !2165
  %i.j = load i64, ptr %i.b, align 8, !range !8, !noalias !2164, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !2164
  store i64 %.sroa.01.0.i.i.i2, ptr %i.a, align 8, !noalias !2164
  %i.k = add i64 %.sroa.01.0.i.i.i2, -1
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !2165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2164
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i.i2, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2164
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i, 0
  br i1 %i.l, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i, %bb.c, %bb.b, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ 0, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2186, !noalias !2187
  %.promoted.i.i.pre = load ptr, ptr %1, align 8, !alias.scope !2186, !noalias !2187
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2190, !nonnull !5, !noundef !5 ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2190 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i.i.i, %i.d
  br i1 %i.f, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.sink.split, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i.i9 = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 4 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !2190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2191
  call void @_RNvXs2_NtNtCskIqAKC4t9Ft_2yr8commands4scanNtB5_13OutputFormatsNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !2192
  %i.j = load i64, ptr %i.b, align 8, !range !8, !noalias !2191, !noundef !5
  %.not.i.i.i.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !2191
  store i64 %.sroa.01.0.i.i.i.i9, ptr %i.a, align 8, !noalias !2191
  %i.k = add i64 %.sroa.01.0.i.i.i.i9, -1
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !2192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2191
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i.i.i9, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2191
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i.i, 0
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i.i, %..loopexit_crit_edge
  %.promoted.i.i = phi ptr [ %.promoted.i.i.pre, %..loopexit_crit_edge ], [ %i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i.i ] ; 2 uses
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.d, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3g_ENCNvXso_NtB29_12value_parserINtB4l_15EnumValueParserB1f_ENtB4l_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4d_ENtB5V_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  %i.n = icmp eq ptr %.promoted.i.i, %i.m
  br i1 %i.n, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.sink.split, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.o = icmp eq ptr %i.q, %i.m
  br i1 %i.o, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.sink.split, label %.lr.ph10

.lr.ph10:                                         ; preds = %.loopexit, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %.promoted.i.i, %.loopexit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %1, align 8, !alias.scope !2186, !noalias !2187
  call void @_RNvXs2_NtNtCskIqAKC4t9Ft_2yr8commands4scanNtB5_13OutputFormatsNtNtCs1ZTs3ySsPIM_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.p), !noalias !2186
  %i.r = load i64, ptr %0, align 8, !range !8, !alias.scope !2187, !noalias !2186, !noundef !5
  %.not.i.i1 = icmp eq i64 %i.r, -1
  br i1 %.not.i.i1, label %bb.e, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.sink.split: ; preds = %bb.c, %bb.e, %bb.b, %.loopexit
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit: ; preds = %.lr.ph10, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskIqAKC4t9Ft_2yr8commands4scan13OutputFormatsENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3p_15EnumValueParserB2i_ENtB3p_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2208, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %switch.lookup ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3p_15EnumValueParserB2i_ENtB3p_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2208
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !17, !noalias !2209, !noundef !5 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.240, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.i = zext nneg i8 %.val.i.i.i to i64
  %switch.gep3 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.241, i64 %i.i
  %switch.load4 = load ptr, ptr %switch.gep3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2209
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !2209
  store i64 0, ptr %i.d, align 8, !noalias !2209
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2209
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !2209
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !2209
  store ptr %switch.load4, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !2209
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !2209
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i, align 8, !noalias !2209
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !2209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2209
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3p_15EnumValueParserB2i_ENtB3p_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr.exit, label %bb.c

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB3p_15EnumValueParserB2i_ENtB3p_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.c, %switch.lookup, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %switch.lookup ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2234, !noalias !2235
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2238, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.j, %switch.lookup ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !2238
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !17, !noalias !2239, !noundef !5 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.240, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.i = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep11 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.241, i64 %i.i
  %switch.load12 = load ptr, ptr %switch.gep11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2239
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !2239
  store i64 0, ptr %i.d, align 8, !noalias !2239
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2239
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2239
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2239
  store ptr %switch.load12, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2239
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2239
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2239
  %i.j = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder14possible_value13PossibleValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !2239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2239
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit

.loopexit:                                        ; preds = %switch.lookup, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %switch.lookup ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %switch.lookup ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.d, label %switch.lookup13

switch.lookup13:                                  ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.o, ptr %1, align 8, !alias.scope !2234, !noalias !2235
  %.val.i.i = load i8, ptr %i.m, align 1, !range !17, !noalias !2244, !noundef !5 ; 2 uses
  %i.p = zext nneg i8 %.val.i.i to i64
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.240, i64 %i.p
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %switch.ext16 = zext i8 %switch.load15 to i64
  %i.q = zext nneg i8 %.val.i.i to i64
  %switch.gep17 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr.241, i64 %i.q
  %switch.load18 = load ptr, ptr %switch.gep17, align 8
  store i64 0, ptr %0, align 8, !alias.scope !2245, !noalias !2234
  %.sroa.0.sroa.0.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2245, !noalias !2234
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2245, !noalias !2234
  %.sroa.0.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2245, !noalias !2234
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load18, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2245, !noalias !2234
  %.sroa.18.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %switch.ext16, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2245, !noalias !2234
  %.sroa.23.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2245, !noalias !2234
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit

bb.d:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !2235, !noalias !2234
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.d, %switch.lookup13, %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @142, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @143, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @142, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @144, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @142, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @145, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsgTIQnf6SZNZ_7figment8metadataNtB5_8MetadataNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMsd_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_5BoundRxE6clonedCskIqAKC4t9Ft_2yr(i64 noundef range(i64 0, 3), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMsd_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_5BoundRyE6clonedCskIqAKC4t9Ft_2yr(i64 noundef range(i64 0, 3), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCsgTIQnf6SZNZ_7figment5value3serNtB5_15ValueSerializerNtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_str(ptr dead_on_unwind noalias nofree noundef writable sret([208 x i8]) align 16 captures(none) dereferenceable(208), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCslcwApyVHiOd_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileEENtNtB8_6config13ConfigurationEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer22serialize_unit_variantCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsbbTh99npV2h_10serde_json5value3serNtB4_10SerializerNtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer15serialize_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtCs7gfv9tzbXmh_6yara_x6modelss_1__NtB3Y_11PatternKindNtB2Q_11Deserialize11deserialize9___VisitorECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsaeRQ2XwCvzm_10serde_core2deReNtB5_8Expected3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error13invalid_valueCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 16 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE3geteECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMNtCsgTIQnf6SZNZ_7figment7figmentNtB2_7Figment12get_metadata(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(256), i64 noundef) unnamed_addr #0
end_hunk_5
