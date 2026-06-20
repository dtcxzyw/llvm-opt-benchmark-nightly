inline.NumInlined: 85
inline.NumDeleted: 33
begin_hunk_0_@_ZN11duckdb_zstdL14sort_typeBstarEPKhPiS2_S2_ii:.preheader339.preheader
  %i.bsl = load i32, ptr %i.bsk, align 4, !tbaa !3
  %i.bsm = add nsw i32 %i.bsl, 8
  br label %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i

bb.jv:                                            ; preds = %bb.jt
  %i.bsn = and i64 %i.tg, 255
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.bsn
  %i.bsp = load i32, ptr %i.bso, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i

_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i:           ; preds = %bb.jv, %bb.ju, %bb.js, %bb.jr
  %i.bsq = phi i32 [ %i.bsh, %bb.js ], [ %i.bsc, %bb.jr ], [ %i.bsm, %bb.ju ], [ %i.bsp, %bb.jv ]
  %i.bsr = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ro
  br label %.outer.i.i.backedge

bb.jw:                                            ; preds = %bb.jn
  %i.bss = add nsw i32 %.sroa.23.0.i, %i.ti       ; 2 uses
  %i.bst = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.bst, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.bsu = zext nneg i32 %.0.ph.i.i to i64
  %i.bsv = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.bsu
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 24
  store i32 -1, ptr %i.bsw, align 8, !tbaa !75
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %i.bsx = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.bsx, label %_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.bsy = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.bsz = sext i32 %i.bsy to i64
  %i.bta = getelementptr inbounds [32 x i8], ptr %5, i64 %i.bsz ; 5 uses
  %i.btb = load ptr, ptr %i.bta, align 16, !tbaa !69
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bta, i64 8
  %i.btd = load ptr, ptr %i.btc, align 8, !tbaa !73
  %i.bte = getelementptr inbounds nuw i8, ptr %i.bta, i64 16
  %i.btf = load ptr, ptr %i.bte, align 16, !tbaa !74
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bta, i64 24
  %i.bth = load i32, ptr %i.btg, align 8, !tbaa !75
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bta, i64 28
  %i.btj = load i32, ptr %i.bti, align 4, !tbaa !76
  br label %.outer.i.i.backedge

