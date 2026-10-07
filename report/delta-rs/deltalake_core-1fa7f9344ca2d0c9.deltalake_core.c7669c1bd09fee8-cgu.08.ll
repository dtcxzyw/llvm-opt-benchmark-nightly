Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.08?download=true
inline.NumInlined: 16156
inline.NumDeleted: 5265
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0
@859 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_18copy_if_not_exists0EBU_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_18copy_if_not_exists0Bd_ }>, align 8
@860 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_18put_multipart_opts0EBU_, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_18put_multipart_opts0Bd_ }>, align 8
@861 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_19list_with_delimiter0EBU_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_19list_with_delimiter0Bd_ }>, align 8
@862 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_20rename_if_not_exists0EBU_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_20rename_if_not_exists0Bd_ }>, align 8
@863 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_3get0EBU_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_3get0Bd_ }>, align 8
@864 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_3put0EBU_, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_3put0Bd_ }>, align 8
@865 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_4copy0EBU_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_4copy0Bd_ }>, align 8
@866 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_4head0EBU_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_4head0Bd_ }>, align 8
@867 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_6delete0EBU_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_6delete0Bd_ }>, align 8
@868 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_8get_opts0EBU_, [16 x i8] c"\B0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_8get_opts0Bd_ }>, align 8
@869 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_8put_opts0EBU_, [16 x i8] c"\B8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_8put_opts0Bd_ }>, align 8
@870 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBO_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2P_9get_range0EBU_, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB7_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB28_9get_range0Bd_ }>, align 8
@871 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @855, [16 x i8] c"Y\00\00\00\00\00\00\00O\0B\00\00\0B\00\00\00" }>, align 8
@872 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsd_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtBO_17DeltaTableFactoryNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactory6create0EBQ_, [16 x i8] c"\B0\09\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNCNvXsd_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtB7_17DeltaTableFactoryNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactory6create0B9_ }>, align 8
@873 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core }>, align 8
@874 = private unnamed_addr constant [11 x i8] c"Constraints", align 1
@875 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB8_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core }>, align 8
@876 = private unnamed_addr constant [11 x i8] c"PartStorage", align 1
@877 = private unnamed_addr constant [5 x i8] c"parts", align 1
@878 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core }>, align 8
@879 = private unnamed_addr constant [15 x i8] c"DeltaScanConfig", align 1
@880 = private unnamed_addr constant [16 x i8] c"file_column_name", align 1
@881 = private unnamed_addr constant [21 x i8] c"wrap_partition_values", align 1
@882 = private unnamed_addr constant [23 x i8] c"enable_parquet_pushdown", align 1
@883 = private unnamed_addr constant [23 x i8] c"schema_force_view_types", align 1
@884 = private unnamed_addr constant [9 x i8] c"EmptyHost", align 1
@885 = private unnamed_addr constant [9 x i8] c"IdnaError", align 1
@886 = private unnamed_addr constant [11 x i8] c"InvalidPort", align 1
@887 = private unnamed_addr constant [18 x i8] c"InvalidIpv4Address", align 1
@888 = private unnamed_addr constant [18 x i8] c"InvalidIpv6Address", align 1
@889 = private unnamed_addr constant [22 x i8] c"InvalidDomainCharacter", align 1
@890 = private unnamed_addr constant [22 x i8] c"RelativeUrlWithoutBase", align 1
@891 = private unnamed_addr constant [32 x i8] c"RelativeUrlWithCannotBeABaseBase", align 1
@892 = private unnamed_addr constant [25 x i8] c"SetHostOnCannotBeABaseUrl", align 1
@893 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@894 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotENtB6_5Debug3fmtB1a_ }>, align 8
@895 = private unnamed_addr constant [8 x i8] c"Snapshot", align 1
@896 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotENtB6_5Debug3fmtB1a_ }>, align 8
@897 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB5_13EagerSnapshotNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@898 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtBL_ }>, align 8
@899 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsf_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_15DeltaScanConfigNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@900 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtB6_5Debug3fmtB1x_ }>, align 8
@901 = private unnamed_addr constant [18 x i8] c"DeltaTableProvider", align 1
@902 = private unnamed_addr constant [9 x i8] c"log_store", align 1
@903 = private unnamed_addr constant [6 x i8] c"config", align 1
@904 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1t_14AttributeValueENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core }>, align 8
@905 = private unnamed_addr constant [10 x i8] c"Attributes", align 1
@906 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderEBM_, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtB2_3Any7type_idBx_ }>, align 8
@907 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next15SnapshotWrapperEBO_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsg_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB5_15SnapshotWrapperNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@908 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB7_3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core }>, align 8
@909 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EENtNtB7_3fmt5Debug3fmtB1n_ }>, align 8
@910 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB6_5Debug3fmtB10_ }>, align 8
@911 = private unnamed_addr constant [11 x i8] c"scan_schema", align 1
@912 = private unnamed_addr constant [11 x i8] c"full_schema", align 1
@913 = private unnamed_addr constant [23 x i8] c"file_skipping_predicate", align 1
@914 = private unnamed_addr constant [14 x i8] c"file_selection", align 1
@915 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @751, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @903, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @911, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @912, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @913, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @902, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @914, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@916 = private unnamed_addr constant [9 x i8] c"DeltaScan", align 1
@917 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@918 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core }>, align 8
@919 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics23ExecutionPlanMetricsSetNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core }>, align 8
@920 = private unnamed_addr constant [9 x i8] c"table_url", align 1
@921 = private unnamed_addr constant [12 x i8] c"parquet_scan", align 1
@922 = private unnamed_addr constant [14 x i8] c"logical_schema", align 1
@923 = private unnamed_addr constant [7 x i8] c"metrics", align 1
@924 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanEBO_, [16 x i8] c"\A8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtB2_3Any7type_idBz_ }>, align 8
@925 = private unnamed_addr constant [2 x i8] c"()", align 1
@926 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"O\00\00\00\00\00\00\00i\04\00\00$\00\00\00" }>, align 8
@927 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2J_10get_ranges0EBU_, [16 x i8] c"\08\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB22_10get_ranges0Bd_ }>, align 8
@928 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB49_5ErrorENtNtB4_6marker4SendEL_EENCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB2o_4sync3ArcDNtB49_11ObjectStoreEL_EEB79_13delete_stream0EEEB5A_, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB26_4sync3ArcDNtB3S_11ObjectStoreEL_EEB6T_13delete_stream0EEB2B_9poll_nextB5k_, ptr @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB26_4sync3ArcDNtB3S_11ObjectStoreEL_EEB6T_13delete_stream0EEB2B_9size_hintB5k_ }>, align 8
@929 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2J_6rename0EBU_, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB22_6rename0Bd_ }>, align 8
@930 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3395429798058822775 to ptr), ptr inttoptr (i64 -6690209679114157004 to ptr) }>, align 8
@931 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@932 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4914948277808166054 to ptr), ptr inttoptr (i64 2111995574219228527 to ptr) }>, align 8
@933 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8624493539382464842 to ptr), ptr inttoptr (i64 2641902377492434536 to ptr) }>, align 8
@934 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore10get_ranges0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\08\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore10get_ranges0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@935 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB49_5ErrorENtNtB4_6marker4SendEL_EENCNvYNtNtB49_3gcp18GoogleCloudStorageNtB49_11ObjectStore13delete_stream0EEECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_3gcp18GoogleCloudStorageNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextCs14kWLkQVSKO_14deltalake_core, ptr @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_3gcp18GoogleCloudStorageNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintCs14kWLkQVSKO_14deltalake_core }>, align 8
@936 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore13put_multipart0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore13put_multipart0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@937 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore20rename_if_not_exists0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore20rename_if_not_exists0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@938 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore3get0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore3get0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@939 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore3put0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore3put0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@940 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore4head0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore4head0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@941 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore6rename0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore6rename0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@942 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore9get_range0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\80\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore9get_range0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@943 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBP_11ObjectStore10get_ranges0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\08\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB8_11ObjectStore10get_ranges0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@944 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB49_5ErrorENtNtB4_6marker4SendEL_EENCNvYNtNtB49_4http9HttpStoreNtB49_11ObjectStore13delete_stream0EEECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_4http9HttpStoreNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextCs14kWLkQVSKO_14deltalake_core, ptr @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_4http9HttpStoreNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintCs14kWLkQVSKO_14deltalake_core }>, align 8
@945 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBP_11ObjectStore13put_multipart0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB8_11ObjectStore13put_multipart0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@946 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filter9TryFilterINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB40_5ErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadybENCNvYNtNtB40_4http9HttpStoreNtB40_11ObjectStore16list_with_offset0EECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\90\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_4http9HttpStoreNtB3J_11ObjectStore16list_with_offset0EB2u_9poll_nextCs14kWLkQVSKO_14deltalake_core, ptr @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_4http9HttpStoreNtB3J_11ObjectStore16list_with_offset0EB2u_9size_hintCs14kWLkQVSKO_14deltalake_core }>, align 8
@947 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBP_11ObjectStore20rename_if_not_exists0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB8_11ObjectStore20rename_if_not_exists0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@948 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBP_11ObjectStore3get0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB8_11ObjectStore3get0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@949 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBP_11ObjectStore3put0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB8_11ObjectStore3put0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@950 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBP_11ObjectStore4head0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB8_11ObjectStore4head0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@951 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBP_11ObjectStore6rename0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB8_11ObjectStore6rename0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@952 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBP_11ObjectStore9get_range0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\80\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB8_11ObjectStore9get_range0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@953 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtBP_11ObjectStore10get_ranges0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\08\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB8_11ObjectStore10get_ranges0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@954 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtBP_11ObjectStore13put_multipart0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB8_11ObjectStore13put_multipart0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@955 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filter9TryFilterINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB40_5ErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadybENCNvYNtNtB40_5azure14MicrosoftAzureNtB40_11ObjectStore16list_with_offset0EECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\90\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_5azure14MicrosoftAzureNtB3J_11ObjectStore16list_with_offset0EB2u_9poll_nextCs14kWLkQVSKO_14deltalake_core, ptr @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_5azure14MicrosoftAzureNtB3J_11ObjectStore16list_with_offset0EB2u_9size_hintCs14kWLkQVSKO_14deltalake_core }>, align 8
@956 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtBP_11ObjectStore20rename_if_not_exists0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB8_11ObjectStore20rename_if_not_exists0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@957 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtBP_11ObjectStore3get0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB8_11ObjectStore3get0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@958 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtBP_11ObjectStore3put0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB8_11ObjectStore3put0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@959 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtBP_11ObjectStore4head0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB8_11ObjectStore4head0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@960 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtBP_11ObjectStore6rename0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB8_11ObjectStore6rename0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@961 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtBP_11ObjectStore9get_range0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\80\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB8_11ObjectStore9get_range0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@962 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB49_5ErrorENtNtB4_6marker4SendEL_EENCNvYNtNtB49_6memory8InMemoryNtB49_11ObjectStore13delete_stream0EEECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_6memory8InMemoryNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextCs14kWLkQVSKO_14deltalake_core, ptr @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_6memory8InMemoryNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintCs14kWLkQVSKO_14deltalake_core }>, align 8
@963 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBP_11ObjectStore13put_multipart0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB8_11ObjectStore13put_multipart0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@964 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filter9TryFilterINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB40_5ErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadybENCNvYNtNtB40_6memory8InMemoryNtB40_11ObjectStore16list_with_offset0EECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\90\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_6memory8InMemoryNtB3J_11ObjectStore16list_with_offset0EB2u_9poll_nextCs14kWLkQVSKO_14deltalake_core, ptr @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_6memory8InMemoryNtB3J_11ObjectStore16list_with_offset0EB2u_9size_hintCs14kWLkQVSKO_14deltalake_core }>, align 8
@965 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBP_11ObjectStore20rename_if_not_exists0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB8_11ObjectStore20rename_if_not_exists0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@966 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBP_11ObjectStore3get0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB8_11ObjectStore3get0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@967 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBP_11ObjectStore3put0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB8_11ObjectStore3put0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@968 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBP_11ObjectStore6rename0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB8_11ObjectStore6rename0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@969 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBP_11ObjectStore9get_range0ECs14kWLkQVSKO_14deltalake_core, [16 x i8] c"\80\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB8_11ObjectStore9get_range0Cs14kWLkQVSKO_14deltalake_core }>, align 8
@970 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtBP_8LogStore23is_delta_table_location0EBR_, [16 x i8] c"\A8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB8_8LogStore23is_delta_table_location0Ba_ }>, align 8
@971 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtBP_8LogStore7refresh0EBR_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB8_8LogStore7refresh0Ba_ }>, align 8
@_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH = external global { { { [3 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@972 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7138977279839204526 to ptr), ptr inttoptr (i64 -8957275379254221844 to ptr) }>, align 8
@973 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1294208861291987719 to ptr), ptr inttoptr (i64 7526452654611091669 to ptr) }>, align 8
@switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.2293 = private unnamed_addr constant [10 x ptr] [ptr @884, ptr @885, ptr @886, ptr @887, ptr @888, ptr @889, ptr @890, ptr @891, ptr @892, ptr @893], align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB3_6Handle14spawn_blockingNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1i_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1i_5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !20, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.h = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !129 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw i64 %i.e to i1                 ; 2 uses
  %.sroa.0.0.v = select i1 %i.i, i64 464, i64 712
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !130
  %.sroa.01.0.v.i.i.i = select i1 %i.i, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !129, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !129, !nonnull !21, !align !22, !noundef !21
  %i.n = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !129
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  call void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1y_9GetResult5bytes00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %i.k, ptr %.sroa.5.0.i.i.i, i64 noundef %i.h), !noalias !129
  %i.p = load ptr, ptr %i.a, align 8, !noalias !129, !nonnull !21, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !129, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !129
  %i.s = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noundef nonnull %i.p, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !131 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.r)
          to label %.noexc.i.i unwind label %bb.i, !noalias !131

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.u, label %bb.h, label %common.resume.i

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.r)
          to label %common.resume.i unwind label %bb.i, !noalias !131

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !131
  unreachable

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.t, %.noexc.i.i ], [ %i.t, %bb.h ], [ %i.z, %.noexc.i ], [ %i.z, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.w = extractvalue { i64, ptr } %i.s, 0
  %i.x = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  %.not.i = icmp ne ptr %i.x, null
  %or.cond.not.i = select i1 %i.y, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1v_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1v_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !132
  store ptr %i.x, ptr %i.d, align 8, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !132
  store ptr %i.d, ptr %i.c, align 8, !noalias !132
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !132
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #39
          to label %bb.l unwind label %bb.k, !noalias !133

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.n unwind label %bb.m, !noalias !133

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !133
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ab = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.r)
          to label %.noexc.i unwind label %bb.m, !noalias !133

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ab, label %bb.o, label %common.resume.i

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.r)
          to label %common.resume.i unwind label %bb.m, !noalias !133

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1v_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1v_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i
  ret ptr %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3_11ScanBuilder14with_predicateINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvMs_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5_11ScanBuilder14with_predicateINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB7_11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB3_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB5_NtB5_8Snapshot10tombstones0EB9_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(528) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [592 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [592 x i8], align 16              ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.j = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8, !noalias !185
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !185
  %i.m = icmp eq i64 %i.l, 2                      ; 3 uses
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val.i = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !20, !noalias !185
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val.i = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !noalias !185
  %i.n = select i1 %i.m, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val.i, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val.i
  %i.o = trunc nuw i64 %i.n to i1
  %.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !noalias !185
  %.val14.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !noalias !185
  %i.p = select i1 %i.m, ptr %.val.i, ptr %.val14.i ; 3 uses
  %.val15.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !noalias !185
  %.val16.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !noalias !185
  %i.q = select i1 %i.m, ptr %.val15.i, ptr %.val16.i ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.r = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !186
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i8, ptr %i.u, align 8, !range !24, !noalias !187, !noundef !21
  switch i8 %i.v, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
    i8 1, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2z_NtB2z_8Snapshot10tombstones0E0E0B2d_EB2D_.exit.i
  ], !prof !25

