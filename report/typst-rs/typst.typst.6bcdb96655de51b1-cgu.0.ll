Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0
@1142 = private unnamed_addr constant [72 x i8] c"Evaluates a piece of Typst code, optionally in the context of a document", align 1
@1143 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@1144 = private unnamed_addr constant [8 x i8] c"RgbColor", align 1
@1145 = private unnamed_addr constant [5 x i8] c"Error", align 1
@1146 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsj1PC5XHMKi0_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs9fPPV5zPXBl_5typst, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtNtCsj1PC5XHMKi0_12clap_builder4util8flat_mapINtB5_7FlatMapNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1147 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches10SubCommandEENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1148 = private unnamed_addr constant [10 x i8] c"ArgMatches", align 1
@1149 = private unnamed_addr constant [10 x i8] c"subcommand", align 1
@1150 = private unnamed_addr constant [8 x i8] c"variants", align 1
@1151 = private unnamed_addr constant [58 x i8] c"The following required argument was not provided: variants", align 1
@1152 = private unnamed_addr constant [12 x i8] c"FontsCommand", align 1
@1153 = private unnamed_addr constant [8 x i8] c"VARIANTS", align 1
@1154 = private unnamed_addr constant [45 x i8] c"Also lists style variants of each font family", align 1
@1155 = private unnamed_addr constant [58 x i8] c"Lists all discovered fonts in system and custom font paths", align 1
@1156 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1157 = private unnamed_addr constant [10 x i8] c"SubCommand", align 1
@1158 = private unnamed_addr constant [7 x i8] c"matches", align 1
@1159 = private unnamed_addr constant [4 x i8] c"None", align 1
@1160 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1161 = private unnamed_addr constant [4 x i8] c"Some", align 1
@1162 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1163 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches10SubCommandENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1164 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1165 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle5color5ColorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1166 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr4ReprNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1167 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsj1PC5XHMKi0_12clap_builder5error7MessageNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1168 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsj1PC5XHMKi0_12clap_builder5error9BacktraceNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1169 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value10AnyValueIdNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1170 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches12value_source11ValueSourceNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1171 = private unnamed_addr constant [5 x i8] c"force", align 1
@1172 = private unnamed_addr constant [55 x i8] c"The following required argument was not provided: force", align 1
@1173 = private unnamed_addr constant [6 x i8] c"revert", align 1
@1174 = private unnamed_addr constant [56 x i8] c"The following required argument was not provided: revert", align 1
@1175 = private unnamed_addr constant [11 x i8] c"backup_path", align 1
@1176 = private unnamed_addr constant [13 x i8] c"UpdateCommand", align 1
@1177 = private unnamed_addr constant [7 x i8] c"VERSION", align 1
@1178 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs3oUPovFnLWP_4core6result6ResultNtCs8SJOCDJuMgL_6semver7VersionNtNtB1K_5parse5ErrorENtB5_14AnyValueParser9parse_refCs9fPPV5zPXBl_5typst, ptr @_RNvXsc_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs3oUPovFnLWP_4core6result6ResultNtCs8SJOCDJuMgL_6semver7VersionNtNtB1K_5parse5ErrorENtB5_14AnyValueParser10parse_ref_Cs9fPPV5zPXBl_5typst, ptr @_RNvXsc_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs3oUPovFnLWP_4core6result6ResultNtCs8SJOCDJuMgL_6semver7VersionNtNtB1K_5parse5ErrorENtB5_14AnyValueParser7type_idCs9fPPV5zPXBl_5typst, ptr @_RNvXsc_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs3oUPovFnLWP_4core6result6ResultNtCs8SJOCDJuMgL_6semver7VersionNtNtB1K_5parse5ErrorENtB5_14AnyValueParser15possible_valuesCs9fPPV5zPXBl_5typst, ptr @_RNvXsc_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs3oUPovFnLWP_4core6result6ResultNtCs8SJOCDJuMgL_6semver7VersionNtNtB1K_5parse5ErrorENtB5_14AnyValueParser9clone_anyCs9fPPV5zPXBl_5typst }>, align 8
@1179 = private unnamed_addr constant [47 x i8] c"Which version to update to (defaults to latest)", align 1
@1180 = private unnamed_addr constant [5 x i8] c"FORCE", align 1
@1181 = private unnamed_addr constant [65 x i8] c"Forces a downgrade to an older version (required for downgrading)", align 1
@1182 = private unnamed_addr constant [6 x i8] c"REVERT", align 1
@1183 = private unnamed_addr constant [103 x i8] c"Reverts to the version from before the last update (only possible if `typst update` has previously ran)", align 1
@1184 = private unnamed_addr constant [11 x i8] c"BACKUP_PATH", align 1
@1185 = private unnamed_addr constant [110 x i8] c"Custom path to the backup file created on update and used by `--revert`, defaults to system-dependent location", align 1
@1186 = private unnamed_addr constant [11 x i8] c"backup-path", align 1
@1187 = private unnamed_addr constant [4 x i8] c"FILE", align 1
@1188 = private unnamed_addr constant [70 x i8] c"Update the CLI using a pre-compiled binary from a Typst GitHub release", align 1
@1189 = private unnamed_addr constant [7 x i8] c"Escapes", align 1
@1190 = private unnamed_addr constant [9 x i8] c"Backslash", align 1
@1191 = private unnamed_addr constant [5 x i8] c"shell", align 1
@1192 = private unnamed_addr constant [55 x i8] c"The following required argument was not provided: shell", align 1
@1193 = private unnamed_addr constant [18 x i8] c"CompletionsCommand", align 1
@1194 = private unnamed_addr constant [5 x i8] c"SHELL", align 1
@1195 = private unnamed_addr constant [37 x i8] c"The shell to generate completions for", align 1
@1196 = private unnamed_addr constant [34 x i8] c"Generates shell completion scripts", align 1
@1197 = private unnamed_addr constant [4 x i8] c".nan", align 1
@1198 = private unnamed_addr constant [5 x i8] c"-.inf", align 1
@1199 = private unnamed_addr constant [4 x i8] c".inf", align 1
@1200 = private unnamed_addr constant [16 x i8] c"TOML parse error", align 1
@1201 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@1202 = private unnamed_addr constant [12 x i8] c"DefaultValue", align 1
@1203 = private unnamed_addr constant [11 x i8] c"EnvVariable", align 1
@1204 = private unnamed_addr constant [11 x i8] c"CommandLine", align 1
@1205 = private unnamed_addr constant [4 x i8] c"Bool", align 1
@1206 = private unnamed_addr constant [6 x i8] c"String", align 1
@1207 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1208 = private unnamed_addr constant [7 x i8] c"Strings", align 1
@1209 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1210 = private unnamed_addr constant [10 x i8] c"StyledStrs", align 1
@1211 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRiNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1212 = private unnamed_addr constant [6 x i8] c"Number", align 1
@1213 = private unnamed_addr constant [3 x i8] c"Raw", align 1
@1214 = private unnamed_addr constant [9 x i8] c"Formatted", align 1
@1215 = private unnamed_addr constant [5 x i8] c"watch", align 1
@1216 = private unnamed_addr constant [4 x i8] c"init", align 1
@1217 = private unnamed_addr constant [5 x i8] c"query", align 1
@1218 = private unnamed_addr constant [4 x i8] c"eval", align 1
@1219 = private unnamed_addr constant [6 x i8] c"update", align 1
@1220 = private unnamed_addr constant [11 x i8] c"completions", align 1
@1221 = private unnamed_addr constant [4 x i8] c"info", align 1
@1222 = private unnamed_addr constant [39 x i8] c"\10The subcommand '\C0\13' wasn't recognized\00", align 1
@1223 = private unnamed_addr constant [50 x i8] c"A subcommand is required but one was not provided.", align 1
@1224 = private unnamed_addr constant [9 x i8] c"Backtrace", align 1
@1225 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@1226 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8SJOCDJuMgL_6semver7VersionECs9fPPV5zPXBl_5typst, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtCs8SJOCDJuMgL_6semver7VersionNtB2_3Any7type_idCs9fPPV5zPXBl_5typst }>, align 8
@1227 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args5PagesNtB2_3Any7type_idBv_ }>, align 8
@1228 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anydNtB2_3Any7type_idCs9fPPV5zPXBl_5typst }>, align 8
@1229 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyjNtB2_3Any7type_idCs9fPPV5zPXBl_5typst }>, align 8
@1230 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatNtB2_3Any7type_idBv_ }>, align 8
@1231 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtB2_3Any7type_idBv_ }>, align 8
@1232 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatNtB2_3Any7type_idBv_ }>, align 8
@1233 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatNtB2_3Any7type_idBv_ }>, align 8
@1234 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatNtB2_3Any7type_idBv_ }>, align 8
@1235 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args6TargetNtB2_3Any7type_idBv_ }>, align 8
@1236 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtB2_3Any7type_idBv_ }>, align 8
@1237 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtB2_3Any7type_idCs9fPPV5zPXBl_5typst }>, align 8
@1238 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtB2_3Any7type_idCs9fPPV5zPXBl_5typst }>, align 8
@1239 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args5InputEBF_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args5InputNtB2_3Any7type_idBv_ }>, align 8
@1240 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs9fPPV5zPXBl_5typst4args6OutputNtB2_3Any7type_idBv_ }>, align 8
@1241 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anytNtB2_3Any7type_idCs9fPPV5zPXBl_5typst }>, align 8
@1242 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyxNtB2_3Any7type_idCs9fPPV5zPXBl_5typst }>, align 8
@1243 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_EECs9fPPV5zPXBl_5typst, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyTNtNtCs1xwejQucwHj_5alloc6string6StringBs_ENtB2_3Any7type_idCs9fPPV5zPXBl_5typst }>, align 8
@1244 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs2c5sHaBi5qk_7anstyle5color5ColorENtNtB7_3fmt5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1245 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle6effect7EffectsNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1246 = private unnamed_addr constant [5 x i8] c"Style", align 1
@1247 = private unnamed_addr constant [2 x i8] c"fg", align 1
@1248 = private unnamed_addr constant [2 x i8] c"bg", align 1
@1249 = private unnamed_addr constant [9 x i8] c"underline", align 1
@1250 = private unnamed_addr constant [7 x i8] c"effects", align 1
@1251 = private unnamed_addr constant [53 x i8] c"Compiles an input file into a supported output format", align 1
@1252 = private unnamed_addr constant [1 x i8] c"c", align 1
@1253 = private unnamed_addr constant [47 x i8] c"Watches an input file and recompiles on changes", align 1
@1254 = private unnamed_addr constant [1 x i8] c"w", align 1
@1255 = private unnamed_addr constant [41 x i8] c"Initializes a new project from a template", align 1
@1256 = private unnamed_addr constant [25 x i8] c"Self update the Typst CLI", align 1
@1257 = private unnamed_addr constant [42 x i8] c"Displays debugging information about Typst", align 1
@1258 = private unnamed_addr constant [10 x i8] c"What to do", align 1
@1259 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs8SJOCDJuMgL_6semver5errorNtNtB6_5parse5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt }>, align 8
@1260 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCs8SJOCDJuMgL_6semver5errorNtNtB7_5parse5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr @_RNvXs_NtCs8SJOCDJuMgL_6semver5errorNtNtB6_5parse5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr @1259, ptr @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs9fPPV5zPXBl_5typst }>, align 8
@1261 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorECs9fPPV5zPXBl_5typst, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1262 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorECs9fPPV5zPXBl_5typst, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs9fPPV5zPXBl_5typst, ptr @_RNvXs3_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst, ptr @1261, ptr @_RNvXs2_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs9fPPV5zPXBl_5typst }>, align 8
@1263 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs3oUPovFnLWP_4core3num11float_parseNtB4_15ParseFloatErrorNtNtB8_3fmt7Display3fmt }>, align 8
@1264 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core3num11float_parseNtB5_15ParseFloatErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs_NtNtCs3oUPovFnLWP_4core3num11float_parseNtB4_15ParseFloatErrorNtNtB8_3fmt7Display3fmt, ptr @1263, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error6sourceCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7type_idCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error11descriptionCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error5causeCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7provideCs9fPPV5zPXBl_5typst }>, align 8
@1265 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs9fPPV5zPXBl_5typst, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt }>, align 8
@1266 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs9fPPV5zPXBl_5typst, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBd_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt, ptr @1265, ptr @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCs9fPPV5zPXBl_5typst }>, align 8
@1267 = private unnamed_addr constant [76 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/io/stdio.rs\00", align 1
@1268 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1267, [16 x i8] c"K\00\00\00\00\00\00\00Y\03\00\00\14\00\00\00" }>, align 8
@1269 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle5color9AnsiColorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1270 = private unnamed_addr constant [4 x i8] c"Ansi", align 1
@1271 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle5color12Ansi256ColorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1272 = private unnamed_addr constant [7 x i8] c"Ansi256", align 1
@1273 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle5color8RgbColorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1274 = private unnamed_addr constant [3 x i8] c"Rgb", align 1
@1275 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@1276 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@1277 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@1278 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@1279 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@1280 = private unnamed_addr constant [14 x i8] c"CompileCommand", align 1
@1281 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @615, [16 x i8] c"_\00\00\00\00\00\00\00\A8\03\00\000\00\00\00" }>, align 8
@1282 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @615, [16 x i8] c"_\00\00\00\00\00\00\00\9E\03\00\000\00\00\00" }>, align 8
@1283 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @174, [16 x i8] c"_\00\00\00\00\00\00\00\A1\00\00\00$\00\00\00" }>, align 8
@1284 = private unnamed_addr constant [4 x i8] c"\1B[0m", align 1
@1285 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @615, [16 x i8] c"_\00\00\00\00\00\00\00\DF\03\00\000\00\00\00" }>, align 8
@1286 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @615, [16 x i8] c"_\00\00\00\00\00\00\00\C8\03\00\000\00\00\00" }>, align 8
@1287 = private unnamed_addr constant [6 x i8] c"Normal", align 1
@1288 = private unnamed_addr constant [7 x i8] c"Oblique", align 1
@1289 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit15internal_string14InternalStringECs9fPPV5zPXBl_5typst, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs89doag9UmMt_9toml_edit15internal_stringNtB4_14InternalStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@1290 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs89doag9UmMt_9toml_edit4repr4ReprEECs9fPPV5zPXBl_5typst, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs89doag9UmMt_9toml_edit4repr4ReprENtNtB7_3fmt5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1291 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit4repr5DecorECs9fPPV5zPXBl_5typst, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@1292 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr5DecorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst }>, align 8
@1293 = private unnamed_addr constant [3 x i8] c"Key", align 1
@1294 = private unnamed_addr constant [4 x i8] c"repr", align 1
@1295 = private unnamed_addr constant [10 x i8] c"leaf_decor", align 1
@1296 = private unnamed_addr constant [12 x i8] c"dotted_decor", align 1
@1297 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@1298 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@1299 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserB1A_ENtB2q_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserB1A_ENtB2q_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@1300 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2u_15EnumValueParserB1A_ENtB2u_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2u_15EnumValueParserB1A_ENtB2u_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1u_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1u_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@1301 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1A_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1A_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1u_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1u_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@1302 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2d_15EnumValueParserB1u_ENtB2d_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2d_15EnumValueParserB1u_ENtB2d_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@1303 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@1304 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst, ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1A_7builder12value_parserINtB2z_15EnumValueParserB1u_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs9fPPV5zPXBl_5typst, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1A_7builder12value_parserINtB2z_15EnumValueParserB1u_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs9fPPV5zPXBl_5typst }>, align 8
@1305 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst, ptr @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs9fPPV5zPXBl_5typst, ptr @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs9fPPV5zPXBl_5typst }>, align 8
@1306 = private unnamed_addr constant [12 x i8] c"WatchCommand", align 1
@_RNvNvXsq_NtCs2c5sHaBi5qk_7anstyle5colorNtB7_9AnsiColorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES = external local_unnamed_addr global { ptr, i64 }
@_RNvNvXsq_NtCs2c5sHaBi5qk_7anstyle5colorNtB7_9AnsiColorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET = external global [17 x i64]
@1307 = private unnamed_addr constant [58 x i8] c"The following required argument was not provided: template", align 1
@1308 = private unnamed_addr constant [3 x i8] c"dir", align 1
@1309 = private unnamed_addr constant [15 x i8] c"\C0\0B is not in \C0\00", align 1
@1310 = private unnamed_addr constant [4 x i8] c"\1B[1m", align 1
@1311 = private unnamed_addr constant [4 x i8] c"\1B[2m", align 1
@1312 = private unnamed_addr constant [4 x i8] c"\1B[3m", align 1
@1313 = private unnamed_addr constant [4 x i8] c"\1B[4m", align 1
@1314 = private unnamed_addr constant [4 x i8] c"\1B[9m", align 1
@1315 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorECs9fPPV5zPXBl_5typst, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB5_11CustomErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt }>, align 8
@1316 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorECs9fPPV5zPXBl_5typst, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB5_11CustomErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB5_11CustomErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr @1315, ptr @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs9fPPV5zPXBl_5typst, ptr @_RNvXs_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB4_11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error11description, ptr @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs9fPPV5zPXBl_5typst, ptr @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs9fPPV5zPXBl_5typst }>, align 8
@1317 = private unnamed_addr constant [11 x i8] c"InitCommand", align 1
@1318 = private unnamed_addr constant [8 x i8] c"TEMPLATE", align 1
@1319 = private unnamed_addr constant [49 x i8] c"The template to use, e.g. `@preview/charged-ieee`", align 1
@1320 = private unnamed_addr constant [223 x i8] c"The template to use, e.g. `@preview/charged-ieee`.\0A\0AYou can specify the version by appending e.g. `:0.1.0`. If no version is specified, Typst will default to the latest version.\0A\0ASupports both local and published templates.", align 1
@1321 = private unnamed_addr constant [54 x i8] c"The project directory, defaults to the template's name", align 1
@1322 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @176, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8
@1323 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@1324 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @1323, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@1325 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @217, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@1326 = private unnamed_addr constant [30 x i8] c"\0Einvalid type: \C0\0B, expected \C0\00", align 1
@1327 = private unnamed_addr constant [31 x i8] c"\0Finvalid value: \C0\0B, expected \C0\00", align 1
@1328 = private unnamed_addr constant [20 x i8] c"\0Fmissing field `\C0\01`\00", align 1
@1329 = private unnamed_addr constant [31 x i8] c"\0Finvalid length \C0\0B, expected \C0\00", align 1
@1330 = private unnamed_addr constant [22 x i8] c"\11duplicate field `\C0\01`\00", align 1
@1331 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@1332 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1390487567693080725 to ptr), ptr inttoptr (i64 5840252422673947824 to ptr) }>, align 8
@1333 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8892020743201742033 to ptr), ptr inttoptr (i64 2370188872511426518 to ptr) }>, align 8
@1334 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7344998446911454454 to ptr), ptr inttoptr (i64 -4501156852357449317 to ptr) }>, align 8
@1335 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7744198073542867746 to ptr), ptr inttoptr (i64 -1716283545109442754 to ptr) }>, align 8
@1336 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3949253983970902503 to ptr), ptr inttoptr (i64 -3041326383086410002 to ptr) }>, align 8
@1337 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3239133862234874103 to ptr), ptr inttoptr (i64 5351549585573144799 to ptr) }>, align 8
@1338 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1367968845966073289 to ptr), ptr inttoptr (i64 -9144813007172577570 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst.2862 = private unnamed_addr constant [6 x ptr] [ptr @1088, ptr @1275, ptr @1276, ptr @1277, ptr @1278, ptr @1279], align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches12value_source11ValueSourceNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst = private unnamed_addr constant [3 x i8] c"\0C\0B\0B", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches12value_source11ValueSourceNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst.2863 = private unnamed_addr constant [3 x ptr] [ptr @1202, ptr @1203, ptr @1204], align 8
@switch.table._RNvXs3_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\04\06\05", align 8
@switch.table._RNvXs3_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.2864 = private unnamed_addr constant [3 x ptr] [ptr @1052, ptr @1053, ptr @1054], align 8
@switch.table._RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations7target_NtB5_6TargetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\05\04\06", align 8
@switch.table._RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations7target_NtB5_6TargetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.2865 = private unnamed_addr constant [3 x ptr] [ptr @1081, ptr @1082, ptr @1000], align 8
@switch.table._RNvXsl_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_9FontStyleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\06\06\07", align 8
@switch.table._RNvXsl_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_9FontStyleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.2866 = private unnamed_addr constant [3 x ptr] [ptr @1287, ptr @686, ptr @1288], align 8
@switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2869 = private unnamed_addr constant [5 x ptr] [ptr @393, ptr @394, ptr @395, ptr @248, ptr @249], align 8
@switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2870 = private unnamed_addr constant [5 x i8] c"\03\03\03\04\06", align 8
@switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2873 = private unnamed_addr constant [3 x ptr] [ptr @248, ptr @249, ptr @250], align 8
@switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2874 = private unnamed_addr constant [3 x i8] c"\04\06\0B", align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvCs2AodJlUx5rK_5typst7compileNtCsgpMJJHpo27b_12typst_bundle6BundleECs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [96 x i8], align 8                ; 4 uses
  %i.l = alloca [96 x i8], align 8                ; 16 uses
  %i.m = alloca [96 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [200 x i8], align 8               ; 17 uses
  %i.q = alloca [96 x i8], align 8                ; 13 uses
  %i.r = alloca [96 x i8], align 8                ; 17 uses
  %i.s = alloca [32 x i8], align 8                ; 15 uses
  %i.t = alloca [16 x i8], align 8                ; 10 uses
  %i.u = alloca [72 x i8], align 8                ; 16 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [56 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [64 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 11 uses
  %i.ad = alloca [128 x i8], align 16             ; 16 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [96 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [40 x i8], align 8               ; 13 uses
  %i.ak = alloca [96 x i8], align 8               ; 13 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.am = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.am, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.al, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 7, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs0_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink3new(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ak)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.cs, %.thread, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %i.ap, %bb.g ], [ %i.ho, %bb.cs ]
  %i.an = load ptr, ptr %i.al, align 8, !alias.scope !204, !noundef !28
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit unwind label %bb.cv

bb.g:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.aq = atomicrmw add ptr @_RNvNtCsloFShupyl5J_6comemo10accelerate2ID, i64 1 seq_cst, align 8
  store ptr %1, ptr %i.aj, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @644, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %i.aq, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 0, ptr %i.ah, align 8
  %i.au = atomicrmw add ptr @_RNvNtCsloFShupyl5J_6comemo10accelerate2ID, i64 1 seq_cst, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 %i.au, ptr %i.aw, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ax = invoke fastcc noundef nonnull align 16 ptr @_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World7library(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj) #60
          to label %.noexc4 unwind label %bb.cn   ; 5 uses

.noexc4:                                          ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %i.az = invoke { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst24warn_or_error_for_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ak)
          to label %.noexc5 unwind label %bb.cn   ; 2 uses

.noexc5:                                          ; preds = %.noexc4
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc5
  %i.bb = extractvalue { ptr, i64 } %i.az, 1
  br label %bb.cp

bb.j:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !206
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !207, !nonnull !28, !noundef !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %i.bf = load i64, ptr %i.be, align 16, !noalias !207, !noundef !28
  store ptr %i.bd, ptr %i.ae, align 8, !noalias !206
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !noalias !206
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr null, ptr %i.bh, align 8, !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !206
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !207
  %i.bi = call noundef dereferenceable_or_null(1) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !207 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.k, label %_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4main.exit.i, !prof !29

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #61
          to label %.noexc6 unwind label %bb.cn

.noexc6:                                          ; preds = %bb.k
  unreachable

_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4main.exit.i: ; preds = %bb.j
  store i8 2, ptr %i.bi, align 1, !noalias !207
  store i128 0, ptr %i.ad, align 16, !noalias !206
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 3, ptr %i.bk, align 16, !noalias !206
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.bi, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !206
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr @2, ptr %.sroa.567.0..sroa_idx.i, align 16, !noalias !206
  %.sroa.668.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7target_1__NtB9_10TargetElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE, ptr %.sroa.668.0..sroa_idx.i, align 8, !noalias !206
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 1, ptr %.sroa.769.0..sroa_idx.i, align 16, !noalias !206
  %.sroa.870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i8 0, ptr %.sroa.870.0..sroa_idx.i, align 8, !noalias !206
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 57
  store i8 0, ptr %.sroa.971.0..sroa_idx.i, align 1, !noalias !206
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 58
  store i8 0, ptr %.sroa.1072.0..sroa_idx.i, align 2, !noalias !206
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.bm = load i16, ptr %i.bl, align 8, !range !30, !noalias !207, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !206
  invoke fastcc void @_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World6source(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj, i16 noundef %i.bm)
          to label %bb.m unwind label %bb.l, !noalias !208

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i, %bb.l
  %.pn145.i = phi { ptr, i32 } [ %i.bn, %bb.l ], [ %.pn143.i, %bb.p ], [ %.pn143.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 16 dereferenceable(128) %i.ad) #62
          to label %.thread unwind label %bb.bo, !noalias !207

bb.l:                                             ; preds = %bb.ck, %bb.bz, %bb.n, %_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4main.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs9fPPV5zPXBl_5typst.exit.i

bb.m:                                             ; preds = %_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4main.exit.i
  %i.bo = load i32, ptr %i.ab, align 8, !range !31, !noalias !206, !noundef !28
  %.not124.i = icmp eq i32 %i.bo, -1
  br i1 %.not124.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !noalias !210
  %i.bp = invoke { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst22hint_invalid_main_file(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.h, i16 noundef %i.bm)
          to label %bb.cm unwind label %bb.l, !noalias !207 ; 2 uses

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !206, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !206
  store ptr %i.br, ptr %i.ac, align 8, !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !206
  store ptr %i.ak, ptr %i.y, align 8, !noalias !206
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.bs, align 8, !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !206
end_hunk_0
begin_hunk_1_@_RNvCs9fPPV5zPXBl_5typst8dispatch:bb.a
bb.mf:                                            ; preds = %bb.md
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(432) %.sroa.549.0..sroa_idx.i, i64 432, i1 false), !noalias !27758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !27758
  %.sroa.4.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i84, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i83, i64 16, i1 false), !noalias !27758
  store i64 %i.ahe, ptr %i.bb, align 8, !noalias !27758
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i83)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.ahh = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !range !55, !noalias !27758, !noundef !28
  %.not.i85 = icmp eq i64 %i.ahh, -1              ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.ahj = load ptr, ptr %i.ahi, align 8, !noalias !27758, !nonnull !28
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.ahl = load i64, ptr %i.ahk, align 8, !noalias !27758
  %.sroa.3.0.i86 = select i1 %.not.i85, i64 0, i64 %i.ahl ; 16 uses
  %.sroa.08.0.i = select i1 %.not.i85, ptr inttoptr (i64 1 to ptr), ptr %i.ahj ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27759)
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 3 uses
  %.sroa.111.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 72 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i.i.i87 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.11.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aho = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i, %bb.mf
  %.lcssa131133.lcssa155.lcssa166190.i.i = phi i64 [ %.lcssa131133.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i ], [ 0, %bb.mf ] ; 2 uses
  %.lcssa76138.lcssa145.lcssa151180.i.i = phi i64 [ %.lcssa76138.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i ], [ 0, %bb.mf ] ; 2 uses
  %.sroa.520.0..sroa_idx.promoted178.i.i = phi i1 [ %.sroa.520.0..sroa_idx.promoted175.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i ], [ false, %bb.mf ] ; 3 uses
  %.sroa.5.0.ph.i.i = phi i8 [ %.sroa.5.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i ], [ 0, %bb.mf ] ; 3 uses
  %.sroa.3.0.ph.i.i = phi i8 [ %.sroa.3.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i ], [ 0, %bb.mf ] ; 3 uses
  %.sroa.0.0.ph.i.i = phi i8 [ %.sroa.0.1.i.i101, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i ], [ 0, %bb.mf ] ; 3 uses
  br label %.split.i.i.i89

.split.i.i.i89:                                   ; preds = %.split.i.i.i89.backedge, %.outer.i.i
  %.sroa.520.0..sroa_idx.promoted176.i.i = phi i1 [ %.sroa.520.0..sroa_idx.promoted178.i.i, %.outer.i.i ], [ %.sroa.520.0..sroa_idx.promoted175.i.i, %.split.i.i.i89.backedge ]
  %.promoted.i142.i.i = phi i1 [ %.sroa.520.0..sroa_idx.promoted178.i.i, %.outer.i.i ], [ %.promoted.i141.i.i, %.split.i.i.i89.backedge ]
  %.lcssa76139.i.i = phi i64 [ %.lcssa76138.lcssa145.lcssa151180.i.i, %.outer.i.i ], [ %.lcssa76138.i.i, %.split.i.i.i89.backedge ] ; 5 uses
  %.lcssa131135.i.i = phi i64 [ %.lcssa131133.lcssa155.lcssa166190.i.i, %.outer.i.i ], [ %.lcssa131133.i.i, %.split.i.i.i89.backedge ]
  %i.ahp = phi i64 [ %.lcssa131133.lcssa155.lcssa166190.i.i, %.outer.i.i ], [ %.be, %.split.i.i.i89.backedge ] ; 3 uses
  %.lcssa1519.i.i.i = phi i64 [ %.lcssa76138.lcssa145.lcssa151180.i.i, %.outer.i.i ], [ %.lcssa1519.i.i.i.be, %.split.i.i.i89.backedge ] ; 8 uses
  %i.ahq = phi i1 [ %.sroa.520.0..sroa_idx.promoted178.i.i, %.outer.i.i ], [ %.be681, %.split.i.i.i89.backedge ]
  br i1 %i.ahq, label %bb.ni, label %bb.mg

bb.mg:                                            ; preds = %.split.i.i.i89
  %i.ahr = icmp ult i64 %.sroa.3.0.i86, %i.ahp
  br i1 %i.ahr, label %select.unfold.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.mg, %bb.mj
  %i.ahs = phi i64 [ %i.aig, %bb.mj ], [ %i.ahp, %bb.mg ] ; 5 uses
  %i.aht = sub nuw i64 %.sroa.3.0.i86, %i.ahs     ; 4 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 %i.ahs ; 2 uses
  %i.ahv = icmp samesign ult i64 %i.aht, 16
  br i1 %i.ahv, label %.preheader.i.i.i.i.i.i.i, label %bb.mh

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i103 = icmp eq i64 %.sroa.3.0.i86, %i.ahs
  br i1 %.not.i.i.i.i.i.i.i103, label %select.unfold.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.mh:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ahw = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ahu, i64 noundef range(i64 0, -9223372036854775808) %i.aht)
          to label %.noexc.i91 unwind label %.loopexit132.i, !noalias !27758 ; 2 uses

