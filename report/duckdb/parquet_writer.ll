inline.NumInlined: 5305
inline.NumDeleted: 2879
begin_hunk_0
@_ZStL19piecewise_construct = internal constant %"struct.std::piecewise_construct_t" zeroinitializer, align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@switch.table._ZNK13duckdb_apache6thrift8protocol18TProtocolException4whatEv = private unnamed_addr constant [6 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], comdat($_ZNK13duckdb_apache6thrift8protocol18TProtocolException4whatEv), align 8
@switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb11MyTransportEE8getTTypeEa = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 2, i32 3, i32 6, i32 8, i32 10, i32 4, i32 11, i32 15, i32 14, i32 13, i32 12], comdat($_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb11MyTransportEE8getTTypeEa), align 4
@switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE8getTTypeEa = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 2, i32 3, i32 6, i32 8, i32 10, i32 4, i32 11, i32 15, i32 14, i32 13, i32 12], comdat($_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE8getTTypeEa), align 4

@_ZN6duckdb25ParquetWriteTransformDataC1ERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6duckdb25ParquetWriteTransformDataC2ERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE
@_ZN6duckdb13ParquetWriterC1ERNS_13ClientContextERNS_10FileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISC_EEENSB_ISA_Lb1ESaISA_EEEN14duckdb_parquet16CompressionCodec4typeENS_13ChildFieldIDsENS_13ShreddingTypeERKNSB_ISt4pairISA_SA_ELb1ESaISN_EEENS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEENS_12optional_idxEmbdlNS_14ParquetVersionENS_17GeoParquetVersionE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i64, i64, i1, double, i64, i8, i8), ptr @_ZN6duckdb13ParquetWriterC2ERNS_13ClientContextERNS_10FileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISC_EEENSB_ISA_Lb1ESaISA_EEEN14duckdb_parquet16CompressionCodec4typeENS_13ChildFieldIDsENS_13ShreddingTypeERKNSB_ISt4pairISA_SA_ELb1ESaISN_EEENS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEENS_12optional_idxEmbdlNS_14ParquetVersionENS_17GeoParquetVersionE
end_hunk_0
begin_hunk_1_@_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb11MyTransportEE8getTTypeEa:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.o = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb11MyTransportEE8getTTypeEa, i64 %i.o
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load

end_hunk_1
