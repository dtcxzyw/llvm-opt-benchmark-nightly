Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.08?download=true
inline.NumInlined: 8661
inline.NumDeleted: 4050
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0
@1327 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralNtB6_5Debug3fmtBE_ }>, align 8, !guid !27
@1328 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict23DynamicTypedDictLiteralNtB6_5Debug3fmtBE_ }>, align 8, !guid !27
@1329 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralNtB6_5Debug3fmtBE_ }>, align 8, !guid !27
@1330 = private unnamed_addr constant [20 x i8] c"invalid enum variant", align 1, !guid !27
@1331 = private unnamed_addr constant [45 x i8] c"crates/ty_python_semantic/src/types/class.rs\00", align 1, !guid !27
@1332 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1331, [16 x i8] c",\00\00\00\00\00\00\00B\04\00\00.\00\00\00" }>, align 8, !guid !27
@1333 = private unnamed_addr constant [38 x i8] c"protocol_bind_self::interned_arguments", align 1, !guid !27
@1334 = private unnamed_addr constant [53 x i8] c"protocol_apply_self_with_receiver::interned_arguments", align 1, !guid !27
@1335 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal8EnumSpecNtB6_5Debug3fmtBE_ }>, align 8, !guid !27
@1336 = private unnamed_addr constant [4 x i8] c"spec", align 1, !guid !27
@1337 = private unnamed_addr constant [6 x i8] c"\C1 \00\80`\00", align 1, !guid !27
@1338 = private unnamed_addr constant [7 x i8] c"Regular", align 1, !guid !27
@1339 = private unnamed_addr constant [12 x i8] c"FunctionLike", align 1, !guid !27
@1340 = private unnamed_addr constant [15 x i8] c"DunderParamSpec", align 1, !guid !27
@1341 = private unnamed_addr constant [16 x i8] c"StaticMethodLike", align 1, !guid !27
@1342 = private unnamed_addr constant [15 x i8] c"ClassMethodLike", align 1, !guid !27
@1343 = private unnamed_addr constant [14 x i8] c"ParamSpecValue", align 1, !guid !27
@1344 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ExtraBehaviorENtNtB7_3fmt5Debug3fmtBS_ }>, align 8, !guid !27
@1345 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ConfigBooleanNtB6_5Debug3fmtBE_ }>, align 8, !guid !27
@1346 = private unnamed_addr constant [5 x i8] c"extra", align 1, !guid !27
@1347 = private unnamed_addr constant [15 x i8] c"from_attributes", align 1, !guid !27
@1348 = private unnamed_addr constant [6 x i8] c"frozen", align 1, !guid !27
@1349 = private unnamed_addr constant [17 x i8] c"validate_by_alias", align 1, !guid !27
@1350 = private unnamed_addr constant [16 x i8] c"validate_by_name", align 1, !guid !27
@1351 = private unnamed_addr constant [16 x i8] c"populate_by_name", align 1, !guid !27
@1352 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1346, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @190, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @1347, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @1348, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @1349, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @1350, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @1351, [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8, !guid !27
@1353 = private unnamed_addr constant [11 x i8] c"ModelConfig", align 1, !guid !27
@1354 = private unnamed_addr constant [6 x i8] c"Typing", align 1, !guid !27
@1355 = private unnamed_addr constant [16 x i8] c"TypingExtensions", align 1, !guid !27
@1356 = private unnamed_addr constant [13 x i8] c"ProtocolClass", align 1, !guid !27
@1357 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple14NamedTupleSpecNtB6_5Debug3fmtBE_ }>, align 8, !guid !27
@1358 = private unnamed_addr constant [21 x i8] c"CollectionsDefinition", align 1, !guid !27
@1359 = private unnamed_addr constant [16 x i8] c"TypingDefinition", align 1, !guid !27
@1360 = private unnamed_addr constant [14 x i8] c"ImplicitReturn", align 1, !guid !27
@1361 = private unnamed_addr constant [14 x i8] c"ExplicitReturn", align 1, !guid !27
@1362 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function1__16InternalBitFlagsNtB6_5Debug3fmtBE_ }>, align 8, !guid !27
@1363 = private unnamed_addr constant [18 x i8] c"FunctionDecorators", align 1, !guid !27
@1364 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9Signaturej1_ENtB6_5Debug3fmtB1c_ }>, align 8, !guid !27
@1365 = private unnamed_addr constant [17 x i8] c"CallableSignature", align 1, !guid !27
@1366 = private unnamed_addr constant [9 x i8] c"overloads", align 1, !guid !27
@1367 = private unnamed_addr constant [14 x i8] c"ImplicitlyOpen", align 1, !guid !27
@1368 = private unnamed_addr constant [6 x i8] c"Closed", align 1, !guid !27
@1369 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict19TypedDictExtraItemsNtB6_5Debug3fmtBC_ }>, align 8, !guid !27
@1370 = private unnamed_addr constant [5 x i8] c"Extra", align 1, !guid !27
@1371 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super22DescriptorReceiverKindNtB6_5Debug3fmtBC_ }>, align 8, !guid !27
@1372 = private unnamed_addr constant [18 x i8] c"ResolvedSuperOwner", align 1, !guid !27
@1373 = private unnamed_addr constant [10 x i8] c"owner_type", align 1, !guid !27
@1374 = private unnamed_addr constant [13 x i8] c"lookup_anchor", align 1, !guid !27
@1375 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions_1__16InternalBitFlagsNtB6_5Debug3fmtBE_ }>, align 8, !guid !27
@1376 = private unnamed_addr constant [25 x i8] c"DataclassTransformerFlags", align 1, !guid !27
@1377 = private unnamed_addr constant [2 x i8] c"Ok", align 1, !guid !27
@1378 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsoTR8nlGN3X_18ty_python_semantic5types26InvalidTypeExpressionErrorNtB6_5Debug3fmtBA_ }>, align 8, !guid !27
@1379 = private unnamed_addr constant [3 x i8] c"Err", align 1, !guid !27
@1380 = private unnamed_addr constant [5 x i8] c"Empty", align 1, !guid !27
@1381 = private unnamed_addr constant [6 x i8] c"Single", align 1, !guid !27
@1382 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB6_5Debug3fmtB1f_ }>, align 8, !guid !27
@1383 = private unnamed_addr constant [8 x i8] c"Multiple", align 1, !guid !27
@1384 = private unnamed_addr constant [11 x i8] c"Unspecified", align 1, !guid !27
@1385 = private unnamed_addr constant [8 x i8] c"Disabled", align 1, !guid !27
@1386 = private unnamed_addr constant [7 x i8] c"Enabled", align 1, !guid !27
@1387 = private unnamed_addr constant [7 x i8] c"Unknown", align 1, !guid !27
@1388 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1883480804971965807 to ptr), ptr inttoptr (i64 -6170572597727246856 to ptr) }>, align 8, !guid !27
@1389 = private unnamed_addr constant [8 x i8] c"REQUIRED", align 1, !guid !27
@1390 = private unnamed_addr constant [9 x i8] c"READ_ONLY", align 1, !guid !27
@1391 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8], ptr, [9 x i8], [7 x i8] }> <{ ptr @1389, [9 x i8] c"\08\00\00\00\00\00\00\00\01", [7 x i8] undef, ptr @1390, [9 x i8] c"\09\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8, !guid !27
@llvm.used = appending global [16 x ptr] [ptr @_RNvNvNvNtCsoTR8nlGN3X_18ty_python_semantic10dunder_all1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dicts2_1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dicts3_1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dicts4_1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_supers0_1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classs5_1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classs6_1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classs7_1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classs_1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__1__6___CTOR, ptr @_RNvNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9type_form1__1__6___CTOR, ptr @_RNvNvNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known1__1__6___CTOR, ptr @_RNvNvNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB8_10KnownClass11to_instance1__1__6___CTOR, ptr @_RNvNvNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB8_10KnownClass20lookup_class_literal1__1__6___CTOR, ptr @_RNvNvNvNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtBb_13TypedDictType5items1__1__6___CTOR, ptr @_RNvNvNvNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtBb_13TypedDictType8openness1__1__6___CTOR], section "llvm.metadata"
@switch.table._RNCNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder10typed_dictNtB8_20TypeInferenceBuilder27infer_typed_dict_expression0Be_ = private unnamed_addr constant [33 x i8] c"(  \18 (((0080\18\18\188@88@0(\04\0C\0C8 \18 ((( ", align 8
@switch.table._RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14BoundSuperType5build = private unnamed_addr constant [20 x i8] c"*****1______________", align 1
@switch.table._RNvXs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClassNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [108 x i8] c"\04\06\05\09\0A\04\03\05\07\03\04\05\05\03\09\04\05\08\0D\09\07\12\0E\0C\0B\05\13\04\0C\08\04\06\09\07\07\04\07\07\0C\0A\0C\0A\11\15\09\0D\12\0D\12\13\0C\08\16\09\09\0E\0A\0B\0B\07\09\13\0D\0F\0C\0C\16\0D\0D\07\08\0D\08\08\0D\08\07\0E\11\1A\08\08\07\0B\05\0B\0B\05\06\12\0E\11\08\04\10\0D\15\0E\0E\19\19\14\14\11\14\12\11\0E", align 8
@switch.table._RNvXs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClassNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.1467 = private unnamed_addr constant [108 x ptr] [ptr @807, ptr @808, ptr @809, ptr @810, ptr @811, ptr @812, ptr @813, ptr @814, ptr @815, ptr @816, ptr @817, ptr @818, ptr @819, ptr @820, ptr @821, ptr @822, ptr @823, ptr @824, ptr @389, ptr @391, ptr @392, ptr @390, ptr @394, ptr @825, ptr @826, ptr @827, ptr @393, ptr @434, ptr @828, ptr @436, ptr @829, ptr @830, ptr @831, ptr @437, ptr @438, ptr @439, ptr @440, ptr @444, ptr @203, ptr @402, ptr @285, ptr @406, ptr @407, ptr @408, ptr @160, ptr @403, ptr @404, ptr @405, ptr @448, ptr @409, ptr @447, ptr @400, ptr @401, ptr @397, ptr @398, ptr @399, ptr @832, ptr @833, ptr @834, ptr @411, ptr @419, ptr @835, ptr @420, ptr @421, ptr @836, ptr @422, ptr @837, ptr @410, ptr @838, ptr @242, ptr @432, ptr @433, ptr @412, ptr @413, ptr @415, ptr @416, ptr @417, ptr @418, ptr @839, ptr @840, ptr @841, ptr @424, ptr @425, ptr @842, ptr @843, ptr @428, ptr @844, ptr @449, ptr @845, ptr @451, ptr @452, ptr @455, ptr @456, ptr @457, ptr @846, ptr @453, ptr @454, ptr @290, ptr @297, ptr @847, ptr @848, ptr @849, ptr @850, ptr @851, ptr @852, ptr @853, ptr @854, ptr @855], align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class18ProtocolMethodKindNtB6_5Debug3fmtBC_ = private unnamed_addr constant [3 x i8] c"\08\05\06", align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class18ProtocolMethodKindNtB6_5Debug3fmtBC_.1468 = private unnamed_addr constant [3 x ptr] [ptr @889, ptr @890, ptr @864], align 8
@switch.table._RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_15MethodDecoratorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\04\0B\0C", align 8
@switch.table._RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_15MethodDecoratorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.1469 = private unnamed_addr constant [3 x ptr] [ptr @964, ptr @965, ptr @966], align 8
@switch.table._RNvXsW_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_11TypeVarKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [8 x i8] c"\0D\0D\0A\0F\0F\12\12\0B", align 8
@switch.table._RNvXsW_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_11TypeVarKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.1470 = private unnamed_addr constant [8 x ptr] [ptr @1317, ptr @1318, ptr @1319, ptr @1320, ptr @1321, ptr @1322, ptr @1323, ptr @1324], align 8
@switch.table._RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_16CallableTypeKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [6 x i8] c"\07\0C\0F\10\0F\0E", align 8
@switch.table._RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_16CallableTypeKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.1471 = private unnamed_addr constant [6 x ptr] [ptr @1338, ptr @1339, ptr @1340, ptr @1341, ptr @1342, ptr @1343], align 8
@switch.table._RNvXsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_26CallableFunctionProvenanceNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\04\0E\0E", align 8
@switch.table._RNvXsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_26CallableFunctionProvenanceNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.1472 = private unnamed_addr constant [3 x ptr] [ptr @964, ptr @1360, ptr @1361], align 8
@switch.table._RNvXsy_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydanticNtB5_13ConfigBooleanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\0B\08\07\07", align 8
@switch.table._RNvXsy_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydanticNtB5_13ConfigBooleanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.1473 = private unnamed_addr constant [4 x ptr] [ptr @1384, ptr @1385, ptr @1386, ptr @1387], align 8

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvCsac1FTZPM6E4_6typeid2ofNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEBw_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 !guid !201 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @787, i64 16, i1 false)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvCsac1FTZPM6E4_6typeid2ofNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict23DynamicTypedDictLiteralEBy_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 !guid !202 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @788, i64 16, i1 false)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvCsac1FTZPM6E4_6typeid2ofNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEBy_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 !guid !203 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @789, i64 16, i1 false)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvCsac1FTZPM6E4_6typeid2ofNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEBy_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 !guid !204 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @790, i64 16, i1 false)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvCsac1FTZPM6E4_6typeid2ofNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEBy_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 !guid !205 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @791, i64 16, i1 false)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvCsac1FTZPM6E4_6typeid2ofNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEBy_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 !guid !206 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @792, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceINtNtCscdodAO9FK5_5alloc3vec3VecNtB7_4TypeEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 8)) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #1 !guid !216 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeINtNtCscdodAO9FK5_5alloc3vec3VecNtB7_4TypeEEB9_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, i8 noundef %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %5)
  %i.d = load i32, ptr %i.b, align 4, !range !107, !noundef !108 ; 3 uses
  %.not = icmp eq i32 %i.d, -2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.510.0.copyload = load i32, ptr %.sroa.510.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceINtNtCscdodAO9FK5_5alloc3vec3VecNtB9_4TypeEE0Bb_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.510.0.copyload, ptr %.sroa.6.0..sroa_idx7, align 4, !alias.scope !219, !noalias !220
  br label %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceINtNtCscdodAO9FK5_5alloc3vec3VecNtB9_4TypeEE0Bb_.exit

