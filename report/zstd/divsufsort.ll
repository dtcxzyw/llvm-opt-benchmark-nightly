Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/divsufsort?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sort_typeBstar:.preheader340.preheader
  br i1 %.not7.i543.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.agw = lshr i64 %i.acb, 10
  %i.agx = and i64 %i.agw, 16777215
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.agx
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !9
  %i.aha = add nsw i32 %i.agz, 8
  br label %.outer.i.i.backedge

bb.ef:                                            ; preds = %bb.ed
  %i.ahb = and i64 %i.agk, 255
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.ahb
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !9
  br label %.outer.i.i.backedge

bb.eg:                                            ; preds = %bb.ds
  %i.ahe = icmp sgt i64 %i.aca, 1
  br i1 %i.ahe, label %bb.eh, label %bb.eo

bb.eh:                                            ; preds = %bb.eg
  %i.ahf = trunc i64 %i.aca to i32                ; 3 uses
  %.not.i545.i.i = icmp ult i32 %i.ahf, 65536
  br i1 %.not.i545.i.i, label %bb.el, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.not8.i546.i.i = icmp ult i32 %i.ahf, 16777216
  br i1 %.not8.i546.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ahg = lshr i64 %i.aca, 24
  %i.ahh = and i64 %i.ahg, 255
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.ahh
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !9
  %i.ahk = add nsw i32 %i.ahj, 24
  br label %.outer.i.i.backedge

bb.ek:                                            ; preds = %bb.ei
  %i.ahl = lshr i64 %i.aca, 16
  %i.ahm = and i64 %i.ahl, 255
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.ahm
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !9
  %i.ahp = add nsw i32 %i.aho, 16
  br label %.outer.i.i.backedge

bb.el:                                            ; preds = %bb.eh
  %.not7.i547.i.i = icmp samesign ult i32 %i.ahf, 256
  br i1 %.not7.i547.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ahq = lshr i64 %i.aca, 8
  %i.ahr = and i64 %i.ahq, 255
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.ahr
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !9
  %i.ahu = add nsw i32 %i.aht, 8
  br label %.outer.i.i.backedge

bb.en:                                            ; preds = %bb.el
  %i.ahv = and i64 %i.aca, 255
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.ahv
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !9
  br label %.outer.i.i.backedge

bb.eo:                                            ; preds = %bb.eg
  %i.ahy = icmp eq i32 %.1446.i.i, 0
  br i1 %i.ahy, label %tr_introsort.exit.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ahz = add nsw i32 %.1446.i.i, -1             ; 2 uses
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aia ; 5 uses
  %i.aic = load ptr, ptr %i.aib, align 16, !tbaa !103
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !104
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  %i.aig = load ptr, ptr %i.aif, align 16, !tbaa !105
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aib, i64 24
  %i.aii = load i32, ptr %i.aih, align 8, !tbaa !106
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aib, i64 28
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !107
  br label %.outer.i.i.backedge

bb.eq:                                            ; preds = %._crit_edge.i.i305
  %i.ail = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.aim = sext i32 %i.ail to i64
  %i.ain = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aim ; 3 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !104 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 16
  %i.air = load ptr, ptr %i.aiq, align 16, !tbaa !105 ; 6 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ain, i64 24
  %i.ait = load i32, ptr %i.ais, align 8, !tbaa !106
  %i.aiu = icmp eq i32 %i.ait, 0
  br i1 %i.aiu, label %bb.er, label %bb.ey

bb.er:                                            ; preds = %bb.eq
  %i.aiv = ptrtoint ptr %.0456.ph.i.i to i64
  %i.aiw = sub i64 %i.aiv, %i.ri
  %i.aix = lshr exact i64 %i.aiw, 2
  %i.aiy = trunc i64 %i.aix to i32                ; 2 uses
  %i.aiz = ptrtoint ptr %i.air to i64
  %i.aja = sub i64 %i.aiz, %i.rj
  %i.ajb = lshr exact i64 %i.aja, 2
  %i.ajc = trunc i64 %i.ajb to i32
  %i.ajd = add i32 %i.ajc, -1                     ; 2 uses
  %i.aje = getelementptr inbounds i8, ptr %i.aip, i64 -4 ; 3 uses
  %.not38.i.i.i = icmp ugt ptr %.0462.ph.i.i, %i.aje
  br i1 %.not38.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i307

.lr.ph.i.i.i307:                                  ; preds = %bb.er, %bb.eu
  %.040.i.i.i = phi ptr [ %.1.i.i.i308, %bb.eu ], [ %i.aje, %bb.er ] ; 3 uses
  %.03439.i.i.i = phi ptr [ %i.ajr, %bb.eu ], [ %.0462.ph.i.i, %bb.er ] ; 2 uses
  %i.ajf = load i32, ptr %.03439.i.i.i, align 4, !tbaa !9
  %i.ajg = sub nsw i32 %i.ajf, %i.aiy             ; 3 uses
  %i.ajh = icmp sgt i32 %i.ajg, -1
  br i1 %i.ajh, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %.lr.ph.i.i.i307
  %i.aji = zext nneg i32 %i.ajg to i64
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.aji ; 2 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !9
  %i.ajl = icmp eq i32 %i.ajk, %i.ajd
  br i1 %i.ajl, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ajm = getelementptr inbounds nuw i8, ptr %.040.i.i.i, i64 4 ; 3 uses
  store i32 %i.ajg, ptr %i.ajm, align 4, !tbaa !9
  %i.ajn = ptrtoint ptr %i.ajm to i64
  %i.ajo = sub i64 %i.ajn, %i.rj
  %i.ajp = lshr exact i64 %i.ajo, 2
  %i.ajq = trunc i64 %i.ajp to i32
  store i32 %i.ajq, ptr %i.ajj, align 4, !tbaa !9
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %.lr.ph.i.i.i307
  %.1.i.i.i308 = phi ptr [ %i.ajm, %bb.et ], [ %.040.i.i.i, %bb.es ], [ %.040.i.i.i, %.lr.ph.i.i.i307 ] ; 3 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.03439.i.i.i, i64 4 ; 2 uses
  %.not.i549.i.i = icmp ugt ptr %i.ajr, %.1.i.i.i308
  br i1 %.not.i549.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i307, !llvm.loop !63

