inline.NumInlined: 41
inline.NumDeleted: 22
begin_hunk_0_@_ZN11duckdb_zstd23ZSTD_compressSuperBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj:bb.a
  %i.nc = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.nf = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.promoted474.i = load i32, ptr %i.ng, align 4
  %.promoted478.i = load i32, ptr %i.nf, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i, %.lr.ph473.i
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd23ZSTD_compressSuperBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj:bb.a
  br i1 %i.nu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN11duckdb_zstdL22ZSTD_getSequenceLengthEPKNS_10seqStore_tEPKNS_8seqDef_sE.exit.i
  store i32 %.val432480.i, ptr %i.ng, align 4, !tbaa !3
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !3
  %i.nv = add i32 %i.ni, -3
  br label %.sink.split.i.i

end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd23ZSTD_compressSuperBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj:bb.a
  %i.oe = phi i32 [ %i.oa, %bb.be ], [ %i.od, %bb.bf ]
  %.not22.i.i = icmp eq i32 %i.nz, 1
  %i.of = select i1 %.not22.i.i, i32 %.val476.i, i32 %.val432480.i ; 2 uses
  store i32 %i.of, ptr %i.ng, align 4, !tbaa !3
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bg, %bb.bc
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL21ZSTD_compressSubBlockEPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_8seqDef_sEmPKhmSA_SA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiiPiSF_j:bb.a
  br i1 %i.bp, label %.thread69, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bt = ptrtoint ptr %i.bq to i64
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL21ZSTD_compressSubBlockEPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_8seqDef_sEmPKhmSA_SA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiiPiSF_j:bb.a
  %i.ca = lshr i64 %3, 8
  %i.cb = trunc nuw nsw i64 %i.ca to i8
  %i.cc = or disjoint i8 %i.cb, -128
  store i8 %i.cc, ptr %i.bq, align 1, !tbaa !68
  %i.cd = trunc i64 %3 to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !68
  %18 = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  br label %.thread.i.a

bb.aa:                                            ; preds = %bb.y
  store i8 -1, ptr %i.bq, align 1, !tbaa !68
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.cg = trunc i64 %3 to i16
  %i.ch = add i16 %i.cg, -32512
  store i16 %i.ch, ptr %i.cf, align 1, !tbaa !84
  %19 = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  br label %.thread.i.a

bb.ab:                                            ; preds = %bb.x
  %i.ci = trunc nuw nsw i64 %3 to i8
  %20 = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.ci, ptr %i.bq, align 1, !tbaa !68
  %i.cj = icmp eq i64 %3, 0
  br i1 %i.cj, label %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread.thread91, label %.thread.i.a

.thread.i.a:                                      ; preds = %bb.ab, %bb.aa, %bb.z
  %.0692.i = phi ptr [ %20, %bb.ab ], [ %19, %bb.aa ], [ %18, %bb.z ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0692.i, i64 1 ; 5 uses
  %.not.i63 = icmp eq i32 %14, 0
  br i1 %.not.i63, label %bb.ac, label %.thread10.i

bb.ac:                                            ; preds = %.thread.i.a
  store i8 -4, ptr %.0692.i, align 1, !tbaa !68
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.c, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2836
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL21ZSTD_compressSubBlockEPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_8seqDef_sEmPKhmSA_SA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiiPiSF_j:bb.a
  %i.cz = shl i32 %i.cv, 2
  %i.da = add i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %.0692.i, align 1, !tbaa !68
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !73
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL21ZSTD_compressSubBlockEPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_8seqDef_sEmPKhmSA_SA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiiPiSF_j:bb.a
bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dt = phi ptr [ %i.dn, %bb.ad ], [ %i.do, %bb.ae ]
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dv = ptrtoint ptr %.0692.i to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = icmp slt i64 %i.dw, 4
  br i1 %i.dx, label %.thread69, label %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL21ZSTD_compressSubBlockEPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_8seqDef_sEmPKhmSA_SA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiiPiSF_j:bb.a
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !68
  br label %.thread69

.thread69:                                        ; preds = %bb.w, %bb.ac, %.thread10.i, %bb.af, %bb.ae, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit, %bb.l, %bb.v, %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread.thread91
  %.4 = phi i64 [ %i.ec, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread.thread91 ], [ 0, %bb.l ], [ %.1.i, %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit ], [ 0, %bb.v ], [ 0, %bb.af ], [ 0, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread ], [ %i.dy, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit ], [ 0, %bb.ae ], [ -70, %bb.w ], [ %i.cp, %bb.ac ], [ %i.dl, %.thread10.i ]
  ret i64 %.4
}

end_hunk_7