default.unreachable:                              ; preds = %bb.e
  unreachable

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.e
  %i.w = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2z_NtB2z_8Snapshot10tombstones0E0E0B2d_EB2D_.exit.i, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i: ; preds = %.noexc, %bb.e
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.w, %.noexc ], [ %i.t, %bb.e ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 32 ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !range !26, !noalias !188, !noundef !21
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.y, align 1, !noalias !188
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.ab = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !alias.scope !189, !noalias !190, !noundef !21
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !189, !noalias !190 ; 3 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !189, !noalias !190 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.af = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !191
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i
  %i.ah = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !188, !noundef !21 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.l, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #41
          to label %.noexc.i.i.i unwind label %bb.k, !noalias !188

.noexc.i.i.i:                                     ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.y, align 8, !noalias !188
  br label %bb.aw

bb.l:                                             ; preds = %bb.i
  %i.ak = add nuw nsw i64 %i.ah, 1
  store i64 %i.ak, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !188
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.am = load i64, ptr %i.al, align 8, !range !28, !alias.scope !192, !noalias !188, !noundef !21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.am, 2
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !193
  %i.ao = icmp eq i64 %i.an, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i = select i1 %i.ao, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i, align 8, !range !20, !alias.scope !194, !noalias !195
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = phi i64 [ %i.am, %bb.l ], [ %.pre.i.i.i, %bb.m ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.al, %bb.l ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !194, !noalias !195 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !194, !noalias !195
  br i1 %i.aq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.av = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !196
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i6.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ax = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !188, !noundef !21
  %i.ay = add i64 %i.ax, -1
  store i64 %i.ay, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !188
  store i8 1, ptr %i.y, align 8, !noalias !188
  br label %bb.u

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2z_NtB2z_8Snapshot10tombstones0E0E0B2d_EB2D_.exit.i: ; preds = %.noexc, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.az = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !alias.scope !197, !noalias !198, !noundef !21
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !197, !noalias !198 ; 3 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !197, !noalias !198 ; 2 uses
  br i1 %i.ba, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2z_NtB2z_8Snapshot10tombstones0E0E0B2d_EB2D_.exit.i
  %i.bd = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !noalias !199
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.u:                                             ; preds = %bb.r, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2z_NtB2z_8Snapshot10tombstones0E0E0B2d_EB2D_.exit.i, %bb.q, %bb.g, %bb.f, %bb.c, %bb.b
  %i.bg = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2z_NtB2z_8Snapshot10tombstones0E0E0B2d_EB2D_.exit.i ], [ %.sroa.0.0.i6.i.i.i, %bb.q ], [ 1, %bb.r ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.bh = phi ptr [ %i.bb, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2z_NtB2z_8Snapshot10tombstones0E0E0B2d_EB2D_.exit.i ], [ %i.as, %bb.q ], [ %i.bb, %bb.r ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ], [ %i.p, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.sroa.7.0.ph.sink.i = phi ptr [ %i.bc, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2z_NtB2z_8Snapshot10tombstones0E0E0B2d_EB2D_.exit.i ], [ %i.au, %bb.q ], [ %i.bc, %bb.r ], [ %i.ae, %bb.f ], [ %i.ae, %bb.g ], [ %i.q, %bb.c ], [ %i.q, %bb.b ]
  store i64 %i.bg, ptr %i.i, align 8, !alias.scope !185
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bh, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !185
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.7.0.ph.sink.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.v unwind label %bb.as

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.f, ptr noundef nonnull align 16 dereferenceable(528) %1, i64 528, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !200
  %i.bk = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.w unwind label %bb.ar, !noalias !200 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bl = extractvalue { i64, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bk, 1      ; 3 uses
  store i64 %i.bl, ptr %i.e, align 8, !noalias !200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.bm, ptr %i.bn, align 8, !noalias !200
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %i.bo = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !201 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i, label %bb.x, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = trunc nuw i64 %i.bl to i1               ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.bp, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.b, ptr noundef nonnull align 16 dereferenceable(592) %i.f, i64 592, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.bp, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !201, !noundef !21 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !201, !nonnull !21, !align !22, !noundef !21
  %i.bu = atomicrmw add ptr %i.br, i64 1 monotonic, align 8, !noalias !201
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.y ], [ %i.bt, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !201
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1u_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB1w_NtB1w_8Snapshot10tombstones0Es_0ENtNtBR_8schedule16BlockingScheduleEB1A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(592) %i.b, ptr noundef %i.br, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.bo)
          to label %.noexc.i unwind label %bb.al, !noalias !200

.noexc.i:                                         ; preds = %bb.ab
  %i.bw = load ptr, ptr %i.a, align 8, !noalias !201, !nonnull !21, !noundef !21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !201, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !201
  %i.bz = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.bw, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB1z_NtB1z_8Snapshot10tombstones0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i unwind label %bb.ac, !noalias !202 ; 2 uses

bb.ac:                                            ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.by)
          to label %.noexc.i.i.i4 unwind label %bb.ae, !noalias !202

.noexc.i.i.i4:                                    ; preds = %bb.ac
  br i1 %i.cb, label %bb.ad, label %.body.i

bb.ad:                                            ; preds = %.noexc.i.i.i4
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.by)
          to label %.body.i unwind label %bb.ae, !noalias !202

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !202
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB1z_NtB1z_8Snapshot10tombstones0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i: ; preds = %.noexc.i
  %i.cd = extractvalue { i64, ptr } %i.bz, 0
  %i.ce = extractvalue { i64, ptr } %i.bz, 1      ; 2 uses
  %i.cf = trunc nuw i64 %i.cd to i1
  %.not.i.i = icmp ne ptr %i.ce, null
  %or.cond.not.i.i = select i1 %i.cf, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.af, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB1t_NtB1t_8Snapshot10tombstones0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i, !prof !23

bb.af:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB1z_NtB1z_8Snapshot10tombstones0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !203
  store ptr %i.ce, ptr %i.d, align 8, !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !203
  store ptr %i.d, ptr %i.c, align 8, !noalias !203
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !203
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #39
          to label %bb.ah unwind label %bb.ag, !noalias !204

bb.ag:                                            ; preds = %bb.af
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.aj unwind label %bb.ai, !noalias !204

bb.ah:                                            ; preds = %bb.af
  unreachable

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ag
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !204
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.ci = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.by)
          to label %.noexc.i.i unwind label %bb.ai, !noalias !204

.noexc.i.i:                                       ; preds = %bb.aj
  br i1 %i.ci, label %bb.ak, label %.body.i

bb.ak:                                            ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.by)
          to label %.body.i unwind label %bb.ai, !noalias !204

bb.al:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.al, %bb.ak, %.noexc.i.i, %bb.ad, %.noexc.i.i.i4
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cj, %bb.al ], [ %i.ca, %.noexc.i.i.i4 ], [ %i.ca, %bb.ad ], [ %i.cg, %.noexc.i.i ], [ %i.cg, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.body7.thread unwind label %bb.aq, !noalias !200

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB1t_NtB1t_8Snapshot10tombstones0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB1z_NtB1z_8Snapshot10tombstones0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.ck = load i64, ptr %i.e, align 8, !range !20, !alias.scope !207, !noalias !200, !noundef !21
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB1t_NtB1t_8Snapshot10tombstones0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.cm = load ptr, ptr %i.bn, align 8, !alias.scope !210, !noalias !200, !nonnull !21, !noundef !21
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !211
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit

bb.ao:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB1t_NtB1t_8Snapshot10tombstones0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.cp = load ptr, ptr %i.bn, align 8, !alias.scope !214, !noalias !200, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !215
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit

bb.aq:                                            ; preds = %bb.ar, %.body.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ar:                                            ; preds = %bb.v
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtBM_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMBO_NtBO_8Snapshot10tombstones0Es_0EBS_(ptr noalias noundef nonnull align 16 dereferenceable(592) %i.f) #40
          to label %.body7.thread unwind label %bb.aq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.an, %bb.ap, %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !200
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = call fastcc noundef nonnull ptr @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE6insertB1B_(ptr noalias noundef align 8 dereferenceable(16) %i.ct, ptr noundef nonnull %i.by)
  store ptr %i.cu, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.as:                                            ; preds = %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cv = icmp eq i64 %i.bg, 0
  br i1 %i.cv, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cw = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !216
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i) #42
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aw
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.body7.thread:                                    ; preds = %bb.ar, %.body.i, %bb.aw
  %.pn13 = phi { ptr, i32 } [ %.pn.ph, %bb.aw ], [ %lpad.thr_comm.split-lp.i, %bb.ar ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn13

bb.aw:                                            ; preds = %bb.k, %bb.t, %bb.au, %bb.as, %bb.at
  %.pn.ph = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.bf, %bb.t ], [ %lpad.thr_comm.split-lp, %bb.au ], [ %lpad.thr_comm.split-lp, %bb.as ], [ %lpad.thr_comm.split-lp, %bb.at ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot10tombstones0EBP_(ptr noalias noundef align 16 dereferenceable(528) %1) #40
          to label %.body7.thread unwind label %bb.av
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB3_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1T_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB9_16delta_datafusion14table_provider4next4scan6replayINtB3B_14ScanFileStreamINtNtB1X_3pin3PinINtNtB2z_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1X_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB9_6errors15DeltaTableErrorENtNtB1X_6marker4SendEL_EEEB5B_9poll_nexts_0EB9_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(264) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [328 x i8], align 8               ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.j = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8, !noalias !268
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !268
  %i.m = icmp eq i64 %i.l, 2                      ; 3 uses
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val.i = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !20, !noalias !268
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val.i = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !noalias !268
  %i.n = select i1 %i.m, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val.i, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val.i
  %i.o = trunc nuw i64 %i.n to i1
  %.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !noalias !268
  %.val14.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !noalias !268
  %i.p = select i1 %i.m, ptr %.val.i, ptr %.val14.i ; 3 uses
  %.val15.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !noalias !268
  %.val16.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !noalias !268
  %i.q = select i1 %i.m, ptr %.val15.i, ptr %.val16.i ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.r = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !269
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i8, ptr %i.u, align 8, !range !24, !noalias !270, !noundef !21
  switch i8 %i.v, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
    i8 1, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB4o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2D_16delta_datafusion14table_provider4next4scan6replayINtB66_14ScanFileStreamINtNtB4s_3pin3PinINtNtB54_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2D_6errors15DeltaTableErrorENtNtB4s_6marker4SendEL_EEEB87_9poll_nexts_0E0E0B2d_EB2D_.exit.i
  ], !prof !25

default.unreachable:                              ; preds = %bb.e
  unreachable

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.e
  %i.w = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB4o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2D_16delta_datafusion14table_provider4next4scan6replayINtB66_14ScanFileStreamINtNtB4s_3pin3PinINtNtB54_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2D_6errors15DeltaTableErrorENtNtB4s_6marker4SendEL_EEEB87_9poll_nexts_0E0E0B2d_EB2D_.exit.i, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i

end_hunk_0
begin_hunk_1_@_RINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB3_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1T_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB9_16delta_datafusion14table_provider4next4scan6replayINtB3B_14ScanFileStreamINtNtB1X_3pin3PinINtNtB2z_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1X_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB9_6errors15DeltaTableErrorENtNtB1X_6marker4SendEL_EEEB5B_9poll_nexts_0EB9_:bb.a
  %i.ab = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !alias.scope !272, !noalias !273, !noundef !21
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !272, !noalias !273 ; 3 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !272, !noalias !273 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.af = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !274
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i
  %i.ah = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !271, !noundef !21 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.l, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #41
          to label %.noexc.i.i.i unwind label %bb.k, !noalias !271

.noexc.i.i.i:                                     ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.y, align 8, !noalias !271
  br label %bb.aw