._crit_edge.i.i.i:                                ; preds = %bb.eu, %bb.er
  %.0.lcssa.i.i.i309 = phi ptr [ %i.aje, %bb.er ], [ %.1.i.i.i308, %bb.eu ]
  %i.ajs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i309, i64 4 ; 2 uses
  %i.ajt = icmp ult ptr %i.ajs, %i.air
  br i1 %i.ajt, label %.lr.ph45.i.i.i, label %tr_copy.exit.i.i

.lr.ph45.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %bb.ex
  %.13543.pn.i.i.i = phi ptr [ %.13543.i.i.i, %bb.ex ], [ %.0459.ph.i.i, %._crit_edge.i.i.i ]
  %.242.i.i.i = phi ptr [ %.3.i.i.i310, %bb.ex ], [ %i.air, %._crit_edge.i.i.i ] ; 3 uses
  %.13543.i.i.i = getelementptr inbounds i8, ptr %.13543.pn.i.i.i, i64 -4 ; 2 uses
  %i.aju = load i32, ptr %.13543.i.i.i, align 4, !tbaa !9
  %i.ajv = sub nsw i32 %i.aju, %i.aiy             ; 3 uses
  %i.ajw = icmp sgt i32 %i.ajv, -1
  br i1 %i.ajw, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %.lr.ph45.i.i.i
  %i.ajx = zext nneg i32 %i.ajv to i64
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ajx ; 2 uses
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !9
  %i.aka = icmp eq i32 %i.ajz, %i.ajd
  br i1 %i.aka, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.akb = getelementptr inbounds i8, ptr %.242.i.i.i, i64 -4 ; 3 uses
  store i32 %i.ajv, ptr %i.akb, align 4, !tbaa !9
  %i.akc = ptrtoint ptr %i.akb to i64
  %i.akd = sub i64 %i.akc, %i.rj
  %i.ake = lshr exact i64 %i.akd, 2
  %i.akf = trunc i64 %i.ake to i32
  store i32 %i.akf, ptr %i.ajy, align 4, !tbaa !9
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %.lr.ph45.i.i.i
  %.3.i.i.i310 = phi ptr [ %i.akb, %bb.ew ], [ %.242.i.i.i, %bb.ev ], [ %.242.i.i.i, %.lr.ph45.i.i.i ] ; 2 uses
  %i.akg = icmp ult ptr %i.ajs, %.3.i.i.i310
  br i1 %i.akg, label %.lr.ph45.i.i.i, label %tr_copy.exit.i.i, !llvm.loop !64

bb.ey:                                            ; preds = %bb.eq
  %i.akh = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.akh, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.aki = zext nneg i32 %.0.ph.i.i to i64
  %i.akj = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.aki
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 24
  store i32 -1, ptr %i.akk, align 8, !tbaa !106
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.akl = ptrtoint ptr %.0456.ph.i.i to i64
  %i.akm = sub i64 %i.akl, %i.ri
  %i.akn = lshr exact i64 %i.akm, 2
  %i.ako = trunc i64 %i.akn to i32                ; 2 uses
  %i.akp = ptrtoint ptr %i.air to i64
  %i.akq = sub i64 %i.akp, %i.rj
  %i.akr = lshr exact i64 %i.akq, 2
  %i.aks = trunc i64 %i.akr to i32
  %i.akt = add i32 %i.aks, -1                     ; 2 uses
  %i.aku = getelementptr inbounds i8, ptr %i.aip, i64 -4 ; 3 uses
  %.not89.i.i.i = icmp ugt ptr %.0462.ph.i.i, %i.aku
  br i1 %.not89.i.i.i, label %._crit_edge.i553.i.i, label %.lr.ph.i550.i.i

.preheader.i.i.i:                                 ; preds = %bb.fd
  %.not8495.i.i.i = icmp ugt ptr %.0462.ph.i.i, %.174.i.i.i
  br i1 %.not8495.i.i.i, label %._crit_edge.i553.i.i, label %.lr.ph99.i.i.i

