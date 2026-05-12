inline.NumInlined: 1254
inline.NumDeleted: 36
begin_hunk_0_@_ZN11duckdb_zstd23ZSTD_compressBlock_lazyEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ei = add nuw i64 %.in105, 4                  ; 2 uses
  %i.ej = trunc i64 %.5444.i122 to i32
  %i.ek = mul i32 %i.ej, 3
  %.neg154 = add i32 %i.ek, %.in.a
  %i.el = add i32 %.neg154, -30
  %i.em = trunc i64 %i.ei to i32
  %i.en = mul i32 %i.em, 3
  %i.eo = icmp sgt i32 %i.en, %i.el
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd23ZSTD_compressBlock_lazyEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ev = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.eu, i1 true)
  %i.ew = trunc i64 %i.es to i32
  %i.ex = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ew, i1 true)
  %5 = xor i32 %i.ex, 31
  %.10.tr.i = trunc i64 %.7446.i to i32
  %i.ey = shl i32 %.10.tr.i, 2
  %i.ez = add nsw i32 %i.ev, -27
  %i.fa = add i32 %i.ez, %i.ey
  %.tr.i = trunc i64 %.0.i4 to i32
  %i.fb = shl i32 %.tr.i, 2
  %6 = sub i32 %i.fb, %5
  %i.fc = icmp sgt i32 %6, %i.fa
  br i1 %i.fc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.gh = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gg, i1 true)
  %i.gi = trunc i64 %i.ge to i32
  %i.gj = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gi, i1 true)
  %5 = xor i32 %i.gj, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.gk = shl i32 %.10.tr.i, 2
  %i.gl = add nsw i32 %i.gh, -27
  %i.gm = add i32 %i.gl, %i.gk
  %.tr.i = trunc i64 %.0.i4 to i32
  %i.gn = shl i32 %.tr.i, 2
  %6 = sub i32 %i.gn, %5
  %i.go = icmp sgt i32 %6, %i.gm
  br i1 %i.go, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd43ZSTD_compressBlock_lazy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.gh = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gg, i1 true)
  %i.gi = trunc i64 %i.ge to i32
  %i.gj = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gi, i1 true)
  %5 = xor i32 %i.gj, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.gk = shl i32 %.10.tr.i, 2
  %i.gl = add nsw i32 %i.gh, -27
  %i.gm = add i32 %i.gl, %i.gk
  %.tr.i = trunc i64 %.0.i4 to i32
  %i.gn = shl i32 %.tr.i, 2
  %6 = sub i32 %i.gn, %5
  %i.go = icmp sgt i32 %6, %i.gm
  br i1 %i.go, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd27ZSTD_compressBlock_lazy_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ld = add nuw i64 %.in120, 4                  ; 2 uses
  %i.le = trunc i64 %.5444.i149 to i32
  %i.lf = mul i32 %i.le, 3
  %.neg184 = add i32 %i.lf, %.in.a
  %i.lg = add i32 %.neg184, -30
  %i.lh = trunc i64 %i.ld to i32
  %i.li = mul i32 %i.lh, 3
  %i.lj = icmp sgt i32 %i.li, %i.lg
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd27ZSTD_compressBlock_lazy_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.lw = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.lv, i1 true)
  %i.lx = trunc i64 %i.lt to i32
  %i.ly = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.lx, i1 true)
  %5 = xor i32 %i.ly, 31
  %.10.tr.i = trunc i64 %.7446.i to i32
  %i.lz = shl i32 %.10.tr.i, 2
  %i.ma = add nsw i32 %i.lw, -27
  %i.mb = add i32 %i.ma, %i.lz
  %.tr.i = trunc i64 %.0.i11 to i32
  %i.mc = shl i32 %.tr.i, 2
  %6 = sub i32 %i.mc, %5
  %i.md = icmp sgt i32 %6, %i.mb
  br i1 %i.md, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ni = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.nh, i1 true)
  %i.nj = trunc i64 %i.nf to i32
  %i.nk = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.nj, i1 true)
  %5 = xor i32 %i.nk, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.nl = shl i32 %.10.tr.i, 2
  %i.nm = add nsw i32 %i.ni, -27
  %i.nn = add i32 %i.nm, %i.nl
  %.tr.i = trunc i64 %.0.i11 to i32
  %i.no = shl i32 %.tr.i, 2
  %6 = sub i32 %i.no, %5
  %i.np = icmp sgt i32 %6, %i.nn
  br i1 %i.np, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstd47ZSTD_compressBlock_lazy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ni = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.nh, i1 true)
  %i.nj = trunc i64 %i.nf to i32
  %i.nk = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.nj, i1 true)
  %5 = xor i32 %i.nk, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.nl = shl i32 %.10.tr.i, 2
  %i.nm = add nsw i32 %i.ni, -27
  %i.nn = add i32 %i.nm, %i.nl
  %.tr.i = trunc i64 %.0.i11 to i32
  %i.no = shl i32 %.tr.i, 2
  %6 = sub i32 %i.no, %5
  %i.np = icmp sgt i32 %6, %i.nn
  br i1 %i.np, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstd24ZSTD_compressBlock_lazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ej = add nuw i64 %.in144, 4                  ; 2 uses
  %i.ek = trunc i64 %.5444.i165 to i32
  %i.el = mul i32 %i.ek, 3
  %.neg201 = add i32 %i.el, %.in.a
  %i.em = add i32 %.neg201, -30
  %i.en = trunc i64 %i.ej to i32
  %i.eo = mul i32 %i.en, 3
  %i.ep = icmp sgt i32 %i.eo, %i.em
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstd24ZSTD_compressBlock_lazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ew = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ev, i1 true)
  %i.ex = trunc i64 %i.et to i32
  %i.ey = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ex, i1 true)
  %5 = xor i32 %i.ey, 31
  %.10.tr.i = trunc i64 %.7446.i to i32
  %i.ez = shl i32 %.10.tr.i, 2
  %i.fa = add nsw i32 %i.ew, -27
  %i.fb = add i32 %i.fa, %i.ez
  %.tr.i = trunc i64 %.0.i5 to i32
  %i.fc = shl i32 %.tr.i, 2
  %6 = sub i32 %i.fc, %5
  %i.fd = icmp sgt i32 %6, %i.fb
  br i1 %i.fd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstd24ZSTD_compressBlock_lazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.in146 = phi i32 [ %i.fr, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit82.thread ], [ %i.gn, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit82 ]
  %.in147 = phi i64 [ %i.fp, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit82.thread ], [ %i.gl, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit82 ]
  %i.gp = add nuw i64 %.in147, 4                  ; 2 uses
  %.neg = add nsw i32 %.in146, -31
  %.11.tr.i = trunc i64 %.7446.i to i32
  %i.gq = shl i32 %.11.tr.i, 2
  %7 = or disjoint i32 %i.gq, 1
  %i.gr = add i32 %7, %.neg
  %.tr520.i = trunc i64 %i.gp to i32
  %i.gs = shl i32 %.tr520.i, 2
  %i.gt = icmp sgt i32 %i.gs, %i.gr
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstd24ZSTD_compressBlock_lazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ha = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gz, i1 true)
  %i.hb = trunc i64 %i.gx to i32
  %i.hc = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hb, i1 true)
  %8 = xor i32 %i.hc, 31
  %.16.tr.i = trunc i64 %.13.i to i32
  %i.hd = shl i32 %.16.tr.i, 2
  %i.he = add nsw i32 %i.ha, -24
  %i.hf = add i32 %i.he, %i.hd
  %.tr522.i = trunc i64 %.0.i4 to i32
  %i.hg = shl i32 %.tr522.i, 2
  %9 = sub i32 %i.hg, %8
  %i.hh = icmp sgt i32 %9, %i.hf
  br i1 %i.hh, label %bb.bg, label %.thread139