.noexc.i91:                                       ; preds = %bb.mh
  %i.ahx = extractvalue { i64, i64 } %i.ahw, 0
  %i.ahy = extractvalue { i64, i64 } %i.ahw, 1
  %i.ahz = trunc nuw i64 %i.ahx to i1
  br i1 %i.ahz, label %.loopexit.i.i.i.i.i.i, label %select.unfold.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.mi
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.aid, %bb.mi ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.aib = load i8, ptr %i.aia, align 1, !alias.scope !27760, !noalias !27761, !noundef !28
  %i.aic = icmp eq i8 %i.aib, 44
  br i1 %i.aic, label %.loopexit.i.i.i.i.i.i, label %bb.mi

bb.mi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aid = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.aid, %i.aht
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc.i91
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.ahy, %.noexc.i91 ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aie = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.aht
  call void @llvm.assume(i1 %i.aie)
  %i.aif = add i64 %i.ahs, 1
  %i.aig = add i64 %i.aif, %.sroa.5.0.i.i.i.i.i.i.i ; 8 uses
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.aig, %.sroa.3.0.i86
  %i.aih = add i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.ahs ; 3 uses
  %or.cond.i.i.i.i.not.i.i = icmp ult i64 %i.aih, %.sroa.3.0.i86
  br i1 %or.cond.i.i.i.i.not.i.i, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mk, %.loopexit.i.i.i.i.i.i
  br i1 %.not12.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.mk:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 %i.aih
  %lhsc.i.i = load i8, ptr %i.aii, align 1, !alias.scope !27759, !noalias !27762
  %i.aij = icmp eq i8 %lhsc.i.i, 44
  br i1 %i.aij, label %select.unfold.i.i.i, label %bb.mj

select.unfold.i.i.i:                              ; preds = %bb.mk, %bb.mj, %.noexc.i91, %.preheader.i.i.i.i.i.i.i, %bb.mi, %bb.mg
  %.sroa.520.0..sroa_idx.promoted175.i.i = phi i1 [ true, %bb.mg ], [ true, %bb.mi ], [ true, %.preheader.i.i.i.i.i.i.i ], [ true, %.noexc.i91 ], [ %.sroa.520.0..sroa_idx.promoted176.i.i, %bb.mk ], [ true, %bb.mj ] ; 2 uses
  %.promoted.i141.i.i = phi i1 [ true, %bb.mg ], [ true, %bb.mi ], [ true, %.preheader.i.i.i.i.i.i.i ], [ true, %.noexc.i91 ], [ %.promoted.i142.i.i, %bb.mk ], [ true, %bb.mj ] ; 2 uses
  %.lcssa76138.i.i = phi i64 [ %.lcssa76139.i.i, %bb.mg ], [ %.lcssa76139.i.i, %bb.mi ], [ %.lcssa76139.i.i, %.preheader.i.i.i.i.i.i.i ], [ %.lcssa76139.i.i, %.noexc.i91 ], [ %i.aig, %bb.mk ], [ %.lcssa76139.i.i, %bb.mj ] ; 3 uses
  %.lcssa131133.i.i = phi i64 [ %.lcssa131135.i.i, %bb.mg ], [ %.sroa.3.0.i86, %bb.mi ], [ %.sroa.3.0.i86, %.preheader.i.i.i.i.i.i.i ], [ %.sroa.3.0.i86, %.noexc.i91 ], [ %i.aig, %bb.mk ], [ %i.aig, %bb.mj ] ; 3 uses
  %i.aik = phi i64 [ %i.ahp, %bb.mg ], [ %.sroa.3.0.i86, %bb.mi ], [ %.sroa.3.0.i86, %.preheader.i.i.i.i.i.i.i ], [ %.sroa.3.0.i86, %.noexc.i91 ], [ %i.aig, %bb.mk ], [ %i.aig, %bb.mj ]
  %.lcssa1518.i.i.i = phi i64 [ %.lcssa1519.i.i.i, %bb.mg ], [ %.lcssa1519.i.i.i, %bb.mi ], [ %.lcssa1519.i.i.i, %.preheader.i.i.i.i.i.i.i ], [ %.lcssa1519.i.i.i, %.noexc.i91 ], [ %i.aig, %bb.mk ], [ %.lcssa1519.i.i.i, %bb.mj ]
  %i.ail = phi i1 [ true, %bb.mg ], [ true, %bb.mi ], [ true, %.preheader.i.i.i.i.i.i.i ], [ true, %.noexc.i91 ], [ false, %bb.mk ], [ true, %bb.mj ]
  %.pn.i.i.i92 = phi i64 [ %.sroa.3.0.i86, %bb.mg ], [ %.sroa.3.0.i86, %bb.mi ], [ %.sroa.3.0.i86, %.preheader.i.i.i.i.i.i.i ], [ %.sroa.3.0.i86, %.noexc.i91 ], [ %i.aih, %bb.mk ], [ %.sroa.3.0.i86, %bb.mj ] ; 2 uses
  %.not.i.i.i.i93 = icmp eq i64 %.pn.i.i.i92, %.lcssa1519.i.i.i
  br i1 %.not.i.i.i.i93, label %.split.i.i.i89.backedge, label %.loopexit71.i.i