_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceINtNtCscdodAO9FK5_5alloc3vec3VecNtB9_4TypeEE0Bb_.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ %i.d, %bb.c ], [ %.sroa.4.0.copyload, %bb.b ]
  %.sroa.4.0.copyload.sink = phi i32 [ %.sroa.4.0.copyload, %bb.c ], [ %.sroa.510.0.copyload, %bb.b ]
  %storemerge.i.i = phi i32 [ 15, %bb.c ], [ 16, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sink, ptr %i.f, align 4, !alias.scope !219, !noalias !220
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.4.0.copyload.sink, ptr %i.g, align 4, !alias.scope !219, !noalias !220
  store i32 %storemerge.i.i, ptr %i.a, align 4, !alias.scope !221, !noalias !217
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25to_instance_approximation(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = load i32, ptr %i.c, align 4, !range !109, !noundef !108
  %.not1 = icmp eq i32 %i.h, -1
  br i1 %.not1, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceINtNtCscdodAO9FK5_5alloc3vec3VecNtB9_4TypeEE0Bb_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.i, align 4, !alias.scope !223
  store i32 4, ptr %0, align 4, !alias.scope !223
  br label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceINtNtCscdodAO9FK5_5alloc3vec3VecNtB9_4TypeEE0Bb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej1_EB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 8)) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %5, ptr noalias readonly align 8 captures(none) %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !246 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 7 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !247
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.b, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !248
  %i.f = load i32, ptr %i.b, align 4, !range !110, !noalias !247, !noundef !108 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i32 %i.f, 38
  tail call void @llvm.assume(i1 %i.g)
  %7 = icmp eq i32 %i.f, 39
  br i1 %7, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  br label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit.thread

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !111, !noalias !247, !noundef !108
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 4, !noalias !247, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !247, !noundef !108 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i
  %.sroa.0.0.i15.i.i = phi i32 [ %i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i ], [ %i.m, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i ] ; 2 uses
  %.sroa.4.0.i14.i.i = phi i32 [ %i.k, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i ], [ %i.o, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i ] ; 2 uses
  %i.p = tail call { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral15generic_context(i32 noundef %.sroa.0.0.i15.i.i, i32 noundef %.sroa.4.0.i14.i.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !249 ; 2 uses
  %i.q = extractvalue { i32, i32 } %i.p, 0        ; 2 uses
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit.thread, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit

_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit: ; preds = %bb.c
  %i.r = extractvalue { i32, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !250
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %5, ptr %i.s, align 8, !alias.scope !251, !noalias !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.t, align 8, !alias.scope !251, !noalias !250
  store i64 -1, ptr %i.c, align 8, !alias.scope !251, !noalias !250
  call void @_RNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB4_10KnownClass25to_specialized_class_type30to_specialized_class_type_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i8 noundef range(i8 0, 108) %1, i32 noundef %.sroa.0.0.i15.i.i, i32 noundef %.sroa.4.0.i14.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.q, i32 noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !250
  %.pr = load i32, ptr %i.d, align 4              ; 3 uses
  %.not = icmp eq i32 %.pr, -2
  br i1 %.not, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.510.0.copyload = load i32, ptr %.sroa.510.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !252
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.u = icmp eq i32 %.pr, -1
  br i1 %i.u, label %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej1_E0Bb_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.510.0.copyload, ptr %.sroa.6.0..sroa_idx7, align 4, !alias.scope !254, !noalias !255
  br label %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej1_E0Bb_.exit

_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej1_E0Bb_.exit: ; preds = %bb.d, %bb.e
  %.pr.sink = phi i32 [ %.pr, %bb.e ], [ %.sroa.4.0.copyload, %bb.d ]
  %.sroa.4.0.copyload.sink = phi i32 [ %.sroa.4.0.copyload, %bb.e ], [ %.sroa.510.0.copyload, %bb.d ]
  %storemerge.i.i = phi i32 [ 15, %bb.e ], [ 16, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.pr.sink, ptr %i.v, align 4, !alias.scope !254, !noalias !255
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.4.0.copyload.sink, ptr %i.w, align 4, !alias.scope !254, !noalias !255
  store i32 %storemerge.i.i, ptr %i.a, align 4, !alias.scope !256, !noalias !252
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25to_instance_approximation(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = load i32, ptr %i.e, align 4, !range !109, !noundef !108
  %.not1 = icmp eq i32 %i.x, -1
  br i1 %.not1, label %bb.f, label %bb.g

_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit.thread: ; preds = %bb.c, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_.exit.thread, %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej1_E0Bb_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.y, align 4, !alias.scope !258
  store i32 4, ptr %0, align 4, !alias.scope !258
  br label %bb.h

bb.g:                                             ; preds = %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej1_E0Bb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej2_EB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 8)) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %5, ptr noalias readonly align 8 captures(none) %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !281 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 7 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !282
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.b, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !283
  %i.f = load i32, ptr %i.b, align 4, !range !110, !noalias !282, !noundef !108 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i32 %i.f, 38
  tail call void @llvm.assume(i1 %i.g)
  %7 = icmp eq i32 %i.f, 39
  br i1 %7, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !282
  br label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit.thread

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !111, !noalias !282, !noundef !108
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 4, !noalias !282, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !282
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !282, !noundef !108 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !282
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i
  %.sroa.0.0.i15.i.i = phi i32 [ %i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i ], [ %i.m, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i ] ; 2 uses
  %.sroa.4.0.i14.i.i = phi i32 [ %i.k, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i ], [ %i.o, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i ] ; 2 uses
  %i.p = tail call { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral15generic_context(i32 noundef %.sroa.0.0.i15.i.i, i32 noundef %.sroa.4.0.i14.i.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !284 ; 2 uses
  %i.q = extractvalue { i32, i32 } %i.p, 0        ; 2 uses
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit.thread, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit

_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit: ; preds = %bb.c
  %i.r = extractvalue { i32, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !285
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %5, ptr %i.s, align 8, !alias.scope !286, !noalias !285
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 2, ptr %i.t, align 8, !alias.scope !286, !noalias !285
  store i64 -1, ptr %i.c, align 8, !alias.scope !286, !noalias !285
  call void @_RNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB4_10KnownClass25to_specialized_class_type30to_specialized_class_type_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i8 noundef range(i8 0, 108) %1, i32 noundef %.sroa.0.0.i15.i.i, i32 noundef %.sroa.4.0.i14.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.q, i32 noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !285
  %.pr = load i32, ptr %i.d, align 4              ; 3 uses
  %.not = icmp eq i32 %.pr, -2
  br i1 %.not, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.510.0.copyload = load i32, ptr %.sroa.510.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !287
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.u = icmp eq i32 %.pr, -1
  br i1 %i.u, label %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej2_E0Bb_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.510.0.copyload, ptr %.sroa.6.0..sroa_idx7, align 4, !alias.scope !289, !noalias !290
  br label %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej2_E0Bb_.exit

_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej2_E0Bb_.exit: ; preds = %bb.d, %bb.e
  %.pr.sink = phi i32 [ %.pr, %bb.e ], [ %.sroa.4.0.copyload, %bb.d ]
  %.sroa.4.0.copyload.sink = phi i32 [ %.sroa.4.0.copyload, %bb.e ], [ %.sroa.510.0.copyload, %bb.d ]
  %storemerge.i.i = phi i32 [ 15, %bb.e ], [ 16, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.pr.sink, ptr %i.v, align 4, !alias.scope !289, !noalias !290
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.4.0.copyload.sink, ptr %i.w, align 4, !alias.scope !289, !noalias !290
  store i32 %storemerge.i.i, ptr %i.a, align 4, !alias.scope !291, !noalias !287
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25to_instance_approximation(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = load i32, ptr %i.e, align 4, !range !109, !noundef !108
  %.not1 = icmp eq i32 %i.x, -1
  br i1 %.not1, label %bb.f, label %bb.g

_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit.thread: ; preds = %bb.c, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_.exit.thread, %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej2_E0Bb_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.y, align 4, !alias.scope !293
  store i32 4, ptr %0, align 4, !alias.scope !293
  br label %bb.h

bb.g:                                             ; preds = %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej2_E0Bb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej3_EB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 8)) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(48) %5, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !316 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 7 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !317
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.b, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !318
  %i.f = load i32, ptr %i.b, align 4, !range !110, !noalias !317, !noundef !108 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i32 %i.f, 38
  tail call void @llvm.assume(i1 %i.g)
  %7 = icmp eq i32 %i.f, 39
  br i1 %7, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !317
  br label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit.thread

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !111, !noalias !317, !noundef !108
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 4, !noalias !317, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !317
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !317, !noundef !108 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !317
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i
  %.sroa.0.0.i15.i.i = phi i32 [ %i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i ], [ %i.m, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i ] ; 2 uses
  %.sroa.4.0.i14.i.i = phi i32 [ %i.k, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i ], [ %i.o, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i ] ; 2 uses
  %i.p = tail call { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral15generic_context(i32 noundef %.sroa.0.0.i15.i.i, i32 noundef %.sroa.4.0.i14.i.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !319 ; 2 uses
  %i.q = extractvalue { i32, i32 } %i.p, 0        ; 2 uses
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit.thread, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit

_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit: ; preds = %bb.c
  %i.r = extractvalue { i32, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !320
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %5, ptr %i.s, align 8, !alias.scope !321, !noalias !320
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 3, ptr %i.t, align 8, !alias.scope !321, !noalias !320
  store i64 -1, ptr %i.c, align 8, !alias.scope !321, !noalias !320
  call void @_RNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB4_10KnownClass25to_specialized_class_type30to_specialized_class_type_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i8 noundef range(i8 0, 108) %1, i32 noundef %.sroa.0.0.i15.i.i, i32 noundef %.sroa.4.0.i14.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.q, i32 noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !320
  %.pr = load i32, ptr %i.d, align 4              ; 3 uses
  %.not = icmp eq i32 %.pr, -2
  br i1 %.not, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.510.0.copyload = load i32, ptr %.sroa.510.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !322
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.u = icmp eq i32 %.pr, -1
  br i1 %i.u, label %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej3_E0Bb_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.510.0.copyload, ptr %.sroa.6.0..sroa_idx7, align 4, !alias.scope !324, !noalias !325
  br label %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej3_E0Bb_.exit

_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej3_E0Bb_.exit: ; preds = %bb.d, %bb.e
  %.pr.sink = phi i32 [ %.pr, %bb.e ], [ %.sroa.4.0.copyload, %bb.d ]
  %.sroa.4.0.copyload.sink = phi i32 [ %.sroa.4.0.copyload, %bb.e ], [ %.sroa.510.0.copyload, %bb.d ]
  %storemerge.i.i = phi i32 [ 15, %bb.e ], [ 16, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.pr.sink, ptr %i.v, align 4, !alias.scope !324, !noalias !325
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.4.0.copyload.sink, ptr %i.w, align 4, !alias.scope !324, !noalias !325
  store i32 %storemerge.i.i, ptr %i.a, align 4, !alias.scope !326, !noalias !322
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25to_instance_approximation(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = load i32, ptr %i.e, align 4, !range !109, !noundef !108
  %.not1 = icmp eq i32 %i.x, -1
  br i1 %.not1, label %bb.f, label %bb.g

_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit.thread: ; preds = %bb.c, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej3_EB9_.exit.thread, %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej3_E0Bb_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.y, align 4, !alias.scope !328
  store i32 4, ptr %0, align 4, !alias.scope !328
  br label %bb.h

bb.g:                                             ; preds = %_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB5_10KnownClass23to_specialized_instanceRANtB9_4Typej3_E0Bb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeINtNtCscdodAO9FK5_5alloc3vec3VecNtB7_4TypeEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr nofree noundef nonnull align 4 captures(none) %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %5) unnamed_addr #1 personality ptr @rust_eh_personality !guid !334 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !335
  invoke fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !range !110, !noalias !335, !noundef !108 ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.d = icmp ne i32 %i.c, 38
  tail call void @llvm.assume(i1 %i.d)
  %6 = icmp eq i32 %i.c, 39
  br i1 %6, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !335
  br label %bb.d

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !range !111, !noalias !335, !noundef !108
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i32, ptr %i.g, align 4, !noalias !335, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !335
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i: ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noalias !335, !noundef !108 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i32, ptr %i.k, align 4, !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !335
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i
  %.sroa.0.0.i15.i = phi i32 [ %i.f, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i ], [ %i.j, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i ] ; 2 uses
  %.sroa.4.0.i14.i = phi i32 [ %i.h, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i ], [ %i.l, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i ] ; 2 uses
  %i.m = invoke { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral15generic_context(i32 noundef %.sroa.0.0.i15.i, i32 noundef %.sroa.4.0.i14.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.g, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i
  store i32 -2, ptr %0, align 4
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %lpad.thr_comm, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.p = extractvalue { i32, i32 } %i.m, 0        ; 2 uses
  %.not13 = icmp eq i32 %i.p, 0
  br i1 %.not13, label %bb.d, label %bb.i

bb.h:                                             ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit
  ret void

bb.i:                                             ; preds = %bb.g
  %i.q = extractvalue { i32, i32 } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @_RNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB4_10KnownClass25to_specialized_class_type30to_specialized_class_type_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i8 noundef %1, i32 noundef %.sroa.0.0.i15.i, i32 noundef %.sroa.4.0.i14.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.p, i32 noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.j:                                             ; preds = %bb.a, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %5) #41
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej1_EB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr nofree noundef nonnull align 4 captures(none) %4, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %5) unnamed_addr #1 personality ptr @rust_eh_personality !guid !345 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !346
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !347
  %i.c = load i32, ptr %i.a, align 4, !range !110, !noalias !346, !noundef !108 ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %i.c, 38
  tail call void @llvm.assume(i1 %i.d)
  %6 = icmp eq i32 %i.c, 39
  br i1 %6, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !346
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !range !111, !noalias !346, !noundef !108
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i32, ptr %i.g, align 4, !noalias !346, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !346
  br label %bb.d

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noalias !346, !noundef !108 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i32, ptr %i.k, align 4, !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !346
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i
  store i32 -2, ptr %0, align 4
  br label %bb.g

bb.d:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i
  %.sroa.0.0.i15.i = phi i32 [ %i.f, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i ], [ %i.j, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i ] ; 2 uses
  %.sroa.4.0.i14.i = phi i32 [ %i.h, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i ], [ %i.l, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i ] ; 2 uses
  %i.m = tail call { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral15generic_context(i32 noundef %.sroa.0.0.i15.i, i32 noundef %.sroa.4.0.i14.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0        ; 2 uses
  %.not13 = icmp eq i32 %i.n, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i32, i32 } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %5, ptr %i.p, align 8, !alias.scope !348
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.q, align 8, !alias.scope !348
  store i64 -1, ptr %i.b, align 8, !alias.scope !348
  call void @_RNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB4_10KnownClass25to_specialized_class_type30to_specialized_class_type_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i8 noundef %1, i32 noundef %.sroa.0.0.i15.i, i32 noundef %.sroa.4.0.i14.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.n, i32 noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 -2, ptr %0, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRANtB7_4Typej2_EB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr nofree noundef nonnull align 4 captures(none) %4, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality !guid !358 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !359
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !360
  %i.c = load i32, ptr %i.a, align 4, !range !110, !noalias !359, !noundef !108 ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %i.c, 38
  tail call void @llvm.assume(i1 %i.d)
  %6 = icmp eq i32 %i.c, 39
  br i1 %6, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !range !111, !noalias !359, !noundef !108
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i32, ptr %i.g, align 4, !noalias !359, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  br label %bb.d

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noalias !359, !noundef !108 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i32, ptr %i.k, align 4, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i
  store i32 -2, ptr %0, align 4
  br label %bb.g

bb.d:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i
  %.sroa.0.0.i15.i = phi i32 [ %i.f, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i ], [ %i.j, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i ] ; 2 uses
  %.sroa.4.0.i14.i = phi i32 [ %i.h, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i ], [ %i.l, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i ] ; 2 uses
  %i.m = tail call { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral15generic_context(i32 noundef %.sroa.0.0.i15.i, i32 noundef %.sroa.4.0.i14.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0        ; 2 uses
  %.not13 = icmp eq i32 %i.n, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i32, i32 } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %5, ptr %i.p, align 8, !alias.scope !361
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 2, ptr %i.q, align 8, !alias.scope !361
  store i64 -1, ptr %i.b, align 8, !alias.scope !361
  call void @_RNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB4_10KnownClass25to_specialized_class_type30to_specialized_class_type_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i8 noundef %1, i32 noundef %.sroa.0.0.i15.i, i32 noundef %.sroa.4.0.i14.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.n, i32 noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 -2, ptr %0, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex10expressionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !373 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef range(i32 1, 0) i32 @_RNvXs_NtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_keyNtB4_17ExpressionNodeKeyINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %1)
  store i32 %i.b, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !374, !noundef !108
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !377, !noundef !108 ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !377, !nonnull !108, !noundef !108 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.l    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !378 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.01.0.i.i.i, %i.t
  %i.v = and i64 %i.u, %i.l
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.z = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyINtB2_10EquivalentBq_E10equivalentCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.y), !noalias !379
  br i1 %i.z, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBU_10expression10ExpressionNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_ECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.d, !prof !112

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %select.unfold, !prof !113

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ad = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.af = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBU_10expression10ExpressionNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_ECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ai = load i32, ptr %i.ah, align 4, !range !111, !noundef !108
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = insertvalue { i32, i32 } poison, i32 %i.ai, 0
  %i.am = insertvalue { i32, i32 } %i.al, i32 %i.ak, 1
  ret { i32, i32 } %i.am

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex10try_unpackRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(400) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !382 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = tail call noundef range(i32 1, 0) i32 @_RNvXs_NtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_keyNtB4_17ExpressionNodeKeyINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %1) ; 4 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !108, !noundef !108 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val3 = load i64, ptr %i.c, align 8, !noundef !108 ; 4 uses
  switch i64 %.val3, label %.lr.ph.i.i [
    i64 0, label %_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtNtB7_7ast_ids8node_key17ExpressionNodeKeyNtNtB7_6unpack6UnpackE3getCsoTR8nlGN3X_18ty_python_semantic.exit.thread
    i64 1, label %._crit_edge.i.thread.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.l ; 2 uses
  %.val14.i.i = load i32, ptr %i.d, align 4, !range !111, !alias.scope !383, !noundef !108 ; 2 uses
  %i.e = icmp eq i32 %.val14.i.i, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

._crit_edge.i.thread.i:                           ; preds = %bb.a
  %.val14.i6.i = load i32, ptr %.val, align 4, !range !111, !alias.scope !383, !noundef !108 ; 2 uses
  %i.f = icmp eq i32 %.val14.i6.i, %i.b
  br i1 %i.f, label %bb.c, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.val3, %bb.a ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = lshr i64 %.sroa.01.019.i.i, 1            ; 2 uses
  %i.h = add nuw nsw i64 %i.g, %.sroa.05.018.i.i  ; 3 uses
  %i.i = icmp ult i64 %i.h, %.val3
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.h
  %.val16.i.i = load i32, ptr %i.j, align 4, !range !111, !alias.scope !383, !noundef !108
  %i.k = icmp ugt i32 %.val16.i.i, %i.b
  %i.l = select i1 %i.k, i64 %.sroa.05.018.i.i, i64 %i.h, !unpredictable !108 ; 3 uses
  %i.m = sub nuw nsw i64 %.sroa.01.019.i.i, %i.g  ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.thread.i, %._crit_edge.i.i
  %.val14.i9.i = phi i32 [ %.val14.i6.i, %._crit_edge.i.thread.i ], [ %.val14.i.i, %._crit_edge.i.i ]
  %.sroa.05.0.lcssa.i7.i = phi i64 [ 0, %._crit_edge.i.thread.i ], [ %i.l, %._crit_edge.i.i ]
  %i.o = icmp ult i32 %.val14.i9.i, %i.b
  %i.p = zext i1 %i.o to i64
  %i.q = add nuw nsw i64 %.sroa.05.0.lcssa.i7.i, %i.p
  %i.r = icmp ule i64 %i.q, %.val3
  tail call void @llvm.assume(i1 %i.r)
  br label %_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtNtB7_7ast_ids8node_key17ExpressionNodeKeyNtNtB7_6unpack6UnpackE3getCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.c:                                             ; preds = %._crit_edge.i.i, %._crit_edge.i.thread.i
  %i.s = phi ptr [ %.val, %._crit_edge.i.thread.i ], [ %i.d, %._crit_edge.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !range !111, !noundef !108
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i32, ptr %i.v, align 4, !noundef !108
  br label %_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtNtB7_7ast_ids8node_key17ExpressionNodeKeyNtNtB7_6unpack6UnpackE3getCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtNtB7_7ast_ids8node_key17ExpressionNodeKeyNtNtB7_6unpack6UnpackE3getCsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi i32 [ %i.w, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i32 [ %i.u, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.x = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.y = insertvalue { i32, i32 } %i.x, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex11definitionsRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 !guid !384 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = tail call noundef range(i32 1, 0) i32 @_RNvXsM_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB5_17DefinitionNodeKeyINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasE4from(ptr noundef nonnull align 8 %1)
  %i.c = tail call { ptr, i64 } @_RNvMs_Cs2O29vuvTAEJ_14ty_python_coreNtB4_17DefinitionsByNode3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !113

bb.b:                                             ; preds = %bb.a
  ret { ptr, i64 } %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 50, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex13try_statementRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400) %1, ptr noundef nonnull align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !396 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance:bb.a

.noexc13.i.i.i.i.i:                               ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13198
  %i.bn = load i64, ptr %i.ar, align 8, !range !127, !noalias !13199, !noundef !108
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ax, i64 noundef %i.bn)
          to label %.noexc14.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13189

.noexc14.i.i.i.i.i:                               ; preds = %.noexc13.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13198
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ax, ptr noundef nonnull align 8 %i.ah, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass11to_instance1__38known_class_to_instance_Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13189

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass11to_instance1__38known_class_to_instance_Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i, %bb.r, %.noexc12.i.i.i.i.i, %bb.p, %.noexc11.i.i.i.i.i
  %i.bo = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass11to_instance1__38known_class_to_instance_Configuration_E10fetch_coldB1e_(ptr noundef nonnull align 8 %i.aj, ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull align 8 %i.ai, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i32 noundef range(i32 1, 0) %i.t, i32 noundef %i.u, i32 noundef %.val8.i.i.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13189 ; 2 uses

.noexc16.i.i.i.i.i:                               ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass11to_instance1__38known_class_to_instance_Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %bb.o, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass11to_instance1__38known_class_to_instance_Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass11to_instance1__38known_class_to_instance_Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i.i.i: ; preds = %.noexc16.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %.noexc14.i.i.i.i.i, %bb.s
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.s ], [ %i.ax, %.noexc14.i.i.i.i.i ], [ %i.ax, %.thread.i.i.i.i.i.i.i ], [ %i.bo, %.noexc16.i.i.i.i.i ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 30
  %i.bs = load i8, ptr %i.br, align 2, !range !128, !noalias !13194, !noundef !108
  %i.bt = load i64, ptr %i.bq, align 8, !range !127, !noalias !13194, !noundef !108
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 29
  %i.bv = load atomic i8, ptr %i.bu monotonic, align 1, !noalias !13194
  %.not.i4.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i4.i.i.i.i.i.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass11to_instance1__38known_class_to_instance_Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i.i.i
  %i.bw = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !13195
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i, label %bb.w, !prof !112

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13189

bb.x:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass11to_instance1__38known_class_to_instance_Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i.i.i
  %i.by = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bq)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13189

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.0.0.i5.i.i.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.w ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.v ], [ %i.by, %bb.x ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 5 uses
  store i64 -1, ptr %i.bz, align 8, !noalias !13200
  call void @llvm.experimental.noalias.scope.decl(metadata !13201)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !13201, !noalias !13192, !noundef !108 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !13201, !noalias !13192, !nonnull !108, !noundef !108
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !13201, !noalias !13192, !noundef !108 ; 2 uses
  %.not.i15.i.i.i.i.i.i.i = icmp ugt i64 %i.cb, %i.cf
  br i1 %.not.i15.i.i.i.i.i.i.i, label %bb.y, label %bb.z, !prof !129

bb.y:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cb, i64 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #42
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !13194

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i
  %.not2.i.i.i.i.i.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not2.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr [152 x i8], ptr %i.cd, i64 %i.cb
  %i.ch = getelementptr i8, ptr %i.cg, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13202
  store i32 %i.t, ptr %i.a, align 4, !noalias !13202
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !13202
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !13202
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ch, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bs, i64 noundef %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !13194

.noexc16.i.i.i.i.i.i.i:                           ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13202
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !noalias !13192
  %i.ci = add i64 %.pre.i.i.i.i.i.i.i, 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load i64, ptr %i.bz, align 8, !noalias !13192, !noundef !108
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.bz, align 8, !noalias !13192
  br label %.body.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass11to_instance1__38known_class_to_instance_Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i.i.i, %bb.o, %bb.x, %bb.w, %.noexc14.i.i.i.i.i, %.noexc13.i.i.i.i.i, %bb.u, %bb.n, %bb.m, %.noexc9.i.i.i.i.i, %.noexc6.i.i.i.i.i, %bb.l, %bb.k, %.noexc.i.i.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i.i.i
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.cj, %bb.ab ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECsoTR8nlGN3X_18ty_python_semantic(ptr %.sroa.0.0.i.i.i.i.i.i) #41
          to label %bb.ag unwind label %bb.af, !noalias !13189

bb.ac:                                            ; preds = %.noexc16.i.i.i.i.i.i.i, %bb.z
  %i.cm = phi i64 [ %i.ci, %.noexc16.i.i.i.i.i.i.i ], [ 0, %bb.z ]
  store i64 %i.cm, ptr %i.bz, align 8, !noalias !13192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13191
  %.sroa.03.0.copyload.i.i = load i32, ptr %i.bp, align 8, !noalias !13203 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx.i.i, i64 12, i1 false), !noalias !13204
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB21_2db2DbEL_NCNvNvMNtNtB1Z_5class5knownNtB38_10KnownClass11to_instance23known_class_to_instance0E0B1X_EB21_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !13187, !noundef !108 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !13187 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !13187
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not3.i.i.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB21_2db2DbEL_NCNvNvMNtNtB1Z_5class5knownNtB38_10KnownClass11to_instance23known_class_to_instance0E0B1X_EB21_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !108, !noalias !13189, !nonnull !108
  %i.cs = call noundef nonnull align 8 ptr %i.cr(ptr noundef nonnull %i.cn), !noalias !13189, !inline_history !13180
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cs), !noalias !13189
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB21_2db2DbEL_NCNvNvMNtNtB1Z_5class5knownNtB38_10KnownClass11to_instance23known_class_to_instance0E0B1X_EB21_.exit.i.i

bb.af:                                            ; preds = %.body.i.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !13189
  unreachable

bb.ag:                                            ; preds = %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB21_2db2DbEL_NCNvNvMNtNtB1Z_5class5knownNtB38_10KnownClass11to_instance23known_class_to_instance0E0B1X_EB21_.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.cu = icmp eq i32 %.sroa.03.0.copyload.i.i, -1
  br i1 %i.cu, label %bb.ah, label %_RNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB4_10KnownClass11to_instance23known_class_to_instance.exit, !prof !113

bb.ah:                                            ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB21_2db2DbEL_NCNvNvMNtNtB1Z_5class5knownNtB38_10KnownClass11to_instance23known_class_to_instance0E0B1X_EB21_.exit.i.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #42, !noalias !13204
  unreachable

_RNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB4_10KnownClass11to_instance23known_class_to_instance.exit: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB21_2db2DbEL_NCNvNvMNtNtB1Z_5class5knownNtB38_10KnownClass11to_instance23known_class_to_instance0E0B1X_EB21_.exit.i.i
  store i32 %.sroa.03.0.copyload.i.i, ptr %0, align 4, !alias.scope !13205
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i.i, i64 12, i1 false), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of(i8 noundef range(i8 0, 108) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr nofree noundef nonnull align 4 captures(none) %3, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !13214 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13215)
  %i.b = load i32, ptr %i.a, align 4, !range !110, !alias.scope !13215, !noundef !108
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB18_5known21KnownClassLookupErrorE9is_ok_andNCNvMB2y_NtB2y_10KnownClass14is_subclass_of0EB1c_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !13215, !noundef !108 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB18_5known21KnownClassLookupErrorE9is_ok_andNCNvMB2y_NtB2y_10KnownClass14is_subclass_of0EB1c_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !13215
  %i.g = tail call noundef zeroext i1 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14is_subclass_of(i32 noundef range(i32 1, 0) %i.d, i32 noundef %i.f, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef 0, i32 undef, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4), !noalias !13216
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB18_5known21KnownClassLookupErrorE9is_ok_andNCNvMB2y_NtB2y_10KnownClass14is_subclass_of0EB1c_.exit

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB18_5known21KnownClassLookupErrorE9is_ok_andNCNvMB2y_NtB2y_10KnownClass14is_subclass_of0EB1c_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14to_subclass_of(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 8)) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4) unnamed_addr #1 !guid !13226 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 8 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 8 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13228
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !13227
  %i.f = load i32, ptr %i.a, align 4, !range !110, !noalias !13228, !noundef !108 ; 3 uses
  %.not.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i32 %i.f, 38
  tail call void @llvm.assume(i1 %i.g)
  %5 = icmp eq i32 %i.f, 39
  br i1 %5, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13228
  br label %bb.d

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load <2 x i32>, ptr %i.h, align 4, !noalias !13228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13228
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.k = load <2 x i32>, ptr %i.j, align 4, !noalias !13228
  %i.l = load i32, ptr %i.j, align 4, !noalias !13228, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13228
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i
  %i.m = phi <2 x i32> [ %i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i ], [ %i.k, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i ]
  store i32 15, ptr %i.c, align 4, !alias.scope !13227
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %.sroa.44.0..sroa_idx.i, align 4, !alias.scope !13227
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x i32> %i.m, ptr %.sroa.55.0..sroa_idx.i, align 4, !alias.scope !13227
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit

bb.d:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.n, align 4, !alias.scope !13229
  store i32 4, ptr %i.c, align 4, !alias.scope !13229
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit: ; preds = %bb.c, %bb.d
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13to_class_type(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = load i32, ptr %i.d, align 4, !range !107, !noundef !108
  %.not = icmp eq i32 %i.o, -2
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB3_14SubclassOfType4fromNtNtB5_5class9ClassTypeEB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 1, ptr %0, align 4, !alias.scope !13230
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.42.0..sroa_idx.i, align 4, !alias.scope !13230
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 0, 39) i8 @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16canonical_module(i8 noundef range(i8 0, 108) %0, i8 noundef %1, i8 noundef %2) unnamed_addr #5 !guid !13231 {
bb.a:
  switch i8 %0, label %default.unreachable11 [
    i8 0, label %bb.y
    i8 1, label %bb.y
    i8 2, label %bb.y
    i8 3, label %bb.y
    i8 4, label %bb.y
    i8 5, label %bb.y
    i8 6, label %bb.y
    i8 7, label %bb.y
    i8 8, label %bb.y
    i8 9, label %bb.y
    i8 10, label %bb.y
    i8 11, label %bb.y
    i8 12, label %bb.y
    i8 13, label %bb.y
    i8 14, label %bb.y
    i8 15, label %bb.y
    i8 16, label %bb.y
    i8 17, label %bb.y
    i8 18, label %bb.y
    i8 19, label %bb.y
    i8 20, label %bb.y
    i8 21, label %bb.y
    i8 22, label %bb.y
    i8 23, label %bb.y
    i8 24, label %bb.y
    i8 25, label %bb.y
    i8 26, label %bb.y
    i8 27, label %bb.b
    i8 28, label %bb.b
    i8 29, label %bb.b
    i8 30, label %bb.b
    i8 31, label %bb.b
    i8 32, label %bb.b
    i8 33, label %bb.b
    i8 34, label %bb.b
    i8 35, label %bb.b
    i8 36, label %bb.b
    i8 37, label %bb.c
    i8 38, label %bb.d
    i8 39, label %bb.d
    i8 40, label %bb.d
    i8 41, label %bb.d
    i8 42, label %bb.d
    i8 43, label %bb.d
    i8 44, label %bb.d
    i8 45, label %bb.d
    i8 46, label %bb.d
    i8 47, label %bb.d
    i8 48, label %bb.d
    i8 49, label %bb.d
    i8 50, label %bb.d
    i8 51, label %bb.e
    i8 52, label %bb.e
    i8 53, label %bb.f
    i8 54, label %bb.f
    i8 55, label %bb.f
    i8 56, label %bb.g
    i8 57, label %bb.f
    i8 58, label %bb.f
    i8 59, label %bb.f
    i8 60, label %bb.f
    i8 61, label %bb.g
    i8 62, label %bb.g
    i8 63, label %bb.g
    i8 64, label %bb.f
    i8 65, label %bb.h
    i8 66, label %bb.g
    i8 67, label %bb.g
    i8 68, label %bb.i
    i8 69, label %bb.g
    i8 70, label %bb.f
    i8 71, label %bb.f
    i8 72, label %bb.f
    i8 73, label %bb.f
    i8 74, label %bb.f
    i8 75, label %bb.f
    i8 76, label %bb.f
    i8 77, label %bb.f
    i8 78, label %bb.g
    i8 79, label %bb.g
    i8 80, label %bb.j
    i8 81, label %bb.k
    i8 82, label %bb.k
    i8 83, label %bb.k
    i8 84, label %bb.k
    i8 85, label %bb.k
    i8 86, label %bb.l
    i8 87, label %bb.m
    i8 88, label %bb.m
    i8 89, label %bb.n
    i8 90, label %bb.o
    i8 91, label %bb.n
    i8 92, label %bb.p
    i8 93, label %bb.q
    i8 94, label %bb.r
    i8 95, label %bb.s
    i8 96, label %bb.s
    i8 97, label %bb.s
    i8 98, label %bb.s
    i8 99, label %bb.s
    i8 100, label %bb.s
    i8 101, label %bb.s
    i8 102, label %bb.s
    i8 103, label %bb.t
    i8 104, label %bb.u
    i8 105, label %bb.v
    i8 106, label %bb.w
    i8 107, label %bb.x
  ]

default.unreachable11:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  br label %bb.y

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.y

bb.e:                                             ; preds = %bb.a, %bb.a
  br label %bb.y

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.y

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.y

bb.h:                                             ; preds = %bb.a
  %i.a = icmp eq i8 %1, 3
  %i.b = icmp ugt i8 %1, 2
  %i.c = icmp ugt i8 %2, 10
  %spec.select = select i1 %i.a, i1 %i.c, i1 %i.b
  %spec.select8 = select i1 %spec.select, i8 5, i8 4
  br label %bb.y

bb.i:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 3
  %i.e = icmp ugt i8 %1, 2
  %i.f = icmp ugt i8 %2, 12
  %spec.select6 = select i1 %i.d, i1 %i.f, i1 %i.e
  %spec.select9 = select i1 %spec.select6, i8 5, i8 4
  br label %bb.y

bb.j:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %1, 3
  %i.h = icmp ugt i8 %1, 2
  %i.i = icmp ugt i8 %2, 14
  %spec.select7 = select i1 %i.g, i1 %i.i, i1 %i.h
  %spec.select10 = select i1 %spec.select7, i8 0, i8 4
  br label %bb.y

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.y

bb.l:                                             ; preds = %bb.a
  br label %bb.y

bb.m:                                             ; preds = %bb.a, %bb.a
  br label %bb.y

bb.n:                                             ; preds = %bb.a, %bb.a
  br label %bb.y

bb.o:                                             ; preds = %bb.a
  br label %bb.y

bb.p:                                             ; preds = %bb.a
  br label %bb.y

bb.q:                                             ; preds = %bb.a
  br label %bb.y

bb.r:                                             ; preds = %bb.a
  br label %bb.y

bb.s:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.y

bb.t:                                             ; preds = %bb.a
  br label %bb.y

bb.u:                                             ; preds = %bb.a
  br label %bb.y

bb.v:                                             ; preds = %bb.a
  br label %bb.y

bb.w:                                             ; preds = %bb.a
  br label %bb.y

bb.x:                                             ; preds = %bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 38, %bb.x ], [ 1, %bb.b ], [ 14, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 0, %bb.a ], [ 0, %bb.a ], [ %spec.select10, %bb.j ], [ %spec.select8, %bb.h ], [ 5, %bb.f ], [ 4, %bb.g ], [ 0, %bb.a ], [ %spec.select9, %bb.i ], [ 17, %bb.k ], [ 6, %bb.l ], [ 15, %bb.m ], [ 23, %bb.o ], [ 22, %bb.n ], [ 21, %bb.p ], [ 9, %bb.q ], [ 16, %bb.r ], [ 24, %bb.s ], [ 35, %bb.t ], [ 37, %bb.u ], [ 32, %bb.v ], [ 36, %bb.w ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 8)) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr nofree noundef nonnull align 4 captures(none) %4) unnamed_addr #1 !guid !13236 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13237
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4)
  %i.b = load i32, ptr %i.a, align 4, !range !110, !noalias !13237, !noundef !108 ; 3 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %i.b, 38
  tail call void @llvm.assume(i1 %i.c)
  %5 = icmp eq i32 %i.b, 39
  br i1 %5, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13237
  br label %bb.d

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load <2 x i32>, ptr %i.d, align 4, !noalias !13237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13237
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = load <2 x i32>, ptr %i.f, align 4, !noalias !13237
  %i.h = load i32, ptr %i.f, align 4, !noalias !13237, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13237
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit
  %i.i = phi <2 x i32> [ %i.e, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10 ], [ %i.g, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit ]
  store i32 15, ptr %0, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.44.0..sroa_idx, align 4
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.i, ptr %.sroa.55.0..sroa_idx, align 4
  br label %bb.e

bb.d:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.j, align 4, !alias.scope !13238
  store i32 4, ptr %0, align 4, !alias.scope !13238
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16when_subclass_of(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr nofree noundef nonnull align 4 captures(none) %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %5, ptr noundef nonnull align 8 %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !13251 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13252
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !13253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13254)
  %i.b = load i32, ptr %i.a, align 4, !range !110, !alias.scope !13254, !noalias !13252, !noundef !108
  %.not.i.i = icmp eq i32 %i.b, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !13254, !noalias !13252, !noundef !108 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of.exit.thread, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of.exit

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of.exit.thread: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13252
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !13254, !noalias !13252
  %i.g = tail call noundef zeroext i1 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14is_subclass_of(i32 noundef range(i32 1, 0) %i.d, i32 noundef %i.f, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i32 noundef 0, i32 undef, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %5), !noalias !13255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13252
  %spec.select = select i1 %i.g, i32 -1, i32 -2
  br label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of.exit, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of.exit.thread
  %i.h = phi i32 [ -2, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of.exit.thread ], [ %spec.select, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14is_subclass_of.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !alias.scope !13256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.j, align 4, !alias.scope !13256
  store ptr %6, ptr %0, align 8, !alias.scope !13256
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass19to_instance_unknown(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 8)) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #1 !guid !13264 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 10 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13265
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.b, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4)
  %i.d = load i32, ptr %i.b, align 4, !range !110, !noalias !13265, !noundef !108 ; 3 uses
  %.not.i = icmp eq i32 %i.d, -1
  br i1 %.not.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i32 %i.d, 38
  tail call void @llvm.assume(i1 %i.e)
  %6 = icmp eq i32 %i.d, 39
  br i1 %6, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread6, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13265
  br label %bb.d

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread6: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4, !range !111, !noalias !13265, !noundef !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 4, !noalias !13265, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13265
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noalias !13265, !noundef !108 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noalias !13265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13265
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread6, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit
  %.sroa.0.0.i11 = phi i32 [ %i.g, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread6 ], [ %i.k, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit ]
  %.sroa.4.0.i10 = phi i32 [ %i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread6 ], [ %i.m, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13266
  call void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral22unknown_specialization(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, i32 noundef range(i32 1, 0) %.sroa.0.0.i11, i32 noundef %.sroa.4.0.i10, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !13266
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type8instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.n, align 4, !alias.scope !13267
  store i32 4, ptr %0, align 4, !alias.scope !13267
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(20) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr nofree noundef nonnull align 4 captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !13315 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.4.i.i = alloca [16 x i8], align 4        ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %.sroa.03.0.copyload.i = load i32, ptr %4, align 4, !noalias !13316
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !13316 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !13316 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i, label %bb.b [
    i32 0, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ], !prof !148

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = tail call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.pn.i = phi { i32, i32 } [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.0.1.i = extractvalue { i32, i32 } %.pn.i, 0 ; 2 uses
  %.sroa.6.1.i = extractvalue { i32, i32 } %.pn.i, 1 ; 2 uses
  store i32 0, ptr %4, align 4, !noalias !13316
  store i32 %.sroa.0.1.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !13316
  store i32 %.sroa.6.1.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !13316
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit: ; preds = %bb.a, %bb.f
  %.pre-phi7 = phi i32 [ %.sroa.6.1.i, %bb.f ], [ %.sroa.9.0.copyload.i, %bb.a ]
  %.pre-phi = phi i32 [ %.sroa.0.1.i, %bb.f ], [ %.sroa.5.0.copyload.i, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.m = tail call { ptr, ptr } %.val(ptr noundef nonnull %2), !inline_history !3 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known18KnownClassArgumentEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known1__NtB9_18KnownClassArgument10ingredient5CACHE, ptr noundef nonnull align 8 %i.n)
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 %1, ptr %i.q, align 4
  store i32 %.pre-phi, ptr %i.h, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %.pre-phi7, ptr %i.r, align 4
  %i.s = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known18KnownClassArgumentE9intern_idINtNvBZ_1__9StructKeyNtBZ_10KnownClassNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramENCINvMs9_B2s_BX_3newDNtNtB15_2db2DbEL_B2K_B31_E0EB15_(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 8 %i.p, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.h) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.t = extractvalue { i32, i32 } %i.s, 0        ; 4 uses
  %i.u = extractvalue { i32, i32 } %i.s, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13317)
  call void @llvm.experimental.noalias.scope.decl(metadata !13318)
  call void @llvm.experimental.noalias.scope.decl(metadata !13319)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.v = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs45bxiIjzMqg_5salsa6attach8ATTACHED0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !13318, !noalias !13320
  %i.x = call { ptr, ptr } %.val.i.i.i.i(ptr noundef nonnull %2), !noalias !13321, !inline_history !13285 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.x, 0        ; 3 uses
  %i.z = extractvalue { ptr, ptr } %i.x, 1        ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !noalias !13322, !noundef !108 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13322
  %i.ab = load <2 x ptr>, ptr %i.v, align 8, !noalias !13322
  store <2 x ptr> %i.ab, ptr %i.g, align 16, !noalias !13322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13322
  store ptr %i.y, ptr %i.f, align 8, !noalias !13322
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.z, ptr %i.ac, align 8, !noalias !13322
  %i.ad = icmp eq ptr %i.aa, %i.y
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !112

bb.h:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.v, align 8, !noalias !13322
  store ptr %i.z, ptr %i.ae, align 8, !noalias !13322
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13322
  store ptr %i.g, ptr %i.e, align 8, !noalias !13322
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !13322
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.af, align 8, !noalias !13322
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !13322
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @563, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #42, !noalias !13323
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13322
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i.i.i: ; preds = %bb.j, %bb.h
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ null, %bb.j ], [ %i.v, %bb.h ] ; 5 uses
  %i.ag = invoke { ptr, ptr } %.val(ptr noundef nonnull %2)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13323, !inline_history !13288 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 9 uses
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1      ; 8 uses
  %i.aj = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB1Q_10KnownClass20lookup_class_literal1__43known_class_to_class_literal_Configuration_EE13get_or_createNtB1N_28known_class_to_class_literalKj0_EB1W_(ptr noundef nonnull align 4 @_RNvNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB6_10KnownClass20lookup_class_literal1__38known_class_to_class_literal_FN_CACHE_, ptr noundef nonnull align 8 %i.ah)
          to label %.noexc4.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13323 ; 6 uses

.noexc4.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 520
  %i.al = load atomic i32, ptr %i.ak acquire, align 8, !noalias !13324
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_RNvMs2_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass20lookup_class_literal1__NtB7_28known_class_to_class_literal14fn_ingredient_.exit.i.i.i.i.i.i, label %bb.k, !prof !112

bb.k:                                             ; preds = %.noexc4.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMNtNtNtB1N_5types5class5knownNtB3e_10KnownClass20lookup_class_literal1__NtB39_43known_class_to_class_literal_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.an, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
          to label %_RNvMs2_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass20lookup_class_literal1__NtB7_28known_class_to_class_literal14fn_ingredient_.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13323

_RNvMs2_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass20lookup_class_literal1__NtB7_28known_class_to_class_literal14fn_ingredient_.exit.i.i.i.i.i.i: ; preds = %bb.k, %.noexc4.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13325
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 1352 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !13326, !noundef !108
  %.not.i9.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i9.i.i.i.i.i.i.i, label %.noexc6.i.i.i.i.i, label %bb.l, !prof !112

bb.l:                                             ; preds = %_RNvMs2_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass20lookup_class_literal1__NtB7_28known_class_to_class_literal14fn_ingredient_.exit.i.i.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @570)
          to label %.noexc6.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13323

.noexc6.i.i.i.i.i:                                ; preds = %bb.l, %_RNvMs2_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass20lookup_class_literal1__NtB7_28known_class_to_class_literal14fn_ingredient_.exit.i.i.i.i.i.i
  %i.aq = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13323

.noexc7.i.i.i.i.i:                                ; preds = %.noexc6.i.i.i.i.i
  br i1 %i.aq, label %bb.m, label %.noexc9.i.i.i.i.i, !prof !113

.noexc9.i.i.i.i.i:                                ; preds = %bb.m, %.noexc7.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 136 ; 3 uses
  %i.as = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ar)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13323

