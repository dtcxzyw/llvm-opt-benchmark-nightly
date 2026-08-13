inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11duckdb_zstdL14sort_typeBstarEPKhPiS2_S2_ii:.preheader339.preheader
  store i32 %i.ajx, ptr %i.akd, align 4, !tbaa !3
  %i.ake = ptrtoint ptr %i.akd to i64
  %i.akf = sub i64 %i.ake, %i.rk
  %i.akg = lshr exact i64 %i.akf, 2
  %i.akh = trunc i64 %i.akg to i32
  store i32 %i.akh, ptr %i.aka, align 4, !tbaa !3
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %.lr.ph45.i.i.i
  %.3.i.i.i310 = phi ptr [ %i.akd, %bb.ew ], [ %.242.i.i.i, %bb.ev ], [ %.242.i.i.i, %.lr.ph45.i.i.i ] ; 2 uses
  %i.aki = icmp ult ptr %i.aju, %.3.i.i.i310
  br i1 %i.aki, label %.lr.ph45.i.i.i, label %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i, !llvm.loop !78

bb.ey:                                            ; preds = %bb.eq
  %i.akj = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.akj, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.akk = zext nneg i32 %.0.ph.i.i to i64
  %i.akl = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 24
  store i32 -1, ptr %i.akm, align 8, !tbaa !75
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.akn = ptrtoint ptr %.0452.ph.i.i to i64
  %i.ako = sub i64 %i.akn, %i.rj
  %i.akp = lshr exact i64 %i.ako, 2
  %i.akq = trunc i64 %i.akp to i32                ; 2 uses
  %i.akr = ptrtoint ptr %i.ait to i64
  %i.aks = sub i64 %i.akr, %i.rk
  %i.akt = lshr exact i64 %i.aks, 2
  %i.aku = trunc i64 %i.akt to i32
  %i.akv = add i32 %i.aku, -1                     ; 2 uses
  %i.akw = getelementptr inbounds i8, ptr %i.air, i64 -4 ; 3 uses
  %.not89.i.i.i = icmp ugt ptr %.0455.ph.i.i, %i.akw
  br i1 %.not89.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i550.i.i

.preheader.i.i.i:                                 ; preds = %bb.fd, %bb.fa
  %.075.lcssa.i.i.i = phi ptr [ %i.akw, %bb.fa ], [ %.176.i.i.i, %bb.fd ] ; 3 uses
  %.0.lcssa.i.i.i307 = phi i32 [ -1, %bb.fa ], [ %.2.i.i.i306, %bb.fd ] ; 2 uses
  %.not8495.i.i.i = icmp ugt ptr %.0455.ph.i.i, %.075.lcssa.i.i.i
  br i1 %.not8495.i.i.i, label %._crit_edge.i552.i.i, label %.lr.ph99.i.i.i

