inline.NumInlined: 1281
inline.NumDeleted: 547
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ResetToBuiltinUTCERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE:bb.a
  store i8 0, ptr %i.bo, align 1, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.bp, align 8, !tbaa !34
  %3 = call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef 106751991167300, i8 noundef signext 15, i8 noundef signext 30, i8 noundef signext 7) #24, !noalias !100 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i64 } %3, 1 ; 5 uses
  %i.bq = extractvalue { i64, i64 } %3, 0
  %i.br = load i32, ptr %i.n, align 8, !tbaa !23, !noalias !100 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ResetToBuiltinUTCERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE:bb.a
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !72
  %.sroa.445.0..sroa_idx = getelementptr inbounds i8, ptr %i.m, i64 -32
  store i64 %.sroa.2.8.insert.ext.i7.i, ptr %.sroa.445.0..sroa_idx, align 8
  %4 = call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef -106751991167301, i8 noundef signext 8, i8 noundef signext 29, i8 noundef signext 52) #24, !noalias !103 ; 2 uses
  %.fca.1.extract.i.i.i25 = extractvalue { i64, i64 } %4, 1 ; 5 uses
  %i.ch = extractvalue { i64, i64 } %4, 0
  %i.ci = load i32, ptr %i.n, align 8, !tbaa !23, !noalias !103 ; 2 uses
end_hunk_1