.thread139:                                       ; preds = %bb.bf, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstd39ZSTD_compressBlock_lazy2_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.gg = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gf, i1 true)
  %i.gh = trunc i64 %i.gd to i32
  %i.gi = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gh, i1 true)
  %5 = xor i32 %i.gi, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.gj = shl i32 %.10.tr.i, 2
  %i.gk = add nsw i32 %i.gg, -27
  %i.gl = add i32 %i.gk, %i.gj
  %.tr.i = trunc i64 %.0.i5 to i32
  %i.gm = shl i32 %.tr.i, 2
  %6 = sub i32 %i.gm, %5
  %i.gn = icmp sgt i32 %6, %i.gl
  br i1 %i.gn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
end_hunk_12
begin_hunk_13_@_ZN11duckdb_zstd39ZSTD_compressBlock_lazy2_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.hy = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hx, i1 true)
  %i.hz = trunc i64 %i.hv to i32
  %i.ia = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hz, i1 true)
  %7 = xor i32 %i.ia, 31
  %.16.tr.i = trunc i64 %.16.i to i32
  %i.ib = shl i32 %.16.tr.i, 2
  %i.ic = add nsw i32 %i.hy, -24
  %i.id = add i32 %i.ic, %i.ib
  %.tr522.i = trunc i64 %.0.i4 to i32
  %i.ie = shl i32 %.tr522.i, 2
  %8 = sub i32 %i.ie, %7
  %i.if = icmp sgt i32 %8, %i.id
  br i1 %i.if, label %bb.bb, label %.thread108