.split.i.i.i89.backedge:                          ; preds = %select.unfold.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit55.i.i
  %.be = phi i64 [ %i.aik, %select.unfold.i.i.i ], [ %.lcssa131133.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit55.i.i ]
  %.lcssa1519.i.i.i.be = phi i64 [ %.lcssa1518.i.i.i, %select.unfold.i.i.i ], [ %.lcssa76138.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit55.i.i ]
  %.be681 = phi i1 [ %i.ail, %select.unfold.i.i.i ], [ %.promoted.i141.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit55.i.i ]
  br label %.split.i.i.i89

.loopexit71.i.i:                                  ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.le.i.i = sub nuw i64 %.pn.i.i.i92, %.lcssa1519.i.i.i ; 5 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 %.lcssa1519.i.i.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !27763
  store ptr %.sroa.0.1.i.i.i.i.i, ptr %i.ar, align 8, !noalias !27763, !captures !117
  store i64 %.sroa.4.1.i.i.i.le.i.i, ptr %i.ahm, align 8, !noalias !27763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !27763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !27763
  store ptr %.sroa.0.1.i.i.i.i.i, ptr %i.am, align 8, !noalias !27764
  store i64 %.sroa.4.1.i.i.i.le.i.i, ptr %i.ahn, align 8, !noalias !27764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !27765
  store i64 0, ptr %i.al, align 8, !noalias !27765
  store ptr @248, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 4, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  %i.aim = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.le.i.i, i1 noundef zeroext true)
          to label %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.i.i.i unwind label %bb.ml, !noalias !27766

bb.ml:                                            ; preds = %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2.i.i.i, %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1.i.i.i, %.loopexit71.i.i
  %i.ain = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.al) #62, !noalias !27766
  br label %.thread.i90

_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.i.i.i: ; preds = %.loopexit71.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.al), !noalias !27766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !27765
  br i1 %i.aim, label %_RNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_strB6_.exit.thread.i.i, label %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1.i.i.i

_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1.i.i.i: ; preds = %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !27765
  store i64 0, ptr %i.al, align 8, !noalias !27765
  store ptr @249, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 6, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  %i.aio = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.le.i.i, i1 noundef zeroext true)
          to label %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.1.i.i.i unwind label %bb.ml, !noalias !27766

_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.1.i.i.i: ; preds = %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1.i.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.al), !noalias !27766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !27765
  br i1 %i.aio, label %_RNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_strB6_.exit.thread.i.i, label %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2.i.i.i

_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2.i.i.i: ; preds = %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.1.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !27765
  store i64 0, ptr %i.al, align 8, !noalias !27765
  store ptr @250, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 11, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27765
  %i.aip = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.le.i.i, i1 noundef zeroext true)
          to label %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.2.i.i.i unwind label %bb.ml, !noalias !27766

_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.2.i.i.i: ; preds = %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2.i.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.al), !noalias !27766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !27765
  br i1 %i.aip, label %_RNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_strB6_.exit.thread.i.i, label %_RNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_strB6_.exit.i.i

_RNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_strB6_.exit.thread.i.i: ; preds = %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.2.i.i.i, %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.1.i.i.i, %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.i.i.i
  %.idx.lcssa13.i.i.i = phi i64 [ 0, %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.i.i.i ], [ 1, %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.1.i.i.i ], [ 2, %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.2.i.i.i ]
  %.ptr.le.i.i.i = getelementptr inbounds nuw i8, ptr @871, i64 %.idx.lcssa13.i.i.i
  %.val.i.i.i102 = load i8, ptr %.ptr.le.i.i.i, align 1, !range !40, !noalias !27764, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !27763
  br label %.loopexit74.i.i

_RNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_strB6_.exit.i.i: ; preds = %_RNCNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_str0B8_.exit.i.2.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !27767
  store ptr %i.am, ptr %i.ak, align 8, !noalias !27767
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.42.0..sroa_idx.i.i.i.i87, align 8, !noalias !27767
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @491, ptr noundef nonnull %i.ak)
          to label %.noexc123.i unwind label %.loopexit.split-lp133.loopexit.i, !noalias !27758

.noexc123.i:                                      ; preds = %_RNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_strB6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !27767
  %.pr.i.i = load i64, ptr %i.aq, align 8, !noalias !27763 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !27763
  %.not34.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not34.i.i, label %.loopexit74.loopexit.i.i, label %bb.mm

bb.mm:                                            ; preds = %.noexc123.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !27763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !27763
  store ptr %i.ar, ptr %i.ao, align 8, !noalias !27763
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !27763
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noundef nonnull @651, ptr noundef nonnull %i.ao)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.mq, !noalias !27762

.loopexit74.loopexit.i.i:                         ; preds = %.noexc123.i
  %.pre.i.i = load i8, ptr %i.aho, align 8, !range !40, !noalias !27763
  br label %.loopexit74.i.i

.loopexit74.i.i:                                  ; preds = %.loopexit74.loopexit.i.i, %_RNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_strB6_.exit.thread.i.i
  %i.aiq = phi i8 [ %.pre.i.i, %.loopexit74.loopexit.i.i ], [ %.val.i.i.i102, %_RNvYNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum8from_strB6_.exit.thread.i.i ]
  switch i8 %i.aiq, label %default.unreachable [
    i8 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i
    i8 1, label %bb.mn
    i8 2, label %bb.mo
  ]

bb.mn:                                            ; preds = %.loopexit74.i.i
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i

bb.mo:                                            ; preds = %.loopexit74.i.i
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit.i.i: ; preds = %bb.mo, %bb.mn, %.loopexit74.i.i
  %.sroa.5.1.i.i = phi i8 [ 1, %bb.mo ], [ %.sroa.5.0.ph.i.i, %bb.mn ], [ %.sroa.5.0.ph.i.i, %.loopexit74.i.i ]
  %.sroa.3.1.i.i = phi i8 [ %.sroa.3.0.ph.i.i, %bb.mo ], [ 1, %bb.mn ], [ %.sroa.3.0.ph.i.i, %.loopexit74.i.i ]
  %.sroa.0.1.i.i101 = phi i8 [ %.sroa.0.0.ph.i.i, %bb.mo ], [ %.sroa.0.0.ph.i.i, %bb.mn ], [ 1, %.loopexit74.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !27763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !27763
  br label %.outer.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.mr, %.body.i.i96, %bb.mq
  %.pn.i.i94 = phi { ptr, i32 } [ %i.air, %bb.mq ], [ %eh.lpad-body.i.i97, %.body.i.i96 ], [ %eh.lpad-body.i.i97, %bb.mr ] ; 2 uses
  %.not315.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not315.i.i, label %.thread.i90, label %bb.mp

bb.mp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i
  %.val43.i.i = load ptr, ptr %i.aho, align 8, !noalias !27763, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43.i.i, i64 noundef %.pr.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27768
  br label %.thread.i90

bb.mq:                                            ; preds = %bb.mm
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !27763
  %.sroa.0.0.copyload.i.i95 = load i64, ptr %i.ap, align 8, !noalias !27763 ; 6 uses
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !27763, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i88, align 8, !noalias !27763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !27763
  %i.ais = invoke fastcc noundef ptr @_RNvCs9fPPV5zPXBl_5typst11print_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.11.0.copyload.i.i)
          to label %bb.ms unwind label %.loopexit73.i.i, !noalias !27762 ; 2 uses

.loopexit73.i.i:                                  ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i96

.loopexit.split-lp.i.i:                           ; preds = %bb.my
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i96

.body.i.i96:                                      ; preds = %bb.na, %.loopexit.split-lp.i.i, %.loopexit73.i.i
  %eh.lpad-body.i.i97 = phi { ptr, i32 } [ %i.aiv, %bb.na ], [ %lpad.loopexit.i.i, %.loopexit73.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.ait = icmp eq i64 %.sroa.0.0.copyload.i.i95, 0
  br i1 %i.ait, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i, label %bb.mr

bb.mr:                                            ; preds = %.body.i.i96
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i95, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27769
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i

bb.ms:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit.i.i
  %.not35.i.i = icmp eq ptr %i.ais, null
  br i1 %.not35.i.i, label %bb.nb, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !27763
  store ptr %i.ais, ptr %i.aj, align 8, !noalias !27770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !27770
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ai, i8 0, i64 15, i1 false), !noalias !27770
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i.i.i, align 1, !noalias !27770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !27770
  store ptr %i.aj, ptr %i.ah, align 8, !noalias !27770
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !27770
  %i.aiu = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull @95, ptr noundef nonnull %i.ah)
          to label %bb.mv unwind label %bb.mu, !noalias !27771

bb.mu:                                            ; preds = %bb.mw, %bb.mt
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ai) #62
          to label %bb.na unwind label %bb.mz, !noalias !27771

bb.mv:                                            ; preds = %bb.mt
  br i1 %i.aiu, label %bb.mw, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i, !prof !38

bb.mw:                                            ; preds = %bb.mv
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @421) #65
          to label %.noexc.i.i.i100 unwind label %bb.mu, !noalias !27771

.noexc.i.i.i100:                                  ; preds = %bb.mw
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !27770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !noalias !27763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !27770
  call void @llvm.experimental.noalias.scope.decl(metadata !27772)
  %.val.i.i49.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !27772, !noalias !27770, !nonnull !28, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !27773
  %i.aiw = ptrtoint ptr %.val.i.i49.i.i to i64    ; 2 uses
  %i.aix = and i64 %i.aiw, 3
  switch i64 %i.aix, label %default.unreachable [
    i64 2, label %bb.ne
    i64 3, label %bb.mx
    i64 0, label %bb.ne
    i64 1, label %bb.my
  ], !prof !66

bb.mx:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.aiy = icmp ult ptr %.val.i.i49.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aiz = and i64 %i.aiw, 1095216660480
  %i.aja = icmp ne i64 %i.aiz, 1095216660480
  call void @llvm.assume(i1 %i.aiy)
  call void @llvm.assume(i1 %i.aja)
  br label %bb.ne

bb.my:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.ajb = getelementptr i8, ptr %.val.i.i49.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajb) ]
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.ajb, ptr %i.ajc, align 8, !alias.scope !27774, !noalias !27773
  store i8 3, ptr %i.ag, align 8, !alias.scope !27774, !noalias !27773
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ajc)
          to label %bb.ne unwind label %.loopexit.split-lp.i.i, !noalias !27762

bb.mz:                                            ; preds = %bb.na, %bb.mu
  %i.ajd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !27771
  unreachable

bb.na:                                            ; preds = %bb.mu
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #62
          to label %.body.i.i96 unwind label %bb.mz, !noalias !27771

bb.nb:                                            ; preds = %bb.ms
  %i.aje = icmp eq i64 %.sroa.0.0.copyload.i.i95, 0
  br i1 %i.aje, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit52.i.i, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i95, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27775
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit52.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit52.i.i: ; preds = %bb.nc, %bb.nb
  %.not316.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not316.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit55.i.i, label %bb.nd

bb.nd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit52.i.i
  %.val41.i.i = load ptr, ptr %i.aho, align 8, !noalias !27763, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41.i.i, i64 noundef %.pr.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27776
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit55.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9fPPV5zPXBl_5typst4args7FeatureNtNtCs1xwejQucwHj_5alloc6string6StringEEB11_.exit55.i.i: ; preds = %bb.nd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit52.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !27763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !27763
  br label %.split.i.i.i89.backedge

bb.ne:                                            ; preds = %bb.my, %bb.mx, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !27773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !27763
  %.sroa.10.8..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.sroa.10.i, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.8..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !noalias !27777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