.lr.ph.i550.i.i:                                  ; preds = %bb.fa, %bb.fd
  %.093.i.i.i = phi i32 [ %.2.i.i.i306, %bb.fd ], [ -1, %bb.fa ] ; 3 uses
  %.06492.i.i.i = phi i32 [ %.266.i.i.i, %bb.fd ], [ -1, %bb.fa ] ; 3 uses
  %.07391.i.i.i = phi ptr [ %.174.i.i.i, %bb.fd ], [ %i.aku, %bb.fa ] ; 3 uses
  %.07790.i.i.i = phi ptr [ %i.alk, %bb.fd ], [ %.0462.ph.i.i, %bb.fa ] ; 2 uses
  %i.akv = load i32, ptr %.07790.i.i.i, align 4, !tbaa !9 ; 2 uses
  %i.akw = sub nsw i32 %i.akv, %i.ako             ; 3 uses
  %i.akx = icmp sgt i32 %i.akw, -1
  br i1 %i.akx, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %.lr.ph.i550.i.i
  %i.aky = zext nneg i32 %i.akw to i64
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.aky ; 2 uses
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !9
  %i.alb = icmp eq i32 %i.ala, %i.akt
  br i1 %i.alb, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.alc = getelementptr inbounds nuw i8, ptr %.07391.i.i.i, i64 4 ; 3 uses
  store i32 %i.akw, ptr %i.alc, align 4, !tbaa !9
  %i.ald = sext i32 %i.akv to i64
  %i.ale = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ald
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !9 ; 2 uses
  %.not88.i.i.i = icmp eq i32 %.06492.i.i.i, %i.alf
  %i.alg = ptrtoint ptr %i.alc to i64
  %i.alh = sub i64 %i.alg, %i.rj
  %i.ali = lshr exact i64 %i.alh, 2
  %i.alj = trunc i64 %i.ali to i32
  %.1.i554.i.i = select i1 %.not88.i.i.i, i32 %.093.i.i.i, i32 %i.alj ; 2 uses
  store i32 %.1.i554.i.i, ptr %i.akz, align 4, !tbaa !9
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %.lr.ph.i550.i.i
  %.174.i.i.i = phi ptr [ %i.alc, %bb.fc ], [ %.07391.i.i.i, %bb.fb ], [ %.07391.i.i.i, %.lr.ph.i550.i.i ] ; 6 uses
  %.266.i.i.i = phi i32 [ %i.alf, %bb.fc ], [ %.06492.i.i.i, %bb.fb ], [ %.06492.i.i.i, %.lr.ph.i550.i.i ]
  %.2.i.i.i306 = phi i32 [ %.1.i554.i.i, %bb.fc ], [ %.093.i.i.i, %bb.fb ], [ %.093.i.i.i, %.lr.ph.i550.i.i ] ; 3 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.07790.i.i.i, i64 4 ; 2 uses
  %.not.i551.i.i = icmp ugt ptr %i.alk, %.174.i.i.i
  br i1 %.not.i551.i.i, label %.preheader.i.i.i, label %.lr.ph.i550.i.i, !llvm.loop !65

