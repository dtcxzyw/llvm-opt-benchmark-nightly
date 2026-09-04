Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.11?download=true
inline.NumInlined: 924
inline.NumDeleted: 381
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@148 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @145, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @146, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @147, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@149 = private unnamed_addr constant [5 x i8] c"\\_\\_%", align 1
@150 = private unnamed_addr constant [7 x i8] c"sqlite%", align 1
@151 = private unnamed_addr constant [12 x i8] c"type='table'", align 1
@152 = private unnamed_addr constant [2 x i8] c"''", align 1
@153 = private unnamed_addr constant [23 x i8] c"SELECT sqlite_version()", align 1
@154 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @140, [16 x i8] c"/\00\00\00\00\00\00\00{\00\00\00\17\00\00\00" }>, align 8
@155 = private unnamed_addr constant [8 x i8] c"\03\00\00\00\00\00\00\00", align 8
@156 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @140, [16 x i8] c"/\00\00\00\00\00\00\00\82\00\00\00\05\00\00\00" }>, align 8
@157 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs3bbNWNt4QPc_12tracing_core5fieldINtB5_10DebugValueRRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENtB5_5Value6recordB15_ }>, align 8
@158 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs3bbNWNt4QPc_12tracing_core5fieldINtB5_10DebugValueRRSNtNtCs40k4W9msRzi_5alloc6string6StringENtB5_5Value6recordCs2bNgeUs5Jlc_6diesel }>, align 8
@159 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs3bbNWNt4QPc_12tracing_core5fieldINtB5_10DebugValueRRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEENtB5_5Value6recordB2C_ }>, align 8
@160 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs3bbNWNt4QPc_12tracing_core5fieldINtB5_10DebugValueRRNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaENtB5_5Value6recordB13_ }>, align 8
@161 = private unnamed_addr constant [9 x i8] c"Timestamp", align 1
@162 = private unnamed_addr constant [6 x i8] c"Double", align 1
@163 = private unnamed_addr constant [5 x i8] c"Float", align 1
@164 = private unnamed_addr constant [6 x i8] c"Binary", align 1
@165 = private unnamed_addr constant [6 x i8] c"BigInt", align 1
@166 = private unnamed_addr constant [4 x i8] c"tiny", align 1
@167 = private unnamed_addr constant [4 x i8] c"char", align 1
@168 = private unnamed_addr constant [4 x i8] c"clob", align 1
@169 = private unnamed_addr constant [4 x i8] c"text", align 1
@170 = private unnamed_addr constant [5 x i8] c"float", align 1
@171 = private unnamed_addr constant [4 x i8] c"real", align 1
@172 = private unnamed_addr constant [3 x i8] c"big", align 1
@173 = private unnamed_addr constant [4 x i8] c"blob", align 1
@174 = private unnamed_addr constant [6 x i8] c"binary", align 1
@175 = private unnamed_addr constant [6 x i8] c"double", align 1
@176 = private unnamed_addr constant [3 x i8] c"num", align 1
@177 = private unnamed_addr constant [3 x i8] c"dec", align 1
@_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNvCs2bNgeUs5Jlc_6diesel16run_infer_schema10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvCs2bNgeUs5Jlc_6diesel16run_infer_schema10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvCs2bNgeUs5Jlc_6diesel16run_infer_schemas_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvCs2bNgeUs5Jlc_6diesel16run_infer_schemas_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvCs2bNgeUs5Jlc_6diesel17run_setup_command10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvCs2bNgeUs5Jlc_6diesel17run_setup_command10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvCs2bNgeUs5Jlc_6diesel20run_database_command10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvCs2bNgeUs5Jlc_6diesel20run_database_command10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvCs2bNgeUs5Jlc_6diesel28generate_completions_command10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvCs2bNgeUs5Jlc_6diesel28generate_completions_command10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvCs2bNgeUs5Jlc_6diesel35regenerate_schema_if_file_specified10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvCs2bNgeUs5Jlc_6diesel35regenerate_schema_if_file_specified10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvCs2bNgeUs5Jlc_6diesel35regenerate_schema_if_file_specifieds_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvCs2bNgeUs5Jlc_6diesel35regenerate_schema_if_file_specifieds_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg21determine_column_type10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg21determine_column_type10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg21determine_column_types_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg21determine_column_types_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite21determine_column_type10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite21determine_column_type10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@178 = private unnamed_addr constant [16 x i8] c"run_infer_schema", align 1
@179 = private unnamed_addr constant [6 x i8] c"diesel", align 1
@180 = private unnamed_addr constant [7 x i8] c"matches", align 1
@181 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @180, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@182 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs3bbNWNt4QPc_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCs3bbNWNt4QPc_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCs3bbNWNt4QPc_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs2bNgeUs5Jlc_6diesel }>, align 8
@183 = private unnamed_addr constant [22 x i8] c"diesel_cli/src/main.rs", align 1
@_RNvNvNvCs2bNgeUs5Jlc_6diesel16run_infer_schema10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\17\01\00\00", ptr @178, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @181, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCs2bNgeUs5Jlc_6diesel16run_infer_schema10___CALLSITE, ptr @182, ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @183, [9 x i8] c"\16\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@184 = private unnamed_addr constant [32 x i8] c"event diesel_cli/src/main.rs:283", align 1
@185 = private unnamed_addr constant [7 x i8] c"message", align 1
@186 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @185, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@_RNvNvNvCs2bNgeUs5Jlc_6diesel16run_infer_schemas_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\1B\01\00\00", ptr @184, [8 x i8] c" \00\00\00\00\00\00\00", ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @186, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCs2bNgeUs5Jlc_6diesel16run_infer_schemas_10___CALLSITE, ptr @182, ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @183, [9 x i8] c"\16\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@187 = private unnamed_addr constant [17 x i8] c"run_setup_command", align 1
@_RNvNvNvCs2bNgeUs5Jlc_6diesel17run_setup_command10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00f\00\00\00", ptr @187, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @181, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCs2bNgeUs5Jlc_6diesel17run_setup_command10___CALLSITE, ptr @182, ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @183, [9 x i8] c"\16\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@188 = private unnamed_addr constant [20 x i8] c"run_database_command", align 1
@_RNvNvNvCs2bNgeUs5Jlc_6diesel20run_database_command10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\AC\00\00\00", ptr @188, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @181, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCs2bNgeUs5Jlc_6diesel20run_database_command10___CALLSITE, ptr @182, ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @183, [9 x i8] c"\16\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@189 = private unnamed_addr constant [28 x i8] c"generate_completions_command", align 1
@_RNvNvNvCs2bNgeUs5Jlc_6diesel28generate_completions_command10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\C2\00\00\00", ptr @189, [8 x i8] c"\1C\00\00\00\00\00\00\00", ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @181, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCs2bNgeUs5Jlc_6diesel28generate_completions_command10___CALLSITE, ptr @182, ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @183, [9 x i8] c"\16\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@190 = private unnamed_addr constant [35 x i8] c"regenerate_schema_if_file_specified", align 1
@_RNvNvNvCs2bNgeUs5Jlc_6diesel35regenerate_schema_if_file_specified10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00(\01\00\00", ptr @190, [8 x i8] c"#\00\00\00\00\00\00\00", ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @181, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCs2bNgeUs5Jlc_6diesel35regenerate_schema_if_file_specified10___CALLSITE, ptr @182, ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @183, [9 x i8] c"\16\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@191 = private unnamed_addr constant [32 x i8] c"event diesel_cli/src/main.rs:298", align 1
@_RNvNvNvCs2bNgeUs5Jlc_6diesel35regenerate_schema_if_file_specifieds_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00*\01\00\00", ptr @191, [8 x i8] c" \00\00\00\00\00\00\00", ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @186, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCs2bNgeUs5Jlc_6diesel35regenerate_schema_if_file_specifieds_10___CALLSITE, ptr @182, ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @183, [9 x i8] c"\16\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@192 = private unnamed_addr constant [21 x i8] c"determine_column_type", align 1
@193 = private unnamed_addr constant [34 x i8] c"diesel::infer_schema_internals::pg", align 1
@194 = private unnamed_addr constant [4 x i8] c"attr", align 1
@195 = private unnamed_addr constant [14 x i8] c"default_schema", align 1
@196 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @194, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @195, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@197 = private unnamed_addr constant [43 x i8] c"diesel_cli/src/infer_schema_internals/pg.rs", align 1
@_RNvNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg21determine_column_type10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\1E\00\00\00", ptr @192, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @193, [8 x i8] c"\22\00\00\00\00\00\00\00", ptr @196, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @_RNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg21determine_column_type10___CALLSITE, ptr @182, ptr @193, [8 x i8] c"\22\00\00\00\00\00\00\00", ptr @197, [9 x i8] c"+\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@198 = private unnamed_addr constant [52 x i8] c"event diesel_cli/src/infer_schema_internals/pg.rs:50", align 1
@_RNvNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg21determine_column_types_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\002\00\00\00", ptr @198, [8 x i8] c"4\00\00\00\00\00\00\00", ptr @193, [8 x i8] c"\22\00\00\00\00\00\00\00", ptr @186, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg21determine_column_types_10___CALLSITE, ptr @182, ptr @193, [8 x i8] c"\22\00\00\00\00\00\00\00", ptr @197, [9 x i8] c"+\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@199 = private unnamed_addr constant [38 x i8] c"diesel::infer_schema_internals::sqlite", align 1
@200 = private unnamed_addr constant [5 x i8] c"table", align 1
@201 = private unnamed_addr constant [12 x i8] c"primary_keys", align 1
@202 = private unnamed_addr constant [12 x i8] c"foreign_keys", align 1
@203 = private unnamed_addr constant [6 x i8] c"config", align 1
@204 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @194, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @200, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @201, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @202, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @203, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@205 = private unnamed_addr constant [47 x i8] c"diesel_cli/src/infer_schema_internals/sqlite.rs", align 1
@_RNvNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite21determine_column_type10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00X\01\00\00", ptr @192, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @199, [8 x i8] c"&\00\00\00\00\00\00\00", ptr @204, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @_RNvNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite21determine_column_type10___CALLSITE, ptr @182, ptr @199, [8 x i8] c"&\00\00\00\00\00\00\00", ptr @205, [9 x i8] c"/\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@206 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6488187986506274648 to ptr), ptr inttoptr (i64 -1318844912124130957 to ptr) }>, align 8
@207 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel2pg10connection12PgConnectionECs2bNgeUs5Jlc_6diesel, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtNtCsjRvGck33osM_6diesel2pg10connection12PgConnectionNtB2_3Any7type_idCs2bNgeUs5Jlc_6diesel }>, align 8
@208 = private unnamed_addr constant [10 x i8] c"::regclass", align 1
@209 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel2pg10connection12PgConnectionECs2bNgeUs5Jlc_6diesel, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCsjRvGck33osM_6diesel2pg15metadata_lookupNtNtB4_10connection12PgConnectionNtB2_16PgMetadataLookup11lookup_typeCs2bNgeUs5Jlc_6diesel, ptr @_RNvXNtNtCsjRvGck33osM_6diesel2pg15metadata_lookupNtNtB4_10connection12PgConnectionNtB2_16PgMetadataLookup6as_anyCs2bNgeUs5Jlc_6diesel }>, align 8
@210 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB4_10DebugQueryINtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl10connection15SerializedQueryINtNtNtB6_16select_statement5boxed20BoxedSelectStatementNtNtB8_9sql_types4TextINtNtB6_11from_clause10FromClauseNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations5tableENtNtB1i_7backend12MultiBackendENtNtNtB8_2pg10connection12PgConnectionENtNtB6y_7backend2PgENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtB1m_ }>, align 8
@211 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB5_10DebugQueryINtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl10connection15SerializedQueryINtNtNtB7_16select_statement5boxed20BoxedSelectStatementNtNtB9_9sql_types4TextINtNtB7_11from_clause10FromClauseNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations5tableENtNtB1j_7backend12MultiBackendENtNtNtB9_2pg10connection12PgConnectionENtNtB6z_7backend2PgENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1n_, ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB4_10DebugQueryINtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl10connection15SerializedQueryINtNtNtB6_16select_statement5boxed20BoxedSelectStatementNtNtB8_9sql_types4TextINtNtB6_11from_clause10FromClauseNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations5tableENtNtB1i_7backend12MultiBackendENtNtNtB8_2pg10connection12PgConnectionENtNtB6y_7backend2PgENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtB1m_, ptr @210 }>, align 8
@212 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB4_10DebugQueryRINtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl10connection15SerializedQueryRINtNtB6_16delete_statement15DeleteStatementNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations5tableINtNtB6_12where_clause11WhereClauseINtNtNtB8_10expression7grouped7GroupedINtNtB5y_9operators2EqNtNtB3r_7columns7versionINtNtB5y_5bound5BoundNtNtB8_9sql_types4TextNtNtB8_9migration16MigrationVersionEEEEENtNtNtB8_2pg10connection12PgConnectionENtNtB8e_7backend2PgENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtB1n_ }>, align 8
@213 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB5_10DebugQueryRINtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl10connection15SerializedQueryRINtNtB7_16delete_statement15DeleteStatementNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations5tableINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB5z_9operators2EqNtNtB3s_7columns7versionINtNtB5z_5bound5BoundNtNtB9_9sql_types4TextNtNtB9_9migration16MigrationVersionEEEEENtNtNtB9_2pg10connection12PgConnectionENtNtB8f_7backend2PgENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1o_, ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB4_10DebugQueryRINtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl10connection15SerializedQueryRINtNtB6_16delete_statement15DeleteStatementNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations5tableINtNtB6_12where_clause11WhereClauseINtNtNtB8_10expression7grouped7GroupedINtNtB5y_9operators2EqNtNtB3r_7columns7versionINtNtB5y_5bound5BoundNtNtB8_9sql_types4TextNtNtB8_9migration16MigrationVersionEEEEENtNtNtB8_2pg10connection12PgConnectionENtNtB8e_7backend2PgENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtB1n_, ptr @212 }>, align 8
@214 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB4_10DebugQueryRINtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl10connection15SerializedQueryRINtNtB6_16insert_statement15InsertStatementNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations5tableINtB2L_12ValuesClauseINtNtB8_10insertable17ColumnInsertValueNtNtB3r_7columns7versionINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextNtNtB8_9migration16MigrationVersionEEB3p_EENtNtNtB8_2pg10connection12PgConnectionENtNtB7V_7backend2PgENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtB1n_ }>, align 8
@215 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB5_10DebugQueryRINtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl10connection15SerializedQueryRINtNtB7_16insert_statement15InsertStatementNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations5tableINtB2M_12ValuesClauseINtNtB9_10insertable17ColumnInsertValueNtNtB3s_7columns7versionINtNtNtB9_10expression5bound5BoundNtNtB9_9sql_types4TextNtNtB9_9migration16MigrationVersionEEB3q_EENtNtNtB9_2pg10connection12PgConnectionENtNtB7W_7backend2PgENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1o_, ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB4_10DebugQueryRINtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl10connection15SerializedQueryRINtNtB6_16insert_statement15InsertStatementNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations5tableINtB2L_12ValuesClauseINtNtB8_10insertable17ColumnInsertValueNtNtB3r_7columns7versionINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextNtNtB8_9migration16MigrationVersionEEB3p_EENtNtNtB8_2pg10connection12PgConnectionENtNtB7V_7backend2PgENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtB1n_, ptr @214 }>, align 8
@216 = private unnamed_addr constant [15 x i8] c"col_description", align 1
@217 = private unnamed_addr constant [1 x i8] c"(", align 1
@218 = private unnamed_addr constant [1 x i8] c")", align 1
@219 = private unnamed_addr constant [7 x i8] c"datname", align 1
@220 = private unnamed_addr constant [12 x i8] c"table_schema", align 1
@221 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtCs2bNgeUs5Jlc_6diesel }>, align 8
@222 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@223 = private unnamed_addr constant [76 x i8] c"/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/alloc/src/string.rs\00", align 1
@224 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @223, [16 x i8] c"K\00\00\00\00\00\00\00q\0B\00\00\0E\00\00\00" }>, align 8
@225 = private unnamed_addr constant [10 x i8] c"table_type", align 1
@226 = private unnamed_addr constant [5 x i8] c"Error", align 1
@227 = private unnamed_addr constant [8 x i8] c"\C0\01.\C0\01.\C0\00", align 1
@228 = private unnamed_addr constant [7 x i8] c" LIMIT ", align 1
@229 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseMV7gzmhUlG_10serde_core6formatNtB4_3BufNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str, ptr @_RNvYNtNtCseMV7gzmhUlG_10serde_core6format3BufNtNtCscI6d9CVNmLh_4core3fmt5Write10write_charCs2bNgeUs5Jlc_6diesel, ptr @_RNvYNtNtCseMV7gzmhUlG_10serde_core6format3BufNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtCs2bNgeUs5Jlc_6diesel }>, align 8
@230 = private unnamed_addr constant [76 x i8] c"/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/std/src/io/stdio.rs\00", align 1
@231 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @230, [16 x i8] c"K\00\00\00\00\00\00\00W\03\00\00\14\00\00\00" }>, align 8
@232 = private unnamed_addr constant [13 x i8] c"datistemplate", align 1
@233 = private unnamed_addr constant [7 x i8] c"nspname", align 1
@234 = private unnamed_addr constant [10 x i8] c"table_name", align 1
@235 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @54, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@236 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3985430793250865325 to ptr), ptr inttoptr (i64 8126568425865757094 to ptr) }>, align 8
@237 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7710067658450698397 to ptr), ptr inttoptr (i64 2837241139441916696 to ptr) }>, align 8
@238 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4508947516151398926 to ptr), ptr inttoptr (i64 -1530819263302749485 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvCs2bNgeUs5Jlc_6diesel26run_migrations_with_outputNtNtB2_8database15InferConnectionNtNtNtBR_21multi_connection_impl7backend12MultiBackendEB2_(ptr noalias noundef align 8 dereferenceable(104) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = invoke noundef nonnull align 8 ptr @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6stdout()
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtNtCs2bNgeUs5Jlc_6diesel8database15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6_16MigrationHarnessNtNtNtB1j_21multi_connection_impl7backend12MultiBackendE22run_pending_migrationsNtNtB8_21file_based_migrations19FileBasedMigrationsEB1l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !align !6, !noundef !5
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.thread unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEECs2bNgeUs5Jlc_6diesel.exit, %bb.c
  %.sroa.3.0 = phi ptr [ %i.m, %bb.c ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEECs2bNgeUs5Jlc_6diesel.exit ]
  %.sroa.0.0 = phi ptr [ %i.k, %bb.c ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEECs2bNgeUs5Jlc_6diesel.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.q

.body.thread:                                     ; preds = %bb.e, %bb.h
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %lpad.thr_comm.split-lp, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body5

bb.h:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations19FileBasedMigrationsECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %1) #28
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCscI6d9CVNmLh_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !53, !noundef !5 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !53, !noundef !5
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !53, !noundef !5
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !53, !noundef !5
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i
    i32 13, label %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i
    i32 12, label %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i
    i32 11, label %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i
    i32 10, label %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i
    i32 9, label %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !54, !noundef !5
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !54, !noundef !5
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i

_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, label %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit

_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.e, %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.122 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.020 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.122, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !55, !noundef !5 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit17.i.i.i.i.i

_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i5
  %i.bn = icmp ne ptr %.sroa.4.122, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !55, !noundef !5 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i5
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.122, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !55, !noundef !5 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.122, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !55, !noundef !5
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i7

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i7

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !56, !noundef !5
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i7

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !56, !noundef !5
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i7

_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i7: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i8 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i8 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i7, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.122, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i5

bb.u:                                             ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2bNgeUs5Jlc_6diesel.exit.i.i.i7, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.122 to i64
  %i.do = sub i64 %.sroa.18.020, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, %bb.t, %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit, %bb.u
  %.sroa.0.043 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.020, %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2bNgeUs5Jlc_6diesel.exit ], [ %.sroa.18.020, %bb.t ], [ 0, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.043
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.043
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE15new_with_offsetNtNtNtB7_6offset3utc3UtcECs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !63
  store i64 0, ptr %i.c, align 8, !noalias !63
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !63
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.d, align 8, !noalias !63
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !63
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !63
  store ptr %i.c, ptr %i.b, align 8, !noalias !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @221, ptr %i.e, align 8, !noalias !63
  %i.f = invoke noundef zeroext i1 @_RNvXs2_NtNtCslCQnfik72jt_6chrono6offset3utcNtB5_3UtcNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !64

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %bb.f unwind label %bb.e, !noalias !64

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.g, !prof !7

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @222, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #29
          to label %.noexc.i.i unwind label %bb.b, !noalias !64

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !64
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getBO_EB1w_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !76, !noalias !77, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !76, !noalias !77, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !noalias !78 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [240 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -240
  %i.w = tail call noundef zeroext i1 @_RNvXCsfKiFC1ztrmh_9hashbrownNtNtCs40k4W9msRzi_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.v), !noalias !79
  br i1 %i.w, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_.exit, label %bb.d, !prof !8

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_.exit, !prof !7

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i33.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_.exit: ; preds = %._crit_edge.i, %.lr.ph.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -216
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCs40k4W9msRzi_5alloc3stre7replacecECs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef range(i32 39, 93) %3, ptr noalias noundef nonnull readonly captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %.lr.ph.split.i.lr.ph, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #29
  unreachable

bb.c:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #28
          to label %bb.r unwind label %bb.q

bb.d:                                             ; preds = %.loopexit74
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph.split.i.lr.ph:                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.k = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.12.32.extract.trunc = trunc nuw nsw i32 %3 to i8 ; 3 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.lr.ph, %bb.p
  %.sroa.04.093 = phi i64 [ 0, %.lr.ph.split.i.lr.ph ], [ %i.aa, %bb.p ] ; 6 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.split.i
  %i.l = phi i64 [ %.sroa.04.093, %.lr.ph.split.i ], [ %i.aa, %bb.i ] ; 4 uses
  %i.m = sub nuw i64 %2, %i.l                     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 2 uses
  %i.o = icmp samesign ult i64 %i.m, 16
  br i1 %i.o, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e
  %.not.i.i = icmp eq i64 %i.m, 0
end_hunk_0
