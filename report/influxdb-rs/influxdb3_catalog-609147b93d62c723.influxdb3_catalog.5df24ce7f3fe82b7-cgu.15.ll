Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.15?download=true
inline.NumInlined: 2685
inline.NumDeleted: 1200
begin_hunk_0
@839 = private unnamed_addr constant [14 x i8] c"TooManyColumns", align 1, !guid !6
@840 = private unnamed_addr constant [9 x i8] c"attempted", align 1, !guid !6
@841 = private unnamed_addr constant [5 x i8] c"limit", align 1, !guid !6
@842 = private unnamed_addr constant [17 x i8] c"TooManyTagColumns", align 1, !guid !6
@843 = private unnamed_addr constant [13 x i8] c"TooManyTables", align 1, !guid !6
@844 = private unnamed_addr constant [7 x i8] c"current", align 1, !guid !6
@845 = private unnamed_addr constant [10 x i8] c"TooManyDbs", align 1, !guid !6
@846 = private unnamed_addr constant [13 x i8] c"TooManyFields", align 1, !guid !6
@847 = private unnamed_addr constant [12 x i8] c"field_family", align 1, !guid !6
@848 = private unnamed_addr constant [20 x i8] c"TooManyFieldFamilies", align 1, !guid !6
@849 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v411StorageModeNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@850 = private unnamed_addr constant [24 x i8] c"LegacyColumnIdsExhausted", align 1, !guid !6
@851 = private unnamed_addr constant [12 x i8] c"storage_mode", align 1, !guid !6
@852 = private unnamed_addr constant [16 x i8] c"DatabaseNotFound", align 1, !guid !6
@853 = private unnamed_addr constant [13 x i8] c"TableNotFound", align 1, !guid !6
@854 = private unnamed_addr constant [17 x i8] c"FieldTypeMismatch", align 1, !guid !6
@855 = private unnamed_addr constant [8 x i8] c"existing", align 1, !guid !6
@856 = private unnamed_addr constant [17 x i8] c"SeriesKeyMismatch", align 1, !guid !6
@857 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs844E4pPEVZX_17influxdb3_catalog7channel17SubscriptionErrorNtB6_5Debug3fmtBA_ }>, align 8, !guid !6
@858 = private unnamed_addr constant [12 x i8] c"Subscription", align 1, !guid !6
@859 = private unnamed_addr constant [5 x i8] c"Other", align 1, !guid !6
@860 = private unnamed_addr constant [29 x i8] c"ProcessingEngineTriggerExists", align 1, !guid !6
@861 = private unnamed_addr constant [30 x i8] c"ProcessingEngineTriggerRunning", align 1, !guid !6
@862 = private unnamed_addr constant [27 x i8] c"ProcessingEnginePluginInUse", align 1, !guid !6
@863 = private unnamed_addr constant [11 x i8] c"plugin_name", align 1, !guid !6
@864 = private unnamed_addr constant [30 x i8] c"ProcessingEnginePluginNotFound", align 1, !guid !6
@865 = private unnamed_addr constant [29 x i8] c"ProcessingEngineUnimplemented", align 1, !guid !6
@866 = private unnamed_addr constant [19 x i8] c"feature_description", align 1, !guid !6
@867 = private unnamed_addr constant [31 x i8] c"ProcessingEngineTriggerNotFound", align 1, !guid !6
@868 = private unnamed_addr constant [37 x i8] c"ProcessingEngineTriggerSpecParseError", align 1, !guid !6
@869 = private unnamed_addr constant [12 x i8] c"trigger_spec", align 1, !guid !6
@870 = private unnamed_addr constant [20 x i8] c"InvalidLastCacheSize", align 1, !guid !6
@871 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@872 = private unnamed_addr constant [30 x i8] c"TriggerSpecificationParseError", align 1, !guid !6
@873 = private unnamed_addr constant [7 x i8] c"context", align 1, !guid !6
@874 = private unnamed_addr constant [20 x i8] c"InvalidErrorBehavior", align 1, !guid !6
@875 = private unnamed_addr constant [29 x i8] c"CannotParsePermissionForToken", align 1, !guid !6
@876 = private unnamed_addr constant [22 x i8] c"TokenNameAlreadyExists", align 1, !guid !6
@877 = private unnamed_addr constant [22 x i8] c"TokenHashAlreadyExists", align 1, !guid !6
@878 = private unnamed_addr constant [25 x i8] c"MissingAdminTokenToUpdate", align 1, !guid !6
@879 = private unnamed_addr constant [28 x i8] c"CannotDeleteInternalDatabase", align 1, !guid !6
@880 = private unnamed_addr constant [28 x i8] c"CannotModifyInternalDatabase", align 1, !guid !6
@881 = private unnamed_addr constant [18 x i8] c"NodeAlreadyStopped", align 1, !guid !6
@882 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@883 = private unnamed_addr constant [19 x i8] c"NodeNotFullyStopped", align 1, !guid !6
@884 = private unnamed_addr constant [13 x i8] c"current_state", align 1, !guid !6
@885 = private unnamed_addr constant [20 x i8] c"NodeModeNotRemovable", align 1, !guid !6
@886 = private unnamed_addr constant [14 x i8] c"InvalidStopAck", align 1, !guid !6
@887 = private unnamed_addr constant [17 x i8] c"InvalidUnregister", align 1, !guid !6
@888 = private unnamed_addr constant [14 x i8] c"IdempotentNoOp", align 1, !guid !6
@889 = private unnamed_addr constant [25 x i8] c"CannotDeleteOperatorToken", align 1, !guid !6
@890 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCs7xnqXWBEQRv_9humantime7wrapperNtB5_8DurationNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8, !guid !6
@891 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs7xnqXWBEQRv_9humantime7wrapper8DurationNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@892 = private unnamed_addr constant [30 x i8] c"CannotChangeGenerationDuration", align 1, !guid !6
@893 = private unnamed_addr constant [15 x i8] c"DuplicateColumn", align 1, !guid !6
@894 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format13feature_level12FeatureLevelNtB6_5Debug3fmtBC_ }>, align 8, !guid !6
@895 = private unnamed_addr constant [34 x i8] c"RecordExceedsCommittedFeatureLevel", align 1, !guid !6
@896 = private unnamed_addr constant [9 x i8] c"record_id", align 1, !guid !6
@897 = private unnamed_addr constant [9 x i8] c"committed", align 1, !guid !6
@898 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCs844E4pPEVZX_17influxdb3_catalog6format13feature_levelNtB5_12FeatureLevelNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8, !guid !6
@899 = private unnamed_addr constant [30 x i8] c"NodeBelowCommittedFeatureLevel", align 1, !guid !6
@900 = private unnamed_addr constant [5 x i8] c"local", align 1, !guid !6
@901 = private unnamed_addr constant [28 x i8] c"MissingObjectStoreForRestore", align 1, !guid !6
@902 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@903 = private unnamed_addr constant [16 x i8] c"NodeInQueryGroup", align 1, !guid !6
@904 = private unnamed_addr constant [16 x i8] c"query_group_name", align 1, !guid !6
@905 = private unnamed_addr constant [14 x i8] c"query_group_id", align 1, !guid !6
@906 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@907 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1, !guid !6
@908 = private unnamed_addr constant [7 x i8] c"Parquet", align 1, !guid !6
@909 = private unnamed_addr constant [9 x i8] c"PachaTree", align 1, !guid !6
@910 = private unnamed_addr constant [19 x i8] c"ParquetAndPachaTree", align 1, !guid !6
@911 = private unnamed_addr constant [58 x i8] c"struct variant TriggerSpecificationDefinition::RequestPath", align 1, !guid !6
@912 = private unnamed_addr constant [11 x i8] c"CrudActions", align 1, !guid !6
@913 = private unnamed_addr constant [4 x i8] c"Path", align 1, !guid !6
@914 = private unnamed_addr constant [3 x i8] c"raw", align 1, !guid !6
@915 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@916 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1, !guid !6
@917 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1, !guid !6
@918 = private unnamed_addr constant [9 x i8] c"error_len", align 1, !guid !6
@919 = private unnamed_addr constant [52 x i8] c"struct variant TriggerSpecificationDefinition::Every", align 1, !guid !6
@920 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@921 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1, !guid !6
@922 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs\00", align 1, !guid !6
@923 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @922, [16 x i8] c"s\00\00\00\00\00\00\00q\0B\00\00\0E\00\00\00" }>, align 8, !guid !6
@924 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs11_CsaXLCtUcOqO5_15influxdb3_authzNtB6_12ResourceTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8, !guid !6
@925 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions33TokenPermissionResourceIdentifierNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@926 = private unnamed_addr constant [13 x i8] c"PermissionKey", align 1, !guid !6
@927 = private unnamed_addr constant [13 x i8] c"resource_type", align 1, !guid !6
@928 = private unnamed_addr constant [19 x i8] c"resource_identifier", align 1, !guid !6
@929 = private unnamed_addr constant [56 x i8] c"serialized table definition from catalog should be valid", align 1, !guid !6
@930 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00f\08\00\00\0A\00\00\00" }>, align 8, !guid !6
@931 = private unnamed_addr constant [12 x i8] c"QueryGroupId", align 1, !guid !6
@932 = private unnamed_addr constant [40 x i8] c"catalog contains invalid last cache size", align 1, !guid !6
@933 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00\F7\08\00\00\12\00\00\00" }>, align 8, !guid !6
@934 = private unnamed_addr constant [5 x i8] c"Error", align 1, !guid !6
@935 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsaXLCtUcOqO5_15influxdb3_authz24SystemResourceIdentifierNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@936 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdIBx_NtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB1T_20PermissionAttributesEENtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@937 = private unnamed_addr constant [16 x i8] c"TokenPermissions", align 1, !guid !6
@938 = private unnamed_addr constant [3 x i8] c"map", align 1, !guid !6
@939 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v39NodeBatchNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@940 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313DatabaseBatchNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@941 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v310TokenBatchNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@942 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v311DeleteBatchNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@943 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v315GenerationBatchNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@944 = private unnamed_addr constant [4 x i8] c"None", align 1, !guid !6
@945 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB1b_ENtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@946 = private unnamed_addr constant [4 x i8] c"Some", align 1, !guid !6
@947 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id7TableIdENtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@948 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXso_CsbFlE7Gjht9i_12influxdb3_idNtB5_6NodeIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8, !guid !6
@949 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313NodeCatalogOpENtB6_5Debug3fmtB1a_ }>, align 8, !guid !6
@950 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsaXLCtUcOqO5_15influxdb3_authz18ResourceIdentifierECs844E4pPEVZX_17influxdb3_catalog, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs19_CsaXLCtUcOqO5_15influxdb3_authzNtB6_18ResourceIdentifierNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8, !guid !6
@951 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs1f_CsaXLCtUcOqO5_15influxdb3_authzNtB6_7ActionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8, !guid !6
@952 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEENtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@953 = private unnamed_addr constant [10 x i8] c"Permission", align 1, !guid !6
@954 = private unnamed_addr constant [7 x i8] c"actions", align 1, !guid !6
@955 = private unnamed_addr constant [14 x i8] c"resource_names", align 1, !guid !6
@956 = private unnamed_addr constant [5 x i8] c"a map", align 1, !guid !6
@957 = private unnamed_addr constant [5 x i8] c"never", align 1, !guid !6
@958 = private unnamed_addr constant [7 x i8] c"default", align 1, !guid !6
@959 = private unnamed_addr constant [3 x i8] c"now", align 1, !guid !6
@960 = private unnamed_addr constant [16 x i8] c"data_and_catalog", align 1, !guid !6
@961 = private unnamed_addr constant [23 x i8] c"data_only_remove_tables", align 1, !guid !6
@962 = private unnamed_addr constant [24 x i8] c"data_only_keep_resources", align 1, !guid !6
@963 = private unnamed_addr constant [32 x i8] c"no generation durations provided", align 1, !guid !6
@964 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @548, [16 x i8] c"7\00\00\00\00\00\00\00\80\00\00\00\10\00\00\00" }>, align 8, !guid !6
@965 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @548, [16 x i8] c"7\00\00\00\00\00\00\00\89\00\00\00\16\00\00\00" }>, align 8, !guid !6
@966 = private unnamed_addr constant [21 x i8] c"Parquet and PachaTree", align 1, !guid !6
@967 = private unnamed_addr constant [21 x i8] c"CatalogSequenceNumber", align 1, !guid !6
@968 = private unnamed_addr constant [6 x i8] c"RwLock", align 1, !guid !6
@969 = private unnamed_addr constant [8 x i8] c"<locked>", align 1, !guid !6
@970 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCs4NRVxsYgnAr_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt }>, align 8, !guid !6
@971 = private unnamed_addr constant [4 x i8] c"data", align 1, !guid !6
@972 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v112InnerCatalogNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@973 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v212InnerCatalogNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@974 = private unnamed_addr constant [13 x i8] c"SystemActions", align 1, !guid !6
@975 = private unnamed_addr constant [21 x i8] c"invalid size provided", align 1, !guid !6
@976 = private unnamed_addr constant [90 x i8] c"Create database call received by a mismatched DatabaseSchema. This should not be possible.", align 1, !guid !6
@977 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00\7F\04\00\00\15\00\00\00" }>, align 8, !guid !6
@978 = private unnamed_addr constant [27 x i8] c"creating new table from log", align 1, !guid !6
@979 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v314CreateTableLogENtB5_5Value6recordB17_ }>, align 8, !guid !6
@980 = private unnamed_addr constant [23 x i8] c"creating existing table", align 1, !guid !6
@981 = private unnamed_addr constant [31 x i8] c"updated schema for create table", align 1, !guid !6
@982 = private unnamed_addr constant [22 x i8] c"the table should exist", align 1, !guid !6
@983 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00\F5\04\00\00\12\00\00\00" }>, align 8, !guid !6
@984 = private unnamed_addr constant [20 x i8] c"the table must exist", align 1, !guid !6
@985 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00\08\05\00\00\16\00\00\00" }>, align 8, !guid !6
@986 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00$\05\00\00\16\00\00\00" }>, align 8, !guid !6
@987 = private unnamed_addr constant [27 x i8] c"already checked containment", align 1, !guid !6
@988 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00J\05\00\00\0E\00\00\00" }>, align 8, !guid !6
@989 = private unnamed_addr constant [30 x i8] c"existing trigger should update", align 1, !guid !6
@990 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00P\05\00\00\0E\00\00\00" }>, align 8, !guid !6
@991 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEBG_, [16 x i8] c"\C0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB7_ }>, align 8, !guid !6
@992 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2k_ENtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@993 = private unnamed_addr constant [15 x i8] c"TokenRepository", align 1, !guid !6
@994 = private unnamed_addr constant [15 x i8] c"hash_lookup_map", align 1, !guid !6
@995 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEINtNtB8_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEENtB6_5Debug3fmtB2p_ }>, align 8, !guid !6
@996 = private unnamed_addr constant [11 x i8] c"SerdeVecMap", align 1, !guid !6
@997 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEINtNtB8_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEENtB6_5Debug3fmtB2r_ }>, align 8, !guid !6
@998 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEINtNtB8_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEENtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@999 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00i\05\00\00\0E\00\00\00" }>, align 8, !guid !6
@1000 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00o\05\00\00\0E\00\00\00" }>, align 8, !guid !6
@1001 = private unnamed_addr constant [25 x i8] c"new trigger should insert", align 1, !guid !6
@1002 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c",\00\00\00\00\00\00\00\89\05\00\00\0E\00\00\00" }>, align 8, !guid !6
@1003 = private unnamed_addr constant [24 x i8] c"ResourceTypeNotSupported", align 1, !guid !6
@1004 = private unnamed_addr constant [19 x i8] c"InvalidResourceName", align 1, !guid !6
@1005 = private unnamed_addr constant [35 x i8] c"MixedWildcardAndRegularResourceName", align 1, !guid !6
@1006 = private unnamed_addr constant [19 x i8] c"MissingResourceName", align 1, !guid !6
@1007 = private unnamed_addr constant [18 x i8] c"ActionNotSupported", align 1, !guid !6
@1008 = private unnamed_addr constant [17 x i8] c"MissingResourceId", align 1, !guid !6
@1009 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id7TableIdEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB15_ }>, align 8, !guid !6
@1010 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRINtNtCscdodAO9FK5_5alloc4sync3ArceEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@1011 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@1012 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRRNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@1013 = private unnamed_addr constant [20 x i8] c"PermissionAttributes", align 1, !guid !6
@1014 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @56, [16 x i8] c"w\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8, !guid !6
@1015 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1q_4SyncEL_ENtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@1016 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCs1LivM9IBWqb_12object_store5ErrorNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@1017 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCs1LivM9IBWqb_12object_store9PutResultNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@1018 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsaXLCtUcOqO5_15influxdb3_authz18ResourceIdentifierNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@1019 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v115CatalogFilePathNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@1020 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v215CatalogFilePathNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@1021 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319OrderedCatalogBatchNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@1022 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419OrderedCatalogBatchNtB6_5Debug3fmtBE_ }>, align 8, !guid !6
@1023 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorNtB6_5Debug3fmtBB_ }>, align 8, !guid !6
@1024 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorNtB6_5Debug3fmtBD_ }>, align 8, !guid !6
@1025 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313DatabaseBatchNtB6_5Debug3fmtBF_ }>, align 8, !guid !6
@1026 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v314CreateTableLogNtB6_5Debug3fmtBF_ }>, align 8, !guid !6
@1027 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413DatabaseBatchNtB6_5Debug3fmtBF_ }>, align 8, !guid !6
@1028 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v414CreateTableLogNtB6_5Debug3fmtBF_ }>, align 8, !guid !6
@1029 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v413TableSnapshotNtB6_5Debug3fmtBF_ }>, align 8, !guid !6
@1030 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRuNtB6_5Debug3fmtCs844E4pPEVZX_17influxdb3_catalog }>, align 8, !guid !6
@1031 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7576425159912132170 to ptr), ptr inttoptr (i64 19745073314560191 to ptr) }>, align 8, !guid !6
@1032 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1, !guid !6
@1033 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8258812536611094200 to ptr), ptr inttoptr (i64 -279198307899696793 to ptr) }>, align 8, !guid !6
@1034 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7080536387315632578 to ptr), ptr inttoptr (i64 5296459061437125857 to ptr) }>, align 8, !guid !6
@1035 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2236892227862618217 to ptr), ptr inttoptr (i64 -1826079698350918737 to ptr) }>, align 8, !guid !6
@1036 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1, !guid !6
@1037 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @1036, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8, !guid !6
@1038 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"q\00\00\00\00\00\00\00H\07\00\00$\00\00\00" }>, align 8, !guid !6
@switch.table._RNvXs11_CsaXLCtUcOqO5_15influxdb3_authzNtB6_12ResourceTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\08\05\06\08", align 8
@switch.table._RNvXs11_CsaXLCtUcOqO5_15influxdb3_authzNtB6_12ResourceTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.265 = private unnamed_addr constant [4 x ptr] [ptr @177, ptr @223, ptr @611, ptr @612], align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313ErrorBehaviorNtB6_5Debug3fmtBE_ = private unnamed_addr constant [3 x ptr] [ptr @768, ptr @769, ptr @770], align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313FieldDataTypeNtB6_5Debug3fmtBE_ = private unnamed_addr constant [7 x i8] c"\06\07\08\05\07\09\03", align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313FieldDataTypeNtB6_5Debug3fmtBE_.266 = private unnamed_addr constant [7 x ptr] [ptr @202, ptr @203, ptr @204, ptr @205, ptr @206, ptr @207, ptr @208], align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtB6_5Debug3fmtBE_.267 = private unnamed_addr constant [6 x ptr] [ptr @183, ptr @184, ptr @185, ptr @186, ptr @187, ptr @188], align 8
@switch.table._RNvXs5_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB5_8NodeModeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt = private unnamed_addr constant [6 x ptr] [ptr @670, ptr @796, ptr @797, ptr @798, ptr @799, ptr @217], align 8
@switch.table._RNvXs5_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB5_8NodeModeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.268 = private unnamed_addr constant [6 x i8] c"\04\05\06\07\07\03", align 8
@switch.table._RNvXs6_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7storageNtB5_11StorageModeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\07\09\13", align 8
@switch.table._RNvXs6_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7storageNtB5_11StorageModeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.269 = private unnamed_addr constant [3 x ptr] [ptr @908, ptr @909, ptr @910], align 8
@switch.table._RNvXsD_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB5_10PluginTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt = private unnamed_addr constant [3 x i8] c"\07\08\07", align 8
@switch.table._RNvXsD_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB5_10PluginTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.270 = private unnamed_addr constant [3 x ptr] [ptr @550, ptr @551, ptr @552], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs1LivM9IBWqb_12object_store4pathNtB3_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !168 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [128 x i8], align 8               ; 19 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.i, align 8, !nonnull !85, !noundef !85 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.j, align 8, !noundef !85 ; 12 uses
  %i.k = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) ; 2 uses
  %i.l = sext i1 %i.k to i64
  %.sroa.7.0 = add i64 %.val1.i, %i.l             ; 3 uses
  %.sroa.0.0.idx = zext i1 %i.k to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.idx ; 3 uses
  %i.m = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.m, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.al