end_hunk_1
begin_hunk_2_@_RNvXs0_NtCsloFShupyl5J_6comemo10constraintINtB5_10ConstraintNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallENtNtB7_5track4Sink4emitCs9fPPV5zPXBl_5typst:bb.a
bb.ah:                                            ; preds = %bb.x, %bb.h, %.invoke.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.n) #62
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallE6insertCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCs9fPPV5zPXBl_5typst.exit.i, %bb.ab, %.sink.split.i.i.i
  %.not38.i = phi i1 [ true, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCs9fPPV5zPXBl_5typst.exit.i ], [ false, %bb.ab ], [ false, %.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ga = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.gb = extractvalue { i8, i1 } %i.ga, 1
  br i1 %i.gb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEEECs9fPPV5zPXBl_5typst.exit7, label %bb.aj, !prof !43

bb.aj:                                            ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallE6insertCs9fPPV5zPXBl_5typst.exit
  call void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEEECs9fPPV5zPXBl_5typst.exit7

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEEECs9fPPV5zPXBl_5typst.exit7: ; preds = %bb.aj, %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallE6insertCs9fPPV5zPXBl_5typst.exit
  ret i1 %.not38.i

bb.ak:                                            ; preds = %bb.d, %bb.al
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

.thread:                                          ; preds = %bb.d, %.body, %bb.al
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %bb.d ], [ %i.gd, %bb.al ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn10

bb.al:                                            ; preds = %bb.b
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 16 dereferenceable(80) %1) #62
          to label %.thread unwind label %bb.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs91z6ktdDspq_10serde_yaml7libyaml7emitterNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !range !100, !noundef !28
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @794, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @793)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @792, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @791)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsj1PC5XHMKi0_12clap_builder5error4kindNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !118, !noundef !28
  %i.b = zext nneg i8 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXs0_NtNtCsj1PC5XHMKi0_12clap_builder5error4kindNtB7_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, align 8, !nonnull !28, !noundef !28
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_NtNtCsj1PC5XHMKi0_12clap_builder5error4kindNtB7_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !28
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXs0_NtNtCsj1PC5XHMKi0_12clap_builder5error4kindNtB7_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 18, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38639)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !38639, !noalias !38638, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !38639, !noalias !38638 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !38639, !noalias !38638
  %.val.i = load i8, ptr %i.e, align 1, !range !40, !noalias !38640, !noundef !28
  tail call fastcc void @_RNvXs1W_NtCs9fPPV5zPXBl_5typst4argsNtB6_10DepsFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i8 %.val.i), !noalias !38639
  %i.g = load i64, ptr %0, align 8, !range !32, !alias.scope !38638, !noalias !38639, !noundef !28
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2o_12value_parserINtB3E_15EnumValueParserBQ_ENtB3E_16TypedValueParser15possible_values0EBU_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !38638, !noalias !38639
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2o_12value_parserINtB3E_15EnumValueParserBQ_ENtB3E_16TypedValueParser15possible_values0EBU_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2o_12value_parserINtB3E_15EnumValueParserBQ_ENtB3E_16TypedValueParser15possible_values0EBU_.exit: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
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
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38645)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !38645, !noalias !38644, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !38645, !noalias !38644 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !38645, !noalias !38644
  %.val.i = load i8, ptr %i.e, align 1, !range !118, !noalias !38646, !noundef !28
  tail call fastcc void @_RNvXs2C_NtCs9fPPV5zPXBl_5typst4argsNtB6_11PdfStandardNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i8 %.val.i), !noalias !38645
  %i.g = load i64, ptr %0, align 8, !range !32, !alias.scope !38644, !noalias !38645, !noundef !28
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2p_12value_parserINtB3F_15EnumValueParserBQ_ENtB3F_16TypedValueParser15possible_values0EBU_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !38644, !noalias !38645
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2p_12value_parserINtB3F_15EnumValueParserBQ_ENtB3F_16TypedValueParser15possible_values0EBU_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2p_12value_parserINtB3F_15EnumValueParserBQ_ENtB3F_16TypedValueParser15possible_values0EBU_.exit: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
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
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserB1A_ENtB2q_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38657)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !38657, !noalias !38656, !nonnull !28, !noundef !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !38657, !noalias !38656, !nonnull !28, !noundef !28
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !38657, !noalias !38656
  %.val.i = load i8, ptr %i.a, align 1, !range !120, !noalias !38658, !noundef !28 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !38659, !noalias !38657
  %i.f = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2869, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2870, i64 %i.g
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  %.sroa.101.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %switch.load, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38659, !noalias !38657
  store i64 %switch.ext, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38659, !noalias !38657
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38659, !noalias !38657
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38659, !noalias !38657
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38659, !noalias !38657
  store i64 -1, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38659, !noalias !38657
  store i8 0, ptr %.sroa.101.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38659, !noalias !38657
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2q_12value_parserINtB3G_15EnumValueParserBQ_ENtB3G_16TypedValueParser15possible_values0EBU_.exit

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !38656, !noalias !38657
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2q_12value_parserINtB3G_15EnumValueParserBQ_ENtB3G_16TypedValueParser15possible_values0EBU_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2q_12value_parserINtB3G_15EnumValueParserBQ_ENtB3G_16TypedValueParser15possible_values0EBU_.exit: ; preds = %switch.lookup, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserB1A_ENtB2q_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
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
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2u_15EnumValueParserB1A_ENtB2u_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38670)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !38670, !noalias !38669, !nonnull !28, !noundef !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !38670, !noalias !38669, !nonnull !28, !noundef !28
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2u_12value_parserINtB3K_15EnumValueParserBQ_ENtB3K_16TypedValueParser15possible_values0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !38670, !noalias !38669
  %.val.i = load i8, ptr %i.a, align 1, !range !53, !noalias !38671, !noundef !28
  %i.f = trunc nuw i8 %.val.i to i1
  %spec.select.i.i.i.i = select i1 %i.f, ptr @1037, ptr @1036
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i.i.i, ptr %i.g, align 8, !alias.scope !38672, !noalias !38670
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %i.h, align 8, !alias.scope !38672, !noalias !38670
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.i, align 8, !alias.scope !38672, !noalias !38670
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !38672, !noalias !38670
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.k, align 8, !alias.scope !38672, !noalias !38670
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.l, align 8, !alias.scope !38672, !noalias !38670
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.m, align 8, !alias.scope !38672, !noalias !38670
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2u_12value_parserINtB3K_15EnumValueParserBQ_ENtB3K_16TypedValueParser15possible_values0EBU_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2u_12value_parserINtB3K_15EnumValueParserBQ_ENtB3K_16TypedValueParser15possible_values0EBU_.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i64 [ 0, %bb.b ], [ 2, %bb.a ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !38669, !noalias !38670
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2u_15EnumValueParserB1A_ENtB2u_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
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
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1A_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38683)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !38683, !noalias !38682, !nonnull !28, !noundef !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !38683, !noalias !38682, !nonnull !28, !noundef !28
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2x_12value_parserINtB3N_15EnumValueParserBQ_ENtB3N_16TypedValueParser15possible_values0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !38683, !noalias !38682
  %.val.i = load i8, ptr %i.a, align 1, !range !53, !noalias !38684, !noundef !28
  %i.f = trunc nuw i8 %.val.i to i1
  %spec.select.i.i.i.i = select i1 %i.f, ptr @1034, ptr @872
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i.i.i, ptr %i.g, align 8, !alias.scope !38685, !noalias !38683
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %i.h, align 8, !alias.scope !38685, !noalias !38683
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.i, align 8, !alias.scope !38685, !noalias !38683
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !38685, !noalias !38683
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.k, align 8, !alias.scope !38685, !noalias !38683
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.l, align 8, !alias.scope !38685, !noalias !38683
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.m, align 8, !alias.scope !38685, !noalias !38683
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2x_12value_parserINtB3N_15EnumValueParserBQ_ENtB3N_16TypedValueParser15possible_values0EBU_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2x_12value_parserINtB3N_15EnumValueParserBQ_ENtB3N_16TypedValueParser15possible_values0EBU_.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i64 [ 0, %bb.b ], [ 2, %bb.a ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !38682, !noalias !38683
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1A_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
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
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38690)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !38690, !noalias !38689, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !38690, !noalias !38689 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !38690, !noalias !38689
  %.val.i = load i8, ptr %i.e, align 1, !range !40, !noalias !38691, !noundef !28
  tail call fastcc void @_RNvXs28_NtCs9fPPV5zPXBl_5typst4argsNtB6_6TargetNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i8 %.val.i), !noalias !38690
  %i.g = load i64, ptr %0, align 8, !range !32, !alias.scope !38689, !noalias !38690, !noundef !28
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2j_12value_parserINtB3z_15EnumValueParserBQ_ENtB3z_16TypedValueParser15possible_values0EBU_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !38689, !noalias !38690
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2j_12value_parserINtB3z_15EnumValueParserBQ_ENtB3z_16TypedValueParser15possible_values0EBU_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2j_12value_parserINtB3z_15EnumValueParserBQ_ENtB3z_16TypedValueParser15possible_values0EBU_.exit: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
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
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38702)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !38702, !noalias !38701, !nonnull !28, !noundef !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !38702, !noalias !38701, !nonnull !28, !noundef !28
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !38702, !noalias !38701
  %.val.i = load i8, ptr %i.a, align 1, !range !40, !noalias !38703, !noundef !28 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !38704, !noalias !38702
  %i.f = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2873, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2874, i64 %i.g
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  %.sroa.101.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %switch.load, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38704, !noalias !38702
  store i64 %switch.ext, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38704, !noalias !38702
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38704, !noalias !38702
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38704, !noalias !38702
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38704, !noalias !38702
  store i64 -1, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38704, !noalias !38702
  store i8 0, ptr %.sroa.101.0..sroa_idx.i.i.i.i, align 8, !alias.scope !38704, !noalias !38702
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2k_12value_parserINtB3A_15EnumValueParserBQ_ENtB3A_16TypedValueParser15possible_values0EBU_.exit

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !38701, !noalias !38702
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2k_12value_parserINtB3A_15EnumValueParserBQ_ENtB3A_16TypedValueParser15possible_values0EBU_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2k_12value_parserINtB3A_15EnumValueParserBQ_ENtB3A_16TypedValueParser15possible_values0EBU_.exit: ; preds = %switch.lookup, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
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
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38709)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !38709, !noalias !38708, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !38709, !noalias !38708 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !38709, !noalias !38708
  tail call void @_RNvXs2_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtB9_6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e), !noalias !38709
  %i.g = load i64, ptr %0, align 8, !range !32, !alias.scope !38708, !noalias !38709, !noundef !28
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtBW_7builder14possible_value13PossibleValueQNCNvXso_NtB2F_12value_parserINtB3w_15EnumValueParserBQ_ENtB3w_16TypedValueParser15possible_values0ECs9fPPV5zPXBl_5typst.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !38708, !noalias !38709
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtBW_7builder14possible_value13PossibleValueQNCNvXso_NtB2F_12value_parserINtB3w_15EnumValueParserBQ_ENtB3w_16TypedValueParser15possible_values0ECs9fPPV5zPXBl_5typst.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtBW_7builder14possible_value13PossibleValueQNCNvXso_NtB2F_12value_parserINtB3w_15EnumValueParserBQ_ENtB3w_16TypedValueParser15possible_values0ECs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
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
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38714)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !38714, !noalias !38713, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !38714, !noalias !38713 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !38714, !noalias !38713
  tail call void @_RNvXs0_NtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e), !noalias !38714
  %i.g = load i64, ptr %0, align 8, !range !32, !alias.scope !38713, !noalias !38714, !noundef !28
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2H_12value_parserINtB3X_15EnumValueParserBQ_ENtB3X_16TypedValueParser15possible_values0ECs9fPPV5zPXBl_5typst.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !38713, !noalias !38714
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2H_12value_parserINtB3X_15EnumValueParserBQ_ENtB3X_16TypedValueParser15possible_values0ECs9fPPV5zPXBl_5typst.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2H_12value_parserINtB3X_15EnumValueParserBQ_ENtB3X_16TypedValueParser15possible_values0ECs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1A_ENtB2H_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
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
define internal fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileIBN_IBN_IBN_INtNtNtBb_5slice4iter4IterINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEERNvMs0_B25_B22_4refsERNCNvNtCs9fPPV5zPXBl_5typst7compile16write_virtual_fss_0ERNCINvNvXs2_NtCsa3eaf3mS27M_5rayon6resultINtNtBb_6result6ResultppEINtNtB5R_4iter20FromParallelIteratorIB6j_ppEE13from_par_iter2okNtNtB4P_4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCINvNvXs2_NtB6K_10while_someINtB8U_15WhileSomeFolderpEINtNtB6K_8plumbing6FolderINtNtBb_6option6OptionpEE12consume_iter4someB7I_E0ENvMBa4_IBa2_B7I_E6unwrapENtNtNtB9_6traits8iterator8Iterator4nextB4P_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 4                 ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38765)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !range !53, !alias.scope !38765, !noalias !38766, !noundef !28
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38769)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !38770, !noalias !38771, !nonnull !28, !noundef !28 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !38770, !noalias !38771, !nonnull !28, !noundef !28
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_IBN_INtNtNtBb_5slice4iter4IterINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEERNvMs0_B1x_B1u_4refsERNCNvNtCs9fPPV5zPXBl_5typst7compile16write_virtual_fss_0ERNCINvNvXs2_NtCsa3eaf3mS27M_5rayon6resultINtNtBb_6result6ResultppEINtNtB5j_4iter20FromParallelIteratorIB5L_ppEE13from_par_iter2okNtNtB4h_4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENtNtNtB9_6traits8iterator8Iterator4nextB4h_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.y, ptr %1, align 8, !alias.scope !38770, !noalias !38771
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !38772, !noalias !38771, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.val.i.i.i, align 8, !noalias !38773, !nonnull !28, !noundef !28
  %i.ab = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !38773, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !38774
  call void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath7realize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i), !noalias !38775
  %i.ac = load i64, ptr %i.o, align 8, !range !55, !noalias !38774, !noundef !28 ; 6 uses
  %i.ad = icmp eq i64 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !38774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !noalias !38774
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !38777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.m, i8 0, i64 15, i1 false), !noalias !38777
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 15
end_hunk_2
begin_hunk_3_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit15internal_string14InternalStringNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !42543, !noalias !42544, !nonnull !28, !noundef !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !42543, !noalias !42544, !noundef !28
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !42543
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit3key3KeyNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42548
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.e, ptr %i.a, align 8, !noalias !42548
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1293, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @906, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1289, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1294, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1290, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1295, i64 noundef 10, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1291, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1296, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1292)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42548
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr4ReprNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.f, align 8            ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42556)
  %i.g = load i64, ptr %i.e, align 8, !range !89, !alias.scope !42557, !noalias !42558, !noundef !28 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 1
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !42559
  store ptr %i.e, ptr %i.d, align 8, !noalias !42559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42559
  store ptr %i.d, ptr %i.c, align 8, !noalias !42559
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit15internal_string14InternalStringNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !42559
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.l = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @95, ptr noundef nonnull %i.c), !noalias !42558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !42559
  br label %_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42559
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.b, align 8, !noalias !42559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42559
  store ptr %i.b, ptr %i.a, align 8, !noalias !42559
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !42559
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.n = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @95, ptr noundef nonnull %i.a), !noalias !42558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42559
  br label %_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !28, !noalias !42559, !nonnull !28
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @787, i64 noundef 5) #60, !noalias !42559, !inline_history !42554
  br label %_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.q, %bb.e ], [ %i.n, %bb.d ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr5DecorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42564
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1055, i64 noundef 5), !noalias !42563
  %i.c = load i64, ptr %i.b, align 8, !range !65, !alias.scope !42563, !noalias !42565, !noundef !28
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1059, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1060) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1059, i64 noundef 6, ptr noundef nonnull @1057, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1058), !noalias !42563 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !65, !alias.scope !42563, !noalias !42565, !noundef !28
  %.not1.i = icmp eq i64 %i.g, -1
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1061, i64 noundef 6, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1060) ; 0 uses
  br label %_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.d
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1061, i64 noundef 6, ptr noundef nonnull @1057, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1058) ; 0 uses
  br label %_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.e, %bb.f
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42564
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsj1PC5XHMKi0_12clap_builder5error7MessageNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42569)
  %i.d = load i64, ptr %i.c, align 8, !range !33, !alias.scope !42569, !noalias !42570, !noundef !28
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42571
  store ptr %i.f, ptr %i.a, align 8, !noalias !42571
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1214, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42571
  br label %_RNvXsb_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_7MessageNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42571
  store ptr %i.f, ptr %i.b, align 8, !noalias !42571
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1213, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @156)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42571
  br label %_RNvXsb_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_7MessageNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXsb_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_7MessageNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsj1PC5XHMKi0_12clap_builder5error9BacktraceNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1224, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num11float_parse14FloatErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %.val = load i8, ptr %i.a, align 1, !range !53, !noundef !28
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 7, i64 5
  %.1.i = select i1 %i.b, ptr @1089, ptr @1088
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %.val = load i8, ptr %i.a, align 1, !range !54, !noundef !28 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst.2862, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs91z6ktdDspq_10serde_yaml7libyaml5error5ErrorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs91z6ktdDspq_10serde_yaml7libyaml5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !28
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value10AnyValueIdNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCsj1PC5XHMKi0_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCsj1PC5XHMKi0_12clap_builder4util9any_valueNtB4_8AnyValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder5error7context11ContextKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %.val = load i8, ptr %i.a, align 1, !range !118, !noundef !28
  %i.b = zext nneg i8 %.val to i64
  %i.c = load ptr, ptr @_RNvNvXs4_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB7_11ContextKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, align 8, !noalias !42574, !nonnull !28, !noundef !28
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs4_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB7_11ContextKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noalias !42574, !noundef !28
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXs4_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB7_11ContextKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 18, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder5error7context12ContextValueNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42578)
  %i.h = load i8, ptr %i.g, align 8, !range !87, !alias.scope !42578, !noalias !42579, !noundef !28
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1159, i64 noundef 4), !noalias !42578
  br label %_RNvXsa_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB5_12ContextValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !42580
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.j, ptr %i.f, align 8, !noalias !42580
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1205, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @919)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !42580
  br label %_RNvXsa_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB5_12ContextValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !42580
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.e, align 8, !noalias !42580
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1206, i64 noundef 6, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @156)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !42580
  br label %_RNvXsa_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB5_12ContextValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !42580
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.n, ptr %i.d, align 8, !noalias !42580
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1208, i64 noundef 7, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1207)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !42580
  br label %_RNvXsa_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB5_12ContextValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42580
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.c, align 8, !noalias !42580
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1097, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42580
  br label %_RNvXsa_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB5_12ContextValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42580
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.r, ptr %i.b, align 8, !noalias !42580
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1210, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1209)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42580
  br label %_RNvXsa_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB5_12ContextValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42580
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.t, ptr %i.a, align 8, !noalias !42580
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1212, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1211)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42580
  br label %_RNvXsa_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB5_12ContextValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXsa_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB5_12ContextValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.b ], [ %i.k, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ %i.s, %bb.g ], [ %i.u, %bb.h ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42584
  store ptr %i.b, ptr %i.a, align 8, !noalias !42584
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1097, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @156)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42584
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42588
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.a, align 8, !noalias !42588
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1148, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @284, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1146, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1149, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1147), !inline_history !42589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42588
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42593
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 97
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42593
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.h, ptr %i.a, align 8, !noalias !42593
  store ptr %i.d, ptr %i.b, align 8, !noalias !42593
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @914, ptr %i.i, align 8, !noalias !42593
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.j, align 8, !noalias !42593
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @915, ptr %i.k, align 8, !noalias !42593
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.l, align 8, !noalias !42593
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @916, ptr %i.m, align 8, !noalias !42593
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.n, align 8, !noalias !42593
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @917, ptr %i.o, align 8, !noalias !42593
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.p, align 8, !noalias !42593
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @918, ptr %i.q, align 8, !noalias !42593
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.a, ptr %i.r, align 8, !noalias !42593
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @919, ptr %i.s, align 8, !noalias !42593
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @926, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @925, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42593
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches12value_source11ValueSourceNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %.val = load i8, ptr %i.a, align 1, !range !40, !noundef !28 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches12value_source11ValueSourceNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches12value_source11ValueSourceNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst.2863, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42597)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !42597, !noalias !42598, !nonnull !28, !noundef !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !42597, !noalias !42598, !noundef !28
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !42597
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRbNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !28
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRhNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !42602, !noalias !42603, !noundef !28 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRiNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !42607, !noalias !42608, !noundef !28 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt3numiNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsT_NtNtCs3oUPovFnLWP_4core3fmt3numiNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impiNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsT_NtNtCs3oUPovFnLWP_4core3fmt3numiNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtNtCs3oUPovFnLWP_4core3fmt3numiNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsT_NtNtCs3oUPovFnLWP_4core3fmt3numiNtB7_5Debug3fmt.exit

_RNvXsT_NtNtCs3oUPovFnLWP_4core3fmt3numiNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRjNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !42612, !noalias !42613, !noundef !28 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs1g_NtCs9fPPV5zPXBl_5typst4argsNtB6_11ProcessArgsNtNtCsj1PC5XHMKi0_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [104 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [104 x i8], align 8               ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 6 uses
  %i.m = alloca [128 x i8], align 8               ; 8 uses
  %i.n = alloca [104 x i8], align 8               ; 13 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [96 x i8], align 8                ; 6 uses
  %i.q = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.10.i52.sroa.6 = alloca [15 x i8], align 1 ; 9 uses
  %.sroa.12.i53 = alloca [56 x i8], align 8       ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [112 x i8], align 8               ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 16              ; 4 uses
  %i.ab = alloca [104 x i8], align 8              ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [104 x i8], align 8              ; 5 uses
  %i.ae = alloca [16 x i8], align 16              ; 6 uses
  %i.af = alloca [128 x i8], align 8              ; 8 uses
  %i.ag = alloca [104 x i8], align 16             ; 11 uses
  %i.ah = alloca [104 x i8], align 8              ; 4 uses
  %.sroa.10.i17 = alloca [16 x i8], align 8       ; 8 uses
  %.sroa.12.i18 = alloca [56 x i8], align 8       ; 6 uses
  %i.ai = alloca [104 x i8], align 16             ; 11 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [40 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 8               ; 9 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [16 x i8], align 16              ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 16              ; 4 uses
  %i.ar = alloca [104 x i8], align 8              ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [104 x i8], align 8              ; 5 uses
  %i.au = alloca [16 x i8], align 16              ; 5 uses
  %i.av = alloca [128 x i8], align 8              ; 8 uses
  %i.aw = alloca [104 x i8], align 8              ; 13 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [96 x i8], align 8               ; 6 uses
  %i.az = alloca [104 x i8], align 8              ; 9 uses
  %.sroa.12.i = alloca [56 x i8], align 8         ; 6 uses
  %.sroa.11121 = alloca [15 x i8], align 1        ; 5 uses
  %i.ba = alloca [112 x i8], align 8              ; 7 uses
  %i.bb = alloca [120 x i8], align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !42751
  call fastcc void @_RINvMNtNtCsj1PC5XHMKi0_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @943, i64 noundef 4), !noalias !42752
  %i.bc = load i64, ptr %i.av, align 8, !range !32, !noalias !42751, !noundef !28 ; 4 uses
  %.not.i.i = icmp eq i64 %i.bc, 2
end_hunk_3
begin_hunk_4_@_RNvXs3_NtCs9fPPV5zPXBl_5typst5worldNtB5_18WorldCreationErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a
_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.m
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !44304
  %.not.i.i.i.i = icmp eq i64 %i.bb, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44304
  %i.bc = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.bc, align 8, !noalias !44304, !noundef !28 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %bb.n, !prof !43

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #61, !noalias !44304
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %i.bd = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ba, ptr %i.be, align 8, !noalias !44304
  store i64 8, ptr %i.a, align 8, !noalias !44304
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !noalias !44304
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !44304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44304
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.l, %bb.m, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.p:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ay

bb.q:                                             ; preds = %bb.c
  %i.bh = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !28, !align !39, !noundef !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !28, !nonnull !28
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1046, i64 noundef 31) #60
  br label %bb.f

bb.r:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !28, !align !39, !noundef !28
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !28, !nonnull !28
  %i.bs = tail call noundef zeroext i1 %i.br(ptr noundef nonnull %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1048, i64 noundef 31) #60
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44320)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !44320, !noalias !44321, !nonnull !28, !noundef !28 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !range !32, !noalias !44322, !noundef !28
  %.not.i = icmp eq i64 %i.f, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  call void @_RNvMs4_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_7Message9formatted(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(98) %i.g), !noalias !44320
  br label %_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error9formattedCs9fPPV5zPXBl_5typst.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs_NtNtCsj1PC5XHMKi0_12clap_builder5error6formatNtB4_13RichFormatterNtB4_14ErrorFormatter12format_error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  br label %_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error9formattedCs9fPPV5zPXBl_5typst.exit