.noexc8.i.i.i.i.i:                                ; preds = %.noexc9.i.i.i.i.i
  br i1 %i.as, label %bb.n, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i.i.i, !prof !113

bb.m:                                             ; preds = %.noexc7.i.i.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13323

bb.n:                                             ; preds = %.noexc8.i.i.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.ai)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13323

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc8.i.i.i.i.i
  %i.at = getelementptr i8, ptr %i.aj, i64 576    ; 2 uses
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.at, align 8, !noalias !13326, !noundef !108
  %i.au = getelementptr i8, ptr %i.aj, i64 580
  %.val6.i.i.i.i.i.i.i = load i32, ptr %i.au, align 4, !alias.scope !13327, !noalias !13326, !noundef !108 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.noexc16.i.i.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i.i.i
  %i.ax = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB17_10KnownClass20lookup_class_literal1__43known_class_to_class_literal_Configuration_E23get_memo_from_table_forB1d_(ptr noundef nonnull align 8 %i.aj, ptr noundef nonnull align 8 %i.ah, i32 noundef range(i32 1, 0) %i.t, i32 noundef %i.u, i32 noundef %.val6.i.i.i.i.i.i.i)
          to label %.noexc11.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13323 ; 11 uses

.noexc11.i.i.i.i.i:                               ; preds = %bb.o
  %.not.i2.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i2.i.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB18_10KnownClass20lookup_class_literal1__43known_class_to_class_literal_Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc11.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass22try_from_file_and_name:bb.a
    i8 59, label %.split13.i.us269
    i8 60, label %.split13.i.us269
    i8 61, label %.split13.i.us269
    i8 62, label %.backedge.i.us270
    i8 63, label %.backedge.i.us270
    i8 64, label %.backedge.i.us270
    i8 65, label %.split13.i.us269
    i8 66, label %.split13.i.us269
    i8 67, label %.backedge.i.us270
    i8 68, label %.backedge.i.us270
    i8 69, label %.backedge.i.us270
    i8 70, label %.backedge.i.us270
    i8 71, label %.backedge.i.us270
    i8 72, label %.backedge.i.us270
    i8 73, label %.backedge.i.us270
    i8 74, label %.backedge.i.us270
    i8 75, label %.backedge.i.us270
    i8 76, label %.backedge.i.us270
    i8 77, label %.backedge.i.us270
    i8 78, label %.split13.i.us269
    i8 79, label %.split13.i.us269
    i8 80, label %.split13.i.us269
    i8 81, label %.split13.i.us269
    i8 82, label %.split13.i.us269
    i8 83, label %.split13.i.us269
    i8 84, label %.split13.i.us269
    i8 85, label %.split13.i.us269
    i8 86, label %.split13.i.us269
    i8 87, label %.split13.i.us269
    i8 88, label %.split13.i.us269
    i8 89, label %.split13.i.us269
    i8 90, label %.split13.i.us269
    i8 91, label %.split13.i.us269
    i8 92, label %.split13.i.us269
    i8 93, label %.split13.i.us269
    i8 94, label %.split13.i.us269
    i8 95, label %.split13.i.us269
    i8 96, label %.split13.i.us269
    i8 97, label %.split13.i.us269
    i8 98, label %.split13.i.us269
    i8 99, label %.split13.i.us269
    i8 100, label %.split13.i.us269
    i8 101, label %.split13.i.us269
    i8 102, label %.split13.i.us269
    i8 103, label %.split13.i.us269
    i8 104, label %.split13.i.us269
    i8 105, label %.split13.i.us269
    i8 106, label %.split13.i.us269
    i8 107, label %.split13.i.us269
  ]

