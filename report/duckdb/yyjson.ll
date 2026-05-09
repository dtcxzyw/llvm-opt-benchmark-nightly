inline.NumInlined: 31
inline.NumDeleted: 2
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.ftl = and i32 %i.ftk, %i.cig
  %.not515.i = icmp ne i32 %i.ftl, 0              ; 4 uses
  %i.ftm = lshr i64 %i.ciq, 8                     ; 2 uses
  %i.ftn = icmp eq i8 %i.cis, 7                   ; 5 uses
  %i.fto = icmp eq i64 %i.ftm, 0
  br i1 %i.fto, label %bb.rj, label %bb.rm, !prof !7

end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit:      ; preds = %select.unfold1707.prol.loopexit, %select.unfold1707, %bb.rl
  %.0.i1198.lcssa = phi ptr [ %.4455.i, %bb.rl ], [ %.lcssa6799.unr, %select.unfold1707.prol.loopexit ], [ %i.fut, %select.unfold1707 ] ; 5 uses
  %i.fuu = select i1 %i.ftn, i8 123, i8 91
  %i.fuv = getelementptr inbounds nuw i8, ptr %.0.i1198.lcssa, i64 1
  store i8 %i.fuu, ptr %.0.i1198.lcssa, align 1, !tbaa !81
  %6 = select i1 %i.ftn, i8 125, i8 93
  %i.fuw = getelementptr inbounds nuw i8, ptr %.0.i1198.lcssa, i64 2
  store i8 %6, ptr %i.fuv, align 1, !tbaa !81
  %i.fux = getelementptr inbounds nuw i8, ptr %.0.i1198.lcssa, i64 3
  store i8 44, ptr %i.fuw, align 1, !tbaa !81
  %i.fuy = getelementptr inbounds nuw i8, ptr %.0.i1198.lcssa, i64 4
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a

bb.abk:                                           ; preds = %bb.abj
  %i.jnv = lshr i64 %i.gef, 8                     ; 2 uses
  %i.jnw = icmp eq i8 %i.geh, 7                   ; 5 uses
  %i.jnx = getelementptr inbounds nuw i8, ptr %.0337.i, i64 16
  %.not386.i = icmp ult ptr %i.jnx, %.0356.i
  br i1 %.not386.i, label %bb.abm, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit410.i, !prof !24
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br i1 %i.joq, label %bb.abn, label %bb.abo, !prof !7

bb.abn:                                           ; preds = %bb.abm
  %i.jor = select i1 %i.jnw, i8 123, i8 91
  %i.jos = getelementptr inbounds nuw i8, ptr %.4341.i, i64 1
  store i8 %i.jor, ptr %.4341.i, align 1, !tbaa !81
  %7 = select i1 %i.jnw, i8 125, i8 93
  %i.jot = getelementptr inbounds nuw i8, ptr %.4341.i, i64 2
  store i8 %7, ptr %i.jos, align 1, !tbaa !81
  %i.jou = getelementptr inbounds nuw i8, ptr %.4341.i, i64 3
  store i8 44, ptr %i.jot, align 1, !tbaa !81
  br label %bb.aby
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.ftm = and i32 %i.ftl, %i.cih
  %.not520.i = icmp ne i32 %i.ftm, 0              ; 4 uses
  %i.ftn = lshr i64 %i.cir, 8                     ; 2 uses
  %i.fto = icmp eq i8 %i.cit, 7                   ; 6 uses
  %i.ftp = icmp eq i64 %i.ftn, 0
  br i1 %i.ftp, label %bb.rn, label %bb.rr, !prof !7

end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i: ; preds = %select.unfold886.prol.loopexit, %select.unfold886, %bb.rq
  %.0.i846.i.lcssa = phi ptr [ %.4460.i, %bb.rq ], [ %.lcssa5991.unr, %select.unfold886.prol.loopexit ], [ %i.fuu, %select.unfold886 ] ; 5 uses
  %i.fuv = select i1 %i.fto, i8 123, i8 91
  %i.fuw = getelementptr inbounds nuw i8, ptr %.0.i846.i.lcssa, i64 1
  store i8 %i.fuv, ptr %.0.i846.i.lcssa, align 1, !tbaa !81
  %7 = select i1 %i.fto, i8 125, i8 93
  %i.fux = getelementptr inbounds nuw i8, ptr %.0.i846.i.lcssa, i64 2
  store i8 %7, ptr %i.fuw, align 1, !tbaa !81
  %i.fuy = getelementptr inbounds nuw i8, ptr %.0.i846.i.lcssa, i64 3
  store i8 44, ptr %i.fux, align 1, !tbaa !81
  %i.fuz = getelementptr inbounds nuw i8, ptr %.0.i846.i.lcssa, i64 4
end_hunk_5
begin_hunk_6_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a

bb.acc:                                           ; preds = %bb.acb
  %i.jog = lshr i64 %i.geq, 8                     ; 2 uses
  %i.joh = icmp eq i8 %i.ges, 7                   ; 5 uses
  %i.joi = getelementptr inbounds nuw i8, ptr %.0342.i, i64 16
  %.not391.i = icmp ult ptr %i.joi, %.0361.i
  br i1 %.not391.i, label %bb.acf, label %bb.acd, !prof !24
end_hunk_6
begin_hunk_7_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br i1 %i.jpb, label %bb.acg, label %bb.ach, !prof !7

bb.acg:                                           ; preds = %bb.acf
  %i.jpc = select i1 %i.joh, i8 123, i8 91
  %i.jpd = getelementptr inbounds nuw i8, ptr %.4346.i, i64 1
  store i8 %i.jpc, ptr %.4346.i, align 1, !tbaa !81
  %8 = select i1 %i.joh, i8 125, i8 93
  %i.jpe = getelementptr inbounds nuw i8, ptr %.4346.i, i64 2
  store i8 %8, ptr %i.jpd, align 1, !tbaa !81
  %i.jpf = getelementptr inbounds nuw i8, ptr %.4346.i, i64 3
  store i8 44, ptr %i.jpe, align 1, !tbaa !81
  br label %bb.acv
end_hunk_7