.thread108:                                       ; preds = %bb.ba, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_13
begin_hunk_14_@_ZN11duckdb_zstd44ZSTD_compressBlock_lazy2_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.gg = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gf, i1 true)
  %i.gh = trunc i64 %i.gd to i32
  %i.gi = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gh, i1 true)
  %5 = xor i32 %i.gi, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.gj = shl i32 %.10.tr.i, 2
  %i.gk = add nsw i32 %i.gg, -27
  %i.gl = add i32 %i.gk, %i.gj
  %.tr.i = trunc i64 %.0.i5 to i32
  %i.gm = shl i32 %.tr.i, 2
  %6 = sub i32 %i.gm, %5
  %i.gn = icmp sgt i32 %6, %i.gl
  br i1 %i.gn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
end_hunk_14
begin_hunk_15_@_ZN11duckdb_zstd44ZSTD_compressBlock_lazy2_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.hy = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hx, i1 true)
  %i.hz = trunc i64 %i.hv to i32
  %i.ia = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hz, i1 true)
  %7 = xor i32 %i.ia, 31
  %.16.tr.i = trunc i64 %.16.i to i32
  %i.ib = shl i32 %.16.tr.i, 2
  %i.ic = add nsw i32 %i.hy, -24
  %i.id = add i32 %i.ic, %i.ib
  %.tr522.i = trunc i64 %.0.i4 to i32
  %i.ie = shl i32 %.tr522.i, 2
  %8 = sub i32 %i.ie, %7
  %i.if = icmp sgt i32 %8, %i.id
  br i1 %i.if, label %bb.bb, label %.thread108

.thread108:                                       ; preds = %bb.ba, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_15
begin_hunk_16_@_ZN11duckdb_zstd28ZSTD_compressBlock_lazy2_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.le = add nuw i64 %.in159, 4                  ; 2 uses
  %i.lf = trunc i64 %.5444.i192 to i32
  %i.lg = mul i32 %i.lf, 3
  %.neg231 = add i32 %i.lg, %.in.a
  %i.lh = add i32 %.neg231, -30
  %i.li = trunc i64 %i.le to i32
  %i.lj = mul i32 %i.li, 3
  %i.lk = icmp sgt i32 %i.lj, %i.lh
end_hunk_16
begin_hunk_17_@_ZN11duckdb_zstd28ZSTD_compressBlock_lazy2_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.lx = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.lw, i1 true)
  %i.ly = trunc i64 %i.lu to i32
  %i.lz = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ly, i1 true)
  %5 = xor i32 %i.lz, 31
  %.10.tr.i = trunc i64 %.7446.i to i32
  %i.ma = shl i32 %.10.tr.i, 2
  %i.mb = add nsw i32 %i.lx, -27
  %i.mc = add i32 %i.mb, %i.ma
  %.tr.i = trunc i64 %.0.i12 to i32
  %i.md = shl i32 %.tr.i, 2
  %6 = sub i32 %i.md, %5
  %i.me = icmp sgt i32 %6, %i.mc
  br i1 %i.me, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