bb.l:                                             ; preds = %bb.i
  %i.ak = add nuw nsw i64 %i.ah, 1
  store i64 %i.ak, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !271
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.am = load i64, ptr %i.al, align 8, !range !28, !alias.scope !275, !noalias !271, !noundef !21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.am, 2
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !276
  %i.ao = icmp eq i64 %i.an, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i = select i1 %i.ao, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i, align 8, !range !20, !alias.scope !277, !noalias !278
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = phi i64 [ %i.am, %bb.l ], [ %.pre.i.i.i, %bb.m ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.al, %bb.l ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !277, !noalias !278 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !277, !noalias !278
  br i1 %i.aq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.av = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !279
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i6.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ax = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !271, !noundef !21
  %i.ay = add i64 %i.ax, -1
  store i64 %i.ay, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !271
  store i8 1, ptr %i.y, align 8, !noalias !271
  br label %bb.u

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB4o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2D_16delta_datafusion14table_provider4next4scan6replayINtB66_14ScanFileStreamINtNtB4s_3pin3PinINtNtB54_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2D_6errors15DeltaTableErrorENtNtB4s_6marker4SendEL_EEEB87_9poll_nexts_0E0E0B2d_EB2D_.exit.i: ; preds = %.noexc, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.az = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !alias.scope !280, !noalias !281, !noundef !21
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !280, !noalias !281 ; 3 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !280, !noalias !281 ; 2 uses
  br i1 %i.ba, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB4o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2D_16delta_datafusion14table_provider4next4scan6replayINtB66_14ScanFileStreamINtNtB4s_3pin3PinINtNtB54_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2D_6errors15DeltaTableErrorENtNtB4s_6marker4SendEL_EEEB87_9poll_nexts_0E0E0B2d_EB2D_.exit.i
  %i.bd = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !noalias !282
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.u:                                             ; preds = %bb.r, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB4o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2D_16delta_datafusion14table_provider4next4scan6replayINtB66_14ScanFileStreamINtNtB4s_3pin3PinINtNtB54_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2D_6errors15DeltaTableErrorENtNtB4s_6marker4SendEL_EEEB87_9poll_nexts_0E0E0B2d_EB2D_.exit.i, %bb.q, %bb.g, %bb.f, %bb.c, %bb.b
  %i.bg = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB4o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2D_16delta_datafusion14table_provider4next4scan6replayINtB66_14ScanFileStreamINtNtB4s_3pin3PinINtNtB54_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2D_6errors15DeltaTableErrorENtNtB4s_6marker4SendEL_EEEB87_9poll_nexts_0E0E0B2d_EB2D_.exit.i ], [ %.sroa.0.0.i6.i.i.i, %bb.q ], [ 1, %bb.r ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.bh = phi ptr [ %i.bb, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB4o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2D_16delta_datafusion14table_provider4next4scan6replayINtB66_14ScanFileStreamINtNtB4s_3pin3PinINtNtB54_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2D_6errors15DeltaTableErrorENtNtB4s_6marker4SendEL_EEEB87_9poll_nexts_0E0E0B2d_EB2D_.exit.i ], [ %i.as, %bb.q ], [ %i.bb, %bb.r ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ], [ %i.p, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.sroa.7.0.ph.sink.i = phi ptr [ %i.bc, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB4o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2D_16delta_datafusion14table_provider4next4scan6replayINtB66_14ScanFileStreamINtNtB4s_3pin3PinINtNtB54_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2D_6errors15DeltaTableErrorENtNtB4s_6marker4SendEL_EEEB87_9poll_nexts_0E0E0B2d_EB2D_.exit.i ], [ %i.au, %bb.q ], [ %i.bc, %bb.r ], [ %i.ae, %bb.f ], [ %i.ae, %bb.g ], [ %i.q, %bb.c ], [ %i.q, %bb.b ]
  store i64 %i.bg, ptr %i.i, align 8, !alias.scope !268
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bh, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !268
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.7.0.ph.sink.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.v unwind label %bb.as

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.bj, ptr noundef nonnull align 8 dereferenceable(264) %1, i64 264, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !283
  %i.bk = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.w unwind label %bb.ar, !noalias !283 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bl = extractvalue { i64, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bk, 1      ; 3 uses
  store i64 %i.bl, ptr %i.e, align 8, !noalias !283
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.bm, ptr %i.bn, align 8, !noalias !283
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %i.bo = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !284 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i, label %bb.x, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = trunc nuw i64 %i.bl to i1               ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.bp, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.f, i64 328, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.bp, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !284, !noundef !21 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !284, !nonnull !21, !align !22, !noundef !21
  %i.bu = atomicrmw add ptr %i.br, i64 1 monotonic, align 8, !noalias !284
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.y ], [ %i.bt, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !284
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1u_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3l_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1A_16delta_datafusion14table_provider4next4scan6replayINtB53_14ScanFileStreamINtNtB3p_3pin3PinINtNtB41_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3p_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1A_6errors15DeltaTableErrorENtNtB3p_6marker4SendEL_EEEB74_9poll_nexts_0Es_0ENtNtBR_8schedule16BlockingScheduleEB1A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.b, ptr noundef %i.br, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.bo)
          to label %.noexc.i unwind label %bb.al, !noalias !283

.noexc.i:                                         ; preds = %bb.ab
  %i.bw = load ptr, ptr %i.a, align 8, !noalias !284, !nonnull !21, !noundef !21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !284, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !284
  %i.bz = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.bw, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB56_14ScanFileStreamINtNtB3s_3pin3PinINtNtB44_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1D_6errors15DeltaTableErrorENtNtB3s_6marker4SendEL_EEEB77_9poll_nexts_0Es_0IB7Y_uB99_EEB1D_.exit.i.i unwind label %bb.ac, !noalias !285 ; 2 uses

bb.ac:                                            ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.by)
          to label %.noexc.i.i.i4 unwind label %bb.ae, !noalias !285

.noexc.i.i.i4:                                    ; preds = %bb.ac
  br i1 %i.cb, label %bb.ad, label %.body.i

bb.ad:                                            ; preds = %.noexc.i.i.i4
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.by)
          to label %.body.i unwind label %bb.ae, !noalias !285

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !285
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB56_14ScanFileStreamINtNtB3s_3pin3PinINtNtB44_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1D_6errors15DeltaTableErrorENtNtB3s_6marker4SendEL_EEEB77_9poll_nexts_0Es_0IB7Y_uB99_EEB1D_.exit.i.i: ; preds = %.noexc.i
  %i.cd = extractvalue { i64, ptr } %i.bz, 0
  %i.ce = extractvalue { i64, ptr } %i.bz, 1      ; 2 uses
  %i.cf = trunc nuw i64 %i.cd to i1
  %.not.i.i = icmp ne ptr %i.ce, null
  %or.cond.not.i.i = select i1 %i.cf, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.af, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3i_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1x_16delta_datafusion14table_provider4next4scan6replayINtB50_14ScanFileStreamINtNtB3m_3pin3PinINtNtB3Y_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3m_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1x_6errors15DeltaTableErrorENtNtB3m_6marker4SendEL_EEEB71_9poll_nexts_0Es_0IB7S_uB93_EEB1x_.exit.i, !prof !23

bb.af:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB56_14ScanFileStreamINtNtB3s_3pin3PinINtNtB44_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1D_6errors15DeltaTableErrorENtNtB3s_6marker4SendEL_EEEB77_9poll_nexts_0Es_0IB7Y_uB99_EEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !286
  store ptr %i.ce, ptr %i.d, align 8, !noalias !286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !286
  store ptr %i.d, ptr %i.c, align 8, !noalias !286
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !286
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #39
          to label %bb.ah unwind label %bb.ag, !noalias !287

bb.ag:                                            ; preds = %bb.af
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.aj unwind label %bb.ai, !noalias !287

bb.ah:                                            ; preds = %bb.af
  unreachable

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ag
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !287
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.ci = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.by)
          to label %.noexc.i.i unwind label %bb.ai, !noalias !287

.noexc.i.i:                                       ; preds = %bb.aj
  br i1 %i.ci, label %bb.ak, label %.body.i

bb.ak:                                            ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.by)
          to label %.body.i unwind label %bb.ai, !noalias !287

bb.al:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.al, %bb.ak, %.noexc.i.i, %bb.ad, %.noexc.i.i.i4
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cj, %bb.al ], [ %i.ca, %.noexc.i.i.i4 ], [ %i.ca, %bb.ad ], [ %i.cg, %.noexc.i.i ], [ %i.cg, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.body7.thread unwind label %bb.aq, !noalias !283

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3i_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1x_16delta_datafusion14table_provider4next4scan6replayINtB50_14ScanFileStreamINtNtB3m_3pin3PinINtNtB3Y_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3m_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1x_6errors15DeltaTableErrorENtNtB3m_6marker4SendEL_EEEB71_9poll_nexts_0Es_0IB7S_uB93_EEB1x_.exit.i: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB56_14ScanFileStreamINtNtB3s_3pin3PinINtNtB44_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1D_6errors15DeltaTableErrorENtNtB3s_6marker4SendEL_EEEB77_9poll_nexts_0Es_0IB7Y_uB99_EEB1D_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.ck = load i64, ptr %i.e, align 8, !range !20, !alias.scope !290, !noalias !283, !noundef !21
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3i_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1x_16delta_datafusion14table_provider4next4scan6replayINtB50_14ScanFileStreamINtNtB3m_3pin3PinINtNtB3Y_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3m_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1x_6errors15DeltaTableErrorENtNtB3m_6marker4SendEL_EEEB71_9poll_nexts_0Es_0IB7S_uB93_EEB1x_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.cm = load ptr, ptr %i.bn, align 8, !alias.scope !293, !noalias !283, !nonnull !21, !noundef !21
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !294
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit

bb.ao:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3i_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1x_16delta_datafusion14table_provider4next4scan6replayINtB50_14ScanFileStreamINtNtB3m_3pin3PinINtNtB3Y_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3m_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1x_6errors15DeltaTableErrorENtNtB3m_6marker4SendEL_EEEB71_9poll_nexts_0Es_0IB7S_uB93_EEB1x_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.cp = load ptr, ptr %i.bn, align 8, !alias.scope !297, !noalias !283, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !298
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit

bb.aq:                                            ; preds = %bb.ar, %.body.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ar:                                            ; preds = %bb.v
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtBM_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2C_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBS_16delta_datafusion14table_provider4next4scan6replayINtB44_14ScanFileStreamINtNtB4_3pin3PinINtNtB32_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBS_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB63_9poll_nexts_0Es_0EBS_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.f) #40
          to label %.body7.thread unwind label %bb.aq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.an, %bb.ap, %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !283
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = call fastcc noundef nonnull ptr @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE6insertB1B_(ptr noalias noundef align 8 dereferenceable(16) %i.ct, ptr noundef nonnull %i.by)
  store ptr %i.cu, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.as:                                            ; preds = %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cv = icmp eq i64 %i.bg, 0
  br i1 %i.cv, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cw = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !299
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i) #42
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aw
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.body7.thread:                                    ; preds = %bb.ar, %.body.i, %bb.aw
  %.pn13 = phi { ptr, i32 } [ %.pn.ph, %bb.aw ], [ %lpad.thr_comm.split-lp.i, %bb.ar ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn13

bb.aw:                                            ; preds = %bb.k, %bb.t, %bb.au, %bb.as, %bb.at
  %.pn.ph = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.bf, %bb.t ], [ %lpad.thr_comm.split-lp, %bb.au ], [ %lpad.thr_comm.split-lp, %bb.as ], [ %lpad.thr_comm.split-lp, %bb.at ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtBO_14ScanFileStreamINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBY_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3t_9poll_nexts_0EBY_(ptr noalias noundef align 8 dereferenceable(264) %1) #40
          to label %.body7.thread unwind label %bb.av
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEE4bindINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB18_5boxed3BoxDNtNtNtB2A_6future6future6Futurep6OutputTjINtNtB2A_6result6ResultINtNtB18_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB2A_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBR_6future6future6Futurep6OutputTjINtNtBR_6result6ResultINtNtB1n_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBR_6marker4SendEL_EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull %3, i64 noundef %4)
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = invoke fastcc noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE10bind_innerCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.f)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.g, 1
  ret { ptr, ptr } %i.k

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc, %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEE4bindINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB18_5boxed3BoxIB2w_IB32_DNtNtNtB2A_6future6future6Futurep6OutputTjINtNtB2A_6result6ResultINtNtB18_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB2A_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBN_IB1j_DNtNtNtBR_6future6future6Futurep6OutputTjINtNtBR_6result6ResultINtNtB1n_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBR_6marker4SendEL_EEEEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef %3)
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = invoke fastcc noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE10bind_innerCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.f)
          to label %.noexc unwind label %bb.e
end_hunk_1
begin_hunk_2_@_RINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB6_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEBc_:bb.a
  %i.bu = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !alias.scope !417, !noalias !418, !noundef !21
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !417, !noalias !418 ; 3 uses
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !417, !noalias !418 ; 2 uses
  br i1 %i.bv, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.by = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8, !noalias !419
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i
  %i.ca = load i64, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !416, !noundef !21 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, 9223372036854775807
  br i1 %i.cb, label %bb.z, label %bb.x, !prof !27

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #41
          to label %.noexc.i.i.i.i unwind label %bb.y, !noalias !416

.noexc.i.i.i.i:                                   ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.br, align 8, !noalias !416
  br label %bb.bk

bb.z:                                             ; preds = %bb.w
  %i.cd = add nuw nsw i64 %i.ca, 1
  store i64 %i.cd, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !416
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.cf = load i64, ptr %i.ce, align 8, !range !28, !alias.scope !420, !noalias !416, !noundef !21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cf, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !421
  %i.ch = icmp eq i64 %i.cg, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i.i = select i1 %i.ch, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i.i, align 8, !range !20, !alias.scope !422, !noalias !423
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ci = phi i64 [ %i.cf, %bb.z ], [ %.pre.i.i.i.i, %bb.aa ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ce, %bb.z ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i.i, %bb.aa ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.cj = trunc nuw i64 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !422, !noalias !423 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !422, !noalias !423
  br i1 %i.cj, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.co = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !noalias !424
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i6.i.i.i.i = phi i64 [ 1, %bb.ac ], [ 0, %bb.ab ]
  %i.cq = load i64, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !416, !noundef !21
  %i.cr = add i64 %i.cq, -1
  store i64 %i.cr, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !416
  store i8 1, ptr %i.br, align 8, !noalias !416
  br label %bb.ai

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB2z_4scanNtB5d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0E0E0B2d_EB2D_.exit.i.i: ; preds = %.noexc.i, %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.cs = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !alias.scope !425, !noalias !426, !noundef !21
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !425, !noalias !426 ; 3 uses
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !425, !noalias !426 ; 2 uses
  br i1 %i.ct, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB2z_4scanNtB5d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0E0E0B2d_EB2D_.exit.i.i
  %i.cw = atomicrmw add ptr %i.cu, i64 1 monotonic, align 8, !noalias !427
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ai:                                            ; preds = %bb.af, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB2z_4scanNtB5d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0E0E0B2d_EB2D_.exit.i.i, %bb.ae, %bb.u, %bb.t, %bb.q, %bb.p
  %i.cz = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB2z_4scanNtB5d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0E0E0B2d_EB2D_.exit.i.i ], [ %.sroa.0.0.i6.i.i.i.i, %bb.ae ], [ 1, %bb.af ], [ 0, %bb.t ], [ 1, %bb.u ], [ 1, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.da = phi ptr [ %i.cu, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB2z_4scanNtB5d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0E0E0B2d_EB2D_.exit.i.i ], [ %i.cl, %bb.ae ], [ %i.cu, %bb.af ], [ %i.bw, %bb.t ], [ %i.bw, %bb.u ], [ %i.bi, %bb.q ], [ %i.bi, %bb.p ] ; 2 uses
  %.sroa.7.0.ph.sink.i.i = phi ptr [ %i.cv, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB2z_4scanNtB5d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0E0E0B2d_EB2D_.exit.i.i ], [ %i.cn, %bb.ae ], [ %i.cv, %bb.af ], [ %i.bx, %bb.t ], [ %i.bx, %bb.u ], [ %i.bj, %bb.q ], [ %i.bj, %bb.p ]
  store i64 %i.cz, ptr %i.i, align 8, !alias.scope !412, !noalias !411
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.da, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !412, !noalias !411
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.7.0.ph.sink.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !412, !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !411
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.aj unwind label %bb.bg, !noalias !411

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !411
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !411
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dc, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !429
  %i.dd = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.ak unwind label %bb.bf, !noalias !429 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.de = extractvalue { i64, ptr } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { i64, ptr } %i.dd, 1      ; 3 uses
  store i64 %i.de, ptr %i.e, align 8, !noalias !429
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.df, ptr %i.dg, align 8, !noalias !429
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %i.dh = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !430 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i, label %bb.al, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = trunc nuw i64 %i.de to i1               ; 2 uses
  %.sroa.01.0.v.i.i = select i1 %i.di, i64 464, i64 712
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sroa.01.0.v.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false), !noalias !411
  %.sroa.01.0.v.i.i.i.i.i = select i1 %i.di, i64 488, i64 512
  %.sroa.01.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sroa.01.0.v.i.i.i.i.i ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !430, !noundef !21 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !430, !nonnull !21, !align !22, !noundef !21
  %i.dn = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !noalias !430
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.an, %bb.am
  %.sroa.5.0.i.i.i.i.i = phi ptr [ undef, %bb.am ], [ %i.dm, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !430
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1u_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB1w_4scanNtB4a_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0ENtNtBR_8schedule16BlockingScheduleEB1A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.b, ptr noundef %i.dk, ptr %.sroa.5.0.i.i.i.i.i, i64 noundef %i.dh)
          to label %.noexc.i.i unwind label %bb.az, !noalias !429