_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error9formattedCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsb_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.48.0..sroa_idx, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !28, !align !39, !noundef !28 ; 3 uses
  %i.k = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @95, ptr noundef nonnull %i.c)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error9formattedCs9fPPV5zPXBl_5typst.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val65 = load i64, ptr %i.d, align 8, !range !55, !noundef !28 ; 2 uses
  %i.m = icmp sgt i64 %.val65, 0
  br i1 %i.m, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val66 = load ptr, ptr %i.n, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66, i64 noundef %.val65, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44323
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit

bb.f:                                             ; preds = %_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error9formattedCs9fPPV5zPXBl_5typst.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val63 = load i64, ptr %i.d, align 8, !range !55, !noundef !28 ; 3 uses
  %i.o = icmp sgt i64 %.val63, 0                  ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.o, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit69

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val64 = load ptr, ptr %i.p, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val64, i64 noundef %.val63, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44324
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit69

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit69: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  br i1 %i.o, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit72

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val62 = load ptr, ptr %i.q, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %.val63, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44325
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit72

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit72: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 218
  %i.s = load i8, ptr %i.r, align 2, !range !53, !noundef !28
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit72
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.u, ptr %i.b, align 8, !captures !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !28, !nonnull !28 ; 2 uses
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 1) #60
  br i1 %i.x, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = call noundef zeroext i1 %i.w(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1049, i64 noundef 11) #60
  br i1 %i.y, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtCsj1PC5XHMKi0_12clap_builder5error9BacktraceNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.447.0..sroa_idx, align 8
  %i.z = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @646, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.z, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit72, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit69
  %.sroa.0.0 = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit69 ], [ true, %bb.p ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit72 ], [ false, %bb.n ]
  ret i1 %.sroa.0.0

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrEECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core3num11float_parseNtB5_15ParseFloatErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1051, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @892, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1050)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !40, !noundef !28 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs3_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.2864, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1055, i64 noundef 5)
  %i.b = load i64, ptr %0, align 8, !range !65, !noundef !28
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1059, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1060) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1059, i64 noundef 6, ptr noundef nonnull @1057, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1058) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !65, !noundef !28
  %.not1 = icmp eq i64 %i.f, -1
  br i1 %.not1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1061, i64 noundef 6, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1060) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1061, i64 noundef 6, ptr noundef nonnull @1057, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1058) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvXs4_NtCs91z6ktdDspq_10serde_yaml3serQINtB5_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs7PiwjADO7TO_10serde_core3ser12SerializeMap3endCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 6 uses
  %i.g = load i64, ptr %0, align 8, !range !36, !noundef !28 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775805
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, -9223372036854775807
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc noundef align 8 ptr @_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE18emit_mapping_startCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %thread-pre-split, label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i64, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.k = phi i64 [ %.pr, %thread-pre-split ], [ %i.g, %bb.a ] ; 2 uses
  %i.l = icmp ne i64 %i.k, -9223372036854775805
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, -9223372036854775804
  br i1 %i.m, label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit.thread, label %bb.d

_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.h, %bb.e, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs91z6ktdDspq_10serde_yaml3ser5StateECs9fPPV5zPXBl_5typst.exit
  %.sroa.0.0 = phi ptr [ %i.j, %bb.b ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs91z6ktdDspq_10serde_yaml3ser5StateECs9fPPV5zPXBl_5typst.exit ], [ %i.q, %bb.e ], [ %i.x, %bb.h ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44334
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44334
  store i64 -9223372036854775800, ptr %i.e, align 8, !noalias !44334
  call void @_RNvMNtNtCs91z6ktdDspq_10serde_yaml7libyaml7emitterNtB2_7Emitter4emit(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44334
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.p = load i32, ptr %i.o, align 8, !range !35, !noalias !44334, !noundef !28
  %.not.i = icmp eq i32 %i.p, -2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !44334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44334
  %i.q = call noundef nonnull align 8 ptr @_RNvXs2_NtCs91z6ktdDspq_10serde_yaml5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB7_7libyaml7emitter5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44334
  br label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44334
  call void @llvm.experimental.noalias.scope.decl(metadata !44335)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !44336, !noundef !28
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !alias.scope !44336
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44336
  store i64 -9223372036854775805, ptr %i.b, align 8, !noalias !44336
  call void @_RNvMNtNtCs91z6ktdDspq_10serde_yaml7libyaml7emitterNtB2_7Emitter4emit(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44336
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.w = load i32, ptr %i.v, align 8, !range !35, !noalias !44336, !noundef !28
  %.not.i.i = icmp eq i32 %i.w, -2
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !44336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44336
  %i.x = call noundef nonnull align 8 ptr @_RNvXs2_NtCs91z6ktdDspq_10serde_yaml5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB7_7libyaml7emitter5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44336
  br label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44336
  br label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit.thread

_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit.thread: ; preds = %bb.i, %bb.f, %bb.c
  %.val = load i64, ptr %0, align 8, !range !36, !noundef !28 ; 3 uses
  %i.y = icmp ne i64 %.val, -9223372036854775805
  call void @llvm.assume(i1 %i.y)
  %or.cond.i = icmp slt i64 %.val, 1
  br i1 %or.cond.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs91z6ktdDspq_10serde_yaml3ser5StateECs9fPPV5zPXBl_5typst.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.z, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44337
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs91z6ktdDspq_10serde_yaml3ser5StateECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs91z6ktdDspq_10serde_yaml3ser5StateECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.j, %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit.thread
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtCsc4241EHy6Do_9typst_kit10downloaderINtB5_18ProgressDownloaderNtB5_16SystemDownloaderNCNvNtCs9fPPV5zPXBl_5typst8download10downloader0NtB1y_13PrintProgressENtB5_10Downloader6streamB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44354
  call void @_RNvXs1_NtCsc4241EHy6Do_9typst_kit10downloaderNtB5_16SystemDownloaderNtB5_10Downloader6stream(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !noalias !44355
  %i.c = load i64, ptr %i.b, align 8, !range !32, !noalias !44354, !noundef !28 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !noalias !44354, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44354
  br label %_RNvYNtNtCsc4241EHy6Do_9typst_kit10downloader16SystemDownloaderNtB4_10Downloader8downloadCs9fPPV5zPXBl_5typst.exit.thread

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !44354 ; 5 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.57.0.copyload.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !44354, !nonnull !28, !noundef !28 ; 9 uses
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.68.0.copyload.i = load ptr, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !44354, !nonnull !28, !noundef !28 ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44354
  %i.g = trunc nuw i64 %i.c to i1
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp slt i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %bb.l, label %bb.e, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.h, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !44356
  %i.i = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44356 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.k = ptrtoint ptr %i.i to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.i

bb.g:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.i, %bb.c
  %.sroa.4.0.copyload.sink.i = phi i64 [ %.sroa.4.0.copyload.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.i ], [ 0, %bb.c ]
  %.sink.i = phi ptr [ %i.ad, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.i ], [ inttoptr (i64 1 to ptr), %bb.c ]
  store i64 %.sroa.4.0.copyload.sink.i, ptr %i.a, align 8, !noalias !44354
end_hunk_4
begin_hunk_5_@_RNvXs4_NtCsf1gSX8u3EQ2_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set:bb.a
          to label %common.resume unwind label %bb.h, !noalias !44395

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !44395
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCs9fPPV5zPXBl_5typst.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 1, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.p)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs9fPPV5zPXBl_5typst.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECs9fPPV5zPXBl_5typst(ptr nonnull %0, i8 %.sroa.01.0.i.i) #62
          to label %common.resume unwind label %bb.o

bb.j:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs9fPPV5zPXBl_5typst.exit
  %i.r = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.r, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.t = and i64 %i.s, 9223372036854775807
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !43

bb.l:                                             ; preds = %bb.k
  %i.v = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #63
  br i1 %i.v, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.w = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECs9fPPV5zPXBl_5typst.exit, !prof !38

bb.n:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCsj1PC5XHMKi0_12clap_builder7builder7stylingNtB5_6StylesNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(98) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  store ptr %i.h, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1066, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @1066, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @1066, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @1066, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @1066, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @1066, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @1067, ptr %i.u, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1075, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @1074, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvXs5_NtCs91z6ktdDspq_10serde_yaml3serQINtB5_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs7PiwjADO7TO_10serde_core3ser15SerializeStruct3endCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44400
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44400
  store i64 -9223372036854775800, ptr %i.e, align 8, !noalias !44400
  call void @_RNvMNtNtCs91z6ktdDspq_10serde_yaml7libyaml7emitterNtB2_7Emitter4emit(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44400
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.i = load i32, ptr %i.h, align 8, !range !35, !noalias !44400, !noundef !28
  %.not.i = icmp eq i32 %i.i, -2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !44400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44400
  %i.j = call noundef nonnull align 8 ptr @_RNvXs2_NtCs91z6ktdDspq_10serde_yaml5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB7_7libyaml7emitter5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44400
  br label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44400
  call void @llvm.experimental.noalias.scope.decl(metadata !44401)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !44402, !noundef !28
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !alias.scope !44402
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44402
  store i64 -9223372036854775805, ptr %i.b, align 8, !noalias !44402
  call void @_RNvMNtNtCs91z6ktdDspq_10serde_yaml7libyaml7emitterNtB2_7Emitter4emit(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44402
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.p = load i32, ptr %i.o, align 8, !range !35, !noalias !44402, !noundef !28
  %.not.i.i = icmp eq i32 %i.p, -2
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !44402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44402
  %i.q = call noundef nonnull align 8 ptr @_RNvXs2_NtCs91z6ktdDspq_10serde_yaml5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB7_7libyaml7emitter5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44402
  br label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44402
  br label %_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit

_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16emit_mapping_endCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.b ], [ null, %bb.c ], [ null, %bb.f ], [ %i.q, %bb.e ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1080, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1079)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations7target_NtB5_6TargetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !40, !noundef !28 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations7target_NtB5_6TargetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations7target_NtB5_6TargetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.2865, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtCs9fPPV5zPXBl_5typst5worldNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_18WorldCreationErrorE4from(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs3_NtCs9fPPV5zPXBl_5typst5worldNtB5_18WorldCreationErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.d = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull @95, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #62
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit, !prof !38

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1083) #65
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst5world18WorldCreationErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  ret void

bb.e:                                             ; preds = %bb.f, %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.f:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst5world18WorldCreationErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #62
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtCsa3eaf3mS27M_5rayon4iter3mapINtB5_9MapFolderINtNtB7_10while_some15WhileSomeFolderINtNtB7_6extend13ListVecFolderNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvXs2_NtB9_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB7_20FromParallelIteratorIB2X_ppEE13from_par_iter2okB1X_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0EINtNtB7_8plumbing6FolderIB2X_B1X_B4y_EE8completeB21_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44422)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !44422, !noalias !44421 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !44422, !noalias !44421 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !44422, !noalias !44421 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44424
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !44424
  %i.e = icmp ult i64 %.sroa.7.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %.sroa.7.0.copyload.i, 0
  br i1 %i.f, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44426
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !44426
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !44427
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !noalias !44427
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx7.i, align 8, !noalias !44427
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !44428
  %i.h = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44428 ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.e, !prof !38

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #61
          to label %.noexc.i.i.i.i unwind label %.body.i.i, !noalias !44429

.noexc.i.i.i.i:                                   ; preds = %bb.c
  unreachable

.body.i.i:                                        ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4NodeINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1R_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.a) #62, !noalias !44430
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #62, !noalias !44424
  resume { ptr, i32 } %i.j

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !44431, !noalias !44432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44424
  %i.k = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.k, label %_RNvXs2_NtNtCsa3eaf3mS27M_5rayon4iter10while_someINtB5_15WhileSomeFolderINtNtB7_6extend13ListVecFolderNtNtCs9fPPV5zPXBl_5typst4args6OutputEEINtNtB7_8plumbing6FolderINtNtCs3oUPovFnLWP_4core6option6OptionB1B_EE8completeB1F_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.l = mul nuw i64 %.sroa.0.0.copyload.i, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44433
  br label %_RNvXs2_NtNtCsa3eaf3mS27M_5rayon4iter10while_someINtB5_15WhileSomeFolderINtNtB7_6extend13ListVecFolderNtNtCs9fPPV5zPXBl_5typst4args6OutputEEINtNtB7_8plumbing6FolderINtNtCs3oUPovFnLWP_4core6option6OptionB1B_EE8completeB1F_.exit

bb.e:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.copyload.i, ptr %i.h, align 8, !noalias !44434
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx5.i, align 8, !noalias !44434
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx9.i, align 8, !noalias !44434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44426
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !44424
  store ptr %i.h, ptr %i.b, align 8, !alias.scope !44425, !noalias !44435
  store ptr %i.h, ptr %i.c, align 8, !alias.scope !44425, !noalias !44435
  store i64 1, ptr %i.d, align 8, !alias.scope !44425, !noalias !44435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !44432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44424
  br label %_RNvXs2_NtNtCsa3eaf3mS27M_5rayon4iter10while_someINtB5_15WhileSomeFolderINtNtB7_6extend13ListVecFolderNtNtCs9fPPV5zPXBl_5typst4args6OutputEEINtNtB7_8plumbing6FolderINtNtCs3oUPovFnLWP_4core6option6OptionB1B_EE8completeB1F_.exit

_RNvXs2_NtNtCsa3eaf3mS27M_5rayon4iter10while_someINtB5_15WhileSomeFolderINtNtB7_6extend13ListVecFolderNtNtCs9fPPV5zPXBl_5typst4args6OutputEEINtNtB7_8plumbing6FolderINtNtCs3oUPovFnLWP_4core6option6OptionB1B_EE8completeB1F_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvXs7_NtCs261H7cERR92_10serde_json3serINtB5_8CompoundINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_16CompactFormatterENtNtCs7PiwjADO7TO_10serde_core3ser15SerializeStruct3endCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44446)
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %_RNvXs6_NtCs261H7cERR92_10serde_json3serINtB5_8CompoundINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_16CompactFormatterENtNtCs7PiwjADO7TO_10serde_core3ser12SerializeMap3endCs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44448)
  %i.b = load i64, ptr %0, align 8, !range !37, !alias.scope !44449, !noalias !44450, !noundef !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !44449, !noalias !44450, !noundef !28 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = sub nsw i64 %i.b, %i.d
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_RINvYNtNtCs261H7cERR92_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_objectINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs9fPPV5zPXBl_5typst.exit.thread.i, label %_RINvYNtNtCs261H7cERR92_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_objectINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs9fPPV5zPXBl_5typst.exit.i, !prof !43

_RINvYNtNtCs261H7cERR92_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_objectINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs9fPPV5zPXBl_5typst.exit.thread.i: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44451)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !44452, !noalias !44453, !nonnull !28, !noundef !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store i8 125, ptr %i.j, align 1, !noalias !44452
  %i.k = add nuw i64 %i.d, 1
  store i64 %i.k, ptr %i.c, align 8, !alias.scope !44452, !noalias !44453
  br label %_RNvXs6_NtCs261H7cERR92_10serde_json3serINtB5_8CompoundINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_16CompactFormatterENtNtCs7PiwjADO7TO_10serde_core3ser12SerializeMap3endCs9fPPV5zPXBl_5typst.exit

_RINvYNtNtCs261H7cERR92_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_objectINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.b
  %i.l = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @323, i64 noundef 1) #63 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_RNvXs6_NtCs261H7cERR92_10serde_json3serINtB5_8CompoundINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_16CompactFormatterENtNtCs7PiwjADO7TO_10serde_core3ser12SerializeMap3endCs9fPPV5zPXBl_5typst.exit, label %bb.c, !prof !51

bb.c:                                             ; preds = %_RINvYNtNtCs261H7cERR92_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_objectINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs9fPPV5zPXBl_5typst.exit.i
  %i.m = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs261H7cERR92_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.l)
  br label %_RNvXs6_NtCs261H7cERR92_10serde_json3serINtB5_8CompoundINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_16CompactFormatterENtNtCs7PiwjADO7TO_10serde_core3ser12SerializeMap3endCs9fPPV5zPXBl_5typst.exit

_RNvXs6_NtCs261H7cERR92_10serde_json3serINtB5_8CompoundINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_16CompactFormatterENtNtCs7PiwjADO7TO_10serde_core3ser12SerializeMap3endCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.a, %_RINvYNtNtCs261H7cERR92_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_objectINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs9fPPV5zPXBl_5typst.exit.thread.i, %_RINvYNtNtCs261H7cERR92_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_objectINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs9fPPV5zPXBl_5typst.exit.i, %bb.c
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.m, %bb.c ], [ null, %_RINvYNtNtCs261H7cERR92_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_objectINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs9fPPV5zPXBl_5typst.exit.i ], [ null, %_RINvYNtNtCs261H7cERR92_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_objectINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs9fPPV5zPXBl_5typst.exit.thread.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCs9fPPV5zPXBl_5typst4argsNtB5_12CliArgumentsNtNtCsj1PC5XHMKi0_12clap_builder6derive14CommandFactory7command(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(776) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i197.i = alloca [16 x i8], align 8     ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i191.i = alloca [16 x i8], align 8     ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i178.i = alloca [16 x i8], align 8     ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i172.i = alloca [16 x i8], align 8     ; 4 uses
end_hunk_5
begin_hunk_6_@_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst:bb.a

_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i.us: ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i.us, %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit.thread35.us unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.us, !noalias !51072

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit.thread35.us: ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i.us
  store ptr null, ptr %i.a, align 8, !alias.scope !51077, !noalias !51072
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.us: ; preds = %.split.us, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit.thread35.us
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51082)
  br label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.us: ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i.us
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i

.split:                                           ; preds = %.split.peel.next, %bb.l
  %i.r = phi ptr [ %i.x, %bb.l ], [ %i.l, %.split.peel.next ] ; 5 uses
  %i.s = phi ptr [ %.sroa.8.sroa.0.0.copyload, %bb.l ], [ %.sroa.8.sroa.0.0.copyload.peel, %.split.peel.next ] ; 4 uses
  %i.t = phi ptr [ %i.z, %bb.l ], [ %i.n, %.split.peel.next ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51077)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51079)
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i