.lr.ph:                                           ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  %i.p = sext i1 %i.o to i64
  %.sroa.7.1 = add i64 %.sroa.7.0, %i.p           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 5 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 3 uses
  store i64 %.sroa.7.1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  store i8 1, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 121 ; 4 uses
  store i8 0, ptr %.sroa.546.0..sroa_idx, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs844E4pPEVZX_17influxdb3_catalog.exit
  %i.ac = phi i64 [ 0, %.lr.ph ], [ %i.dy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs844E4pPEVZX_17influxdb3_catalog.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %.val.i79 = load ptr, ptr %i.q, align 8, !alias.scope !169, !nonnull !85, !noundef !85 ; 7 uses
  %.val1.i80 = load i64, ptr %i.r, align 8, !alias.scope !169, !noundef !85 ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.ad = load i64, ptr %i.h, align 8, !range !86, !alias.scope !171, !noundef !85
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %.preheader.i.i

bb.d:                                             ; preds = %bb.c
  %i.af = load i64, ptr %i.v, align 8, !alias.scope !171, !noundef !85 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = load ptr, ptr %i.w, align 8, !alias.scope !171, !nonnull !85, !noundef !85 ; 4 uses
  %i.ai = load i64, ptr %i.x, align 8, !alias.scope !171, !noundef !85 ; 14 uses
  %i.aj = add nsw i64 %i.ai, -1                   ; 4 uses
  br i1 %i.ag, label %bb.f, label %bb.r

.preheader.i.i:                                   ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.h), !noalias !173
  %i.ak = load i64, ptr %i.b, align 8, !range !87, !noalias !172, !noundef !85
  switch i64 %i.ak, label %default.unreachable [
    i64 0, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.thread131
    i64 1, label %bb.e
    i64 2, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.thread127
  ]

