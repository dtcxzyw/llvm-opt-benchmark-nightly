inline.NumInlined: 7616
inline.NumDeleted: 3207
begin_hunk_0
@_ZTIN6duckdb15BinderExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15BinderExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb15BinderExceptionE = linkonce_odr constant [27 x i8] c"N6duckdb15BinderExceptionE\00", comdat, align 1
@.str.97 = private unnamed_addr constant [104 x i8] c"Failed to create view from SQL string - \22%s\22 - statement did not contain a single CREATE VIEW statement\00", align 1
@.str.98 = private unnamed_addr constant [92 x i8] c"Failed to create view from SQL string - \22%s\22 - view did not contain a CREATE VIEW statement\00", align 1
@.str.99 = private unnamed_addr constant [87 x i8] c"Attempting to serialize column comments using the legacy format, but view is not bound\00", align 1
@.str.100 = private unnamed_addr constant [85 x i8] c"While serializing comments for view \22%s\22 - did not find column \22%s\22 in list of names\00", align 1
@.str.101 = private unnamed_addr constant [75 x i8] c"Either column_comments or column_comments_map should be provided, not both\00", align 1
@_ZTIN6duckdb22SerializationExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb22SerializationExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb22SerializationExceptionE = linkonce_odr constant [34 x i8] c"N6duckdb22SerializationExceptionE\00", comdat, align 1
@_ZTVN6duckdb10DetachInfoE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.102 = private unnamed_addr constant [16 x i8] c"DETACH DATABASE\00", align 1
@_ZTVN6duckdb8DropInfoE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6duckdb8DropInfoE, ptr @_ZN6duckdb8DropInfoD2Ev, ptr @_ZN6duckdb8DropInfoD0Ev, ptr @_ZNK6duckdb8DropInfo9SerializeERNS_10SerializerE, ptr @_ZNK6duckdb8DropInfo4CopyEv] }, align 8
@.str.103 = private unnamed_addr constant [20 x i8] c"DEALLOCATE PREPARE \00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"DROP\00", align 1
@_ZTVN6duckdb19ExtraDropSecretInfoE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6duckdb19ExtraDropSecretInfoE, ptr @_ZN6duckdb19ExtraDropSecretInfoD2Ev, ptr @_ZN6duckdb19ExtraDropSecretInfoD0Ev, ptr @_ZNK6duckdb19ExtraDropSecretInfo4CopyEv, ptr @_ZNK6duckdb19ExtraDropSecretInfo9SerializeERNS_10SerializerE] }, align 8
@.str.105 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c" FROM \00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"INDEX\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"SCHEMA\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"MACRO TABLE\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"SECRET\00", align 1
@.str.113 = private unnamed_addr constant [70 x i8] c"ParseInfo::TypeToString for CatalogType with type: %s not implemented\00", align 1
@_ZTVN6duckdb15TransactionInfoE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.114 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@.str.117 = private unnamed_addr constant [64 x i8] c"ToString for TransactionStatement with type: %s not implemented\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c" READ ONLY\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c" READ WRITE\00", align 1
@.str.120 = private unnamed_addr constant [73 x i8] c"ToString for TransactionStatement with modifier type: %s not implemented\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"PRAGMA\00", align 1
@_ZTVN6duckdb10VacuumInfoE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.122 = private unnamed_addr constant [7 x i8] c"VACUUM\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c" ANALYZE\00", align 1
@_ZTIN6duckdb9AlterInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9AlterInfoE, ptr @_ZTIN6duckdb9ParseInfoE }, align 8
@_ZTSN6duckdb9AlterInfoE = constant [20 x i8] c"N6duckdb9AlterInfoE\00", align 1
@_ZTIN6duckdb9ParseInfoE = external constant ptr
@_ZTIN6duckdb23AlterScalarFunctionInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb23AlterScalarFunctionInfoE, ptr @_ZTIN6duckdb9AlterInfoE }, align 8
@_ZTSN6duckdb23AlterScalarFunctionInfoE = constant [35 x i8] c"N6duckdb23AlterScalarFunctionInfoE\00", align 1
@_ZTIN6duckdb29AddScalarFunctionOverloadInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb29AddScalarFunctionOverloadInfoE, ptr @_ZTIN6duckdb23AlterScalarFunctionInfoE }, align 8
@_ZTSN6duckdb29AddScalarFunctionOverloadInfoE = constant [41 x i8] c"N6duckdb29AddScalarFunctionOverloadInfoE\00", align 1
@_ZTIN6duckdb22AlterTableFunctionInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb22AlterTableFunctionInfoE, ptr @_ZTIN6duckdb9AlterInfoE }, align 8
@_ZTSN6duckdb22AlterTableFunctionInfoE = constant [34 x i8] c"N6duckdb22AlterTableFunctionInfoE\00", align 1
@_ZTIN6duckdb28AddTableFunctionOverloadInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb28AddTableFunctionOverloadInfoE, ptr @_ZTIN6duckdb22AlterTableFunctionInfoE }, align 8
@_ZTSN6duckdb28AddTableFunctionOverloadInfoE = constant [40 x i8] c"N6duckdb28AddTableFunctionOverloadInfoE\00", align 1
@_ZTIN6duckdb19ChangeOwnershipInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb19ChangeOwnershipInfoE, ptr @_ZTIN6duckdb9AlterInfoE }, align 8
@_ZTSN6duckdb19ChangeOwnershipInfoE = constant [31 x i8] c"N6duckdb19ChangeOwnershipInfoE\00", align 1
@_ZTIN6duckdb14SetCommentInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14SetCommentInfoE, ptr @_ZTIN6duckdb9AlterInfoE }, align 8
@_ZTSN6duckdb14SetCommentInfoE = constant [26 x i8] c"N6duckdb14SetCommentInfoE\00", align 1
@_ZTIN6duckdb14AlterTableInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14AlterTableInfoE, ptr @_ZTIN6duckdb9AlterInfoE }, align 8
@_ZTSN6duckdb14AlterTableInfoE = constant [26 x i8] c"N6duckdb14AlterTableInfoE\00", align 1
@_ZTIN6duckdb16RenameColumnInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb16RenameColumnInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb16RenameColumnInfoE = constant [28 x i8] c"N6duckdb16RenameColumnInfoE\00", align 1
@_ZTIN6duckdb15RenameFieldInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15RenameFieldInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb15RenameFieldInfoE = constant [27 x i8] c"N6duckdb15RenameFieldInfoE\00", align 1
@_ZTIN6duckdb15RenameTableInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15RenameTableInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb15RenameTableInfoE = constant [27 x i8] c"N6duckdb15RenameTableInfoE\00", align 1
@_ZTIN6duckdb13AddColumnInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb13AddColumnInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb13AddColumnInfoE = constant [25 x i8] c"N6duckdb13AddColumnInfoE\00", align 1
@_ZTIN6duckdb12AddFieldInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb12AddFieldInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb12AddFieldInfoE = constant [24 x i8] c"N6duckdb12AddFieldInfoE\00", align 1
@_ZTIN6duckdb16RemoveColumnInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb16RemoveColumnInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb16RemoveColumnInfoE = constant [28 x i8] c"N6duckdb16RemoveColumnInfoE\00", align 1
@_ZTIN6duckdb15RemoveFieldInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15RemoveFieldInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb15RemoveFieldInfoE = constant [27 x i8] c"N6duckdb15RemoveFieldInfoE\00", align 1
@_ZTIN6duckdb20ChangeColumnTypeInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb20ChangeColumnTypeInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb20ChangeColumnTypeInfoE = constant [32 x i8] c"N6duckdb20ChangeColumnTypeInfoE\00", align 1
@_ZTIN6duckdb14SetDefaultInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14SetDefaultInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb14SetDefaultInfoE = constant [26 x i8] c"N6duckdb14SetDefaultInfoE\00", align 1
@_ZTIN6duckdb14SetNotNullInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14SetNotNullInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb14SetNotNullInfoE = constant [26 x i8] c"N6duckdb14SetNotNullInfoE\00", align 1
@_ZTIN6duckdb15DropNotNullInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15DropNotNullInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb15DropNotNullInfoE = constant [27 x i8] c"N6duckdb15DropNotNullInfoE\00", align 1
@_ZTIN6duckdb19AlterForeignKeyInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb19AlterForeignKeyInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb19AlterForeignKeyInfoE = constant [31 x i8] c"N6duckdb19AlterForeignKeyInfoE\00", align 1
@_ZTIN6duckdb13AlterViewInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb13AlterViewInfoE, ptr @_ZTIN6duckdb9AlterInfoE }, align 8
@_ZTSN6duckdb13AlterViewInfoE = constant [25 x i8] c"N6duckdb13AlterViewInfoE\00", align 1
@_ZTIN6duckdb14RenameViewInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14RenameViewInfoE, ptr @_ZTIN6duckdb13AlterViewInfoE }, align 8
@_ZTSN6duckdb14RenameViewInfoE = constant [26 x i8] c"N6duckdb14RenameViewInfoE\00", align 1
@_ZTIN6duckdb17AddConstraintInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17AddConstraintInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb17AddConstraintInfoE = constant [29 x i8] c"N6duckdb17AddConstraintInfoE\00", align 1
@_ZTIN6duckdb20SetPartitionedByInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb20SetPartitionedByInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb20SetPartitionedByInfoE = constant [32 x i8] c"N6duckdb20SetPartitionedByInfoE\00", align 1
@_ZTIN6duckdb15SetSortedByInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15SetSortedByInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb15SetSortedByInfoE = constant [27 x i8] c"N6duckdb15SetSortedByInfoE\00", align 1
@_ZTIN6duckdb19SetTableOptionsInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb19SetTableOptionsInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb19SetTableOptionsInfoE = constant [31 x i8] c"N6duckdb19SetTableOptionsInfoE\00", align 1
@_ZTIN6duckdb21ResetTableOptionsInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb21ResetTableOptionsInfoE, ptr @_ZTIN6duckdb14AlterTableInfoE }, align 8
@_ZTSN6duckdb21ResetTableOptionsInfoE = constant [33 x i8] c"N6duckdb21ResetTableOptionsInfoE\00", align 1
@_ZTIN6duckdb17AlterDatabaseInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17AlterDatabaseInfoE, ptr @_ZTIN6duckdb9AlterInfoE }, align 8
@_ZTSN6duckdb17AlterDatabaseInfoE = constant [29 x i8] c"N6duckdb17AlterDatabaseInfoE\00", align 1
@_ZTIN6duckdb18RenameDatabaseInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb18RenameDatabaseInfoE, ptr @_ZTIN6duckdb17AlterDatabaseInfoE }, align 8
@_ZTSN6duckdb18RenameDatabaseInfoE = constant [30 x i8] c"N6duckdb18RenameDatabaseInfoE\00", align 1
@_ZTIN6duckdb20SetColumnCommentInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb20SetColumnCommentInfoE, ptr @_ZTIN6duckdb9AlterInfoE }, align 8
@_ZTSN6duckdb20SetColumnCommentInfoE = constant [32 x i8] c"N6duckdb20SetColumnCommentInfoE\00", align 1
@_ZTIN6duckdb15CreateIndexInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15CreateIndexInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, align 8
@_ZTSN6duckdb15CreateIndexInfoE = constant [27 x i8] c"N6duckdb15CreateIndexInfoE\00", align 1
@_ZTIN6duckdb10CreateInfoE = external constant ptr
@_ZTIN6duckdb27CreateAggregateFunctionInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb27CreateAggregateFunctionInfoE, ptr @_ZTIN6duckdb18CreateFunctionInfoE }, align 8
@_ZTSN6duckdb27CreateAggregateFunctionInfoE = constant [39 x i8] c"N6duckdb27CreateAggregateFunctionInfoE\00", align 1
@_ZTIN6duckdb18CreateFunctionInfoE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb18CreateFunctionInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, comdat, align 8
@_ZTSN6duckdb18CreateFunctionInfoE = linkonce_odr constant [30 x i8] c"N6duckdb18CreateFunctionInfoE\00", comdat, align 1
@_ZTIN6duckdb19CreateCollationInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb19CreateCollationInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, align 8
@_ZTSN6duckdb19CreateCollationInfoE = constant [31 x i8] c"N6duckdb19CreateCollationInfoE\00", align 1
@_ZTIN6duckdb26CreateCoordinateSystemInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb26CreateCoordinateSystemInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, align 8
@_ZTSN6duckdb26CreateCoordinateSystemInfoE = constant [38 x i8] c"N6duckdb26CreateCoordinateSystemInfoE\00", align 1
@_ZTIN6duckdb22CreateCopyFunctionInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb22CreateCopyFunctionInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, align 8
@_ZTSN6duckdb22CreateCopyFunctionInfoE = constant [34 x i8] c"N6duckdb22CreateCopyFunctionInfoE\00", align 1
@_ZTIN6duckdb15CreateMacroInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15CreateMacroInfoE, ptr @_ZTIN6duckdb18CreateFunctionInfoE }, align 8
@_ZTSN6duckdb15CreateMacroInfoE = constant [27 x i8] c"N6duckdb15CreateMacroInfoE\00", align 1
@_ZTIN6duckdb24CreatePragmaFunctionInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb24CreatePragmaFunctionInfoE, ptr @_ZTIN6duckdb18CreateFunctionInfoE }, align 8
@_ZTSN6duckdb24CreatePragmaFunctionInfoE = constant [36 x i8] c"N6duckdb24CreatePragmaFunctionInfoE\00", align 1
@_ZTIN6duckdb16CreateSecretInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb16CreateSecretInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, align 8
@_ZTSN6duckdb16CreateSecretInfoE = constant [28 x i8] c"N6duckdb16CreateSecretInfoE\00", align 1
@_ZTIN6duckdb18CreateSequenceInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb18CreateSequenceInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, align 8
@_ZTSN6duckdb18CreateSequenceInfoE = constant [30 x i8] c"N6duckdb18CreateSequenceInfoE\00", align 1
@_ZTIN6duckdb24CreateScalarFunctionInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb24CreateScalarFunctionInfoE, ptr @_ZTIN6duckdb18CreateFunctionInfoE }, align 8
@_ZTSN6duckdb24CreateScalarFunctionInfoE = constant [36 x i8] c"N6duckdb24CreateScalarFunctionInfoE\00", align 1
@_ZTIN6duckdb23CreateTableFunctionInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb23CreateTableFunctionInfoE, ptr @_ZTIN6duckdb18CreateFunctionInfoE }, align 8
@_ZTSN6duckdb23CreateTableFunctionInfoE = constant [35 x i8] c"N6duckdb23CreateTableFunctionInfoE\00", align 1
@_ZTIN6duckdb15CreateTableInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15CreateTableInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, align 8
@_ZTSN6duckdb15CreateTableInfoE = constant [27 x i8] c"N6duckdb15CreateTableInfoE\00", align 1
@_ZTIN6duckdb14CreateTypeInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14CreateTypeInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, align 8
@_ZTSN6duckdb14CreateTypeInfoE = constant [26 x i8] c"N6duckdb14CreateTypeInfoE\00", align 1
@_ZTIN6duckdb14CreateViewInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14CreateViewInfoE, ptr @_ZTIN6duckdb10CreateInfoE }, align 8
@_ZTSN6duckdb14CreateViewInfoE = constant [26 x i8] c"N6duckdb14CreateViewInfoE\00", align 1
@_ZTIN6duckdb8DropInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb8DropInfoE, ptr @_ZTIN6duckdb9ParseInfoE }, align 8
@_ZTSN6duckdb8DropInfoE = constant [19 x i8] c"N6duckdb8DropInfoE\00", align 1
@_ZTIN6duckdb19ExtraDropSecretInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb19ExtraDropSecretInfoE, ptr @_ZTIN6duckdb13ExtraDropInfoE }, align 8
@_ZTSN6duckdb19ExtraDropSecretInfoE = constant [31 x i8] c"N6duckdb19ExtraDropSecretInfoE\00", align 1
@_ZTIN6duckdb13ExtraDropInfoE = external constant ptr
@_ZTVN6duckdb10CreateInfoE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTIZN6duckdb24ParsedExpressionIterator22VisitExpressionMutableINS_19ColumnRefExpressionEEEvRNS_16ParsedExpressionERKSt8functionIFvRT_EEEUlS4_E_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN6duckdb24ParsedExpressionIterator22VisitExpressionMutableINS_19ColumnRefExpressionEEEvRNS_16ParsedExpressionERKSt8functionIFvRT_EEEUlS4_E_ }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSZN6duckdb24ParsedExpressionIterator22VisitExpressionMutableINS_19ColumnRefExpressionEEEvRNS_16ParsedExpressionERKSt8functionIFvRT_EEEUlS4_E_ = linkonce_odr constant [141 x i8] c"ZN6duckdb24ParsedExpressionIterator22VisitExpressionMutableINS_19ColumnRefExpressionEEEvRNS_16ParsedExpressionERKSt8functionIFvRT_EEEUlS4_E_\00", comdat, align 1
@.str.124 = private unnamed_addr constant [50 x i8] c"Attempted to dereference unique_ptr that is NULL!\00", align 1
@"_ZTIZN6duckdbL33RemoveTableQualificationRecursiveERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6duckdbL33RemoveTableQualificationRecursiveERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0" }, align 8
@"_ZTSZN6duckdbL33RemoveTableQualificationRecursiveERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0" = internal constant [174 x i8] c"ZN6duckdbL33RemoveTableQualificationRecursiveERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0\00", align 1
@_ZTVN6duckdb17AggregateFunctionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6duckdb17AggregateFunctionE, ptr @_ZN6duckdb17AggregateFunctionD2Ev, ptr @_ZN6duckdb17AggregateFunctionD0Ev, ptr @_ZNK6duckdb18BaseScalarFunction8ToStringB5cxx11Ev] }, comdat, align 8
@_ZTIN6duckdb17AggregateFunctionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17AggregateFunctionE, ptr @_ZTIN6duckdb18BaseScalarFunctionE }, comdat, align 8
@_ZTSN6duckdb17AggregateFunctionE = linkonce_odr constant [29 x i8] c"N6duckdb17AggregateFunctionE\00", comdat, align 1
@_ZTIN6duckdb18BaseScalarFunctionE = external constant ptr
@_ZTVN6duckdb18BaseScalarFunctionE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN6duckdb14SimpleFunctionE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN6duckdb8FunctionE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTIN6duckdb8FunctionE = external constant ptr
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN6duckdb14ScalarFunctionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6duckdb14ScalarFunctionE, ptr @_ZN6duckdb14ScalarFunctionD2Ev, ptr @_ZN6duckdb14ScalarFunctionD0Ev, ptr @_ZNK6duckdb18BaseScalarFunction8ToStringB5cxx11Ev] }, comdat, align 8
@_ZTIN6duckdb14ScalarFunctionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14ScalarFunctionE, ptr @_ZTIN6duckdb18BaseScalarFunctionE }, comdat, align 8
@_ZTSN6duckdb14ScalarFunctionE = linkonce_odr constant [26 x i8] c"N6duckdb14ScalarFunctionE\00", comdat, align 1
@_ZTVN6duckdb12CopyFunctionE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6duckdb12CopyFunctionE, ptr @_ZN6duckdb12CopyFunctionD2Ev, ptr @_ZN6duckdb12CopyFunctionD0Ev] }, comdat, align 8
@_ZTIN6duckdb12CopyFunctionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb12CopyFunctionE, ptr @_ZTIN6duckdb8FunctionE }, comdat, align 8
@_ZTSN6duckdb12CopyFunctionE = linkonce_odr constant [24 x i8] c"N6duckdb12CopyFunctionE\00", comdat, align 1
@_ZTVN6duckdb14PragmaFunctionE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN6duckdb28SimpleNamedParameterFunctionE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTIN6duckdb28SimpleNamedParameterFunctionE = external constant ptr
@_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 128 to ptr), ptr null, ptr @_ZTIN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev, ptr @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev], [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZThn16_N6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev, ptr @_ZThn16_N6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev], [5 x ptr] [ptr inttoptr (i64 -128 to ptr), ptr inttoptr (i64 -128 to ptr), ptr @_ZTIN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZTv0_n24_N6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev, ptr @_ZTv0_n24_N6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev] }, comdat, align 8
@_ZTTN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE = linkonce_odr unnamed_addr constant [13 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Sd, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE16_So, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE16_So, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Sd, i32 0, i32 2, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Sd, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i32 0, i32 2, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i32 0, i32 2, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 128 to ptr), ptr null, ptr @_ZTINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev, ptr @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev], [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZThn16_NSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev, ptr @_ZThn16_NSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev], [5 x ptr] [ptr inttoptr (i64 -128 to ptr), ptr inttoptr (i64 -128 to ptr), ptr @_ZTINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZTv0_n24_NSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev, ptr @_ZTv0_n24_NSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev] }, comdat, align 8
@_ZTINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external constant ptr
@_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Sd = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 128 to ptr), ptr null, ptr @_ZTISd, ptr @_ZNSdD1Ev, ptr @_ZNSdD0Ev], [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTISd, ptr @_ZThn16_NSdD1Ev, ptr @_ZThn16_NSdD0Ev], [5 x ptr] [ptr inttoptr (i64 -128 to ptr), ptr inttoptr (i64 -128 to ptr), ptr @_ZTISd, ptr @_ZTv0_n24_NSdD1Ev, ptr @_ZTv0_n24_NSdD0Ev] }, comdat, align 8
@_ZTISd = external constant ptr
@_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 128 to ptr), ptr null, ptr @_ZTISi, ptr @_ZNSiD1Ev, ptr @_ZNSiD0Ev], [5 x ptr] [ptr inttoptr (i64 -128 to ptr), ptr inttoptr (i64 -128 to ptr), ptr @_ZTISi, ptr @_ZTv0_n24_NSiD1Ev, ptr @_ZTv0_n24_NSiD0Ev] }, comdat, align 8
@_ZTISi = external constant ptr
@_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE16_So = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr null, ptr @_ZTISo, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -112 to ptr), ptr inttoptr (i64 -112 to ptr), ptr @_ZTISo, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, comdat, align 8
@_ZTISo = external constant ptr
@_ZTIN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZTINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE }, comdat, align 8
@_ZTSN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE = linkonce_odr constant [56 x i8] c"N6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE\00", comdat, align 1
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN6duckdb13TableFunctionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6duckdb13TableFunctionE, ptr @_ZN6duckdb13TableFunctionD2Ev, ptr @_ZN6duckdb13TableFunctionD0Ev, ptr @_ZNK6duckdb28SimpleNamedParameterFunction8ToStringB5cxx11Ev] }, comdat, align 8
@_ZTIN6duckdb13TableFunctionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb13TableFunctionE, ptr @_ZTIN6duckdb28SimpleNamedParameterFunctionE }, comdat, align 8
@_ZTSN6duckdb13TableFunctionE = linkonce_odr constant [25 x i8] c"N6duckdb13TableFunctionE\00", comdat, align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"INSTALL\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"FORCE INSTALL\00", align 1
@.str.128 = private unnamed_addr constant [52 x i8] c"ToString for LoadType with type: %s not implemented\00", align 1
@.str.129 = private unnamed_addr constant [57 x i8] c"optional_idx cannot be initialized with an invalid index\00", align 1
@.str.130 = private unnamed_addr constant [63 x i8] c"Attempting to get the index of an optional_idx that is not set\00", align 1
@.str.131 = private unnamed_addr constant [57 x i8] c"ToString not supported for this type of CreateInfo: '%s'\00", align 1
@.str.132 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.136 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.137 = private unnamed_addr constant [56 x i8] c"Attempted to access index %ld within vector of size %ld\00", align 1
@.str.138 = private unnamed_addr constant [61 x i8] c"Failed to cast constraint to type - constraint type mismatch\00", align 1
@.str.139 = private unnamed_addr constant [62 x i8] c"Attempting to dereference an optional pointer that is not set\00", align 1
@_ZTVN6duckdb10AttachInfoE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZStL19piecewise_construct = internal constant %"struct.std::piecewise_construct_t" zeroinitializer, align 1
@.str.140 = private unnamed_addr constant [61 x i8] c"Failed to cast expression to type - expression type mismatch\00", align 1
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@.str.141 = private unnamed_addr constant [59 x i8] c"Failed to cast statement to type - statement type mismatch\00", align 1
@.str.142 = private unnamed_addr constant [50 x i8] c"Attempted to dereference shared_ptr that is NULL!\00", align 1
@.str.143 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.144 = private unnamed_addr constant [76 x i8] c"Information loss on integer cast: value %d outside of target range [%d, %d]\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"%s is not an %s\00", align 1
@_ZN6duckdb17TableCatalogEntry4NameE = external constant ptr, align 8
@_ZTIN6duckdb16CatalogExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb16CatalogExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb16CatalogExceptionE = linkonce_odr constant [28 x i8] c"N6duckdb16CatalogExceptionE\00", comdat, align 1
@_ZTVN6duckdb8LoadInfoE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN6duckdb10PragmaInfoE = external unnamed_addr constant { [5 x ptr] }, align 8
@switch.table._ZNK6duckdb15TransactionInfo8ToStringB5cxx11Ev = private unnamed_addr constant [3 x ptr] [ptr @.str.114, ptr @.str.115, ptr @.str.116], align 8
@switch.table._ZNK6duckdb15TransactionInfo8ToStringB5cxx11Ev.9 = private unnamed_addr constant [3 x i64] [i64 5, i64 6, i64 8], align 8

