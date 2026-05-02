inline.NumInlined: 31
inline.NumDeleted: 2
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.civ = and i32 %i.ciu, %i.cig
  %.not525.i = icmp eq i32 %i.civ, 0              ; 2 uses
  %i.ciw = and i32 %i.cit, %i.cig
  %.not526.i = trunc nuw i32 %i.ciw to i1         ; 2 uses
  %i.cix = lshr i64 %i.ciq, 8                     ; 7 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %.0449.i, i64 8
  %i.ciz = load ptr, ptr %i.ciy, align 8, !tbaa !81 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
bb.nj:                                            ; preds = %bb.ip
  %i.dns = trunc i64 %.01607 to i32
  %i.dnt = and i32 %i.dns, %i.cig
  %.not520.i = trunc nuw i32 %i.dnt to i1         ; 2 uses
  %i.dnu = select i1 %.not520.i, i64 32, i64 %i.cii ; 2 uses
  %i.dnv = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.dnu
  %.not521.i = icmp ult ptr %i.dnv, %.0478.i
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
bb.ri:                                            ; preds = %bb.rh
  %i.ftk = trunc i64 %.01607 to i32
  %i.ftl = and i32 %i.ftk, %i.cig
  %.not515.i = trunc nuw i32 %i.ftl to i1         ; 4 uses
  %i.ftm = lshr i64 %i.ciq, 8                     ; 2 uses
  %i.ftn = icmp eq i8 %i.cis, 7                   ; 4 uses
  %i.fto = icmp eq i64 %i.ftm, 0
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
bb.rq:                                            ; preds = %bb.rp
  %i.fwt = trunc i64 %.01607 to i32
  %i.fwu = and i32 %i.fwt, %i.cig
  %.not512.i = trunc nuw i32 %i.fwu to i1         ; 2 uses
  %i.fwv = select i1 %.not512.i, i64 16, i64 %i.cij ; 2 uses
  %i.fww = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.fwv
  %.not513.i = icmp ult ptr %i.fww, %.0478.i
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
bb.rt:                                            ; preds = %bb.rp
  %i.fyf = trunc i64 %.01607 to i32
  %i.fyg = and i32 %i.fyf, %i.cig
  %.not509.i = trunc nuw i32 %i.fyg to i1         ; 2 uses
  %i.fyh = select i1 %.not509.i, i64 16, i64 %i.cij ; 2 uses
  %i.fyi = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.fyh
  %.not510.i = icmp ult ptr %i.fyi, %.0478.i
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.ciw = and i32 %i.civ, %i.cih
  %.not532.i = icmp eq i32 %i.ciw, 0              ; 2 uses
  %i.cix = and i32 %i.ciu, %i.cih
  %.not533.i = trunc nuw i32 %i.cix to i1         ; 2 uses
  %i.ciy = lshr i64 %i.cir, 8                     ; 7 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %.0454.i, i64 8
  %i.cja = load ptr, ptr %i.ciz, align 8, !tbaa !81 ; 7 uses
end_hunk_5
begin_hunk_6_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
bb.nm:                                            ; preds = %bb.ir
  %i.dnt = trunc i64 %.0783 to i32
  %i.dnu = and i32 %i.dnt, %i.cih
  %.not527.i = trunc nuw i32 %i.dnu to i1         ; 2 uses
  %i.dnv = select i1 %.not527.i, i64 32, i64 %i.cij ; 2 uses
  %i.dnw = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.dnv
  %.not528.i = icmp ult ptr %i.dnw, %.0483.i
end_hunk_6
begin_hunk_7_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
bb.rm:                                            ; preds = %bb.rl
  %i.ftl = trunc i64 %.0783 to i32
  %i.ftm = and i32 %i.ftl, %i.cih
  %.not520.i = trunc nuw i32 %i.ftm to i1         ; 4 uses
  %i.ftn = lshr i64 %i.cir, 8                     ; 2 uses
  %i.fto = icmp eq i8 %i.cit, 7                   ; 5 uses
  %i.ftp = icmp eq i64 %i.ftn, 0
end_hunk_7
begin_hunk_8_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
bb.ry:                                            ; preds = %bb.rx
  %i.fwz = trunc i64 %.0783 to i32
  %i.fxa = and i32 %i.fwz, %i.cih
  %.not517.i = trunc nuw i32 %i.fxa to i1         ; 2 uses
  %i.fxb = select i1 %.not517.i, i64 16, i64 %i.cik ; 2 uses
  %i.fxc = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.fxb
  %.not518.i = icmp ult ptr %i.fxc, %.0483.i
end_hunk_8
begin_hunk_9_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
bb.sc:                                            ; preds = %bb.rx
  %i.fyl = trunc i64 %.0783 to i32
  %i.fym = and i32 %i.fyl, %i.cih
  %.not514.i = trunc nuw i32 %i.fym to i1         ; 2 uses
  %i.fyn = select i1 %.not514.i, i64 16, i64 %i.cik ; 2 uses
  %i.fyo = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.fyn
  %.not515.i = icmp ult ptr %i.fyo, %.0483.i
end_hunk_9