end_hunk_17
begin_hunk_18_@_ZN11duckdb_zstd28ZSTD_compressBlock_lazy2_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.in161 = phi i32 [ %i.ms, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit95.thread ], [ %i.no, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit95 ]
  %.in162 = phi i64 [ %i.mq, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit95.thread ], [ %i.nm, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit95 ]
  %i.nq = add nuw i64 %.in162, 4                  ; 2 uses
  %.neg = add nsw i32 %.in161, -31
  %.11.tr.i = trunc i64 %.7446.i to i32
  %i.nr = shl i32 %.11.tr.i, 2
  %7 = or disjoint i32 %i.nr, 1
  %i.ns = add i32 %7, %.neg
  %.tr520.i = trunc i64 %i.nq to i32
  %i.nt = shl i32 %.tr520.i, 2
  %i.nu = icmp sgt i32 %i.nt, %i.ns
end_hunk_18
begin_hunk_19_@_ZN11duckdb_zstd28ZSTD_compressBlock_lazy2_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.oh = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.og, i1 true)
  %i.oi = trunc i64 %i.oe to i32
  %i.oj = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.oi, i1 true)
  %8 = xor i32 %i.oj, 31
  %.16.tr.i = trunc i64 %.13.i to i32
  %i.ok = shl i32 %.16.tr.i, 2
  %i.ol = add nsw i32 %i.oh, -24
  %i.om = add i32 %i.ol, %i.ok
  %.tr522.i = trunc i64 %.0.i11 to i32
  %i.on = shl i32 %.tr522.i, 2
  %9 = sub i32 %i.on, %8
  %i.oo = icmp sgt i32 %9, %i.om
  br i1 %i.oo, label %bb.cn, label %.thread153

.thread153:                                       ; preds = %bb.cm, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_19
begin_hunk_20_@_ZN11duckdb_zstd43ZSTD_compressBlock_lazy2_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.nh = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ng, i1 true)
  %i.ni = trunc i64 %i.ne to i32
  %i.nj = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ni, i1 true)
  %5 = xor i32 %i.nj, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.nk = shl i32 %.10.tr.i, 2
  %i.nl = add nsw i32 %i.nh, -27
  %i.nm = add i32 %i.nl, %i.nk
  %.tr.i = trunc i64 %.0.i12 to i32
  %i.nn = shl i32 %.tr.i, 2
  %6 = sub i32 %i.nn, %5
  %i.no = icmp sgt i32 %6, %i.nm
  br i1 %i.no, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
end_hunk_20
begin_hunk_21_@_ZN11duckdb_zstd43ZSTD_compressBlock_lazy2_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.pf = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.pe, i1 true)
  %i.pg = trunc i64 %i.pc to i32
  %i.ph = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.pg, i1 true)
  %7 = xor i32 %i.ph, 31
  %.16.tr.i = trunc i64 %.16.i to i32
  %i.pi = shl i32 %.16.tr.i, 2
  %i.pj = add nsw i32 %i.pf, -24
  %i.pk = add i32 %i.pj, %i.pi
  %.tr522.i = trunc i64 %.0.i11 to i32
  %i.pl = shl i32 %.tr522.i, 2
  %8 = sub i32 %i.pl, %7
  %i.pm = icmp sgt i32 %8, %i.pk
  br i1 %i.pm, label %bb.ci, label %.thread122

.thread122:                                       ; preds = %bb.ch, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_21
begin_hunk_22_@_ZN11duckdb_zstd48ZSTD_compressBlock_lazy2_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.nh = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ng, i1 true)
  %i.ni = trunc i64 %i.ne to i32
  %i.nj = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ni, i1 true)
  %5 = xor i32 %i.nj, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.nk = shl i32 %.10.tr.i, 2
  %i.nl = add nsw i32 %i.nh, -27
  %i.nm = add i32 %i.nl, %i.nk
  %.tr.i = trunc i64 %.0.i12 to i32
  %i.nn = shl i32 %.tr.i, 2
  %6 = sub i32 %i.nn, %5
  %i.no = icmp sgt i32 %6, %i.nm
  br i1 %i.no, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
end_hunk_22
begin_hunk_23_@_ZN11duckdb_zstd48ZSTD_compressBlock_lazy2_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.pf = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.pe, i1 true)
  %i.pg = trunc i64 %i.pc to i32
  %i.ph = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.pg, i1 true)
  %7 = xor i32 %i.ph, 31
  %.16.tr.i = trunc i64 %.16.i to i32
  %i.pi = shl i32 %.16.tr.i, 2
  %i.pj = add nsw i32 %i.pf, -24
  %i.pk = add i32 %i.pj, %i.pi
  %.tr522.i = trunc i64 %.0.i11 to i32
  %i.pl = shl i32 %.tr522.i, 2
  %8 = sub i32 %i.pl, %7
  %i.pm = icmp sgt i32 %8, %i.pk
  br i1 %i.pm, label %bb.ci, label %.thread122