default.unreachable:                              ; preds = %.preheader.i.i
  unreachable

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.thread131: ; preds = %.preheader.i.i
  %i.al = load i64, ptr %i.s, align 8, !noalias !172, !noundef !85
  %i.am = load i64, ptr %i.t, align 8, !noalias !172, !noundef !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172
  %.pre = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !169
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.thread

bb.e:                                             ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172
  br label %.preheader.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %.promoted.i82 = load i64, ptr %i.y, align 8, !alias.scope !174 ; 2 uses
  %i.an = add i64 %.promoted.i82, %i.aj           ; 2 uses
  %i.ao = icmp ult i64 %i.an, %.val1.i80
  br i1 %i.ao, label %.lr.ph.i85, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.thread127.thread.sink.split

.lr.ph.i85:                                       ; preds = %bb.f
  %i.ap = load i64, ptr %i.z, align 8, !alias.scope !174, !noundef !85
  %i.aq = load i64, ptr %i.u, align 8, !alias.scope !174 ; 8 uses
  %i.ar = load i64, ptr %i.aa, align 8, !alias.scope !174
  %umax49.i88 = call i64 @llvm.umax.i64(i64 %i.aq, i64 range(i64 0, -9223372036854775808) %i.ai)
  %i.as = add i64 %i.aq, -1
  %.first_iter = icmp ult i64 %i.as, %i.ai
  %exitcond.not.i90393.not = icmp ult i64 %i.aq, %i.ai
  %invariant.op507 = sub i64 1, %i.aq
  %.not396 = icmp eq i64 %i.aq, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i85
  %i.at = phi i64 [ %.promoted.i82, %.lr.ph.i85 ], [ %i.bd, %bb.i ] ; 8 uses
  %i.au = phi i64 [ %i.an, %.lr.ph.i85 ], [ %i.be, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i79, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !175, !noundef !85
  %i.ax = and i8 %i.aw, 63
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.az, %i.ap
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %.preheader210.preheader

.preheader210.preheader:                          ; preds = %bb.g
  br i1 %exitcond.not.i90393.not, label %.lr.ph395, label %.preheader.preheader

bb.h:                                             ; preds = %bb.g
  %i.bc = add i64 %i.at, %i.ai
  br label %bb.i

bb.i:                                             ; preds = %bb.q, %bb.n, %bb.h
  %i.bd = phi i64 [ %i.bx, %bb.q ], [ %i.bc, %bb.h ], [ %i.br, %bb.n ] ; 2 uses
  %i.be = add i64 %i.bd, %i.aj                    ; 2 uses
  %i.bf = icmp ult i64 %i.be, %.val1.i80
  br i1 %i.bf, label %bb.g, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.thread127.thread.sink.split

.preheader210:                                    ; preds = %bb.o
  %i.bg = add nuw i64 %.sroa.02.0.i89394, 1       ; 2 uses
  %exitcond.not.i90 = icmp eq i64 %i.bg, %umax49.i88
  br i1 %exitcond.not.i90, label %.preheader.preheader, label %.lr.ph395

.preheader.preheader:                             ; preds = %.preheader210, %.preheader210.preheader
  br i1 %.not396, label %.preheader.preheader._crit_edge, label %.lr.ph398

.lr.ph395:                                        ; preds = %.preheader210.preheader, %.preheader210
  %.sroa.02.0.i89394 = phi i64 [ %i.bg, %.preheader210 ], [ %i.aq, %.preheader210.preheader ] ; 4 uses
  %i.bh = add i64 %.sroa.02.0.i89394, %i.at       ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.val1.i80
  br i1 %i.bi, label %bb.o, label %bb.p

.preheader:                                       ; preds = %bb.l
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %.preheader.preheader._crit_edge, label %.lr.ph398

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader, %.preheader
  %i.bj = add i64 %i.at, %i.ai                    ; 2 uses
  store i64 %i.bj, ptr %i.y, align 8, !alias.scope !174
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.thread

.lr.ph398:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i93397 = phi i64 [ %i.bk, %.preheader ], [ %i.aq, %.preheader.preheader ]
  %i.bk = add i64 %.sroa.2.0.i93397, -1           ; 5 uses
  br i1 %.first_iter, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph398
  %i.bl = add i64 %i.bk, %i.at                    ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %.val1.i80
  br i1 %i.bm, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph398
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bk, i64 noundef range(i64 0, -9223372036854775808) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #35, !noalias !177
  unreachable
end_hunk_0
begin_hunk_1_@_RNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_12InnerCatalog14database_count:bb.a
  %i.t = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !5001
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.a, align 8, !noalias !5001
  store i64 %i.s, ptr %i.k, align 8, !noalias !5001
  %i.v = icmp eq i64 %i.s, 9
  br i1 %i.v, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 1
  %i.y = xor i64 %i.x, 7020674649187838303
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = xor i64 %i.ab, 108
  %i.ad = or i64 %i.y, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0                    ; 2 uses
  %i.af = zext i1 %i.ae to i32                    ; 0 uses
  %i.ag = zext i1 %i.ae to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.ag, %bb.f ], [ 1, %bb.d ]
  %i.ah = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !5002
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !5001
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5001
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs7_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs7_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i ], [ 0, %bb.b ]
  %i.aj = add i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.017.i.i ; 2 uses
  %i.ak = icmp eq ptr %i.l, %i.h
  br i1 %i.ak, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEENCNvMs7_B2S_NtB2S_12InnerCatalog14database_count0ENtNtNtB9_6traits8iterator8Iterator5countB2Y_.exit, label %bb.b

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEENCNvMs7_B2S_NtB2S_12InnerCatalog14database_count0ENtNtNtB9_6traits8iterator8Iterator5countB2Y_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs7_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs7_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.lcssa.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_12InnerCatalog19apply_catalog_batch(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(808) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5248 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 15 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [80 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 6 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 11 uses
  %i.af = alloca [160 x i8], align 16             ; 12 uses
  %i.ag = alloca [80 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [40 x i8], align 8               ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 13 uses
  %i.ak = alloca [8 x i8], align 8                ; 8 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [16 x i8], align 8               ; 9 uses
  %i.ap = alloca [8 x i8], align 8                ; 7 uses
  %i.aq = alloca [80 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [80 x i8], align 8               ; 7 uses
  %i.at = alloca [160 x i8], align 8              ; 4 uses
  %i.au = alloca [80 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [160 x i8], align 8              ; 19 uses
  %i.az = alloca [48 x i8], align 8               ; 4 uses
  %i.ba = alloca [48 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [48 x i8], align 8               ; 5 uses
  %i.be = alloca [440 x i8], align 8              ; 10 uses
  %i.bf = alloca [440 x i8], align 8              ; 9 uses
  %.sroa.622.i.sroa.8 = alloca [78 x i8], align 2 ; 6 uses
  %i.bg = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.7.i.sroa.7 = alloca [78 x i8], align 2   ; 6 uses
  %.sroa.419.i = alloca [352 x i8], align 8       ; 5 uses
  %i.bh = alloca [440 x i8], align 8              ; 9 uses
  %i.bi = alloca [440 x i8], align 8              ; 8 uses
  %i.bj = alloca [8 x i8], align 8                ; 9 uses
  %i.bk = alloca [160 x i8], align 16             ; 12 uses
  %i.bl = alloca [80 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [40 x i8], align 8               ; 4 uses
  %i.bo = alloca [8 x i8], align 8                ; 13 uses
  %i.bp = alloca [8 x i8], align 8                ; 8 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [16 x i8], align 8               ; 9 uses
  %i.bu = alloca [4 x i8], align 4                ; 4 uses
  %i.bv = alloca [8 x i8], align 8                ; 7 uses
  %i.bw = alloca [48 x i8], align 8               ; 4 uses
  %i.bx = alloca [48 x i8], align 8               ; 4 uses
  %i.by = alloca [48 x i8], align 8               ; 4 uses
  %i.bz = alloca [104 x i8], align 8              ; 15 uses
  %i.ca = alloca [48 x i8], align 8               ; 5 uses
  %i.cb = alloca [8 x i8], align 8                ; 7 uses
  %i.cc = alloca [48 x i8], align 8               ; 5 uses
  %i.cd = alloca [24 x i8], align 8               ; 4 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [48 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 5 uses
  %i.ci = alloca [8 x i8], align 8                ; 9 uses
  %i.cj = alloca [24 x i8], align 8               ; 7 uses
  %i.ck = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.13221 = alloca [78 x i8], align 2        ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cm = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.13 = alloca [78 x i8], align 2           ; 6 uses
  %i.cn = alloca [8 x i8], align 8                ; 4 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [8 x i8], align 8                ; 4 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [64 x i8], align 8               ; 11 uses
  %i.cs = alloca [32 x i8], align 8               ; 7 uses
  %i.ct = alloca [24 x i8], align 8               ; 7 uses
  %i.cu = alloca [8 x i8], align 8                ; 4 uses
  %i.cv = alloca [8 x i8], align 8                ; 4 uses
  %i.cw = alloca [8 x i8], align 8                ; 4 uses
  %i.cx = alloca [16 x i8], align 8               ; 5 uses
  %i.cy = alloca [64 x i8], align 8               ; 11 uses
  %i.cz = alloca [32 x i8], align 8               ; 8 uses
  %i.da = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.db = icmp ult i64 %i.da, 2
  br i1 %i.db, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.dc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batch10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.dc, label %bb.c [
    i8 0, label %bb.j
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !127

bb.c:                                             ; preds = %bb.b
  %i.dd = tail call noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batch10___CALLSITE) ; 2 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.dd, %bb.c ], [ %i.dc, %bb.b ], [ %i.dc, %bb.b ]
  %i.df = load ptr, ptr @_RNvNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batch10___CALLSITE, align 8, !nonnull !85, !align !96, !noundef !85
  %i.dg = tail call noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.df, i8 noundef %.sroa.06.0)
  br i1 %i.dg, label %switch.lookup, label %bb.j

switch.lookup:                                    ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  %i.dh = load ptr, ptr @_RNvNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batch10___CALLSITE, align 8, !nonnull !85, !align !96, !noundef !85 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  store ptr @374, ptr %i.cx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr inttoptr (i64 39 to ptr), ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %switch.load = load i64, ptr %i.dk, align 8
  store i64 %switch.load, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 752
  %.val128 = load i64, ptr %i.dl, align 8, !noundef !85
  store i64 %.val128, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store i64 %3, ptr %i.cu, align 8
  store ptr %i.cx, ptr %i.cy, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @343, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.cw, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr @375, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %i.cv, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store ptr @376, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr %i.cu, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store ptr @376, ptr %i.ds, align 8
  store i64 1, ptr %i.cz, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.cy, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 4, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr %i.di, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cz)
  %i.dt = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5249
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.e, label %_RNCNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batchs_0Bd_.exit

default.unreachable584:                           ; preds = %.loopexit.thread586, %bb.i
  unreachable

bb.e:                                             ; preds = %switch.lookup
  %i.dv = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5249 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 6
  call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp samesign ugt i64 %i.dv, 3
  br i1 %i.dx, label %bb.f, label %_RNCNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batchs_0Bd_.exit

bb.f:                                             ; preds = %bb.e
  %i.dy = load ptr, ptr @_RNvNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batch10___CALLSITE, align 8, !noalias !5249, !nonnull !85, !align !96, !noundef !85 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !5249
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !85, !noundef !85
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !85
  store i64 4, ptr %i.cj, align 8, !noalias !5249
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ea, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !5249
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %i.ec, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5249
  %i.ed = call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.ee = extractvalue { ptr, ptr } %i.ed, 0      ; 2 uses
  %i.ef = extractvalue { ptr, ptr } %i.ed, 1      ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !invariant.load !85, !nonnull !85
  %i.ei = call noundef zeroext i1 %i.eh(ptr noundef %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj), !inline_history !5005
  br i1 %i.ei, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dy, ptr noundef nonnull %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ef, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cz)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !5249
  br label %_RNCNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batchs_0Bd_.exit

_RNCNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batchs_0Bd_.exit: ; preds = %switch.lookup, %bb.e, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.k, %bb.j, %_RNCNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batchs_0Bd_.exit
  %i.ej = load i64, ptr %2, align 8, !range !105, !noundef !85 ; 7 uses
  switch i64 %i.ej, label %default.unreachable584 [
    i64 0, label %bb.n
    i64 1, label %bb.bn
    i64 2, label %bb.fb
    i64 3, label %bb.fv
    i64 4, label %bb.jf
  ]

bb.j:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %i.ek = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.em = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.en = icmp ult i64 %i.em, 6
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = icmp samesign ugt i64 %i.em, 3
  br i1 %i.eo, label %bb.l, label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.ep = load ptr, ptr @_RNvNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batch10___CALLSITE, align 8, !nonnull !85, !align !96, !noundef !85 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !85, !noundef !85
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.et = load i64, ptr %i.es, align 8, !noundef !85
  store i64 4, ptr %i.ct, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.er, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %i.et, ptr %.sroa.566.0..sroa_idx, align 8
  %i.eu = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.ev = extractvalue { ptr, ptr } %i.eu, 0      ; 2 uses
  %i.ew = extractvalue { ptr, ptr } %i.eu, 1      ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !invariant.load !85, !nonnull !85
  %i.ez = call noundef zeroext i1 %i.ey(ptr noundef %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct)
  br i1 %i.ez, label %switch.lookup871, label %bb.m

switch.lookup871:                                 ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.fa = load ptr, ptr @_RNvNvMs7_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB7_12InnerCatalog19apply_catalog_batch10___CALLSITE, align 8, !nonnull !85, !align !96, !noundef !85
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  store ptr @374, ptr %i.cq, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr inttoptr (i64 39 to ptr), ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %switch.load873 = load i64, ptr %i.fd, align 8
  store i64 %switch.load873, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 752
  %.val127 = load i64, ptr %i.fe, align 8, !noundef !85
  store i64 %.val127, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i64 %3, ptr %i.cn, align 8
  store ptr %i.cq, ptr %i.cr, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr @343, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.cp, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr @375, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr %i.co, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store ptr @376, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  store ptr %i.cn, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store ptr @376, ptr %i.fl, align 8
  store i64 1, ptr %i.cs, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cr, ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 4, ptr %.sroa.569.0..sroa_idx, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.fb, ptr %i.fm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ep, ptr noundef nonnull %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ew, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %switch.lookup871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.i

bb.n:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5250)
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !5250, !nonnull !85, !noundef !85 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !5250, !noundef !85 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.fq, 88
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.idx.i
  %i.fs = icmp eq i64 %i.fq, 0
  br i1 %i.fs, label %.loopexit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !alias.scope !5250 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.5.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  br label %bb.o

bb.o:                                             ; preds = %bb.bc, %.lr.ph.i
  %.sroa.02.0111.i = phi ptr [ %i.fo, %.lr.ph.i ], [ %i.fz, %bb.bc ] ; 15 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.02.0111.i, i64 88 ; 2 uses
  %i.ga = load i64, ptr %.sroa.02.0111.i, align 8, !range !91, !noalias !5251, !noundef !85
  %i.gb = icmp eq i64 %i.ga, -1
  br i1 %i.gb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !5252
  %i.gc = call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdNtNtNtNtB7_7catalog8versions2v114NodeDefinitionE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ft), !noalias !5251 ; 2 uses
  %.not24.i = icmp eq ptr %i.gc, null
  br i1 %.not24.i, label %bb.bf, label %bb.be, !prof !90

bb.q:                                             ; preds = %bb.o
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.02.0111.i, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !5251, !nonnull !85, !noundef !85 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.02.0111.i, i64 32
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !5251, !noundef !85 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gi = call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdNtNtNtNtB7_7catalog8versions2v114NodeDefinitionE11get_by_nameB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gh, i64 noundef %i.gg), !noalias !5251 ; 5 uses
  %.not.i = icmp eq ptr %i.gi, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !5252
  store ptr %i.gi, ptr %i.ci, align 8, !noalias !5252
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !5251, !nonnull !85, !noundef !85 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !5251, !noundef !85 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.02.0111.i, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !5251, !nonnull !85, !noundef !85 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.02.0111.i, i64 48
  %i.gq = load i64, ptr %i.gp, align 8, !noalias !5251, !noundef !85 ; 3 uses
  %i.gr = icmp eq ptr %i.gk, %i.go
  %i.gs = icmp eq i64 %i.gm, %i.gq                ; 2 uses
  %i.gt = and i1 %i.gr, %i.gs
  br i1 %i.gt, label %bb.x, label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !5252
  %i.gu = atomicrmw add ptr %i.ge, i64 1 monotonic, align 8, !noalias !5251
  %i.gv = icmp slt i64 %i.gu, 0
  br i1 %i.gv, label %bb.ap, label %bb.ao

bb.t:                                             ; preds = %bb.r
  br i1 %i.gs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.gx, ptr nonnull %i.gw, i64 %i.gm), !noalias !5251
  %.not22.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not22.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gy = atomicrmw add ptr %i.gi, i64 -1 release, align 8, !noalias !5253
  %i.gz = icmp eq i64 %i.gy, 1
  br i1 %i.gz, label %bb.w, label %bb.jk

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ci), !noalias !5251
  br label %bb.jk