.noexc.i.i:                                       ; preds = %bb.ap
  %i.dp = load ptr, ptr %i.a, align 8, !noalias !430, !nonnull !21, !noundef !21
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !430, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !430
  %i.ds = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i, ptr noundef nonnull %i.dp, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB1z_4scanNtB4d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i.i unwind label %bb.aq, !noalias !431 ; 2 uses

bb.aq:                                            ; preds = %.noexc.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.dr)
          to label %.noexc.i.i.i4.i unwind label %bb.as, !noalias !431

.noexc.i.i.i4.i:                                  ; preds = %bb.aq
  br i1 %i.du, label %bb.ar, label %.body.i.i

bb.ar:                                            ; preds = %.noexc.i.i.i4.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.dr)
          to label %.body.i.i unwind label %bb.as, !noalias !431

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !431
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB1z_4scanNtB4d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i.i: ; preds = %.noexc.i.i
  %i.dw = extractvalue { i64, ptr } %i.ds, 0
  %i.dx = extractvalue { i64, ptr } %i.ds, 1      ; 2 uses
  %i.dy = trunc nuw i64 %i.dw to i1
  %.not.i.i.i = icmp ne ptr %i.dx, null
  %or.cond.not.i.i.i = select i1 %i.dy, i1 %.not.i.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i.i, label %bb.at, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB1t_4scanNtB47_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i.i, !prof !23

bb.at:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB1z_4scanNtB4d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !432
  store ptr %i.dx, ptr %i.d, align 8, !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !432
  store ptr %i.d, ptr %i.c, align 8, !noalias !432
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !432
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #39
          to label %bb.av unwind label %bb.au, !noalias !433

bb.au:                                            ; preds = %bb.at
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.ax unwind label %bb.aw, !noalias !433

bb.av:                                            ; preds = %bb.at
  unreachable

bb.aw:                                            ; preds = %bb.ay, %bb.ax, %bb.au
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !433
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.eb = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.dr)
          to label %.noexc.i.i.i unwind label %bb.aw, !noalias !433

.noexc.i.i.i:                                     ; preds = %bb.ax
  br i1 %i.eb, label %bb.ay, label %.body.i.i

bb.ay:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.dr)
          to label %.body.i.i unwind label %bb.aw, !noalias !433

bb.az:                                            ; preds = %bb.ap
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.az, %bb.ay, %.noexc.i.i.i, %bb.ar, %.noexc.i.i.i4.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ec, %bb.az ], [ %i.dt, %.noexc.i.i.i4.i ], [ %i.dt, %bb.ar ], [ %i.dz, %.noexc.i.i.i ], [ %i.dz, %bb.ay ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.body29.thread unwind label %bb.be, !noalias !429

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB1t_4scanNtB47_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i.i: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB1z_4scanNtB4d_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.ed = load i64, ptr %i.e, align 8, !range !20, !alias.scope !436, !noalias !429, !noundef !21
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB1t_4scanNtB47_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.ef = load ptr, ptr %i.dg, align 8, !alias.scope !439, !noalias !429, !nonnull !21, !noundef !21
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !440
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dg) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.body29.thread52

bb.bc:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB1t_4scanNtB47_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.ei = load ptr, ptr %i.dg, align 8, !alias.scope !443, !noalias !429, !nonnull !21, !noundef !21
  %i.ej = atomicrmw sub ptr %i.ei, i64 1 release, align 8, !noalias !444
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dg) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.body29.thread52

bb.be:                                            ; preds = %bb.bf, %.body.i.i
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !411
  unreachable

bb.bf:                                            ; preds = %bb.aj
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtBM_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtBO_4scanNtB3r_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_0EBS_(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.f) #40
          to label %.body29.thread unwind label %bb.be, !noalias !411

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bd, %bb.bb, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !429
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.en = invoke fastcc noundef nonnull ptr @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE6insertB1B_(ptr noalias noundef align 8 dereferenceable(16) %i.em, ptr noundef nonnull %i.dr)
          to label %.noexc27 unwind label %.body29.thread52

.noexc27:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i
  store ptr %i.en, ptr %i.g, align 8, !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !411
  invoke void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bm unwind label %.body29.thread52

bb.bg:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.eo = icmp eq i64 %i.cz, 0
  br i1 %i.eo, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ep = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !445
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i) #42
          to label %bb.bk unwind label %bb.bj, !noalias !411

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !428
  unreachable

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.ah, %bb.y
  %.pn.ph.i = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.cy, %bb.ah ], [ %lpad.thr_comm.split-lp.i, %bb.bi ], [ %lpad.thr_comm.split-lp.i, %bb.bg ], [ %lpad.thr_comm.split-lp.i, %bb.bh ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBP_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0EBV_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k) #40
          to label %.body29.thread unwind label %bb.bj, !noalias !428

bb.bl:                                            ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

.body29.thread52:                                 ; preds = %.noexc27, %bb.bb, %bb.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body29.thread

.body29:                                          ; preds = %bb.bm
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bm:                                            ; preds = %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.es = invoke fastcc { ptr, ptr } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5buildB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.j)
          to label %bb.bn unwind label %.body29

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.et = load ptr, ptr %i.p, align 8, !alias.scope !448, !nonnull !21, !noundef !21
  %i.eu = atomicrmw sub ptr %i.et, i64 1 release, align 8, !noalias !448
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit32

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit32 unwind label %bb.bp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.f, %bb.bp
  %.pn15 = phi { ptr, i32 } [ %i.ex, %bb.bp ], [ %.pn13, %bb.f ], [ %.pn13, %.body ] ; 3 uses
  %.sroa.05.1 = phi i8 [ %.sroa.03.3, %bb.bp ], [ %.sroa.05.0, %bb.f ], [ %.sroa.05.0, %.body ] ; 3 uses
  %.sroa.03.2 = phi i8 [ %.sroa.03.3, %bb.bp ], [ %.sroa.03.0, %bb.f ], [ %.sroa.03.0, %.body ]
  %i.ew = trunc nuw i8 %.sroa.03.2 to i1
  br i1 %i.ew, label %bb.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit42

bb.bp:                                            ; preds = %bb.bt, %bb.bo
  %.sroa.03.3 = phi i8 [ 1, %bb.bt ], [ 0, %bb.bo ] ; 2 uses
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit32: ; preds = %bb.bn, %bb.bo
  %i.ey = extractvalue { ptr, ptr } %i.es, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cb, %bb.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit32
  %.sroa.3.0 = phi ptr [ @332, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit32 ], [ @6, %bb.ca ], [ @6, %bb.cb ]
  %.sroa.0.0 = phi ptr [ %i.ey, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit32 ], [ %i.ai, %bb.ca ], [ %i.ai, %bb.cb ]
  %i.ez = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.fa = insertvalue { ptr, ptr } %i.ez, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.fa