.split13.i.us269:                                 ; preds = %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264
  %i.aik = call fastcc noundef i8 @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16canonical_module(i8 noundef range(i8 0, 108) %.val9.i.us265, i8 noundef %i.ahf, i8 noundef %i.ahg)
  %i.ail = icmp eq i8 %i.aik, 4
  br i1 %i.ail, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit, label %.backedge.i.us270

.backedge.i.us270:                                ; preds = %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us264, %.split13.i.us269
  %i.aim = icmp eq ptr %i.aij, %i.ahh
  br i1 %i.aim, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit, label %.lr.ph.split.split.split.us264

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %.backedge.i
  %i.ain = phi ptr [ %i.aio, %.backedge.i ], [ %.sroa.01.0, %.lr.ph.split.split ] ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 1 ; 2 uses
  %.val9.i = load i8, ptr %i.ain, align 1, !range !184, !noalias !13347, !noundef !108 ; 3 uses
  switch i8 %.val9.i, label %default.unreachable [
    i8 0, label %.split13.i
    i8 1, label %.split13.i
    i8 2, label %.split13.i
    i8 3, label %.split13.i
    i8 4, label %.split13.i
    i8 5, label %.split13.i
    i8 6, label %.split13.i
    i8 7, label %.split13.i
    i8 8, label %.split13.i
    i8 9, label %.split13.i
    i8 10, label %.split13.i
    i8 11, label %.split13.i
    i8 12, label %.split13.i
    i8 13, label %.split13.i
    i8 14, label %.split13.i
    i8 15, label %.split13.i
    i8 16, label %.split13.i
    i8 17, label %.split13.i
    i8 18, label %.split13.i
    i8 19, label %.split13.i
    i8 20, label %.split13.i
    i8 21, label %.split13.i
    i8 22, label %.split13.i
    i8 23, label %.split13.i
    i8 24, label %.split13.i
    i8 25, label %.split13.i
    i8 26, label %.split13.i
    i8 27, label %.split13.i
    i8 28, label %.split13.i
    i8 29, label %.split13.i
    i8 30, label %.split13.i
    i8 31, label %.split13.i
    i8 32, label %.split13.i
    i8 33, label %.split13.i
    i8 34, label %.split13.i
    i8 35, label %.split13.i
    i8 36, label %.split13.i
    i8 37, label %.split13.i
    i8 38, label %.split13.i
    i8 39, label %.split13.i
    i8 40, label %.split13.i
    i8 41, label %.split13.i
    i8 42, label %.split13.i
    i8 43, label %.split13.i
    i8 44, label %.split13.i
    i8 45, label %.split13.i
    i8 46, label %.split13.i
    i8 47, label %.split13.i
    i8 48, label %.split13.i
    i8 49, label %.split13.i
    i8 50, label %.split13.i
    i8 51, label %.backedge.i
    i8 52, label %.split13.i
    i8 53, label %.split13.i
    i8 54, label %.split13.i
    i8 55, label %.split13.i
    i8 56, label %.backedge.i
    i8 57, label %.split13.i
    i8 58, label %.backedge.i
    i8 59, label %.split13.i
    i8 60, label %.split13.i
    i8 61, label %.split13.i
    i8 62, label %.backedge.i
    i8 63, label %.backedge.i
    i8 64, label %.backedge.i
    i8 65, label %.split13.i
    i8 66, label %.split13.i
    i8 67, label %.backedge.i
    i8 68, label %.backedge.i
    i8 69, label %.backedge.i
    i8 70, label %.backedge.i
    i8 71, label %.backedge.i
    i8 72, label %.backedge.i
    i8 73, label %.backedge.i
    i8 74, label %.backedge.i
    i8 75, label %.backedge.i
    i8 76, label %.backedge.i
    i8 77, label %.backedge.i
    i8 78, label %.split13.i
    i8 79, label %.split13.i
    i8 80, label %.split13.i
    i8 81, label %.split13.i
    i8 82, label %.split13.i
    i8 83, label %.split13.i
    i8 84, label %.split13.i
    i8 85, label %.split13.i
    i8 86, label %.split13.i
    i8 87, label %.split13.i
    i8 88, label %.split13.i
    i8 89, label %.split13.i
    i8 90, label %.split13.i
    i8 91, label %.split13.i
    i8 92, label %.split13.i
    i8 93, label %.split13.i
    i8 94, label %.split13.i
    i8 95, label %.split13.i
    i8 96, label %.split13.i
    i8 97, label %.split13.i
    i8 98, label %.split13.i
    i8 99, label %.split13.i
    i8 100, label %.split13.i
    i8 101, label %.split13.i
    i8 102, label %.split13.i
    i8 103, label %.split13.i
    i8 104, label %.split13.i
    i8 105, label %.split13.i
    i8 106, label %.split13.i
    i8 107, label %.split13.i
  ]

