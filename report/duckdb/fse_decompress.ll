inline.NumInlined: 83
inline.NumDeleted: 15
begin_hunk_0_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a
.lr.ph.i:                                         ; preds = %.preheader175.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.gc = phi ptr [ %i.iy, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.promoted229412.i, %.preheader175.i ] ; 7 uses
  %i.gd = phi i32 [ %i.iz, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.lcssa194.promoted414.i, %.preheader175.i ] ; 2 uses
  %.139.i10218.i = phi ptr [ %i.id, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.038.i9.i.lcssa, %.preheader175.i ] ; 5 uses
  %i.ge = phi i64 [ %i.gr, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.lcssa41, %.preheader175.i ]
  %.val.i.i98209217.i = phi i64 [ %.val.i.i98210.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.val.i.i53198413.i, %.preheader175.i ] ; 2 uses
  %i.gf = phi i64 [ %i.ic, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.lcssa42, %.preheader175.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a

bb.ac:                                            ; preds = %.lr.ph.i
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.gf
  %.sroa.4.0..sroa_idx.i85.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %.sroa.4.0.copyload.i86.i = load i8, ptr %.sroa.4.0..sroa_idx.i85.i, align 2, !tbaa !20
  %14 = getelementptr inbounds nuw i8, ptr %.139.i10218.i, i64 2
  store i8 %.sroa.4.0.copyload.i86.i, ptr %i.gs, align 1, !tbaa !20
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.z
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a

bb.aj:                                            ; preds = %bb.ae
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gr
  %.sroa.4.0..sroa_idx.i101.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %.sroa.4.0.copyload.i102.i = load i8, ptr %.sroa.4.0..sroa_idx.i101.i, align 2, !tbaa !20
  %15 = getelementptr inbounds nuw i8, ptr %.139.i10218.i, i64 3
  store i8 %.sroa.4.0.copyload.i102.i, ptr %i.id, align 1, !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ac
  %.2.i11.i = phi ptr [ %14, %bb.ac ], [ %15, %bb.aj ]
  %i.jc = ptrtoint ptr %.2.i11.i to i64
  %i.jd = ptrtoint ptr %0 to i64
  %i.je = sub i64 %i.jc, %i.jd
  br label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12.i
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a
.lr.ph258.i:                                      ; preds = %.preheader.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i
  %i.ms = phi ptr [ %i.po, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.promoted270418.i, %.preheader.i ] ; 7 uses
  %i.mt = phi i32 [ %i.pp, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.lcssa184.promoted419.i, %.preheader.i ]
  %.139.i257.i = phi ptr [ %i.ot, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.038.i.i.lcssa, %.preheader.i ] ; 5 uses
  %i.mu = phi i64 [ %i.nh, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.lcssa27, %.preheader.i ]
  %.val.i.i152248256.i = phi i64 [ %.val.i.i152249.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %i.ko, %.preheader.i ] ; 2 uses
  %i.mv = phi i64 [ %i.os, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.lcssa28.a, %.preheader.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a

bb.av:                                            ; preds = %.lr.ph258.i
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.mv
  %.sroa.4.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  %.sroa.4.0.copyload.i142.i = load i8, ptr %.sroa.4.0..sroa_idx.i141.i, align 2, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %.139.i257.i, i64 2
  store i8 %.sroa.4.0.copyload.i142.i, ptr %i.ni, align 1, !tbaa !20
  br label %bb.bd

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a

bb.bc:                                            ; preds = %bb.ax
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.nh
  %.sroa.4.0..sroa_idx.i155.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 2
  %.sroa.4.0.copyload.i156.i = load i8, ptr %.sroa.4.0..sroa_idx.i155.i, align 2, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %.139.i257.i, i64 3
  store i8 %.sroa.4.0.copyload.i156.i, ptr %i.ot, align 1, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.av
  %.2.i.i.a = phi ptr [ %16, %bb.av ], [ %17, %bb.bc ]
  %i.ps = ptrtoint ptr %.2.i.i.a to i64
  %i.pt = ptrtoint ptr %0 to i64
  %i.pu = sub i64 %i.ps, %i.pt
  br label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit.i
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a
.lr.ph:                                           ; preds = %.preheader175, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit
  %i.gb = phi ptr [ %i.ix, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.promoted229412, %.preheader175 ] ; 7 uses
  %i.gc = phi i32 [ %i.iy, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.lcssa194.promoted414, %.preheader175 ] ; 2 uses
  %.139.i10218 = phi ptr [ %i.ic, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.038.i9.lcssa, %.preheader175 ] ; 5 uses
  %i.gd = phi i64 [ %i.gq, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.lcssa485, %.preheader175 ]
  %.val.i.i98209217 = phi i64 [ %.val.i.i98210, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.val.i.i53198413, %.preheader175 ] ; 2 uses
  %i.ge = phi i64 [ %i.ib, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.lcssa486, %.preheader175 ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a

bb.ab:                                            ; preds = %.lr.ph
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ge
  %.sroa.4.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %.sroa.4.0.copyload.i86 = load i8, ptr %.sroa.4.0..sroa_idx.i85, align 2, !tbaa !20
  %13 = getelementptr inbounds nuw i8, ptr %.139.i10218, i64 2
  store i8 %.sroa.4.0.copyload.i86, ptr %i.gr, align 1, !tbaa !20
  br label %bb.aj

bb.ac:                                            ; preds = %bb.z, %bb.y, %bb.aa
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a

bb.ai:                                            ; preds = %bb.ad
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.gq
  %.sroa.4.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %.sroa.4.0.copyload.i102 = load i8, ptr %.sroa.4.0..sroa_idx.i101, align 2, !tbaa !20
  %14 = getelementptr inbounds nuw i8, ptr %.139.i10218, i64 3
  store i8 %.sroa.4.0.copyload.i102, ptr %i.ic, align 1, !tbaa !20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ab
  %.2.i11 = phi ptr [ %13, %bb.ab ], [ %14, %bb.ai ]
  %i.jb = ptrtoint ptr %.2.i11 to i64
  %i.jc = ptrtoint ptr %0 to i64
  %i.jd = sub i64 %i.jb, %i.jc
  br label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a
.lr.ph258:                                        ; preds = %.preheader, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35
  %i.mr = phi ptr [ %i.pn, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.promoted270418, %.preheader ] ; 7 uses
  %i.ms = phi i32 [ %i.po, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.lcssa184.promoted419, %.preheader ]
  %.139.i257 = phi ptr [ %i.os, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.038.i.lcssa, %.preheader ] ; 5 uses
  %i.mt = phi i64 [ %i.ng, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.lcssa471, %.preheader ]
  %.val.i.i152248256 = phi i64 [ %.val.i.i152249, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %i.kn, %.preheader ] ; 2 uses
  %i.mu = phi i64 [ %i.or, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.lcssa472, %.preheader ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a

bb.av:                                            ; preds = %.lr.ph258
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.mu
  %.sroa.4.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.oc, i64 2
  %.sroa.4.0.copyload.i142 = load i8, ptr %.sroa.4.0..sroa_idx.i141, align 2, !tbaa !20
  %15 = getelementptr inbounds nuw i8, ptr %.139.i257, i64 2
  store i8 %.sroa.4.0.copyload.i142, ptr %i.nh, align 1, !tbaa !20
  br label %bb.bd

bb.aw:                                            ; preds = %bb.at, %bb.as, %bb.au
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a

bb.bc:                                            ; preds = %bb.ax
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.ng
  %.sroa.4.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.pq, i64 2
  %.sroa.4.0.copyload.i156 = load i8, ptr %.sroa.4.0..sroa_idx.i155, align 2, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %.139.i257, i64 3
  store i8 %.sroa.4.0.copyload.i156, ptr %i.os, align 1, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.av
  %.2.i.a = phi ptr [ %15, %bb.av ], [ %16, %bb.bc ]
  %i.pr = ptrtoint ptr %.2.i.a to i64
  %i.ps = ptrtoint ptr %0 to i64
  %i.pt = sub i64 %i.pr, %i.ps
  br label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit
end_hunk_11