.lr.ph99.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.ff
  %.398.i.i.i = phi i32 [ %.4.i.i.i, %bb.ff ], [ %.2.i.i.i306, %.preheader.i.i.i ]
  %.36797.i.i.i = phi i32 [ %i.alo, %bb.ff ], [ -1, %.preheader.i.i.i ]
  %.07296.i.i.i = phi ptr [ %i.alt, %bb.ff ], [ %.174.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.all = load i32, ptr %.07296.i.i.i, align 4, !tbaa !9
  %i.alm = sext i32 %i.all to i64
  %i.aln = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.alm ; 2 uses
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !9 ; 3 uses
  %.not86.i.i.i = icmp eq i32 %.36797.i.i.i, %i.alo
  %i.alp = ptrtoint ptr %.07296.i.i.i to i64
  %i.alq = sub i64 %i.alp, %i.rj
  %i.alr = lshr exact i64 %i.alq, 2
  %i.als = trunc i64 %i.alr to i32
  %.4.i.i.i = select i1 %.not86.i.i.i, i32 %.398.i.i.i, i32 %i.als ; 4 uses
  %.not87.i.i.i = icmp eq i32 %.4.i.i.i, %i.alo
  br i1 %.not87.i.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph99.i.i.i
  store i32 %.4.i.i.i, ptr %i.aln, align 4, !tbaa !9
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph99.i.i.i
  %i.alt = getelementptr inbounds i8, ptr %.07296.i.i.i, i64 -4 ; 2 uses
  %.not84.i.i.i = icmp ugt ptr %.0462.ph.i.i, %i.alt
  br i1 %.not84.i.i.i, label %._crit_edge.i553.i.i, label %.lr.ph99.i.i.i, !llvm.loop !66

._crit_edge.i553.i.i:                             ; preds = %bb.ff, %.preheader.i.i.i, %bb.fa
  %.073.lcssa121.i.i.i = phi ptr [ %.174.i.i.i, %.preheader.i.i.i ], [ %i.aku, %bb.fa ], [ %.174.i.i.i, %bb.ff ]
  %.3.lcssa.i.i.i = phi i32 [ %.2.i.i.i306, %.preheader.i.i.i ], [ -1, %bb.fa ], [ %.4.i.i.i, %bb.ff ]
  %i.alu = getelementptr inbounds nuw i8, ptr %.073.lcssa121.i.i.i, i64 4 ; 2 uses
  %i.alv = icmp ult ptr %i.alu, %i.air
  br i1 %i.alv, label %.lr.ph107.i.i.i, label %tr_copy.exit.i.i

.lr.ph107.i.i.i:                                  ; preds = %._crit_edge.i553.i.i, %bb.fi
  %.178105.pn.i.i.i = phi ptr [ %.178105.i.i.i, %bb.fi ], [ %.0459.ph.i.i, %._crit_edge.i553.i.i ]
  %.5104.i.i.i = phi i32 [ %.7.i.i.i, %bb.fi ], [ %.3.lcssa.i.i.i, %._crit_edge.i553.i.i ] ; 3 uses
  %.569103.i.i.i = phi i32 [ %.771.i.i.i, %bb.fi ], [ -1, %._crit_edge.i553.i.i ] ; 3 uses
  %.275102.i.i.i = phi ptr [ %.376.i.i.i, %bb.fi ], [ %i.air, %._crit_edge.i553.i.i ] ; 3 uses
  %.178105.i.i.i = getelementptr inbounds i8, ptr %.178105.pn.i.i.i, i64 -4 ; 2 uses
  %i.alw = load i32, ptr %.178105.i.i.i, align 4, !tbaa !9 ; 2 uses
  %i.alx = sub nsw i32 %i.alw, %i.ako             ; 3 uses
  %i.aly = icmp sgt i32 %i.alx, -1
  br i1 %i.aly, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %.lr.ph107.i.i.i
  %i.alz = zext nneg i32 %i.alx to i64
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.alz ; 2 uses
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !9
  %i.amc = icmp eq i32 %i.amb, %i.akt
  br i1 %i.amc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.amd = getelementptr inbounds i8, ptr %.275102.i.i.i, i64 -4 ; 3 uses
  store i32 %i.alx, ptr %i.amd, align 4, !tbaa !9
  %i.ame = sext i32 %i.alw to i64
  %i.amf = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ame
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !9 ; 2 uses
  %.not85.i.i.i = icmp eq i32 %.569103.i.i.i, %i.amg
  %i.amh = ptrtoint ptr %i.amd to i64
  %i.ami = sub i64 %i.amh, %i.rj
  %i.amj = lshr exact i64 %i.ami, 2
  %i.amk = trunc i64 %i.amj to i32
  %.6.i.i.i = select i1 %.not85.i.i.i, i32 %.5104.i.i.i, i32 %i.amk ; 2 uses
  store i32 %.6.i.i.i, ptr %i.ama, align 4, !tbaa !9
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %.lr.ph107.i.i.i
  %.376.i.i.i = phi ptr [ %i.amd, %bb.fh ], [ %.275102.i.i.i, %bb.fg ], [ %.275102.i.i.i, %.lr.ph107.i.i.i ] ; 2 uses
  %.771.i.i.i = phi i32 [ %i.amg, %bb.fh ], [ %.569103.i.i.i, %bb.fg ], [ %.569103.i.i.i, %.lr.ph107.i.i.i ]
  %.7.i.i.i = phi i32 [ %.6.i.i.i, %bb.fh ], [ %.5104.i.i.i, %bb.fg ], [ %.5104.i.i.i, %.lr.ph107.i.i.i ]
  %i.aml = icmp ult ptr %i.alu, %.376.i.i.i
  br i1 %i.aml, label %.lr.ph107.i.i.i, label %tr_copy.exit.i.i, !llvm.loop !67

tr_copy.exit.i.i:                                 ; preds = %bb.fi, %bb.ex, %._crit_edge.i553.i.i, %._crit_edge.i.i.i
  %i.amm = icmp eq i32 %i.ail, 0
  br i1 %i.amm, label %tr_introsort.exit.i, label %bb.fj

bb.fj:                                            ; preds = %tr_copy.exit.i.i
  %i.amn = add nsw i32 %.0445.ph.i.i, -2          ; 2 uses
  %i.amo = sext i32 %i.amn to i64
  %i.amp = getelementptr inbounds [32 x i8], ptr %5, i64 %i.amo ; 5 uses
  %i.amq = load ptr, ptr %i.amp, align 16, !tbaa !103
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amp, i64 8
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !104
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amp, i64 16
  %i.amu = load ptr, ptr %i.amt, align 16, !tbaa !105
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amp, i64 24
  %i.amw = load i32, ptr %i.amv, align 8, !tbaa !106
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amp, i64 28
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !107
  br label %.outer.i.i.backedge

._crit_edge.thread.i.i299:                        ; preds = %.critedge2.i.i, %bb.bx, %tr_heapsort.exit.i.i, %._crit_edge.i.i305, %.lr.ph640.split.us.i.i
  %i.amz = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !9 ; 3 uses
  %i.ana = icmp sgt i32 %i.amz, -1
  br i1 %i.ana, label %.preheader.i.a, label %.critedge.i.i300

.preheader.i.a:                                   ; preds = %._crit_edge.thread.i.i299, %bb.fk
  %i.anb = phi i32 [ %i.anl, %bb.fk ], [ %i.amz, %._crit_edge.thread.i.i299 ]
  %i.anc = phi ptr [ %i.anj, %bb.fk ], [ %.0462.ph.i.i, %._crit_edge.thread.i.i299 ] ; 2 uses
  %i.and = ptrtoint ptr %i.anc to i64
  %i.ane = sub i64 %i.and, %i.rj
  %i.anf = lshr exact i64 %i.ane, 2
  %i.ang = trunc i64 %i.anf to i32
  %i.anh = zext nneg i32 %i.anb to i64
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.anh
  store i32 %i.ang, ptr %i.ani, align 4, !tbaa !9
  %i.anj = getelementptr inbounds nuw i8, ptr %i.anc, i64 4 ; 4 uses
  %i.ank = icmp ult ptr %i.anj, %.0459.ph.i.i
  br i1 %i.ank, label %bb.fk, label %bb.gf

bb.fk:                                            ; preds = %.preheader.i.a
  %i.anl = load i32, ptr %i.anj, align 4, !tbaa !9 ; 3 uses
  %i.anm = icmp sgt i32 %i.anl, -1
  br i1 %i.anm, label %.preheader.i.a, label %.critedge.i.i300, !llvm.loop !68

.critedge.i.i300:                                 ; preds = %bb.fk, %._crit_edge.thread.i.i299
  %6 = phi i32 [ %i.amz, %._crit_edge.thread.i.i299 ], [ %i.anl, %bb.fk ]
  %.1463.i.i = phi ptr [ %.0462.ph.i.i, %._crit_edge.thread.i.i299 ], [ %i.anj, %bb.fk ] ; 8 uses
  %i.ann = icmp ult ptr %.1463.i.i, %.0459.ph.i.i
  br i1 %i.ann, label %bb.fl, label %bb.gf

bb.fl:                                            ; preds = %.critedge.i.i300, %bb.fl
  %i.ano = phi i32 [ %i.ans, %bb.fl ], [ %6, %.critedge.i.i300 ]
  %i.anp = phi ptr [ %i.anr, %bb.fl ], [ %.1463.i.i, %.critedge.i.i300 ] ; 3 uses
  %i.anq = xor i32 %i.ano, -1
  store i32 %i.anq, ptr %i.anp, align 4, !tbaa !9
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anp, i64 4 ; 3 uses
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !9 ; 3 uses
  %i.ant = icmp slt i32 %i.ans, 0
  br i1 %i.ant, label %bb.fl, label %bb.fm, !llvm.loop !69

bb.fm:                                            ; preds = %bb.fl
  %i.anu = zext nneg i32 %i.ans to i64            ; 2 uses
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.anu
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !9
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %.0456.ph.i.i, i64 %i.anu
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !9
  %.not517.i.i = icmp eq i32 %i.anw, %i.any
  br i1 %.not517.i.i, label %tr_ilg.exit558.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.anz = ptrtoint ptr %i.anr to i64
  %i.aoa = ptrtoint ptr %.1463.i.i to i64
  %i.aob = sub i64 %i.anz, %i.aoa
  %i.aoc = lshr exact i64 %i.aob, 2
  %i.aod = trunc i64 %i.aoc to i32
  %i.aoe = add i32 %i.aod, 1                      ; 7 uses
  %.not.i555.i.i = icmp ult i32 %i.aoe, 65536
  br i1 %.not.i555.i.i, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %.not8.i556.i.i = icmp ult i32 %i.aoe, 16777216
  br i1 %.not8.i556.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aof = lshr i32 %i.aoe, 24
  %i.aog = zext nneg i32 %i.aof to i64
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aog
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !9
  %i.aoj = add nsw i32 %i.aoi, 24
  br label %tr_ilg.exit558.i.i

bb.fq:                                            ; preds = %bb.fo
  %i.aok = lshr i32 %i.aoe, 16
  %i.aol = zext nneg i32 %i.aok to i64
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aol
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !9
  %i.aoo = add nsw i32 %i.aon, 16
  br label %tr_ilg.exit558.i.i

bb.fr:                                            ; preds = %bb.fn
  %.not7.i557.i.i = icmp samesign ult i32 %i.aoe, 256
  br i1 %.not7.i557.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aop = lshr i32 %i.aoe, 8
  %i.aoq = zext nneg i32 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aoq
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !9
  %i.aot = add nsw i32 %i.aos, 8
  br label %tr_ilg.exit558.i.i

bb.ft:                                            ; preds = %bb.fr
  %i.aou = zext nneg i32 %i.aoe to i64
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aou
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !9
  br label %tr_ilg.exit558.i.i

tr_ilg.exit558.i.i:                               ; preds = %bb.ft, %bb.fs, %bb.fq, %bb.fp, %bb.fm
  %i.aox = phi i32 [ -1, %bb.fm ], [ %i.aoo, %bb.fq ], [ %i.aoj, %bb.fp ], [ %i.aot, %bb.fs ], [ %i.aow, %bb.ft ] ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.anp, i64 8 ; 9 uses
  %i.aoz = icmp ult ptr %i.aoy, %.0459.ph.i.i
  %i.apa = ptrtoint ptr %i.aoy to i64             ; 4 uses
  br i1 %i.aoz, label %.lr.ph667.i.preheader.i, label %tr_ilg.exit558._crit_edge.i.i

.lr.ph667.i.preheader.i:                          ; preds = %tr_ilg.exit558.i.i
  %i.apb = sub i64 %i.apa, %i.rj
  %i.apc = lshr exact i64 %i.apb, 2
  %i.apd = trunc i64 %i.apc to i32
  %i.ape = add i32 %i.apd, -1
  br label %.lr.ph667.i.i

.lr.ph667.i.i:                                    ; preds = %.lr.ph667.i.i, %.lr.ph667.i.preheader.i
  %i.apf = phi ptr [ %i.apj, %.lr.ph667.i.i ], [ %.1463.i.i, %.lr.ph667.i.preheader.i ] ; 2 uses
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !9
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.aph
  store i32 %i.ape, ptr %i.api, align 4, !tbaa !9
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apf, i64 4 ; 2 uses
  %i.apk = icmp ult ptr %i.apj, %i.aoy
  br i1 %i.apk, label %.lr.ph667.i.i, label %tr_ilg.exit558._crit_edge.i.i, !llvm.loop !70

tr_ilg.exit558._crit_edge.i.i:                    ; preds = %.lr.ph667.i.i, %tr_ilg.exit558.i.i
  %i.apl = ptrtoint ptr %.1463.i.i to i64
  %i.apm = sub i64 %i.apa, %i.apl                 ; 2 uses
  %i.apn = lshr exact i64 %i.apm, 2
  %i.apo = trunc i64 %i.apn to i32                ; 3 uses
  %.not.i559.i.i = icmp slt i32 %.sroa.9.3.i, %i.apo
  br i1 %.not.i559.i.i, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %tr_ilg.exit558._crit_edge.i.i
  %i.app = icmp eq i32 %.sroa.0.3.i, 0
  br i1 %i.app, label %bb.ga, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.apq = add i32 %.sroa.9.3.i, %i.bu
  %i.apr = add nsw i32 %.sroa.0.3.i, -1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %tr_ilg.exit558._crit_edge.i.i
  %.pn210.i = phi i32 [ %i.apq, %bb.fv ], [ %.sroa.9.3.i, %tr_ilg.exit558._crit_edge.i.i ]
  %.sroa.0.7.i = phi i32 [ %i.apr, %bb.fv ], [ %.sroa.0.3.i, %tr_ilg.exit558._crit_edge.i.i ] ; 3 uses
  %.sroa.9.7.i = sub i32 %.pn210.i, %i.apo        ; 3 uses
  %i.aps = ptrtoint ptr %.0459.ph.i.i to i64
  %i.apt = sub i64 %i.aps, %i.apa                 ; 2 uses
  %.not519.i.i = icmp sgt i64 %i.apm, %i.apt
  br i1 %.not519.i.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.apu = sext i32 %.0445.ph.i.i to i64
  %i.apv = getelementptr inbounds [32 x i8], ptr %5, i64 %i.apu ; 5 uses
  store ptr %.0456.ph.i.i, ptr %i.apv, align 16, !tbaa !103
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 8
  store ptr %i.aoy, ptr %i.apw, align 8, !tbaa !104
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apv, i64 16
  store ptr %.0459.ph.i.i, ptr %i.apx, align 16, !tbaa !105
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apv, i64 24
  store i32 -3, ptr %i.apy, align 8, !tbaa !106
  %i.apz = add nsw i32 %.0445.ph.i.i, 1
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apv, i64 28
  store i32 %.0.ph.i.i, ptr %i.aqa, align 4, !tbaa !107
  %i.aqb = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rn
  br label %.outer.i.i.backedge

bb.fy:                                            ; preds = %bb.fw
  %i.aqc = icmp sgt i64 %i.apt, 4
  %i.aqd = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rn ; 2 uses
  br i1 %i.aqc, label %bb.fz, label %.outer.i.i.backedge

bb.fz:                                            ; preds = %bb.fy
  %i.aqe = sext i32 %.0445.ph.i.i to i64
  %i.aqf = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aqe ; 5 uses
  store ptr %i.aqd, ptr %i.aqf, align 16, !tbaa !103
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  store ptr %.1463.i.i, ptr %i.aqg, align 8, !tbaa !104
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqf, i64 16
  store ptr %i.aoy, ptr %i.aqh, align 16, !tbaa !105
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqf, i64 24
  store i32 %i.aox, ptr %i.aqi, align 8, !tbaa !106
  %i.aqj = add nsw i32 %.0445.ph.i.i, 1
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqf, i64 28
  store i32 %.0.ph.i.i, ptr %i.aqk, align 4, !tbaa !107
  br label %.outer.i.i.backedge

bb.ga:                                            ; preds = %bb.fu
  %i.aql = add nsw i32 %.sroa.23.0.i, %i.apo      ; 3 uses
  %i.aqm = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.aqm, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.aqn = zext nneg i32 %.0.ph.i.i to i64
  %i.aqo = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.aqn
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 24
  store i32 -1, ptr %i.aqp, align 8, !tbaa !106
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.aqq = ptrtoint ptr %.0459.ph.i.i to i64
  %i.aqr = sub i64 %i.aqq, %i.apa
  %i.aqs = icmp sgt i64 %i.aqr, 4
  br i1 %i.aqs, label %.outer.i.i.backedge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.aqt = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.aqt, label %tr_introsort.exit.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aqu = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aqv ; 5 uses
  %i.aqx = load ptr, ptr %i.aqw, align 16, !tbaa !103
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !104
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqw, i64 16
  %i.arb = load ptr, ptr %i.ara, align 16, !tbaa !105
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqw, i64 24
  %i.ard = load i32, ptr %i.arc, align 8, !tbaa !106
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqw, i64 28
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !107
  br label %.outer.i.i.backedge

bb.gf:                                            ; preds = %.preheader.i.a, %.critedge.i.i300
  %i.arg = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.arg, label %tr_introsort.exit.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.arh = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds [32 x i8], ptr %5, i64 %i.ari ; 5 uses
  %i.ark = load ptr, ptr %i.arj, align 16, !tbaa !103
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !104
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arj, i64 16
  %i.aro = load ptr, ptr %i.arn, align 16, !tbaa !105
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arj, i64 24
  %i.arq = load i32, ptr %i.arp, align 8, !tbaa !106
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arj, i64 28
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !107
  br label %.outer.i.i.backedge

.lr.ph640.split.i.i:                              ; preds = %.lr.ph640.i.i
  %i.art = icmp eq i32 %.0449.ph.i.i, 0
  br i1 %i.art, label %bb.gh, label %bb.gq

bb.gh:                                            ; preds = %.lr.ph640.split.i.i
  br i1 %i.tj, label %bb.gi, label %._crit_edge72.i.i.i

bb.gi:                                            ; preds = %bb.gh
  %i.aru = load i32, ptr %i.tn, align 4, !tbaa !9 ; 2 uses
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.arv
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !9
  %i.ary = load i32, ptr %i.tp, align 4, !tbaa !9 ; 2 uses
  %i.arz = sext i32 %i.ary to i64
  %i.asa = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.arz
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !9
  %i.asc = icmp slt i32 %i.arx, %i.asb
  br i1 %i.asc, label %bb.gj, label %._crit_edge72.i.i.i

bb.gj:                                            ; preds = %bb.gi
  store i32 %i.aru, ptr %i.tp, align 4, !tbaa !9
  store i32 %i.ary, ptr %i.tn, align 4, !tbaa !9
  br label %._crit_edge72.i.i.i

._crit_edge72.i.i.i:                              ; preds = %bb.gj, %bb.gi, %bb.gh
  %.0.i566.i.i = phi i32 [ %i.tk, %bb.gj ], [ %i.tk, %bb.gi ], [ %i.th, %bb.gh ] ; 8 uses
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
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !9 ; 2 uses
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asj
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !9
  %i.asm = shl nuw nsw i64 %indvars.iv.next.i.i.i, 1 ; 2 uses
  %i.asn = or disjoint i64 %i.asm, 1              ; 2 uses
  %i.aso = icmp samesign ult i64 %i.asn, %i.asg
  %i.asp = trunc nsw i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  br i1 %i.aso, label %.lr.ph.i.preheader.i.i.i, label %tr_fixdown.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i569.i.i
  %i.asq = trunc nuw nsw i64 %i.asn to i32
  %i.asr = trunc nsw i64 %i.asm to i32
  br label %.lr.ph.i.i.i.i304

.lr.ph.i.i.i.i304:                                ; preds = %bb.gk, %.lr.ph.i.preheader.i.i.i
  %i.ass = phi i32 [ %i.ato, %bb.gk ], [ %i.asq, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.ast = phi i32 [ %i.atn, %bb.gk ], [ %i.asr, %.lr.ph.i.preheader.i.i.i ]
  %.02530.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.gk ], [ %i.asp, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.asu = add nuw nsw i32 %i.ast, 2              ; 2 uses
  %i.asv = zext nneg i32 %i.ass to i64
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.asv
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !9
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asy
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !9 ; 2 uses
  %i.atb = zext nneg i32 %i.asu to i64
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atb
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !9
  %i.ate = sext i32 %i.atd to i64
  %i.atf = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.ate
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !9 ; 2 uses
  %spec.select29.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ata, i32 %i.atg)
  %.not.i.i.i.i = icmp sgt i32 %spec.select29.i.i.i.i, %i.asl
  br i1 %.not.i.i.i.i, label %bb.gk, label %tr_fixdown.exit.i.i.i

bb.gk:                                            ; preds = %.lr.ph.i.i.i.i304
  %i.ath = icmp slt i32 %i.ata, %i.atg
  %spec.select.i.i.i.i = select i1 %i.ath, i32 %i.asu, i32 %i.ass ; 4 uses
  %i.ati = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.ati
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !9
  %i.atl = zext nneg i32 %.02530.i.i.i.i to i64
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atl
  store i32 %i.atk, ptr %i.atm, align 4, !tbaa !9
  %i.atn = shl nuw nsw i32 %spec.select.i.i.i.i, 1 ; 2 uses
  %i.ato = or disjoint i32 %i.atn, 1              ; 2 uses
  %i.atp = icmp slt i32 %i.ato, %.0.i566.i.i
  br i1 %i.atp, label %.lr.ph.i.i.i.i304, label %tr_fixdown.exit.i.i.i, !llvm.loop !71

tr_fixdown.exit.i.i.i:                            ; preds = %bb.gk, %.lr.ph.i.i.i.i304, %.lr.ph.i569.i.i
  %.025.lcssa.i.i.i.i = phi i32 [ %i.asp, %.lr.ph.i569.i.i ], [ %.02530.i.i.i.i, %.lr.ph.i.i.i.i304 ], [ %spec.select.i.i.i.i, %bb.gk ]
  %i.atq = zext nneg i32 %.025.lcssa.i.i.i.i to i64
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atq
  store i32 %i.asi, ptr %i.atr, align 4, !tbaa !9
  %i.ats = icmp sgt i64 %indvars.iv.i.i.i, 1
  br i1 %i.ats, label %.lr.ph.i569.i.i, label %._crit_edge.i567.i.i, !llvm.loop !72

._crit_edge.i567.i.i:                             ; preds = %tr_fixdown.exit.i.i.i, %._crit_edge72.i.i.i
  br i1 %i.tj, label %bb.gl, label %bb.gn

bb.gl:                                            ; preds = %._crit_edge.i567.i.i
  %i.att = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !9
  %i.atu = sext i32 %.0.i566.i.i to i64
  %i.atv = getelementptr inbounds [4 x i8], ptr %.0462.ph.i.i, i64 %i.atu ; 2 uses
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !9
  store i32 %i.atw, ptr %.0462.ph.i.i, align 4, !tbaa !9
  store i32 %i.att, ptr %i.atv, align 4, !tbaa !9
  %i.atx = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !9 ; 2 uses
  %i.aty = sext i32 %i.atx to i64
  %i.atz = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.aty
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !9
  br i1 %i.asd, label %.lr.ph.i50.i.i.i, label %tr_fixdown.exit55.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %bb.gl, %bb.gm
  %i.aub = phi i32 [ %i.aux, %bb.gm ], [ 1, %bb.gl ] ; 2 uses
  %i.auc = phi i32 [ %i.auw, %bb.gm ], [ 0, %bb.gl ]
  %.02530.i51.i.i.i = phi i32 [ %spec.select.i54.i.i.i, %bb.gm ], [ 0, %bb.gl ] ; 2 uses
  %i.aud = add nuw nsw i32 %i.auc, 2              ; 2 uses
  %i.aue = zext nneg i32 %i.aub to i64
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.aue
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !9
  %i.auh = sext i32 %i.aug to i64
  %i.aui = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.auh
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !9 ; 2 uses
  %i.auk = zext nneg i32 %i.aud to i64
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.auk
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !9
  %i.aun = sext i32 %i.aum to i64
  %i.auo = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.aun
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !9 ; 2 uses
  %spec.select29.i52.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.auj, i32 %i.aup)
  %.not.i53.i.i.i = icmp sgt i32 %spec.select29.i52.i.i.i, %i.aua
  br i1 %.not.i53.i.i.i, label %bb.gm, label %.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i