.thread122:                                       ; preds = %bb.ch, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_23
begin_hunk_24_@_ZN11duckdb_zstd26ZSTD_compressBlock_btlazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ej = add nuw i64 %.in144, 4                  ; 2 uses
  %i.ek = trunc i64 %.5444.i165 to i32
  %i.el = mul i32 %i.ek, 3
  %.neg201 = add i32 %i.el, %.in.a
  %i.em = add i32 %.neg201, -30
  %i.en = trunc i64 %i.ej to i32
  %i.eo = mul i32 %i.en, 3
  %i.ep = icmp sgt i32 %i.eo, %i.em
end_hunk_24
begin_hunk_25_@_ZN11duckdb_zstd26ZSTD_compressBlock_btlazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ew = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ev, i1 true)
  %i.ex = trunc i64 %i.et to i32
  %i.ey = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ex, i1 true)
  %5 = xor i32 %i.ey, 31
  %.10.tr.i = trunc i64 %.7446.i to i32
  %i.ez = shl i32 %.10.tr.i, 2
  %i.fa = add nsw i32 %i.ew, -27
  %i.fb = add i32 %i.fa, %i.ez
  %.tr.i = trunc i64 %.0.i5 to i32
  %i.fc = shl i32 %.tr.i, 2
  %6 = sub i32 %i.fc, %5
  %i.fd = icmp sgt i32 %6, %i.fb
  br i1 %i.fd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
end_hunk_25
begin_hunk_26_@_ZN11duckdb_zstd26ZSTD_compressBlock_btlazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.in146 = phi i32 [ %i.fr, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit82.thread ], [ %i.gn, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit82 ]
  %.in147 = phi i64 [ %i.fp, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit82.thread ], [ %i.gl, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit82 ]
  %i.gp = add nuw i64 %.in147, 4                  ; 2 uses
  %.neg = add nsw i32 %.in146, -31
  %.11.tr.i = trunc i64 %.7446.i to i32
  %i.gq = shl i32 %.11.tr.i, 2
  %7 = or disjoint i32 %i.gq, 1
  %i.gr = add i32 %7, %.neg
  %.tr520.i = trunc i64 %i.gp to i32
  %i.gs = shl i32 %.tr520.i, 2
  %i.gt = icmp sgt i32 %i.gs, %i.gr
end_hunk_26
begin_hunk_27_@_ZN11duckdb_zstd26ZSTD_compressBlock_btlazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ha = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gz, i1 true)
  %i.hb = trunc i64 %i.gx to i32
  %i.hc = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hb, i1 true)
  %8 = xor i32 %i.hc, 31
  %.16.tr.i = trunc i64 %.13.i to i32
  %i.hd = shl i32 %.16.tr.i, 2
  %i.he = add nsw i32 %i.ha, -24
  %i.hf = add i32 %i.he, %i.hd
  %.tr522.i = trunc i64 %.0.i4 to i32
  %i.hg = shl i32 %.tr522.i, 2
  %9 = sub i32 %i.hg, %8
  %i.hh = icmp sgt i32 %9, %i.hf
  br i1 %i.hh, label %bb.bg, label %.thread139

.thread139:                                       ; preds = %bb.bf, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_27
begin_hunk_28_@_ZN11duckdb_zstd41ZSTD_compressBlock_btlazy2_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.gg = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gf, i1 true)
  %i.gh = trunc i64 %i.gd to i32
  %i.gi = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gh, i1 true)
  %5 = xor i32 %i.gi, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.gj = shl i32 %.10.tr.i, 2
  %i.gk = add nsw i32 %i.gg, -27
  %i.gl = add i32 %i.gk, %i.gj
  %.tr.i = trunc i64 %.0.i5 to i32
  %i.gm = shl i32 %.tr.i, 2
  %6 = sub i32 %i.gm, %5
  %i.gn = icmp sgt i32 %6, %i.gl
  br i1 %i.gn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