.body29.thread:                                   ; preds = %.body.i.i, %bb.bf, %bb.bk, %.body29.thread52
  %eh.lpad-body3050 = phi { ptr, i32 } [ %lpad.thr_comm, %.body29.thread52 ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.bf ], [ %.pn.ph.i, %bb.bk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6stream21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataEEBP_(ptr noalias noundef align 8 dereferenceable(32) %i.l) #40
end_hunk_2
begin_hunk_3_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB11_9MergePlan13rewrite_filesNCNvBX_11read_zorder0E0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB15_:bb.a
; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution13write_streams00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution13write_streams00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution13write_streams00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution13write_streams00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution13write_streams0s_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution13write_streams0s_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution13write_streams0s_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution13write_streams0s_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s0_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s0_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s0_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s0_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s_0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_data_plan00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_data_plan00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_data_plan00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB14_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_data_plan00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1g_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB12_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1e_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB12_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1e_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1b_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4s_5error5ErrorEEs_0B3e_EB1b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(176) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [176 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !22940 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 176, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !22940, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !22940, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !22940
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22940
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4M_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleEB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !22940, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !22940, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22940
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4P_5error5ErrorEEs_0B3B_EB1y_.exit.i unwind label %bb.h, !noalias !22941 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !22941

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !22941

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !22941
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4P_5error5ErrorEEs_0B3B_EB1y_.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4J_5error5ErrorEEs_0B3v_EB1s_.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4P_5error5ErrorEEs_0B3B_EB1y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22942
  store ptr %i.z, ptr %i.d, align 8, !noalias !22942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22942
  store ptr %i.d, ptr %i.c, align 8, !noalias !22942
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !22942
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !22943

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !22943

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !22943
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !22943

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !22943

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4J_5error5ErrorEEs_0B3v_EB1s_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4P_5error5ErrorEEs_0B3B_EB1y_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22944)
  call void @llvm.experimental.noalias.scope.decl(metadata !22945)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !22946, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4J_5error5ErrorEEs_0B3v_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !22947)
  call void @llvm.experimental.noalias.scope.decl(metadata !22948)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !22949, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !22949
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4J_5error5ErrorEEs_0B3v_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !22950)
  call void @llvm.experimental.noalias.scope.decl(metadata !22951)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !22952, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !22952
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol11checkpoints21create_checkpoint_for000INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3N_5error5ErrorEEs_0EBN_(ptr noalias noundef align 8 dereferenceable(176) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1b_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1b_6errors15DeltaTableErrorEEs_0B3h_EB1b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !22975 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !22975, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !22975, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !22975
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22975
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1v_6errors15DeltaTableErrorEEs_0ENtNtBR_8schedule16BlockingScheduleEB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !22975, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !22975, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22975
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_EB1y_.exit.i unwind label %bb.h, !noalias !22976 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !22976

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !22976

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !22976
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_EB1y_.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3y_EB1s_.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_EB1y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22977
  store ptr %i.z, ptr %i.d, align 8, !noalias !22977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22977
  store ptr %i.d, ptr %i.c, align 8, !noalias !22977
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !22977
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !22978

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !22978

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !22978
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !22978

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !22978

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3y_EB1s_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_EB1y_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22979)
  call void @llvm.experimental.noalias.scope.decl(metadata !22980)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !22981, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3y_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !22982)
  call void @llvm.experimental.noalias.scope.decl(metadata !22983)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !22984, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !22984
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3y_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !22985)
  call void @llvm.experimental.noalias.scope.decl(metadata !22986)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !22987, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !22987
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtBN_6errors15DeltaTableErrorEEs_0EBN_(ptr noalias noundef align 8 dereferenceable(104) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1b_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3m_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1b_6errors15DeltaTableErrorEEs_0B3h_EB1b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23010 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23010, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23010, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23010
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23010
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3G_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1v_6errors15DeltaTableErrorEEs_0ENtNtBR_8schedule16BlockingScheduleEB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23010, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23010, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23010
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3J_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_EB1y_.exit.i unwind label %bb.h, !noalias !23011 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23011

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23011

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23011
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3J_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_EB1y_.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3D_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3y_EB1s_.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3J_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_EB1y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23012
  store ptr %i.z, ptr %i.d, align 8, !noalias !23012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23012
  store ptr %i.d, ptr %i.c, align 8, !noalias !23012
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23012
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23013

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23013

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23013
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23013

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23013

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3D_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3y_EB1s_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3J_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_EB1y_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23014)
  call void @llvm.experimental.noalias.scope.decl(metadata !23015)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23016, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3D_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3y_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23017)
  call void @llvm.experimental.noalias.scope.decl(metadata !23018)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23019, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23019
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3D_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3y_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23020)
  call void @llvm.experimental.noalias.scope.decl(metadata !23021)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23022, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23022
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtBN_6errors15DeltaTableErrorEEs_0EBN_(ptr noalias noundef align 8 dereferenceable(104) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1b_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3h_EB1b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(240) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [240 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23045 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(240) %0, i64 240, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23045, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23045, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23045
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23045
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleEB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(240) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23045, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23045, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23045
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3E_EB1y_.exit.i unwind label %bb.h, !noalias !23046 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23046

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23046

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23046
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3E_EB1y_.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3y_EB1s_.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3E_EB1y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23047
  store ptr %i.z, ptr %i.d, align 8, !noalias !23047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23047
  store ptr %i.d, ptr %i.c, align 8, !noalias !23047
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23047
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23048

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23048

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23048
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23048

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23048

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3y_EB1s_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3E_EB1y_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23049)
  call void @llvm.experimental.noalias.scope.decl(metadata !23050)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23051, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3y_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23052)
  call void @llvm.experimental.noalias.scope.decl(metadata !23053)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23054, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23054
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3y_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23055)
  call void @llvm.experimental.noalias.scope.decl(metadata !23056)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23057, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23057
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0EBN_(ptr noalias noundef align 8 dereferenceable(240) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1b_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4q_5error5ErrorEEs_0B3c_EB1b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23080 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23080, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23080, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23080
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23080
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4K_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleEB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23080, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23080, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23080
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0B3z_EB1y_.exit.i unwind label %bb.h, !noalias !23081 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23081

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23081

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23081
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0B3z_EB1y_.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4H_5error5ErrorEEs_0B3t_EB1s_.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0B3z_EB1y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23082
  store ptr %i.z, ptr %i.d, align 8, !noalias !23082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23082
  store ptr %i.d, ptr %i.c, align 8, !noalias !23082
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23082
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23083

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23083

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23083
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23083

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23083

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4H_5error5ErrorEEs_0B3t_EB1s_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0B3z_EB1y_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23084)
  call void @llvm.experimental.noalias.scope.decl(metadata !23085)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23086, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4H_5error5ErrorEEs_0B3t_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23087)
  call void @llvm.experimental.noalias.scope.decl(metadata !23088)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23089, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23089
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4H_5error5ErrorEEs_0B3t_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23090)
  call void @llvm.experimental.noalias.scope.decl(metadata !23091)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23092, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23092
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol14log_compaction16compact_logs_for000INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3L_5error5ErrorEEs_0EBN_(ptr noalias noundef align 8 dereferenceable(96) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1b_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3k_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1b_6errors15DeltaTableErrorEEs_0B3f_EB1b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23115 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23115, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23115, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23115
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23115
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3E_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1v_6errors15DeltaTableErrorEEs_0ENtNtBR_8schedule16BlockingScheduleEB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23115, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23115, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23115
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3H_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3C_EB1y_.exit.i unwind label %bb.h, !noalias !23116 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23116

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23116

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23116
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3H_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3C_EB1y_.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3B_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3w_EB1s_.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3H_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3C_EB1y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23117
  store ptr %i.z, ptr %i.d, align 8, !noalias !23117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23117
  store ptr %i.d, ptr %i.c, align 8, !noalias !23117
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23117
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23118

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23118

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23118
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23118

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23118

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3B_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3w_EB1s_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3H_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3C_EB1y_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23119)
  call void @llvm.experimental.noalias.scope.decl(metadata !23120)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23121, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3B_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3w_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23122)
  call void @llvm.experimental.noalias.scope.decl(metadata !23123)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23124, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23124
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1s_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3B_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1s_6errors15DeltaTableErrorEEs_0B3w_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23125)
  call void @llvm.experimental.noalias.scope.decl(metadata !23126)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23127, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23127
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol14log_compaction16compact_logs_for00s0_0INtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtBN_6errors15DeltaTableErrorEEs_0EBN_(ptr noalias noundef align 8 dereferenceable(104) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB19_8snapshotNtB2j_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4o_5error5ErrorEEs_0B3a_EB1b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [184 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23150 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull align 8 dereferenceable(184) %0, i64 184, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23150, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23150, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23150
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23150
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1t_8snapshotNtB2D_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4I_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleEB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23150, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23150, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23150
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_EB1y_.exit.i unwind label %bb.h, !noalias !23151 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23151

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23151

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23151
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_EB1y_.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1q_8snapshotNtB2A_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4F_5error5ErrorEEs_0B3r_EB1s_.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_EB1y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23152
  store ptr %i.z, ptr %i.d, align 8, !noalias !23152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23152
  store ptr %i.d, ptr %i.c, align 8, !noalias !23152
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23152
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23153

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23153

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23153
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23153

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23153

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1q_8snapshotNtB2A_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4F_5error5ErrorEEs_0B3r_EB1s_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_EB1y_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23154)
  call void @llvm.experimental.noalias.scope.decl(metadata !23155)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23156, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1q_8snapshotNtB2A_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4F_5error5ErrorEEs_0B3r_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23157)
  call void @llvm.experimental.noalias.scope.decl(metadata !23158)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23159, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23159
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1q_8snapshotNtB2A_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4F_5error5ErrorEEs_0B3r_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23160)
  call void @llvm.experimental.noalias.scope.decl(metadata !23161)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23162, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23162
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0EBN_(ptr noalias noundef align 8 dereferenceable(184) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB19_8snapshotNtB2j_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4a_5error5ErrorEEs_0B2W_EB1b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23185 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23185, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23185, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23185
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23185
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1t_8snapshotNtB2D_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4u_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleEB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23185, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23185, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23185
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4x_5error5ErrorEEs_0B3j_EB1y_.exit.i unwind label %bb.h, !noalias !23186 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23186

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23186

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23186
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4x_5error5ErrorEEs_0B3j_EB1y_.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1q_8snapshotNtB2A_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4r_5error5ErrorEEs_0B3d_EB1s_.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4x_5error5ErrorEEs_0B3j_EB1y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23187
  store ptr %i.z, ptr %i.d, align 8, !noalias !23187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23187
  store ptr %i.d, ptr %i.c, align 8, !noalias !23187
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23187
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23188

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23188

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23188
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23188

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23188

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1q_8snapshotNtB2A_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4r_5error5ErrorEEs_0B3d_EB1s_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4x_5error5ErrorEEs_0B3j_EB1y_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23189)
  call void @llvm.experimental.noalias.scope.decl(metadata !23190)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23191, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1q_8snapshotNtB2A_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4r_5error5ErrorEEs_0B3d_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23192)
  call void @llvm.experimental.noalias.scope.decl(metadata !23193)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23194, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23194
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1q_8snapshotNtB2A_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4r_5error5ErrorEEs_0B3d_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23195)
  call void @llvm.experimental.noalias.scope.decl(metadata !23196)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23197, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23197
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot6update00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3v_5error5ErrorEEs_0EBN_(ptr noalias noundef align 8 dereferenceable(104) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1b_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3z_5error5ErrorEEs_0B2T_EB1b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(176) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [176 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23220 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 176, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23220, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23220, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23220
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23220
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1v_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3T_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleEB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23220, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23220, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23220
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3W_5error5ErrorEEs_0B3g_EB1y_.exit.i unwind label %bb.h, !noalias !23221 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23221

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23221

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23221
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3W_5error5ErrorEEs_0B3g_EB1y_.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1s_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Q_5error5ErrorEEs_0B3a_EB1s_.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3W_5error5ErrorEEs_0B3g_EB1y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23222
  store ptr %i.z, ptr %i.d, align 8, !noalias !23222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23222
  store ptr %i.d, ptr %i.c, align 8, !noalias !23222
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23222
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23223

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23223

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23223
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23223

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23223

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1s_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Q_5error5ErrorEEs_0B3a_EB1s_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3W_5error5ErrorEEs_0B3g_EB1y_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23224)
  call void @llvm.experimental.noalias.scope.decl(metadata !23225)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23226, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1s_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Q_5error5ErrorEEs_0B3a_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23227)
  call void @llvm.experimental.noalias.scope.decl(metadata !23228)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23229, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23229
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1s_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Q_5error5ErrorEEs_0B3a_EB1s_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23230)
  call void @llvm.experimental.noalias.scope.decl(metadata !23231)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23232, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23232
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0EBN_(ptr noalias noundef align 8 dereferenceable(176) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvNtB2i_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB53_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB4Z_NtB2m_8FileMetaNtNtB2m_5error5ErrorENtNtB53_6marker4SendEL_EEB7B_EE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23259 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23259, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23259, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23259
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23259
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvNtB2C_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5j_NtB2G_8FileMetaNtNtB2G_5error5ErrorENtNtB5n_6marker4SendEL_EEB7V_EE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23259, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23259, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23259
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5q_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5m_NtB2J_8FileMetaNtNtB2J_5error5ErrorENtNtB5q_6marker4SendEL_EEB7Y_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23260 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23260

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23260

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23260
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5q_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5m_NtB2J_8FileMetaNtNtB2J_5error5ErrorENtNtB5q_6marker4SendEL_EEB7Y_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5k_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5g_NtB2D_8FileMetaNtNtB2D_5error5ErrorENtNtB5k_6marker4SendEL_EEB7S_EE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5q_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5m_NtB2J_8FileMetaNtNtB2J_5error5ErrorENtNtB5q_6marker4SendEL_EEB7Y_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23261
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23261
  store ptr %i.c, ptr %i.b, align 8, !noalias !23261
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23261
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5k_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5g_NtB2D_8FileMetaNtNtB2D_5error5ErrorENtNtB5k_6marker4SendEL_EEB7S_EE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5q_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5m_NtB2J_8FileMetaNtNtB2J_5error5ErrorENtNtB5q_6marker4SendEL_EEB7Y_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23262)
  call void @llvm.experimental.noalias.scope.decl(metadata !23263)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23264, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5k_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5g_NtB2D_8FileMetaNtNtB2D_5error5ErrorENtNtB5k_6marker4SendEL_EEB7S_EE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23265)
  call void @llvm.experimental.noalias.scope.decl(metadata !23266)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23267, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23267
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem14list_from_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5k_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5g_NtB2D_8FileMetaNtNtB2D_5error5ErrorENtNtB5k_6marker4SendEL_EEB7S_EE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23268)
  call void @llvm.experimental.noalias.scope.decl(metadata !23269)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23270, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23270
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23271
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvNtB2i_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB54_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB50_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2m_5error5ErrorENtNtB54_6marker4SendEL_EEB7X_EE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23298 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23298, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23298, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23298
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23298
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvNtB2C_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5o_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5k_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2G_5error5ErrorENtNtB5o_6marker4SendEL_EEB8h_EE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23298, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23298, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23298
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5n_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2J_5error5ErrorENtNtB5r_6marker4SendEL_EEB8k_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23299 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23299

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23299

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23299
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5n_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2J_5error5ErrorENtNtB5r_6marker4SendEL_EEB8k_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5l_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5h_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2D_5error5ErrorENtNtB5l_6marker4SendEL_EEB8e_EE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5n_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2J_5error5ErrorENtNtB5r_6marker4SendEL_EEB8k_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23300
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23300
  store ptr %i.c, ptr %i.b, align 8, !noalias !23300
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23300
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5l_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5h_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2D_5error5ErrorENtNtB5l_6marker4SendEL_EEB8e_EE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5n_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2J_5error5ErrorENtNtB5r_6marker4SendEL_EEB8k_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23301)
  call void @llvm.experimental.noalias.scope.decl(metadata !23302)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23303, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5l_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5h_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2D_5error5ErrorENtNtB5l_6marker4SendEL_EEB8e_EE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23304)
  call void @llvm.experimental.noalias.scope.decl(metadata !23305)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23306, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23306
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem15read_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5l_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5h_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2D_5error5ErrorENtNtB5l_6marker4SendEL_EEB8e_EE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23307)
  call void @llvm.experimental.noalias.scope.decl(metadata !23308)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23309, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23309
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23310
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvNtB2i_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2m_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23337 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23337, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23337, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23337
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23337
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvNtB2C_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2G_5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23337, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23337, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23337
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23338 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23338

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23338

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23338
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23339
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23339
  store ptr %i.c, ptr %i.b, align 8, !noalias !23339
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23339
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23340)
  call void @llvm.experimental.noalias.scope.decl(metadata !23341)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23342, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23343)
  call void @llvm.experimental.noalias.scope.decl(metadata !23344)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23345, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23345
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem16copy_atomic_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23346)
  call void @llvm.experimental.noalias.scope.decl(metadata !23347)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23348, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23348
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23349
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvNtB2i_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2m_8FileMetaNtNtB2m_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23376 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23376, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23376, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23376
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23376
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvNtB2C_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2G_8FileMetaNtNtB2G_5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23376, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23376, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23376
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_8FileMetaNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23377 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23377

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23377

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23377
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_8FileMetaNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_8FileMetaNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_8FileMetaNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23378
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23378
  store ptr %i.c, ptr %i.b, align 8, !noalias !23378
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23378
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_8FileMetaNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_8FileMetaNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23379)
  call void @llvm.experimental.noalias.scope.decl(metadata !23380)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23381, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_8FileMetaNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23382)
  call void @llvm.experimental.noalias.scope.decl(metadata !23383)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23384, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23384
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_10filesystem9head_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_8FileMetaNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23385)
  call void @llvm.experimental.noalias.scope.decl(metadata !23386)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23387, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23387
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23388
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvNtB2i_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB52_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB4Y_IB5R_DNtNtB2m_11engine_data10EngineDataEL_ENtNtB2m_5error5ErrorENtNtB52_6marker4SendEL_EEB82_EE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23415 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23415, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23415, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23415
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23415
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvNtB2C_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5m_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5i_IB6b_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtB5m_6marker4SendEL_EEB8m_EE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23415, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23415, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23415
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5p_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5l_IB6e_DNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorENtNtB5p_6marker4SendEL_EEB8p_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23416 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23416

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23416

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23416
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5p_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5l_IB6e_DNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorENtNtB5p_6marker4SendEL_EEB8p_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5j_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5f_IB68_DNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorENtNtB5j_6marker4SendEL_EEB8j_EE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5p_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5l_IB6e_DNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorENtNtB5p_6marker4SendEL_EEB8p_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23417
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23417
  store ptr %i.c, ptr %i.b, align 8, !noalias !23417
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23417
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5j_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5f_IB68_DNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorENtNtB5j_6marker4SendEL_EEB8j_EE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5p_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5l_IB6e_DNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorENtNtB5p_6marker4SendEL_EEB8p_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23418)
  call void @llvm.experimental.noalias.scope.decl(metadata !23419)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23420, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5j_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5f_IB68_DNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorENtNtB5j_6marker4SendEL_EEB8j_EE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23421)
  call void @llvm.experimental.noalias.scope.decl(metadata !23422)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23423, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23423
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_4json20read_json_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5j_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5f_IB68_DNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorENtNtB5j_6marker4SendEL_EEB8j_EE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23424)
  call void @llvm.experimental.noalias.scope.decl(metadata !23425)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23426, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23426
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23427
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvNtB2i_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2m_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23454 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23454, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23454, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23454
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23454
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvNtB2C_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2G_5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23454, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23454, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23454
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23455 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23455

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23455

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23455
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23456
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23456
  store ptr %i.c, ptr %i.b, align 8, !noalias !23456
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23456
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23457)
  call void @llvm.experimental.noalias.scope.decl(metadata !23458)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23459, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23460)
  call void @llvm.experimental.noalias.scope.decl(metadata !23461)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23462, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23462
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_4json20write_json_file_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23463)
  call void @llvm.experimental.noalias.scope.decl(metadata !23464)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23465, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23465
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23466
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvNtB2i_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB58_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB54_IB5X_DNtNtB2m_11engine_data10EngineDataEL_ENtNtB2m_5error5ErrorENtNtB58_6marker4SendEL_EEB88_EE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23493 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23493, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23493, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23493
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23493
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvNtB2C_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5o_IB6h_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtB5s_6marker4SendEL_EEB8s_EE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23493, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23493, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23493
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5v_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5r_IB6k_DNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorENtNtB5v_6marker4SendEL_EEB8v_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23494 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23494

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23494

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23494
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5v_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5r_IB6k_DNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorENtNtB5v_6marker4SendEL_EEB8v_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5p_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5l_IB6e_DNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorENtNtB5p_6marker4SendEL_EEB8p_EE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5v_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5r_IB6k_DNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorENtNtB5v_6marker4SendEL_EEB8v_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23495
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23495
  store ptr %i.c, ptr %i.b, align 8, !noalias !23495
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23495
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5p_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5l_IB6e_DNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorENtNtB5p_6marker4SendEL_EEB8p_EE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvNtB2F_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5v_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5r_IB6k_DNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorENtNtB5v_6marker4SendEL_EEB8v_EE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23496)
  call void @llvm.experimental.noalias.scope.decl(metadata !23497)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23498, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5p_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5l_IB6e_DNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorENtNtB5p_6marker4SendEL_EEB8p_EE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23499)
  call void @llvm.experimental.noalias.scope.decl(metadata !23500)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23501, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23501
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvNtB2z_7parquet23read_parquet_files_impl0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5p_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5l_IB6e_DNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorENtNtB5p_6marker4SendEL_EEB8p_EE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23502)
  call void @llvm.experimental.noalias.scope.decl(metadata !23503)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23504, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23504
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23505
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvXB2i_INtB2i_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2m_11engine_data10EngineDataEL_ENtNtB2m_5error5ErrorEB3i_ENtNtNtNtB50_4iter6traits8iterator8Iterator4next0Es_0TINtNtB50_6option6OptionB4V_EINtNtB50_3pin3PinIB5y_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB4V_NtNtB50_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23532 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23532, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23532, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23532
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23532
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvXB2C_INtB2C_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorEB3C_ENtNtNtNtB5k_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5k_6option6OptionB5f_EINtNtB5k_3pin3PinIB5S_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5f_NtNtB5k_6marker4SendEL_EEEE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23532, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23532, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23532
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinIB5V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23533 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23533

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23533

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23533
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinIB5V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinIB5P_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinIB5V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23534
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23534
  store ptr %i.c, ptr %i.b, align 8, !noalias !23534
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23534
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinIB5P_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2J_11engine_data10EngineDataEL_ENtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinIB5V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23535)
  call void @llvm.experimental.noalias.scope.decl(metadata !23536)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23537, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinIB5P_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23538)
  call void @llvm.experimental.noalias.scope.decl(metadata !23539)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23540, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23540
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB2D_11engine_data10EngineDataEL_ENtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinIB5P_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23541)
  call void @llvm.experimental.noalias.scope.decl(metadata !23542)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23543, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23543
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23544
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvXB2i_INtB2i_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2m_8FileMetaNtNtB2m_5error5ErrorEB3i_ENtNtNtNtB50_4iter6traits8iterator8Iterator4next0Es_0TINtNtB50_6option6OptionB4V_EINtNtB50_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB4V_NtNtB50_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23571 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23571, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23571, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23571
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23571
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvXB2C_INtB2C_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2G_8FileMetaNtNtB2G_5error5ErrorEB3C_ENtNtNtNtB5k_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5k_6option6OptionB5f_EINtNtB5k_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5f_NtNtB5k_6marker4SendEL_EEEE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23571, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23571, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23571
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_8FileMetaNtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23572 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23572

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23572

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23572
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_8FileMetaNtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_8FileMetaNtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_8FileMetaNtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23573
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23573
  store ptr %i.c, ptr %i.b, align 8, !noalias !23573
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23573
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_8FileMetaNtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_8FileMetaNtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23574)
  call void @llvm.experimental.noalias.scope.decl(metadata !23575)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23576, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_8FileMetaNtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23577)
  call void @llvm.experimental.noalias.scope.decl(metadata !23578)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23579, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23579
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_8FileMetaNtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23580)
  call void @llvm.experimental.noalias.scope.decl(metadata !23581)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23582, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23582
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23583
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvXB2i_INtB2i_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2m_5error5ErrorEB3i_ENtNtNtNtB50_4iter6traits8iterator8Iterator4next0Es_0TINtNtB50_6option6OptionB4V_EINtNtB50_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB4V_NtNtB50_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23610 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23610, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23610, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23610
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23610
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvXB2C_INtB2C_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2G_5error5ErrorEB3C_ENtNtNtNtB5k_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5k_6option6OptionB5f_EINtNtB5k_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5f_NtNtB5k_6marker4SendEL_EEEE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23610, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23610, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23610
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23611 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23611

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23611

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23611
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23612
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23612
  store ptr %i.c, ptr %i.b, align 8, !noalias !23612
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23612
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXB2F_INtB2F_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2J_5error5ErrorEB3F_ENtNtNtNtB5n_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5n_6option6OptionB5i_EINtNtB5n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5i_NtNtB5n_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23613)
  call void @llvm.experimental.noalias.scope.decl(metadata !23614)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23615, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23616)
  call void @llvm.experimental.noalias.scope.decl(metadata !23617)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23618, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23618
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXB2z_INtB2z_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB2D_5error5ErrorEB3z_ENtNtNtNtB5h_4iter6traits8iterator8Iterator4next0Es_0TINtNtB5h_6option6OptionB5c_EINtNtB5h_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB5c_NtNtB5h_6marker4SendEL_EEEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23619)
  call void @llvm.experimental.noalias.scope.decl(metadata !23620)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23621, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23621
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23622
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvXs0_NtB2i_7parquetINtB4p_21DefaultParquetHandlerB3i_ENtB2m_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2m_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23649 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23649, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23649, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23649
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23649
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvXs0_NtB2C_7parquetINtB4J_21DefaultParquetHandlerB3C_ENtB2G_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2G_5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23649, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23649, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23649
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXs0_NtB2F_7parquetINtB4M_21DefaultParquetHandlerB3F_ENtB2J_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23650 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23650

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23650

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23650
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXs0_NtB2F_7parquetINtB4M_21DefaultParquetHandlerB3F_ENtB2J_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXs0_NtB2z_7parquetINtB4G_21DefaultParquetHandlerB3z_ENtB2D_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXs0_NtB2F_7parquetINtB4M_21DefaultParquetHandlerB3F_ENtB2J_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23651
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23651
  store ptr %i.c, ptr %i.b, align 8, !noalias !23651
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23651
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXs0_NtB2z_7parquetINtB4G_21DefaultParquetHandlerB3z_ENtB2D_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXs0_NtB2F_7parquetINtB4M_21DefaultParquetHandlerB3F_ENtB2J_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23652)
  call void @llvm.experimental.noalias.scope.decl(metadata !23653)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23654, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXs0_NtB2z_7parquetINtB4G_21DefaultParquetHandlerB3z_ENtB2D_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23655)
  call void @llvm.experimental.noalias.scope.decl(metadata !23656)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23657, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23657
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXs0_NtB2z_7parquetINtB4G_21DefaultParquetHandlerB3z_ENtB2D_14ParquetHandler18write_parquet_file0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23658)
  call void @llvm.experimental.noalias.scope.decl(metadata !23659)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23660, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23660
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23661
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2e_24TokioMultiThreadExecutorNtB2g_12TaskExecutor8block_onNCNvXs0_NtB2i_7parquetINtB4p_21DefaultParquetHandlerB3i_ENtB2m_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2m_13ParquetFooterNtNtB2m_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23688 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23688, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23688, !nonnull !21, !align !22, !noundef !21
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !23688
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23688
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2y_24TokioMultiThreadExecutorNtB2A_12TaskExecutor8block_onNCNvXs0_NtB2C_7parquetINtB4J_21DefaultParquetHandlerB3C_ENtB2G_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2G_13ParquetFooterNtNtB2G_5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !23688, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !23688, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23688
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXs0_NtB2F_7parquetINtB4M_21DefaultParquetHandlerB3F_ENtB2J_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_13ParquetFooterNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23689 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23689

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !23689

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23689
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXs0_NtB2F_7parquetINtB4M_21DefaultParquetHandlerB3F_ENtB2J_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_13ParquetFooterNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXs0_NtB2z_7parquetINtB4G_21DefaultParquetHandlerB3z_ENtB2D_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_13ParquetFooterNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXs0_NtB2F_7parquetINtB4M_21DefaultParquetHandlerB3F_ENtB2J_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_13ParquetFooterNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23690
  store ptr %i.aa, ptr %i.c, align 8, !noalias !23690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23690
  store ptr %i.c, ptr %i.b, align 8, !noalias !23690
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23690
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #40
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXs0_NtB2z_7parquetINtB4G_21DefaultParquetHandlerB3z_ENtB2D_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_13ParquetFooterNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2B_24TokioMultiThreadExecutorNtB2D_12TaskExecutor8block_onNCNvXs0_NtB2F_7parquetINtB4M_21DefaultParquetHandlerB3F_ENtB2J_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_13ParquetFooterNtNtB2J_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23691)
  call void @llvm.experimental.noalias.scope.decl(metadata !23692)
  %i.ag = load i64, ptr %i.d, align 8, !range !20, !alias.scope !23693, !noundef !21
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXs0_NtB2z_7parquetINtB4G_21DefaultParquetHandlerB3z_ENtB2D_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_13ParquetFooterNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23694)
  call void @llvm.experimental.noalias.scope.decl(metadata !23695)
  %i.ai = load ptr, ptr %i.i, align 8, !alias.scope !23696, !nonnull !21, !noundef !21
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !23696
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2v_24TokioMultiThreadExecutorNtB2x_12TaskExecutor8block_onNCNvXs0_NtB2z_7parquetINtB4G_21DefaultParquetHandlerB3z_ENtB2D_14ParquetHandler19read_parquet_footer0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_13ParquetFooterNtNtB2D_5error5ErrorEE00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23697)
  call void @llvm.experimental.noalias.scope.decl(metadata !23698)
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !23699, !nonnull !21, !noundef !21
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !23699
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !23700
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23723 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23723, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23723, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23723
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23723
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_10filesystem14list_from_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23723, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23723, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23723
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23724 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23724

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23724

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23724
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23725
  store ptr %i.z, ptr %i.d, align 8, !noalias !23725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23725
  store ptr %i.d, ptr %i.c, align 8, !noalias !23725
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23725
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23726

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23726

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23726
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23726

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23726

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23727)
  call void @llvm.experimental.noalias.scope.decl(metadata !23728)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23729, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23730)
  call void @llvm.experimental.noalias.scope.decl(metadata !23731)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23732, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23732
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23733)
  call void @llvm.experimental.noalias.scope.decl(metadata !23734)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23735, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23735
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_10filesystem14list_from_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23758 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23758, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23758, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23758
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23758
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_10filesystem15read_files_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23758, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23758, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23758
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23759 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23759

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23759

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23759
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23760
  store ptr %i.z, ptr %i.d, align 8, !noalias !23760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23760
  store ptr %i.d, ptr %i.c, align 8, !noalias !23760
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23760
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23761

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23761

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23761
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23761

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23761

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23762)
  call void @llvm.experimental.noalias.scope.decl(metadata !23763)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23764, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23765)
  call void @llvm.experimental.noalias.scope.decl(metadata !23766)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23767, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23767
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23768)
  call void @llvm.experimental.noalias.scope.decl(metadata !23769)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23770, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23770
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_10filesystem15read_files_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23793 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23793, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23793, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23793
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23793
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_10filesystem16copy_atomic_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23793, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23793, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23793
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23794 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23794

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23794

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23794
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23795
  store ptr %i.z, ptr %i.d, align 8, !noalias !23795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23795
  store ptr %i.d, ptr %i.c, align 8, !noalias !23795
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23795
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23796

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23796

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23796
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23796

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23796

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23797)
  call void @llvm.experimental.noalias.scope.decl(metadata !23798)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23799, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23800)
  call void @llvm.experimental.noalias.scope.decl(metadata !23801)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23802, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23802
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23803)
  call void @llvm.experimental.noalias.scope.decl(metadata !23804)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23805, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23805
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_10filesystem16copy_atomic_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23828 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %0, i64 128, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23828, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23828, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23828
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23828
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_10filesystem9head_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23828, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23828, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23828
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23829 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23829

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23829

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23829
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23830
  store ptr %i.z, ptr %i.d, align 8, !noalias !23830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23830
  store ptr %i.d, ptr %i.c, align 8, !noalias !23830
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23830
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23831

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23831

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23831
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23831

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23831

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23832)
  call void @llvm.experimental.noalias.scope.decl(metadata !23833)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23834, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23835)
  call void @llvm.experimental.noalias.scope.decl(metadata !23836)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23837, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23837
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23838)
  call void @llvm.experimental.noalias.scope.decl(metadata !23839)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23840, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23840
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_10filesystem9head_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23863 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23863, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23863, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23863
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23863
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_4json20read_json_files_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23863, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23863, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23863
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23864 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23864

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23864

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23864
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23865
  store ptr %i.z, ptr %i.d, align 8, !noalias !23865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23865
  store ptr %i.d, ptr %i.c, align 8, !noalias !23865
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23865
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23866

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23866

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23866
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23866

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23866

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23867)
  call void @llvm.experimental.noalias.scope.decl(metadata !23868)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23869, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23870)
  call void @llvm.experimental.noalias.scope.decl(metadata !23871)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23872, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23872
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23873)
  call void @llvm.experimental.noalias.scope.decl(metadata !23874)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23875, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23875
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_4json20read_json_files_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23898 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23898, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23898, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23898
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23898
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_4json20write_json_file_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23898, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23898, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23898
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23899 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23899

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23899

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23899
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23900
  store ptr %i.z, ptr %i.d, align 8, !noalias !23900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23900
  store ptr %i.d, ptr %i.c, align 8, !noalias !23900
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23900
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23901

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23901

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23901
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23901

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23901

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23902)
  call void @llvm.experimental.noalias.scope.decl(metadata !23903)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23904, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23905)
  call void @llvm.experimental.noalias.scope.decl(metadata !23906)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23907, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23907
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23908)
  call void @llvm.experimental.noalias.scope.decl(metadata !23909)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23910, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23910
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_4json20write_json_file_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23933 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23933, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23933, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23933
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23933
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_7parquet23read_parquet_files_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23933, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23933, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23933
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23934 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23934

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23934

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23934
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23935
  store ptr %i.z, ptr %i.d, align 8, !noalias !23935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23935
  store ptr %i.d, ptr %i.c, align 8, !noalias !23935
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23935
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23936

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23936

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23936
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23936

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23936

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23937)
  call void @llvm.experimental.noalias.scope.decl(metadata !23938)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23939, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23940)
  call void @llvm.experimental.noalias.scope.decl(metadata !23941)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23942, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23942
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23943)
  call void @llvm.experimental.noalias.scope.decl(metadata !23944)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23945, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23945
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_7parquet23read_parquet_files_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXB1j_INtB1j_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1n_11engine_data10EngineDataEL_ENtNtB1n_5error5ErrorEB2j_ENtNtNtNtB40_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23968 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %0, i64 128, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23968, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !23968, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !23968
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23968
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvXB1D_INtB1D_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1H_11engine_data10EngineDataEL_ENtNtB1H_5error5ErrorEB2D_ENtNtNtNtB4k_4iter6traits8iterator8Iterator4next0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !23968, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !23968, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23968
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !23969 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !23969

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !23969

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23969
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1E_11engine_data10EngineDataEL_ENtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23970
  store ptr %i.z, ptr %i.d, align 8, !noalias !23970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23970
  store ptr %i.d, ptr %i.c, align 8, !noalias !23970
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !23970
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !23971

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !23971

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !23971
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !23971

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !23971

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1E_11engine_data10EngineDataEL_ENtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23972)
  call void @llvm.experimental.noalias.scope.decl(metadata !23973)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !23974, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1E_11engine_data10EngineDataEL_ENtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23975)
  call void @llvm.experimental.noalias.scope.decl(metadata !23976)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !23977, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23977
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1E_11engine_data10EngineDataEL_ENtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23978)
  call void @llvm.experimental.noalias.scope.decl(metadata !23979)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !23980, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !23980
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvXBV_INtBV_22BlockingStreamIteratorINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtBZ_11engine_data10EngineDataEL_ENtNtBZ_5error5ErrorEB1V_ENtNtNtNtB4_4iter6traits8iterator8Iterator4next0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXB1j_INtB1j_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1n_8FileMetaNtNtB1n_5error5ErrorEB2j_ENtNtNtNtB40_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24003 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.b, ptr noundef nonnull align 16 dereferenceable(144) %0, i64 144, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24003, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24003, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24003
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24003
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvXB1D_INtB1D_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1H_8FileMetaNtNtB1H_5error5ErrorEB2D_ENtNtNtNtB4k_4iter6traits8iterator8Iterator4next0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24003, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24003, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24003
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1K_8FileMetaNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24004 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24004

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24004

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24004
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1K_8FileMetaNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1E_8FileMetaNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1K_8FileMetaNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24005
  store ptr %i.z, ptr %i.d, align 8, !noalias !24005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24005
  store ptr %i.d, ptr %i.c, align 8, !noalias !24005
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24005
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24006

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24006

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24006
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24006

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24006

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1E_8FileMetaNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1K_8FileMetaNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24007)
  call void @llvm.experimental.noalias.scope.decl(metadata !24008)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24009, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1E_8FileMetaNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24010)
  call void @llvm.experimental.noalias.scope.decl(metadata !24011)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24012, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24012
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1E_8FileMetaNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24013)
  call void @llvm.experimental.noalias.scope.decl(metadata !24014)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24015, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24015
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvXBV_INtBV_22BlockingStreamIteratorINtNtB4_6result6ResultNtBZ_8FileMetaNtNtBZ_5error5ErrorEB1V_ENtNtNtNtB4_4iter6traits8iterator8Iterator4next0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(144) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXB1j_INtB1j_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1n_5error5ErrorEB2j_ENtNtNtNtB40_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24038 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %0, i64 128, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24038, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24038, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24038
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24038
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvXB1D_INtB1D_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1H_5error5ErrorEB2D_ENtNtNtNtB4k_4iter6traits8iterator8Iterator4next0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24038, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24038, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24038
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24039 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24039

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24039

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24039
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24040
  store ptr %i.z, ptr %i.d, align 8, !noalias !24040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24040
  store ptr %i.d, ptr %i.c, align 8, !noalias !24040
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24040
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24041

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24041

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24041
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24041

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24041

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4n_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24042)
  call void @llvm.experimental.noalias.scope.decl(metadata !24043)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24044, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24045)
  call void @llvm.experimental.noalias.scope.decl(metadata !24046)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24047, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24047
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4h_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24048)
  call void @llvm.experimental.noalias.scope.decl(metadata !24049)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24050, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24050
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvXBV_INtBV_22BlockingStreamIteratorINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtBZ_5error5ErrorEB1V_ENtNtNtNtB4_4iter6traits8iterator8Iterator4next0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXs0_NtB1j_7parquetINtB3p_21DefaultParquetHandlerB2j_ENtB1n_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24073 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24073, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24073, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24073
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24073
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvXs0_NtB1D_7parquetINtB3J_21DefaultParquetHandlerB2D_ENtB1H_14ParquetHandler18write_parquet_file0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24073, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24073, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24073
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3M_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24074 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24074

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24074

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24074
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3M_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3G_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3M_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24075
  store ptr %i.z, ptr %i.d, align 8, !noalias !24075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24075
  store ptr %i.d, ptr %i.c, align 8, !noalias !24075
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24075
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24076

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24076

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24076
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24076

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24076

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3G_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3M_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24077)
  call void @llvm.experimental.noalias.scope.decl(metadata !24078)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24079, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3G_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24080)
  call void @llvm.experimental.noalias.scope.decl(metadata !24081)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24082, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24082
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3G_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24083)
  call void @llvm.experimental.noalias.scope.decl(metadata !24084)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24085, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24085
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvXs0_NtBV_7parquetINtB2Z_21DefaultParquetHandlerB1V_ENtBZ_14ParquetHandler18write_parquet_file0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXs0_NtB1j_7parquetINtB3p_21DefaultParquetHandlerB2j_ENtB1n_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24108 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24108, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24108, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24108
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24108
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_23TokioBackgroundExecutorNtB1B_12TaskExecutor8block_onNCNvXs0_NtB1D_7parquetINtB3J_21DefaultParquetHandlerB2D_ENtB1H_14ParquetHandler19read_parquet_footer0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24108, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24108, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24108
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3M_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24109 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24109

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24109

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24109
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3M_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3G_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3M_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24110
  store ptr %i.z, ptr %i.d, align 8, !noalias !24110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24110
  store ptr %i.d, ptr %i.c, align 8, !noalias !24110
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24110
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24111

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24111

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24111
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24111

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24111

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3G_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_23TokioBackgroundExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3M_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24112)
  call void @llvm.experimental.noalias.scope.decl(metadata !24113)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24114, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3G_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24115)
  call void @llvm.experimental.noalias.scope.decl(metadata !24116)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24117, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24117
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_23TokioBackgroundExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3G_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24118)
  call void @llvm.experimental.noalias.scope.decl(metadata !24119)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24120, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24120
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_23TokioBackgroundExecutorNtBT_12TaskExecutor8block_onNCNvXs0_NtBV_7parquetINtB2Z_21DefaultParquetHandlerB1V_ENtBZ_14ParquetHandler19read_parquet_footer0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24143 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24143, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24143, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24143
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24143
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_10filesystem14list_from_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24143, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24143, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24143
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24144 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24144

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24144

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24144
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24145
  store ptr %i.z, ptr %i.d, align 8, !noalias !24145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24145
  store ptr %i.d, ptr %i.c, align 8, !noalias !24145
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24145
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24146

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24146

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24146
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24146

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24146

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24147)
  call void @llvm.experimental.noalias.scope.decl(metadata !24148)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24149, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24150)
  call void @llvm.experimental.noalias.scope.decl(metadata !24151)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24152, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24152
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24153)
  call void @llvm.experimental.noalias.scope.decl(metadata !24154)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24155, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24155
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_10filesystem14list_from_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24178 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24178, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24178, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24178
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24178
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_10filesystem15read_files_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24178, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24178, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24178
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24179 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24179

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24179

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24179
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24180
  store ptr %i.z, ptr %i.d, align 8, !noalias !24180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24180
  store ptr %i.d, ptr %i.c, align 8, !noalias !24180
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24180
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24181

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24181

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24181
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24181

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24181

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24182)
  call void @llvm.experimental.noalias.scope.decl(metadata !24183)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24184, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24185)
  call void @llvm.experimental.noalias.scope.decl(metadata !24186)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24187, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24187
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24188)
  call void @llvm.experimental.noalias.scope.decl(metadata !24189)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24190, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24190
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_10filesystem15read_files_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24213 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24213, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24213, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24213
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24213
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_10filesystem16copy_atomic_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24213, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24213, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24213
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24214 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24214

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24214

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24214
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24215
  store ptr %i.z, ptr %i.d, align 8, !noalias !24215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24215
  store ptr %i.d, ptr %i.c, align 8, !noalias !24215
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24215
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24216

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24216

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24216
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24216

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24216

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24217)
  call void @llvm.experimental.noalias.scope.decl(metadata !24218)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24219, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24220)
  call void @llvm.experimental.noalias.scope.decl(metadata !24221)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24222, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24222
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24223)
  call void @llvm.experimental.noalias.scope.decl(metadata !24224)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24225, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24225
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_10filesystem16copy_atomic_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24248 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %0, i64 128, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24248, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24248, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24248
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24248
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_10filesystem9head_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24248, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24248, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24248
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24249 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24249

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24249

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24249
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24250
  store ptr %i.z, ptr %i.d, align 8, !noalias !24250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24250
  store ptr %i.d, ptr %i.c, align 8, !noalias !24250
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24250
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24251

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24251

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24251
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24251

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24251

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24252)
  call void @llvm.experimental.noalias.scope.decl(metadata !24253)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24254, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24255)
  call void @llvm.experimental.noalias.scope.decl(metadata !24256)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24257, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24257
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24258)
  call void @llvm.experimental.noalias.scope.decl(metadata !24259)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24260, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24260
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_10filesystem9head_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24283 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24283, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24283, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24283
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24283
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_4json20read_json_files_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24283, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24283, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24283
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24284 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24284

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24284

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24284
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24285
  store ptr %i.z, ptr %i.d, align 8, !noalias !24285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24285
  store ptr %i.d, ptr %i.c, align 8, !noalias !24285
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24285
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24286

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24286

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24286
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24286

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24286

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24287)
  call void @llvm.experimental.noalias.scope.decl(metadata !24288)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24289, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24290)
  call void @llvm.experimental.noalias.scope.decl(metadata !24291)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24292, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24292
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24293)
  call void @llvm.experimental.noalias.scope.decl(metadata !24294)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24295, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24295
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_4json20read_json_files_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24318 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24318, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24318, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24318
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24318
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_4json20write_json_file_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24318, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24318, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24318
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24319 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24319

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24319

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24319
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24320
  store ptr %i.z, ptr %i.d, align 8, !noalias !24320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24320
  store ptr %i.d, ptr %i.c, align 8, !noalias !24320
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24320
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24321

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24321

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24321
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24321

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24321

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24322)
  call void @llvm.experimental.noalias.scope.decl(metadata !24323)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24324, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24325)
  call void @llvm.experimental.noalias.scope.decl(metadata !24326)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24327, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24327
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24328)
  call void @llvm.experimental.noalias.scope.decl(metadata !24329)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24330, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24330
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_4json20write_json_file_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24353 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24353, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24353, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24353
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24353
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvNtB1D_7parquet23read_parquet_files_impl0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24353, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24353, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24353
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24354 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24354

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24354

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24354
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24355
  store ptr %i.z, ptr %i.d, align 8, !noalias !24355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24355
  store ptr %i.d, ptr %i.c, align 8, !noalias !24355
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24355
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24356

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24356

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24356
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24356

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24356

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvNtB1G_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24357)
  call void @llvm.experimental.noalias.scope.decl(metadata !24358)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24359, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24360)
  call void @llvm.experimental.noalias.scope.decl(metadata !24361)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24362, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24362
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvNtB1A_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24363)
  call void @llvm.experimental.noalias.scope.decl(metadata !24364)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24365, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24365
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvNtBV_7parquet23read_parquet_files_impl0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvXB1j_INtB1j_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1n_11engine_data10EngineDataEL_ENtNtB1n_5error5ErrorEB2j_ENtNtNtNtB41_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24388 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %0, i64 128, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24388, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24388, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24388
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24388
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvXB1D_INtB1D_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1H_11engine_data10EngineDataEL_ENtNtB1H_5error5ErrorEB2D_ENtNtNtNtB4l_4iter6traits8iterator8Iterator4next0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24388, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24388, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24388
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24389 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24389

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24389

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24389
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1E_11engine_data10EngineDataEL_ENtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24390
  store ptr %i.z, ptr %i.d, align 8, !noalias !24390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24390
  store ptr %i.d, ptr %i.c, align 8, !noalias !24390
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24390
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24391

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24391

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24391
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24391

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24391

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1E_11engine_data10EngineDataEL_ENtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24392)
  call void @llvm.experimental.noalias.scope.decl(metadata !24393)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24394, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1E_11engine_data10EngineDataEL_ENtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24395)
  call void @llvm.experimental.noalias.scope.decl(metadata !24396)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24397, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24397
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1E_11engine_data10EngineDataEL_ENtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24398)
  call void @llvm.experimental.noalias.scope.decl(metadata !24399)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24400, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24400
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvXBV_INtBV_22BlockingStreamIteratorINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtBZ_11engine_data10EngineDataEL_ENtNtBZ_5error5ErrorEB1V_ENtNtNtNtB4_4iter6traits8iterator8Iterator4next0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvXB1j_INtB1j_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1n_8FileMetaNtNtB1n_5error5ErrorEB2j_ENtNtNtNtB41_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24423 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.b, ptr noundef nonnull align 16 dereferenceable(144) %0, i64 144, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24423, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24423, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24423
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24423
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvXB1D_INtB1D_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1H_8FileMetaNtNtB1H_5error5ErrorEB2D_ENtNtNtNtB4l_4iter6traits8iterator8Iterator4next0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24423, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24423, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24423
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1K_8FileMetaNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24424 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24424

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24424

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24424
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1K_8FileMetaNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1E_8FileMetaNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1K_8FileMetaNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24425
  store ptr %i.z, ptr %i.d, align 8, !noalias !24425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24425
  store ptr %i.d, ptr %i.c, align 8, !noalias !24425
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24425
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24426

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24426

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24426
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24426

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24426

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1E_8FileMetaNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1K_8FileMetaNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24427)
  call void @llvm.experimental.noalias.scope.decl(metadata !24428)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24429, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1E_8FileMetaNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24430)
  call void @llvm.experimental.noalias.scope.decl(metadata !24431)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24432, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24432
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1E_8FileMetaNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24433)
  call void @llvm.experimental.noalias.scope.decl(metadata !24434)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24435, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24435
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvXBV_INtBV_22BlockingStreamIteratorINtNtB4_6result6ResultNtBZ_8FileMetaNtNtBZ_5error5ErrorEB1V_ENtNtNtNtB4_4iter6traits8iterator8Iterator4next0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(144) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvXB1j_INtB1j_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1n_5error5ErrorEB2j_ENtNtNtNtB41_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24458 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %0, i64 128, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24458, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24458, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24458
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24458
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvXB1D_INtB1D_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1H_5error5ErrorEB2D_ENtNtNtNtB4l_4iter6traits8iterator8Iterator4next0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24458, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24458, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24458
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24459 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24459

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24459

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24459
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24460
  store ptr %i.z, ptr %i.d, align 8, !noalias !24460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24460
  store ptr %i.d, ptr %i.c, align 8, !noalias !24460
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24460
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24461

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24461

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24461
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24461

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24461

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXB1G_INtB1G_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1K_5error5ErrorEB2G_ENtNtNtNtB4o_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24462)
  call void @llvm.experimental.noalias.scope.decl(metadata !24463)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24464, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24465)
  call void @llvm.experimental.noalias.scope.decl(metadata !24466)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24467, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24467
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXB1A_INtB1A_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1E_5error5ErrorEB2A_ENtNtNtNtB4i_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24468)
  call void @llvm.experimental.noalias.scope.decl(metadata !24469)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24470, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24470
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvXBV_INtBV_22BlockingStreamIteratorINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtBZ_5error5ErrorEB1V_ENtNtNtNtB4_4iter6traits8iterator8Iterator4next0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvXs0_NtB1j_7parquetINtB3q_21DefaultParquetHandlerB2j_ENtB1n_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24493 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24493, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24493, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24493
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24493
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvXs0_NtB1D_7parquetINtB3K_21DefaultParquetHandlerB2D_ENtB1H_14ParquetHandler18write_parquet_file0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24493, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24493, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24493
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3N_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24494 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24494

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24494

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24494
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3N_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3H_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3N_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24495
  store ptr %i.z, ptr %i.d, align 8, !noalias !24495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24495
  store ptr %i.d, ptr %i.c, align 8, !noalias !24495
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24495
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24496

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24496

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24496
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24496

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24496

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3H_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3N_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24497)
  call void @llvm.experimental.noalias.scope.decl(metadata !24498)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24499, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3H_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24500)
  call void @llvm.experimental.noalias.scope.decl(metadata !24501)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24502, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24502
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3H_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24503)
  call void @llvm.experimental.noalias.scope.decl(metadata !24504)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24505, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24505
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvXs0_NtBV_7parquetINtB30_21DefaultParquetHandlerB1V_ENtBZ_14ParquetHandler18write_parquet_file0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_24TokioMultiThreadExecutorNtB1h_12TaskExecutor8block_onNCNvXs0_NtB1j_7parquetINtB3q_21DefaultParquetHandlerB2j_ENtB1n_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !24528 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24528, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24528, !nonnull !21, !align !22, !noundef !21
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !24528
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24528
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1z_24TokioMultiThreadExecutorNtB1B_12TaskExecutor8block_onNCNvXs0_NtB1D_7parquetINtB3K_21DefaultParquetHandlerB2D_ENtB1H_14ParquetHandler19read_parquet_footer0E00ENtNtBR_8schedule16BlockingScheduleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !24528, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !24528, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24528
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3N_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !24529 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !24529

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !24529

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24529
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3N_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3H_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit, !prof !23

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3N_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24530
  store ptr %i.z, ptr %i.d, align 8, !noalias !24530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24530
  store ptr %i.d, ptr %i.c, align 8, !noalias !24530
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !24530
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #39
          to label %bb.m unwind label %bb.l, !noalias !24531

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.o unwind label %bb.n, !noalias !24531

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !24531
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !24531

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !24531

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3H_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1C_24TokioMultiThreadExecutorNtB1E_12TaskExecutor8block_onNCNvXs0_NtB1G_7parquetINtB3N_21DefaultParquetHandlerB2G_ENtB1K_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24532)
  call void @llvm.experimental.noalias.scope.decl(metadata !24533)
  %i.af = load i64, ptr %i.e, align 8, !range !20, !alias.scope !24534, !noundef !21
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3H_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24535)
  call void @llvm.experimental.noalias.scope.decl(metadata !24536)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !24537, !nonnull !21, !noundef !21
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !24537
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1w_24TokioMultiThreadExecutorNtB1y_12TaskExecutor8block_onNCNvXs0_NtB1A_7parquetINtB3H_21DefaultParquetHandlerB2A_ENtB1E_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24538)
  call void @llvm.experimental.noalias.scope.decl(metadata !24539)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !24540, !nonnull !21, !noundef !21
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24540
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtBR_24TokioMultiThreadExecutorNtBT_12TaskExecutor8block_onNCNvXs0_NtBV_7parquetINtB30_21DefaultParquetHandlerB1V_ENtBZ_14ParquetHandler19read_parquet_footer0E00ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %0) #40
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5write1__NtB5_12WriteMetricsNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeNtNtNtCseqDwI8vvjGQ_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %i.b, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr null, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.c = invoke noundef align 8 ptr @_RINvXs6_NtNtCseqDwI8vvjGQ_10serde_json5value3serNtB6_12SerializeMapNtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldjECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.b unwind label %bb.o       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = invoke noundef align 8 ptr @_RINvXs6_NtNtCseqDwI8vvjGQ_10serde_json5value3serNtB6_12SerializeMapNtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldjECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.d unwind label %bb.o       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not28 = icmp eq ptr %i.e, null
  br i1 %.not28, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = invoke noundef align 8 ptr @_RINvXs6_NtNtCseqDwI8vvjGQ_10serde_json5value3serNtB6_12SerializeMapNtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldjECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.f unwind label %bb.o       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not29 = icmp eq ptr %i.g, null
  br i1 %.not29, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = invoke noundef align 8 ptr @_RINvXs6_NtNtCseqDwI8vvjGQ_10serde_json5value3serNtB6_12SerializeMapNtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldjECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.h unwind label %bb.o       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not30 = icmp eq ptr %i.i, null
  br i1 %.not30, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCseqDwI8vvjGQ_10serde_json5value3serNtB6_12SerializeMapNtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldyECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not31 = icmp eq ptr %i.k, null
  br i1 %.not31, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @_RNvXs6_NtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_12SerializeMapNtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3end(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.sink = phi ptr [ %i.i, %bb.h ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ %i.g, %bb.f ], [ %i.k, %bb.j ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.l, align 8
  store i8 6, ptr %0, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCseqDwI8vvjGQ_10serde_json5value3ser12SerializeMapECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.b)
  br label %bb.l

bb.n:                                             ; preds = %bb.o
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCseqDwI8vvjGQ_10serde_json5value3ser12SerializeMapECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.b) #40
          to label %bb.n unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder1__NtB5_16DeltaTableConfigNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldbECs14kWLkQVSKO_14deltalake_core.exit:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24560)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !24561, !noalias !24562, !nonnull !21, !align !22, !noundef !21
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 1), !noalias !24563
end_hunk_3
begin_hunk_4_@_RNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB5_4Scan13scan_metadata:bb.a
  %i.ar = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !alias.scope !33782, !noalias !33783, !noundef !21
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !33782, !noalias !33783 ; 3 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !33782, !noalias !33783 ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.av = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !33784
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i
  %i.ax = load i64, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !33781, !noundef !21 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 9223372036854775807
  br i1 %i.ay, label %bb.p, label %bb.n, !prof !27

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #41
          to label %.noexc.i.i.i.i unwind label %bb.o, !noalias !33781

