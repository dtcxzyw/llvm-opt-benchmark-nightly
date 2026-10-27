Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/delete_post-7c9caa62e821ab2a.delete_post.df26a34ed18d6424-cgu.0?download=true
inline.NumInlined: 270
inline.NumDeleted: 157
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_5Debug3fmtCsj9PhBAIfT7c_11delete_post }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsjRvGck33osM_6diesel13query_builderRINtNtB5_16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB5_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB3b_9operators4LikeNtNtB1r_7columns5titleINtNtB3b_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtB5_13QueryFragmentNtNtNtB7_6sqlite7backend6SqliteE8walk_astCsj9PhBAIfT7c_11delete_post, ptr @_RNvYRINtNtNtCsjRvGck33osM_6diesel13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB8_12where_clause11WhereClauseINtNtNtBa_10expression7grouped7GroupedINtNtB35_9operators4LikeNtNtB1l_7columns5titleINtNtB35_5bound5BoundNtNtBa_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtB8_13QueryFragmentNtNtNtBa_6sqlite7backend6SqliteE6to_sqlCsj9PhBAIfT7c_11delete_post, ptr @_RNvYRINtNtNtCsjRvGck33osM_6diesel13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB8_12where_clause11WhereClauseINtNtNtBa_10expression7grouped7GroupedINtNtB35_9operators4LikeNtNtB1l_7columns5titleINtNtB35_5bound5BoundNtNtBa_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtB8_13QueryFragmentNtNtNtBa_6sqlite7backend6SqliteE13collect_bindsCsj9PhBAIfT7c_11delete_post, ptr @_RNvYRINtNtNtCsjRvGck33osM_6diesel13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB8_12where_clause11WhereClauseINtNtNtBa_10expression7grouped7GroupedINtNtB35_9operators4LikeNtNtB1l_7columns5titleINtNtB35_5bound5BoundNtNtBa_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtB8_13QueryFragmentNtNtNtBa_6sqlite7backend6SqliteE25is_safe_to_cache_preparedCsj9PhBAIfT7c_11delete_post, ptr @_RNvYRINtNtNtCsjRvGck33osM_6diesel13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB8_12where_clause11WhereClauseINtNtNtBa_10expression7grouped7GroupedINtNtB35_9operators4LikeNtNtB1l_7columns5titleINtNtB35_5bound5BoundNtNtBa_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtB8_13QueryFragmentNtNtNtBa_6sqlite7backend6SqliteE7is_noopCsj9PhBAIfT7c_11delete_post }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRhNtB6_5Debug3fmtCsj9PhBAIfT7c_11delete_post }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB4_10DebugQueryRINtNtB6_16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB6_12where_clause11WhereClauseINtNtNtB8_10expression7grouped7GroupedINtNtB3H_9operators4LikeNtNtB1X_7columns5titleINtNtB3H_5bound5BoundNtNtB8_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEENtNtNtB8_6sqlite7backend6SqliteENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsj9PhBAIfT7c_11delete_post }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB5_10DebugQueryRINtNtB7_16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB3I_9operators4LikeNtNtB1Y_7columns5titleINtNtB3I_5bound5BoundNtNtB9_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEENtNtNtB9_6sqlite7backend6SqliteENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsj9PhBAIfT7c_11delete_post, ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB4_10DebugQueryRINtNtB6_16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB6_12where_clause11WhereClauseINtNtNtB8_10expression7grouped7GroupedINtNtB3H_9operators4LikeNtNtB1X_7columns5titleINtNtB3H_5bound5BoundNtNtB8_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEENtNtNtB8_6sqlite7backend6SqliteENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsj9PhBAIfT7c_11delete_post, ptr @3 }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_3Any7type_idCsj9PhBAIfT7c_11delete_post, ptr @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast8into_anyCsj9PhBAIfT7c_11delete_post, ptr @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast11into_any_rcCsj9PhBAIfT7c_11delete_post, ptr @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast6as_anyCsj9PhBAIfT7c_11delete_post, ptr @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast10as_any_mutCsj9PhBAIfT7c_11delete_post, ptr @_RNvXsa_NtNtCsjRvGck33osM_6diesel10connection15instrumentationNtB5_17NoInstrumentationNtB5_15Instrumentation19on_connection_event }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_once6vtableCsj9PhBAIfT7c_11delete_post, ptr @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Csj9PhBAIfT7c_11delete_post, ptr @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Csj9PhBAIfT7c_11delete_post }>, align 8
@7 = private unnamed_addr constant [6 x i8] c"\01%\C0\01%\00", align 1
@8 = private unnamed_addr constant [20 x i8] c"Error deleting posts", align 1
@9 = private unnamed_addr constant [62 x i8] c"examples/sqlite/getting_started_step_3/src/bin/delete_post.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"=\00\00\00\00\00\00\00\0E\00\00\00\0A\00\00\00" }>, align 8
@11 = private unnamed_addr constant [19 x i8] c"\08Deleted \C0\07 posts\0A\00", align 1
@12 = private unnamed_addr constant [34 x i8] c"Expected a target to match against", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"=\00\00\00\00\00\00\00\08\00\00\00 \00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsj9PhBAIfT7c_11delete_post, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsk_NtCsjRvGck33osM_6diesel6resultNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_3Any7type_idCsj9PhBAIfT7c_11delete_post }>, align 8
@16 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -374768545150116711 to ptr), ptr inttoptr (i64 3217429161695629291 to ptr) }>, align 8
@17 = private unnamed_addr constant [7 x i8] c" WHERE ", align 1
@18 = private unnamed_addr constant [6 x i8] c"DELETE", align 1
@19 = private unnamed_addr constant [6 x i8] c" FROM ", align 1
@20 = private unnamed_addr constant [6 x i8] c" LIKE ", align 1
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@22 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Debug3fmtCsj9PhBAIfT7c_11delete_post }>, align 8
@23 = private unnamed_addr constant [8 x i8] c"NulError", align 1
@24 = private unnamed_addr constant [1 x i8] c"(", align 1
@25 = private unnamed_addr constant [1 x i8] c")", align 1
@26 = private unnamed_addr constant [5 x i8] c"posts", align 1
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorNtB6_5Debug3fmtCsj9PhBAIfT7c_11delete_post }>, align 8
@28 = private unnamed_addr constant [14 x i8] c"InvalidCString", align 1
@29 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjRvGck33osM_6diesel6result24DatabaseErrorInformationNtNtB8_6marker4SyncNtB24_4SendEL_ENtB6_5Debug3fmtCsj9PhBAIfT7c_11delete_post }>, align 8
@31 = private unnamed_addr constant [13 x i8] c"DatabaseError", align 1
@32 = private unnamed_addr constant [8 x i8] c"NotFound", align 1
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB1r_4SendEL_ENtB6_5Debug3fmtCsj9PhBAIfT7c_11delete_post }>, align 8
@34 = private unnamed_addr constant [17 x i8] c"QueryBuilderError", align 1
@35 = private unnamed_addr constant [20 x i8] c"DeserializationError", align 1
@36 = private unnamed_addr constant [18 x i8] c"SerializationError", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECsj9PhBAIfT7c_11delete_post, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsj9PhBAIfT7c_11delete_post }>, align 8
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorENtB6_5Debug3fmtCsj9PhBAIfT7c_11delete_post }>, align 8
@39 = private unnamed_addr constant [21 x i8] c"RollbackErrorOnCommit", align 1
@40 = private unnamed_addr constant [14 x i8] c"rollback_error", align 1
@41 = private unnamed_addr constant [12 x i8] c"commit_error", align 1
@42 = private unnamed_addr constant [19 x i8] c"RollbackTransaction", align 1
@43 = private unnamed_addr constant [20 x i8] c"AlreadyInTransaction", align 1
@44 = private unnamed_addr constant [16 x i8] c"NotInTransaction", align 1
@45 = private unnamed_addr constant [24 x i8] c"BrokenTransactionManager", align 1
@46 = private unnamed_addr constant [15 x i8] c"UniqueViolation", align 1
@47 = private unnamed_addr constant [19 x i8] c"ForeignKeyViolation", align 1
@48 = private unnamed_addr constant [19 x i8] c"UnableToSendCommand", align 1
@49 = private unnamed_addr constant [20 x i8] c"SerializationFailure", align 1
@50 = private unnamed_addr constant [19 x i8] c"ReadOnlyTransaction", align 1
@51 = private unnamed_addr constant [17 x i8] c"RestrictViolation", align 1
@52 = private unnamed_addr constant [16 x i8] c"NotNullViolation", align 1
@53 = private unnamed_addr constant [14 x i8] c"CheckViolation", align 1
@54 = private unnamed_addr constant [18 x i8] c"ExclusionViolation", align 1
@55 = private unnamed_addr constant [16 x i8] c"ClosedConnection", align 1
@56 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@57 = private unnamed_addr constant [1 x i8] c".", align 1
@58 = private unnamed_addr constant [5 x i8] c"title", align 1
@switch.table._RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt = private unnamed_addr constant [11 x i8] c"\0F\13\13\14\13\10\0E\10\07\11\12", align 8
@switch.table._RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.96 = private unnamed_addr constant [11 x ptr] [ptr @46, ptr @47, ptr @48, ptr @49, ptr @50, ptr @52, ptr @53, ptr @55, ptr @56, ptr @51, ptr @54], align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !18 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !18, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !18
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsj9PhBAIfT7c_11delete_post.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsj9PhBAIfT7c_11delete_post.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsj9PhBAIfT7c_11delete_post.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtB4_3fmt5DebugEL_EEECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_EENtNtNtB12_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3fmt5DebugEL_EECsj9PhBAIfT7c_11delete_post.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3fmt5DebugEL_EECsj9PhBAIfT7c_11delete_post.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !21 ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.g = load ptr, ptr %.val9.i.i, align 8, !invariant.load !4, !noalias !21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val8.i.i)
          to label %bb.c unwind label %bb.d, !noalias !21

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4, !noalias !21 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3fmt5DebugEL_EECsj9PhBAIfT7c_11delete_post.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !4, !noalias !21
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #16, !noalias !21
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3fmt5DebugEL_EECsj9PhBAIfT7c_11delete_post.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !4, !noalias !21 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !4, !noalias !21
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #16, !noalias !21
  br label %.body.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3fmt5DebugEL_EECsj9PhBAIfT7c_11delete_post.exit.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  %i.s = icmp eq i64 %i.e, %.val1
  br i1 %i.s, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_EENtNtNtB12_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.t = add i64 %.sroa.0.1.i.i22, 1              ; 2 uses
  %i.u = icmp eq i64 %i.t, %.val1
  br i1 %i.u, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.d
  %i.v = icmp eq i64 %i.e, %.val1
  br i1 %i.v, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i22 = phi i64 [ %i.t, %bb.e ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.1.i.i22 ; 2 uses
  %.val.i.i = load ptr, ptr %i.w, align 8, !alias.scope !21
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val7.i.i = load ptr, ptr %i.x, align 8, !alias.scope !21, !nonnull !4, !align !6, !noundef !4
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3fmt5DebugEL_EECsj9PhBAIfT7c_11delete_post(ptr %.val.i.i, ptr nonnull %.val7.i.i) #17
          to label %bb.e unwind label %bb.f, !noalias !21

bb.f:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18, !noalias !21
  unreachable

.body:                                            ; preds = %bb.e, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.z = icmp eq i64 %.val4, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3fmt5DebugEL_EEECsj9PhBAIfT7c_11delete_post.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.aa = shl nuw i64 %.val4, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3fmt5DebugEL_EEECsj9PhBAIfT7c_11delete_post.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_EENtNtNtB12_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3fmt5DebugEL_EECsj9PhBAIfT7c_11delete_post.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %.val2, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3fmt5DebugEL_EEECsj9PhBAIfT7c_11delete_post.exit6, label %bb.h

bb.h:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_EENtNtNtB12_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit
  %i.ac = shl nuw i64 %.val2, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3fmt5DebugEL_EEECsj9PhBAIfT7c_11delete_post.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3fmt5DebugEL_EEECsj9PhBAIfT7c_11delete_post.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_EENtNtNtB12_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, %bb.h
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3fmt5DebugEL_EEECsj9PhBAIfT7c_11delete_post.exit: ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB1f_7backend10SqliteTypeEEECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBM_7backend10SqliteTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.f = load i32, ptr %i.d, align 8, !range !8, !alias.scope !31, !noundef !4
  switch i32 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit.i.i [
    i32 1, label %bb.b
    i32 3, label %bb.c
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i.i.i.i: ; preds = %bb.c, %bb.b
  %.val3.sink.i.i.i.i = phi i64 [ %.val1.i.i.i.i, %bb.b ], [ %.val3.i.i.i.i, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !31, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef %.val3.sink.i.i.i.i, i64 noundef 1) #16, !noalias !31
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !31, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !31, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit.i.i: ; preds = %bb.c, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i.i.i.i, %.lr.ph.i.i
  %i.l = icmp eq i64 %i.e, %.val1
  br i1 %i.l, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBM_7backend10SqliteTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBM_7backend10SqliteTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %.val2, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB1m_7backend10SqliteTypeEEECsj9PhBAIfT7c_11delete_post.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBM_7backend10SqliteTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit
  %i.n = shl nuw i64 %.val2, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB1m_7backend10SqliteTypeEEECsj9PhBAIfT7c_11delete_post.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB1m_7backend10SqliteTypeEEECsj9PhBAIfT7c_11delete_post.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBM_7backend10SqliteTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3fmt5DebugEL_EECsj9PhBAIfT7c_11delete_post(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_ENtNtNtBM_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #16
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_ENtNtNtBM_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_ENtNtNtBM_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_ENtNtNtBM_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit5, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #16
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_ENtNtNtBM_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit5

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core3fmt5DebugEL_ENtNtNtBM_3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit5: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsj9PhBAIfT7c_11delete_post(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBG_6sqlite7backend6SqliteEECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.a = load i32, ptr %0, align 8, !range !8, !alias.scope !38, !noundef !4
  switch i32 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueECsj9PhBAIfT7c_11delete_post.exit [
    i32 1, label %bb.b
    i32 3, label %bb.c
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i.i: ; preds = %bb.c, %bb.b
  %.val3.sink.i.i = phi i64 [ %.val1.i.i, %bb.b ], [ %.val3.i.i, %bb.c ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !38, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val3.sink.i.i, i64 noundef 1) #16, !noalias !38
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueECsj9PhBAIfT7c_11delete_post.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !38, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueECsj9PhBAIfT7c_11delete_post.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.e, align 8, !alias.scope !38, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val3.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueECsj9PhBAIfT7c_11delete_post.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueECsj9PhBAIfT7c_11delete_post.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4 ; 2 uses
  switch i64 %i.a, label %bb.b [
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit6
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit6: ; preds = %bb.a, %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i64, ptr %i.c, align 8            ; 2 uses
  %i.d = icmp eq i64 %.val2, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit6, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post.exit6
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map11VacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1I_6sqlite7backend6SqliteENtNtNtB2T_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !45, !noundef !4 ; 2 uses
  switch i64 %i.a, label %bb.b [
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown11rustc_entry16RustcVacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1G_6sqlite7backend6SqliteENtNtNtB2R_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !45, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !45
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i64, ptr %i.c, align 8, !alias.scope !45 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown11rustc_entry16RustcVacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1G_6sqlite7backend6SqliteENtNtNtB2R_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !45, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !45
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown11rustc_entry16RustcVacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1G_6sqlite7backend6SqliteENtNtNtB2R_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown11rustc_entry16RustcVacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1G_6sqlite7backend6SqliteENtNtNtB2R_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !60, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !60, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.g = icmp eq ptr %.val1.i.i.i.i, %.val.i.i.i.i
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !61, !noalias !60 ; 2 uses
  %i.j = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !61, !noalias !60, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !62
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = icmp eq i64 %i.i, %i.f
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !60, !noundef !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env6ArgsOsECsj9PhBAIfT7c_11delete_post.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i
  %i.p = load ptr, ptr %0, align 8, !alias.scope !60, !nonnull !4, !noundef !4
  %i.q = mul nuw i64 %i.n, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !60
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env6ArgsOsECsj9PhBAIfT7c_11delete_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env6ArgsOsECsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 4 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 3, label %bb.h
    i64 4, label %bb.l
    i64 5, label %bb.p
    i64 6, label %bb.t
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i21, %bb.r, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i16, %bb.n, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i12, %bb.j, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, %bb.f, %bb.c, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECsj9PhBAIfT7c_11delete_post.exit25, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.a, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.g, align 8            ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.i = load ptr, ptr %.val3, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke void %i.i(ptr noundef nonnull %.val2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #16
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.s, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i19, %bb.o, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i14, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i11, %bb.g, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.s ], [ %i.o, %bb.g ], [ %i.ac, %bb.k ], [ %i.aq, %bb.o ], [ %i.bq, %bb.v ], [ %i.o, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i11 ], [ %i.aq, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i14 ], [ %i.be, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i19 ], [ %i.bm, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.u, align 8            ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load ptr, ptr %i.v, align 8, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val9, align 8, !invariant.load !4 ; 2 uses
  %.not.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.w(ptr noundef nonnull %.val8)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i12

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i12: ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i11

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i11: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ah) #16
  br label %common.resume

bb.l:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.ai, align 8           ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.ak = load ptr, ptr %.val7, align 8, !invariant.load !4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ak, null
  br i1 %.not.i13, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  invoke void %i.ak(ptr noundef nonnull %.val6)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i16

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i16: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i14

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i14: ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.av) #16
  br label %common.resume

bb.p:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.aw, align 8           ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.ax, align 8, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.ay = load ptr, ptr %.val5, align 8, !invariant.load !4 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ay, null
  br i1 %.not.i18, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  invoke void %i.ay(ptr noundef nonnull %.val4)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i21

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i21: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit

bb.s:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i19

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i19: ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #16
  br label %common.resume

bb.t:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !67, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsj9PhBAIfT7c_11delete_post(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.u unwind label %.body, !noalias !67, !inline_history !68

.body:                                            ; preds = %bb.t
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 32, i64 noundef 8) #16, !noalias !67
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECsj9PhBAIfT7c_11delete_post(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #17
          to label %common.resume unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 32, i64 noundef 8) #16, !noalias !67
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !69, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsj9PhBAIfT7c_11delete_post(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECsj9PhBAIfT7c_11delete_post.exit25 unwind label %bb.v, !noalias !69, !inline_history !68

bb.v:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef 32, i64 noundef 8) #16, !noalias !69
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECsj9PhBAIfT7c_11delete_post.exit25: ; preds = %bb.u
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef 32, i64 noundef 8) #16, !noalias !69
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorECsj9PhBAIfT7c_11delete_post.exit

bb.w:                                             ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsj9PhBAIfT7c_11delete_post(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECsj9PhBAIfT7c_11delete_post.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECsj9PhBAIfT7c_11delete_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECsj9PhBAIfT7c_11delete_post.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit5.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #16
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit5.i.i

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit5.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECsj9PhBAIfT7c_11delete_post.exit: ; preds = %bb.a, %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel6sqlite10connection16SqliteConnectionECsj9PhBAIfT7c_11delete_post(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %.val4, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #16
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection3rawNtB4_13RawConnectionNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit unwind label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection3rawNtB4_13RawConnectionNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit9 unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit: ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.i, %.body ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val7 = load ptr, ptr %i.q, align 8, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8 = load ptr, ptr %i.r, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsj9PhBAIfT7c_11delete_post(ptr %.val7, ptr %.val8) #17
          to label %.body10 unwind label %bb.l

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit9: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val5 = load ptr, ptr %i.t, align 8, !noundef !4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val6 = load ptr, ptr %i.u, align 8            ; 6 uses
  %i.v = icmp eq ptr %.val5, null
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsj9PhBAIfT7c_11delete_post.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.w = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.w(ptr noundef nonnull %.val5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsj9PhBAIfT7c_11delete_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsj9PhBAIfT7c_11delete_post.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body10, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ah) #16
  br label %.body10

.body10:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit ], [ %i.ac, %bb.i ], [ %i.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsj9PhBAIfT7c_11delete_post(ptr noalias noundef align 8 dereferenceable(24) %0) #17
  resume { ptr, i32 } %.pn2

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !74, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.aj, align 8, !alias.scope !74, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.ak = icmp eq i64 %.val1.i, 0
  br i1 %i.ak, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsj9PhBAIfT7c_11delete_post.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsj9PhBAIfT7c_11delete_post.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !75, !noalias !74 ; 2 uses
  %i.an = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !75, !noalias !74, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ap = icmp eq i64 %i.am, %.val1.i
  br i1 %i.ap, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsj9PhBAIfT7c_11delete_post.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsj9PhBAIfT7c_11delete_post.exit
  %.val2.i = load i64, ptr %0, align 8, !range !5, !alias.scope !74, !noundef !4 ; 2 uses
  %i.aq = icmp eq i64 %.val2.i, 0
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsj9PhBAIfT7c_11delete_post.exit, label %bb.k

bb.k:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit.i
  %i.ar = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !74
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsj9PhBAIfT7c_11delete_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsj9PhBAIfT7c_11delete_post.exit.i, %bb.k
  ret void

bb.l:                                             ; preds = %.body, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueECsj9PhBAIfT7c_11delete_post(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !8, !noundef !4
  switch i32 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit [
    i32 1, label %bb.b
    i32 3, label %bb.c
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split: ; preds = %bb.c, %bb.b
  %.val3.sink = phi i64 [ %.val1, %bb.b ], [ %.val3, %bb.c ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val3.sink, i64 noundef 1) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val3, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt14BoundStatementECsj9PhBAIfT7c_11delete_post(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_14BoundStatementNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !alias.scope !81, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_6sqlite10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_9StatementNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_6sqlite10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !11, !alias.scope !82, !noundef !4
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_6sqlite10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit6

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_9StatementNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_6sqlite10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit6 unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_6sqlite10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post.exit: ; preds = %bb.b, %bb.c, %bb.g
  %.pn = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
end_hunk_0
begin_hunk_1_@_RNvCsj9PhBAIfT7c_11delete_post4main:bb.a
  %i.ce = load i64, ptr %i.l, align 8, !range !13, !noalias !233, !noundef !4 ; 2 uses
  %.not.i.i47.i.i.i.i.i = icmp eq i64 %i.ce, -1
  br i1 %.not.i.i47.i.i.i.i.i, label %bb.s, label %bb.bg

bb.r:                                             ; preds = %bb.t, %.noexc.i
  %lpad.thr_comm.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread72.i.i.i.i.i

bb.s:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !233
  %i.cf = load i8, ptr %i.m, align 1, !range !14, !noalias !233, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !233
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !232
  invoke fastcc void @_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsj9PhBAIfT7c_11delete_post(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %bb.r, !noalias !234

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !232
  invoke void %.val.i.i.i.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.p, ptr noundef nonnull %i.by, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
          to label %.noexc4.i unwind label %bb.ci, !noalias !226, !inline_history !142

.noexc4.i:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !232
  %i.ch = load i64, ptr %i.p, align 8, !range !235, !noalias !232, !noundef !4 ; 6 uses
  switch i64 %i.ch, label %bb.ae [
    i64 -3, label %bb.ad
    i64 -2, label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.thread88.i.i.i
  ]

bb.v:                                             ; preds = %bb.t
  %i.ci = load i64, ptr %i.u, align 8, !range !13, !noalias !232, !noundef !4 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.023.0.copyload.i.i.i.i.i = load i64, ptr %i.cj, align 8, !noalias !236 ; 6 uses
  br i1 %.not22.i.i.i.i.i, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %.sroa.424.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.424.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232 ; 4 uses
  %.sroa.525.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.525.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.525.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !232
  invoke void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB4_9Statement7prepare(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.424.0.copyload.i.i.i.i.i, i64 noundef %.sroa.525.0.copyload.i.i.i.i.i, i64 noundef 1, i64 undef, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i unwind label %bb.x, !noalias !237, !inline_history !143

bb.x:                                             ; preds = %bb.w
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i.i.i.i.i = add i64 %.sroa.023.0.copyload.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i, label %bb.y, label %.thread72.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.424.0.copyload.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i.i.i.i.i, i64 noundef %.sroa.023.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !237
  br label %.thread72.i.i.i.i.i

_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i: ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.cl = load i64, ptr %i.t, align 8, !range !13, !alias.scope !239, !noalias !232, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cl, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i
  %.sroa.16.0.copyload24.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !240, !noalias !236 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc51.i.i.i = trunc i64 %.sroa.16.0.copyload24.i.i.i to i8
  %.sroa.16.sroa.16.0.extract.shift59.i.i.i = lshr i64 %.sroa.16.0.copyload24.i.i.i, 8
  %.sroa.16.sroa.16.0.extract.trunc60.i.i.i = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift59.i.i.i to i56
  %.sroa.24.0..sroa_idx33.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.24.0.copyload34.i.i.i = load ptr, ptr %.sroa.24.0..sroa_idx33.i.i.i, align 8, !alias.scope !240, !noalias !236
  %.sroa.30.0..sroa_idx43.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.30.0.copyload44.i.i.i = load i64, ptr %.sroa.30.0..sroa_idx43.i.i.i, align 8, !alias.scope !240, !noalias !236
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i

bb.aa:                                            ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !239, !noalias !232, !nonnull !4, !noundef !4
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i

_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.16.sroa.16.sroa.0.0.i.i.i = phi i56 [ 0, %bb.aa ], [ %.sroa.16.sroa.16.0.extract.trunc60.i.i.i, %bb.z ] ; 2 uses
  %.sroa.16.sroa.0.0.i.i.i = phi i8 [ 0, %bb.aa ], [ %.sroa.16.sroa.0.0.extract.trunc51.i.i.i, %bb.z ] ; 2 uses
  %.sroa.30.0.i.i.i = phi i64 [ undef, %bb.aa ], [ %.sroa.30.0.copyload44.i.i.i, %bb.z ] ; 2 uses
  %.sroa.24.0.i.i.i = phi ptr [ %i.cn, %bb.aa ], [ %.sroa.24.0.copyload34.i.i.i, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !232
  %.0.val.off.i49.i.i.i.i.i = add i64 %.sroa.023.0.copyload.i.i.i.i.i, -1
  %switch.i50.i.i.i.i.i = icmp ult i64 %.0.val.off.i49.i.i.i.i.i, -2
  br i1 %switch.i50.i.i.i.i.i, label %bb.ab, label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.i.i.i

bb.ab:                                            ; preds = %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i.i.i.i.i, i64 noundef %.sroa.023.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !237
  br label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.i.i.i

bb.ac:                                            ; preds = %bb.v
  %.sroa.16.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.023.0.copyload.i.i.i.i.i to i8
  %.sroa.16.sroa.16.0.extract.shift.i.i.i = lshr i64 %.sroa.023.0.copyload.i.i.i.i.i, 8
  %.sroa.16.sroa.16.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift.i.i.i to i56
  %.sroa.24.0..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.24.0.copyload32.i.i.i = load ptr, ptr %.sroa.24.0..sroa_idx31.i.i.i, align 8, !noalias !236
  %.sroa.30.0..sroa_idx41.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.30.0.copyload42.i.i.i = load i64, ptr %.sroa.30.0..sroa_idx41.i.i.i, align 8, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !232
  br label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.thread.i.i.i

bb.ad:                                            ; preds = %.noexc4.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !232
  invoke fastcc void @_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsj9PhBAIfT7c_11delete_post(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ab)
          to label %bb.au unwind label %bb.at, !noalias !234

bb.ae:                                            ; preds = %.noexc4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !232
  invoke fastcc void @_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsj9PhBAIfT7c_11delete_post(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ab)
          to label %bb.af unwind label %.thread85.i.i.i.i.i, !noalias !234

_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.thread88.i.i.i: ; preds = %.noexc4.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !232, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !231
  br label %bb.bi

.thread85.i.i.i.i.i:                              ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.ct = load i64, ptr %i.r, align 8, !range !13, !noalias !232, !noundef !4 ; 4 uses
  %.not25.i.i.i.i.i = icmp eq i64 %i.ct, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.034.0.copyload.i.i.i.i.i = load i64, ptr %i.cu, align 8, !noalias !236 ; 6 uses
  br i1 %.not25.i.i.i.i.i, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %bb.af
  %.sroa.435.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.435.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.435.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232 ; 5 uses
  %.sroa.536.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.536.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.536.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !241
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.435.0.copyload.i.i.i.i.i, ptr %i.cv, align 8, !noalias !241
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.536.0.copyload.i.i.i.i.i, ptr %i.cw, align 8, !noalias !241
  store i32 3, ptr %i.c, align 8, !noalias !241
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !invariant.load !4, !noalias !242, !nonnull !4
  invoke void %i.cy(ptr noundef nonnull %.sroa.01.0.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i unwind label %bb.ah, !noalias !243, !inline_history !143

.noexc.i.i.i:                                     ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !241
  %i.cz = load i64, ptr %i.cb, align 8, !alias.scope !227, !noalias !244, !noundef !4
  %i.da = add i64 %i.cz, 1                        ; 2 uses
  store i64 %i.da, ptr %i.cb, align 8, !alias.scope !227, !noalias !244
  invoke void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB4_9Statement7prepare(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.435.0.copyload.i.i.i.i.i, i64 noundef %.sroa.536.0.copyload.i.i.i.i.i, i64 noundef 0, i64 %i.da, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i unwind label %bb.ah, !noalias !243, !inline_history !143

bb.ah:                                            ; preds = %.noexc.i.i.i, %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i57.i.i.i.i.i = add i64 %.sroa.034.0.copyload.i.i.i.i.i, -1
  %switch.i58.i.i.i.i.i = icmp ult i64 %.0.val.off.i57.i.i.i.i.i, -2
  br i1 %switch.i58.i.i.i.i.i, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.435.0.copyload.i.i.i.i.i, i64 noundef %.sroa.034.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !237
  br label %bb.as

_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !247, !noalias !248 ; 3 uses
  %.sroa.7.0..sroa_idx.i12.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.720.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.720.0.copyload.i.i.i.i = load i64, ptr %.sroa.720.0..sroa_idx.i.i.i.i, align 8, !alias.scope !247, !noalias !248 ; 2 uses
  %i.dc = load <2 x i64>, ptr %.sroa.7.0..sroa_idx.i12.i.i.i, align 8, !alias.scope !247, !noalias !248
  %.sroa.823.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.823.0.copyload.i.i.i.i = load ptr, ptr %.sroa.823.0..sroa_idx.i.i.i.i, align 8, !alias.scope !247, !noalias !248 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.9.0.copyload.i.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !247, !noalias !248
  %.sroa.928.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.928.0.copyload.i.i.i.i = load ptr, ptr %.sroa.928.0..sroa_idx.i.i.i.i, align 8, !alias.scope !247, !noalias !248 ; 4 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !247, !noalias !248 ; 2 uses
  %i.dd = load i64, ptr %i.q, align 8, !range !13, !alias.scope !246, !noalias !248, !noundef !4 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.dd, -1
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i
  %.sroa.410.0.copyload.i.i.i.i = load ptr, ptr %i.de, align 8, !alias.scope !246, !noalias !248
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.24.16.copyload.i.i.i = load ptr, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !alias.scope !249, !noalias !248 ; 3 uses
  %.sroa.30.16..sroa.511.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.30.16.copyload.i.i.i = load i64, ptr %.sroa.30.16..sroa.511.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !alias.scope !249, !noalias !248 ; 3 uses
  %i.df = ptrtoint ptr %.sroa.410.0.copyload.i.i.i.i to i64 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc55.i.i.i = trunc i64 %i.df to i8 ; 3 uses
  %.sroa.16.sroa.16.0.extract.shift67.i.i.i = lshr i64 %i.df, 8
  %.sroa.16.sroa.16.0.extract.trunc68.i.i.i = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift67.i.i.i to i56 ; 3 uses
  switch i64 %i.ch, label %bb.ak [
    i64 -1, label %_RINvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtBa_6sqlite10connection4stmt9StatementNtNtBa_6result5ErrorEINtB6_27StatementCallbackReturnTypeB1A_RNtNtB1E_3raw13RawConnectionE14register_cacheNCINvMB6_INtB6_14StatementCacheNtNtB1G_7backend6SqliteB1A_E33cached_statement_non_generic_implBY_B3h_NCINvB45_28cached_statement_non_genericBY_B3h_E0E0ECsj9PhBAIfT7c_11delete_post.exit.i.i.i
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i.i
  ]

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i) ], !noalias !250
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !251
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.dg = icmp eq i64 %.sroa.720.0.copyload.i.i.i.i, 0
  br i1 %i.dg, label %_RINvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtBa_6sqlite10connection4stmt9StatementNtNtBa_6result5ErrorEINtB6_27StatementCallbackReturnTypeB1A_RNtNtB1E_3raw13RawConnectionE14register_cacheNCINvMB6_INtB6_14StatementCacheNtNtB1G_7backend6SqliteB1A_E33cached_statement_non_generic_implBY_B3h_NCINvB45_28cached_statement_non_genericBY_B3h_E0E0ECsj9PhBAIfT7c_11delete_post.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.823.0.copyload.i.i.i.i) ], !noalias !250
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.823.0.copyload.i.i.i.i, i64 noundef %.sroa.720.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !251
  br label %_RINvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtBa_6sqlite10connection4stmt9StatementNtNtBa_6result5ErrorEINtB6_27StatementCallbackReturnTypeB1A_RNtNtB1E_3raw13RawConnectionE14register_cacheNCINvMB6_INtB6_14StatementCacheNtNtB1G_7backend6SqliteB1A_E33cached_statement_non_generic_implBY_B3h_NCINvB45_28cached_statement_non_genericBY_B3h_E0E0ECsj9PhBAIfT7c_11delete_post.exit.i.i.i

bb.am:                                            ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.928.0.copyload.i.i.i.i) ], !noalias !250
  %0 = load ptr, ptr %i.de, align 8, !alias.scope !246, !noalias !248, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !252), !noalias !250
  %.val.i.i.i13.i.i.i = load ptr, ptr %.sroa.928.0.copyload.i.i.i.i, align 8, !alias.scope !252, !noalias !253, !nonnull !4, !noundef !4 ; 8 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.928.0.copyload.i.i.i.i, i64 8
  %.val3.i.i.i.i.i.i = load i64, ptr %i.dh, align 8, !alias.scope !252, !noalias !253, !noundef !4 ; 4 uses
  %.sroa.0.07.i.i.i.i.i.i.i = and i64 %.val3.i.i.i.i.i.i, %.sroa.10.0.copyload.i.i.i.i ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i13.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.di, align 1, !noalias !254
  %i.dj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i, zeroinitializer
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %.not.i9.i.i.i.i.i.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not.i9.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !prof !255

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.am
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i.i.i, %bb.am ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.dk, %bb.am ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, %i.dm
  %i.do = and i64 %i.dn, %.val3.i.i.i.i.i.i       ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i.i.i13.i.i.i, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !256, !noundef !4 ; 2 uses
  %i.dr = icmp sgt i8 %i.dq, -1
  br i1 %i.dr, label %bb.an, label %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionNCINvB4_28cached_statement_non_genericB2Z_B40_E0E0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i, !prof !12

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.val72.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i13.i.i.i, align 16, !noalias !256
  %i.ds = icmp slt <16 x i8> %.val72.i.i.i.i.i.i.i.i, zeroinitializer
  %i.dt = bitcast <16 x i1> %i.ds to i16          ; 2 uses
  %.not.i6.i.i.i.i.i.i.i = icmp ne i16 %i.dt, 0
  %i.du = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dt, i1 true)
  %i.dv = zext nneg i16 %i.du to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i.i.i), !noalias !250
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i13.i.i.i, i64 %i.dv
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 1, !noalias !256
  br label %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionNCINvB4_28cached_statement_non_genericB2Z_B40_E0E0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.i, %bb.am ]
  %i.dw = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.am ]
  %i.dx = add i64 %i.dw, 16                       ; 2 uses
  %i.dy = add i64 %i.dx, %.sroa.0.010.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = and i64 %i.dy, %.val3.i.i.i.i.i.i ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i.i13.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dz, align 1, !noalias !254
  %i.ea = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i, zeroinitializer
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.eb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !prof !257

_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionNCINvB4_28cached_statement_non_genericB2Z_B40_E0E0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i: ; preds = %bb.an, %._crit_edge.i.i.i.i.i.i.i
  %i.ec = phi i8 [ %.pre.i.i.i.i.i.i, %bb.an ], [ %i.dq, %._crit_edge.i.i.i.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i.i.i = phi i64 [ %i.dv, %bb.an ], [ %i.do, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i.i.i13.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i.i.i
  %i.ee = lshr i64 %.sroa.10.0.copyload.i.i.i.i, 57
  %i.ef = trunc nuw nsw i64 %i.ee to i8           ; 2 uses
  %i.eg = add i64 %.sroa.0.0.i5.i.i.i.i.i.i.i, -16
  %i.eh = and i64 %i.eg, %.val3.i.i.i.i.i.i
  store i8 %i.ef, ptr %i.ed, align 1, !noalias !256
  %i.ei = getelementptr i8, ptr %.val.i.i.i13.i.i.i, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  store i8 %i.ef, ptr %i.ej, align 1, !noalias !256
  %i.ek = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i.i.i
  %i.el = getelementptr inbounds [56 x i8], ptr %.val.i.i.i13.i.i.i, i64 %i.ek ; 6 uses
  %i.em = and i8 %i.ec, 1
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.928.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.el, i64 -56
  store i64 %i.ch, ptr %i.ep, align 8, !noalias !258
  %.sroa.6.0..sroa_idx16.i.i.i.i = getelementptr inbounds i8, ptr %i.el, i64 -48
  store ptr %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx16.i.i.i.i, align 8, !noalias !258
  %.sroa.7.0..sroa_idx18.i.i.i.i = getelementptr inbounds i8, ptr %i.el, i64 -40
  store <2 x i64> %i.dc, ptr %.sroa.7.0..sroa_idx18.i.i.i.i, align 8, !noalias !258
  %.sroa.823.0..sroa_idx24.i.i.i.i = getelementptr inbounds i8, ptr %i.el, i64 -24
  store ptr %.sroa.823.0.copyload.i.i.i.i, ptr %.sroa.823.0..sroa_idx24.i.i.i.i, align 8, !noalias !258
  %.sroa.9.0..sroa_idx26.i.i.i.i = getelementptr inbounds i8, ptr %i.el, i64 -16
  store i64 %.sroa.9.0.copyload.i.i.i.i, ptr %.sroa.9.0..sroa_idx26.i.i.i.i, align 8, !noalias !258
  %.sroa.4.0..sroa_idx.i.i14.i.i.i = getelementptr inbounds i8, ptr %i.el, i64 -8 ; 2 uses
  store ptr %0, ptr %.sroa.4.0..sroa_idx.i.i14.i.i.i, align 8, !noalias !259
  %i.eq = load <2 x i64>, ptr %i.eo, align 8, !alias.scope !252, !noalias !253
  %i.er = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.en, i64 0
  %i.es = sub <2 x i64> %i.eq, %i.er
  store <2 x i64> %i.es, ptr %i.eo, align 8, !alias.scope !252, !noalias !253
  br label %_RINvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtBa_6sqlite10connection4stmt9StatementNtNtBa_6result5ErrorEINtB6_27StatementCallbackReturnTypeB1A_RNtNtB1E_3raw13RawConnectionE14register_cacheNCINvMB6_INtB6_14StatementCacheNtNtB1G_7backend6SqliteB1A_E33cached_statement_non_generic_implBY_B3h_NCINvB45_28cached_statement_non_genericBY_B3h_E0E0ECsj9PhBAIfT7c_11delete_post.exit.i.i.i

_RINvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtBa_6sqlite10connection4stmt9StatementNtNtBa_6result5ErrorEINtB6_27StatementCallbackReturnTypeB1A_RNtNtB1E_3raw13RawConnectionE14register_cacheNCINvMB6_INtB6_14StatementCacheNtNtB1G_7backend6SqliteB1A_E33cached_statement_non_generic_implBY_B3h_NCINvB45_28cached_statement_non_genericBY_B3h_E0E0ECsj9PhBAIfT7c_11delete_post.exit.i.i.i: ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionNCINvB4_28cached_statement_non_genericB2Z_B40_E0E0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i, %bb.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i.i, %bb.aj
  %.sroa.16.sroa.16.sroa.0.3.i.i.i = phi i56 [ 0, %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionNCINvB4_28cached_statement_non_genericB2Z_B40_E0E0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i ], [ %.sroa.16.sroa.16.0.extract.trunc68.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i.i ], [ %.sroa.16.sroa.16.0.extract.trunc68.i.i.i, %bb.al ], [ %.sroa.16.sroa.16.0.extract.trunc68.i.i.i, %bb.aj ] ; 2 uses
  %.sroa.16.sroa.0.3.i.i.i = phi i8 [ 1, %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionNCINvB4_28cached_statement_non_genericB2Z_B40_E0E0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i ], [ %.sroa.16.sroa.0.0.extract.trunc55.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i.i ], [ %.sroa.16.sroa.0.0.extract.trunc55.i.i.i, %bb.al ], [ %.sroa.16.sroa.0.0.extract.trunc55.i.i.i, %bb.aj ] ; 2 uses
  %.sroa.30.3.i.i.i = phi i64 [ undef, %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionNCINvB4_28cached_statement_non_genericB2Z_B40_E0E0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i ], [ %.sroa.30.16.copyload.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i.i ], [ %.sroa.30.16.copyload.i.i.i, %bb.al ], [ %.sroa.30.16.copyload.i.i.i, %bb.aj ] ; 2 uses
  %.sroa.24.3.i.i.i = phi ptr [ %.sroa.4.0..sroa_idx.i.i14.i.i.i, %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionNCINvB4_28cached_statement_non_genericB2Z_B40_E0E0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i ], [ %.sroa.24.16.copyload.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i.i ], [ %.sroa.24.16.copyload.i.i.i, %bb.al ], [ %.sroa.24.16.copyload.i.i.i, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !232
  %.0.val.off.i61.i.i.i.i.i = add i64 %.sroa.034.0.copyload.i.i.i.i.i, -1
  %switch.i62.i.i.i.i.i = icmp ult i64 %.0.val.off.i61.i.i.i.i.i, -2
  br i1 %switch.i62.i.i.i.i.i, label %bb.ao, label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.i.i.i

bb.ao:                                            ; preds = %_RINvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtBa_6sqlite10connection4stmt9StatementNtNtBa_6result5ErrorEINtB6_27StatementCallbackReturnTypeB1A_RNtNtB1E_3raw13RawConnectionE14register_cacheNCINvMB6_INtB6_14StatementCacheNtNtB1G_7backend6SqliteB1A_E33cached_statement_non_generic_implBY_B3h_NCINvB45_28cached_statement_non_genericBY_B3h_E0E0ECsj9PhBAIfT7c_11delete_post.exit.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.435.0.copyload.i.i.i.i.i, i64 noundef %.sroa.034.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !237
  br label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.i.i.i

bb.ap:                                            ; preds = %bb.af
  %.sroa.16.sroa.0.0.extract.trunc54.i.i.i = trunc i64 %.sroa.034.0.copyload.i.i.i.i.i to i8 ; 3 uses
  %.sroa.16.sroa.16.0.extract.shift65.i.i.i = lshr i64 %.sroa.034.0.copyload.i.i.i.i.i, 8
  %.sroa.16.sroa.16.0.extract.trunc66.i.i.i = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift65.i.i.i to i56 ; 3 uses
  %.sroa.24.0..sroa_idx39.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.24.0.copyload40.i.i.i = load ptr, ptr %.sroa.24.0..sroa_idx39.i.i.i, align 8, !noalias !236 ; 3 uses
  %.sroa.30.0..sroa_idx49.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.30.0.copyload50.i.i.i = load i64, ptr %.sroa.30.0..sroa_idx49.i.i.i, align 8, !noalias !236 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !232
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261), !noalias !262
  call void @llvm.experimental.noalias.scope.decl(metadata !263), !noalias !262
  switch i64 %i.ch, label %bb.aq [
    i64 -1, label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.thread.i.i.i
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.et, align 8, !alias.scope !264, !noalias !232, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !265
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val2.i.i.i2.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !264, !noalias !232 ; 2 uses
  %i.ev = icmp eq i64 %.val2.i.i.i2.i.i.i.i, 0
  br i1 %i.ev, label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.thread.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val3.i.i.i3.i.i.i.i = load ptr, ptr %i.ew, align 8, !alias.scope !264, !noalias !232, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i3.i.i.i.i, i64 noundef %.val2.i.i.i2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !265
  br label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.thread.i.i.i

bb.as:                                            ; preds = %bb.ai, %bb.ah, %.thread85.i.i.i.i.i
  %.pn88.i.i.i.i.i = phi { ptr, i32 } [ %i.cs, %.thread85.i.i.i.i.i ], [ %i.db, %bb.ai ], [ %i.db, %bb.ah ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map11VacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1I_6sqlite7backend6SqliteENtNtNtB2T_10connection4stmt9StatementEECsj9PhBAIfT7c_11delete_post(ptr noalias noundef align 8 dereferenceable(64) %i.p) #17, !noalias !237
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsj9PhBAIfT7c_11delete_post.exit70.i.i.i.i.i: ; preds = %bb.ax, %bb.aw, %bb.at
  %.pn30.i.i.i.i.i = phi { ptr, i32 } [ %i.ex, %bb.at ], [ %i.fa, %bb.aw ], [ %i.fa, %bb.ax ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsj9PhBAIfT7c_11delete_post(ptr noalias noundef align 8 dereferenceable(48) %i.co) #17, !noalias !237
  br label %.body.i

bb.at:                                            ; preds = %bb.ad
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsj9PhBAIfT7c_11delete_post.exit70.i.i.i.i.i

bb.au:                                            ; preds = %bb.ad
  %i.ey = load i64, ptr %i.o, align 8, !range !13, !noalias !232, !noundef !4 ; 4 uses
  %.not28.i.i.i.i.i = icmp eq i64 %i.ey, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.042.0.copyload.i.i.i.i.i = load i64, ptr %i.ez, align 8, !noalias !236 ; 6 uses
  br i1 %.not28.i.i.i.i.i, label %bb.av, label %bb.bd

bb.av:                                            ; preds = %bb.au
  %.sroa.443.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.443.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.443.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232 ; 4 uses
  %.sroa.544.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.544.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.544.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !232
  invoke void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB4_9Statement7prepare(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.443.0.copyload.i.i.i.i.i, i64 noundef %.sroa.544.0.copyload.i.i.i.i.i, i64 noundef 1, i64 undef, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit66.i.i.i.i.i unwind label %bb.aw, !noalias !237, !inline_history !143

bb.aw:                                            ; preds = %bb.av
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i67.i.i.i.i.i = add i64 %.sroa.042.0.copyload.i.i.i.i.i, -1
  %switch.i68.i.i.i.i.i = icmp ult i64 %.0.val.off.i67.i.i.i.i.i, -2
  br i1 %switch.i68.i.i.i.i.i, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsj9PhBAIfT7c_11delete_post.exit70.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.443.0.copyload.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.443.0.copyload.i.i.i.i.i, i64 noundef %.sroa.042.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !237
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsj9PhBAIfT7c_11delete_post.exit70.i.i.i.i.i

_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit66.i.i.i.i.i: ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.fb = load i64, ptr %i.n, align 8, !range !13, !alias.scope !267, !noalias !232, !noundef !4 ; 4 uses
  %.not.i71.i.i.i.i.i = icmp eq i64 %i.fb, -1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %.not.i71.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit66.i.i.i.i.i
  %.sroa.16.0.copyload28.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !268, !noalias !236 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc53.i.i.i = trunc i64 %.sroa.16.0.copyload28.i.i.i to i8
  %.sroa.16.sroa.16.0.extract.shift63.i.i.i = lshr i64 %.sroa.16.0.copyload28.i.i.i, 8
  %.sroa.16.sroa.16.0.extract.trunc64.i.i.i = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift63.i.i.i to i56
  %.sroa.24.0..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.24.0.copyload38.i.i.i = load ptr, ptr %.sroa.24.0..sroa_idx37.i.i.i, align 8, !alias.scope !268, !noalias !236
  %.sroa.30.0..sroa_idx47.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.30.0.copyload48.i.i.i = load i64, ptr %.sroa.30.0..sroa_idx47.i.i.i, align 8, !alias.scope !268, !noalias !236
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit72.i.i.i.i.i

bb.az:                                            ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit66.i.i.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !267, !noalias !232, !nonnull !4, !noundef !4
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit72.i.i.i.i.i

_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit72.i.i.i.i.i: ; preds = %bb.az, %bb.ay
end_hunk_1
