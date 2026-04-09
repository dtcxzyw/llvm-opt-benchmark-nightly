inline.NumInlined: 58
inline.NumDeleted: 29
begin_hunk_0_@_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm:bb.a
  %i.ef = add i64 %.sroa.010.sroa.4.0.extract.shift.i, %i.ay
  %.11520.i.ph250 = ptrtoint ptr %.11520.i.ph to i64 ; 2 uses
  %i.eg = sub i64 %i.ef, %.11520.i.ph250
  %i.eh = add i64 %.sroa.010.sroa.4.0.extract.shift.i, %i.ay
  %xtraiter = and i64 %i.eg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i83.prol.loopexit, label %.lr.ph.i83.prol
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm:bb.a
.lr.ph.i83.prol.loopexit:                         ; preds = %.lr.ph.i83.prol, %.lr.ph.i83.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i83.preheader ], [ %i.ek, %.lr.ph.i83.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i83.preheader ], [ %i.ei, %.lr.ph.i83.prol ]
  %7 = sub i64 %.11520.i.ph250, %i.eh
  %8 = icmp ugt i64 %7, -8
  br i1 %8, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.prol.loopexit, %.lr.ph.i83
  %.121.i = phi ptr [ %i.fi, %.lr.ph.i83 ], [ %.121.i.unr, %.lr.ph.i83.prol.loopexit ] ; 9 uses
end_hunk_1
