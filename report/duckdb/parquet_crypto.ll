inline.NumInlined: 2383
inline.NumDeleted: 1098
begin_hunk_0
@_ZTVN6duckdb19EncryptionTransportE = linkonce_odr hidden unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN6duckdb19EncryptionTransportE, ptr @_ZN6duckdb19EncryptionTransportD2Ev, ptr @_ZN6duckdb19EncryptionTransportD0Ev, ptr @_ZNK6duckdb19EncryptionTransport6isOpenEv, ptr @_ZN13duckdb_apache6thrift9transport10TTransport4peekEv, ptr @_ZN6duckdb19EncryptionTransport4openEv, ptr @_ZN6duckdb19EncryptionTransport5closeEv, ptr @_ZN13duckdb_apache6thrift9transport10TTransport9read_virtEPhj, ptr @_ZN13duckdb_apache6thrift9transport10TTransport12readAll_virtEPhj, ptr @_ZN13duckdb_apache6thrift9transport10TTransport7readEndEv, ptr @_ZN6duckdb19EncryptionTransport10write_virtEPKhj, ptr @_ZN13duckdb_apache6thrift9transport10TTransport8writeEndEv, ptr @_ZN13duckdb_apache6thrift9transport10TTransport5flushEv, ptr @_ZN13duckdb_apache6thrift9transport10TTransport11borrow_virtEPhPj, ptr @_ZN13duckdb_apache6thrift9transport10TTransport12consume_virtEj, ptr @_ZNK13duckdb_apache6thrift9transport10TTransport9getOriginB5cxx11Ev] }, comdat, align 8
@_ZTIN6duckdb19EncryptionTransportE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb19EncryptionTransportE, ptr @_ZTIN13duckdb_apache6thrift9transport10TTransportE }, comdat, align 8
@_ZTSN6duckdb19EncryptionTransportE = linkonce_odr hidden constant [31 x i8] c"N6duckdb19EncryptionTransportE\00", comdat, align 1
@switch.table._ZNK13duckdb_apache6thrift8protocol18TProtocolException4whatEv = private unnamed_addr constant [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], comdat($_ZNK13duckdb_apache6thrift8protocol18TProtocolException4whatEv), align 8
@switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19DecryptionTransportEE8getTTypeEa = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 2, i32 3, i32 6, i32 8, i32 10, i32 4, i32 11, i32 15, i32 14, i32 13, i32 12], comdat($_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19DecryptionTransportEE8getTTypeEa), align 4
@switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE8getTTypeEa = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 2, i32 3, i32 6, i32 8, i32 10, i32 4, i32 11, i32 15, i32 14, i32 13, i32 12], comdat($_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE8getTTypeEa), align 4
@switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19SimpleReadTransportEE8getTTypeEa = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 2, i32 3, i32 6, i32 8, i32 10, i32 4, i32 11, i32 15, i32 14, i32 13, i32 12], comdat($_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19SimpleReadTransportEE8getTTypeEa), align 4
@switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19EncryptionTransportEE8getTTypeEa = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 2, i32 3, i32 6, i32 8, i32 10, i32 4, i32 11, i32 15, i32 14, i32 13, i32 12], comdat($_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19EncryptionTransportEE8getTTypeEa), align 4

@_ZN6duckdb34ParquetAdditionalAuthenticatedDataC1ERNS_9AllocatorE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb34ParquetAdditionalAuthenticatedDataC2ERNS_9AllocatorE
@_ZN6duckdb34ParquetAdditionalAuthenticatedDataD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6duckdb34ParquetAdditionalAuthenticatedDataD2Ev
end_hunk_0
begin_hunk_1_@_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19DecryptionTransportEE8getTTypeEa:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.o = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19DecryptionTransportEE8getTTypeEa, i64 %i.o
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load

end_hunk_1
begin_hunk_2_@_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE8getTTypeEa:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.o = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE8getTTypeEa, i64 %i.o
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load

end_hunk_2
begin_hunk_3_@_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19SimpleReadTransportEE8getTTypeEa:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.o = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19SimpleReadTransportEE8getTTypeEa, i64 %i.o
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load

end_hunk_3