.outer.i.i.backedge:                              ; preds = %bb.jz, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i, %bb.jm, %bb.jk, %bb.jj, %bb.jh, %bb.jf, %bb.je, %bb.iz, %bb.iy, %bb.ix, %bb.iu, %bb.it, %bb.is, %bb.ip, %bb.io, %bb.in, %bb.ik, %bb.ij, %bb.ii, %bb.gi, %bb.gg, %bb.ge, %bb.gb, %bb.ga, %bb.fz, %bb.fj, %bb.ep, %bb.en, %bb.em, %bb.ek, %bb.ej, %bb.ef, %bb.ee, %bb.ec, %bb.eb, %bb.dr, %bb.dp, %bb.do, %bb.dm, %bb.dl, %bb.dh, %bb.dg, %bb.de, %bb.dd
  %.sroa.23.0.i.be = phi i32 [ %.sroa.23.0.i, %bb.io ], [ %.sroa.23.0.i, %bb.ii ], [ %.sroa.23.0.i, %bb.ik ], [ %.sroa.23.0.i, %bb.ij ], [ %i.aqo, %bb.ge ], [ %i.aqo, %bb.gg ], [ %.sroa.23.0.i, %bb.gb ], [ %.sroa.23.0.i, %bb.ga ], [ %.sroa.23.0.i, %bb.fz ], [ %.sroa.23.0.i, %bb.gi ], [ %.sroa.23.0.i, %bb.ef ], [ %.sroa.23.0.i, %bb.ee ], [ %.sroa.23.0.i, %bb.ec ], [ %.sroa.23.0.i, %bb.eb ], [ %.sroa.23.0.i, %bb.en ], [ %.sroa.23.0.i, %bb.em ], [ %.sroa.23.0.i, %bb.ek ], [ %.sroa.23.0.i, %bb.ej ], [ %.sroa.23.0.i, %bb.ep ], [ %.sroa.23.0.i, %bb.dh ], [ %.sroa.23.0.i, %bb.dg ], [ %.sroa.23.0.i, %bb.de ], [ %.sroa.23.0.i, %bb.dd ], [ %.sroa.23.0.i, %bb.dp ], [ %.sroa.23.0.i, %bb.do ], [ %.sroa.23.0.i, %bb.dm ], [ %.sroa.23.0.i, %bb.dl ], [ %.sroa.23.0.i, %bb.dr ], [ %.sroa.23.0.i, %bb.fj ], [ %i.bss, %bb.jz ], [ %.sroa.23.0.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.sroa.23.1.i, %bb.jj ], [ %.sroa.23.1.i, %bb.jk ], [ %.sroa.23.1.i, %bb.jm ], [ %.sroa.23.1.i, %bb.je ], [ %.sroa.23.1.i, %bb.jf ], [ %.sroa.23.1.i, %bb.jh ], [ %.sroa.23.0.i, %bb.iz ], [ %.sroa.23.0.i, %bb.ix ], [ %.sroa.23.0.i, %bb.iy ], [ %.sroa.23.0.i, %bb.is ], [ %.sroa.23.0.i, %bb.iu ], [ %.sroa.23.0.i, %bb.it ], [ %.sroa.23.0.i, %bb.ip ], [ %.sroa.23.0.i, %bb.in ]
  %.sroa.9.3.i.be = phi i32 [ %.sroa.9.5.i, %bb.io ], [ %.sroa.9.5.i, %bb.ii ], [ %.sroa.9.5.i, %bb.ik ], [ %.sroa.9.5.i, %bb.ij ], [ %.sroa.9.3.i, %bb.ge ], [ %.sroa.9.3.i, %bb.gg ], [ %.sroa.9.7.i, %bb.gb ], [ %.sroa.9.7.i, %bb.ga ], [ %.sroa.9.7.i, %bb.fz ], [ %.sroa.9.3.i, %bb.gi ], [ %.sroa.9.3.i, %bb.ef ], [ %.sroa.9.3.i, %bb.ee ], [ %.sroa.9.3.i, %bb.ec ], [ %.sroa.9.3.i, %bb.eb ], [ %.sroa.9.3.i, %bb.en ], [ %.sroa.9.3.i, %bb.em ], [ %.sroa.9.3.i, %bb.ek ], [ %.sroa.9.3.i, %bb.ej ], [ %.sroa.9.3.i, %bb.ep ], [ %.sroa.9.3.i, %bb.dh ], [ %.sroa.9.3.i, %bb.dg ], [ %.sroa.9.3.i, %bb.de ], [ %.sroa.9.3.i, %bb.dd ], [ %.sroa.9.3.i, %bb.dp ], [ %.sroa.9.3.i, %bb.do ], [ %.sroa.9.3.i, %bb.dm ], [ %.sroa.9.3.i, %bb.dl ], [ %.sroa.9.3.i, %bb.dr ], [ %.sroa.9.3.i, %bb.fj ], [ %.sroa.9.3.i, %bb.jz ], [ %.sroa.9.6.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.sroa.9.3.i, %bb.jj ], [ %.sroa.9.3.i, %bb.jk ], [ %.sroa.9.3.i, %bb.jm ], [ %.sroa.9.3.i, %bb.je ], [ %.sroa.9.3.i, %bb.jf ], [ %.sroa.9.3.i, %bb.jh ], [ %.sroa.9.5.i, %bb.iz ], [ %.sroa.9.5.i, %bb.ix ], [ %.sroa.9.5.i, %bb.iy ], [ %.sroa.9.5.i, %bb.is ], [ %.sroa.9.5.i, %bb.iu ], [ %.sroa.9.5.i, %bb.it ], [ %.sroa.9.5.i, %bb.ip ], [ %.sroa.9.5.i, %bb.in ]
  %.sroa.0.3.i.be = phi i32 [ %.sroa.0.5.i, %bb.io ], [ %.sroa.0.5.i, %bb.ii ], [ %.sroa.0.5.i, %bb.ik ], [ %.sroa.0.5.i, %bb.ij ], [ 0, %bb.ge ], [ 0, %bb.gg ], [ %.sroa.0.7.i, %bb.gb ], [ %.sroa.0.7.i, %bb.ga ], [ %.sroa.0.7.i, %bb.fz ], [ %.sroa.0.3.i, %bb.gi ], [ %.sroa.0.3.i, %bb.ef ], [ %.sroa.0.3.i, %bb.ee ], [ %.sroa.0.3.i, %bb.ec ], [ %.sroa.0.3.i, %bb.eb ], [ %.sroa.0.3.i, %bb.en ], [ %.sroa.0.3.i, %bb.em ], [ %.sroa.0.3.i, %bb.ek ], [ %.sroa.0.3.i, %bb.ej ], [ %.sroa.0.3.i, %bb.ep ], [ %.sroa.0.3.i, %bb.dh ], [ %.sroa.0.3.i, %bb.dg ], [ %.sroa.0.3.i, %bb.de ], [ %.sroa.0.3.i, %bb.dd ], [ %.sroa.0.3.i, %bb.dp ], [ %.sroa.0.3.i, %bb.do ], [ %.sroa.0.3.i, %bb.dm ], [ %.sroa.0.3.i, %bb.dl ], [ %.sroa.0.3.i, %bb.dr ], [ %.sroa.0.3.i, %bb.fj ], [ 0, %bb.jz ], [ %.sroa.0.6.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.sroa.0.3.i, %bb.jj ], [ %.sroa.0.3.i, %bb.jk ], [ %.sroa.0.3.i, %bb.jm ], [ %.sroa.0.3.i, %bb.je ], [ %.sroa.0.3.i, %bb.jf ], [ %.sroa.0.3.i, %bb.jh ], [ %.sroa.0.5.i, %bb.iz ], [ %.sroa.0.5.i, %bb.ix ], [ %.sroa.0.5.i, %bb.iy ], [ %.sroa.0.5.i, %bb.is ], [ %.sroa.0.5.i, %bb.iu ], [ %.sroa.0.5.i, %bb.it ], [ %.sroa.0.5.i, %bb.ip ], [ %.sroa.0.5.i, %bb.in ]
  %.0463.ph.i.i.be = phi ptr [ %i.bjs, %bb.io ], [ %i.bjr, %bb.ii ], [ %.0463.ph.i.i, %bb.ik ], [ %i.bjs, %bb.ij ], [ %.0463.ph.i.i, %bb.ge ], [ %i.are, %bb.gg ], [ %.0463.ph.i.i, %bb.gb ], [ %i.apa, %bb.ga ], [ %i.apa, %bb.fz ], [ %i.arr, %bb.gi ], [ %.0463.ph.i.i, %bb.ef ], [ %.0463.ph.i.i, %bb.ee ], [ %.0463.ph.i.i, %bb.ec ], [ %.0463.ph.i.i, %bb.eb ], [ %.0165.i79.i, %bb.en ], [ %.0165.i79.i, %bb.em ], [ %.0165.i79.i, %bb.ek ], [ %.0165.i79.i, %bb.ej ], [ %i.aii, %bb.ep ], [ %.0165.i79.i, %bb.dh ], [ %.0165.i79.i, %bb.dg ], [ %.0165.i79.i, %bb.de ], [ %.0165.i79.i, %bb.dd ], [ %.0463.ph.i.i, %bb.dp ], [ %.0463.ph.i.i, %bb.do ], [ %.0463.ph.i.i, %bb.dm ], [ %.0463.ph.i.i, %bb.dl ], [ %i.afe, %bb.dr ], [ %i.amw, %bb.fj ], [ %i.btf, %bb.jz ], [ %.0463.ph.i.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.0463.ph.i.i, %bb.jj ], [ %i.bjr, %bb.jk ], [ %i.brq, %bb.jm ], [ %i.bjr, %bb.je ], [ %.0463.ph.i.i, %bb.jf ], [ %i.bqu, %bb.jh ], [ %i.bjs, %bb.iz ], [ %.0463.ph.i.i, %bb.ix ], [ %i.bjs, %bb.iy ], [ %.0463.ph.i.i, %bb.is ], [ %i.bjr, %bb.iu ], [ %i.bjs, %bb.it ], [ %i.bjs, %bb.ip ], [ %i.bjr, %bb.in ]
  %.0455.ph.i.i.be = phi ptr [ %i.bjr, %bb.io ], [ %.0455.ph.i.i, %bb.ii ], [ %i.bjs, %bb.ik ], [ %i.bjr, %bb.ij ], [ %i.apa, %bb.ge ], [ %i.arc, %bb.gg ], [ %i.apa, %bb.gb ], [ %.1456.i.i, %bb.ga ], [ %.1456.i.i, %bb.fz ], [ %i.arp, %bb.gi ], [ %.0166.i78.i, %bb.ef ], [ %.0166.i78.i, %bb.ee ], [ %.0166.i78.i, %bb.ec ], [ %.0166.i78.i, %bb.eb ], [ %.0455.ph.i.i, %bb.en ], [ %.0455.ph.i.i, %bb.em ], [ %.0455.ph.i.i, %bb.ek ], [ %.0455.ph.i.i, %bb.ej ], [ %i.aig, %bb.ep ], [ %.0455.ph.i.i, %bb.dh ], [ %.0455.ph.i.i, %bb.dg ], [ %.0455.ph.i.i, %bb.de ], [ %.0455.ph.i.i, %bb.dd ], [ %.0166.i78.i, %bb.dp ], [ %.0166.i78.i, %bb.do ], [ %.0166.i78.i, %bb.dm ], [ %.0166.i78.i, %bb.dl ], [ %i.afc, %bb.dr ], [ %i.amu, %bb.fj ], [ %i.btd, %bb.jz ], [ %.0455.ph.i.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %i.bjs, %bb.jj ], [ %.0455.ph.i.i, %bb.jk ], [ %i.bro, %bb.jm ], [ %.0455.ph.i.i, %bb.je ], [ %i.bjs, %bb.jf ], [ %i.bqs, %bb.jh ], [ %i.bjr, %bb.iz ], [ %i.bjs, %bb.ix ], [ %i.bjr, %bb.iy ], [ %i.bjs, %bb.is ], [ %.0455.ph.i.i, %bb.iu ], [ %i.bjr, %bb.it ], [ %i.bjr, %bb.ip ], [ %.0455.ph.i.i, %bb.in ]
  %.0452.ph.i.i.be = phi ptr [ %i.bnh, %bb.io ], [ %.0452.ph.i.i, %bb.ii ], [ %.0452.ph.i.i, %bb.ik ], [ %i.bmj, %bb.ij ], [ %.0452.ph.i.i, %bb.ge ], [ %i.ara, %bb.gg ], [ %.0452.ph.i.i, %bb.gb ], [ %i.aqg, %bb.ga ], [ %i.aqe, %bb.fz ], [ %i.arn, %bb.gi ], [ %.0452.ph.i.i, %bb.ef ], [ %.0452.ph.i.i, %bb.ee ], [ %.0452.ph.i.i, %bb.ec ], [ %.0452.ph.i.i, %bb.eb ], [ %.0452.ph.i.i, %bb.en ], [ %.0452.ph.i.i, %bb.em ], [ %.0452.ph.i.i, %bb.ek ], [ %.0452.ph.i.i, %bb.ej ], [ %i.aie, %bb.ep ], [ %.0452.ph.i.i, %bb.dh ], [ %.0452.ph.i.i, %bb.dg ], [ %.0452.ph.i.i, %bb.de ], [ %.0452.ph.i.i, %bb.dd ], [ %.0452.ph.i.i, %bb.dp ], [ %.0452.ph.i.i, %bb.do ], [ %.0452.ph.i.i, %bb.dm ], [ %.0452.ph.i.i, %bb.dl ], [ %i.afa, %bb.dr ], [ %i.ams, %bb.fj ], [ %i.btb, %bb.jz ], [ %i.bsr, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.0452.ph.i.i, %bb.jj ], [ %.0452.ph.i.i, %bb.jk ], [ %i.brm, %bb.jm ], [ %.0452.ph.i.i, %bb.je ], [ %.0452.ph.i.i, %bb.jf ], [ %i.bqq, %bb.jh ], [ %i.bpv, %bb.iz ], [ %.0452.ph.i.i, %bb.ix ], [ %i.bpi, %bb.iy ], [ %.0452.ph.i.i, %bb.is ], [ %.0452.ph.i.i, %bb.iu ], [ %i.bok, %bb.it ], [ %i.bnu, %bb.ip ], [ %.0452.ph.i.i, %bb.in ]
  %.0449.ph.i.i.be = phi i32 [ %i.bkq, %bb.io ], [ %i.awy, %bb.ii ], [ %i.awy, %bb.ik ], [ %i.bkq, %bb.ij ], [ -3, %bb.ge ], [ %i.arg, %bb.gg ], [ -3, %bb.gb ], [ %i.aoz, %bb.ga ], [ %i.aoz, %bb.fz ], [ %i.art, %bb.gi ], [ %i.ahf, %bb.ef ], [ %i.ahc, %bb.ee ], [ %i.agx, %bb.ec ], [ %i.ags, %bb.eb ], [ %i.ahz, %bb.en ], [ %i.ahw, %bb.em ], [ %i.ahr, %bb.ek ], [ %i.ahm, %bb.ej ], [ %i.aik, %bb.ep ], [ %i.aeb, %bb.dh ], [ %i.ady, %bb.dg ], [ %i.adt, %bb.de ], [ %i.ado, %bb.dd ], [ %i.aev, %bb.dp ], [ %i.aes, %bb.do ], [ %i.aen, %bb.dm ], [ %i.aei, %bb.dl ], [ %i.afg, %bb.dr ], [ %i.amy, %bb.fj ], [ %i.bth, %bb.jz ], [ %i.bsq, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %i.awy, %bb.jj ], [ %i.awy, %bb.jk ], [ %i.brs, %bb.jm ], [ %i.awy, %bb.je ], [ %i.awy, %bb.jf ], [ %i.bqw, %bb.jh ], [ %i.bkq, %bb.iz ], [ %i.awy, %bb.ix ], [ %i.bkq, %bb.iy ], [ %i.awy, %bb.is ], [ %i.awy, %bb.iu ], [ %i.bkq, %bb.it ], [ %i.bkq, %bb.ip ], [ %i.awy, %bb.in ]
  %.0445.ph.i.i.be = phi i32 [ %i.bnf, %bb.io ], [ %i.bmg, %bb.ii ], [ %i.bmp, %bb.ik ], [ %.0445.ph.i.i, %bb.ij ], [ %.0445.ph.i.i, %bb.ge ], [ %i.aqx, %bb.gg ], [ %i.aqm, %bb.gb ], [ %.0445.ph.i.i, %bb.ga ], [ %i.aqc, %bb.fz ], [ %i.ark, %bb.gi ], [ %i.agk, %bb.ef ], [ %i.agk, %bb.ee ], [ %i.agk, %bb.ec ], [ %i.agk, %bb.eb ], [ %.1446.i.i, %bb.en ], [ %.1446.i.i, %bb.em ], [ %.1446.i.i, %bb.ek ], [ %.1446.i.i, %bb.ej ], [ %i.aib, %bb.ep ], [ %i.adg, %bb.dh ], [ %i.adg, %bb.dg ], [ %i.adg, %bb.de ], [ %i.adg, %bb.dd ], [ %.1446.i.i, %bb.dp ], [ %.1446.i.i, %bb.do ], [ %.1446.i.i, %bb.dm ], [ %.1446.i.i, %bb.dl ], [ %i.aex, %bb.dr ], [ %i.amp, %bb.fj ], [ %i.bsy, %bb.jz ], [ %.0445.ph.i.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %i.brf, %bb.jj ], [ %.0445.ph.i.i, %bb.jk ], [ %i.brj, %bb.jm ], [ %i.bqj, %bb.je ], [ %.0445.ph.i.i, %bb.jf ], [ %i.bqn, %bb.jh ], [ %i.bpt, %bb.iz ], [ %i.bpe, %bb.ix ], [ %i.bpg, %bb.iy ], [ %i.boh, %bb.is ], [ %i.boq, %bb.iu ], [ %.0445.ph.i.i, %bb.it ], [ %i.bns, %bb.ip ], [ %i.bnd, %bb.in ]
  %.0.ph.i.i.be = phi i32 [ %.0.ph.i.i, %bb.io ], [ %.0.ph.i.i, %bb.ii ], [ %.0.ph.i.i, %bb.ik ], [ %.0.ph.i.i, %bb.ij ], [ %.0.ph.i.i, %bb.ge ], [ %i.ari, %bb.gg ], [ %.0.ph.i.i, %bb.gb ], [ %.0.ph.i.i, %bb.ga ], [ %.0.ph.i.i, %bb.fz ], [ %i.arv, %bb.gi ], [ %.1.i.i311, %bb.ef ], [ %.1.i.i311, %bb.ee ], [ %.1.i.i311, %bb.ec ], [ %.1.i.i311, %bb.eb ], [ %.1.i.i311, %bb.en ], [ %.1.i.i311, %bb.em ], [ %.1.i.i311, %bb.ek ], [ %.1.i.i311, %bb.ej ], [ %i.aim, %bb.ep ], [ %.1.i.i311, %bb.dh ], [ %.1.i.i311, %bb.dg ], [ %.1.i.i311, %bb.de ], [ %.1.i.i311, %bb.dd ], [ %.1.i.i311, %bb.dp ], [ %.1.i.i311, %bb.do ], [ %.1.i.i311, %bb.dm ], [ %.1.i.i311, %bb.dl ], [ %i.afi, %bb.dr ], [ %i.ana, %bb.fj ], [ %i.btj, %bb.jz ], [ %.0.ph.i.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.0.ph.i.i, %bb.jj ], [ %.0.ph.i.i, %bb.jk ], [ %i.bru, %bb.jm ], [ %.0.ph.i.i, %bb.je ], [ %.0.ph.i.i, %bb.jf ], [ %i.bqy, %bb.jh ], [ %.0.ph.i.i, %bb.iz ], [ %.0.ph.i.i, %bb.ix ], [ %.0.ph.i.i, %bb.iy ], [ %.0.ph.i.i, %bb.is ], [ %.0.ph.i.i, %bb.iu ], [ %.0.ph.i.i, %bb.it ], [ %.0.ph.i.i, %bb.ip ], [ %.0.ph.i.i, %bb.in ]
  br label %.outer.i.i, !llvm.loop !45

