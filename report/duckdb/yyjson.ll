inline.NumInlined: 31
inline.NumDeleted: 2
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br i1 %i.avh, label %.lr.ph3128.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit539

.lr.ph3128.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit847
  %6 = getelementptr i8, ptr %i.aeb, i64 2
  %narrow3972 = sub nsw i32 0, %i.aqg
  %i.avi = zext nneg i32 %narrow3972 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 48, i64 %i.avi, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit539

bb.ft:                                            ; preds = %bb.fl
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br i1 %i.egr, label %.lr.ph2918.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

.lr.ph2918.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit781
  %7 = getelementptr i8, ptr %i.dpl, i64 2
  %narrow = sub nsw i32 0, %i.ebq
  %i.egs = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 48, i64 %i.egs, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

bb.pb:                                            ; preds = %bb.ot
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br i1 %i.ibd, label %.lr.ph3041.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

.lr.ph3041.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit
  %8 = getelementptr i8, ptr %i.hjx, i64 2
  %narrow3967 = sub nsw i32 0, %i.hwc
  %i.ibe = zext nneg i32 %narrow3967 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %8, i8 48, i64 %i.ibe, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.zd:                                            ; preds = %bb.yv
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br i1 %i.avj, label %.lr.ph2309.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit97.i

.lr.ph2309.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i
  %7 = getelementptr i8, ptr %i.aeb, i64 2
  %narrow3159 = sub nsw i32 0, %i.aqg
  %i.avk = zext nneg i32 %narrow3159 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 48, i64 %i.avk, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit97.i

bb.ft:                                            ; preds = %bb.fl
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br i1 %i.egu, label %.lr.ph2099.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

.lr.ph2099.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54
  %8 = getelementptr i8, ptr %i.dpm, i64 2
  %narrow = sub nsw i32 0, %i.ebr
  %i.egv = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %8, i8 48, i64 %i.egv, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.pf:                                            ; preds = %bb.ox
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br i1 %i.ibq, label %.lr.ph2222.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i209.thread

.lr.ph2222.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i228
  %9 = getelementptr i8, ptr %i.hki, i64 2
  %narrow3154 = sub nsw i32 0, %i.hwn
  %i.ibr = zext nneg i32 %narrow3154 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %9, i8 48, i64 %i.ibr, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i209.thread

bb.zv:                                            ; preds = %bb.zn
end_hunk_5
