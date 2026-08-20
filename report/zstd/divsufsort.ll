inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sort_typeBstar:.preheader340.preheader
  store i32 %i.ajw, ptr %i.akc, align 4, !tbaa !8
  %i.akd = ptrtoint ptr %i.akc to i64
  %i.ake = sub i64 %i.akd, %i.rj
  %i.akf = lshr exact i64 %i.ake, 2
  %i.akg = trunc i64 %i.akf to i32
  store i32 %i.akg, ptr %i.ajz, align 4, !tbaa !8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %.lr.ph45.i.i.i
  %.3.i.i.i310 = phi ptr [ %i.akc, %bb.ew ], [ %.242.i.i.i, %bb.ev ], [ %.242.i.i.i, %.lr.ph45.i.i.i ] ; 2 uses
  %i.akh = icmp ult ptr %i.ajt, %.3.i.i.i310
  br i1 %i.akh, label %.lr.ph45.i.i.i, label %tr_copy.exit.i.i, !llvm.loop !76

bb.ey:                                            ; preds = %bb.eq
  %i.aki = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.aki, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.akj = zext nneg i32 %.0.ph.i.i to i64
  %i.akk = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.akj
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 24
  store i32 -1, ptr %i.akl, align 8, !tbaa !73
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.akm = ptrtoint ptr %.0456.ph.i.i to i64
  %i.akn = sub i64 %i.akm, %i.ri
  %i.ako = lshr exact i64 %i.akn, 2
  %i.akp = trunc i64 %i.ako to i32                ; 2 uses
  %i.akq = ptrtoint ptr %i.ais to i64
  %i.akr = sub i64 %i.akq, %i.rj
  %i.aks = lshr exact i64 %i.akr, 2
  %i.akt = trunc i64 %i.aks to i32
  %i.aku = add i32 %i.akt, -1                     ; 2 uses
  %i.akv = getelementptr inbounds i8, ptr %i.aiq, i64 -4 ; 3 uses
  %.not89.i.i.i = icmp ugt ptr %.0462.ph.i.i, %i.akv
  br i1 %.not89.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i550.i.i

.preheader.i.i.i:                                 ; preds = %bb.fd, %bb.fa
  %.073.lcssa.i.i.i = phi ptr [ %i.akv, %bb.fa ], [ %.174.i.i.i, %bb.fd ] ; 3 uses
  %.0.lcssa.i552.i.i = phi i32 [ -1, %bb.fa ], [ %.2.i.i.i306, %bb.fd ] ; 2 uses
  %.not8495.i.i.i = icmp ugt ptr %.0462.ph.i.i, %.073.lcssa.i.i.i
  br i1 %.not8495.i.i.i, label %._crit_edge.i553.i.i, label %.lr.ph99.i.i.i