@_ZN6duckdb9AlterInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb9AlterInfoD2Ev
@_ZN6duckdb23AlterScalarFunctionInfoD2Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb9AlterInfoD2Ev
@_ZN6duckdb23AlterScalarFunctionInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb23AlterScalarFunctionInfoD2Ev
@_ZN6duckdb29AddScalarFunctionOverloadInfoC1ENS_14AlterEntryDataENS_10unique_ptrINS_24CreateScalarFunctionInfoESt14default_deleteIS3_ELb1EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb29AddScalarFunctionOverloadInfoC2ENS_14AlterEntryDataENS_10unique_ptrINS_24CreateScalarFunctionInfoESt14default_deleteIS3_ELb1EEE
@_ZN6duckdb29AddScalarFunctionOverloadInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb29AddScalarFunctionOverloadInfoD2Ev
@_ZN6duckdb22AlterTableFunctionInfoD2Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb9AlterInfoD2Ev
@_ZN6duckdb22AlterTableFunctionInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb22AlterTableFunctionInfoD2Ev
@_ZN6duckdb28AddTableFunctionOverloadInfoC1ENS_14AlterEntryDataENS_16TableFunctionSetE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb28AddTableFunctionOverloadInfoC2ENS_14AlterEntryDataENS_16TableFunctionSetE
@_ZN6duckdb28AddTableFunctionOverloadInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb28AddTableFunctionOverloadInfoD2Ev
@_ZN6duckdb19ChangeOwnershipInfoC1ENS_11CatalogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_S7_NS_15OnEntryNotFoundE = unnamed_addr alias void (ptr, i8, ptr, ptr, ptr, ptr, ptr, i8), ptr @_ZN6duckdb19ChangeOwnershipInfoC2ENS_11CatalogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_S7_NS_15OnEntryNotFoundE
@_ZN6duckdb19ChangeOwnershipInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb19ChangeOwnershipInfoC2Ev
@_ZN6duckdb14SetCommentInfoC1ENS_11CatalogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS_5ValueENS_15OnEntryNotFoundE = unnamed_addr alias void (ptr, i8, ptr, ptr, ptr, ptr, i8), ptr @_ZN6duckdb14SetCommentInfoC2ENS_11CatalogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS_5ValueENS_15OnEntryNotFoundE
@_ZN6duckdb14SetCommentInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14SetCommentInfoC2Ev
@_ZN6duckdb14AlterTableInfoD2Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb9AlterInfoD2Ev
@_ZN6duckdb14AlterTableInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14AlterTableInfoD2Ev
@_ZN6duckdb16RenameColumnInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6duckdb16RenameColumnInfoC2ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
@_ZN6duckdb16RenameColumnInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb16RenameColumnInfoC2Ev
@_ZN6duckdb16RenameColumnInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb16RenameColumnInfoD2Ev
@_ZN6duckdb15RenameFieldInfoC1ENS_14AlterEntryDataENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6duckdb15RenameFieldInfoC2ENS_14AlterEntryDataENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEES8_
@_ZN6duckdb15RenameFieldInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15RenameFieldInfoC2Ev
@_ZN6duckdb15RenameFieldInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15RenameFieldInfoD2Ev
@_ZN6duckdb15RenameTableInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15RenameTableInfoC2Ev
@_ZN6duckdb15RenameTableInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb15RenameTableInfoC2ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6duckdb15RenameTableInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15RenameTableInfoD2Ev
@_ZN6duckdb13AddColumnInfoC1ENS_16ColumnDefinitionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb13AddColumnInfoC2ENS_16ColumnDefinitionE
@_ZN6duckdb13AddColumnInfoC1ENS_14AlterEntryDataENS_16ColumnDefinitionEb = unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN6duckdb13AddColumnInfoC2ENS_14AlterEntryDataENS_16ColumnDefinitionEb
@_ZN6duckdb13AddColumnInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb13AddColumnInfoD2Ev
@_ZN6duckdb12AddFieldInfoC1ENS_16ColumnDefinitionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb12AddFieldInfoC2ENS_16ColumnDefinitionE
@_ZN6duckdb12AddFieldInfoC1ENS_14AlterEntryDataENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEENS_16ColumnDefinitionEb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i1), ptr @_ZN6duckdb12AddFieldInfoC2ENS_14AlterEntryDataENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEENS_16ColumnDefinitionEb
@_ZN6duckdb12AddFieldInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb12AddFieldInfoD2Ev
@_ZN6duckdb16RemoveColumnInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb16RemoveColumnInfoC2Ev
@_ZN6duckdb16RemoveColumnInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb = unnamed_addr alias void (ptr, ptr, ptr, i1, i1), ptr @_ZN6duckdb16RemoveColumnInfoC2ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb
@_ZN6duckdb16RemoveColumnInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb16RemoveColumnInfoD2Ev
@_ZN6duckdb15RemoveFieldInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15RemoveFieldInfoC2Ev
@_ZN6duckdb15RemoveFieldInfoC1ENS_14AlterEntryDataENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEEbb = unnamed_addr alias void (ptr, ptr, ptr, i1, i1), ptr @_ZN6duckdb15RemoveFieldInfoC2ENS_14AlterEntryDataENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEEbb
@_ZN6duckdb15RemoveFieldInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15RemoveFieldInfoD2Ev
@_ZN6duckdb20ChangeColumnTypeInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb20ChangeColumnTypeInfoC2Ev
@_ZN6duckdb20ChangeColumnTypeInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN6duckdb20ChangeColumnTypeInfoC2ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEE
@_ZN6duckdb20ChangeColumnTypeInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb20ChangeColumnTypeInfoD2Ev
@_ZN6duckdb14SetDefaultInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14SetDefaultInfoC2Ev
@_ZN6duckdb14SetDefaultInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS9_ELb1EEE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6duckdb14SetDefaultInfoC2ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS9_ELb1EEE
@_ZN6duckdb14SetDefaultInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14SetDefaultInfoD2Ev
@_ZN6duckdb14SetNotNullInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14SetNotNullInfoC2Ev
@_ZN6duckdb14SetNotNullInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb14SetNotNullInfoC2ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6duckdb14SetNotNullInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14SetNotNullInfoD2Ev
@_ZN6duckdb15DropNotNullInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15DropNotNullInfoC2Ev
@_ZN6duckdb15DropNotNullInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb15DropNotNullInfoC2ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6duckdb15DropNotNullInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15DropNotNullInfoD2Ev
@_ZN6duckdb19AlterForeignKeyInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb19AlterForeignKeyInfoC2Ev
@_ZN6duckdb19AlterForeignKeyInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorIS7_Lb1ESaIS7_EEESA_NS8_INS_13PhysicalIndexELb1ESaISB_EEESD_NS_19AlterForeignKeyTypeE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8), ptr @_ZN6duckdb19AlterForeignKeyInfoC2ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorIS7_Lb1ESaIS7_EEESA_NS8_INS_13PhysicalIndexELb1ESaISB_EEESD_NS_19AlterForeignKeyTypeE
@_ZN6duckdb19AlterForeignKeyInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb19AlterForeignKeyInfoD2Ev
@_ZN6duckdb13AlterViewInfoD2Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb9AlterInfoD2Ev
@_ZN6duckdb13AlterViewInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb13AlterViewInfoD2Ev
@_ZN6duckdb14RenameViewInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14RenameViewInfoC2Ev
@_ZN6duckdb14RenameViewInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb14RenameViewInfoC2ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6duckdb14RenameViewInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14RenameViewInfoD2Ev
@_ZN6duckdb17AddConstraintInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb17AddConstraintInfoC2Ev
@_ZN6duckdb17AddConstraintInfoC1ENS_14AlterEntryDataENS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb17AddConstraintInfoC2ENS_14AlterEntryDataENS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE
@_ZN6duckdb17AddConstraintInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb17AddConstraintInfoD2Ev
@_ZN6duckdb20SetPartitionedByInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb20SetPartitionedByInfoC2Ev
@_ZN6duckdb20SetPartitionedByInfoC1ENS_14AlterEntryDataENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb20SetPartitionedByInfoC2ENS_14AlterEntryDataENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE
@_ZN6duckdb20SetPartitionedByInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb20SetPartitionedByInfoD2Ev
@_ZN6duckdb15SetSortedByInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15SetSortedByInfoC2Ev
@_ZN6duckdb15SetSortedByInfoC1ENS_14AlterEntryDataENS_6vectorINS_11OrderByNodeELb1ESaIS3_EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb15SetSortedByInfoC2ENS_14AlterEntryDataENS_6vectorINS_11OrderByNodeELb1ESaIS3_EEE
@_ZN6duckdb15SetSortedByInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15SetSortedByInfoD2Ev
@_ZN6duckdb19SetTableOptionsInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb19SetTableOptionsInfoC2Ev
@_ZN6duckdb19SetTableOptionsInfoC1ENS_14AlterEntryDataESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS8_SD_EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb19SetTableOptionsInfoC2ENS_14AlterEntryDataESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS8_SD_EEE
@_ZN6duckdb19SetTableOptionsInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb19SetTableOptionsInfoD2Ev
@_ZN6duckdb21ResetTableOptionsInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb21ResetTableOptionsInfoC2Ev
@_ZN6duckdb21ResetTableOptionsInfoC1ENS_14AlterEntryDataESt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaIS8_EE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb21ResetTableOptionsInfoC2ENS_14AlterEntryDataESt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaIS8_EE
@_ZN6duckdb21ResetTableOptionsInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb21ResetTableOptionsInfoD2Ev
@_ZN6duckdb17AlterDatabaseInfoD2Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb9AlterInfoD2Ev
@_ZN6duckdb17AlterDatabaseInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb17AlterDatabaseInfoD2Ev
@_ZN6duckdb18RenameDatabaseInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb18RenameDatabaseInfoC2Ev
@_ZN6duckdb18RenameDatabaseInfoC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_15OnEntryNotFoundE = unnamed_addr alias void (ptr, ptr, ptr, i8), ptr @_ZN6duckdb18RenameDatabaseInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_15OnEntryNotFoundE
@_ZN6duckdb20SetColumnCommentInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb20SetColumnCommentInfoC2Ev
@_ZN6duckdb20SetColumnCommentInfoC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_S6_NS_5ValueENS_15OnEntryNotFoundE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, i8), ptr @_ZN6duckdb20SetColumnCommentInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_S6_NS_5ValueENS_15OnEntryNotFoundE
@_ZN6duckdb8CopyInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb8CopyInfoC2Ev
@_ZN6duckdb15CreateIndexInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15CreateIndexInfoC2Ev
@_ZN6duckdb15CreateIndexInfoC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb15CreateIndexInfoC2ERKS0_
@_ZN6duckdb27CreateAggregateFunctionInfoC1ENS_17AggregateFunctionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb27CreateAggregateFunctionInfoC2ENS_17AggregateFunctionE
@_ZN6duckdb27CreateAggregateFunctionInfoC1ENS_20AggregateFunctionSetE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb27CreateAggregateFunctionInfoC2ENS_20AggregateFunctionSetE
@_ZN6duckdb19CreateCollationInfoC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ScalarFunctionEbb = unnamed_addr alias void (ptr, ptr, ptr, i1, i1), ptr @_ZN6duckdb19CreateCollationInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ScalarFunctionEbb
@_ZN6duckdb26CreateCoordinateSystemInfoC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_S6_S6_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN6duckdb26CreateCoordinateSystemInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_S6_S6_
@_ZN6duckdb22CreateCopyFunctionInfoC1ENS_12CopyFunctionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb22CreateCopyFunctionInfoC2ENS_12CopyFunctionE
@_ZN6duckdb15CreateMacroInfoC1ENS_11CatalogTypeE = unnamed_addr alias void (ptr, i8), ptr @_ZN6duckdb15CreateMacroInfoC2ENS_11CatalogTypeE
@_ZN6duckdb15CreateMacroInfoC1ENS_11CatalogTypeENS_10unique_ptrINS_13MacroFunctionESt14default_deleteIS3_ELb1EEENS_6vectorIS6_Lb1ESaIS6_EEE = unnamed_addr alias void (ptr, i8, ptr, ptr), ptr @_ZN6duckdb15CreateMacroInfoC2ENS_11CatalogTypeENS_10unique_ptrINS_13MacroFunctionESt14default_deleteIS3_ELb1EEENS_6vectorIS6_Lb1ESaIS6_EEE
@_ZN6duckdb24CreatePragmaFunctionInfoC1ENS_14PragmaFunctionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb24CreatePragmaFunctionInfoC2ENS_14PragmaFunctionE
@_ZN6duckdb24CreatePragmaFunctionInfoC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17PragmaFunctionSetE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb24CreatePragmaFunctionInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17PragmaFunctionSetE
@_ZN6duckdb16CreateSecretInfoC1ENS_16OnCreateConflictENS_17SecretPersistTypeE = unnamed_addr alias void (ptr, i8, i8), ptr @_ZN6duckdb16CreateSecretInfoC2ENS_16OnCreateConflictENS_17SecretPersistTypeE
@_ZN6duckdb16CreateSecretInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb16CreateSecretInfoD2Ev
@_ZN6duckdb18CreateSequenceInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb18CreateSequenceInfoC2Ev
@_ZN6duckdb16CreateSchemaInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb16CreateSchemaInfoC2Ev
@_ZN6duckdb24CreateScalarFunctionInfoC1ENS_14ScalarFunctionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb24CreateScalarFunctionInfoC2ENS_14ScalarFunctionE
@_ZN6duckdb24CreateScalarFunctionInfoC1ENS_17ScalarFunctionSetE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb24CreateScalarFunctionInfoC2ENS_17ScalarFunctionSetE
@_ZN6duckdb23CreateTableFunctionInfoC1ENS_13TableFunctionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb23CreateTableFunctionInfoC2ENS_13TableFunctionE
@_ZN6duckdb23CreateTableFunctionInfoC1ENS_16TableFunctionSetE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb23CreateTableFunctionInfoC2ENS_16TableFunctionSetE
@_ZN6duckdb15CreateTableInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15CreateTableInfoC2Ev
@_ZN6duckdb15CreateTableInfoC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_ = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6duckdb15CreateTableInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_
@_ZN6duckdb15CreateTableInfoC1ERNS_18SchemaCatalogEntryENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb15CreateTableInfoC2ERNS_18SchemaCatalogEntryENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6duckdb14CreateTypeInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14CreateTypeInfoC2Ev
@_ZN6duckdb14CreateTypeInfoC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEPFS7_RNS_20BindLogicalTypeInputEE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6duckdb14CreateTypeInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEPFS7_RNS_20BindLogicalTypeInputEE
@_ZN6duckdb14CreateViewInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb14CreateViewInfoC2Ev
@_ZN6duckdb14CreateViewInfoC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_ = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6duckdb14CreateViewInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_
@_ZN6duckdb14CreateViewInfoC1ERNS_18SchemaCatalogEntryENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb14CreateViewInfoC2ERNS_18SchemaCatalogEntryENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6duckdb14CreateViewInfoC1ENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEENS1_INS_5ValueELb1ESaISA_EEESt13unordered_mapIS7_SA_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_SA_EEE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6duckdb14CreateViewInfoC2ENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEENS1_INS_5ValueELb1ESaISA_EEESt13unordered_mapIS7_SA_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_SA_EEE
@_ZN6duckdb10DetachInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb10DetachInfoC2Ev
@_ZN6duckdb8DropInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb8DropInfoC2Ev
@_ZN6duckdb8DropInfoC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb8DropInfoC2ERKS0_
@_ZN6duckdb17ExportedTableInfoC1ERNS_17TableCatalogEntryENS_17ExportedTableDataERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6duckdb17ExportedTableInfoC2ERNS_17TableCatalogEntryENS_17ExportedTableDataERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEE
@_ZN6duckdb17ExportedTableInfoC1ERNS_13ClientContextENS_17ExportedTableDataE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb17ExportedTableInfoC2ERNS_13ClientContextENS_17ExportedTableDataE
@_ZN6duckdb19ExtraDropSecretInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb19ExtraDropSecretInfoC2Ev
@_ZN6duckdb19ExtraDropSecretInfoC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb19ExtraDropSecretInfoC2ERKS0_
@_ZN6duckdb13SampleOptionsC1El = unnamed_addr alias void (ptr, i64), ptr @_ZN6duckdb13SampleOptionsC2El
@_ZN6duckdb15TransactionInfoC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb15TransactionInfoC2Ev
@_ZN6duckdb15TransactionInfoC1ENS_15TransactionTypeE = unnamed_addr alias void (ptr, i8), ptr @_ZN6duckdb15TransactionInfoC2ENS_15TransactionTypeE
@_ZN6duckdb10VacuumInfoC1ENS_13VacuumOptionsE = unnamed_addr alias void (ptr, i16), ptr @_ZN6duckdb10VacuumInfoC2ENS_13VacuumOptionsE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_ZN6duckdb9AlterInfoC2ENS_9AlterTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS_15OnEntryNotFoundE(ptr noundef nonnull align 8 dereferenceable(113) initializes((0, 11)) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6duckdb9AlterInfoE, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %1, ptr %i.b, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %5, ptr %i.c, align 2, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !23
  %i.f = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.d, align 8, !tbaa !24
  %i.m = load i64, ptr %i.g, align 8, !tbaa !26
  store i64 %i.m, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !25
  store ptr %i.g, ptr %2, align 8, !tbaa !24
  store i64 0, ptr %i.n, align 8, !tbaa !25
  store i8 0, ptr %i.g, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !23
  %i.s = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !24
  %i.z = load i64, ptr %i.t, align 8, !tbaa !26
  store i64 %i.z, ptr %i.r, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !25
  store ptr %i.t, ptr %3, align 8, !tbaa !24
  store i64 0, ptr %i.aa, align 8, !tbaa !25
  store i8 0, ptr %i.t, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !23
  %i.af = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3
end_hunk_0
begin_hunk_1_@_ZN6duckdb8EnumUtil8ToStringINS_11CatalogTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_11CatalogTypeEEEPKcT_(i8 noundef zeroext %1) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !23
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.136) #34
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.e, ptr %i.a, align 8, !tbaa !56
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !24
  %i.h = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.h, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !26
  store i8 %i.j, ptr %i.i, align 1, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !25
  %i.m = load ptr, ptr %0, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.978", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !1172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1172
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !352, !noalias !1172 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !355, !noalias !1172 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #31
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !356

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !352, !noalias !1172
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !1172
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !1172
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb15TransactionInfoC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(11) initializes((0, 9)) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb15TransactionInfoE, i64 16), ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb15TransactionInfoC2ENS_15TransactionTypeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(11) initializes((0, 11)) %0, i8 noundef zeroext %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb15TransactionInfoE, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %1, ptr %i.b, align 1, !tbaa !1175
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 0, ptr %i.c, align 2, !tbaa !1179
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15TransactionInfo8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(11) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !25
  store i8 0, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1175
  %switch.tableidx = add i8 %i.d, -1              ; 3 uses
  %i.e = icmp ult i8 %switch.tableidx, 3
  br i1 %i.e, label %switch.lookup, label %bb.b