default.unreachable:                              ; preds = %.lr.ph.split.split.us.split.us280, %.lr.ph.split.split.us.split.us, %.lr.ph.split.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.split.split.us264, %.lr.ph.split.split.split.us, %.lr.ph.split.split.split
  unreachable

.split13.i:                                       ; preds = %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split
  %i.aip = call fastcc noundef i8 @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16canonical_module(i8 noundef range(i8 0, 108) %.val9.i, i8 noundef %i.ahf, i8 noundef %i.ahg)
  %i.aiq = icmp eq i8 %i.ahd, %i.aip
  br i1 %i.aiq, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.lr.ph.split.split.split, %.split13.i
  %i.air = icmp eq ptr %i.aio, %i.ahh
  br i1 %i.air, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit, label %.lr.ph.split.split.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass26to_specialized_subclass_of(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 8)) %0, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 576460752303423488) %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !13363 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13364
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef range(i8 0, 108) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !13365
  %i.f = load i32, ptr %i.a, align 4, !range !110, !noalias !13364, !noundef !108 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i32 %i.f, 38
  tail call void @llvm.assume(i1 %i.g)
  %7 = icmp eq i32 %i.f, 39
  br i1 %7, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13364
  br label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit.thread

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !111, !noalias !13364, !noundef !108
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 4, !noalias !13364, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13364
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !13364, !noundef !108 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noalias !13364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13364
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i
  %.sroa.0.0.i15.i.i = phi i32 [ %i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i ], [ %i.m, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i ] ; 2 uses
  %.sroa.4.0.i14.i.i = phi i32 [ %i.k, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i ], [ %i.o, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i ] ; 2 uses
  %i.p = tail call { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral15generic_context(i32 noundef %.sroa.0.0.i15.i.i, i32 noundef %.sroa.4.0.i14.i.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !13366 ; 2 uses
  %i.q = extractvalue { i32, i32 } %i.p, 0        ; 2 uses
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit.thread, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit

_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit: ; preds = %bb.c
  %i.r = extractvalue { i32, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13367
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %5, ptr %i.s, align 8, !alias.scope !13368, !noalias !13367
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %6, ptr %i.t, align 8, !alias.scope !13368, !noalias !13367
  store i64 -1, ptr %i.b, align 8, !alias.scope !13368, !noalias !13367
  call void @_RNvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB4_10KnownClass25to_specialized_class_type30to_specialized_class_type_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i8 noundef range(i8 0, 108) %1, i32 noundef %.sroa.0.0.i15.i.i, i32 noundef %.sroa.4.0.i14.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.q, i32 noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13367
  %.pr = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %.pr, -2
  br i1 %.not, label %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB3_14SubclassOfType4fromNtNtB5_5class9ClassTypeEB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.e

_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit.thread: ; preds = %bb.c, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 1, ptr %0, align 4, !alias.scope !13369
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.42.0..sroa_idx.i, align 4, !alias.scope !13369
  br label %bb.e

bb.e:                                             ; preds = %_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass25to_specialized_class_typeRSNtB7_4TypeEB9_.exit.thread, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass4name(i8 noundef range(i8 0, 108) %0, i8 noundef %1, i8 noundef %2) unnamed_addr #5 !guid !13370 {
bb.a:
  switch i8 %0, label %default.unreachable3 [
    i8 0, label %bb.cx
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.m
    i8 13, label %bb.n
    i8 14, label %bb.o
    i8 15, label %bb.p
    i8 16, label %bb.q
    i8 17, label %bb.r
    i8 18, label %bb.s
    i8 19, label %bb.t
    i8 20, label %bb.u
    i8 21, label %bb.v
    i8 22, label %bb.w
    i8 23, label %bb.x
    i8 24, label %bb.y
    i8 25, label %bb.z
    i8 26, label %bb.aa
    i8 27, label %bb.ab
    i8 28, label %bb.r
    i8 29, label %bb.ac
    i8 30, label %bb.ad
    i8 31, label %bb.ae
    i8 32, label %bb.af
    i8 33, label %bb.ag
    i8 34, label %bb.ah
    i8 35, label %bb.ai
    i8 36, label %bb.aj
    i8 37, label %bb.ak
    i8 38, label %bb.al
    i8 39, label %bb.am
    i8 40, label %bb.an
    i8 41, label %bb.ao
    i8 42, label %bb.ap
    i8 43, label %bb.aq
    i8 44, label %bb.ar
    i8 45, label %bb.as
    i8 46, label %bb.at
    i8 47, label %bb.au
    i8 48, label %bb.av
    i8 49, label %bb.aw
    i8 50, label %bb.ax
    i8 51, label %bb.ay
    i8 52, label %bb.az
    i8 53, label %bb.ba
    i8 54, label %bb.bb
    i8 55, label %bb.bc
    i8 56, label %bb.bd
    i8 57, label %bb.be
    i8 58, label %bb.bf
    i8 59, label %bb.bg
    i8 60, label %bb.bh
    i8 61, label %bb.bh
    i8 62, label %bb.bi
    i8 63, label %bb.bj
    i8 64, label %bb.bk
    i8 65, label %bb.bl
    i8 66, label %bb.bl
    i8 67, label %bb.bm
    i8 68, label %bb.bn
    i8 69, label %bb.bo
    i8 70, label %bb.bp
    i8 71, label %bb.bq
    i8 72, label %bb.br
    i8 73, label %bb.bs
    i8 74, label %bb.bt
    i8 75, label %bb.bu
    i8 76, label %bb.bv
    i8 77, label %bb.bw
    i8 78, label %bb.bg
    i8 79, label %bb.bx
    i8 80, label %bb.by
    i8 81, label %bb.bz
    i8 82, label %bb.ca
    i8 83, label %bb.cb
    i8 84, label %bb.cc
    i8 85, label %bb.cd
    i8 86, label %bb.ce
    i8 87, label %bb.cf
    i8 88, label %bb.cg
    i8 89, label %bb.ch
    i8 90, label %bb.ci
    i8 91, label %bb.cj
    i8 92, label %bb.ck
    i8 93, label %bb.cl
    i8 94, label %bb.cm
    i8 95, label %bb.cn
    i8 96, label %bb.co
    i8 97, label %bb.cp
    i8 98, label %bb.cq
    i8 99, label %bb.cr
    i8 100, label %bb.bt
    i8 101, label %bb.br
    i8 102, label %bb.bs
    i8 103, label %bb.cs
    i8 104, label %bb.ct
    i8 105, label %bb.cu
    i8 106, label %bb.cv
    i8 107, label %bb.cw
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.cx

bb.c:                                             ; preds = %bb.a
  br label %bb.cx

bb.d:                                             ; preds = %bb.a
  br label %bb.cx

bb.e:                                             ; preds = %bb.a
  br label %bb.cx

bb.f:                                             ; preds = %bb.a
  br label %bb.cx

bb.g:                                             ; preds = %bb.a
  br label %bb.cx

bb.h:                                             ; preds = %bb.a
  br label %bb.cx

bb.i:                                             ; preds = %bb.a
  br label %bb.cx

bb.j:                                             ; preds = %bb.a
  br label %bb.cx

bb.k:                                             ; preds = %bb.a
  br label %bb.cx

bb.l:                                             ; preds = %bb.a
  br label %bb.cx

bb.m:                                             ; preds = %bb.a
  br label %bb.cx

bb.n:                                             ; preds = %bb.a
  br label %bb.cx

bb.o:                                             ; preds = %bb.a
  br label %bb.cx

bb.p:                                             ; preds = %bb.a
  br label %bb.cx

bb.q:                                             ; preds = %bb.a
  br label %bb.cx

bb.r:                                             ; preds = %bb.a, %bb.a
  br label %bb.cx

bb.s:                                             ; preds = %bb.a
  br label %bb.cx

bb.t:                                             ; preds = %bb.a
  br label %bb.cx

bb.u:                                             ; preds = %bb.a
  br label %bb.cx

bb.v:                                             ; preds = %bb.a
  br label %bb.cx

bb.w:                                             ; preds = %bb.a
  br label %bb.cx

bb.x:                                             ; preds = %bb.a
  br label %bb.cx

bb.y:                                             ; preds = %bb.a
  br label %bb.cx

end_hunk_2
begin_hunk_3_@_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_13CallableTypes3new:bb.a
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !14983
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b
  %i.f = icmp eq i64 %.sink9.i, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !113

bb.b:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_EEB1h_.exit unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @581) #42
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_EEB1h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_13CallableTypes4iter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #11 !guid !14986 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !14987, !noundef !108 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !14987, !nonnull !108
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !14987
  %.sink10.i = select i1 %i.c, ptr %i.d, ptr %0   ; 2 uses
  %.sink9.i = select i1 %i.c, i64 %i.f, i64 %i.b
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i, i64 %.sink9.i
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sink10.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_13CallableTypes8as_slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #11 !guid !14990 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !14991, !noundef !108 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !14991, !nonnull !108
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !14991
  %.sink10.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink9.i = select i1 %i.c, i64 %i.f, i64 %i.b
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sink10.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sink9.i, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_13CallableTypes9into_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !14994 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !14995, !noundef !108 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !14995
  %.sink9.i = select i1 %i.e, i64 %i.g, i64 %i.d
  %i.h = icmp eq i64 %.sink9.i, 0
  br i1 %i.h, label %bb.b, label %bb.c, !prof !113

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @582) #42
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvXsM_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBO_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType13from_elementsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtB8_8callable12CallableTypej1_ENcNtNtB8_4Type8Callable0EB3w_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_EEB1h_.exit: ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.e:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_EEB1h_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 6) i8 @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8equalityNtB5_24KnownComparisonSemantics11of_instance(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !15028 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 8 uses
  %i.b = alloca [20 x i8], align 4                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 7 uses
  %i.e = alloca [36 x i8], align 4                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 4                ; 8 uses
  %i.h = alloca [36 x i8], align 4                ; 12 uses
  %i.i = alloca [36 x i8], align 4                ; 12 uses
  %i.j = alloca [36 x i8], align 4                ; 9 uses
  %i.k = alloca [16 x i8], align 4                ; 5 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13nominal_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.l, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.m = load i32, ptr %i.l, align 4, !range !107, !noundef !108
  %.not = icmp eq i32 %i.m, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12to_meta_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %..i = select i1 %4, ptr @579, ptr @569         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25member_lookup_with_policy(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.j, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %..i, i64 noundef 6, i8 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val68 = load i32, ptr %i.j, align 4, !range !120, !noundef !108 ; 3 uses
  %i.n = icmp eq i32 %.val68, -1
  br i1 %i.n, label %bb.e, label %bb.d

.sink.split:                                      ; preds = %bb.m, %bb.aa, %bb.e, %bb.z, %bb.i
  %.sroa.0.0.ph = phi i8 [ -1, %bb.i ], [ %.sroa.0.2, %bb.aa ], [ %i.ah, %bb.m ], [ 0, %bb.e ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i8 [ -1, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i8 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store <8 x i8> <i8 6, i8 1, i8 9, i8 2, i8 2, i8 3, i8 11, i8 4>, ptr %.sroa.654.0..sroa_idx, align 8
  %.sroa.1462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 15, ptr %.sroa.1462.0..sroa_idx, align 8
  %.sroa.1563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  store i8 5, ptr %.sroa.1563.0..sroa_idx, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.t = load <2 x i8>, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 30
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  %.val4.i.i.i = load i8, ptr %i.u, align 2, !range !123
  %i.w = icmp eq i32 %.val68, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.z = load <2 x i32>, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.val.i = load i8, ptr %i.aa, align 4           ; 2 uses
  br label %.noexc

bb.e:                                             ; preds = %bb.b
  br i1 %4, label %bb.n, label %.sink.split

.noexc:                                           ; preds = %bb.d, %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread
  %i.ac = phi i64 [ 0, %bb.d ], [ %i.ad, %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread ] ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.654.0..sroa_idx, i64 %i.ac ; 2 uses
  %i.af = load i8, ptr %i.ae, align 2, !range !184, !alias.scope !15029, !noundef !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !117, !alias.scope !15029, !noundef !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !15030)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15031
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.b, i8 noundef range(i8 0, 108) %i.af, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.ai = load i32, ptr %i.b, align 4, !range !110, !noalias !15031, !noundef !108 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ai, -1
  br i1 %.not.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aj = icmp ne i32 %i.ai, 38
  call void @llvm.assume(i1 %i.aj)
  %5 = icmp eq i32 %i.ai, 39
  br i1 %5, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15031
  br label %bb.h

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i: ; preds = %bb.f
  %i.ak = load <2 x i32>, ptr %i.o, align 4, !noalias !15031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15031
  br label %bb.g

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i: ; preds = %.noexc
  %i.al = load <2 x i32>, ptr %i.o, align 4, !noalias !15031
  %i.am = load i32, ptr %i.o, align 4, !noalias !15031, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15031
  %.not.i71 = icmp eq i32 %i.am, 0
  br i1 %.not.i71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i
  %i.an = phi <2 x i32> [ %i.ak, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i ], [ %i.al, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i ]
  store i32 15, ptr %i.d, align 4, !alias.scope !15030
  store i32 0, ptr %.sroa.44.0..sroa_idx.i, align 4, !alias.scope !15030
  store <2 x i32> %i.an, ptr %.sroa.55.0..sroa_idx.i, align 4, !alias.scope !15030
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit

bb.h:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i
  store i32 1, ptr %.sroa.44.0..sroa_idx.i, align 4, !alias.scope !15032
  store i32 4, ptr %i.d, align 4, !alias.scope !15032
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit

bb.i:                                             ; preds = %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit: ; preds = %bb.g, %bb.h
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25member_lookup_with_policy(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.e, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %..i, i64 noundef 6, i8 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ao = load i32, ptr %i.e, align 4, !range !120, !alias.scope !15033, !noundef !108 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit
  %i.aq = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.q)
  %i.ar = load <2 x i8>, ptr %i.s, align 4
  %i.as = icmp eq <2 x i8> %i.t, %i.ar            ; 2 uses
  %i.at = extractelement <2 x i1> %i.as, i64 0
  %or.cond = select i1 %i.aq, i1 %i.at, i1 false
  %i.au = extractelement <2 x i1> %i.as, i64 1
  %or.cond106.a = select i1 %or.cond, i1 %i.au, i1 false
  %.val5.i.i.i = load i8, ptr %i.v, align 2, !range !123
  %i.av = icmp eq i8 %.val4.i.i.i, %.val5.i.i.i
  %or.cond107 = select i1 %or.cond106.a, i1 %i.av, i1 false
  %i.aw = icmp eq i32 %.val68, %i.ao
  %or.cond123 = and i1 %or.cond107, %i.aw
  br i1 %or.cond123, label %bb.k, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.l, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = load <2 x i32>, ptr %i.x, align 4
  %i.ay = icmp eq <2 x i32> %i.z, %i.ax           ; 2 uses
  %i.az = extractelement <2 x i1> %i.ay, i64 0
  %i.ba = extractelement <2 x i1> %i.ay, i64 1
  %or.cond109.a = select i1 %i.ba, i1 %i.az, i1 false
  %.val1.i = load i8, ptr %i.ab, align 4
  %i.bb = icmp eq i8 %.val.i, %.val1.i
  %or.cond110 = select i1 %or.cond109.a, i1 %i.bb, i1 false
  br i1 %or.cond110, label %bb.m, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k
  %.val1.i.old = load i8, ptr %i.ab, align 4, !alias.scope !15034, !noundef !108
  %.old = icmp eq i8 %.val.i, %.val1.i.old
  br i1 %.old, label %bb.m, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.l, %bb.j, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit, %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not.i = icmp eq i64 %i.ad, 5
  br i1 %.not.i, label %bb.i, label %.noexc

bb.m:                                             ; preds = %bb.l, %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25member_lookup_with_policy(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.i, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @569, i64 noundef 6, i8 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !15035)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15036
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef range(i8 0, 108) 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2), !noalias !15035
  %i.bc = load i32, ptr %i.a, align 4, !range !110, !noalias !15036, !noundef !108 ; 3 uses
  %.not.i.i75 = icmp eq i32 %i.bc, -1
  br i1 %.not.i.i75, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i83, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = icmp ne i32 %i.bc, 38
  call void @llvm.assume(i1 %i.bd)
  %6 = icmp eq i32 %i.bc, 39
  br i1 %6, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i77, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i76

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i76: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15036
  br label %bb.q

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i77: ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !noalias !15036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15036
  br label %bb.p

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i83: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bh = load <2 x i32>, ptr %i.bg, align 4, !noalias !15036
  %i.bi = load i32, ptr %i.bg, align 4, !noalias !15036, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15036
  %.not.i84 = icmp eq i32 %i.bi, 0
  br i1 %.not.i84, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i83, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i77
  %i.bj = phi <2 x i32> [ %i.bf, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i77 ], [ %i.bh, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i83 ]
  store i32 15, ptr %i.g, align 4, !alias.scope !15035
  %.sroa.44.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %.sroa.44.0..sroa_idx.i80, align 4, !alias.scope !15035
  %.sroa.55.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store <2 x i32> %i.bj, ptr %.sroa.55.0..sroa_idx.i81, align 4, !alias.scope !15035
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit85

bb.q:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i83, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i76
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.bk, align 4, !alias.scope !15037
  store i32 4, ptr %i.g, align 4, !alias.scope !15037
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit85

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit85: ; preds = %bb.p, %bb.q
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25member_lookup_with_policy(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.h, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @569, i64 noundef 6, i8 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !15038)
  call void @llvm.experimental.noalias.scope.decl(metadata !15039)
  call void @llvm.experimental.noalias.scope.decl(metadata !15040)
  call void @llvm.experimental.noalias.scope.decl(metadata !15041)
  %i.bl = load i32, ptr %i.i, align 4, !range !120, !alias.scope !15042, !noundef !108 ; 3 uses
  %i.bm = icmp eq i32 %i.bl, -1                   ; 3 uses
  %i.bn = load i32, ptr %i.h, align 4, !range !120, !alias.scope !15043, !noundef !108 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, -1                   ; 2 uses
  %i.bp = xor i1 %i.bm, %i.bo
  br i1 %i.bp, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98.thread, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit85
  %or.cond.i.i86 = or i1 %i.bm, %i.bo
  br i1 %or.cond.i.i86, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !15044)
  call void @llvm.experimental.noalias.scope.decl(metadata !15045)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.bs = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bq, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.br)
  br i1 %i.bs, label %bb.t, label %.sink.split124

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.val.i.i.i88 = load i8, ptr %i.bt, align 4, !range !123, !alias.scope !15046, !noundef !108
  %.val1.i.i.i89 = load i8, ptr %i.bu, align 4, !range !123, !alias.scope !15047, !noundef !108
  %i.bv = icmp eq i8 %.val.i.i.i88, %.val1.i.i.i89
  br i1 %i.bv, label %bb.u, label %.sink.split124

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 29
  %.val2.i.i.i90 = load i8, ptr %i.bw, align 1, !range !123, !alias.scope !15046, !noundef !108
  %.val3.i.i.i91 = load i8, ptr %i.bx, align 1, !range !123, !alias.scope !15047, !noundef !108
  %i.by = icmp eq i8 %.val2.i.i.i90, %.val3.i.i.i91
  br i1 %i.by, label %bb.v, label %.sink.split124

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 30
  %.val4.i.i.i92 = load i8, ptr %i.bz, align 2, !range !123, !alias.scope !15046, !noundef !108
  %.val5.i.i.i93 = load i8, ptr %i.ca, align 2, !range !123, !alias.scope !15047, !noundef !108
  %i.cb = icmp eq i8 %.val4.i.i.i92, %.val5.i.i.i93
  br i1 %i.cb, label %bb.w, label %.sink.split124

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !15048)
  call void @llvm.experimental.noalias.scope.decl(metadata !15049)
  %i.cc = icmp eq i32 %i.bl, %i.bn
  br i1 %i.cc, label %bb.x, label %.sink.split124