_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i: ; preds = %.split
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.v, ptr %i.c, align 8, !alias.scope !51080, !noalias !51070
  %.sroa.026.0.copyload = load ptr, ptr %i.s, align 8, !noalias !51081 ; 2 uses
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.0..sroa_idx, i64 24, i1 false), !noalias !51081
  %.not6.i = icmp eq ptr %.sroa.026.0.copyload, null
  br i1 %.not6.i, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i, label %.split52.us

_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i: ; preds = %.split, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit.thread35 unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.loopexit, !noalias !51072

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit.thread35: ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i
  store ptr null, ptr %i.a, align 8, !alias.scope !51077, !noalias !51072
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51083)
  %i.w = icmp eq ptr %i.r, %i.f
  br i1 %i.w, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit.thread, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit

common.resume:                                    ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i7, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.us-phi54, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i7 ], [ %lpad.phi60, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.loopexit: ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.loopexit.split-lp: ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.loopexit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.us
  %.us-phi54 = phi { ptr, i32 } [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.us ], [ %lpad.loopexit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.loopexit ], [ %lpad.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i.split.loopexit.split-lp ]
  store ptr null, ptr %i.a, align 8, !alias.scope !51077, !noalias !51072
  br label %common.resume

.split52.us:                                      ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i.peel, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i.us
  %.us-phi = phi ptr [ %.sroa.026.0.copyload.us, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i.us ], [ %.sroa.026.0.copyload.peel, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i.peel ], [ %.sroa.026.0.copyload, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628, i64 24, i1 false), !noalias !51077
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  store ptr %.us-phi, ptr %0, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.e

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit.thread35
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !alias.scope !51084, !noalias !51076
  %.sroa.0.0.copyload10 = load i64, ptr %i.r, align 8, !noalias !51084 ; 3 uses
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx11, align 8, !noalias !51084 ; 6 uses
  %.not1 = icmp eq i64 %.sroa.0.0.copyload10, -1
  br i1 %.not1, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit.thread, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit9, %.split52.us
  ret void

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx, align 8, !noalias !51084 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload) ]
  %i.y = icmp ult i64 %.sroa.8.sroa.5.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload, i64 %.sroa.8.sroa.5.0.copyload ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
          to label %bb.l unwind label %.loopexit

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.peel, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit.peel, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit.thread35, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.us
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51086)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !51086, !noalias !51085, !noundef !28
  %.not.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51088)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !51089, !noalias !51090, !nonnull !28, !noundef !28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !51089, !noalias !51090, !nonnull !28, !noundef !28 ; 4 uses
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i8, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i4

_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i4: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ah, ptr %i.ae, align 8, !alias.scope !51089, !noalias !51090
  %.sroa.030.0.copyload = load ptr, ptr %i.af, align 8, !noalias !51091 ; 2 uses
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632.0..sroa_idx, i64 24, i1 false), !noalias !51091
  %.not6.i6 = icmp eq ptr %.sroa.030.0.copyload, null
  br i1 %.not6.i6, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i8, label %bb.i

bb.h:                                             ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9fPPV5zPXBl_5typst.exit.thread
  store ptr null, ptr %0, align 8, !alias.scope !51085, !noalias !51086
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit9

bb.i:                                             ; preds = %bb.j, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i4
  %.sroa.030.0 = phi ptr [ null, %bb.j ], [ %.sroa.030.0.copyload, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i4 ]
  store ptr %.sroa.030.0, ptr %0, align 8, !noalias !51086
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632.0..sroa_idx33, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, i64 24, i1 false), !noalias !51086
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit9

_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i8: ; preds = %bb.g, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.i4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %bb.j unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i7, !noalias !51085

bb.j:                                             ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i8
  store ptr null, ptr %i.aa, align 8, !alias.scope !51086, !noalias !51085
  br label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEECs9fPPV5zPXBl_5typst.exit.i7: ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9fPPV5zPXBl_5typst.exit.thread.i8
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aa, align 8, !alias.scope !51086, !noalias !51085
  br label %common.resume

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9fPPV5zPXBl_5typst.exit9: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  br label %bb.e

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.lcssa = phi ptr [ %i.z, %.loopexit ], [ %i.n, %.loopexit.split-lp ]
  %.sroa.0.0.copyload10.lcssa = phi i64 [ %.sroa.0.0.copyload10, %.loopexit ], [ %.sroa.0.0.copyload10.peel, %.loopexit.split-lp ]
  %.sroa.8.sroa.0.0.copyload.lcssa = phi ptr [ %.sroa.8.sroa.0.0.copyload, %.loopexit ], [ %.sroa.8.sroa.0.0.copyload.peel, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi60 = phi { ptr, i32 } [ %lpad.loopexit58, %.loopexit ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp ]
  store ptr %.sroa.8.sroa.0.0.copyload.lcssa, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload.lcssa, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10.lcssa, ptr %.sroa.621.0..sroa_idx22, align 8
  store ptr %.lcssa, ptr %i.b, align 8
  br label %common.resume

bb.l:                                             ; preds = %bb.f
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10, ptr %.sroa.621.0..sroa_idx22, align 8
  store ptr %i.z, ptr %i.b, align 8
  br label %.split, !llvm.loop !51065
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_9FontStyleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !40, !noundef !28 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsl_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_9FontStyleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsl_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_9FontStyleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.2866, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtB5_16TypedValueParser9parse_refB1o_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(672) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 15 uses
  %i.h = alloca [80 x i8], align 8                ; 16 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.q = load i32, ptr %i.p, align 8, !noundef !28
  %i.r = and i32 %i.q, 2048
  %i.s = icmp ne i32 %i.r, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i1 [ %i.s, %bb.b ], [ false, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  %i.t = load i64, ptr %i.o, align 8, !range !33, !noundef !28
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !51159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !51159
  call void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !51159
  %i.v = load i64, ptr %i.m, align 8, !range !55, !noalias !51159, !noundef !28
  %.not.i = icmp eq i64 %i.v, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !51159
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !51159, !nonnull !28, !noundef !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !51159, !noundef !28 ; 7 uses
  %.not.i.i = icmp slt i64 %i.z, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread19.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51160
  %i.ab = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51160 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, %bb.f
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.f ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.z) #61, !noalias !51159
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread19.i: ; preds = %bb.i, %bb.g
  %i.ad = phi ptr [ %i.ab, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.g ]
  store i64 %i.z, ptr %i.n, align 8, !noalias !51159
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !51159
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !51159
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %i.x, i64 %i.z, i1 false), !noalias !51159
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread19.i

bb.j:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread19.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !51159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !51159
  invoke fastcc void @_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtB7_16TypedValueParser9parse_refs_0B1q_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.m unwind label %bb.k, !noalias !51159

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51162)
  %.val.i.i.i = load i64, ptr %i.n, align 8, !range !37, !alias.scope !51163, !noalias !51159, !noundef !28 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.af, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !51163, !noalias !51159, !nonnull !28, !noundef !28
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51164
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !51159, !nonnull !28, !noundef !28 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !51159, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !51159
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !51165
  store i64 0, ptr %i.j, align 8, !noalias !51165
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !51165
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !51165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !51165
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1610612768, ptr %i.al, align 8, !noalias !51165
  store ptr %i.j, ptr %i.i, align 8, !noalias !51165
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @712, ptr %i.am, align 8, !noalias !51165
  %i.an = invoke noundef zeroext i1 @_RNvXs9_NtNtCsj1PC5XHMKi0_12clap_builder7builder3argNtB5_3ArgNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.q unwind label %bb.o, !noalias !51166

bb.o:                                             ; preds = %bb.r, %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51167)
  call void @llvm.experimental.noalias.scope.decl(metadata !51168)
  %.val.i.i.i.i = load i64, ptr %i.j, align 8, !range !37, !alias.scope !51169, !noalias !51165, !noundef !28 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ap, label %.body.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !51169, !noalias !51165, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51170
  br label %.body.thread.i

bb.q:                                             ; preds = %bb.n
  br i1 %i.an, label %bb.r, label %bb.v, !prof !38

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc.i.i unwind label %bb.o, !noalias !51166

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51171)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51172
  %i.aq = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51172 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.t, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #61
          to label %.noexc.i unwind label %.body.thread29.i, !noalias !51159

.body.thread29.i:                                 ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.noexc.i:                                         ; preds = %bb.t
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i: ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aq, i8 46, i64 3, i1 false), !noalias !51173
  store i64 3, ptr %i.k, align 8, !alias.scope !51171, !noalias !51159
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !51171, !noalias !51159
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !51171, !noalias !51159
  br label %bb.u

.body.i:                                          ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i

bb.u:                                             ; preds = %bb.v, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i
  %i.au = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.w unwind label %.body.i, !noalias !51159

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !51159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !51165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51165
end_hunk_6
begin_hunk_7_@_RNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB5_16TypedValueParser9parse_refB1o_:bb.a
_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i: ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ap, i8 46, i64 3, i1 false), !noalias !51401
  store i64 3, ptr %i.j, align 8, !alias.scope !51399, !noalias !51387
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !51399, !noalias !51387
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !51399, !noalias !51387
  br label %bb.u

.body.i:                                          ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i

bb.u:                                             ; preds = %bb.v, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i
  %i.at = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.w unwind label %.body.i, !noalias !51387

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !51387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !51393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !51393
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !51387
  call void @llvm.experimental.noalias.scope.decl(metadata !51402)
  call void @llvm.experimental.noalias.scope.decl(metadata !51403)
  %i.au = icmp eq i64 %i.aj, 0
  br i1 %i.au, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.aw = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51404)
  call void @llvm.experimental.noalias.scope.decl(metadata !51405)
  %.val.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !range !37, !alias.scope !51406, !noalias !51407, !noundef !28 ; 2 uses
  %i.ax = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !51406, !noalias !51407, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51408
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.az = icmp eq i64 %i.aw, %i.aj
  br i1 %i.az, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i, %bb.w
  %.val2.i.i = load i64, ptr %i.k, align 8, !range !37, !alias.scope !51402, !noalias !51387, !noundef !28 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ba, label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit, label %bb.y

bb.y:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i
  %i.bb = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !51407
  br label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i: ; preds = %bb.z, %.body.thread.i, %.body.i
  %eh.lpad-body27.i = phi { ptr, i32 } [ %i.as, %.body.i ], [ %eh.lpad-body28.i, %.body.thread.i ], [ %eh.lpad-body28.i, %bb.z ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #62, !noalias !51387
  br label %common.resume

.body.thread.i:                                   ; preds = %.body.thread29.i, %bb.p, %bb.o
  %eh.lpad-body28.i = phi { ptr, i32 } [ %i.ar, %.body.thread29.i ], [ %i.an, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51409)
  call void @llvm.experimental.noalias.scope.decl(metadata !51410)
  %.val.i.i10.i = load i64, ptr %i.m, align 8, !range !37, !alias.scope !51411, !noalias !51387, !noundef !28 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i10.i, 0
  br i1 %i.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i, label %bb.z

bb.z:                                             ; preds = %.body.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i11.i = load ptr, ptr %i.bd, align 8, !alias.scope !51411, !noalias !51387, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i, i64 noundef %.val.i.i10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51412
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i

common.resume:                                    ; preds = %bb.af, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i, %bb.k, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.bk, %bb.aa ], [ %eh.lpad-body27.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i ], [ %i.ad, %bb.k ], [ %eh.lpad-body26.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i ], [ %i.bu, %bb.af ], [ %i.bu, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51387
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.be, align 8
  br label %bb.av

_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i: ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !28 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 5 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 5 uses
  %.sroa.111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51413
  store i64 0, ptr %i.g, align 8, !noalias !51413
  store ptr @393, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51413
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51413
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51413
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51413
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51413
  %i.bj = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i unwind label %bb.aa, !noalias !51413

bb.aa:                                            ; preds = %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4, %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3, %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2, %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1, %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g) #62, !noalias !51413
  br label %common.resume

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i: ; preds = %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51413
  br i1 %i.bj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserBQ_ENtB2q_16TypedValueParser9parse_refs1_0EBU_.exit, label %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1

_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51413
  store i64 0, ptr %i.g, align 8, !noalias !51413
  store ptr @394, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51413
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51413
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51413
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51413
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51413
  %i.bl = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1 unwind label %bb.aa, !noalias !51413

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1: ; preds = %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51413
  br i1 %i.bl, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserBQ_ENtB2q_16TypedValueParser9parse_refs1_0EBU_.exit, label %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2

_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51413
  store i64 0, ptr %i.g, align 8, !noalias !51413
  store ptr @395, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51413
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51413
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51413
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51413
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51413
  %i.bm = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2 unwind label %bb.aa, !noalias !51413

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2: ; preds = %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51413
  br i1 %i.bm, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserBQ_ENtB2q_16TypedValueParser9parse_refs1_0EBU_.exit, label %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3

_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51413
  store i64 0, ptr %i.g, align 8, !noalias !51413
  store ptr @248, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51413
  store i64 4, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51413
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51413
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51413
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51413
  %i.bn = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.3 unwind label %bb.aa, !noalias !51413

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.3: ; preds = %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51413
  br i1 %i.bn, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserBQ_ENtB2q_16TypedValueParser9parse_refs1_0EBU_.exit, label %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4

_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51413
  store i64 0, ptr %i.g, align 8, !noalias !51413
  store ptr @249, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51413
  store i64 6, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51413
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51413
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51413
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51413
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51413
  %i.bo = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.4 unwind label %bb.aa, !noalias !51413

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.4: ; preds = %_RNvXs1M_NtCs9fPPV5zPXBl_5typst4argsNtB6_12OutputFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51413
  br i1 %i.bo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserBQ_ENtB2q_16TypedValueParser9parse_refs1_0EBU_.exit, label %bb.ab

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserBQ_ENtB2q_16TypedValueParser9parse_refs1_0EBU_.exit: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.4, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.3, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i
  %.idx.lcssa18 = phi i64 [ 0, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i ], [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1 ], [ 2, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2 ], [ 3, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.3 ], [ 4, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.4 ]
  %.ptr.le = getelementptr inbounds nuw i8, ptr @808, i64 %.idx.lcssa18
  %.val = load i8, ptr %.ptr.le, align 1, !range !120, !noundef !28
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %i.bp, align 1
  br label %bb.av

bb.ab:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !51414
  %.not.i.i12 = icmp slt i64 %i.bi, 0
  br i1 %.not.i.i12, label %bb.ad, label %bb.ac, !prof !61

bb.ac:                                            ; preds = %bb.ab
  %i.bq = icmp eq i64 %i.bi, 0                    ; 3 uses
  br i1 %i.bq, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13: ; preds = %bb.ac
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51415
  %i.br = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51415 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13, %bb.ab
  %.sroa.4.0.ph.i35 = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13 ], [ 0, %bb.ab ]
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i35, i64 %i.bi) #61, !noalias !51414
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i: ; preds = %bb.ae, %bb.ac
  %i.bt = phi ptr [ %i.br, %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ac ] ; 3 uses
  store i64 %i.bi, ptr %i.f, align 8, !noalias !51414
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bt, ptr %.sroa.4.0..sroa_idx.i14, align 8, !noalias !51414
  %.sroa.6.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bi, ptr %.sroa.6.0..sroa_idx.i15, align 8, !noalias !51414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !51414
  invoke fastcc void @_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs_0B1q_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ah unwind label %bb.af, !noalias !51414

bb.ae:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %i.bg, i64 %i.bi, i1 false), !noalias !51414
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i

bb.af:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bq, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51416
  br label %common.resume

bb.ah:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !51414, !nonnull !28, !noundef !28 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noalias !51414, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !51414
  br i1 %.not, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51417
  store i64 0, ptr %i.c, align 8, !noalias !51417
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !51417
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !51417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51417
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.bz, align 8, !noalias !51417
  store ptr %i.c, ptr %i.b, align 8, !noalias !51417
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @712, ptr %i.ca, align 8, !noalias !51417
  %i.cb = invoke noundef zeroext i1 @_RNvXs9_NtNtCsj1PC5XHMKi0_12clap_builder7builder3argNtB5_3ArgNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.al unwind label %bb.aj, !noalias !51418

bb.aj:                                            ; preds = %bb.am, %bb.ai
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51419)
  call void @llvm.experimental.noalias.scope.decl(metadata !51420)
  %.val.i.i.i.i20 = load i64, ptr %i.c, align 8, !range !37, !alias.scope !51421, !noalias !51417, !noundef !28 ; 2 uses
  %i.cd = icmp eq i64 %.val.i.i.i.i20, 0
  br i1 %i.cd, label %.body.thread.i22, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val1.i.i.i.i21 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !alias.scope !51421, !noalias !51417, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i21, i64 noundef %.val.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51422
  br label %.body.thread.i22

bb.al:                                            ; preds = %bb.ai
  br i1 %i.cb, label %bb.am, label %bb.aq, !prof !38

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc.i.i32 unwind label %bb.aj, !noalias !51418

.noexc.i.i32:                                     ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !51423)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51424
  %i.ce = call noundef dereferenceable_or_null(3) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51424 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.ao, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #61
          to label %.noexc.i34 unwind label %.body.thread28.i, !noalias !51414

.body.thread28.i:                                 ; preds = %bb.ao
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i22

.noexc.i34:                                       ; preds = %bb.ao
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i: ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ce, i8 46, i64 3, i1 false), !noalias !51425
  store i64 3, ptr %i.d, align 8, !alias.scope !51423, !noalias !51414
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !51423, !noalias !51414
  %.sroa.6.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i33, align 8, !alias.scope !51423, !noalias !51414
  br label %bb.ap

.body.i24:                                        ; preds = %bb.ap
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i

bb.ap:                                            ; preds = %bb.aq, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i
  %i.ci = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bw, i64 noundef %i.by, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.ar unwind label %.body.i24, !noalias !51414

