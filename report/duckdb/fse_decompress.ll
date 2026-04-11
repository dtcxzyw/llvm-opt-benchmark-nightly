inline.NumInlined: 83
inline.NumDeleted: 15
begin_hunk_0_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a
.lr.ph.i:                                         ; preds = %.preheader175.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.gc = phi ptr [ %i.iy, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.promoted229412.i, %.preheader175.i ] ; 7 uses
  %i.gd = phi i32 [ %i.iz, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.lcssa194.promoted414.i, %.preheader175.i ] ; 2 uses
  %.139.i10218.i = phi ptr [ %i.id, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.038.i9.i.lcssa, %.preheader175.i ] ; 4 uses
  %i.ge = phi i64 [ %i.gr, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.lcssa41, %.preheader175.i ]
  %.val.i.i98209217.i = phi i64 [ %.val.i.i98210.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.val.i.i53198413.i, %.preheader175.i ] ; 2 uses
  %i.gf = phi i64 [ %i.ic, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.lcssa42, %.preheader175.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a

bb.ac:                                            ; preds = %.lr.ph.i
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.gf
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.z
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a

bb.aj:                                            ; preds = %bb.ae
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gr
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ac
  %.sink.i = phi ptr [ %i.jb, %bb.aj ], [ %i.hn, %bb.ac ]
  %.2.i11.i = phi ptr [ %i.id, %bb.aj ], [ %i.gs, %bb.ac ]
  %.pn.i11.i = phi i64 [ 3, %bb.aj ], [ 2, %bb.ac ]
  %.sroa.4.0..sroa_idx.i102.i = getelementptr inbounds nuw i8, ptr %.sink.i, i64 2
  %.sroa.4.0.copyload.i103.i = load i8, ptr %.sroa.4.0..sroa_idx.i102.i, align 2, !tbaa !20
  store i8 %.sroa.4.0.copyload.i103.i, ptr %.2.i11.i, align 1, !tbaa !20
  %.2.i12.i = getelementptr inbounds nuw i8, ptr %.139.i10218.i, i64 %.pn.i11.i
  %i.jc = ptrtoint ptr %.2.i12.i to i64
  %i.jd = ptrtoint ptr %0 to i64
  %i.je = sub i64 %i.jc, %i.jd
  br label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12.i
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a
.lr.ph258.i:                                      ; preds = %.preheader.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i
  %i.ms = phi ptr [ %i.po, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.promoted270418.i, %.preheader.i ] ; 7 uses
  %i.mt = phi i32 [ %i.pp, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.lcssa184.promoted419.i, %.preheader.i ]
  %.139.i257.i = phi ptr [ %i.ot, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.038.i.i.lcssa, %.preheader.i ] ; 4 uses
  %i.mu = phi i64 [ %i.nh, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.lcssa27, %.preheader.i ]
  %.val.i.i152248256.i = phi i64 [ %.val.i.i152249.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %i.ko, %.preheader.i ] ; 2 uses
  %i.mv = phi i64 [ %i.os, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35.i ], [ %.lcssa28.a, %.preheader.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a

bb.av:                                            ; preds = %.lr.ph258.i
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.mv
  br label %bb.bd

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a

bb.bc:                                            ; preds = %bb.ax
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.nh
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.av
  %.sink464.i = phi ptr [ %i.pr, %bb.bc ], [ %i.od, %bb.av ]
  %.2.i.i.a = phi ptr [ %i.ot, %bb.bc ], [ %i.ni, %bb.av ]
  %.pn.i.i = phi i64 [ 3, %bb.bc ], [ 2, %bb.av ]
  %.sroa.4.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %.sink464.i, i64 2
  %.sroa.4.0.copyload.i157.i = load i8, ptr %.sroa.4.0..sroa_idx.i156.i, align 2, !tbaa !20
  store i8 %.sroa.4.0.copyload.i157.i, ptr %.2.i.i.a, align 1, !tbaa !20
  %.2.i.i = getelementptr inbounds nuw i8, ptr %.139.i257.i, i64 %.pn.i.i
  %i.ps = ptrtoint ptr %.2.i.i to i64
  %i.pt = ptrtoint ptr %0 to i64
  %i.pu = sub i64 %i.ps, %i.pt
  br label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit.i
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a
.lr.ph:                                           ; preds = %.preheader175, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit
  %i.gb = phi ptr [ %i.ix, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.promoted229412, %.preheader175 ] ; 7 uses
  %i.gc = phi i32 [ %i.iy, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.lcssa194.promoted414, %.preheader175 ] ; 2 uses
  %.139.i10218 = phi ptr [ %i.ic, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.038.i9.lcssa, %.preheader175 ] ; 4 uses
  %i.gd = phi i64 [ %i.gq, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.lcssa485, %.preheader175 ]
  %.val.i.i98209217 = phi i64 [ %.val.i.i98210, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.val.i.i53198413, %.preheader175 ] ; 2 uses
  %i.ge = phi i64 [ %i.ib, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.lcssa486, %.preheader175 ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a

bb.ab:                                            ; preds = %.lr.ph
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ge
  br label %bb.aj

bb.ac:                                            ; preds = %bb.z, %bb.y, %bb.aa
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a

bb.ai:                                            ; preds = %bb.ad
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.gq
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ab
  %.sink = phi ptr [ %i.ja, %bb.ai ], [ %i.hm, %bb.ab ]
  %.2.i11 = phi ptr [ %i.ic, %bb.ai ], [ %i.gr, %bb.ab ]
  %.pn.i11 = phi i64 [ 3, %bb.ai ], [ 2, %bb.ab ]
  %.sroa.4.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %.sink, i64 2
  %.sroa.4.0.copyload.i103 = load i8, ptr %.sroa.4.0..sroa_idx.i102, align 2, !tbaa !20
  store i8 %.sroa.4.0.copyload.i103, ptr %.2.i11, align 1, !tbaa !20
  %.2.i12 = getelementptr inbounds nuw i8, ptr %.139.i10218, i64 %.pn.i11
  %i.jb = ptrtoint ptr %.2.i12 to i64
  %i.jc = ptrtoint ptr %0 to i64
  %i.jd = sub i64 %i.jb, %i.jc
  br label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a
.lr.ph258:                                        ; preds = %.preheader, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35
  %i.mr = phi ptr [ %i.pn, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.promoted270418, %.preheader ] ; 7 uses
  %i.ms = phi i32 [ %i.po, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.lcssa184.promoted419, %.preheader ]
  %.139.i257 = phi ptr [ %i.os, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.038.i.lcssa, %.preheader ] ; 4 uses
  %i.mt = phi i64 [ %i.ng, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.lcssa471, %.preheader ]
  %.val.i.i152248256 = phi i64 [ %.val.i.i152249, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %i.kn, %.preheader ] ; 2 uses
  %i.mu = phi i64 [ %i.or, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ %.lcssa472, %.preheader ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a

bb.av:                                            ; preds = %.lr.ph258
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.mu
  br label %bb.bd

bb.aw:                                            ; preds = %bb.at, %bb.as, %bb.au
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a

bb.bc:                                            ; preds = %bb.ax
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.ng
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.av
  %.sink464 = phi ptr [ %i.pq, %bb.bc ], [ %i.oc, %bb.av ]
  %.2.i.a = phi ptr [ %i.os, %bb.bc ], [ %i.nh, %bb.av ]
  %.pn.i = phi i64 [ 3, %bb.bc ], [ 2, %bb.av ]
  %.sroa.4.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %.sink464, i64 2
  %.sroa.4.0.copyload.i157 = load i8, ptr %.sroa.4.0..sroa_idx.i156, align 2, !tbaa !20
  store i8 %.sroa.4.0.copyload.i157, ptr %.2.i.a, align 1, !tbaa !20
  %.2.i = getelementptr inbounds nuw i8, ptr %.139.i257, i64 %.pn.i
  %i.pr = ptrtoint ptr %.2.i to i64
  %i.ps = ptrtoint ptr %0 to i64
  %i.pt = sub i64 %i.pr, %i.ps
  br label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit
end_hunk_11