bb.x:                                             ; preds = %bb.w
  %i.cd = icmp eq i32 %i.bl, 1
  br i1 %i.cd, label %bb.y, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !alias.scope !15050, !noundef !108
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !alias.scope !15051, !noundef !108
  %i.ci = icmp eq i32 %i.cf, %i.ch
  br i1 %i.ci, label %_RNvXs18_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_5PlaceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i97, label %.sink.split124

_RNvXs18_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_5PlaceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i97: ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !range !111, !alias.scope !15050, !noundef !108
  %i.cm = load i32, ptr %i.cj, align 4, !range !111, !alias.scope !15051, !noundef !108
  %i.cn = icmp eq i32 %i.cl, %i.cm
  br i1 %i.cn, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98, label %.sink.split124

_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98: ; preds = %bb.r, %bb.x, %_RNvXs18_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_5PlaceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i97
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val.i95 = load i8, ptr %i.co, align 4, !alias.scope !15038, !noundef !108
  %.val1.i96 = load i8, ptr %i.cp, align 4, !alias.scope !15039, !noundef !108
  %i.cq = icmp eq i8 %.val.i95, %.val1.i96
  br i1 %i.cq, label %.sink.split124, label %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98.thread

_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98.thread: ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit85, %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.bm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.sink.split

.sink.split124:                                   ; preds = %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98, %_RNvXs18_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_5PlaceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i97, %bb.s, %bb.v, %bb.u, %bb.t, %bb.w, %bb.y
  %.sroa.0.2.ph = phi i8 [ -1, %_RNvXs18_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_5PlaceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i97 ], [ -1, %bb.y ], [ -1, %bb.w ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.v ], [ -1, %bb.s ], [ 4, %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split124, %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98.thread
  %.sroa.0.2 = phi i8 [ -1, %_RNvXs1z_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit98.thread ], [ %.sroa.0.2.ph, %.sink.split124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 6) i8 @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8equalityNtB5_24KnownComparisonSemantics19of_type_with_policy(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(16) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #1 !guid !15059 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 11 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [12 x i8], align 4                ; 4 uses
  %i.k = alloca [16 x i8], align 4                ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 2 uses
  %i.m = alloca [1 x i8], align 1                 ; 2 uses
  %i.n = zext i1 %4 to i8
  store i8 %i.n, ptr %i.m, align 1
  %i.o = zext i1 %5 to i8
  store i8 %i.o, ptr %i.l, align 1
  %i.p = load i32, ptr %3, align 4, !range !166, !noundef !108 ; 3 uses
  %i.q = icmp ne i32 %i.p, 17
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i32 %i.p, -4
  %i.s = icmp samesign ugt i32 %i.p, 3
  %narrow = select i1 %i.s, i32 %i.r, i32 13
  switch i32 %narrow, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8equalityNtB5_24KnownComparisonSemantics10of_literal.exit [
    i32 14, label %bb.b
    i32 16, label %bb.c
    i32 17, label %bb.d
    i32 20, label %bb.e
    i32 21, label %bb.f
    i32 24, label %bb.g
    i32 30, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType5class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.t, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.u = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8is_final(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.f, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.u, label %bb.n, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load i8, ptr %i.v, align 4, !range !186, !noundef !108
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.y = load i8, ptr %i.x, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB4_15SpecialFormType17instance_fallback(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, i8 noundef %i.w, i8 %i.y, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.z = call fastcc noundef i8 @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8equalityNtB5_24KnownComparisonSemantics19of_type_with_policy(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.e, i1 noundef zeroext %4, i1 noundef zeroext %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8equalityNtB5_24KnownComparisonSemantics10of_literal.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instanceNtB5_17KnownInstanceType17instance_fallback(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.ab = call noundef i8 @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8equalityNtB5_24KnownComparisonSemantics11of_instance(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c, i1 noundef zeroext %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8equalityNtB5_24KnownComparisonSemantics10of_literal.exit

bb.e:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !range !111, !noundef !108 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !noundef !108 ; 2 uses
  %i.ag = tail call { i32, i32 } @_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType15enum_complement(i32 noundef %i.ad, i32 noundef %i.af, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2) ; 2 uses
  %i.ah = extractvalue { i32, i32 } %i.ag, 0      ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !range !111, !noundef !108
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !noundef !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMsY_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumsNtB5_18EnumComplementType10enum_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.j, i32 noundef %i.aj, i32 noundef %i.al, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  call void @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral23to_non_generic_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.j, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.am = call noundef i8 @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8equalityNtB5_24KnownComparisonSemantics11of_instance(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.k, i1 noundef zeroext %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8equalityNtB5_24KnownComparisonSemantics10of_literal.exit

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
end_hunk_3
begin_hunk_4_@_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs3_1__NtB7_9ClassTypeNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index:bb.a
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit12.i

bb.f:                                             ; preds = %bb.c
  %i.o = extractvalue { ptr, i64 } %i.k, 0        ; 4 uses
  %i.p = extractvalue { ptr, i64 } %i.k, 1        ; 3 uses
  %i.q = invoke { ptr, i64 } @_RNvXs7_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__NtB7_23DynamicTypedDictLiteralNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index(ptr noundef nonnull align 8 %0)
          to label %bb.i unwind label %bb.h       ; 2 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit13.i: ; preds = %bb.k, %bb.j, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.x, %bb.j ], [ %i.x, %bb.k ] ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit12.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit13.i
  %i.s = shl nuw nsw i64 %i.p, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef range(i64 1, 0) %i.s, i64 noundef 4) #43
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit12.i

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit13.i

bb.i:                                             ; preds = %bb.f
  %i.u = extractvalue { ptr, i64 } %i.q, 0        ; 4 uses
  %i.v = extractvalue { ptr, i64 } %i.q, 1        ; 3 uses
  %i.w = invoke { ptr, i64 } @_RNvXs7_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literals0_1__NtB7_18DynamicEnumLiteralNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index(ptr noundef nonnull align 8 %0)
          to label %_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs1_1__NtB7_12ClassLiteralNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index.exit unwind label %bb.j ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit13.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = shl nuw nsw i64 %i.v, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef range(i64 1, 0) %i.z, i64 noundef 4) #43
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit13.i

common.resume.sink.split:                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit11.i, %bb.l
  %.sink9 = phi i64 [ %i.ao, %bb.l ], [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit11.i ]
  %.sink8 = phi ptr [ %i.an, %bb.l ], [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit11.i ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %.pn.pn.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit11.i ]
  %i.aa = shl nuw nsw i64 %.sink9, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink8) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink8, i64 noundef range(i64 1, 0) %i.aa, i64 noundef 4) #43
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit11.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit11.i ], [ %i.aq, %bb.l ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs1_1__NtB7_12ClassLiteralNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index.exit: ; preds = %bb.i
  %i.ab = extractvalue { ptr, i64 } %i.w, 0
  %i.ac = extractvalue { ptr, i64 } %i.w, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.ad, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.j, ptr %i.af, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.o, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.p, ptr %i.ah, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.u, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.v, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ab, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.ac, ptr %i.al, align 8
  %i.am = call { ptr, i64 } @_RINvMs_NtCs45bxiIjzMqg_5salsa23memo_ingredient_indicesNtB5_17IngredientIndices5mergeABQ_j5_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 3 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1      ; 3 uses
  %i.ap = invoke { ptr, i64 } @_RNvXs7_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB7_12GenericAliasNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index(ptr noundef nonnull align 8 %0)
          to label %bb.m unwind label %bb.l       ; 2 uses

bb.l:                                             ; preds = %_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs1_1__NtB7_12ClassLiteralNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %common.resume, label %common.resume.sink.split

bb.m:                                             ; preds = %_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs1_1__NtB7_12ClassLiteralNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index.exit
  %i.as = extractvalue { ptr, i64 } %i.ap, 0
  %i.at = extractvalue { ptr, i64 } %i.ap, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ao, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.as, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.at, ptr %i.aw, align 8
  %i.ax = call { ptr, i64 } @_RINvMs_NtCs45bxiIjzMqg_5salsa23memo_ingredient_indicesNtB5_17IngredientIndices5mergeABQ_j2_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__INtB5_9StructKeyNtNtB9_10signatures17CallableSignatureNtB7_16CallableTypeKindNtB7_26CallableFunctionProvenanceEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1g_B1S_B2f_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 82)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !19811 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i8, ptr %i.a, align 8, !range !117, !noundef !108
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.d = load i8, ptr %i.c, align 1, !range !121, !noundef !108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %i.d, ptr %i.f, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__INtB5_9StructKeyRNtNtB9_10signatures17CallableSignatureNtB7_16CallableTypeKindNtB7_26CallableFunctionProvenanceEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1h_B1T_B2g_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !19812 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !108, !align !115, !noundef !108
  tail call void @_RNvXsj_NtCs45bxiIjzMqg_5salsa8internedRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures17CallableSignatureINtB5_6LookupBB_E10into_ownedBH_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !117, !noundef !108
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i8, ptr %i.d, align 1, !range !121, !noundef !108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %i.e, ptr %i.g, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known1__INtB5_9StructKeyNtB7_10KnownClassNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1l_B1C_EE10into_ownedBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1), (4, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !19813 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 4, !range !184, !noundef !108
  store i8 %i.b, ptr %0, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load <2 x i32>, ptr %1, align 4
  store <2 x i32> %i.d, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @_RNvXs0_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass11to_instance1__NtB5_38known_class_to_instance_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration12values_equal(ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #12 !guid !19814 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  ret i1 %i.a
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs0_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass11to_instance1__NtB5_38known_class_to_instance_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias nofree noundef readnone sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6) unnamed_addr #13 !guid !19815 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @856, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @878) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass11to_instance1__NtB5_38known_class_to_instance_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #1 !guid !19832 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 8 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 8 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19835
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !19834 ; 2 uses
  %i.h = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %1), !noalias !19835, !inline_history !19819 ; 2 uses
  %i.i = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known18KnownClassArgumentEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known1__NtB9_18KnownClassArgument10ingredient5CACHE, ptr noundef nonnull align 8 %i.h), !noalias !19835
  %i.j = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known18KnownClassArgumentE6fieldsB14_(ptr noundef nonnull align 8 %i.i, ptr noundef nonnull align 8 %i.h, i32 noundef range(i32 1, 0) %3, i32 noundef %4), !noalias !19835
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.f, align 4, !alias.scope !19836, !noalias !19835
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load <2 x i32>, ptr %i.k, align 4, !noalias !19835
  store <2 x i32> %i.l, ptr %.sroa.45.0..sroa_idx.i.i, align 4, !alias.scope !19836, !noalias !19835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19835
  %i.m = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %1), !noalias !19835, !inline_history !19822 ; 2 uses
  %i.n = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known18KnownClassArgumentEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known1__NtB9_18KnownClassArgument10ingredient5CACHE, ptr noundef nonnull align 8 %i.m), !noalias !19835
  %i.o = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known18KnownClassArgumentE6fieldsB14_(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 8 %i.m, i32 noundef range(i32 1, 0) %3, i32 noundef %4), !noalias !19835
  %i.p = load i8, ptr %i.o, align 4, !range !184, !noalias !19835, !noundef !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19838
  call fastcc void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20lookup_class_literal(ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.a, i8 noundef range(i8 0, 108) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %i.f), !noalias !19839
  %i.q = load i32, ptr %i.a, align 4, !range !110, !noalias !19838, !noundef !108 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.q, -1
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ne i32 %i.q, 38
  tail call void @llvm.assume(i1 %i.r)
  %5 = icmp eq i32 %i.q, 39
  br i1 %5, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19838
  br label %bb.d

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = load <2 x i32>, ptr %i.s, align 4, !noalias !19838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19838
  br label %bb.c

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.u, align 4, !noalias !19838
  %i.w = load i32, ptr %i.u, align 4, !noalias !19838, !noundef !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19838
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i
  %i.x = phi <2 x i32> [ %i.t, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread10.i.i ], [ %i.v, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i ]
  store i32 15, ptr %i.c, align 4, !alias.scope !19837, !noalias !19835
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %.sroa.44.0..sroa_idx.i.i, align 4, !alias.scope !19837, !noalias !19835
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x i32> %i.x, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !alias.scope !19837, !noalias !19835
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit.i