bb.a:                                             ; preds = %switch.lookup, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41.invoke, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

switch.lookup:                                    ; preds = %._crit_edge.i.i
  %i.g = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK6duckdb15TransactionInfo8ToStringB5cxx11Ev, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = zext nneg i8 %switch.tableidx to i64
  %switch.gep94 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK6duckdb15TransactionInfo8ToStringB5cxx11Ev.9, i64 %i.h
  %switch.load95 = load i64, ptr %switch.gep94, align 8
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %switch.load, i64 noundef %switch.load95)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.a ; 0 uses

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.117, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.k = load i8, ptr %i.c, align 1, !tbaa !1175
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_15TransactionTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i8 noundef zeroext %i.k)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.q unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.05 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.n) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.q = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.u = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.u) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.q) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.05, label %bb.g, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.05, label %bb.g, label %bb.p

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread
  %.pn19.pn60.ph = phi { ptr, i32 } [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn19.pn60 = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn19.pn60.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.j) #33
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %switch.lookup
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.y = load i8, ptr %i.x, align 2, !tbaa !1179
  switch i8 %i.y, label %bb.j [
    i8 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit40
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.z = load i64, ptr %i.b, align 8, !tbaa !25
  %i.aa = add i64 %i.z, -4611686018427387894
  %i.ab = icmp ult i64 %i.aa, 10
  br i1 %i.ab, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41.invoke

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ad = add i64 %i.ac, -4611686018427387893
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41.invoke: ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ @.str.118, %bb.h ], [ @.str.119, %bb.i ]
  %i.ag = phi i64 [ 10, %bb.h ], [ 11, %bb.i ]
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.af, i64 noundef %i.ag)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit40 unwind label %bb.a ; 0 uses

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.120, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.aj = load i8, ptr %i.x, align 2, !tbaa !1179
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_23TransactionModifierTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i8 noundef zeroext %i.aj)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.q unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.thread: ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split93

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i1 [ false, %bb.m ], [ true, %bb.l ]  ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.ap = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread: ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.at = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.sink.split93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread
  call void @_ZdlPv(ptr noundef %i.at) #31
  br label %.sink.split93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @_ZdlPv(ptr noundef %i.ap) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %.0, label %bb.o, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %.0, label %bb.o, label %bb.p

.sink.split93:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.thread
  %.pn.pn72.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.thread ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.o

bb.o:                                             ; preds = %.sink.split93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.pn.pn72 = phi { ptr, i32 } [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn.pn72.ph, %.sink.split93 ]
  call void @__cxa_free_exception(ptr %i.ai) #33
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ax = icmp eq i64 %i.aw, 4611686018427387903
  br i1 %i.ax, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit40, %bb.i, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #34
          to label %.cont unwind label %bb.a

end_hunk_1
