inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11duckdb_zstdL14sort_typeBstarEPKhPiS2_S2_ii:.preheader339.preheader
  br i1 %i.bsy, label %_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.bsz = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.bta = sext i32 %i.bsz to i64
  %i.btb = getelementptr inbounds [32 x i8], ptr %5, i64 %i.bta ; 5 uses
  %i.btc = load ptr, ptr %i.btb, align 16, !tbaa !69
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  %i.bte = load ptr, ptr %i.btd, align 8, !tbaa !73
  %i.btf = getelementptr inbounds nuw i8, ptr %i.btb, i64 16
  %i.btg = load ptr, ptr %i.btf, align 16, !tbaa !74
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btb, i64 24
  %i.bti = load i32, ptr %i.bth, align 8, !tbaa !75
  %i.btj = getelementptr inbounds nuw i8, ptr %i.btb, i64 28
  %i.btk = load i32, ptr %i.btj, align 4, !tbaa !76
  br label %.outer.i.i.backedge

.outer.i.i.backedge:                              ; preds = %bb.jz, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i, %bb.jm, %bb.jk, %bb.jj, %bb.jh, %bb.jf, %bb.je, %bb.iz, %bb.iy, %bb.ix, %bb.iu, %bb.it, %bb.is, %bb.ip, %bb.io, %bb.in, %bb.ik, %bb.ij, %bb.ii, %bb.gi, %bb.gg, %bb.ge, %bb.gb, %bb.ga, %bb.fz, %bb.fj, %bb.ep, %bb.en, %bb.em, %bb.ek, %bb.ej, %bb.ef, %bb.ee, %bb.ec, %bb.eb, %bb.dr, %bb.dp, %bb.do, %bb.dm, %bb.dl, %bb.dh, %bb.dg, %bb.de, %bb.dd
  %.sroa.23.0.i.be = phi i32 [ %.sroa.23.0.i, %bb.io ], [ %.sroa.23.0.i, %bb.ii ], [ %.sroa.23.0.i, %bb.ik ], [ %.sroa.23.0.i, %bb.ij ], [ %i.aqo, %bb.ge ], [ %i.aqo, %bb.gg ], [ %.sroa.23.0.i, %bb.gb ], [ %.sroa.23.0.i, %bb.ga ], [ %.sroa.23.0.i, %bb.fz ], [ %.sroa.23.0.i, %bb.gi ], [ %.sroa.23.0.i, %bb.ef ], [ %.sroa.23.0.i, %bb.ee ], [ %.sroa.23.0.i, %bb.ec ], [ %.sroa.23.0.i, %bb.eb ], [ %.sroa.23.0.i, %bb.en ], [ %.sroa.23.0.i, %bb.em ], [ %.sroa.23.0.i, %bb.ek ], [ %.sroa.23.0.i, %bb.ej ], [ %.sroa.23.0.i, %bb.ep ], [ %.sroa.23.0.i, %bb.dh ], [ %.sroa.23.0.i, %bb.dg ], [ %.sroa.23.0.i, %bb.de ], [ %.sroa.23.0.i, %bb.dd ], [ %.sroa.23.0.i, %bb.dp ], [ %.sroa.23.0.i, %bb.do ], [ %.sroa.23.0.i, %bb.dm ], [ %.sroa.23.0.i, %bb.dl ], [ %.sroa.23.0.i, %bb.dr ], [ %.sroa.23.0.i, %bb.fj ], [ %i.bst, %bb.jz ], [ %.sroa.23.0.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.sroa.23.1.i, %bb.jj ], [ %.sroa.23.1.i, %bb.jk ], [ %.sroa.23.1.i, %bb.jm ], [ %.sroa.23.1.i, %bb.je ], [ %.sroa.23.1.i, %bb.jf ], [ %.sroa.23.1.i, %bb.jh ], [ %.sroa.23.0.i, %bb.iz ], [ %.sroa.23.0.i, %bb.ix ], [ %.sroa.23.0.i, %bb.iy ], [ %.sroa.23.0.i, %bb.is ], [ %.sroa.23.0.i, %bb.iu ], [ %.sroa.23.0.i, %bb.it ], [ %.sroa.23.0.i, %bb.ip ], [ %.sroa.23.0.i, %bb.in ]
  %.sroa.9.3.i.be = phi i32 [ %.sroa.9.5.i, %bb.io ], [ %.sroa.9.5.i, %bb.ii ], [ %.sroa.9.5.i, %bb.ik ], [ %.sroa.9.5.i, %bb.ij ], [ %.sroa.9.3.i, %bb.ge ], [ %.sroa.9.3.i, %bb.gg ], [ %.sroa.9.7.i, %bb.gb ], [ %.sroa.9.7.i, %bb.ga ], [ %.sroa.9.7.i, %bb.fz ], [ %.sroa.9.3.i, %bb.gi ], [ %.sroa.9.3.i, %bb.ef ], [ %.sroa.9.3.i, %bb.ee ], [ %.sroa.9.3.i, %bb.ec ], [ %.sroa.9.3.i, %bb.eb ], [ %.sroa.9.3.i, %bb.en ], [ %.sroa.9.3.i, %bb.em ], [ %.sroa.9.3.i, %bb.ek ], [ %.sroa.9.3.i, %bb.ej ], [ %.sroa.9.3.i, %bb.ep ], [ %.sroa.9.3.i, %bb.dh ], [ %.sroa.9.3.i, %bb.dg ], [ %.sroa.9.3.i, %bb.de ], [ %.sroa.9.3.i, %bb.dd ], [ %.sroa.9.3.i, %bb.dp ], [ %.sroa.9.3.i, %bb.do ], [ %.sroa.9.3.i, %bb.dm ], [ %.sroa.9.3.i, %bb.dl ], [ %.sroa.9.3.i, %bb.dr ], [ %.sroa.9.3.i, %bb.fj ], [ %.sroa.9.3.i, %bb.jz ], [ %.sroa.9.6.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.sroa.9.3.i, %bb.jj ], [ %.sroa.9.3.i, %bb.jk ], [ %.sroa.9.3.i, %bb.jm ], [ %.sroa.9.3.i, %bb.je ], [ %.sroa.9.3.i, %bb.jf ], [ %.sroa.9.3.i, %bb.jh ], [ %.sroa.9.5.i, %bb.iz ], [ %.sroa.9.5.i, %bb.ix ], [ %.sroa.9.5.i, %bb.iy ], [ %.sroa.9.5.i, %bb.is ], [ %.sroa.9.5.i, %bb.iu ], [ %.sroa.9.5.i, %bb.it ], [ %.sroa.9.5.i, %bb.ip ], [ %.sroa.9.5.i, %bb.in ]
  %.sroa.0.3.i.be = phi i32 [ %.sroa.0.5.i, %bb.io ], [ %.sroa.0.5.i, %bb.ii ], [ %.sroa.0.5.i, %bb.ik ], [ %.sroa.0.5.i, %bb.ij ], [ 0, %bb.ge ], [ 0, %bb.gg ], [ %.sroa.0.7.i, %bb.gb ], [ %.sroa.0.7.i, %bb.ga ], [ %.sroa.0.7.i, %bb.fz ], [ %.sroa.0.3.i, %bb.gi ], [ %.sroa.0.3.i, %bb.ef ], [ %.sroa.0.3.i, %bb.ee ], [ %.sroa.0.3.i, %bb.ec ], [ %.sroa.0.3.i, %bb.eb ], [ %.sroa.0.3.i, %bb.en ], [ %.sroa.0.3.i, %bb.em ], [ %.sroa.0.3.i, %bb.ek ], [ %.sroa.0.3.i, %bb.ej ], [ %.sroa.0.3.i, %bb.ep ], [ %.sroa.0.3.i, %bb.dh ], [ %.sroa.0.3.i, %bb.dg ], [ %.sroa.0.3.i, %bb.de ], [ %.sroa.0.3.i, %bb.dd ], [ %.sroa.0.3.i, %bb.dp ], [ %.sroa.0.3.i, %bb.do ], [ %.sroa.0.3.i, %bb.dm ], [ %.sroa.0.3.i, %bb.dl ], [ %.sroa.0.3.i, %bb.dr ], [ %.sroa.0.3.i, %bb.fj ], [ 0, %bb.jz ], [ %.sroa.0.6.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.sroa.0.3.i, %bb.jj ], [ %.sroa.0.3.i, %bb.jk ], [ %.sroa.0.3.i, %bb.jm ], [ %.sroa.0.3.i, %bb.je ], [ %.sroa.0.3.i, %bb.jf ], [ %.sroa.0.3.i, %bb.jh ], [ %.sroa.0.5.i, %bb.iz ], [ %.sroa.0.5.i, %bb.ix ], [ %.sroa.0.5.i, %bb.iy ], [ %.sroa.0.5.i, %bb.is ], [ %.sroa.0.5.i, %bb.iu ], [ %.sroa.0.5.i, %bb.it ], [ %.sroa.0.5.i, %bb.ip ], [ %.sroa.0.5.i, %bb.in ]
  %.0463.ph.i.i.be = phi ptr [ %i.bjt, %bb.io ], [ %i.bjs, %bb.ii ], [ %.0463.ph.i.i, %bb.ik ], [ %i.bjt, %bb.ij ], [ %.0463.ph.i.i, %bb.ge ], [ %i.are, %bb.gg ], [ %.0463.ph.i.i, %bb.gb ], [ %i.apa, %bb.ga ], [ %i.apa, %bb.fz ], [ %i.arr, %bb.gi ], [ %.0463.ph.i.i, %bb.ef ], [ %.0463.ph.i.i, %bb.ee ], [ %.0463.ph.i.i, %bb.ec ], [ %.0463.ph.i.i, %bb.eb ], [ %.0165.i79.i, %bb.en ], [ %.0165.i79.i, %bb.em ], [ %.0165.i79.i, %bb.ek ], [ %.0165.i79.i, %bb.ej ], [ %i.aii, %bb.ep ], [ %.0165.i79.i, %bb.dh ], [ %.0165.i79.i, %bb.dg ], [ %.0165.i79.i, %bb.de ], [ %.0165.i79.i, %bb.dd ], [ %.0463.ph.i.i, %bb.dp ], [ %.0463.ph.i.i, %bb.do ], [ %.0463.ph.i.i, %bb.dm ], [ %.0463.ph.i.i, %bb.dl ], [ %i.afe, %bb.dr ], [ %i.amw, %bb.fj ], [ %i.btg, %bb.jz ], [ %.0463.ph.i.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.0463.ph.i.i, %bb.jj ], [ %i.bjs, %bb.jk ], [ %i.brr, %bb.jm ], [ %i.bjs, %bb.je ], [ %.0463.ph.i.i, %bb.jf ], [ %i.bqv, %bb.jh ], [ %i.bjt, %bb.iz ], [ %.0463.ph.i.i, %bb.ix ], [ %i.bjt, %bb.iy ], [ %.0463.ph.i.i, %bb.is ], [ %i.bjs, %bb.iu ], [ %i.bjt, %bb.it ], [ %i.bjt, %bb.ip ], [ %i.bjs, %bb.in ]
  %.0455.ph.i.i.be = phi ptr [ %i.bjs, %bb.io ], [ %.0455.ph.i.i, %bb.ii ], [ %i.bjt, %bb.ik ], [ %i.bjs, %bb.ij ], [ %i.apa, %bb.ge ], [ %i.arc, %bb.gg ], [ %i.apa, %bb.gb ], [ %.1456.i.i, %bb.ga ], [ %.1456.i.i, %bb.fz ], [ %i.arp, %bb.gi ], [ %.0166.i78.i, %bb.ef ], [ %.0166.i78.i, %bb.ee ], [ %.0166.i78.i, %bb.ec ], [ %.0166.i78.i, %bb.eb ], [ %.0455.ph.i.i, %bb.en ], [ %.0455.ph.i.i, %bb.em ], [ %.0455.ph.i.i, %bb.ek ], [ %.0455.ph.i.i, %bb.ej ], [ %i.aig, %bb.ep ], [ %.0455.ph.i.i, %bb.dh ], [ %.0455.ph.i.i, %bb.dg ], [ %.0455.ph.i.i, %bb.de ], [ %.0455.ph.i.i, %bb.dd ], [ %.0166.i78.i, %bb.dp ], [ %.0166.i78.i, %bb.do ], [ %.0166.i78.i, %bb.dm ], [ %.0166.i78.i, %bb.dl ], [ %i.afc, %bb.dr ], [ %i.amu, %bb.fj ], [ %i.bte, %bb.jz ], [ %.0455.ph.i.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %i.bjt, %bb.jj ], [ %.0455.ph.i.i, %bb.jk ], [ %i.brp, %bb.jm ], [ %.0455.ph.i.i, %bb.je ], [ %i.bjt, %bb.jf ], [ %i.bqt, %bb.jh ], [ %i.bjs, %bb.iz ], [ %i.bjt, %bb.ix ], [ %i.bjs, %bb.iy ], [ %i.bjt, %bb.is ], [ %.0455.ph.i.i, %bb.iu ], [ %i.bjs, %bb.it ], [ %i.bjs, %bb.ip ], [ %.0455.ph.i.i, %bb.in ]
  %.0452.ph.i.i.be = phi ptr [ %i.bni, %bb.io ], [ %.0452.ph.i.i, %bb.ii ], [ %.0452.ph.i.i, %bb.ik ], [ %i.bmk, %bb.ij ], [ %.0452.ph.i.i, %bb.ge ], [ %i.ara, %bb.gg ], [ %.0452.ph.i.i, %bb.gb ], [ %i.aqg, %bb.ga ], [ %i.aqe, %bb.fz ], [ %i.arn, %bb.gi ], [ %.0452.ph.i.i, %bb.ef ], [ %.0452.ph.i.i, %bb.ee ], [ %.0452.ph.i.i, %bb.ec ], [ %.0452.ph.i.i, %bb.eb ], [ %.0452.ph.i.i, %bb.en ], [ %.0452.ph.i.i, %bb.em ], [ %.0452.ph.i.i, %bb.ek ], [ %.0452.ph.i.i, %bb.ej ], [ %i.aie, %bb.ep ], [ %.0452.ph.i.i, %bb.dh ], [ %.0452.ph.i.i, %bb.dg ], [ %.0452.ph.i.i, %bb.de ], [ %.0452.ph.i.i, %bb.dd ], [ %.0452.ph.i.i, %bb.dp ], [ %.0452.ph.i.i, %bb.do ], [ %.0452.ph.i.i, %bb.dm ], [ %.0452.ph.i.i, %bb.dl ], [ %i.afa, %bb.dr ], [ %i.ams, %bb.fj ], [ %i.btc, %bb.jz ], [ %i.bss, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.0452.ph.i.i, %bb.jj ], [ %.0452.ph.i.i, %bb.jk ], [ %i.brn, %bb.jm ], [ %.0452.ph.i.i, %bb.je ], [ %.0452.ph.i.i, %bb.jf ], [ %i.bqr, %bb.jh ], [ %i.bpw, %bb.iz ], [ %.0452.ph.i.i, %bb.ix ], [ %i.bpj, %bb.iy ], [ %.0452.ph.i.i, %bb.is ], [ %.0452.ph.i.i, %bb.iu ], [ %i.bol, %bb.it ], [ %i.bnv, %bb.ip ], [ %.0452.ph.i.i, %bb.in ]
  %.0449.ph.i.i.be = phi i32 [ %i.bkr, %bb.io ], [ %i.awy, %bb.ii ], [ %i.awy, %bb.ik ], [ %i.bkr, %bb.ij ], [ -3, %bb.ge ], [ %i.arg, %bb.gg ], [ -3, %bb.gb ], [ %i.aoz, %bb.ga ], [ %i.aoz, %bb.fz ], [ %i.art, %bb.gi ], [ %i.ahf, %bb.ef ], [ %i.ahc, %bb.ee ], [ %i.agx, %bb.ec ], [ %i.ags, %bb.eb ], [ %i.ahz, %bb.en ], [ %i.ahw, %bb.em ], [ %i.ahr, %bb.ek ], [ %i.ahm, %bb.ej ], [ %i.aik, %bb.ep ], [ %i.aeb, %bb.dh ], [ %i.ady, %bb.dg ], [ %i.adt, %bb.de ], [ %i.ado, %bb.dd ], [ %i.aev, %bb.dp ], [ %i.aes, %bb.do ], [ %i.aen, %bb.dm ], [ %i.aei, %bb.dl ], [ %i.afg, %bb.dr ], [ %i.amy, %bb.fj ], [ %i.bti, %bb.jz ], [ %i.bsr, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %i.awy, %bb.jj ], [ %i.awy, %bb.jk ], [ %i.brt, %bb.jm ], [ %i.awy, %bb.je ], [ %i.awy, %bb.jf ], [ %i.bqx, %bb.jh ], [ %i.bkr, %bb.iz ], [ %i.awy, %bb.ix ], [ %i.bkr, %bb.iy ], [ %i.awy, %bb.is ], [ %i.awy, %bb.iu ], [ %i.bkr, %bb.it ], [ %i.bkr, %bb.ip ], [ %i.awy, %bb.in ]
  %.0445.ph.i.i.be = phi i32 [ %i.bng, %bb.io ], [ %i.bmh, %bb.ii ], [ %i.bmq, %bb.ik ], [ %.0445.ph.i.i, %bb.ij ], [ %.0445.ph.i.i, %bb.ge ], [ %i.aqx, %bb.gg ], [ %i.aqm, %bb.gb ], [ %.0445.ph.i.i, %bb.ga ], [ %i.aqc, %bb.fz ], [ %i.ark, %bb.gi ], [ %i.agk, %bb.ef ], [ %i.agk, %bb.ee ], [ %i.agk, %bb.ec ], [ %i.agk, %bb.eb ], [ %.1446.i.i, %bb.en ], [ %.1446.i.i, %bb.em ], [ %.1446.i.i, %bb.ek ], [ %.1446.i.i, %bb.ej ], [ %i.aib, %bb.ep ], [ %i.adg, %bb.dh ], [ %i.adg, %bb.dg ], [ %i.adg, %bb.de ], [ %i.adg, %bb.dd ], [ %.1446.i.i, %bb.dp ], [ %.1446.i.i, %bb.do ], [ %.1446.i.i, %bb.dm ], [ %.1446.i.i, %bb.dl ], [ %i.aex, %bb.dr ], [ %i.amp, %bb.fj ], [ %i.bsz, %bb.jz ], [ %.0445.ph.i.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %i.brg, %bb.jj ], [ %.0445.ph.i.i, %bb.jk ], [ %i.brk, %bb.jm ], [ %i.bqk, %bb.je ], [ %.0445.ph.i.i, %bb.jf ], [ %i.bqo, %bb.jh ], [ %i.bpu, %bb.iz ], [ %i.bpf, %bb.ix ], [ %i.bph, %bb.iy ], [ %i.boi, %bb.is ], [ %i.bor, %bb.iu ], [ %.0445.ph.i.i, %bb.it ], [ %i.bnt, %bb.ip ], [ %i.bne, %bb.in ]
  %.0.ph.i.i.be = phi i32 [ %.0.ph.i.i, %bb.io ], [ %.0.ph.i.i, %bb.ii ], [ %.0.ph.i.i, %bb.ik ], [ %.0.ph.i.i, %bb.ij ], [ %.0.ph.i.i, %bb.ge ], [ %i.ari, %bb.gg ], [ %.0.ph.i.i, %bb.gb ], [ %.0.ph.i.i, %bb.ga ], [ %.0.ph.i.i, %bb.fz ], [ %i.arv, %bb.gi ], [ %.1.i.i311, %bb.ef ], [ %.1.i.i311, %bb.ee ], [ %.1.i.i311, %bb.ec ], [ %.1.i.i311, %bb.eb ], [ %.1.i.i311, %bb.en ], [ %.1.i.i311, %bb.em ], [ %.1.i.i311, %bb.ek ], [ %.1.i.i311, %bb.ej ], [ %i.aim, %bb.ep ], [ %.1.i.i311, %bb.dh ], [ %.1.i.i311, %bb.dg ], [ %.1.i.i311, %bb.de ], [ %.1.i.i311, %bb.dd ], [ %.1.i.i311, %bb.dp ], [ %.1.i.i311, %bb.do ], [ %.1.i.i311, %bb.dm ], [ %.1.i.i311, %bb.dl ], [ %i.afi, %bb.dr ], [ %i.ana, %bb.fj ], [ %i.btk, %bb.jz ], [ %.0.ph.i.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit584.i.i ], [ %.0.ph.i.i, %bb.jj ], [ %.0.ph.i.i, %bb.jk ], [ %i.brv, %bb.jm ], [ %.0.ph.i.i, %bb.je ], [ %.0.ph.i.i, %bb.jf ], [ %i.bqz, %bb.jh ], [ %.0.ph.i.i, %bb.iz ], [ %.0.ph.i.i, %bb.ix ], [ %.0.ph.i.i, %bb.iy ], [ %.0.ph.i.i, %bb.is ], [ %.0.ph.i.i, %bb.iu ], [ %.0.ph.i.i, %bb.it ], [ %.0.ph.i.i, %bb.ip ], [ %.0.ph.i.i, %bb.in ]
  br label %.outer.i.i, !llvm.loop !45