.noexc.i.i.i.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.ao, align 8, !noalias !33781
  br label %bb.ba

bb.p:                                             ; preds = %bb.m
  %i.ba = add nuw nsw i64 %i.ax, 1
  store i64 %i.ba, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !33781
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33785)
  %i.bc = load i64, ptr %i.bb, align 8, !range !28, !alias.scope !33785, !noalias !33781, !noundef !21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bc, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !33786
  %i.be = icmp eq i64 %i.bd, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i.i = select i1 %i.be, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i.i, align 8, !range !20, !alias.scope !33787, !noalias !33788
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = phi i64 [ %i.bc, %bb.p ], [ %.pre.i.i.i.i, %bb.q ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.p ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i.i.i, %bb.q ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33787)
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !33787, !noalias !33788 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !33787, !noalias !33788
  br i1 %i.bg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bl = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8, !noalias !33789
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.0.i6.i.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ]
  %i.bn = load i64, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !33781, !noundef !21
  %i.bo = add i64 %i.bn, -1
  store i64 %i.bo, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !33781
  store i8 1, ptr %i.ao, align 8, !noalias !33781
  br label %bb.y

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB2z_4scanNtB5c_4Scan13scan_metadata0E0E0B2d_EB2D_.exit.i.i: ; preds = %.noexc.i, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33790)
  %i.bp = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !20, !alias.scope !33790, !noalias !33791, !noundef !21
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !33790, !noalias !33791 ; 3 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !33790, !noalias !33791 ; 2 uses
  br i1 %i.bq, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB2z_4scanNtB5c_4Scan13scan_metadata0E0E0B2d_EB2D_.exit.i.i
  %i.bt = atomicrmw add ptr %i.br, i64 1 monotonic, align 8, !noalias !33792
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.y:                                             ; preds = %bb.v, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB2z_4scanNtB5c_4Scan13scan_metadata0E0E0B2d_EB2D_.exit.i.i, %bb.u, %bb.k, %bb.j, %bb.g, %bb.f
  %i.bw = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB2z_4scanNtB5c_4Scan13scan_metadata0E0E0B2d_EB2D_.exit.i.i ], [ %.sroa.0.0.i6.i.i.i.i, %bb.u ], [ 1, %bb.v ], [ 0, %bb.j ], [ 1, %bb.k ], [ 1, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.bx = phi ptr [ %i.br, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB2z_4scanNtB5c_4Scan13scan_metadata0E0E0B2d_EB2D_.exit.i.i ], [ %i.bi, %bb.u ], [ %i.br, %bb.v ], [ %i.at, %bb.j ], [ %i.at, %bb.k ], [ %i.af, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %.sroa.7.0.ph.sink.i.i = phi ptr [ %i.bs, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB2z_4scanNtB5c_4Scan13scan_metadata0E0E0B2d_EB2D_.exit.i.i ], [ %i.bk, %bb.u ], [ %i.bs, %bb.v ], [ %i.au, %bb.j ], [ %i.au, %bb.k ], [ %i.ag, %bb.g ], [ %i.ag, %bb.f ]
  store i64 %i.bw, ptr %i.i, align 8, !alias.scope !33777, !noalias !33776
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bx, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !33777, !noalias !33776
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.7.0.ph.sink.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !33777, !noalias !33776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !33776
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.z unwind label %bb.aw, !noalias !33776

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !33776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !33776
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !33776
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !33793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33794
  %i.ca = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.aa unwind label %bb.av, !noalias !33794 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cb = extractvalue { i64, ptr } %i.ca, 0      ; 2 uses
  %i.cc = extractvalue { i64, ptr } %i.ca, 1      ; 3 uses
  store i64 %i.cb, ptr %i.e, align 8, !noalias !33794
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.cc, ptr %i.cd, align 8, !noalias !33794
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %i.ce = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !33795 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = trunc nuw i64 %i.cb to i1               ; 2 uses
  %.sroa.01.0.v.i.i = select i1 %i.cf, i64 464, i64 712
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.01.0.v.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !33776
  %.sroa.01.0.v.i.i.i.i.i = select i1 %i.cf, i64 488, i64 512
  %.sroa.01.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.01.0.v.i.i.i.i.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !33795, !noundef !21 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !33795, !nonnull !21, !align !22, !noundef !21
  %i.ck = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8, !noalias !33795
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.5.0.i.i.i.i.i = phi ptr [ undef, %bb.ac ], [ %i.cj, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33795
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1u_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB1w_4scanNtB49_4Scan13scan_metadata0Es_0ENtNtBR_8schedule16BlockingScheduleEB1A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.b, ptr noundef %i.ch, ptr %.sroa.5.0.i.i.i.i.i, i64 noundef %i.ce)
          to label %.noexc.i.i unwind label %bb.ap, !noalias !33794

.noexc.i.i:                                       ; preds = %bb.af
  %i.cm = load ptr, ptr %i.a, align 8, !noalias !33795, !nonnull !21, !noundef !21
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !33795, !nonnull !21, !noundef !21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33795
  %i.cp = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i, ptr noundef nonnull %i.cm, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB1z_4scanNtB4c_4Scan13scan_metadata0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i.i unwind label %bb.ag, !noalias !33796 ; 2 uses

bb.ag:                                            ; preds = %.noexc.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.co)
          to label %.noexc.i.i.i4.i unwind label %bb.ai, !noalias !33796

.noexc.i.i.i4.i:                                  ; preds = %bb.ag
  br i1 %i.cr, label %bb.ah, label %.body.i.i

bb.ah:                                            ; preds = %.noexc.i.i.i4.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.co)
          to label %.body.i.i unwind label %bb.ai, !noalias !33796

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !33796
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB1z_4scanNtB4c_4Scan13scan_metadata0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i.i: ; preds = %.noexc.i.i
  %i.ct = extractvalue { i64, ptr } %i.cp, 0
  %i.cu = extractvalue { i64, ptr } %i.cp, 1      ; 2 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  %.not.i.i.i = icmp ne ptr %i.cu, null
  %or.cond.not.i.i.i = select i1 %i.cv, i1 %.not.i.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i.i, label %bb.aj, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB1t_4scanNtB46_4Scan13scan_metadata0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i.i, !prof !23