end_hunk_28
begin_hunk_29_@_ZN11duckdb_zstd41ZSTD_compressBlock_btlazy2_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.hy = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hx, i1 true)
  %i.hz = trunc i64 %i.hv to i32
  %i.ia = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hz, i1 true)
  %7 = xor i32 %i.ia, 31
  %.16.tr.i = trunc i64 %.16.i to i32
  %i.ib = shl i32 %.16.tr.i, 2
  %i.ic = add nsw i32 %i.hy, -24
  %i.id = add i32 %i.ic, %i.ib
  %.tr522.i = trunc i64 %.0.i4 to i32
  %i.ie = shl i32 %.tr522.i, 2
  %8 = sub i32 %i.ie, %7
  %i.if = icmp sgt i32 %8, %i.id
  br i1 %i.if, label %bb.bb, label %.thread108

.thread108:                                       ; preds = %bb.ba, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_29
begin_hunk_30_@_ZN11duckdb_zstd31ZSTD_compressBlock_lazy_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.dt = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ds, i1 true)
  %i.du = trunc i64 %i.dq to i32
  %i.dv = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.du, i1 true)
  %5 = xor i32 %i.dv, 31
  %.6.tr.i = trunc i64 %.6.i to i32
  %i.dw = shl i32 %.6.tr.i, 2
  %i.dx = add nsw i32 %i.dt, -27
  %i.dy = add i32 %i.dx, %i.dw
  %.tr.i = trunc i64 %.0.i4 to i32
  %i.dz = shl i32 %.tr.i, 2
  %6 = sub i32 %i.dz, %5
  %i.ea = icmp sgt i32 %6, %i.dy
  br i1 %i.ea, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
end_hunk_30
begin_hunk_31_@_ZN11duckdb_zstd35ZSTD_compressBlock_lazy_extDict_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.ku = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kt, i1 true)
  %i.kv = trunc i64 %i.kr to i32
  %i.kw = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kv, i1 true)
  %5 = xor i32 %i.kw, 31
  %.6.tr.i = trunc i64 %.6.i to i32
  %i.kx = shl i32 %.6.tr.i, 2
  %i.ky = add nsw i32 %i.ku, -27
  %i.kz = add i32 %i.ky, %i.kx
  %.tr.i = trunc i64 %.0.i11 to i32
  %i.la = shl i32 %.tr.i, 2
  %6 = sub i32 %i.la, %5
  %i.lb = icmp sgt i32 %6, %i.kz
  br i1 %i.lb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
end_hunk_31
begin_hunk_32_@_ZN11duckdb_zstd32ZSTD_compressBlock_lazy2_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.du = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dt, i1 true)
  %i.dv = trunc i64 %i.dr to i32
  %i.dw = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dv, i1 true)
  %5 = xor i32 %i.dw, 31
  %.6.tr.i = trunc i64 %.6.i to i32
  %i.dx = shl i32 %.6.tr.i, 2
  %i.dy = add nsw i32 %i.du, -27
  %i.dz = add i32 %i.dy, %i.dx
  %.tr.i = trunc i64 %.0.i5 to i32
  %i.ea = shl i32 %.tr.i, 2
  %6 = sub i32 %i.ea, %5
  %i.eb = icmp sgt i32 %6, %i.dz
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
end_hunk_32
begin_hunk_33_@_ZN11duckdb_zstd32ZSTD_compressBlock_lazy2_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.fp = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = trunc i64 %i.fm to i32
  %i.fr = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fq, i1 true)
  %7 = xor i32 %i.fr, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.fs = shl i32 %.10.tr.i, 2
  %i.ft = add nsw i32 %i.fp, -24
  %i.fu = add i32 %i.ft, %i.fs
  %.tr364.i = trunc i64 %.0.i4 to i32
  %i.fv = shl i32 %.tr364.i, 2
  %8 = sub i32 %i.fv, %7
  %i.fw = icmp sgt i32 %8, %i.fu
  br i1 %i.fw, label %bb.ag, label %.thread60

.thread60:                                        ; preds = %bb.af, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_33
begin_hunk_34_@_ZN11duckdb_zstd36ZSTD_compressBlock_lazy2_extDict_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.kv = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ku, i1 true)
  %i.kw = trunc i64 %i.ks to i32
  %i.kx = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kw, i1 true)
  %5 = xor i32 %i.kx, 31
  %.6.tr.i = trunc i64 %.6.i to i32
  %i.ky = shl i32 %.6.tr.i, 2
  %i.kz = add nsw i32 %i.kv, -27
  %i.la = add i32 %i.kz, %i.ky
  %.tr.i = trunc i64 %.0.i12 to i32
  %i.lb = shl i32 %.tr.i, 2
  %6 = sub i32 %i.lb, %5
  %i.lc = icmp sgt i32 %6, %i.la
  br i1 %i.lc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