bb.aq:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !51414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51417
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !51414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !51414
  call void @llvm.experimental.noalias.scope.decl(metadata !51426)
  call void @llvm.experimental.noalias.scope.decl(metadata !51427)
  %i.cj = icmp eq i64 %i.by, 0
  br i1 %i.cj, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %bb.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29
  %.sroa.0.010.i.i.i.i26 = phi i64 [ %i.cl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29 ], [ 0, %bb.ar ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %.sroa.0.010.i.i.i.i26 ; 2 uses
  %i.cl = add nuw nsw i64 %.sroa.0.010.i.i.i.i26, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51428)
  call void @llvm.experimental.noalias.scope.decl(metadata !51429)
  %.val.i.i.i.i.i.i27 = load i64, ptr %i.ck, align 8, !range !37, !alias.scope !51430, !noalias !51431, !noundef !28 ; 2 uses
  %i.cm = icmp eq i64 %.val.i.i.i.i.i.i27, 0
  br i1 %i.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.val1.i.i.i.i.i.i28 = load ptr, ptr %i.cn, align 8, !alias.scope !51430, !noalias !51431, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i28, i64 noundef %.val.i.i.i.i.i.i27, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51432
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29: ; preds = %bb.as, %.lr.ph.i.i.i.i25
  %i.co = icmp eq i64 %i.cl, %i.by
  br i1 %i.co, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, label %.lr.ph.i.i.i.i25

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29, %bb.ar
  %.val2.i.i31 = load i64, ptr %i.e, align 8, !range !37, !alias.scope !51426, !noalias !51414, !noundef !28 ; 2 uses
  %i.cp = icmp eq i64 %.val2.i.i31, 0
  br i1 %i.cp, label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit, label %bb.at

bb.at:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30
  %i.cq = mul nuw i64 %.val2.i.i31, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !51431
  br label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i: ; preds = %bb.au, %.body.thread.i22, %.body.i24
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.ch, %.body.i24 ], [ %eh.lpad-body27.i23, %.body.thread.i22 ], [ %eh.lpad-body27.i23, %bb.au ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62, !noalias !51414
  br label %common.resume

.body.thread.i22:                                 ; preds = %.body.thread28.i, %bb.ak, %bb.aj
  %eh.lpad-body27.i23 = phi { ptr, i32 } [ %i.cg, %.body.thread28.i ], [ %i.cc, %bb.ak ], [ %i.cc, %bb.aj ] ; 2 uses
  br i1 %i.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i, label %bb.au

bb.au:                                            ; preds = %.body.thread.i22
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51433
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !51414
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.cr, align 8
  br label %bb.av

bb.av:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserBQ_ENtB2q_16TypedValueParser9parse_refs1_0EBU_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit ], [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserBQ_ENtB2q_16TypedValueParser9parse_refs1_0EBU_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
end_hunk_7
begin_hunk_8_@_RNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB5_16TypedValueParser9parse_refB1o_:bb.a
  br i1 %i.ao, label %.body.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !51853, !noalias !51849, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51854
  br label %.body.thread.i

bb.q:                                             ; preds = %bb.n
  br i1 %i.am, label %bb.r, label %bb.v, !prof !38

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc.i.i unwind label %bb.o, !noalias !51850

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51855)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51856
  %i.ap = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51856 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.t, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #61
          to label %.noexc.i unwind label %.body.thread29.i, !noalias !51843

.body.thread29.i:                                 ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.noexc.i:                                         ; preds = %bb.t
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i: ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ap, i8 46, i64 3, i1 false), !noalias !51857
  store i64 3, ptr %i.j, align 8, !alias.scope !51855, !noalias !51843
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !51855, !noalias !51843
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !51855, !noalias !51843
  br label %bb.u

.body.i:                                          ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i

bb.u:                                             ; preds = %bb.v, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i
  %i.at = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.w unwind label %.body.i, !noalias !51843

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !51843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !51849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !51849
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !51843
  call void @llvm.experimental.noalias.scope.decl(metadata !51858)
  call void @llvm.experimental.noalias.scope.decl(metadata !51859)
  %i.au = icmp eq i64 %i.aj, 0
  br i1 %i.au, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.aw = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51860)
  call void @llvm.experimental.noalias.scope.decl(metadata !51861)
  %.val.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !range !37, !alias.scope !51862, !noalias !51863, !noundef !28 ; 2 uses
  %i.ax = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !51862, !noalias !51863, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51864
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.az = icmp eq i64 %i.aw, %i.aj
  br i1 %i.az, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i, %bb.w
  %.val2.i.i = load i64, ptr %i.k, align 8, !range !37, !alias.scope !51858, !noalias !51843, !noundef !28 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ba, label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs0_0B1q_.exit, label %bb.y

bb.y:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i
  %i.bb = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !51863
  br label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs0_0B1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i: ; preds = %bb.z, %.body.thread.i, %.body.i
  %eh.lpad-body27.i = phi { ptr, i32 } [ %i.as, %.body.i ], [ %eh.lpad-body28.i, %.body.thread.i ], [ %eh.lpad-body28.i, %bb.z ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #62, !noalias !51843
  br label %common.resume

.body.thread.i:                                   ; preds = %.body.thread29.i, %bb.p, %bb.o
  %eh.lpad-body28.i = phi { ptr, i32 } [ %i.ar, %.body.thread29.i ], [ %i.an, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51865)
  call void @llvm.experimental.noalias.scope.decl(metadata !51866)
  %.val.i.i10.i = load i64, ptr %i.m, align 8, !range !37, !alias.scope !51867, !noalias !51843, !noundef !28 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i10.i, 0
  br i1 %i.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i, label %bb.z

bb.z:                                             ; preds = %.body.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i11.i = load ptr, ptr %i.bd, align 8, !alias.scope !51867, !noalias !51843, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i, i64 noundef %.val.i.i10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51868
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i

common.resume:                                    ; preds = %bb.af, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i, %bb.k, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.bk, %bb.aa ], [ %eh.lpad-body27.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i ], [ %i.ad, %bb.k ], [ %eh.lpad-body26.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i ], [ %i.bs, %bb.af ], [ %i.bs, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs0_0B1q_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51843
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.be, align 8
  br label %bb.av

_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i: ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !28 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %.sroa.111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51869
  store i64 0, ptr %i.g, align 8, !noalias !51869
  store ptr @248, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51869
  store i64 4, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51869
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51869
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51869
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51869
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51869
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51869
  %i.bj = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i unwind label %bb.aa, !noalias !51869

bb.aa:                                            ; preds = %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2, %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1, %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g) #62, !noalias !51869
  br label %common.resume

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i: ; preds = %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51869
  br i1 %i.bj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBU_.exit, label %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1

_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51869
  store i64 0, ptr %i.g, align 8, !noalias !51869
  store ptr @249, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51869
  store i64 6, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51869
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51869
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51869
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51869
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51869
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51869
  %i.bl = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1 unwind label %bb.aa, !noalias !51869

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1: ; preds = %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51869
  br i1 %i.bl, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBU_.exit, label %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2

_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51869
  store i64 0, ptr %i.g, align 8, !noalias !51869
  store ptr @250, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51869
  store i64 11, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51869
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51869
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51869
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51869
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51869
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51869
  %i.bm = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2 unwind label %bb.aa, !noalias !51869

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2: ; preds = %_RNvXs2t_NtCs9fPPV5zPXBl_5typst4argsNtB6_7FeatureNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51869
  br i1 %i.bm, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBU_.exit, label %bb.ab

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBU_.exit: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i
  %.idx.lcssa18 = phi i64 [ 0, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i ], [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1 ], [ 2, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2 ]
  %.ptr.le = getelementptr inbounds nuw i8, ptr @871, i64 %.idx.lcssa18
  %.val = load i8, ptr %.ptr.le, align 1, !range !40, !noundef !28
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %i.bn, align 1
  br label %bb.av

bb.ab:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !51870
  %.not.i.i12 = icmp slt i64 %i.bi, 0
  br i1 %.not.i.i12, label %bb.ad, label %bb.ac, !prof !61

bb.ac:                                            ; preds = %bb.ab
  %i.bo = icmp eq i64 %i.bi, 0                    ; 3 uses
  br i1 %i.bo, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13: ; preds = %bb.ac
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51871
  %i.bp = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51871 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13, %bb.ab
  %.sroa.4.0.ph.i35 = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13 ], [ 0, %bb.ab ]
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i35, i64 %i.bi) #61, !noalias !51870
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i: ; preds = %bb.ae, %bb.ac
  %i.br = phi ptr [ %i.bp, %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ac ] ; 3 uses
  store i64 %i.bi, ptr %i.f, align 8, !noalias !51870
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i14, align 8, !noalias !51870
  %.sroa.6.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bi, ptr %.sroa.6.0..sroa_idx.i15, align 8, !noalias !51870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !51870
  invoke fastcc void @_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs_0B1q_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ah unwind label %bb.af, !noalias !51870

bb.ae:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %i.bg, i64 %i.bi, i1 false), !noalias !51870
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i

bb.af:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bo, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.br, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51872
  br label %common.resume

bb.ah:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !51870, !nonnull !28, !noundef !28 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !51870, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !51870
  br i1 %.not, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51873
  store i64 0, ptr %i.c, align 8, !noalias !51873
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !51873
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !51873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51873
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.bx, align 8, !noalias !51873
  store ptr %i.c, ptr %i.b, align 8, !noalias !51873
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @712, ptr %i.by, align 8, !noalias !51873
  %i.bz = invoke noundef zeroext i1 @_RNvXs9_NtNtCsj1PC5XHMKi0_12clap_builder7builder3argNtB5_3ArgNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.al unwind label %bb.aj, !noalias !51874

bb.aj:                                            ; preds = %bb.am, %bb.ai
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51875)
  call void @llvm.experimental.noalias.scope.decl(metadata !51876)
  %.val.i.i.i.i20 = load i64, ptr %i.c, align 8, !range !37, !alias.scope !51877, !noalias !51873, !noundef !28 ; 2 uses
  %i.cb = icmp eq i64 %.val.i.i.i.i20, 0
  br i1 %i.cb, label %.body.thread.i22, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val1.i.i.i.i21 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !alias.scope !51877, !noalias !51873, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i21, i64 noundef %.val.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51878
  br label %.body.thread.i22

bb.al:                                            ; preds = %bb.ai
  br i1 %i.bz, label %bb.am, label %bb.aq, !prof !38

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc.i.i32 unwind label %bb.aj, !noalias !51874

.noexc.i.i32:                                     ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !51879)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51880
  %i.cc = call noundef dereferenceable_or_null(3) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51880 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ao, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #61
          to label %.noexc.i34 unwind label %.body.thread28.i, !noalias !51870

.body.thread28.i:                                 ; preds = %bb.ao
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i22

.noexc.i34:                                       ; preds = %bb.ao
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i: ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cc, i8 46, i64 3, i1 false), !noalias !51881
  store i64 3, ptr %i.d, align 8, !alias.scope !51879, !noalias !51870
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !51879, !noalias !51870
  %.sroa.6.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i33, align 8, !alias.scope !51879, !noalias !51870
  br label %bb.ap

.body.i24:                                        ; preds = %bb.ap
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i

bb.ap:                                            ; preds = %bb.aq, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i
  %i.cg = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bu, i64 noundef %i.bw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.ar unwind label %.body.i24, !noalias !51870

bb.aq:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !51870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51873
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !51870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !51870
  call void @llvm.experimental.noalias.scope.decl(metadata !51882)
  call void @llvm.experimental.noalias.scope.decl(metadata !51883)
  %i.ch = icmp eq i64 %i.bw, 0
  br i1 %i.ch, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %bb.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29
  %.sroa.0.010.i.i.i.i26 = phi i64 [ %i.cj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29 ], [ 0, %bb.ar ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.sroa.0.010.i.i.i.i26 ; 2 uses
  %i.cj = add nuw nsw i64 %.sroa.0.010.i.i.i.i26, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51884)
  call void @llvm.experimental.noalias.scope.decl(metadata !51885)
  %.val.i.i.i.i.i.i27 = load i64, ptr %i.ci, align 8, !range !37, !alias.scope !51886, !noalias !51887, !noundef !28 ; 2 uses
  %i.ck = icmp eq i64 %.val.i.i.i.i.i.i27, 0
  br i1 %i.ck, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.val1.i.i.i.i.i.i28 = load ptr, ptr %i.cl, align 8, !alias.scope !51886, !noalias !51887, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i28, i64 noundef %.val.i.i.i.i.i.i27, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51888
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29: ; preds = %bb.as, %.lr.ph.i.i.i.i25
  %i.cm = icmp eq i64 %i.cj, %i.bw
  br i1 %i.cm, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, label %.lr.ph.i.i.i.i25

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29, %bb.ar
  %.val2.i.i31 = load i64, ptr %i.e, align 8, !range !37, !alias.scope !51882, !noalias !51870, !noundef !28 ; 2 uses
  %i.cn = icmp eq i64 %.val2.i.i31, 0
  br i1 %i.cn, label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs2_0B1q_.exit, label %bb.at

bb.at:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30
  %i.co = mul nuw i64 %.val2.i.i31, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !51887
  br label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs2_0B1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i: ; preds = %bb.au, %.body.thread.i22, %.body.i24
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.cf, %.body.i24 ], [ %eh.lpad-body27.i23, %.body.thread.i22 ], [ %eh.lpad-body27.i23, %bb.au ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62, !noalias !51870
  br label %common.resume

.body.thread.i22:                                 ; preds = %.body.thread28.i, %bb.ak, %bb.aj
  %eh.lpad-body27.i23 = phi { ptr, i32 } [ %i.ce, %.body.thread28.i ], [ %i.ca, %bb.ak ], [ %i.ca, %bb.aj ] ; 2 uses
  br i1 %i.bo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i, label %bb.au

bb.au:                                            ; preds = %.body.thread.i22
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.br, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51889
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs2_0B1q_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !51870
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.cp, align 8
  br label %bb.av

bb.av:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs0_0B1q_.exit, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs2_0B1q_.exit, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBU_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs0_0B1q_.exit ], [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtB7_16TypedValueParser9parse_refs2_0B1q_.exit ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBU_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
end_hunk_8
begin_hunk_9_@_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_:bb.a
  %i.o = icmp eq ptr %i.q, %i.m
  br i1 %i.o, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph10

.lr.ph10:                                         ; preds = %.loopexit, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %.promoted.i.i, %.loopexit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %1, align 8, !alias.scope !52850, !noalias !52851
  %.val.i.i = load i8, ptr %i.p, align 1, !range !40, !noalias !52860, !noundef !28
  tail call fastcc void @_RNvXs1W_NtCs9fPPV5zPXBl_5typst4argsNtB6_10DepsFormatNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i8 %.val.i.i), !noalias !52850
  %i.r = load i64, ptr %0, align 8, !range !32, !alias.scope !52851, !noalias !52850, !noundef !28
  %.not.i.i1 = icmp eq i64 %i.r, 2
  br i1 %.not.i.i1, label %bb.e, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split: ; preds = %bb.c, %bb.e, %bb.b, %.loopexit
  store i64 2, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit: ; preds = %.lr.ph10, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52869)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB37_15EnumValueParserB2i_ENtB37_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52871)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !52872, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !52872 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i.i, %i.d
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB37_15EnumValueParserB2i_ENtB37_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB37_15EnumValueParserB2i_ENtB37_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i2 = phi i64 [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !52872
  %.val.i.i.i = load i8, ptr %i.h, align 1, !range !118, !noalias !52873, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52873
  call fastcc void @_RNvXs2C_NtCs9fPPV5zPXBl_5typst4argsNtB6_11PdfStandardNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %i.b, i8 %.val.i.i.i), !noalias !52873
  %i.j = load i64, ptr %i.b, align 8, !range !32, !noalias !52873, !noundef !28
  %.not.i.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !52873
  store i64 %.sroa.01.0.i.i.i2, ptr %i.a, align 8, !noalias !52873
  %i.k = add i64 %.sroa.01.0.i.i.i2, -1
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.e), !noalias !52873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52873
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i.i2, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52873
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i, 0
  br i1 %i.l, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB37_15EnumValueParserB2i_ENtB37_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB37_15EnumValueParserB2i_ENtB37_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i, %bb.c, %bb.b, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ 0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52891)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !52892, !noalias !52893
  %.promoted.i.i.pre = load ptr, ptr %1, align 8, !alias.scope !52892, !noalias !52893
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52895)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !52896, !nonnull !28, !noundef !28 ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !52896 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i.i.i, %i.d
  br i1 %i.f, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i.i9 = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 4 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !52896
  %.val.i.i.i.i = load i8, ptr %i.h, align 1, !range !118, !noalias !52897, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52897
  call fastcc void @_RNvXs2C_NtCs9fPPV5zPXBl_5typst4argsNtB6_11PdfStandardNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %i.b, i8 %.val.i.i.i.i), !noalias !52897
  %i.j = load i64, ptr %i.b, align 8, !range !32, !noalias !52897, !noundef !28
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !52897
  store i64 %.sroa.01.0.i.i.i.i9, ptr %i.a, align 8, !noalias !52897
  %i.k = add i64 %.sroa.01.0.i.i.i.i9, -1
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.e), !noalias !52897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52897
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i.i.i9, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52897
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i.i, 0
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i, %..loopexit_crit_edge
  %.promoted.i.i = phi ptr [ %.promoted.i.i.pre, %..loopexit_crit_edge ], [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i ] ; 2 uses
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.d, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB36_ENCNvXso_NtB1Z_12value_parserINtB4b_15EnumValueParserB1f_ENtB4b_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB43_ENtB5L_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52901)
  %i.n = icmp eq ptr %.promoted.i.i, %i.m
  br i1 %i.n, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.o = icmp eq ptr %i.q, %i.m
  br i1 %i.o, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph10