_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i: ; preds = %bb.jy, %bb.jl, %bb.jg, %bb.gh, %bb.gf, %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i, %bb.eo, %bb.dq
  %.sroa.0.3.lcssa.i = phi i32 [ %.sroa.0.3.i, %bb.dq ], [ %.sroa.0.3.i, %bb.eo ], [ %.sroa.0.3.i, %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i ], [ 0, %bb.gf ], [ %.sroa.0.3.i, %bb.gh ], [ %.sroa.0.3.i, %bb.jg ], [ %.sroa.0.3.i, %bb.jl ], [ 0, %bb.jy ] ; 3 uses
  %.sroa.23.3.i = phi i32 [ %.sroa.23.0.i, %bb.dq ], [ %.sroa.23.0.i, %bb.eo ], [ %.sroa.23.0.i, %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i ], [ %i.aqo, %bb.gf ], [ %.sroa.23.0.i, %bb.gh ], [ %.sroa.23.1.i, %bb.jg ], [ %.sroa.23.1.i, %bb.jl ], [ %i.bss, %bb.jy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.not52.i = icmp eq i32 %.sroa.23.3.i, 0
  br i1 %.not52.i, label %bb.ka, label %.thread.i

bb.ka:                                            ; preds = %_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i
  %i.btk = sub i64 %i.sf, %i.se
  %i.btl = lshr exact i64 %i.btk, 2
  %i.btm = trunc i64 %i.btl to i32
  br label %bb.kc

bb.kb:                                            ; preds = %bb.bm
  %i.btn = icmp eq i64 %i.sg, 4
  %spec.select.i294 = sext i1 %i.btn to i32
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka, %bb.bj
  %.sroa.9.2.i = phi i32 [ %.sroa.9.1.i, %bb.bj ], [ %.sroa.9.3.i, %bb.ka ], [ %.sroa.9.1.i, %bb.kb ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i, %bb.bj ], [ %.sroa.0.3.lcssa.i, %bb.ka ], [ %.sroa.0.1.i, %bb.kb ] ; 3 uses
  %.147.i = phi ptr [ %i.ru, %bb.bj ], [ %i.sd, %bb.ka ], [ %i.sd, %bb.kb ] ; 3 uses
  %.3.i = phi i32 [ %i.rv, %bb.bj ], [ %i.btm, %bb.ka ], [ %spec.select.i294, %bb.kb ] ; 4 uses
  %i.bto = icmp ult ptr %.147.i, %i.cb
  br i1 %i.bto, label %thread-pre-split.i, label %bb.kd, !llvm.loop !105

.thread.i:                                        ; preds = %_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i
  %i.btp = add nsw i32 %.sroa.23.3.i, %.0.i       ; 2 uses
  %i.btq = icmp slt i64 %i.sc, %.idx170.i
  br i1 %i.btq, label %thread-pre-split.i, label %.thread158.i, !llvm.loop !105

bb.kd:                                            ; preds = %bb.kc
  %.not53.i = icmp eq i32 %.3.i, 0
  br i1 %.not53.i, label %.thread158.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.btr = sext i32 %.3.i to i64
  %i.bts = getelementptr inbounds [4 x i8], ptr %.147.i, i64 %i.btr
  store i32 %.3.i, ptr %i.bts, align 4, !tbaa !3
  br label %.thread158.i

.thread158.i:                                     ; preds = %.thread.i, %bb.ke, %bb.kd
  %.sroa.9.2148168.i = phi i32 [ %.sroa.9.2.i, %bb.kd ], [ %.sroa.9.2.i, %bb.ke ], [ %.sroa.9.3.i, %.thread.i ]
  %.sroa.0.2150167.i = phi i32 [ %.sroa.0.2.i, %bb.kd ], [ %.sroa.0.2.i, %bb.ke ], [ %.sroa.0.3.lcssa.i, %.thread.i ]
  %.2156166.i = phi i32 [ %.0.i, %bb.kd ], [ %.0.i, %bb.ke ], [ %i.btp, %.thread.i ]
  %i.btt = icmp eq i32 %.2156166.i, 0
  br i1 %i.btt, label %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit, label %bb.kf

bb.kf:                                            ; preds = %.thread158.i
  %i.btu = getelementptr inbounds i8, ptr %.045218.i, i64 %i.rn
  %i.btv = load i32, ptr %1, align 4, !tbaa !3    ; 2 uses
  %i.btw = icmp sgt i32 %i.btv, %i.rd
  br i1 %i.btw, label %.preheader179.i, label %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit, !llvm.loop !106

_ZN11duckdb_zstdL6trsortEPiS0_ii.exit:            ; preds = %.thread158.i, %bb.kf, %_ZN11duckdb_zstdL6tr_ilgEi.exit.i
  %i.btx = load i8, ptr %i.c, align 1, !tbaa !7
  %i.bty = zext i8 %i.btx to i32
  br label %.preheader

.preheader:                                       ; preds = %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit, %.critedge6
  %.7459 = phi i32 [ %i.bty, %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit ], [ %.11, %.critedge6 ]
  %.13259458 = phi i32 [ %i.a, %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit ], [ %.15.lcssa, %.critedge6 ] ; 2 uses
  %.4269457 = phi i32 [ %i.bu, %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit ], [ %i.but, %.critedge6 ]
  %.not317111 = icmp eq i32 %.13259458, 0
  br i1 %.not317111, label %.critedge6.thread, label %.lr.ph114

.lr.ph114:                                        ; preds = %.preheader
  %i.btz = zext nneg i32 %.13259458 to i64
  br label %bb.kh

bb.kg:                                            ; preds = %bb.kh
  %.not317 = icmp eq i64 %i.bua, 0
  br i1 %.not317, label %.critedge6.thread, label %bb.kh, !llvm.loop !107

bb.kh:                                            ; preds = %.lr.ph114, %bb.kg
  %.3113 = phi i32 [ %.7459, %.lr.ph114 ], [ %i.bud, %bb.kg ]
  %indvars.iv594112 = phi i64 [ %i.btz, %.lr.ph114 ], [ %i.bua, %bb.kg ] ; 3 uses
  %i.bua = add nsw i64 %indvars.iv594112, -1      ; 5 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %0, i64 %i.bua
  %i.buc = load i8, ptr %i.bub, align 1, !tbaa !7
  %i.bud = zext i8 %i.buc to i32                  ; 4 uses
  %.not286 = icmp sgt i32 %.3113, %i.bud
  br i1 %.not286, label %bb.ki, label %bb.kg, !llvm.loop !107

bb.ki:                                            ; preds = %bb.kh
  %i.bue = trunc nuw nsw i64 %indvars.iv594112 to i32 ; 2 uses
  %i.buf = trunc nuw nsw i64 %i.bua to i32        ; 2 uses
  %i.bug = add nsw i32 %i.bue, -2                 ; 2 uses
  %i.buh = icmp sgt i64 %indvars.iv594112, 1
  br i1 %i.buh, label %.lr.ph451, label %.critedge6

.lr.ph451:                                        ; preds = %bb.ki, %bb.kj
  %.4449 = phi i32 [ %i.bul, %bb.kj ], [ %i.bud, %bb.ki ]
  %.15448 = phi i32 [ %i.bum, %bb.kj ], [ %i.bug, %bb.ki ] ; 4 uses
  %i.bui = zext nneg i32 %.15448 to i64
  %i.buj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bui
  %i.buk = load i8, ptr %i.buj, align 1, !tbaa !7
  %i.bul = zext i8 %i.buk to i32                  ; 4 uses
  %.not287 = icmp samesign ult i32 %.4449, %i.bul
  br i1 %.not287, label %.critedge6, label %bb.kj

bb.kj:                                            ; preds = %.lr.ph451
  %i.bum = add nsw i32 %.15448, -1
  %i.bun = icmp sgt i32 %.15448, 0
  br i1 %i.bun, label %.lr.ph451, label %.critedge6, !llvm.loop !108

.critedge6:                                       ; preds = %bb.kj, %.lr.ph451, %bb.ki
  %.15.lcssa = phi i32 [ %i.bug, %bb.ki ], [ -1, %bb.kj ], [ %.15448, %.lr.ph451 ] ; 3 uses
  %.11 = phi i32 [ %i.bud, %bb.ki ], [ %i.bul, %.lr.ph451 ], [ %i.bul, %bb.kj ]
  %i.buo = icmp eq i64 %i.bua, 0
  %i.bup = sub nsw i32 %i.buf, %.15.lcssa
  %i.buq = icmp sgt i32 %i.bup, 1
  %or.cond = select i1 %i.buo, i1 true, i1 %i.buq
  %i.bur = sub nsw i32 0, %i.bue
  %i.bus = select i1 %or.cond, i32 %i.buf, i32 %i.bur
  %i.but = add nsw i32 %.4269457, -1              ; 2 uses
  %i.buu = sext i32 %i.but to i64
  %i.buv = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.buu
  %i.buw = load i32, ptr %i.buv, align 4, !tbaa !3
  %i.bux = sext i32 %i.buw to i64
  %i.buy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bux
  store i32 %i.bus, ptr %i.buy, align 4, !tbaa !3
  %i.buz = icmp sgt i32 %.15.lcssa, -1
  br i1 %i.buz, label %.preheader, label %.critedge6.thread, !llvm.loop !109

.critedge6.thread:                                ; preds = %.critedge6, %.preheader, %bb.kg
  %i.bva = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %i.bva, align 4, !tbaa !3
  br label %.lr.ph472

.lr.ph472:                                        ; preds = %._crit_edge473, %.critedge6.thread
  %indvars.iv609 = phi i64 [ 254, %.critedge6.thread ], [ %indvars.iv.next610, %._crit_edge473 ] ; 7 uses
  %.0262476 = phi i32 [ %i.eb, %.critedge6.thread ], [ %.2264.lcssa, %._crit_edge473 ]
  %indvars611 = trunc i64 %indvars.iv609 to i32   ; 3 uses
  %i.bvb = add nuw nsw i32 %indvars611, 1
  %i.bvc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv609
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 4
  %i.bve = load i32, ptr %i.bvd, align 4, !tbaa !3
  %i.bvf = add nsw i32 %i.bve, -1
  %invariant.gep918 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv609
  %indvars.iv609.tr = trunc i64 %indvars.iv609 to i32
  %i.bvg = shl i32 %indvars.iv609.tr, 8           ; 2 uses
  br label %bb.kk

bb.kk:                                            ; preds = %.lr.ph472, %._crit_edge465
  %indvars.iv606 = phi i64 [ 255, %.lr.ph472 ], [ %indvars.iv.next607, %._crit_edge465 ] ; 3 uses
  %.17469 = phi i32 [ %i.bvf, %.lr.ph472 ], [ %.18.lcssa, %._crit_edge465 ] ; 2 uses
  %.1263468 = phi i32 [ %.0262476, %.lr.ph472 ], [ %.2264.lcssa, %._crit_edge465 ] ; 3 uses
  %.idx807 = shl i64 %indvars.iv606, 10
  %gep919 = getelementptr i8, ptr %invariant.gep918, i64 %.idx807 ; 2 uses
  %i.bvh = load i32, ptr %gep919, align 4, !tbaa !3
  %i.bvi = sub i32 %.17469, %i.bvh                ; 2 uses
  store i32 %.17469, ptr %gep919, align 4, !tbaa !3
  %6 = trunc nuw nsw i64 %indvars.iv606 to i32
  %7 = or i32 %i.bvg, %6
  %8 = sext i32 %7 to i64
  %i.bvj = getelementptr inbounds [4 x i8], ptr %3, i64 %8
  %i.bvk = load i32, ptr %i.bvj, align 4, !tbaa !3 ; 2 uses
  %.not460 = icmp sgt i32 %i.bvk, %.1263468
  br i1 %.not460, label %._crit_edge465, label %.lr.ph464.preheader

.lr.ph464.preheader:                              ; preds = %bb.kk
  %i.bvl = sext i32 %i.bvi to i64                 ; 5 uses
  %i.bvm = sext i32 %.1263468 to i64              ; 6 uses
  %i.bvn = sext i32 %i.bvk to i64                 ; 2 uses
  %i.bvo = sub nsw i64 %i.bvm, %i.bvn
  %i.bvp = add nsw i64 %i.bvo, 1                  ; 3 uses
  %min.iters.check235 = icmp ult i64 %i.bvp, 8
  br i1 %min.iters.check235, label %.lr.ph464.preheader248, label %vector.memcheck233

vector.memcheck233:                               ; preds = %.lr.ph464.preheader
  %i.bvq = sub nsw i64 %i.bvm, %i.bvl
  %i.bvr = and i64 %i.bvq, 4611686018427387896
  %diff.check = icmp eq i64 %i.bvr, 0
  br i1 %diff.check, label %.lr.ph464.preheader248, label %vector.ph236

vector.ph236:                                     ; preds = %vector.memcheck233
  %n.vec238 = and i64 %i.bvp, -8                  ; 4 uses
  %i.bvs = sub nsw i64 %i.bvm, %n.vec238          ; 2 uses
  %i.bvt = sub nsw i64 %i.bvl, %n.vec238          ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph236
  %index240 = phi i64 [ 0, %vector.ph236 ], [ %index.next243, %vector.body239 ] ; 3 uses
  %i.bvu = sub i64 %i.bvm, %index240
  %i.bvv = sub i64 %i.bvl, %index240
  %i.bvw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvu ; 2 uses
  %i.bvx = getelementptr inbounds i8, ptr %i.bvw, i64 -12
  %i.bvy = getelementptr inbounds i8, ptr %i.bvw, i64 -28
  %wide.load241 = load <4 x i32>, ptr %i.bvx, align 4, !tbaa !3
  %wide.load242 = load <4 x i32>, ptr %i.bvy, align 4, !tbaa !3
  %i.bvz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvv ; 2 uses
  %i.bwa = getelementptr inbounds i8, ptr %i.bvz, i64 -12
  %i.bwb = getelementptr inbounds i8, ptr %i.bvz, i64 -28
  store <4 x i32> %wide.load241, ptr %i.bwa, align 4, !tbaa !3
  store <4 x i32> %wide.load242, ptr %i.bwb, align 4, !tbaa !3
  %index.next243 = add nuw i64 %index240, 8       ; 2 uses
  %i.bwc = icmp eq i64 %index.next243, %n.vec238
  br i1 %i.bwc, label %middle.block244, label %vector.body239, !llvm.loop !110

middle.block244:                                  ; preds = %vector.body239
  %cmp.n245 = icmp eq i64 %i.bvp, %n.vec238
  br i1 %cmp.n245, label %._crit_edge465.loopexit, label %.lr.ph464.preheader248

.lr.ph464.preheader248:                           ; preds = %vector.memcheck233, %.lr.ph464.preheader, %middle.block244
  %indvars.iv601.ph = phi i64 [ %i.bvm, %vector.memcheck233 ], [ %i.bvm, %.lr.ph464.preheader ], [ %i.bvs, %middle.block244 ]
  %indvars.iv599.ph = phi i64 [ %i.bvl, %vector.memcheck233 ], [ %i.bvl, %.lr.ph464.preheader ], [ %i.bvt, %middle.block244 ]
  br label %.lr.ph464

.lr.ph464:                                        ; preds = %.lr.ph464.preheader248, %.lr.ph464
  %indvars.iv601 = phi i64 [ %indvars.iv.next602, %.lr.ph464 ], [ %indvars.iv601.ph, %.lr.ph464.preheader248 ] ; 3 uses
  %indvars.iv599 = phi i64 [ %indvars.iv.next600, %.lr.ph464 ], [ %indvars.iv599.ph, %.lr.ph464.preheader248 ] ; 2 uses
  %i.bwd = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv601
  %i.bwe = load i32, ptr %i.bwd, align 4, !tbaa !3
  %i.bwf = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv599
  store i32 %i.bwe, ptr %i.bwf, align 4, !tbaa !3
  %indvars.iv.next600 = add nsw i64 %indvars.iv599, -1 ; 2 uses
  %indvars.iv.next602 = add nsw i64 %indvars.iv601, -1 ; 2 uses
  %.not.not = icmp sgt i64 %indvars.iv601, %i.bvn
  br i1 %.not.not, label %.lr.ph464, label %._crit_edge465.loopexit, !llvm.loop !111

._crit_edge465.loopexit:                          ; preds = %.lr.ph464, %middle.block244
  %indvars.iv.next600.lcssa = phi i64 [ %i.bvt, %middle.block244 ], [ %indvars.iv.next600, %.lr.ph464 ]
  %indvars.iv.next602.lcssa = phi i64 [ %i.bvs, %middle.block244 ], [ %indvars.iv.next602, %.lr.ph464 ]
  %i.bwg = trunc nsw i64 %indvars.iv.next602.lcssa to i32
  %i.bwh = trunc nsw i64 %indvars.iv.next600.lcssa to i32
  br label %._crit_edge465

._crit_edge465:                                   ; preds = %._crit_edge465.loopexit, %bb.kk
  %.2264.lcssa = phi i32 [ %.1263468, %bb.kk ], [ %i.bwg, %._crit_edge465.loopexit ] ; 2 uses
  %.18.lcssa = phi i32 [ %i.bvi, %bb.kk ], [ %i.bwh, %._crit_edge465.loopexit ] ; 3 uses
  %indvars.iv.next607 = add nsw i64 %indvars.iv606, -1 ; 2 uses
  %i.bwi = icmp samesign ult i64 %indvars.iv609, %indvars.iv.next607
  br i1 %i.bwi, label %bb.kk, label %._crit_edge473, !llvm.loop !112

._crit_edge473:                                   ; preds = %._crit_edge465
  %i.bwj = shl i32 %indvars611, 8
  %i.bwk = or i32 %i.bwj, %indvars611
  %i.bwl = sext i32 %i.bwk to i64
  %i.bwm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bwl ; 2 uses
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !3
  %i.bwo = add i32 %.18.lcssa, 1
  %i.bwp = sub i32 %i.bwo, %i.bwn
  %i.bwq = or i32 %i.bvg, %i.bvb
  %i.bwr = sext i32 %i.bwq to i64
  %i.bws = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bwr
  store i32 %i.bwp, ptr %i.bws, align 4, !tbaa !3
  store i32 %.18.lcssa, ptr %i.bwm, align 4, !tbaa !3
  %indvars.iv.next610 = add nsw i64 %indvars.iv609, -1
  %.not = icmp eq i64 %indvars.iv609, 0
  br i1 %.not, label %.loopexit, label %.lr.ph472, !llvm.loop !113

.loopexit:                                        ; preds = %._crit_edge473, %bb.f
  ret i32 %i.bu
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZN11duckdb_zstd6divbwtEPKhPhPiiS2_S3_i(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %3, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.bk, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %3, 2
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %3, 1
  br i1 %i.e, label %bb.d, label %bb.bk

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %0, align 1, !tbaa !7
  store i8 %i.f, ptr %1, align 1, !tbaa !7
  br label %bb.bk

bb.e:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i32 %3, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.071 = phi ptr [ %i.k, %bb.f ], [ %2, %bb.e ]  ; 34 uses
  %i.l = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #7 ; 11 uses
  %i.m = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #7 ; 9 uses
  %i.n = icmp ne ptr %.071, null
  %i.o = icmp ne ptr %i.l, null
  %or.cond5 = and i1 %i.n, %i.o
  %i.p = icmp ne ptr %i.m, null
  %or.cond7 = and i1 %or.cond5, %i.p
  br i1 %or.cond7, label %bb.h, label %bb.bi

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc noundef i32 @_ZN11duckdb_zstdL14sort_typeBstarEPKhPiS2_S2_ii(ptr noundef %0, ptr noundef %.071, ptr noundef %i.l, ptr noundef %i.m, i32 noundef %3) ; 2 uses
  %i.r = icmp eq ptr %4, null
  %i.s = icmp eq ptr %5, null
  %or.cond9 = or i1 %i.r, %i.s
  br i1 %or.cond9, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %i.t = icmp sgt i32 %i.q, 0
  %i.u = ptrtoint ptr %.071 to i64                ; 3 uses
  br i1 %i.t, label %.preheader.i, label %.lr.ph127.i

.preheader.i:                                     ; preds = %bb.i, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 254, %bb.i ] ; 4 uses
  %indvars131.i = trunc i64 %indvars.iv.i to i32  ; 2 uses
  %i.v = add nuw nsw i32 %indvars131.i, 1
  %i.w = shl i32 %indvars131.i, 8                 ; 3 uses
  %i.x = or i32 %i.w, %i.v
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = sext i32 %i.aa to i64
  %.idx.i = shl nsw i64 %i.ab, 2                  ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.071, i64 %.idx.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = sext i32 %i.af to i64
  %.idx129.i = shl nsw i64 %i.ag, 2               ; 2 uses
  %.not112117.not.i = icmp slt i64 %.idx.i, %.idx129.i
  br i1 %.not112117.not.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ah = getelementptr i8, ptr %.071, i64 %.idx129.i
  %.096116.i = getelementptr i8, ptr %i.ah, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %.096120.i = phi ptr [ %.096.i, %bb.s ], [ %.096116.i, %.lr.ph.preheader.i ] ; 4 uses
  %.0119.i = phi i32 [ %.2.i, %bb.s ], [ -1, %.lr.ph.preheader.i ] ; 6 uses
  %.090118.i = phi ptr [ %.292.i, %bb.s ], [ null, %.lr.ph.preheader.i ] ; 4 uses
  %i.ai = load i32, ptr %.096120.i, align 4, !tbaa !3 ; 7 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.q

bb.j:                                             ; preds = %.lr.ph.i
  %i.ak = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !7   ; 2 uses
end_hunk_0