bb.d:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.i.i, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass20try_to_class_literal.exit.thread.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.y, align 4, !alias.scope !19840, !noalias !19835
  store i32 4, ptr %i.c, align 4, !alias.scope !19840, !noalias !19835
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit.i

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit.i: ; preds = %bb.d, %bb.c
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13to_class_type(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !19833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19835
  %i.z = load i32, ptr %i.d, align 4, !range !107, !noalias !19835, !noundef !108
  %.not.i = icmp eq i32 %i.z, -2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !19835
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type8instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %i.f, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.b), !noalias !19833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !19834
  br label %_RNvNvXs0_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBc_10KnownClass11to_instance1__NtB7_38known_class_to_instance_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

bb.f:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19835
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.aa, align 4, !alias.scope !19841
  store i32 4, ptr %0, align 4, !alias.scope !19841
  br label %_RNvNvXs0_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBc_10KnownClass11to_instance1__NtB7_38known_class_to_instance_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

_RNvNvXs0_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBc_10KnownClass11to_instance1__NtB7_38known_class_to_instance_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19835
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs0_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass11to_instance1__NtB5_38known_class_to_instance_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_size(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !19849 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i8, ptr %i.b, align 8, !range !121, !noalias !19850, !noundef !108
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit
    i8 1, label %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.thread2
    i8 2, label %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.thread
  ], !prof !122

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a
  %i.d = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtB1g_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE10initializeCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.a), !noalias !19850 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.thread2