.lr.ph10:                                         ; preds = %.loopexit, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %.promoted.i.i, %.loopexit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %1, align 8, !alias.scope !52892, !noalias !52893
  %.val.i.i = load i8, ptr %i.p, align 1, !range !118, !noalias !52902, !noundef !28
  tail call fastcc void @_RNvXs2C_NtCs9fPPV5zPXBl_5typst4argsNtB6_11PdfStandardNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i8 %.val.i.i), !noalias !52892
  %i.r = load i64, ptr %0, align 8, !range !32, !alias.scope !52893, !noalias !52892, !noundef !28
  %.not.i.i1 = icmp eq i64 %i.r, 2
  br i1 %.not.i.i1, label %bb.e, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split: ; preds = %bb.c, %bb.e, %bb.b, %.loopexit
  store i64 2, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit: ; preds = %.lr.ph10, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52911)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB38_15EnumValueParserB2i_ENtB38_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52913)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !52914, !nonnull !28, !noundef !28
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !52914
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.119.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %switch.lookup ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB38_15EnumValueParserB2i_ENtB38_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !52914
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !120, !noalias !52915, !noundef !28 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2869, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2870, i64 %i.i
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext = zext i8 %switch.load4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52915
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !52915
  store i64 0, ptr %i.d, align 8, !noalias !52915
  store ptr %switch.load, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !52915
  store i64 %switch.ext, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !52915
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !52915
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !noalias !52915
  store i64 0, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !52915
  store i64 -1, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !52915
  store i8 0, ptr %.sroa.119.0..sroa_idx.i.i.i.i, align 8, !noalias !52915
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.d), !noalias !52915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52915
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB38_15EnumValueParserB2i_ENtB38_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB38_15EnumValueParserB2i_ENtB38_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %bb.c, %switch.lookup, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %switch.lookup ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52939)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !52940, !noalias !52941
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52943)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !52944, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.75.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.97.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.119.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.j, %switch.lookup ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !52944
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !120, !noalias !52945, !noundef !28 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2869, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep12 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2870, i64 %i.i
  %switch.load13 = load i8, ptr %switch.gep12, align 1
  %switch.ext = zext i8 %switch.load13 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52945
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !52945
  store i64 0, ptr %i.d, align 8, !noalias !52945
  store ptr %switch.load, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52945
  store i64 %switch.ext, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52945
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52945
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.75.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52945
  store i64 0, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52945
  store i64 -1, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52945
  store i8 0, ptr %.sroa.119.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52945
  %i.j = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.d), !noalias !52945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52945
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit: ; preds = %bb.c
  store i64 2, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserB1A_ENtB2q_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

.loopexit:                                        ; preds = %switch.lookup, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre5, %..loopexit_crit_edge ], [ %i.c, %switch.lookup ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %switch.lookup ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52949)
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.d, label %switch.lookup14

switch.lookup14:                                  ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.o, ptr %1, align 8, !alias.scope !52940, !noalias !52941
  %.val.i.i = load i8, ptr %i.m, align 1, !range !120, !noalias !52950, !noundef !28 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !52951, !noalias !52940
  %i.p = zext nneg i8 %.val.i.i to i64
  %switch.gep15 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2869, i64 %i.p
  %switch.load16 = load ptr, ptr %switch.gep15, align 8
  %i.q = zext nneg i8 %.val.i.i to i64
  %switch.gep17 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2870, i64 %i.q
  %switch.load18 = load i8, ptr %switch.gep17, align 1
  %switch.ext19 = zext i8 %switch.load18 to i64
  %.sroa.101.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %switch.load16, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i1, align 8, !alias.scope !52951, !noalias !52940
  store i64 %switch.ext19, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !52951, !noalias !52940
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !52951, !noalias !52940
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !52951, !noalias !52940
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !52951, !noalias !52940
  store i64 -1, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !52951, !noalias !52940
  store i8 0, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !52951, !noalias !52940
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserB1A_ENtB2q_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

bb.d:                                             ; preds = %.loopexit
  store i64 2, ptr %0, align 8, !alias.scope !52941, !noalias !52940
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserB1A_ENtB2q_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2q_15EnumValueParserB1A_ENtB2q_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit: ; preds = %bb.d, %switch.lookup14, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1u_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1u_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52960)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB3c_15EnumValueParserB2i_ENtB3c_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52962)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !52963, !nonnull !28, !noundef !28
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !52963
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.119.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB3c_15EnumValueParserB2i_ENtB3c_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !52963
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !53, !noalias !52964, !noundef !28
  %i.h = trunc nuw i8 %.val.i.i.i to i1
  %spec.select.i.i.i.i.i.i = select i1 %i.h, ptr @1037, ptr @1036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52964
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !52964
  store i64 0, ptr %i.d, align 8, !noalias !52964
  store ptr %spec.select.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !52964
  store i64 5, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !52964
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !52964
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !noalias !52964
  store i64 0, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !52964
  store i64 -1, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !52964
  store i8 0, ptr %.sroa.119.0..sroa_idx.i.i.i.i, align 8, !noalias !52964
  %i.i = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.d), !noalias !52964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52964
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB3c_15EnumValueParserB2i_ENtB3c_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB3c_15EnumValueParserB2i_ENtB3c_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1u_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52988)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !52989, !noalias !52990
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52992)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !52993, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.75.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.97.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.119.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.i, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1u_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !52993
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !53, !noalias !52994, !noundef !28
  %i.h = trunc nuw i8 %.val.i.i.i.i to i1
  %spec.select.i.i.i.i.i.i.i = select i1 %i.h, ptr @1037, ptr @1036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52994
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !52994
  store i64 0, ptr %i.d, align 8, !noalias !52994
  store ptr %spec.select.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52994
  store i64 5, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52994
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52994
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.75.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52994
  store i64 0, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52994
  store i64 -1, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52994
  store i8 0, ptr %.sroa.119.0..sroa_idx.i.i.i.i.i, align 8, !noalias !52994
  %i.i = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.d), !noalias !52994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52994
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.k = phi ptr [ %.pre3, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.l = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %bb.d ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52998)
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1u_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.n, ptr %1, align 8, !alias.scope !52989, !noalias !52990
  %.val.i.i = load i8, ptr %i.l, align 1, !range !53, !noalias !52999, !noundef !28
  %i.o = trunc nuw i8 %.val.i.i to i1
  %spec.select.i.i.i.i.i = select i1 %i.o, ptr @1037, ptr @1036
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !53000, !noalias !52989
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %i.q, align 8, !alias.scope !53000, !noalias !52989
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.r, align 8, !alias.scope !53000, !noalias !52989
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !53000, !noalias !52989
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.t, align 8, !alias.scope !53000, !noalias !52989
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.u, align 8, !alias.scope !53000, !noalias !52989
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.v, align 8, !alias.scope !53000, !noalias !52989
  br label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1u_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1u_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit: ; preds = %bb.c, %bb.e, %.loopexit
  %storemerge = phi i64 [ 2, %.loopexit ], [ 0, %bb.e ], [ 2, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1u_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53009)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB3f_15EnumValueParserB2i_ENtB3f_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53011)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !53012, !nonnull !28, !noundef !28
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !53012
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
end_hunk_9
begin_hunk_10_@_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1u_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_:bb.a
  store ptr %spec.select.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !53049, !noalias !53038
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %i.q, align 8, !alias.scope !53049, !noalias !53038
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.r, align 8, !alias.scope !53049, !noalias !53038
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !53049, !noalias !53038
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.t, align 8, !alias.scope !53049, !noalias !53038
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.u, align 8, !alias.scope !53049, !noalias !53038
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.v, align 8, !alias.scope !53049, !noalias !53038
  br label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1u_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1u_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit: ; preds = %bb.c, %bb.e, %.loopexit
  %storemerge = phi i64 [ 2, %.loopexit ], [ 0, %bb.e ], [ 2, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2d_15EnumValueParserB1u_ENtB2d_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53058)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB31_15EnumValueParserB2i_ENtB31_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53060)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !53061, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !53061 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i.i, %i.d
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB31_15EnumValueParserB2i_ENtB31_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB31_15EnumValueParserB2i_ENtB31_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i2 = phi i64 [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !53061
  %.val.i.i.i = load i8, ptr %i.h, align 1, !range !40, !noalias !53062, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53062
  call fastcc void @_RNvXs28_NtCs9fPPV5zPXBl_5typst4argsNtB6_6TargetNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %i.b, i8 %.val.i.i.i), !noalias !53062
  %i.j = load i64, ptr %i.b, align 8, !range !32, !noalias !53062, !noundef !28
  %.not.i.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !53062
  store i64 %.sroa.01.0.i.i.i2, ptr %i.a, align 8, !noalias !53062
  %i.k = add i64 %.sroa.01.0.i.i.i2, -1
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.e), !noalias !53062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53062
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i.i2, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53062
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i, 0
  br i1 %i.l, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB31_15EnumValueParserB2i_ENtB31_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB31_15EnumValueParserB2i_ENtB31_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i, %bb.c, %bb.b, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ 0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2d_15EnumValueParserB1u_ENtB2d_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53080)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !53081, !noalias !53082
  %.promoted.i.i.pre = load ptr, ptr %1, align 8, !alias.scope !53081, !noalias !53082
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53084)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !53085, !nonnull !28, !noundef !28 ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !53085 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i.i.i, %i.d
  br i1 %i.f, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i.i9 = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 4 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !53085
  %.val.i.i.i.i = load i8, ptr %i.h, align 1, !range !40, !noalias !53086, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53086
  call fastcc void @_RNvXs28_NtCs9fPPV5zPXBl_5typst4argsNtB6_6TargetNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %i.b, i8 %.val.i.i.i.i), !noalias !53086
  %i.j = load i64, ptr %i.b, align 8, !range !32, !noalias !53086, !noundef !28
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !53086
  store i64 %.sroa.01.0.i.i.i.i9, ptr %i.a, align 8, !noalias !53086
  %i.k = add i64 %.sroa.01.0.i.i.i.i9, -1
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.e), !noalias !53086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53086
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i.i.i9, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53086
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i.i, 0
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i, %..loopexit_crit_edge
  %.promoted.i.i = phi ptr [ %.promoted.i.i.pre, %..loopexit_crit_edge ], [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i ] ; 2 uses
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.d, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB30_ENCNvXso_NtB1T_12value_parserINtB45_15EnumValueParserB1f_ENtB45_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3X_ENtB5F_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53090)
  %i.n = icmp eq ptr %.promoted.i.i, %i.m
  br i1 %i.n, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.o = icmp eq ptr %i.q, %i.m
  br i1 %i.o, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph10

.lr.ph10:                                         ; preds = %.loopexit, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %.promoted.i.i, %.loopexit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %1, align 8, !alias.scope !53081, !noalias !53082
  %.val.i.i = load i8, ptr %i.p, align 1, !range !40, !noalias !53091, !noundef !28
  tail call fastcc void @_RNvXs28_NtCs9fPPV5zPXBl_5typst4argsNtB6_6TargetNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i8 %.val.i.i), !noalias !53081
  %i.r = load i64, ptr %0, align 8, !range !32, !alias.scope !53082, !noalias !53081, !noundef !28
  %.not.i.i1 = icmp eq i64 %i.r, 2
  br i1 %.not.i.i1, label %bb.e, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split: ; preds = %bb.c, %bb.e, %bb.b, %.loopexit
  store i64 2, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit: ; preds = %.lr.ph10, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1A_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53100)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53102)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !53103, !nonnull !28, !noundef !28
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !53103
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.119.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %switch.lookup ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !53103
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !40, !noalias !53104, !noundef !28 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2873, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2874, i64 %i.i
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext = zext i8 %switch.load4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53104
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !53104
  store i64 0, ptr %i.d, align 8, !noalias !53104
  store ptr %switch.load, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !53104
  store i64 %switch.ext, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !53104
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !53104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !noalias !53104
  store i64 0, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !53104
  store i64 -1, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !53104
  store i8 0, ptr %.sroa.119.0..sroa_idx.i.i.i.i, align 8, !noalias !53104
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.d), !noalias !53104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53104
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %bb.c, %switch.lookup, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %switch.lookup ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53128)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !53129, !noalias !53130
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53132)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !53133, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.75.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.97.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.119.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.j, %switch.lookup ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !53133
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !40, !noalias !53134, !noundef !28 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2873, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep12 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2874, i64 %i.i
  %switch.load13 = load i8, ptr %switch.gep12, align 1
  %switch.ext = zext i8 %switch.load13 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53134
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !53134
  store i64 0, ptr %i.d, align 8, !noalias !53134
  store ptr %switch.load, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53134
  store i64 %switch.ext, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53134
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53134
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.75.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53134
  store i64 0, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53134
  store i64 -1, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53134
  store i8 0, ptr %.sroa.119.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53134
  %i.j = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.d), !noalias !53134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53134
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit: ; preds = %bb.c
  store i64 2, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

.loopexit:                                        ; preds = %switch.lookup, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre5, %..loopexit_crit_edge ], [ %i.c, %switch.lookup ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %switch.lookup ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53138)
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.d, label %switch.lookup14

switch.lookup14:                                  ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.o, ptr %1, align 8, !alias.scope !53129, !noalias !53130
  %.val.i.i = load i8, ptr %i.m, align 1, !range !40, !noalias !53139, !noundef !28 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !53140, !noalias !53129
  %i.p = zext nneg i8 %.val.i.i to i64
  %switch.gep15 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2873, i64 %i.p
  %switch.load16 = load ptr, ptr %switch.gep15, align 8
  %i.q = zext nneg i8 %.val.i.i to i64
  %switch.gep17 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.2874, i64 %i.q
  %switch.load18 = load i8, ptr %switch.gep17, align 1
  %switch.ext19 = zext i8 %switch.load18 to i64
  %.sroa.101.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %switch.load16, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i1, align 8, !alias.scope !53140, !noalias !53129
  store i64 %switch.ext19, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !53140, !noalias !53129
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !53140, !noalias !53129
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !53140, !noalias !53129
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !53140, !noalias !53129
  store i64 -1, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !53140, !noalias !53129
  store i8 0, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !53140, !noalias !53129
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

bb.d:                                             ; preds = %.loopexit
  store i64 2, ptr %0, align 8, !alias.scope !53130, !noalias !53129
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit: ; preds = %bb.d, %switch.lookup14, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args7FeatureENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1A_7builder12value_parserINtB2z_15EnumValueParserB1u_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53151)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB2o_7builder12value_parserINtB3n_15EnumValueParserB2i_ENtB3n_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53153)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !53154, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !53154 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i.i, %i.d
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB2o_7builder12value_parserINtB3n_15EnumValueParserB2i_ENtB3n_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs9fPPV5zPXBl_5typst.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB2o_7builder12value_parserINtB3n_15EnumValueParserB2i_ENtB3n_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs9fPPV5zPXBl_5typst.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i2 = phi i64 [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !53154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53155
  call void @_RNvXs2_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtB9_6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !53156
  %i.j = load i64, ptr %i.b, align 8, !range !32, !noalias !53155, !noundef !28
  %.not.i.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !53155
  store i64 %.sroa.01.0.i.i.i2, ptr %i.a, align 8, !noalias !53155
  %i.k = add i64 %.sroa.01.0.i.i.i2, -1
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.e), !noalias !53156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53155
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i.i2, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53155
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i, 0
  br i1 %i.l, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB2o_7builder12value_parserINtB3n_15EnumValueParserB2i_ENtB3n_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs9fPPV5zPXBl_5typst.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB2o_7builder12value_parserINtB3n_15EnumValueParserB2i_ENtB3n_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.c, %bb.b, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ 0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1A_7builder12value_parserINtB2z_15EnumValueParserB1u_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53176)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !53177, !noalias !53178
  %.promoted.i.i.pre = load ptr, ptr %1, align 8, !alias.scope !53177, !noalias !53178
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53180)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !53181, !nonnull !28, !noundef !28 ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !53181 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i.i.i, %i.d
  br i1 %i.f, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.sink.split, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i.i9 = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 4 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !53181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53182
  call void @_RNvXs2_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtB9_6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !53183
  %i.j = load i64, ptr %i.b, align 8, !range !32, !noalias !53182, !noundef !28
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !53182
  store i64 %.sroa.01.0.i.i.i.i9, ptr %i.a, align 8, !noalias !53182
  %i.k = add i64 %.sroa.01.0.i.i.i.i9, -1
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.e), !noalias !53183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53182
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i.i.i9, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53182
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i.i, 0
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i, %..loopexit_crit_edge
  %.promoted.i.i = phi ptr [ %.promoted.i.i.pre, %..loopexit_crit_edge ], [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i ] ; 2 uses
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.d, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53187)
  %i.n = icmp eq ptr %.promoted.i.i, %i.m
  br i1 %i.n, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.sink.split, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.o = icmp eq ptr %i.q, %i.m
  br i1 %i.o, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.sink.split, label %.lr.ph10

.lr.ph10:                                         ; preds = %.loopexit, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %.promoted.i.i, %.loopexit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %1, align 8, !alias.scope !53177, !noalias !53178
  tail call void @_RNvXs2_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtB9_6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.p), !noalias !53177
  %i.r = load i64, ptr %0, align 8, !range !32, !alias.scope !53178, !noalias !53177, !noundef !28
  %.not.i.i1 = icmp eq i64 %i.r, 2
  br i1 %.not.i.i1, label %bb.e, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.sink.split: ; preds = %bb.c, %bb.e, %bb.b, %.loopexit
  store i64 2, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph10, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1G_7builder12value_parserINtB2F_15EnumValueParserB1A_ENtB2F_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2B_15EnumValueParserB1u_ENtB2B_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53198)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB3p_15EnumValueParserB2i_ENtB3p_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53200)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !53201, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !53201 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i.i, %i.d
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB3p_15EnumValueParserB2i_ENtB3p_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs9fPPV5zPXBl_5typst.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3o_ENCNvXso_NtB2h_12value_parserINtB4t_15EnumValueParserB1f_ENtB4t_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4l_ENtB63_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB3p_15EnumValueParserB2i_ENtB3p_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs9fPPV5zPXBl_5typst.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i2 = phi i64 [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !53201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53202
  call void @_RNvXs0_NtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !53203
  %i.j = load i64, ptr %i.b, align 8, !range !32, !noalias !53202, !noundef !28
  %.not.i.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3o_ENCNvXso_NtB2h_12value_parserINtB4t_15EnumValueParserB1f_ENtB4t_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4l_ENtB63_13SpecAdvanceBy15spec_advance_by0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.d
end_hunk_10