.lr.ph.i550.i.i:                                  ; preds = %bb.fa, %bb.fd
  %.093.i.i.i = phi i32 [ %.2.i.i.i306, %bb.fd ], [ -1, %bb.fa ] ; 3 uses
  %.06492.i.i.i = phi i32 [ %.266.i.i.i, %bb.fd ], [ -1, %bb.fa ] ; 3 uses
  %.07391.i.i.i = phi ptr [ %.174.i.i.i, %bb.fd ], [ %i.akv, %bb.fa ] ; 3 uses
  %.07790.i.i.i = phi ptr [ %i.all, %bb.fd ], [ %.0462.ph.i.i, %bb.fa ] ; 2 uses
  %i.akw = load i32, ptr %.07790.i.i.i, align 4, !tbaa !8 ; 2 uses
  %i.akx = sub nsw i32 %i.akw, %i.akp             ; 3 uses
  %i.aky = icmp sgt i32 %i.akx, -1
  br i1 %i.aky, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %.lr.ph.i550.i.i
  %i.akz = zext nneg i32 %i.akx to i64
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.akz ; 2 uses
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !8
  %i.alc = icmp eq i32 %i.alb, %i.aku
  br i1 %i.alc, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.ald = getelementptr inbounds nuw i8, ptr %.07391.i.i.i, i64 4 ; 3 uses
  store i32 %i.akx, ptr %i.ald, align 4, !tbaa !8
  %i.ale = sext i32 %i.akw to i64
  %i.alf = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ale
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !8 ; 2 uses
  %.not88.i.i.i = icmp eq i32 %.06492.i.i.i, %i.alg
  %i.alh = ptrtoint ptr %i.ald to i64
  %i.ali = sub i64 %i.alh, %i.rj
  %i.alj = lshr exact i64 %i.ali, 2
  %i.alk = trunc i64 %i.alj to i32
  %.1.i554.i.i = select i1 %.not88.i.i.i, i32 %.093.i.i.i, i32 %i.alk ; 2 uses
  store i32 %.1.i554.i.i, ptr %i.ala, align 4, !tbaa !8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %.lr.ph.i550.i.i
  %.174.i.i.i = phi ptr [ %i.ald, %bb.fc ], [ %.07391.i.i.i, %bb.fb ], [ %.07391.i.i.i, %.lr.ph.i550.i.i ] ; 3 uses
  %.266.i.i.i = phi i32 [ %i.alg, %bb.fc ], [ %.06492.i.i.i, %bb.fb ], [ %.06492.i.i.i, %.lr.ph.i550.i.i ]
  %.2.i.i.i306 = phi i32 [ %.1.i554.i.i, %bb.fc ], [ %.093.i.i.i, %bb.fb ], [ %.093.i.i.i, %.lr.ph.i550.i.i ] ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %.07790.i.i.i, i64 4 ; 2 uses
  %.not.i551.i.i = icmp ugt ptr %i.all, %.174.i.i.i
  br i1 %.not.i551.i.i, label %.preheader.i.i.i, label %.lr.ph.i550.i.i, !llvm.loop !77