bb.aj:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB1z_4scanNtB4c_4Scan13scan_metadata0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !33797
  store ptr %i.cu, ptr %i.d, align 8, !noalias !33797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33797
  store ptr %i.d, ptr %i.c, align 8, !noalias !33797
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !33797
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #39
          to label %bb.al unwind label %bb.ak, !noalias !33798

bb.ak:                                            ; preds = %bb.aj
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #40
          to label %bb.an unwind label %bb.am, !noalias !33798

bb.al:                                            ; preds = %bb.aj
  unreachable

bb.am:                                            ; preds = %bb.ao, %bb.an, %bb.ak
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !33798
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.cy = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.co)
          to label %.noexc.i.i.i unwind label %bb.am, !noalias !33798

.noexc.i.i.i:                                     ; preds = %bb.an
  br i1 %i.cy, label %bb.ao, label %.body.i.i

bb.ao:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.co)
          to label %.body.i.i unwind label %bb.am, !noalias !33798

bb.ap:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ap, %bb.ao, %.noexc.i.i.i, %bb.ah, %.noexc.i.i.i4.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cz, %bb.ap ], [ %i.cq, %.noexc.i.i.i4.i ], [ %i.cq, %bb.ah ], [ %i.cw, %.noexc.i.i.i ], [ %i.cw, %bb.ao ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #40
          to label %.body.thread unwind label %bb.au, !noalias !33794

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB1t_4scanNtB46_4Scan13scan_metadata0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i.i: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB1z_4scanNtB4c_4Scan13scan_metadata0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1D_6errors15DeltaTableErrorEEB1D_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !33799)
  call void @llvm.experimental.noalias.scope.decl(metadata !33800)
  %i.da = load i64, ptr %i.e, align 8, !range !20, !alias.scope !33801, !noalias !33794, !noundef !21
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB1t_4scanNtB46_4Scan13scan_metadata0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !33802)
  call void @llvm.experimental.noalias.scope.decl(metadata !33803)
  %i.dc = load ptr, ptr %i.cd, align 8, !alias.scope !33804, !noalias !33794, !nonnull !21, !noundef !21
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !33805
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cd) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.body.thread19