.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i: ; preds = %.lr.ph.i50.i.i.i
  %.pre690.i.i = zext nneg i32 %.02530.i51.i.i.i to i64
  br label %tr_fixdown.exit55.i.i.i

bb.gm:                                            ; preds = %.lr.ph.i50.i.i.i
  %i.auq = icmp slt i32 %i.auj, %i.aup
  %spec.select.i54.i.i.i = select i1 %i.auq, i32 %i.aud, i32 %i.aub ; 3 uses
  %i.aur = zext nneg i32 %spec.select.i54.i.i.i to i64 ; 2 uses
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.aur
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !9
  %i.auu = zext nneg i32 %.02530.i51.i.i.i to i64
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.auu
  store i32 %i.aut, ptr %i.auv, align 4, !tbaa !9
  %i.auw = shl nuw nsw i32 %spec.select.i54.i.i.i, 1 ; 2 uses
  %i.aux = or disjoint i32 %i.auw, 1              ; 2 uses
  %i.auy = icmp slt i32 %i.aux, %.0.i566.i.i
  br i1 %i.auy, label %.lr.ph.i50.i.i.i, label %tr_fixdown.exit55.i.i.i, !llvm.loop !71

tr_fixdown.exit55.i.i.i:                          ; preds = %bb.gm, %.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i, %bb.gl
  %.025.lcssa.i49.i.i.i = phi i64 [ 0, %bb.gl ], [ %.pre690.i.i, %.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i ], [ %i.aur, %bb.gm ]
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %.025.lcssa.i49.i.i.i
  store i32 %i.atx, ptr %i.auz, align 4, !tbaa !9
  br label %bb.gn