.lr.ph.i550.i.i:                                  ; preds = %bb.fa, %bb.fd
  %.093.i.i.i = phi i32 [ %.2.i.i.i306, %bb.fd ], [ -1, %bb.fa ] ; 3 uses
  %.06492.i.i.i = phi i32 [ %.266.i.i.i, %bb.fd ], [ -1, %bb.fa ] ; 3 uses
  %.07291.i.i.i = phi ptr [ %i.alm, %bb.fd ], [ %.0455.ph.i.i, %bb.fa ] ; 2 uses
  %.07590.i.i.i = phi ptr [ %.176.i.i.i, %bb.fd ], [ %i.akw, %bb.fa ] ; 3 uses
  %i.akx = load i32, ptr %.07291.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.aky = sub nsw i32 %i.akx, %i.akq             ; 3 uses
  %i.akz = icmp sgt i32 %i.aky, -1
  br i1 %i.akz, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %.lr.ph.i550.i.i
  %i.ala = zext nneg i32 %i.aky to i64
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ala ; 2 uses
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !3
  %i.ald = icmp eq i32 %i.alc, %i.akv
  br i1 %i.ald, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.ale = getelementptr inbounds nuw i8, ptr %.07590.i.i.i, i64 4 ; 3 uses
  store i32 %i.aky, ptr %i.ale, align 4, !tbaa !3
  %i.alf = sext i32 %i.akx to i64
  %i.alg = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.alf
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !3 ; 2 uses
  %.not88.i.i.i = icmp eq i32 %.06492.i.i.i, %i.alh
  %i.ali = ptrtoint ptr %i.ale to i64
  %i.alj = sub i64 %i.ali, %i.rk
  %i.alk = lshr exact i64 %i.alj, 2
  %i.all = trunc i64 %i.alk to i32
  %.1.i.i.i308 = select i1 %.not88.i.i.i, i32 %.093.i.i.i, i32 %i.all ; 2 uses
  store i32 %.1.i.i.i308, ptr %i.alb, align 4, !tbaa !3
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %.lr.ph.i550.i.i
  %.176.i.i.i = phi ptr [ %i.ale, %bb.fc ], [ %.07590.i.i.i, %bb.fb ], [ %.07590.i.i.i, %.lr.ph.i550.i.i ] ; 3 uses
  %.266.i.i.i = phi i32 [ %i.alh, %bb.fc ], [ %.06492.i.i.i, %bb.fb ], [ %.06492.i.i.i, %.lr.ph.i550.i.i ]
  %.2.i.i.i306 = phi i32 [ %.1.i.i.i308, %bb.fc ], [ %.093.i.i.i, %bb.fb ], [ %.093.i.i.i, %.lr.ph.i550.i.i ] ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %.07291.i.i.i, i64 4 ; 2 uses
  %.not.i551.i.i = icmp ugt ptr %i.alm, %.176.i.i.i
  br i1 %.not.i551.i.i, label %.preheader.i.i.i, label %.lr.ph.i550.i.i, !llvm.loop !79