bb.as:                                            ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1r_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB1t_4scanNtB46_4Scan13scan_metadata0Es_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB1x_6errors15DeltaTableErrorEEB1x_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !33806)
  call void @llvm.experimental.noalias.scope.decl(metadata !33807)
  %i.df = load ptr, ptr %i.cd, align 8, !alias.scope !33808, !noalias !33794, !nonnull !21, !noundef !21
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !33809
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cd) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.body.thread19

bb.au:                                            ; preds = %bb.av, %.body.i.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !33776
  unreachable

bb.av:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtBM_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtBO_4scanNtB3q_4Scan13scan_metadata0Es_0EBS_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.f) #40
          to label %.body.thread unwind label %bb.au, !noalias !33776

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.at, %bb.ar, %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33794
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dk = invoke fastcc noundef nonnull ptr @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE6insertB1B_(ptr noalias noundef align 8 dereferenceable(16) %i.dj, ptr noundef nonnull %i.co)
          to label %.noexc8 unwind label %.body.thread19

.noexc8:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i
  store ptr %i.dk, ptr %i.g, align 8, !noalias !33776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33776
  invoke void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bc unwind label %.body.thread19

bb.aw:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dl = icmp eq i64 %i.bw, 0
  br i1 %i.dl, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dm = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !33810
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i) #42
          to label %bb.ba unwind label %bb.az, !noalias !33776

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !33793
  unreachable

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.x, %bb.o
  %.pn.ph.i = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.bv, %bb.x ], [ %lpad.thr_comm.split-lp.i, %bb.ay ], [ %lpad.thr_comm.split-lp.i, %bb.aw ], [ %lpad.thr_comm.split-lp.i, %bb.ax ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBO_4Scan13scan_metadata0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #40
          to label %.body.thread unwind label %bb.az, !noalias !33793

bb.bb:                                            ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.body.thread19:                                   ; preds = %.noexc8, %bb.ar, %bb.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.bc:                                            ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !33776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !33776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !33776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.dp = call fastcc { ptr, ptr } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5buildB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret { ptr, ptr } %i.dp

.body.thread:                                     ; preds = %.body.i.i, %bb.av, %bb.ba, %.body.thread19
  %eh.lpad-body17 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread19 ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.av ], [ %.pn.ph.i, %bb.ba ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6stream21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataEEBP_(ptr noalias noundef align 8 dereferenceable(32) %i.l) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %.body.thread
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body.thread, %bb.be, %bb.bf
  %.pn13 = phi { ptr, i32 } [ %i.dr, %bb.be ], [ %i.dr, %bb.bf ], [ %eh.lpad-body17, %.body.thread ]
  resume { ptr, i32 } %.pn13

bb.be:                                            ; preds = %bb.a
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !33811
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bd
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10disconnectCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !33819)
  %i.c = load i64, ptr %i.b, align 8, !range !20, !alias.scope !33819, !noalias !33820, !noundef !21
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33821
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !33819, !noalias !33820, !nonnull !21, !align !22, !noundef !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !26, !alias.scope !33819, !noalias !33820, !noundef !21
  store ptr %i.f, ptr %i.a, align 8, !noalias !33821
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_4
