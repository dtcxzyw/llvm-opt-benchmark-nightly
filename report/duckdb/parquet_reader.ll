inline.NumInlined: 4640
inline.NumDeleted: 2561
begin_hunk_0_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnReaderESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnReaderESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12ColumnReaderESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = sub i64 %i.d, %i.e
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ac
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ac
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
begin_hunk_1_@_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE17writeMessageBeginERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_12TMessageTypeEi:bb.a
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !1105
  call void @_ZN13duckdb_apache6thrift9transport10TTransport10write_virtEPKhj(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.a, i32 noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %4 = call noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE11writeBinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %5 = add i32 %.0.lcssa.i, %4
  %i.u = add i32 %5, 3
  ret i32 %i.u
}

end_hunk_1
begin_hunk_2_@_ZNSt5dequeIsSaIsEE17_M_reallocate_mapEmb:bb.a

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, %.sroa.speculated
  %i.am = add i64 %i.al, 2                        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIsSaIsEE15_M_allocate_mapEm.exit, !prof !268

end_hunk_2
begin_hunk_3_@_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE16readMessageBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_12TMessageTypeERi:bb.a
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %3, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %8 = call noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE10readBinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %9 = add i32 %i.z, %8
  %i.ac = add i32 %9, 2
  ret i32 %i.ac

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_3