end_hunk_34
begin_hunk_35_@_ZN11duckdb_zstd36ZSTD_compressBlock_lazy2_extDict_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.mw = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mv, i1 true)
  %i.mx = trunc i64 %i.mt to i32
  %i.my = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mx, i1 true)
  %7 = xor i32 %i.my, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.mz = shl i32 %.10.tr.i, 2
  %i.na = add nsw i32 %i.mw, -24
  %i.nb = add i32 %i.na, %i.mz
  %.tr364.i = trunc i64 %.0.i11 to i32
  %i.nc = shl i32 %.tr364.i, 2
  %8 = sub i32 %i.nc, %7
  %i.nd = icmp sgt i32 %8, %i.nb
  br i1 %i.nd, label %bb.bn, label %.thread74

.thread74:                                        ; preds = %bb.bm, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_35
begin_hunk_36_@_ZN11duckdb_zstd34ZSTD_compressBlock_btlazy2_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.du = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dt, i1 true)
  %i.dv = trunc i64 %i.dr to i32
  %i.dw = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dv, i1 true)
  %5 = xor i32 %i.dw, 31
  %.6.tr.i = trunc i64 %.6.i to i32
  %i.dx = shl i32 %.6.tr.i, 2
  %i.dy = add nsw i32 %i.du, -27
  %i.dz = add i32 %i.dy, %i.dx
  %.tr.i = trunc i64 %.0.i5 to i32
  %i.ea = shl i32 %.tr.i, 2
  %6 = sub i32 %i.ea, %5
  %i.eb = icmp sgt i32 %6, %i.dz
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
end_hunk_36
begin_hunk_37_@_ZN11duckdb_zstd34ZSTD_compressBlock_btlazy2_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.fp = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = trunc i64 %i.fm to i32
  %i.fr = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fq, i1 true)
  %7 = xor i32 %i.fr, 31
  %.10.tr.i = trunc i64 %.10.i to i32
  %i.fs = shl i32 %.10.tr.i, 2
  %i.ft = add nsw i32 %i.fp, -24
  %i.fu = add i32 %i.ft, %i.fs
  %.tr364.i = trunc i64 %.0.i4 to i32
  %i.fv = shl i32 %.tr364.i, 2
  %8 = sub i32 %i.fv, %7
  %i.fw = icmp sgt i32 %8, %i.fu
  br i1 %i.fw, label %bb.ag, label %.thread60

.thread60:                                        ; preds = %bb.af, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
end_hunk_37
begin_hunk_38_@_ZN11duckdb_zstdL23ZSTD_DUBT_findBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eE:bb.a
  %i.hk = sub i32 %i.z, %.2290                    ; 2 uses
  %i.hl = add i32 %i.hk, 1
  %i.hm = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hl, i1 true)
  %6 = xor i32 %i.hm, 31
  %i.hn = load i64, ptr %3, align 8, !tbaa !27
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ho, i1 true)
  %7 = xor i32 %i.hp, 31
  %i.hq = sub nsw i32 %6, %7
  %i.hr = icmp sgt i32 %i.hj, %i.hq
  br i1 %i.hr, label %bb.ar, label %bb.as

end_hunk_38
begin_hunk_39_@_ZN11duckdb_zstdL23ZSTD_DUBT_findBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eE:bb.a
  %i.kt = sub i32 %i.z, %i.ks                     ; 2 uses
  %i.ku = add i32 %i.kt, 1
  %i.kv = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ku, i1 true)
  %8 = xor i32 %i.kv, 31
  %i.kw = load i64, ptr %3, align 8, !tbaa !27
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = add i32 %i.kx, 1
  %i.kz = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ky, i1 true)
  %9 = xor i32 %i.kz, 31
  %i.la = sub nsw i32 %8, %9
  %i.lb = icmp sgt i32 %i.kr, %i.la
  br i1 %i.lb, label %bb.bf, label %bb.bg

end_hunk_39