.lr.ph99.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.ff
  %.398.i.i.i = phi i32 [ %.4.i.i.i, %bb.ff ], [ %.0.lcssa.i552.i.i, %.preheader.i.i.i ]
  %.36797.i.i.i = phi i32 [ %i.alp, %bb.ff ], [ -1, %.preheader.i.i.i ]
  %.07296.i.i.i = phi ptr [ %i.alu, %bb.ff ], [ %.073.lcssa.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.alm = load i32, ptr %.07296.i.i.i, align 4, !tbaa !8
  %i.aln = sext i32 %i.alm to i64
  %i.alo = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.aln ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !8 ; 3 uses
  %.not86.i.i.i = icmp eq i32 %.36797.i.i.i, %i.alp
  %i.alq = ptrtoint ptr %.07296.i.i.i to i64
  %i.alr = sub i64 %i.alq, %i.rj
  %i.als = lshr exact i64 %i.alr, 2
  %i.alt = trunc i64 %i.als to i32
  %.4.i.i.i = select i1 %.not86.i.i.i, i32 %.398.i.i.i, i32 %i.alt ; 4 uses
  %.not87.i.i.i = icmp eq i32 %.4.i.i.i, %i.alp
  br i1 %.not87.i.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph99.i.i.i
  store i32 %.4.i.i.i, ptr %i.alo, align 4, !tbaa !8
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph99.i.i.i
  %i.alu = getelementptr inbounds i8, ptr %.07296.i.i.i, i64 -4 ; 2 uses
  %.not84.i.i.i = icmp ugt ptr %.0462.ph.i.i, %i.alu
  br i1 %.not84.i.i.i, label %._crit_edge.i553.i.i, label %.lr.ph99.i.i.i, !llvm.loop !78

._crit_edge.i553.i.i:                             ; preds = %bb.ff, %.preheader.i.i.i
  %.3.lcssa.i.i.i = phi i32 [ %.0.lcssa.i552.i.i, %.preheader.i.i.i ], [ %.4.i.i.i, %bb.ff ]
  %i.alv = getelementptr inbounds nuw i8, ptr %.073.lcssa.i.i.i, i64 4 ; 2 uses
  %i.alw = icmp ult ptr %i.alv, %i.ais
  br i1 %i.alw, label %.lr.ph107.i.i.i, label %tr_copy.exit.i.i

.lr.ph107.i.i.i:                                  ; preds = %._crit_edge.i553.i.i, %bb.fi
  %.178105.pn.i.i.i = phi ptr [ %.178105.i.i.i, %bb.fi ], [ %.0459.ph.i.i, %._crit_edge.i553.i.i ]
  %.5104.i.i.i = phi i32 [ %.7.i.i.i, %bb.fi ], [ %.3.lcssa.i.i.i, %._crit_edge.i553.i.i ] ; 3 uses
  %.569103.i.i.i = phi i32 [ %.771.i.i.i, %bb.fi ], [ -1, %._crit_edge.i553.i.i ] ; 3 uses
  %.275102.i.i.i = phi ptr [ %.376.i.i.i, %bb.fi ], [ %i.ais, %._crit_edge.i553.i.i ] ; 3 uses
  %.178105.i.i.i = getelementptr inbounds i8, ptr %.178105.pn.i.i.i, i64 -4 ; 2 uses
  %i.alx = load i32, ptr %.178105.i.i.i, align 4, !tbaa !8 ; 2 uses
  %i.aly = sub nsw i32 %i.alx, %i.akp             ; 3 uses
  %i.alz = icmp sgt i32 %i.aly, -1
  br i1 %i.alz, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %.lr.ph107.i.i.i
  %i.ama = zext nneg i32 %i.aly to i64
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ama ; 2 uses
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !8
  %i.amd = icmp eq i32 %i.amc, %i.aku
  br i1 %i.amd, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ame = getelementptr inbounds i8, ptr %.275102.i.i.i, i64 -4 ; 3 uses
  store i32 %i.aly, ptr %i.ame, align 4, !tbaa !8
  %i.amf = sext i32 %i.alx to i64
  %i.amg = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.amf
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !8 ; 2 uses
  %.not85.i.i.i = icmp eq i32 %.569103.i.i.i, %i.amh
  %i.ami = ptrtoint ptr %i.ame to i64
  %i.amj = sub i64 %i.ami, %i.rj
  %i.amk = lshr exact i64 %i.amj, 2
  %i.aml = trunc i64 %i.amk to i32
  %.6.i.i.i = select i1 %.not85.i.i.i, i32 %.5104.i.i.i, i32 %i.aml ; 2 uses
  store i32 %.6.i.i.i, ptr %i.amb, align 4, !tbaa !8
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %.lr.ph107.i.i.i
  %.376.i.i.i = phi ptr [ %i.ame, %bb.fh ], [ %.275102.i.i.i, %bb.fg ], [ %.275102.i.i.i, %.lr.ph107.i.i.i ] ; 2 uses
  %.771.i.i.i = phi i32 [ %i.amh, %bb.fh ], [ %.569103.i.i.i, %bb.fg ], [ %.569103.i.i.i, %.lr.ph107.i.i.i ]
  %.7.i.i.i = phi i32 [ %.6.i.i.i, %bb.fh ], [ %.5104.i.i.i, %bb.fg ], [ %.5104.i.i.i, %.lr.ph107.i.i.i ]
  %i.amm = icmp ult ptr %i.alv, %.376.i.i.i
  br i1 %i.amm, label %.lr.ph107.i.i.i, label %tr_copy.exit.i.i, !llvm.loop !79

tr_copy.exit.i.i:                                 ; preds = %bb.fi, %bb.ex, %._crit_edge.i553.i.i, %._crit_edge.i.i.i
  %i.amn = icmp eq i32 %i.aim, 0
  br i1 %i.amn, label %tr_introsort.exit.i, label %bb.fj

bb.fj:                                            ; preds = %tr_copy.exit.i.i
  %i.amo = add nsw i32 %.0445.ph.i.i, -2          ; 2 uses
  %i.amp = sext i32 %i.amo to i64
  %i.amq = getelementptr inbounds [32 x i8], ptr %5, i64 %i.amp ; 5 uses
  %i.amr = load ptr, ptr %i.amq, align 16, !tbaa !67
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !71
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amq, i64 16
  %i.amv = load ptr, ptr %i.amu, align 16, !tbaa !72
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amq, i64 24
  %i.amx = load i32, ptr %i.amw, align 8, !tbaa !73
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amq, i64 28
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !74
  br label %.outer.i.i.backedge

._crit_edge.thread.i.i299:                        ; preds = %.critedge2.i.i, %bb.bx, %tr_heapsort.exit.i.i, %._crit_edge.i.i305, %.lr.ph647.split.us.i.i
  %i.ana = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8 ; 2 uses
  %i.anb = icmp sgt i32 %i.ana, -1
  br i1 %i.anb, label %.preheader.i, label %.critedge.i.i300

.preheader.i:                                     ; preds = %._crit_edge.thread.i.i299, %bb.fk
  %i.anc = phi i32 [ %i.anm, %bb.fk ], [ %i.ana, %._crit_edge.thread.i.i299 ]
  %i.and = phi ptr [ %i.ank, %bb.fk ], [ %.0462.ph.i.i, %._crit_edge.thread.i.i299 ] ; 2 uses
  %i.ane = ptrtoint ptr %i.and to i64
  %i.anf = sub i64 %i.ane, %i.rj
  %i.ang = lshr exact i64 %i.anf, 2
  %i.anh = trunc i64 %i.ang to i32
  %i.ani = zext nneg i32 %i.anc to i64
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ani
  store i32 %i.anh, ptr %i.anj, align 4, !tbaa !8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.and, i64 4 ; 5 uses
  %i.anl = icmp ult ptr %i.ank, %.0459.ph.i.i
  br i1 %i.anl, label %bb.fk, label %.critedge.i.i300

bb.fk:                                            ; preds = %.preheader.i
  %i.anm = load i32, ptr %i.ank, align 4, !tbaa !8 ; 2 uses
  %i.ann = icmp sgt i32 %i.anm, -1
  br i1 %i.ann, label %.preheader.i, label %.critedge.i.i300, !llvm.loop !80

.critedge.i.i300:                                 ; preds = %bb.fk, %.preheader.i, %._crit_edge.thread.i.i299
  %.1463.i.i = phi ptr [ %.0462.ph.i.i, %._crit_edge.thread.i.i299 ], [ %i.ank, %.preheader.i ], [ %i.ank, %bb.fk ] ; 9 uses
  %i.ano = icmp ult ptr %.1463.i.i, %.0459.ph.i.i
  br i1 %i.ano, label %bb.fl, label %bb.gh

bb.fl:                                            ; preds = %.critedge.i.i300
  %.pre.i.i301 = load i32, ptr %.1463.i.i, align 4, !tbaa !8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fm, %bb.fl
  %i.anp = phi i32 [ %i.ant, %bb.fm ], [ %.pre.i.i301, %bb.fl ]
  %i.anq = phi ptr [ %i.ans, %bb.fm ], [ %.1463.i.i, %bb.fl ] ; 3 uses
  %i.anr = xor i32 %i.anp, -1
  store i32 %i.anr, ptr %i.anq, align 4, !tbaa !8
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anq, i64 4 ; 3 uses
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !8 ; 3 uses
  %i.anu = icmp slt i32 %i.ant, 0
  br i1 %i.anu, label %bb.fm, label %bb.fn, !llvm.loop !81

bb.fn:                                            ; preds = %bb.fm
  %i.anv = zext nneg i32 %i.ant to i64            ; 2 uses
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.anv
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !8
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %.0456.ph.i.i, i64 %i.anv
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !8
  %.not517.i.i = icmp eq i32 %i.anx, %i.anz
  br i1 %.not517.i.i, label %tr_ilg.exit558.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aoa = ptrtoint ptr %i.ans to i64
  %i.aob = ptrtoint ptr %.1463.i.i to i64
  %i.aoc = sub i64 %i.aoa, %i.aob
  %i.aod = lshr exact i64 %i.aoc, 2
  %i.aoe = trunc i64 %i.aod to i32
  %i.aof = add i32 %i.aoe, 1                      ; 7 uses
  %.not.i555.i.i = icmp ult i32 %i.aof, 65536
  br i1 %.not.i555.i.i, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %.not8.i556.i.i = icmp ult i32 %i.aof, 16777216
  br i1 %.not8.i556.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aog = lshr i32 %i.aof, 24
  %i.aoh = zext nneg i32 %i.aog to i64
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aoh
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !8
  %i.aok = add nsw i32 %i.aoj, 24
  br label %tr_ilg.exit558.i.i

bb.fr:                                            ; preds = %bb.fp
  %i.aol = lshr i32 %i.aof, 16
  %i.aom = zext nneg i32 %i.aol to i64
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aom
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !8
  %i.aop = add nsw i32 %i.aoo, 16
  br label %tr_ilg.exit558.i.i

bb.fs:                                            ; preds = %bb.fo
  %.not7.i557.i.i = icmp samesign ult i32 %i.aof, 256
  br i1 %.not7.i557.i.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aoq = lshr i32 %i.aof, 8
  %i.aor = zext nneg i32 %i.aoq to i64
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aor
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !8
  %i.aou = add nsw i32 %i.aot, 8
  br label %tr_ilg.exit558.i.i

bb.fu:                                            ; preds = %bb.fs
  %i.aov = zext nneg i32 %i.aof to i64
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aov
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !8
  br label %tr_ilg.exit558.i.i

tr_ilg.exit558.i.i:                               ; preds = %bb.fu, %bb.ft, %bb.fr, %bb.fq, %bb.fn
  %i.aoy = phi i32 [ -1, %bb.fn ], [ %i.aop, %bb.fr ], [ %i.aok, %bb.fq ], [ %i.aou, %bb.ft ], [ %i.aox, %bb.fu ] ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.anq, i64 8 ; 9 uses
  %i.apa = icmp ult ptr %i.aoz, %.0459.ph.i.i
  %i.apb = ptrtoint ptr %i.aoz to i64             ; 4 uses
  br i1 %i.apa, label %bb.fv, label %tr_ilg.exit558._crit_edge.i.i

bb.fv:                                            ; preds = %tr_ilg.exit558.i.i
  %i.apc = sub i64 %i.apb, %i.rj
  %i.apd = lshr exact i64 %i.apc, 2
  %i.ape = trunc i64 %i.apd to i32
  %i.apf = add i32 %i.ape, -1
  br label %.lr.ph686.i.i

.lr.ph686.i.i:                                    ; preds = %.lr.ph686.i.i, %bb.fv
  %i.apg = phi ptr [ %i.apk, %.lr.ph686.i.i ], [ %.1463.i.i, %bb.fv ] ; 2 uses
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !8
  %i.api = sext i32 %i.aph to i64
  %i.apj = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.api
  store i32 %i.apf, ptr %i.apj, align 4, !tbaa !8
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apg, i64 4 ; 2 uses
  %i.apl = icmp ult ptr %i.apk, %i.aoz
  br i1 %i.apl, label %.lr.ph686.i.i, label %tr_ilg.exit558._crit_edge.i.i, !llvm.loop !82

tr_ilg.exit558._crit_edge.i.i:                    ; preds = %.lr.ph686.i.i, %tr_ilg.exit558.i.i
  %i.apm = ptrtoint ptr %.1463.i.i to i64
  %i.apn = sub i64 %i.apb, %i.apm                 ; 2 uses
  %i.apo = lshr exact i64 %i.apn, 2
  %i.app = trunc i64 %i.apo to i32                ; 3 uses
  %.not.i559.i.i = icmp slt i32 %.sroa.9.3.i, %i.app
  br i1 %.not.i559.i.i, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %tr_ilg.exit558._crit_edge.i.i
  %i.apq = icmp eq i32 %.sroa.0.3.i, 0
  br i1 %i.apq, label %bb.gc, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.apr = add i32 %.sroa.9.3.i, %i.bu
  %i.aps = add nsw i32 %.sroa.0.3.i, -1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %tr_ilg.exit558._crit_edge.i.i
  %.pn216.i = phi i32 [ %i.apr, %bb.fx ], [ %.sroa.9.3.i, %tr_ilg.exit558._crit_edge.i.i ]
  %.sroa.0.7.i = phi i32 [ %i.aps, %bb.fx ], [ %.sroa.0.3.i, %tr_ilg.exit558._crit_edge.i.i ] ; 3 uses
  %.sroa.9.7.i = sub i32 %.pn216.i, %i.app        ; 3 uses
  %i.apt = ptrtoint ptr %.0459.ph.i.i to i64
  %i.apu = sub i64 %i.apt, %i.apb                 ; 2 uses
  %.not519.i.i = icmp sgt i64 %i.apn, %i.apu
  br i1 %.not519.i.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.apv = sext i32 %.0445.ph.i.i to i64
  %i.apw = getelementptr inbounds [32 x i8], ptr %5, i64 %i.apv ; 5 uses
  store ptr %.0456.ph.i.i, ptr %i.apw, align 16, !tbaa !67
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  store ptr %i.aoz, ptr %i.apx, align 8, !tbaa !71
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  store ptr %.0459.ph.i.i, ptr %i.apy, align 16, !tbaa !72
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 24
  store i32 -3, ptr %i.apz, align 8, !tbaa !73
  %i.aqa = add nsw i32 %.0445.ph.i.i, 1
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apw, i64 28
  store i32 %.0.ph.i.i, ptr %i.aqb, align 4, !tbaa !74
  %i.aqc = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rn
  br label %.outer.i.i.backedge

bb.ga:                                            ; preds = %bb.fy
  %i.aqd = icmp sgt i64 %i.apu, 4
  %i.aqe = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rn ; 2 uses
  br i1 %i.aqd, label %bb.gb, label %.outer.i.i.backedge

bb.gb:                                            ; preds = %bb.ga
  %i.aqf = sext i32 %.0445.ph.i.i to i64
  %i.aqg = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aqf ; 5 uses
  store ptr %i.aqe, ptr %i.aqg, align 16, !tbaa !67
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  store ptr %.1463.i.i, ptr %i.aqh, align 8, !tbaa !71
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16
  store ptr %i.aoz, ptr %i.aqi, align 16, !tbaa !72
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqg, i64 24
  store i32 %i.aoy, ptr %i.aqj, align 8, !tbaa !73
  %i.aqk = add nsw i32 %.0445.ph.i.i, 1
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqg, i64 28
  store i32 %.0.ph.i.i, ptr %i.aql, align 4, !tbaa !74
  br label %.outer.i.i.backedge

bb.gc:                                            ; preds = %bb.fw
  %i.aqm = add nsw i32 %.sroa.23.0.i, %i.app      ; 3 uses
  %i.aqn = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.aqn, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.aqo = zext nneg i32 %.0.ph.i.i to i64
  %i.aqp = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.aqo
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 24
  store i32 -1, ptr %i.aqq, align 8, !tbaa !73
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.aqr = ptrtoint ptr %.0459.ph.i.i to i64
  %i.aqs = sub i64 %i.aqr, %i.apb
  %i.aqt = icmp sgt i64 %i.aqs, 4
  br i1 %i.aqt, label %.outer.i.i.backedge, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aqu = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.aqu, label %tr_introsort.exit.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aqv = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aqw ; 5 uses
  %i.aqy = load ptr, ptr %i.aqx, align 16, !tbaa !67
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !71
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqx, i64 16
  %i.arc = load ptr, ptr %i.arb, align 16, !tbaa !72
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqx, i64 24
  %i.are = load i32, ptr %i.ard, align 8, !tbaa !73
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqx, i64 28
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !74
  br label %.outer.i.i.backedge

bb.gh:                                            ; preds = %.critedge.i.i300
  %i.arh = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.arh, label %tr_introsort.exit.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ari = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.arj = sext i32 %i.ari to i64
  %i.ark = getelementptr inbounds [32 x i8], ptr %5, i64 %i.arj ; 5 uses
  %i.arl = load ptr, ptr %i.ark, align 16, !tbaa !67
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ark, i64 8
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !71
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ark, i64 16
  %i.arp = load ptr, ptr %i.aro, align 16, !tbaa !72
  %i.arq = getelementptr inbounds nuw i8, ptr %i.ark, i64 24
  %i.arr = load i32, ptr %i.arq, align 8, !tbaa !73
  %i.ars = getelementptr inbounds nuw i8, ptr %i.ark, i64 28
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !74
  br label %.outer.i.i.backedge

.lr.ph651.i.i:                                    ; preds = %.lr.ph647.split.i.i
  br i1 %i.tj, label %bb.gj, label %._crit_edge72.i.i.i

bb.gj:                                            ; preds = %.lr.ph651.i.i
  %i.aru = load i32, ptr %i.tn, align 4, !tbaa !8 ; 2 uses
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.arv
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !8
  %i.ary = load i32, ptr %i.tp, align 4, !tbaa !8 ; 2 uses
  %i.arz = sext i32 %i.ary to i64
  %i.asa = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.arz
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !8
  %i.asc = icmp slt i32 %i.arx, %i.asb
  br i1 %i.asc, label %bb.gk, label %._crit_edge72.i.i.i

bb.gk:                                            ; preds = %bb.gj
  store i32 %i.aru, ptr %i.tp, align 4, !tbaa !8
  store i32 %i.ary, ptr %i.tn, align 4, !tbaa !8
  br label %._crit_edge72.i.i.i

._crit_edge72.i.i.i:                              ; preds = %bb.gk, %bb.gj, %.lr.ph651.i.i
  %.0.i566.i.i = phi i32 [ %i.tk, %bb.gk ], [ %i.tk, %bb.gj ], [ %i.th, %.lr.ph651.i.i ] ; 8 uses
  %i.asd = icmp sgt i32 %.0.i566.i.i, 1           ; 3 uses
  br i1 %i.asd, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i567.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge72.i.i.i
  %i.ase = lshr i32 %.0.i566.i.i, 1
  %i.asf = zext nneg i32 %i.ase to i64
  %i.asg = zext nneg i32 %.0.i566.i.i to i64
  br label %.lr.ph.i569.i.i

.lr.ph.i569.i.i:                                  ; preds = %tr_fixdown.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.asf, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %tr_fixdown.exit.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 4 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %indvars.iv.next.i.i.i
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !8 ; 2 uses
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asj
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !8
  %i.asm = shl nuw nsw i64 %indvars.iv.next.i.i.i, 1 ; 2 uses
  %i.asn = or disjoint i64 %i.asm, 1              ; 2 uses
  %i.aso = icmp samesign ult i64 %i.asn, %i.asg
  %i.asp = trunc nsw i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  br i1 %i.aso, label %.lr.ph.i.preheader.i.i.i, label %tr_fixdown.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i569.i.i
  %i.asq = trunc nuw nsw i64 %i.asn to i32
  %i.asr = trunc nsw i64 %i.asm to i32
  br label %.lr.ph.i.i.i.i304

.lr.ph.i.i.i.i304:                                ; preds = %bb.gl, %.lr.ph.i.preheader.i.i.i
  %i.ass = phi i32 [ %i.ato, %bb.gl ], [ %i.asq, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.ast = phi i32 [ %i.atn, %bb.gl ], [ %i.asr, %.lr.ph.i.preheader.i.i.i ]
  %.02530.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.gl ], [ %i.asp, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.asu = add nuw nsw i32 %i.ast, 2              ; 2 uses
  %i.asv = zext nneg i32 %i.ass to i64
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.asv
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !8
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asy
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !8 ; 2 uses
  %i.atb = zext nneg i32 %i.asu to i64
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atb
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !8
  %i.ate = sext i32 %i.atd to i64
  %i.atf = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.ate
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !8 ; 2 uses
  %spec.select29.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ata, i32 %i.atg)
  %.not.i.i.i.i = icmp sgt i32 %spec.select29.i.i.i.i, %i.asl
  br i1 %.not.i.i.i.i, label %bb.gl, label %tr_fixdown.exit.i.i.i

bb.gl:                                            ; preds = %.lr.ph.i.i.i.i304
  %i.ath = icmp slt i32 %i.ata, %i.atg
  %spec.select.i.i.i.i = select i1 %i.ath, i32 %i.asu, i32 %i.ass ; 4 uses
  %i.ati = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.ati
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !8
  %i.atl = zext nneg i32 %.02530.i.i.i.i to i64
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atl
  store i32 %i.atk, ptr %i.atm, align 4, !tbaa !8
  %i.atn = shl nuw nsw i32 %spec.select.i.i.i.i, 1 ; 2 uses
  %i.ato = or disjoint i32 %i.atn, 1              ; 2 uses
  %i.atp = icmp slt i32 %i.ato, %.0.i566.i.i
end_hunk_0