bb.gn:                                            ; preds = %tr_fixdown.exit55.i.i.i, %._crit_edge.i567.i.i
  br i1 %i.asd, label %.lr.ph66.preheader.i.i.i, label %tr_heapsort.exit.i.i

.lr.ph66.preheader.i.i.i:                         ; preds = %bb.gn
  %i.ava = zext nneg i32 %.0.i566.i.i to i64
  %indvars.iv.next70.i622.i.i = add nsw i64 %i.ava, -1 ; 2 uses
  %i.avb = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !9 ; 2 uses
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %indvars.iv.next70.i622.i.i ; 3 uses
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !9 ; 2 uses
  store i32 %i.avd, ptr %.0462.ph.i.i, align 4, !tbaa !9
  %.not.i568623.i.i = icmp eq i32 %.0.i566.i.i, 2
  br i1 %.not.i568623.i.i, label %tr_fixdown.exit62.thread.i.i.i, label %.lr.ph.i57.i.preheader.i.i

.lr.ph.i57.i.preheader.i.i:                       ; preds = %.lr.ph66.preheader.i.i.i, %tr_fixdown.exit62.i.i.i
  %i.ave = phi i32 [ %i.awk, %tr_fixdown.exit62.i.i.i ], [ %i.avd, %.lr.ph66.preheader.i.i.i ] ; 2 uses
  %i.avf = phi ptr [ %i.awj, %tr_fixdown.exit62.i.i.i ], [ %i.avc, %.lr.ph66.preheader.i.i.i ]
  %i.avg = phi i32 [ %i.awi, %tr_fixdown.exit62.i.i.i ], [ %i.avb, %.lr.ph66.preheader.i.i.i ]
  %indvars.iv.next70.i624.i.i = phi i64 [ %indvars.iv.next70.i.i.i, %tr_fixdown.exit62.i.i.i ], [ %indvars.iv.next70.i622.i.i, %.lr.ph66.preheader.i.i.i ] ; 3 uses
  %.pn.i.i303 = sext i32 %i.ave to i64
  %.in.i.i = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %.pn.i.i303
  %i.avh = load i32, ptr %.in.i.i, align 4, !tbaa !9
  br label %.lr.ph.i57.i.i.i

tr_fixdown.exit62.thread.i.i.i:                   ; preds = %tr_fixdown.exit62.i.i.i, %.lr.ph66.preheader.i.i.i
end_hunk_0