_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i: ; preds = %bb.jy, %bb.jl, %bb.jg, %bb.gh, %bb.gf, %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i, %bb.eo, %bb.dq
  %.sroa.0.3.lcssa.i = phi i32 [ %.sroa.0.3.i, %bb.dq ], [ %.sroa.0.3.i, %bb.eo ], [ %.sroa.0.3.i, %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i ], [ 0, %bb.gf ], [ %.sroa.0.3.i, %bb.gh ], [ %.sroa.0.3.i, %bb.jg ], [ %.sroa.0.3.i, %bb.jl ], [ 0, %bb.jy ] ; 3 uses
  %.sroa.23.3.i = phi i32 [ %.sroa.23.0.i, %bb.dq ], [ %.sroa.23.0.i, %bb.eo ], [ %.sroa.23.0.i, %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i ], [ %i.aqo, %bb.gf ], [ %.sroa.23.0.i, %bb.gh ], [ %.sroa.23.1.i, %bb.jg ], [ %.sroa.23.1.i, %bb.jl ], [ %i.bst, %bb.jy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.not52.i = icmp eq i32 %.sroa.23.3.i, 0
  br i1 %.not52.i, label %bb.ka, label %.thread.i

bb.ka:                                            ; preds = %_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i
  %i.btl = sub i64 %i.sf, %i.se
  %i.btm = lshr exact i64 %i.btl, 2
  %i.btn = trunc i64 %i.btm to i32
  br label %bb.kc

bb.kb:                                            ; preds = %bb.bm
  %i.bto = icmp eq i64 %i.sg, 4
  %spec.select.i294 = sext i1 %i.bto to i32
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka, %bb.bj
  %.sroa.9.2.i = phi i32 [ %.sroa.9.1.i, %bb.bj ], [ %.sroa.9.3.i, %bb.ka ], [ %.sroa.9.1.i, %bb.kb ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i, %bb.bj ], [ %.sroa.0.3.lcssa.i, %bb.ka ], [ %.sroa.0.1.i, %bb.kb ] ; 3 uses
  %.147.i = phi ptr [ %i.ru, %bb.bj ], [ %i.sd, %bb.ka ], [ %i.sd, %bb.kb ] ; 3 uses
  %.3.i = phi i32 [ %i.rv, %bb.bj ], [ %i.btn, %bb.ka ], [ %spec.select.i294, %bb.kb ] ; 4 uses
  %i.btp = icmp ult ptr %.147.i, %i.cb
  br i1 %i.btp, label %thread-pre-split.i, label %bb.kd, !llvm.loop !105

.thread.i:                                        ; preds = %_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i
  %i.btq = add nsw i32 %.sroa.23.3.i, %.0.i       ; 2 uses
  %i.btr = icmp slt i64 %i.sc, %.idx170.i
  br i1 %i.btr, label %thread-pre-split.i, label %.thread158.i, !llvm.loop !105

bb.kd:                                            ; preds = %bb.kc
  %.not53.i = icmp eq i32 %.3.i, 0
  br i1 %.not53.i, label %.thread158.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bts = sext i32 %.3.i to i64
  %i.btt = getelementptr inbounds [4 x i8], ptr %.147.i, i64 %i.bts
  store i32 %.3.i, ptr %i.btt, align 4, !tbaa !3
  br label %.thread158.i

.thread158.i:                                     ; preds = %.thread.i, %bb.ke, %bb.kd
  %.sroa.9.2148168.i = phi i32 [ %.sroa.9.2.i, %bb.kd ], [ %.sroa.9.2.i, %bb.ke ], [ %.sroa.9.3.i, %.thread.i ]
  %.sroa.0.2150167.i = phi i32 [ %.sroa.0.2.i, %bb.kd ], [ %.sroa.0.2.i, %bb.ke ], [ %.sroa.0.3.lcssa.i, %.thread.i ]
  %.2156166.i = phi i32 [ %.0.i, %bb.kd ], [ %.0.i, %bb.ke ], [ %i.btq, %.thread.i ]
  %i.btu = icmp eq i32 %.2156166.i, 0
  br i1 %i.btu, label %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit, label %bb.kf

bb.kf:                                            ; preds = %.thread158.i
  %i.btv = getelementptr inbounds i8, ptr %.045218.i, i64 %i.rn
  %i.btw = load i32, ptr %1, align 4, !tbaa !3    ; 2 uses
  %i.btx = icmp sgt i32 %i.btw, %i.rd
  br i1 %i.btx, label %.preheader179.i, label %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit, !llvm.loop !106

_ZN11duckdb_zstdL6trsortEPiS0_ii.exit:            ; preds = %.thread158.i, %bb.kf, %_ZN11duckdb_zstdL6tr_ilgEi.exit.i
  %i.bty = load i8, ptr %i.c, align 1, !tbaa !7
  %i.btz = zext i8 %i.bty to i32
  br label %.preheader

.preheader:                                       ; preds = %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit, %.critedge6
  %.7459 = phi i32 [ %i.btz, %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit ], [ %.11, %.critedge6 ]
  %.13259458 = phi i32 [ %i.a, %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit ], [ %.15.lcssa, %.critedge6 ] ; 2 uses
  %.4269457 = phi i32 [ %i.bu, %_ZN11duckdb_zstdL6trsortEPiS0_ii.exit ], [ %i.buu, %.critedge6 ]
  %.not317111 = icmp eq i32 %.13259458, 0
  br i1 %.not317111, label %.critedge6.thread, label %.lr.ph114

.lr.ph114:                                        ; preds = %.preheader
  %i.bua = zext nneg i32 %.13259458 to i64
  br label %bb.kh

bb.kg:                                            ; preds = %bb.kh
  %.not317 = icmp eq i64 %i.bub, 0
  br i1 %.not317, label %.critedge6.thread, label %bb.kh, !llvm.loop !107

bb.kh:                                            ; preds = %.lr.ph114, %bb.kg
  %.3113 = phi i32 [ %.7459, %.lr.ph114 ], [ %i.bue, %bb.kg ]
  %indvars.iv594112 = phi i64 [ %i.bua, %.lr.ph114 ], [ %i.bub, %bb.kg ] ; 3 uses
  %i.bub = add nsw i64 %indvars.iv594112, -1      ; 5 uses
  %i.buc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bub
  %i.bud = load i8, ptr %i.buc, align 1, !tbaa !7
  %i.bue = zext i8 %i.bud to i32                  ; 4 uses
  %.not286 = icmp sgt i32 %.3113, %i.bue
  br i1 %.not286, label %bb.ki, label %bb.kg, !llvm.loop !107

bb.ki:                                            ; preds = %bb.kh
  %i.buf = trunc nuw nsw i64 %indvars.iv594112 to i32 ; 2 uses
  %i.bug = trunc nuw nsw i64 %i.bub to i32        ; 2 uses
  %i.buh = add nsw i32 %i.buf, -2                 ; 2 uses
  %i.bui = icmp sgt i64 %indvars.iv594112, 1
  br i1 %i.bui, label %.lr.ph451, label %.critedge6

.lr.ph451:                                        ; preds = %bb.ki, %bb.kj
  %.4449 = phi i32 [ %i.bum, %bb.kj ], [ %i.bue, %bb.ki ]
  %.15448 = phi i32 [ %i.bun, %bb.kj ], [ %i.buh, %bb.ki ] ; 4 uses
  %i.buj = zext nneg i32 %.15448 to i64
  %i.buk = getelementptr inbounds nuw i8, ptr %0, i64 %i.buj
  %i.bul = load i8, ptr %i.buk, align 1, !tbaa !7
  %i.bum = zext i8 %i.bul to i32                  ; 4 uses
  %.not287 = icmp samesign ult i32 %.4449, %i.bum
  br i1 %.not287, label %.critedge6, label %bb.kj

bb.kj:                                            ; preds = %.lr.ph451
  %i.bun = add nsw i32 %.15448, -1
  %i.buo = icmp sgt i32 %.15448, 0
  br i1 %i.buo, label %.lr.ph451, label %.critedge6, !llvm.loop !108

.critedge6:                                       ; preds = %bb.kj, %.lr.ph451, %bb.ki
  %.15.lcssa = phi i32 [ %i.buh, %bb.ki ], [ -1, %bb.kj ], [ %.15448, %.lr.ph451 ] ; 3 uses
  %.11 = phi i32 [ %i.bue, %bb.ki ], [ %i.bum, %.lr.ph451 ], [ %i.bum, %bb.kj ]
  %i.bup = icmp eq i64 %i.bub, 0
  %i.buq = sub nsw i32 %i.bug, %.15.lcssa
  %i.bur = icmp sgt i32 %i.buq, 1
  %or.cond = select i1 %i.bup, i1 true, i1 %i.bur
  %i.bus = sub nsw i32 0, %i.buf
  %i.but = select i1 %or.cond, i32 %i.bug, i32 %i.bus
  %i.buu = add nsw i32 %.4269457, -1              ; 2 uses
  %i.buv = sext i32 %i.buu to i64
  %i.buw = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.buv
  %i.bux = load i32, ptr %i.buw, align 4, !tbaa !3
  %i.buy = sext i32 %i.bux to i64
  %i.buz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.buy
  store i32 %i.but, ptr %i.buz, align 4, !tbaa !3
  %i.bva = icmp sgt i32 %.15.lcssa, -1
  br i1 %i.bva, label %.preheader, label %.critedge6.thread, !llvm.loop !109

.critedge6.thread:                                ; preds = %.critedge6, %.preheader, %bb.kg
  %i.bvb = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %i.bvb, align 4, !tbaa !3
  br label %.lr.ph472

.lr.ph472:                                        ; preds = %._crit_edge473, %.critedge6.thread
  %indvars.iv609 = phi i64 [ 254, %.critedge6.thread ], [ %indvars.iv.next610, %._crit_edge473 ] ; 7 uses
  %.0262476 = phi i32 [ %i.eb, %.critedge6.thread ], [ %.2264.lcssa, %._crit_edge473 ]
  %indvars611 = trunc i64 %indvars.iv609 to i32   ; 3 uses
  %i.bvc = add nuw nsw i32 %indvars611, 1
  %i.bvd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv609
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 4
  %i.bvf = load i32, ptr %i.bve, align 4, !tbaa !3
  %i.bvg = add nsw i32 %i.bvf, -1
  %invariant.gep917 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv609
  %indvars.iv609.tr = trunc i64 %indvars.iv609 to i32
  %i.bvh = shl i32 %indvars.iv609.tr, 8           ; 2 uses
  %i.bvi = sext i32 %i.bvh to i64
  br label %bb.kk

bb.kk:                                            ; preds = %.lr.ph472, %._crit_edge465
  %indvars.iv606 = phi i64 [ 255, %.lr.ph472 ], [ %indvars.iv.next607, %._crit_edge465 ] ; 3 uses
  %.17469 = phi i32 [ %i.bvg, %.lr.ph472 ], [ %.18.lcssa, %._crit_edge465 ] ; 2 uses
  %.1263468 = phi i32 [ %.0262476, %.lr.ph472 ], [ %.2264.lcssa, %._crit_edge465 ] ; 3 uses
  %.idx806 = shl i64 %indvars.iv606, 10
  %gep918 = getelementptr i8, ptr %invariant.gep917, i64 %.idx806 ; 2 uses
  %i.bvj = load i32, ptr %gep918, align 4, !tbaa !3
  %i.bvk = sub i32 %.17469, %i.bvj                ; 2 uses
  store i32 %.17469, ptr %gep918, align 4, !tbaa !3
  %i.bvl = or i64 %indvars.iv606, %i.bvi
  %i.bvm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bvl
  %i.bvn = load i32, ptr %i.bvm, align 4, !tbaa !3 ; 2 uses
  %.not460 = icmp sgt i32 %i.bvn, %.1263468
  br i1 %.not460, label %._crit_edge465, label %.lr.ph464.preheader

.lr.ph464.preheader:                              ; preds = %bb.kk
  %i.bvo = sext i32 %i.bvk to i64                 ; 5 uses
  %i.bvp = sext i32 %.1263468 to i64              ; 6 uses
  %i.bvq = sext i32 %i.bvn to i64                 ; 2 uses
  %i.bvr = sub nsw i64 %i.bvp, %i.bvq
  %i.bvs = add nsw i64 %i.bvr, 1                  ; 3 uses
  %min.iters.check235 = icmp ult i64 %i.bvs, 8
  br i1 %min.iters.check235, label %.lr.ph464.preheader248, label %vector.memcheck233

vector.memcheck233:                               ; preds = %.lr.ph464.preheader
  %i.bvt = sub nsw i64 %i.bvp, %i.bvo
  %6 = and i64 %i.bvt, 4611686018427387896
  %diff.check = icmp eq i64 %6, 0
  br i1 %diff.check, label %.lr.ph464.preheader248, label %vector.ph236

vector.ph236:                                     ; preds = %vector.memcheck233
  %n.vec238 = and i64 %i.bvs, -8                  ; 4 uses
  %i.bvu = sub nsw i64 %i.bvp, %n.vec238          ; 2 uses
  %i.bvv = sub nsw i64 %i.bvo, %n.vec238          ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph236
  %index240 = phi i64 [ 0, %vector.ph236 ], [ %index.next243, %vector.body239 ] ; 3 uses
  %i.bvw = sub i64 %i.bvp, %index240
  %i.bvx = sub i64 %i.bvo, %index240
  %i.bvy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvw ; 2 uses
  %i.bvz = getelementptr inbounds i8, ptr %i.bvy, i64 -12
  %i.bwa = getelementptr inbounds i8, ptr %i.bvy, i64 -28
  %wide.load241 = load <4 x i32>, ptr %i.bvz, align 4, !tbaa !3
  %wide.load242 = load <4 x i32>, ptr %i.bwa, align 4, !tbaa !3
  %i.bwb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvx ; 2 uses
  %i.bwc = getelementptr inbounds i8, ptr %i.bwb, i64 -12
  %i.bwd = getelementptr inbounds i8, ptr %i.bwb, i64 -28
  store <4 x i32> %wide.load241, ptr %i.bwc, align 4, !tbaa !3
  store <4 x i32> %wide.load242, ptr %i.bwd, align 4, !tbaa !3
  %index.next243 = add nuw i64 %index240, 8       ; 2 uses
  %i.bwe = icmp eq i64 %index.next243, %n.vec238
  br i1 %i.bwe, label %middle.block244, label %vector.body239, !llvm.loop !110

middle.block244:                                  ; preds = %vector.body239
  %cmp.n245 = icmp eq i64 %i.bvs, %n.vec238
  br i1 %cmp.n245, label %._crit_edge465.loopexit, label %.lr.ph464.preheader248

.lr.ph464.preheader248:                           ; preds = %vector.memcheck233, %.lr.ph464.preheader, %middle.block244
  %indvars.iv601.ph = phi i64 [ %i.bvp, %vector.memcheck233 ], [ %i.bvp, %.lr.ph464.preheader ], [ %i.bvu, %middle.block244 ]
  %indvars.iv599.ph = phi i64 [ %i.bvo, %vector.memcheck233 ], [ %i.bvo, %.lr.ph464.preheader ], [ %i.bvv, %middle.block244 ]
  br label %.lr.ph464

.lr.ph464:                                        ; preds = %.lr.ph464.preheader248, %.lr.ph464
  %indvars.iv601 = phi i64 [ %indvars.iv.next602, %.lr.ph464 ], [ %indvars.iv601.ph, %.lr.ph464.preheader248 ] ; 3 uses
  %indvars.iv599 = phi i64 [ %indvars.iv.next600, %.lr.ph464 ], [ %indvars.iv599.ph, %.lr.ph464.preheader248 ] ; 2 uses
  %i.bwf = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv601
  %i.bwg = load i32, ptr %i.bwf, align 4, !tbaa !3
  %i.bwh = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv599
  store i32 %i.bwg, ptr %i.bwh, align 4, !tbaa !3
  %indvars.iv.next600 = add nsw i64 %indvars.iv599, -1 ; 2 uses
  %indvars.iv.next602 = add nsw i64 %indvars.iv601, -1 ; 2 uses
  %.not.not = icmp sgt i64 %indvars.iv601, %i.bvq
  br i1 %.not.not, label %.lr.ph464, label %._crit_edge465.loopexit, !llvm.loop !111

._crit_edge465.loopexit:                          ; preds = %.lr.ph464, %middle.block244
  %indvars.iv.next600.lcssa = phi i64 [ %i.bvv, %middle.block244 ], [ %indvars.iv.next600, %.lr.ph464 ]
  %indvars.iv.next602.lcssa = phi i64 [ %i.bvu, %middle.block244 ], [ %indvars.iv.next602, %.lr.ph464 ]
  %i.bwi = trunc nsw i64 %indvars.iv.next602.lcssa to i32
  %i.bwj = trunc nsw i64 %indvars.iv.next600.lcssa to i32
  br label %._crit_edge465

._crit_edge465:                                   ; preds = %._crit_edge465.loopexit, %bb.kk
  %.2264.lcssa = phi i32 [ %.1263468, %bb.kk ], [ %i.bwi, %._crit_edge465.loopexit ] ; 2 uses
  %.18.lcssa = phi i32 [ %i.bvk, %bb.kk ], [ %i.bwj, %._crit_edge465.loopexit ] ; 3 uses
  %indvars.iv.next607 = add nsw i64 %indvars.iv606, -1 ; 2 uses
  %i.bwk = icmp samesign ult i64 %indvars.iv609, %indvars.iv.next607
  br i1 %i.bwk, label %bb.kk, label %._crit_edge473, !llvm.loop !112

._crit_edge473:                                   ; preds = %._crit_edge465
  %i.bwl = shl i32 %indvars611, 8
  %i.bwm = or i32 %i.bwl, %indvars611
  %i.bwn = sext i32 %i.bwm to i64
  %i.bwo = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bwn ; 2 uses
  %i.bwp = load i32, ptr %i.bwo, align 4, !tbaa !3
  %i.bwq = add i32 %.18.lcssa, 1
  %i.bwr = sub i32 %i.bwq, %i.bwp
  %i.bws = or i32 %i.bvh, %i.bvc
  %i.bwt = sext i32 %i.bws to i64
  %i.bwu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bwt
  store i32 %i.bwr, ptr %i.bwu, align 4, !tbaa !3
  store i32 %.18.lcssa, ptr %i.bwo, align 4, !tbaa !3
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
  %i.ao = zext i8 %i.an to i32                    ; 4 uses
  %i.ap = xor i32 %i.ao, -1
  store i32 %i.ap, ptr %.096120.i, align 4, !tbaa !3
  %.not114.i = icmp eq i32 %i.ai, 1
  br i1 %.not114.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = zext nneg i32 %i.ai to i64
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !7
  %i.au = icmp ugt i8 %i.at, %i.an
  %i.av = sub nsw i32 0, %i.ai
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_0