.lr.ph99.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.ff
  %.398.i.i.i = phi i32 [ %.4.i.i.i, %bb.ff ], [ %.0.lcssa.i.i.i307, %.preheader.i.i.i ]
  %.36797.i.i.i = phi i32 [ %i.alq, %bb.ff ], [ -1, %.preheader.i.i.i ]
  %.07496.i.i.i = phi ptr [ %i.alv, %bb.ff ], [ %.075.lcssa.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.aln = load i32, ptr %.07496.i.i.i, align 4, !tbaa !3
  %i.alo = sext i32 %i.aln to i64
  %i.alp = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.alo ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !3 ; 3 uses
  %.not86.i.i.i = icmp eq i32 %.36797.i.i.i, %i.alq
  %i.alr = ptrtoint ptr %.07496.i.i.i to i64
  %i.als = sub i64 %i.alr, %i.rk
  %i.alt = lshr exact i64 %i.als, 2
  %i.alu = trunc i64 %i.alt to i32
  %.4.i.i.i = select i1 %.not86.i.i.i, i32 %.398.i.i.i, i32 %i.alu ; 4 uses
  %.not87.i.i.i = icmp eq i32 %.4.i.i.i, %i.alq
  br i1 %.not87.i.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph99.i.i.i
  store i32 %.4.i.i.i, ptr %i.alp, align 4, !tbaa !3
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph99.i.i.i
  %i.alv = getelementptr inbounds i8, ptr %.07496.i.i.i, i64 -4 ; 2 uses
  %.not84.i.i.i = icmp ugt ptr %.0455.ph.i.i, %i.alv
  br i1 %.not84.i.i.i, label %._crit_edge.i552.i.i, label %.lr.ph99.i.i.i, !llvm.loop !80

._crit_edge.i552.i.i:                             ; preds = %bb.ff, %.preheader.i.i.i
  %.3.lcssa.i.i.i = phi i32 [ %.0.lcssa.i.i.i307, %.preheader.i.i.i ], [ %.4.i.i.i, %bb.ff ]
  %i.alw = getelementptr inbounds nuw i8, ptr %.075.lcssa.i.i.i, i64 4 ; 2 uses
  %i.alx = icmp ult ptr %i.alw, %i.ait
  br i1 %i.alx, label %.lr.ph107.i.i.i, label %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i

.lr.ph107.i.i.i:                                  ; preds = %._crit_edge.i552.i.i, %bb.fi
  %.173105.pn.i.i.i = phi ptr [ %.173105.i.i.i, %bb.fi ], [ %.0463.ph.i.i, %._crit_edge.i552.i.i ]
  %.5104.i.i.i = phi i32 [ %.7.i.i.i, %bb.fi ], [ %.3.lcssa.i.i.i, %._crit_edge.i552.i.i ] ; 3 uses
  %.569103.i.i.i = phi i32 [ %.771.i.i.i, %bb.fi ], [ -1, %._crit_edge.i552.i.i ] ; 3 uses
  %.277102.i.i.i = phi ptr [ %.378.i.i.i, %bb.fi ], [ %i.ait, %._crit_edge.i552.i.i ] ; 3 uses
  %.173105.i.i.i = getelementptr inbounds i8, ptr %.173105.pn.i.i.i, i64 -4 ; 2 uses
  %i.aly = load i32, ptr %.173105.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.alz = sub nsw i32 %i.aly, %i.akq             ; 3 uses
  %i.ama = icmp sgt i32 %i.alz, -1
  br i1 %i.ama, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %.lr.ph107.i.i.i
  %i.amb = zext nneg i32 %i.alz to i64
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.amb ; 2 uses
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !3
  %i.ame = icmp eq i32 %i.amd, %i.akv
  br i1 %i.ame, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.amf = getelementptr inbounds i8, ptr %.277102.i.i.i, i64 -4 ; 3 uses
  store i32 %i.alz, ptr %i.amf, align 4, !tbaa !3
  %i.amg = sext i32 %i.aly to i64
  %i.amh = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.amg
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !3 ; 2 uses
  %.not85.i.i.i = icmp eq i32 %.569103.i.i.i, %i.ami
  %i.amj = ptrtoint ptr %i.amf to i64
  %i.amk = sub i64 %i.amj, %i.rk
  %i.aml = lshr exact i64 %i.amk, 2
  %i.amm = trunc i64 %i.aml to i32
  %.6.i.i.i = select i1 %.not85.i.i.i, i32 %.5104.i.i.i, i32 %i.amm ; 2 uses
  store i32 %.6.i.i.i, ptr %i.amc, align 4, !tbaa !3
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %.lr.ph107.i.i.i
  %.378.i.i.i = phi ptr [ %i.amf, %bb.fh ], [ %.277102.i.i.i, %bb.fg ], [ %.277102.i.i.i, %.lr.ph107.i.i.i ] ; 2 uses
  %.771.i.i.i = phi i32 [ %i.ami, %bb.fh ], [ %.569103.i.i.i, %bb.fg ], [ %.569103.i.i.i, %.lr.ph107.i.i.i ]
  %.7.i.i.i = phi i32 [ %.6.i.i.i, %bb.fh ], [ %.5104.i.i.i, %bb.fg ], [ %.5104.i.i.i, %.lr.ph107.i.i.i ]
  %i.amn = icmp ult ptr %i.alw, %.378.i.i.i
  br i1 %i.amn, label %.lr.ph107.i.i.i, label %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i, !llvm.loop !81

_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i: ; preds = %bb.fi, %bb.ex, %._crit_edge.i552.i.i, %._crit_edge.i.i.i
  %i.amo = icmp eq i32 %i.ain, 0
  br i1 %i.amo, label %_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i, label %bb.fj

bb.fj:                                            ; preds = %_ZN11duckdb_zstdL7tr_copyEPiPKiS0_S0_S0_S0_i.exit.i.i
  %i.amp = add nsw i32 %.0445.ph.i.i, -2          ; 2 uses
  %i.amq = sext i32 %i.amp to i64
  %i.amr = getelementptr inbounds [32 x i8], ptr %5, i64 %i.amq ; 5 uses
  %i.ams = load ptr, ptr %i.amr, align 16, !tbaa !69
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !73
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %i.amw = load ptr, ptr %i.amv, align 16, !tbaa !74
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amr, i64 24
  %i.amy = load i32, ptr %i.amx, align 8, !tbaa !75
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amr, i64 28
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !76
  br label %.outer.i.i.backedge

._crit_edge.thread.i.i299:                        ; preds = %bb.bx, %_ZN11duckdb_zstdL11tr_heapsortEPKiPii.exit.i.i, %._crit_edge.i.i305, %..loopexit597_crit_edge.i.i, %.lr.ph646.split.us.i.i
  %i.anb = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 2 uses
  %i.anc = icmp sgt i32 %i.anb, -1
  br i1 %i.anc, label %.preheader.i, label %.critedge.i.i300

.preheader.i:                                     ; preds = %._crit_edge.thread.i.i299, %bb.fk
  %i.and = phi i32 [ %i.ann, %bb.fk ], [ %i.anb, %._crit_edge.thread.i.i299 ]
  %i.ane = phi ptr [ %i.anl, %bb.fk ], [ %.0455.ph.i.i, %._crit_edge.thread.i.i299 ] ; 2 uses
  %i.anf = ptrtoint ptr %i.ane to i64
  %i.ang = sub i64 %i.anf, %i.rk
  %i.anh = lshr exact i64 %i.ang, 2
  %i.ani = trunc i64 %i.anh to i32
  %i.anj = zext nneg i32 %i.and to i64
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.anj
  store i32 %i.ani, ptr %i.ank, align 4, !tbaa !3
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ane, i64 4 ; 5 uses
  %i.anm = icmp ult ptr %i.anl, %.0463.ph.i.i
  br i1 %i.anm, label %bb.fk, label %.critedge.i.i300

bb.fk:                                            ; preds = %.preheader.i
  %i.ann = load i32, ptr %i.anl, align 4, !tbaa !3 ; 2 uses
  %i.ano = icmp sgt i32 %i.ann, -1
  br i1 %i.ano, label %.preheader.i, label %.critedge.i.i300, !llvm.loop !82

.critedge.i.i300:                                 ; preds = %bb.fk, %.preheader.i, %._crit_edge.thread.i.i299
  %.1456.i.i = phi ptr [ %.0455.ph.i.i, %._crit_edge.thread.i.i299 ], [ %i.anl, %.preheader.i ], [ %i.anl, %bb.fk ] ; 10 uses
  %i.anp = icmp ult ptr %.1456.i.i, %.0463.ph.i.i
  br i1 %i.anp, label %bb.fl, label %bb.gg

bb.fl:                                            ; preds = %.critedge.i.i300
  %.pre.i.i301 = load i32, ptr %.1456.i.i, align 4, !tbaa !3
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fm, %bb.fl
  %i.anq = phi i32 [ %i.anu, %bb.fm ], [ %.pre.i.i301, %bb.fl ]
  %i.anr = phi ptr [ %i.ant, %bb.fm ], [ %.1456.i.i, %bb.fl ] ; 3 uses
  %i.ans = xor i32 %i.anq, -1
  store i32 %i.ans, ptr %i.anr, align 4, !tbaa !3
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anr, i64 4 ; 3 uses
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !3 ; 3 uses
  %i.anv = icmp slt i32 %i.anu, 0
  br i1 %i.anv, label %bb.fm, label %bb.fn, !llvm.loop !83

bb.fn:                                            ; preds = %bb.fm
  %i.anw = zext nneg i32 %i.anu to i64            ; 2 uses
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.anw
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !3
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %.0452.ph.i.i, i64 %i.anw
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !3
  %.not517.i.i = icmp eq i32 %i.any, %i.aoa
  br i1 %.not517.i.i, label %_ZN11duckdb_zstdL6tr_ilgEi.exit556.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aob = ptrtoint ptr %i.ant to i64
  %i.aoc = ptrtoint ptr %.1456.i.i to i64
  %i.aod = sub i64 %i.aob, %i.aoc
  %i.aoe = lshr exact i64 %i.aod, 2
  %i.aof = trunc i64 %i.aoe to i32
  %i.aog = add i32 %i.aof, 1                      ; 7 uses
  %.not.i553.i.i = icmp ult i32 %i.aog, 65536
  br i1 %.not.i553.i.i, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %.not8.i554.i.i = icmp ult i32 %i.aog, 16777216
  br i1 %.not8.i554.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aoh = lshr i32 %i.aog, 24
  %i.aoi = zext nneg i32 %i.aoh to i64
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.aoi
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !3
  %i.aol = add nsw i32 %i.aok, 24
  br label %_ZN11duckdb_zstdL6tr_ilgEi.exit556.i.i

bb.fr:                                            ; preds = %bb.fp
  %i.aom = lshr i32 %i.aog, 16
  %i.aon = zext nneg i32 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.aon
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !3
  %i.aoq = add nsw i32 %i.aop, 16
  br label %_ZN11duckdb_zstdL6tr_ilgEi.exit556.i.i

bb.fs:                                            ; preds = %bb.fo
  %.not7.i555.i.i = icmp samesign ult i32 %i.aog, 256
  br i1 %.not7.i555.i.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aor = lshr i32 %i.aog, 8
  %i.aos = zext nneg i32 %i.aor to i64
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.aos
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !3
  %i.aov = add nsw i32 %i.aou, 8
  br label %_ZN11duckdb_zstdL6tr_ilgEi.exit556.i.i

bb.fu:                                            ; preds = %bb.fs
  %i.aow = zext nneg i32 %i.aog to i64
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.aow
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL6tr_ilgEi.exit556.i.i

_ZN11duckdb_zstdL6tr_ilgEi.exit556.i.i:           ; preds = %bb.fu, %bb.ft, %bb.fr, %bb.fq, %bb.fn
  %i.aoz = phi i32 [ -1, %bb.fn ], [ %i.aoq, %bb.fr ], [ %i.aol, %bb.fq ], [ %i.aov, %bb.ft ], [ %i.aoy, %bb.fu ] ; 3 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.anr, i64 8 ; 10 uses
  %i.apb = icmp ult ptr %i.apa, %.0463.ph.i.i
  %i.apc = ptrtoint ptr %i.apa to i64             ; 4 uses
  br i1 %i.apb, label %.lr.ph685.i.preheader.i, label %_ZN11duckdb_zstdL6tr_ilgEi.exit556._crit_edge.i.i

.lr.ph685.i.preheader.i:                          ; preds = %_ZN11duckdb_zstdL6tr_ilgEi.exit556.i.i
  %i.apd = sub i64 %i.apc, %i.rk
  %i.ape = lshr exact i64 %i.apd, 2
  %i.apf = trunc i64 %i.ape to i32
  %i.apg = add i32 %i.apf, -1
  %6 = icmp ult ptr %.1456.i.i, %i.apa
  br i1 %6, label %.lr.ph685.i.i, label %_ZN11duckdb_zstdL6tr_ilgEi.exit556._crit_edge.i.i

.lr.ph685.i.i:                                    ; preds = %.lr.ph685.i.preheader.i, %.lr.ph685.i.i
  %i.aph = phi ptr [ %i.apl, %.lr.ph685.i.i ], [ %.1456.i.i, %.lr.ph685.i.preheader.i ] ; 2 uses
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !3
  %i.apj = sext i32 %i.api to i64
  %i.apk = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.apj
  store i32 %i.apg, ptr %i.apk, align 4, !tbaa !3
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aph, i64 4 ; 2 uses
  %i.apm = icmp ult ptr %i.apl, %i.apa
  br i1 %i.apm, label %.lr.ph685.i.i, label %_ZN11duckdb_zstdL6tr_ilgEi.exit556._crit_edge.i.i, !llvm.loop !84

_ZN11duckdb_zstdL6tr_ilgEi.exit556._crit_edge.i.i: ; preds = %.lr.ph685.i.i, %.lr.ph685.i.preheader.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit556.i.i
  %i.apn = ptrtoint ptr %.1456.i.i to i64
  %i.apo = sub i64 %i.apc, %i.apn                 ; 2 uses
  %i.app = lshr exact i64 %i.apo, 2
  %i.apq = trunc i64 %i.app to i32                ; 3 uses
  %.not.i557.i.i = icmp slt i32 %.sroa.9.3.i, %i.apq
  br i1 %.not.i557.i.i, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %_ZN11duckdb_zstdL6tr_ilgEi.exit556._crit_edge.i.i
  %i.apr = icmp eq i32 %.sroa.0.3.i, 0
  br i1 %i.apr, label %bb.gb, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aps = add i32 %.sroa.9.3.i, %i.bu
  %i.apt = add nsw i32 %.sroa.0.3.i, -1
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %_ZN11duckdb_zstdL6tr_ilgEi.exit556._crit_edge.i.i
  %.pn220.i = phi i32 [ %i.aps, %bb.fw ], [ %.sroa.9.3.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit556._crit_edge.i.i ]
  %.sroa.0.7.i = phi i32 [ %i.apt, %bb.fw ], [ %.sroa.0.3.i, %_ZN11duckdb_zstdL6tr_ilgEi.exit556._crit_edge.i.i ] ; 3 uses
  %.sroa.9.7.i = sub i32 %.pn220.i, %i.apq        ; 3 uses
  %i.apu = ptrtoint ptr %.0463.ph.i.i to i64
  %i.apv = sub i64 %i.apu, %i.apc                 ; 2 uses
  %.not519.i.i = icmp sgt i64 %i.apo, %i.apv
  br i1 %.not519.i.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.apw = sext i32 %.0445.ph.i.i to i64
  %i.apx = getelementptr inbounds [32 x i8], ptr %5, i64 %i.apw ; 5 uses
  store ptr %.0452.ph.i.i, ptr %i.apx, align 16, !tbaa !69
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 8
  store ptr %i.apa, ptr %i.apy, align 8, !tbaa !73
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apx, i64 16
  store ptr %.0463.ph.i.i, ptr %i.apz, align 16, !tbaa !74
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  store i32 -3, ptr %i.aqa, align 8, !tbaa !75
  %i.aqb = add nsw i32 %.0445.ph.i.i, 1
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apx, i64 28
  store i32 %.0.ph.i.i, ptr %i.aqc, align 4, !tbaa !76
  %i.aqd = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ro
  br label %.outer.i.i.backedge

bb.fz:                                            ; preds = %bb.fx
  %i.aqe = icmp sgt i64 %i.apv, 4
  %i.aqf = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ro ; 2 uses
  br i1 %i.aqe, label %bb.ga, label %.outer.i.i.backedge

bb.ga:                                            ; preds = %bb.fz
  %i.aqg = sext i32 %.0445.ph.i.i to i64
  %i.aqh = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aqg ; 5 uses
  store ptr %i.aqf, ptr %i.aqh, align 16, !tbaa !69
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  store ptr %.1456.i.i, ptr %i.aqi, align 8, !tbaa !73
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 16
  store ptr %i.apa, ptr %i.aqj, align 16, !tbaa !74
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqh, i64 24
  store i32 %i.aoz, ptr %i.aqk, align 8, !tbaa !75
  %i.aql = add nsw i32 %.0445.ph.i.i, 1
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqh, i64 28
  store i32 %.0.ph.i.i, ptr %i.aqm, align 4, !tbaa !76
  br label %.outer.i.i.backedge

bb.gb:                                            ; preds = %bb.fv
  %i.aqn = add nsw i32 %.sroa.23.0.i, %i.apq      ; 3 uses
  %i.aqo = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.aqo, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.aqp = zext nneg i32 %.0.ph.i.i to i64
  %i.aqq = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.aqp
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 24
  store i32 -1, ptr %i.aqr, align 8, !tbaa !75
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.aqs = ptrtoint ptr %.0463.ph.i.i to i64
  %i.aqt = sub i64 %i.aqs, %i.apc
  %i.aqu = icmp sgt i64 %i.aqt, 4
  br i1 %i.aqu, label %.outer.i.i.backedge, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aqv = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.aqv, label %_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aqw = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aqx ; 5 uses
  %i.aqz = load ptr, ptr %i.aqy, align 16, !tbaa !69
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !73
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqy, i64 16
  %i.ard = load ptr, ptr %i.arc, align 16, !tbaa !74
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqy, i64 24
  %i.arf = load i32, ptr %i.are, align 8, !tbaa !75
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqy, i64 28
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !76
  br label %.outer.i.i.backedge

bb.gg:                                            ; preds = %.critedge.i.i300
  %i.ari = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.ari, label %_ZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tE.exit.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.arj = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.ark = sext i32 %i.arj to i64
  %i.arl = getelementptr inbounds [32 x i8], ptr %5, i64 %i.ark ; 5 uses
  %i.arm = load ptr, ptr %i.arl, align 16, !tbaa !69
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arl, i64 8
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !73
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arl, i64 16
  %i.arq = load ptr, ptr %i.arp, align 16, !tbaa !74
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arl, i64 24
  %i.ars = load i32, ptr %i.arr, align 8, !tbaa !75
  %i.art = getelementptr inbounds nuw i8, ptr %i.arl, i64 28
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !76
  br label %.outer.i.i.backedge

.lr.ph650.i.i:                                    ; preds = %.lr.ph646.split.i.i
  br i1 %i.tk, label %bb.gi, label %._crit_edge72.i.i.i

bb.gi:                                            ; preds = %.lr.ph650.i.i
  %i.arv = load i32, ptr %i.to, align 4, !tbaa !3 ; 2 uses
  %i.arw = sext i32 %i.arv to i64
  %i.arx = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.arw
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !3
  %i.arz = load i32, ptr %i.tq, align 4, !tbaa !3 ; 2 uses
  %i.asa = sext i32 %i.arz to i64
  %i.asb = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.asa
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !3
  %i.asd = icmp slt i32 %i.ary, %i.asc
  br i1 %i.asd, label %bb.gj, label %._crit_edge72.i.i.i

bb.gj:                                            ; preds = %bb.gi
  store i32 %i.arv, ptr %i.tq, align 4, !tbaa !3
  store i32 %i.arz, ptr %i.to, align 4, !tbaa !3
  br label %._crit_edge72.i.i.i

._crit_edge72.i.i.i:                              ; preds = %bb.gj, %bb.gi, %.lr.ph650.i.i
  %.0.i565.i.i = phi i32 [ %i.tl, %bb.gj ], [ %i.tl, %bb.gi ], [ %i.ti, %.lr.ph650.i.i ] ; 8 uses
  %i.ase = icmp sgt i32 %.0.i565.i.i, 1           ; 3 uses
  br i1 %i.ase, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i566.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge72.i.i.i
  %i.asf = lshr i32 %.0.i565.i.i, 1
  %i.asg = zext nneg i32 %i.asf to i64
  %i.ash = zext nneg i32 %.0.i565.i.i to i64
  br label %.lr.ph.i568.i.i

.lr.ph.i568.i.i:                                  ; preds = %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.asg, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 4 uses
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %indvars.iv.next.i.i.i
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !3 ; 2 uses
  %i.ask = sext i32 %i.asj to i64
  %i.asl = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ask
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !3
  %i.asn = shl nuw nsw i64 %indvars.iv.next.i.i.i, 1 ; 2 uses
  %i.aso = or disjoint i64 %i.asn, 1              ; 2 uses
  %i.asp = icmp samesign ult i64 %i.aso, %i.ash
  %i.asq = trunc nsw i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  br i1 %i.asp, label %.lr.ph.i.preheader.i.i.i, label %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i568.i.i
  %i.asr = trunc nuw nsw i64 %i.aso to i32
  %i.ass = trunc nsw i64 %i.asn to i32
  br label %.lr.ph.i.i.i.i304

.lr.ph.i.i.i.i304:                                ; preds = %bb.gk, %.lr.ph.i.preheader.i.i.i
  %i.ast = phi i32 [ %i.atp, %bb.gk ], [ %i.asr, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.asu = phi i32 [ %i.ato, %bb.gk ], [ %i.ass, %.lr.ph.i.preheader.i.i.i ]
  %.030.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.gk ], [ %i.asq, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.asv = add nuw nsw i32 %i.asu, 2              ; 2 uses
  %i.asw = zext nneg i32 %i.ast to i64
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.asw
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !3
  %i.asz = sext i32 %i.asy to i64
  %i.ata = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.asz
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !3 ; 2 uses
  %i.atc = zext nneg i32 %i.asv to i64
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.atc
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !3
  %i.atf = sext i32 %i.ate to i64
  %i.atg = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.atf
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !3 ; 2 uses
  %spec.select29.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.atb, i32 %i.ath)
  %.not.i.i.i.i = icmp sgt i32 %spec.select29.i.i.i.i, %i.asm
  br i1 %.not.i.i.i.i, label %bb.gk, label %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit.i.i.i

bb.gk:                                            ; preds = %.lr.ph.i.i.i.i304
  %i.ati = icmp slt i32 %i.atb, %i.ath
  %spec.select.i.i.i.i = select i1 %i.ati, i32 %i.asv, i32 %i.ast ; 4 uses
  %i.atj = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.atj
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !3
  %i.atm = zext nneg i32 %.030.i.i.i.i to i64
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.atm
  store i32 %i.atl, ptr %i.atn, align 4, !tbaa !3
  %i.ato = shl nuw nsw i32 %spec.select.i.i.i.i, 1 ; 2 uses
  %i.atp = or disjoint i32 %i.ato, 1              ; 2 uses
  %i.atq = icmp slt i32 %i.atp, %.0.i565.i.i
end_hunk_0