bb.x:                                             ; preds = %bb.u, %bb.r
  %i.ha = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionE8make_mutBN_(ptr noalias noundef align 8 dereferenceable(8) %i.ci)
          to label %bb.y unwind label %.thread52.i, !noalias !5251 ; 7 uses

.thread52.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.x
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.hb = atomicrmw add ptr %i.go, i64 1 monotonic, align 8, !noalias !5251
  %i.hc = icmp slt i64 %i.hb, 0
  br i1 %i.hc, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 56 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5254)
  call void @llvm.experimental.noalias.scope.decl(metadata !5255)
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !5256, !noalias !5251, !nonnull !85, !noundef !85
  %i.hf = atomicrmw add ptr %i.he, i64 -1 release, align 8, !noalias !5257
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i unwind label %bb.ac, !noalias !5251

bb.ab:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hh = landingpad { ptr, i32 }
          cleanup
  store ptr %i.go, ptr %i.hd, align 8, !noalias !5251
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  store i64 %i.gq, ptr %i.hi, align 8, !noalias !5251
  br label %.thread.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.aa, %bb.z
  store ptr %i.go, ptr %i.hd, align 8, !noalias !5251
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  store i64 %i.gq, ptr %i.hj, align 8, !noalias !5251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !5252
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.0111.i)
          to label %bb.ad unwind label %.thread52.i, !noalias !5251

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 5 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hk)
          to label %bb.af unwind label %bb.ae, !noalias !5251

bb.ae:                                            ; preds = %bb.ad
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hk)
          to label %.body.i unwind label %bb.ag, !noalias !5251

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeEEB1f_.exit.i unwind label %bb.ah, !noalias !5251

end_hunk_1
