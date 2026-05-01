inline.NumInlined: 3957
inline.NumDeleted: 1703
begin_hunk_0_@_ZN6duckdb32ParquetRowGroupMetadataProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE:bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %42, i64 56
  %i.ft = getelementptr inbounds nuw i8, ptr %42, i64 96 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %42, i64 128 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %42, i64 112
  %i.fx = getelementptr inbounds nuw i8, ptr %42, i64 80
  %i.fy = getelementptr inbounds nuw i8, ptr %42, i64 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb32ParquetRowGroupMetadataProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE:bb.a
_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i267: ; preds = %bb.bw, %bb.bu
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %42, align 8, !tbaa !208, !noalias !216
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.fu, align 8, !tbaa !208, !noalias !216
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16)>, ptr %i.fn, align 8, !tbaa !208, !noalias !216
  %i.hw = load ptr, ptr %i.ft, align 8, !tbaa !24, !noalias !216 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.fw
  br i1 %i.hx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i268
end_hunk_1
begin_hunk_2_@_ZN6duckdb28ParquetFileMetadataProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE:bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_2
begin_hunk_3_@_ZN6duckdb28ParquetFileMetadataProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE:bb.a
_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.at, %bb.ar
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %5, align 8, !tbaa !208, !noalias !458
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.dx, align 8, !tbaa !208, !noalias !458
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16)>, ptr %i.dq, align 8, !tbaa !208, !noalias !458
  %i.fd = load ptr, ptr %i.dw, align 8, !tbaa !24, !noalias !458 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.dz
  br i1 %i.fe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
end_hunk_3