_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.thread2: ; preds = %bb.a, %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0.i.i4 = phi ptr [ %i.d, %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.a, %bb.a ] ; 7 uses
  %i.f = load i64, ptr %.sroa.0.0.i.i4, align 8, !noalias !19851, !noundef !108
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e, !prof !112

bb.b:                                             ; preds = %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.thread2
  store i64 -1, ptr %.sroa.0.0.i.i4, align 8, !noalias !19851
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !19851, !noundef !108
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke { i64, ptr } @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtBY_7tracker15StandardTrackerEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) dereferenceable_or_null(48) %i.h)
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !19852

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.k = extractvalue { i64, ptr } %i.j, 0
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE0jE0jEB43_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = invoke noundef i64 @_RNvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0)
          to label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE0jE0jEB43_.exit unwind label %bb.f, !noalias !19852

bb.e:                                             ; preds = %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.thread2
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #42, !noalias !19851
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i64, ptr %.sroa.0.0.i.i4, align 8, !noalias !19853, !noundef !108
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %.sroa.0.0.i.i4, align 8, !noalias !19853
  resume { ptr, i32 } %i.m

_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %bb.a, %_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #42, !noalias !19854
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE0jE0jEB43_.exit: ; preds = %.noexc.i.i.i, %bb.d
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.k, %.noexc.i.i.i ], [ %i.l, %bb.d ]
  %i.p = load i64, ptr %.sroa.0.0.i.i4, align 8, !noalias !19853, !noundef !108
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %.sroa.0.0.i.i4, align 8, !noalias !19853
  %i.r = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.sroa.02.0.i.i.i.i, 1
  ret { i64, i64 } %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @_RNvXs0_NvNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtBa_10KnownClass20lookup_class_literal1__NtB5_43known_class_to_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration12values_equal(ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %1) unnamed_addr #12 !guid !19861 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19863)
  %i.a = load i32, ptr %0, align 4, !range !110, !alias.scope !19862, !noundef !108 ; 4 uses
  %i.b = icmp ne i32 %i.a, -1                     ; 2 uses
  %i.c = load i32, ptr %1, align 4, !range !110, !alias.scope !19863, !noundef !108 ; 4 uses
  %i.d = icmp eq i32 %i.c, -1                     ; 3 uses
  %not..i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB1a_5known21KnownClassLookupErrorENtNtB7_3cmp9PartialEq2eqB1e_.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19865)
  %i.f = icmp ne i32 %i.a, 38
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.a, -37
  %i.h = icmp samesign ugt i32 %i.a, 36
  %narrow.i.i = select i1 %i.h, i32 %i.g, i32 1   ; 2 uses
  %i.i = icmp ne i32 %i.c, 38
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i32 %i.c, -37
  %i.k = icmp samesign ugt i32 %i.c, 36
  %narrow2.i.i = select i1 %i.k, i32 %i.j, i32 1
  %i.l = icmp eq i32 %narrow.i.i, %narrow2.i.i
  br i1 %i.l, label %bb.d, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB1a_5known21KnownClassLookupErrorENtNtB7_3cmp9PartialEq2eqB1e_.exit

bb.d:                                             ; preds = %bb.c
  switch i32 %narrow.i.i, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i8, ptr %i.m, align 4, !range !123, !alias.scope !19866, !noundef !108
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 4, !range !123, !alias.scope !19867, !noundef !108
  %i.q = icmp eq i8 %i.n, %i.p
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB1a_5known21KnownClassLookupErrorENtNtB7_3cmp9PartialEq2eqB1e_.exit

bb.g:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i8, ptr %i.r, align 4, !range !123, !alias.scope !19866, !noundef !108
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i8, ptr %i.t, align 4, !range !123, !alias.scope !19867, !noundef !108
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB1a_5known21KnownClassLookupErrorENtNtB7_3cmp9PartialEq2eqB1e_.exit

bb.h:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i8, ptr %i.w, align 4, !range !123, !alias.scope !19866, !noundef !108
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i8, ptr %i.y, align 4, !range !123, !alias.scope !19867, !noundef !108
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.j, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB1a_5known21KnownClassLookupErrorENtNtB7_3cmp9PartialEq2eqB1e_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %1)
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB1a_5known21KnownClassLookupErrorENtNtB7_3cmp9PartialEq2eqB1e_.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load <2 x i32>, ptr %i.ad, align 4, !alias.scope !19866
  %i.af = load <2 x i32>, ptr %i.ac, align 4, !alias.scope !19867
  %i.ag = icmp eq <2 x i32> %i.ae, %i.af          ; 2 uses
  %i.ah = extractelement <2 x i1> %i.ag, i64 0
  %i.ai = extractelement <2 x i1> %i.ag, i64 1
  %.sroa.0.0.i.i.i = select i1 %i.ai, i1 %i.ah, i1 false
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB1a_5known21KnownClassLookupErrorENtNtB7_3cmp9PartialEq2eqB1e_.exit

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.aj, align 4, !alias.scope !19862, !noundef !108 ; 2 uses
  %.val3.i = load i32, ptr %i.ak, align 4, !alias.scope !19863 ; 2 uses
  %.not.i.i = icmp eq i32 %.val.i, 0              ; 2 uses
  %i.al = icmp eq i32 %.val3.i, 0                 ; 2 uses
  %brmerge.i.i = select i1 %.not.i.i, i1 true, i1 %i.al
  %.mux.i.i = select i1 %.not.i.i, i1 %i.al, i1 false
  br i1 %brmerge.i.i, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralENtNtB1a_5known21KnownClassLookupErrorENtNtB7_3cmp9PartialEq2eqB1e_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_4
