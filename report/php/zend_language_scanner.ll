Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_language_scanner?download=true
inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lex_scan:bb.a
    i8 127, label %bb.cgh
    i8 126, label %bb.cgh
    i8 125, label %bb.cgh
    i8 124, label %bb.cgh
    i8 123, label %bb.cgh
    i8 96, label %bb.cgh
  ]

bb.cgo:                                           ; preds = %bb.cgi
  %i.gno = getelementptr inbounds nuw i8, ptr %i.glt, i64 3 ; 2 uses
  store ptr %i.gno, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gnp = load i8, ptr %i.gno, align 1, !tbaa !44
  %i.gnq = icmp eq i8 %i.gnp, 62
  br i1 %i.gnq, label %bb.cgq, label %bb.cgh

bb.cgp:                                           ; preds = %bb.cgn, %bb.cgm
  %i.gnr = getelementptr inbounds nuw i8, ptr %i.glt, i64 4
  %i.gns = ptrtoint ptr %i.gnr to i64
  %i.gnt = ptrtoint ptr %i.y to i64
  %i.gnu = sub i64 %i.gns, %i.gnt                 ; 2 uses
  %i.gnv = trunc i64 %i.gnu to i32
  %i.gnw = and i64 %i.gnu, 4294967295
  %i.gnx = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gnw
  %i.gny = getelementptr inbounds i8, ptr %i.gnx, i64 -3
  store ptr %i.gny, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gnz = add i32 %i.gnv, -3
  store i32 %i.gnz, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.goa = tail call i32 @zend_stack_push(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 72), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64)) #16 ; 0 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br label %.thread6554

bb.cgq:                                           ; preds = %bb.cgo
  %i.gob = getelementptr inbounds nuw i8, ptr %i.glt, i64 4 ; 2 uses
  store ptr %i.gob, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.goc = load i8, ptr %i.gob, align 1, !tbaa !44 ; 5 uses
  %i.god = icmp ult i8 %i.goc, 96
  br i1 %i.god, label %bb.cgr, label %bb.cgt

bb.cgr:                                           ; preds = %bb.cgq
  %i.goe = icmp samesign ult i8 %i.goc, 65
  br i1 %i.goe, label %bb.cgh, label %bb.cgs

bb.cgs:                                           ; preds = %bb.cgr
  %i.gof = icmp samesign ugt i8 %i.goc, 90
  %i.gog = icmp ne i8 %i.goc, 95
  %or.cond1538 = and i1 %i.gof, %i.gog
  br i1 %or.cond1538, label %bb.cgh, label %bb.cgu

bb.cgt:                                           ; preds = %bb.cgq
  switch i8 %i.goc, label %bb.cgu [
    i8 127, label %bb.cgh
    i8 126, label %bb.cgh
    i8 125, label %bb.cgh
    i8 124, label %bb.cgh
    i8 123, label %bb.cgh
    i8 96, label %bb.cgh
  ]

bb.cgu:                                           ; preds = %bb.cgt, %bb.cgs
  %i.goh = ptrtoint ptr %i.glr to i64
  %i.goi = ptrtoint ptr %i.y to i64
  %i.goj = sub i64 %i.goh, %i.goi                 ; 2 uses
  %i.gok = trunc i64 %i.goj to i32
  %i.gol = and i64 %i.goj, 4294967295
  %i.gom = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gol
  %i.gon = getelementptr inbounds i8, ptr %i.gom, i64 -4
  store ptr %i.gon, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.goo = add i32 %i.gok, -4
  store i32 %i.goo, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.gop = tail call i32 @zend_stack_push(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 72), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64)) #16 ; 0 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br label %.thread6554

bb.cgv:                                           ; preds = %bb.d
  br i1 %.not5699, label %bb.cgw, label %.thread6532

bb.cgw:                                           ; preds = %bb.cgv
  %i.goq = load i8, ptr %i.y, align 1, !tbaa !44
  %i.gor = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 5 uses
  store ptr %i.gor, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  switch i8 %i.goq, label %bb.cgx [
    i8 36, label %bb.cil
    i8 123, label %bb.cis
  ]

bb.cgx:                                           ; preds = %bb.cgw, %bb.cin, %bb.cis, %bb.cir, %bb.cip, %bb.cim
  %i.gos = ptrtoint ptr %i.y to i64               ; 4 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.got = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 104), align 8, !tbaa !143
  %i.gou = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !139
  %i.gov = sext i32 %i.gou to i64
  %i.gow = getelementptr [8 x i8], ptr %i.got, i64 %i.gov
  %i.gox = getelementptr i8, ptr %i.gow, i64 -8
  %i.goy = load ptr, ptr %i.gox, align 8, !tbaa !55 ; 4 uses
  %i.goz = icmp ugt ptr %i.gor, %i.ac
  br i1 %i.goz, label %bb.cgy, label %bb.chb

bb.cgy:                                           ; preds = %bb.cgx
  %i.gpa = tail call zeroext i1 @zend_stack_is_empty(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 128)) #16 ; 2 uses
  br i1 %i.gpa, label %check_nesting_at_end.exit6429, label %bb.cgz

bb.cgz:                                           ; preds = %bb.cgy
  %i.gpb = tail call ptr @zend_stack_top(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 128)) #16 ; 2 uses
  %i.gpc = load i8, ptr %i.gpb, align 4, !tbaa !134
  %i.gpd = getelementptr inbounds nuw i8, ptr %i.gpb, i64 4
  %i.gpe = load i32, ptr %i.gpd, align 4, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.gpf = sext i8 %i.gpc to i32
  %i.gpg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %i.gpf) #16
  %i.gph = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %.not.i.i6426 = icmp eq i32 %i.gpe, %i.gph
  br i1 %.not.i.i6426, label %report_bad_nesting.exit.i6427, label %bb.cha

bb.cha:                                           ; preds = %bb.cgz
  %i.gpi = sext i32 %i.gpg to i64                 ; 2 uses
  %i.gpj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gpi
  %i.gpk = sub nsw i64 256, %i.gpi
  %i.gpl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.gpj, i64 noundef %i.gpk, ptr noundef nonnull @.str.21, i32 noundef %i.gpe) #16 ; 0 uses
  br label %report_bad_nesting.exit.i6427

report_bad_nesting.exit.i6427:                    ; preds = %bb.cha, %bb.cgz
  %i.gpm = load ptr, ptr @zend_ce_parse_error, align 8, !tbaa !79
  %i.gpn = call ptr @zend_throw_exception(ptr noundef %i.gpm, ptr noundef nonnull %i.d, i64 noundef 0) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %check_nesting_at_end.exit6429

check_nesting_at_end.exit6429:                    ; preds = %bb.cgy, %report_bad_nesting.exit.i6427
  %or.cond6324 = or i1 %.not5629, %i.gpa
  %spec.select6376 = select i1 %or.cond6324, i32 0, i32 412, !prof !200
  br label %.thread6538

bb.chb:                                           ; preds = %bb.cgx
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gpo = icmp ult ptr %i.y, %i.ac
  br i1 %i.gpo, label %.lr.ph9232, label %.loopexit6962

.lr.ph9232:                                       ; preds = %bb.chb
  %i.gpp = getelementptr inbounds nuw i8, ptr %i.goy, i64 8
  %i.gpq = ptrtoint ptr %i.ac to i64              ; 4 uses
  %i.gpr = trunc i64 %i.gpq to i32
  br label %bb.chc

bb.chc:                                           ; preds = %.lr.ph9232, %.backedge6963
  %i.gps = phi ptr [ %i.y, %.lr.ph9232 ], [ %i.grm, %.backedge6963 ] ; 6 uses
  %i.gpt = getelementptr inbounds nuw i8, ptr %i.gps, i64 1 ; 14 uses
  store ptr %i.gpt, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gpu = load i8, ptr %i.gps, align 1, !tbaa !44
  switch i8 %i.gpu, label %.backedge6963 [
    i8 13, label %bb.chd
    i8 10, label %bb.chf
    i8 36, label %bb.chz
    i8 123, label %bb.cia
    i8 92, label %bb.cib
  ]

bb.chd:                                           ; preds = %bb.chc
  %i.gpv = load i8, ptr %i.gpt, align 1, !tbaa !44
  %i.gpw = icmp eq i8 %i.gpv, 10
  br i1 %i.gpw, label %bb.che, label %bb.chf

bb.che:                                           ; preds = %bb.chd
  %i.gpx = getelementptr inbounds nuw i8, ptr %i.gps, i64 2 ; 2 uses
  store ptr %i.gpx, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.chf

bb.chf:                                           ; preds = %bb.chd, %bb.che, %bb.chc
  %.promoted9217 = phi ptr [ %i.gpt, %bb.chd ], [ %i.gpx, %bb.che ], [ %i.gpt, %bb.chc ] ; 5 uses
  %i.gpy = icmp ult ptr %.promoted9217, %i.ac
  br i1 %i.gpy, label %.lr.ph9221.preheader, label %.critedge46

.lr.ph9221.preheader:                             ; preds = %bb.chf
  %.promoted921712722 = ptrtoaddr ptr %.promoted9217 to i64 ; 2 uses
  %i.gpz = trunc i64 %.promoted921712722 to i32
  %i.gqa = sub i32 %i.gpr, %i.gpz
  %scevgep12723 = getelementptr i8, ptr %.promoted9217, i64 %i.gpq
  %i.gqb = sub i64 0, %.promoted921712722
  %scevgep12724 = getelementptr i8, ptr %scevgep12723, i64 %i.gqb
  br label %.lr.ph9221

.lr.ph9221:                                       ; preds = %.lr.ph9221.preheader, %.critedge48
  %.049759219 = phi i32 [ %.14976, %.critedge48 ], [ 0, %.lr.ph9221.preheader ] ; 2 uses
  %.049779218 = phi i32 [ %i.gqg, %.critedge48 ], [ 0, %.lr.ph9221.preheader ] ; 2 uses
  %i.gqc = phi ptr [ %i.gqf, %.critedge48 ], [ %.promoted9217, %.lr.ph9221.preheader ] ; 3 uses
  %i.gqd = load i8, ptr %i.gqc, align 1, !tbaa !44 ; 2 uses
  switch i8 %i.gqd, label %.critedge46 [
    i8 32, label %.critedge48
    i8 9, label %.critedge48
  ]

.critedge48:                                      ; preds = %.lr.ph9221, %.lr.ph9221
  %i.gqe = icmp eq i8 %i.gqd, 9
  %.14976.v = select i1 %i.gqe, i32 2, i32 1
  %.14976 = or i32 %.14976.v, %.049759219         ; 2 uses
  %i.gqf = getelementptr inbounds nuw i8, ptr %i.gqc, i64 1 ; 4 uses
  store ptr %i.gqf, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gqg = add nuw nsw i32 %.049779218, 1
  %exitcond12725.not = icmp eq ptr %i.gqf, %scevgep12724
  br i1 %exitcond12725.not, label %.critedge46, label %.lr.ph9221, !llvm.loop !190

.critedge46:                                      ; preds = %.critedge48, %.lr.ph9221, %bb.chf
  %.promoted92249244 = phi ptr [ %.promoted9217, %bb.chf ], [ %i.gqc, %.lr.ph9221 ], [ %i.gqf, %.critedge48 ] ; 11 uses
  %.04977.lcssa = phi i32 [ 0, %bb.chf ], [ %.049779218, %.lr.ph9221 ], [ %i.gqa, %.critedge48 ] ; 4 uses
  %.04975.lcssa = phi i32 [ 0, %bb.chf ], [ %.049759219, %.lr.ph9221 ], [ %.14976, %.critedge48 ] ; 2 uses
  %i.gqh = icmp eq ptr %.promoted92249244, %i.ac
  br i1 %i.gqh, label %bb.chg, label %bb.chk

bb.chg:                                           ; preds = %.critedge46
  %i.gqi = sub i64 %i.gpq, %i.gos                 ; 2 uses
  %i.gqj = trunc i64 %i.gqi to i32
  store i32 %i.gqj, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.gqk = and i64 %i.gqi, 4294967295             ; 2 uses
  %i.gql = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gqk
  %.not10158 = icmp eq i64 %i.gqk, 0
  br i1 %.not10158, label %._crit_edge10088, label %.lr.ph10087.preheader

.lr.ph10087.preheader:                            ; preds = %bb.chg
  %.promoted10084 = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8
  br label %.lr.ph10087

.lr.ph10087:                                      ; preds = %.lr.ph10087.preheader, %bb.chj
  %.0497410085 = phi ptr [ %i.gqs, %bb.chj ], [ %i.y, %.lr.ph10087.preheader ] ; 3 uses
  %i.gqm = phi i32 [ %i.gqr, %bb.chj ], [ %.promoted10084, %.lr.ph10087.preheader ] ; 3 uses
  %i.gqn = load i8, ptr %.0497410085, align 1, !tbaa !44
  switch i8 %i.gqn, label %bb.chj [
    i8 10, label %bb.chi
    i8 13, label %bb.chh
  ]

bb.chh:                                           ; preds = %.lr.ph10087
  %i.gqo = getelementptr inbounds nuw i8, ptr %.0497410085, i64 1
  %i.gqp = load i8, ptr %i.gqo, align 1, !tbaa !44
  %.not5696 = icmp eq i8 %i.gqp, 10
  br i1 %.not5696, label %bb.chj, label %bb.chi

bb.chi:                                           ; preds = %.lr.ph10087, %bb.chh
  %i.gqq = add nsw i32 %i.gqm, 1                  ; 2 uses
  store i32 %i.gqq, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.chj

bb.chj:                                           ; preds = %.lr.ph10087, %bb.chi, %bb.chh
  %i.gqr = phi i32 [ %i.gqm, %.lr.ph10087 ], [ %i.gqq, %bb.chi ], [ %i.gqm, %bb.chh ]
  %i.gqs = getelementptr inbounds nuw i8, ptr %.0497410085, i64 1 ; 2 uses
  %i.gqt = icmp ult ptr %i.gqs, %i.gql
  br i1 %i.gqt, label %.lr.ph10087, label %._crit_edge10088, !llvm.loop !191

._crit_edge10088:                                 ; preds = %bb.chj, %bb.chg
  store i32 1, ptr %i.u, align 8, !tbaa !44
  br label %.thread6564

bb.chk:                                           ; preds = %.critedge46
  %i.gqu = load i8, ptr %.promoted92249244, align 1, !tbaa !44 ; 3 uses
  %i.gqv = and i8 %i.gqu, -33
  %i.gqw = add i8 %i.gqv, -65
  %or.cond6614 = icmp ult i8 %i.gqw, 26
  br i1 %or.cond6614, label %bb.chm, label %bb.chl

bb.chl:                                           ; preds = %bb.chk
  %i.gqx = icmp eq i8 %i.gqu, 95
  %i.gqy = icmp slt i8 %i.gqu, 0
  %or.cond6327 = or i1 %i.gqx, %i.gqy
  br i1 %or.cond6327, label %bb.chm, label %.backedge6963

bb.chm:                                           ; preds = %bb.chk, %bb.chl
  %i.gqz = load i32, ptr %i.gpp, align 8, !tbaa !138
  %i.gra = sext i32 %i.gqz to i64                 ; 3 uses
  %i.grb = ptrtoint ptr %.promoted92249244 to i64
  %i.grc = sub i64 %i.gpq, %i.grb
  %i.grd = icmp sgt i64 %i.grc, %i.gra
  br i1 %i.grd, label %bb.chn, label %.backedge6963

bb.chn:                                           ; preds = %bb.chm
  %i.gre = load ptr, ptr %i.goy, align 8, !tbaa !47
  %bcmp5690 = tail call i32 @bcmp(ptr nonnull %.promoted92249244, ptr %i.gre, i64 %i.gra)
  %.not5691 = icmp eq i32 %bcmp5690, 0
  br i1 %.not5691, label %bb.cho, label %.backedge6963

bb.cho:                                           ; preds = %bb.chn
  %i.grf = getelementptr inbounds i8, ptr %.promoted92249244, i64 %i.gra
  %i.grg = load i8, ptr %i.grf, align 1, !tbaa !44 ; 4 uses
  %i.grh = and i8 %i.grg, -33
  %i.gri = add i8 %i.grh, -65
  %or.cond6615 = icmp ult i8 %i.gri, 26
  %i.grj = add i8 %i.grg, -48
  %or.cond6330 = icmp ult i8 %i.grj, 10
  %or.cond6616 = or i1 %or.cond6330, %or.cond6615
  br i1 %or.cond6616, label %.backedge6963, label %bb.chp

bb.chp:                                           ; preds = %bb.cho
  %i.grk = icmp eq i8 %i.grg, 95
  %i.grl = icmp slt i8 %i.grg, 0
  %or.cond6331 = or i1 %i.grk, %i.grl
  br i1 %or.cond6331, label %.backedge6963, label %bb.chq

.backedge6963:                                    ; preds = %bb.chc, %bb.cid, %bb.cib, %bb.cic, %bb.cic, %bb.chm, %bb.chn, %bb.chl, %bb.chp, %bb.cho, %bb.cia, %switch.early.test6377
  %i.grm = phi ptr [ %i.gpt, %switch.early.test6377 ], [ %.promoted92249244, %bb.chp ], [ %.promoted92249244, %bb.chm ], [ %i.gpt, %bb.cia ], [ %.promoted92249244, %bb.cho ], [ %.promoted92249244, %bb.chl ], [ %.promoted92249244, %bb.chn ], [ %i.gpt, %bb.cic ], [ %i.gpt, %bb.cic ], [ %i.gpt, %bb.cib ], [ %i.gss, %bb.cid ], [ %i.gpt, %bb.chc ] ; 3 uses
  %i.grn = icmp ult ptr %i.grm, %i.ac
  br i1 %i.grn, label %bb.chc, label %.loopexit6962, !llvm.loop !192

bb.chq:                                           ; preds = %bb.chp
  %i.gro = icmp eq i32 %.04975.lcssa, 3
  br i1 %i.gro, label %bb.chr, label %bb.chs

bb.chr:                                           ; preds = %bb.chq
  %i.grp = load ptr, ptr @zend_ce_parse_error, align 8, !tbaa !79
  %i.grq = tail call ptr @zend_throw_exception(ptr noundef %i.grp, ptr noundef nonnull @.str.6, i64 noundef 0) #16 ; 0 uses
  br i1 %.not5629, label %._crit_edge12746, label %.thread6538, !prof !201

._crit_edge12746:                                 ; preds = %bb.chr
  %.pre12747 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.chs

bb.chs:                                           ; preds = %._crit_edge12746, %bb.chq
  %i.grr = phi ptr [ %.pre12747, %._crit_edge12746 ], [ %.promoted92249244, %bb.chq ] ; 4 uses
  %i.grs = sub nuw i32 -2, %.04977.lcssa
  %i.grt = sext i32 %i.grs to i64
  %i.gru = getelementptr inbounds i8, ptr %i.grr, i64 %i.grt
  %i.grv = load i8, ptr %i.gru, align 1, !tbaa !44
  %i.grw = icmp eq i8 %i.grv, 13
  br i1 %i.grw, label %bb.cht, label %bb.chu

bb.cht:                                           ; preds = %bb.chs
  %i.grx = xor i32 %.04977.lcssa, -1
  %i.gry = sext i32 %i.grx to i64
  %i.grz = getelementptr inbounds i8, ptr %i.grr, i64 %i.gry
  %i.gsa = load i8, ptr %i.grz, align 1, !tbaa !44
  %i.gsb = icmp eq i8 %i.gsa, 10
  br i1 %i.gsb, label %bb.chv, label %bb.chu

bb.chu:                                           ; preds = %bb.cht, %bb.chs
  br label %bb.chv

bb.chv:                                           ; preds = %bb.cht, %bb.chu
  %.04978 = phi i32 [ 1, %bb.chu ], [ 2, %bb.cht ]
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 153), align 1, !tbaa !97
  %i.gsc = load i8, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 152), align 8, !tbaa !43, !range !85, !noundef !86
  %i.gsd = trunc nuw i8 %i.gsc to i1
  br i1 %i.gsd, label %bb.chw, label %bb.chx

bb.chw:                                           ; preds = %bb.chv
  store i32 %.04977.lcssa, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 156), align 4, !tbaa !205
  %i.gse = icmp eq i32 %.04975.lcssa, 1
  %i.gsf = zext i1 %i.gse to i8
  store i8 %i.gsf, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 160), align 8, !tbaa !206
  br label %bb.chy

bb.chx:                                           ; preds = %bb.chv
  %i.gsg = zext nneg i32 %.04977.lcssa to i64
  %i.gsh = sub nsw i64 0, %i.gsg
  %i.gsi = getelementptr inbounds i8, ptr %i.grr, i64 %i.gsh ; 2 uses
  store ptr %i.gsi, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.chy

bb.chy:                                           ; preds = %bb.chx, %bb.chw
  %i.gsj = phi ptr [ %i.gsi, %bb.chx ], [ %i.grr, %bb.chw ]
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  %.pre12748 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132 ; 2 uses
  %.pre12809 = ptrtoint ptr %.pre12748 to i64
  br label %.loopexit6962

bb.chz:                                           ; preds = %bb.chc
  %i.gsk = load i8, ptr %i.gpt, align 1, !tbaa !44
  %.fr = freeze i8 %i.gsk                         ; 3 uses
  %i.gsl = and i8 %.fr, -33
  %i.gsm = add i8 %i.gsl, -65
  %or.cond6617 = icmp ult i8 %i.gsm, 26
  %i.gsn = icmp slt i8 %.fr, 0
  %or.cond6618 = or i1 %i.gsn, %or.cond6617
  br i1 %or.cond6618, label %bb.cie, label %switch.early.test6377

switch.early.test6377:                            ; preds = %bb.chz
  switch i8 %.fr, label %.backedge6963 [
    i8 123, label %bb.cie
    i8 95, label %bb.cie
  ]

bb.cia:                                           ; preds = %bb.chc
  %i.gso = load i8, ptr %i.gpt, align 1, !tbaa !44
  %i.gsp = icmp eq i8 %i.gso, 36
  br i1 %i.gsp, label %bb.cie, label %.backedge6963

bb.cib:                                           ; preds = %bb.chc
  %i.gsq = icmp ult ptr %i.gpt, %i.ac
  br i1 %i.gsq, label %bb.cic, label %.backedge6963

bb.cic:                                           ; preds = %bb.cib
  %i.gsr = load i8, ptr %i.gpt, align 1, !tbaa !44
  switch i8 %i.gsr, label %bb.cid [
    i8 10, label %.backedge6963
    i8 13, label %.backedge6963
  ]

bb.cid:                                           ; preds = %bb.cic
  %i.gss = getelementptr inbounds nuw i8, ptr %i.gps, i64 2 ; 2 uses
  store ptr %i.gss, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %.backedge6963

bb.cie:                                           ; preds = %switch.early.test6377, %switch.early.test6377, %bb.chz, %bb.cia
  store ptr %i.gps, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %.loopexit6962

.loopexit6962:                                    ; preds = %.backedge6963, %bb.chb, %bb.cie, %bb.chy
  %.pre-phi12810 = phi i64 [ %.pre12809, %bb.chy ], [ %i.gos, %bb.chb ], [ %i.gos, %bb.cie ], [ %i.gos, %.backedge6963 ]
  %i.gst = phi ptr [ %.pre12748, %bb.chy ], [ %i.y, %bb.chb ], [ %i.y, %bb.cie ], [ %i.y, %.backedge6963 ]
  %i.gsu = phi ptr [ %i.gsj, %bb.chy ], [ %i.y, %bb.chb ], [ %i.gps, %bb.cie ], [ %i.grm, %.backedge6963 ]
  %.14979 = phi i32 [ %.04978, %bb.chy ], [ 0, %bb.chb ], [ 0, %bb.cie ], [ 0, %.backedge6963 ] ; 4 uses
  %i.gsv = ptrtoint ptr %i.gsu to i64
  %i.gsw = sub i64 %i.gsv, %.pre-phi12810
  %i.gsx = trunc i64 %i.gsw to i32                ; 2 uses
  store i32 %i.gsx, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.gsy = sub i32 %i.gsx, %.14979
  %i.gsz = zext i32 %i.gsy to i64                 ; 4 uses
  %i.gta = and i64 %i.gsz, 4294967288
  %i.gtb = add nuw nsw i64 %i.gta, 32
  %i.gtc = tail call noalias ptr @_emalloc(i64 noundef %i.gtb) #17 ; 7 uses
  store i32 1, ptr %i.gtc, align 4, !tbaa !45
  %i.gtd = getelementptr inbounds nuw i8, ptr %i.gtc, i64 4
  store i32 22, ptr %i.gtd, align 4, !tbaa !44
  %i.gte = getelementptr inbounds nuw i8, ptr %i.gtc, i64 8
  store i64 0, ptr %i.gte, align 8, !tbaa !83
  %i.gtf = getelementptr inbounds nuw i8, ptr %i.gtc, i64 16 ; 2 uses
  store i64 %i.gsz, ptr %i.gtf, align 8, !tbaa !84
  %i.gtg = getelementptr inbounds nuw i8, ptr %i.gtc, i64 24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gtg, ptr align 1 %i.gst, i64 %i.gsz, i1 false)
  %i.gth = getelementptr inbounds nuw i8, ptr %i.gtg, i64 %i.gsz
  store i8 0, ptr %i.gth, align 1, !tbaa !44
  store ptr %i.gtc, ptr %0, align 8, !tbaa !44
  store i32 262, ptr %i.u, align 8, !tbaa !44
  %i.gti = load i8, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 152), align 8, !tbaa !43, !range !85, !noundef !86
  %i.gtj = trunc nuw i8 %i.gti to i1
  %i.gtk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8
  %i.gtl = icmp ne ptr %i.gtk, null
  %or.cond50 = select i1 %i.gtj, i1 true, i1 %i.gtl
  %or.cond6336 = or i1 %.not5629, %or.cond50
  %i.gtm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132 ; 3 uses
  br i1 %or.cond6336, label %bb.cih, label %bb.cif, !prof !200

bb.cif:                                           ; preds = %.loopexit6962
  %i.gtn = getelementptr inbounds i8, ptr %i.gtm, i64 -1
  %i.gto = load i8, ptr %i.gtn, align 1, !tbaa !44 ; 2 uses
  %i.gtp = icmp eq i8 %i.gto, 10
  %i.gtq = icmp eq i8 %i.gto, 13
  %spec.select6337 = or i1 %i.gtp, %i.gtq
  %i.gtr = getelementptr inbounds nuw i8, ptr %i.goy, i64 12
  %i.gts = load i32, ptr %i.gtr, align 4, !tbaa !204
  %i.gtt = getelementptr inbounds nuw i8, ptr %i.goy, i64 16
  %i.gtu = load i8, ptr %i.gtt, align 8, !tbaa !203, !range !85, !noundef !86
  %i.gtv = trunc nuw i8 %i.gtu to i1
  %i.gtw = icmp ne i32 %.14979, 0
  %i.gtx = tail call fastcc zeroext i1 @strip_multiline_string_indentation(ptr noundef nonnull %0, i32 noundef %i.gts, i1 noundef zeroext %i.gtv, i1 noundef zeroext %spec.select6337, i1 noundef zeroext %i.gtw)
  br i1 %i.gtx, label %bb.cig, label %.thread6538

bb.cig:                                           ; preds = %bb.cif
  %i.gty = load i64, ptr %i.gtf, align 8, !tbaa !84
  %i.gtz = tail call fastcc i32 @zend_scan_escape_string(ptr noundef nonnull %0, ptr noundef nonnull %i.gtg, i64 noundef %i.gty, i8 noundef signext 0)
  %.not5694 = icmp eq i32 %i.gtz, 0
  tail call void @_efree(ptr noundef nonnull %i.gtc) #16
  br i1 %.not5694, label %.thread6564.thread6590, label %.thread6538

bb.cih:                                           ; preds = %.loopexit6962
  %i.gua = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48 ; 2 uses
  %i.gub = sub i32 %i.gua, %.14979
  %i.guc = zext i32 %i.gub to i64
  %i.gud = getelementptr inbounds nuw i8, ptr %i.gtm, i64 %i.guc
  %.not10159 = icmp eq i32 %i.gua, %.14979
  br i1 %.not10159, label %.thread6564, label %.lr.ph10083.preheader

.lr.ph10083.preheader:                            ; preds = %bb.cih
  %.promoted10080 = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8
  br label %.lr.ph10083

.lr.ph10083:                                      ; preds = %.lr.ph10083.preheader, %bb.cik
  %.0497110081 = phi ptr [ %i.guk, %bb.cik ], [ %i.gtm, %.lr.ph10083.preheader ] ; 3 uses
  %i.gue = phi i32 [ %i.guj, %bb.cik ], [ %.promoted10080, %.lr.ph10083.preheader ] ; 3 uses
  %i.guf = load i8, ptr %.0497110081, align 1, !tbaa !44
  switch i8 %i.guf, label %bb.cik [
    i8 10, label %bb.cij
    i8 13, label %bb.cii
  ]

bb.cii:                                           ; preds = %.lr.ph10083
  %i.gug = getelementptr inbounds nuw i8, ptr %.0497110081, i64 1
  %i.guh = load i8, ptr %i.gug, align 1, !tbaa !44
  %.not5695 = icmp eq i8 %i.guh, 10
  br i1 %.not5695, label %bb.cik, label %bb.cij

bb.cij:                                           ; preds = %.lr.ph10083, %bb.cii
  %i.gui = add nsw i32 %i.gue, 1                  ; 2 uses
  store i32 %i.gui, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.cik

bb.cik:                                           ; preds = %.lr.ph10083, %bb.cij, %bb.cii
  %i.guj = phi i32 [ %i.gue, %.lr.ph10083 ], [ %i.gui, %bb.cij ], [ %i.gue, %bb.cii ]
  %i.guk = getelementptr inbounds nuw i8, ptr %.0497110081, i64 1 ; 2 uses
  %i.gul = icmp ult ptr %i.guk, %i.gud
  br i1 %i.gul, label %.lr.ph10083, label %.thread6564, !llvm.loop !193

bb.cil:                                           ; preds = %bb.cgw
  %i.gum = load i8, ptr %i.gor, align 1, !tbaa !44 ; 8 uses
  %i.gun = icmp ult i8 %i.gum, 96
  br i1 %i.gun, label %bb.cim, label %bb.cio

bb.cim:                                           ; preds = %bb.cil
  %i.guo = icmp samesign ult i8 %i.gum, 65
  br i1 %i.guo, label %bb.cgx, label %bb.cin

bb.cin:                                           ; preds = %bb.cim
  %i.gup = icmp samesign ugt i8 %i.gum, 90
  %i.guq = icmp ne i8 %i.gum, 95
  %or.cond1544 = and i1 %i.gup, %i.guq
  br i1 %or.cond1544, label %bb.cgx, label %.preheader6642

bb.cio:                                           ; preds = %bb.cil
  %i.gur = icmp ult i8 %i.gum, 123
end_hunk_0
begin_hunk_1_@lex_scan:bb.a
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br i1 %.not5629, label %.thread6538, label %.thread6571, !prof !201

bb.com:                                           ; preds = %bb.cok
  %i.hmt = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 82), align 2, !tbaa !207, !range !85, !noundef !86
  %i.hmu = trunc nuw i8 %i.hmt to i1
  br i1 %i.hmu, label %bb.con, label %.loopexit6972.loopexit

bb.con:                                           ; preds = %bb.com
  store ptr %i.hma, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br i1 %.not5629, label %.thread6538, label %.thread6571, !prof !201

bb.coo:                                           ; preds = %bb.coj, %bb.coi, %bb.cos
  %i.hmv = phi i64 [ 5, %bb.coj ], [ 5, %bb.coi ], [ 6, %bb.cos ]
  %i.hmw = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.hmv
  %i.hmx = getelementptr inbounds nuw i8, ptr %i.hmw, i64 1 ; 2 uses
  store ptr %i.hmx, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.cop

bb.cop:                                           ; preds = %bb.cos, %bb.coo
  %i.hmy = phi ptr [ %i.hnj, %bb.cos ], [ %i.hmx, %bb.coo ]
  %i.hmz = ptrtoint ptr %i.hmy to i64
  %i.hna = ptrtoint ptr %i.y to i64
  %i.hnb = sub i64 %i.hmz, %i.hna                 ; 2 uses
  %i.hnc = trunc i64 %i.hnb to i32
  store i32 %i.hnc, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hnd = add i64 %i.hnb, 4294967295
  %i.hne = and i64 %i.hnd, 4294967295
  %i.hnf = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.hne
  %i.hng = load i8, ptr %i.hnf, align 1, !tbaa !44
  switch i8 %i.hng, label %bb.cor [
    i8 10, label %bb.coq
    i8 13, label %bb.coq
  ]

bb.coq:                                           ; preds = %bb.cop, %bb.cop
  %i.hnh = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %i.hni = add nsw i32 %i.hnh, 1
  store i32 %i.hni, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.cor

bb.cor:                                           ; preds = %bb.cop, %bb.coq
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br i1 %.not5629, label %.thread6538, label %.thread6571, !prof !201

bb.cos:                                           ; preds = %bb.coj
  %i.hnj = getelementptr inbounds nuw i8, ptr %i.y, i64 6 ; 3 uses
  store ptr %i.hnj, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hnk = load i8, ptr %i.hnj, align 1, !tbaa !44
  %i.hnl = icmp eq i8 %i.hnk, 10
  br i1 %i.hnl, label %bb.coo, label %bb.cop

bb.cot:                                           ; preds = %bb.h
  br i1 %.not5635, label %bb.cou, label %.thread6532

bb.cou:                                           ; preds = %bb.cot
  store ptr %i.am, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hnm = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !139
  %i.hnn = add nsw i32 %i.hnm, -1
  store i32 %i.hnn, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !139
  %i.hno = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 112), align 8, !tbaa !141
  %i.hnp = getelementptr inbounds i8, ptr %i.hno, i64 -8 ; 2 uses
  store ptr %i.hnp, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 112), align 8, !tbaa !141
  %i.hnq = load ptr, ptr %i.hnp, align 8, !tbaa !55 ; 4 uses
  %i.hnr = getelementptr inbounds nuw i8, ptr %i.hnq, i64 12
  %i.hns = load i32, ptr %i.hnr, align 4, !tbaa !204
  %i.hnt = getelementptr inbounds nuw i8, ptr %i.hnq, i64 8
  %i.hnu = load i32, ptr %i.hnt, align 8, !tbaa !138
  %i.hnv = add nsw i32 %i.hnu, %i.hns             ; 2 uses
  store i32 %i.hnv, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hnw = add i32 %i.hnv, -1
  %i.hnx = zext i32 %i.hnw to i64
  %i.hny = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.hnx
  store ptr %i.hny, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hnz = load ptr, ptr %i.hnq, align 8, !tbaa !47
  tail call void @_efree(ptr noundef %i.hnz) #16
  tail call void @_efree(ptr noundef nonnull %i.hnq) #16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br label %.thread6538

bb.cov:                                           ; preds = %bb.h
  br i1 %.not5635, label %bb.cow, label %.thread6532

bb.cow:                                           ; preds = %bb.cov
  store ptr %i.am, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hoa = ptrtoint ptr %i.y to i64               ; 3 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 104), align 8, !tbaa !143
  %i.hoc = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !139
  %i.hod = sext i32 %i.hoc to i64
  %i.hoe = getelementptr [8 x i8], ptr %i.hob, i64 %i.hod
  %i.hof = getelementptr i8, ptr %i.hoe, i64 -8
  %i.hog = load ptr, ptr %i.hof, align 8, !tbaa !55 ; 3 uses
  %i.hoh = icmp ugt ptr %i.am, %i.an
  br i1 %i.hoh, label %bb.cox, label %bb.cpa

bb.cox:                                           ; preds = %bb.cow
  %i.hoi = tail call zeroext i1 @zend_stack_is_empty(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 128)) #16 ; 2 uses
  br i1 %i.hoi, label %check_nesting_at_end.exit6441, label %bb.coy

bb.coy:                                           ; preds = %bb.cox
  %i.hoj = tail call ptr @zend_stack_top(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 128)) #16 ; 2 uses
  %i.hok = load i8, ptr %i.hoj, align 4, !tbaa !134
  %i.hol = getelementptr inbounds nuw i8, ptr %i.hoj, i64 4
  %i.hom = load i32, ptr %i.hol, align 4, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.hon = sext i8 %i.hok to i32
  %i.hoo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %i.hon) #16
  %i.hop = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %.not.i.i6438 = icmp eq i32 %i.hom, %i.hop
  br i1 %.not.i.i6438, label %report_bad_nesting.exit.i6439, label %bb.coz

bb.coz:                                           ; preds = %bb.coy
  %i.hoq = sext i32 %i.hoo to i64                 ; 2 uses
  %i.hor = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hoq
  %i.hos = sub nsw i64 256, %i.hoq
  %i.hot = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.hor, i64 noundef %i.hos, ptr noundef nonnull @.str.21, i32 noundef %i.hom) #16 ; 0 uses
  br label %report_bad_nesting.exit.i6439

report_bad_nesting.exit.i6439:                    ; preds = %bb.coz, %bb.coy
  %i.hou = load ptr, ptr @zend_ce_parse_error, align 8, !tbaa !79
  %i.hov = call ptr @zend_throw_exception(ptr noundef %i.hou, ptr noundef nonnull %i.a, i64 noundef 0) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %check_nesting_at_end.exit6441

check_nesting_at_end.exit6441:                    ; preds = %bb.cox, %report_bad_nesting.exit.i6439
  %or.cond6353 = or i1 %.not5629, %i.hoi
  %spec.select6381 = select i1 %or.cond6353, i32 0, i32 412, !prof !200
  br label %.thread6538

bb.cpa:                                           ; preds = %bb.cow
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.how = icmp ult ptr %i.y, %i.an
  br i1 %i.how, label %.lr.ph9209, label %.loopexit6968

.lr.ph9209:                                       ; preds = %bb.cpa
  %i.hox = getelementptr inbounds nuw i8, ptr %i.hog, i64 8
  %i.hoy = ptrtoint ptr %i.an to i64              ; 4 uses
  %i.hoz = trunc i64 %i.hoy to i32
  br label %bb.cpb

bb.cpb:                                           ; preds = %.lr.ph9209, %.backedge6969
  %i.hpa = phi ptr [ %i.y, %.lr.ph9209 ], [ %i.hqu, %.backedge6969 ] ; 3 uses
  %.049499208 = phi i32 [ -1, %.lr.ph9209 ], [ %.04949.be, %.backedge6969 ]
  %.049549207 = phi i32 [ 0, %.lr.ph9209 ], [ %.04954.be, %.backedge6969 ]
  %i.hpb = getelementptr inbounds nuw i8, ptr %i.hpa, i64 1 ; 5 uses
  store ptr %i.hpb, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hpc = load i8, ptr %i.hpa, align 1, !tbaa !44
  switch i8 %i.hpc, label %.backedge6969 [
    i8 13, label %bb.cpc
    i8 10, label %bb.cpe
  ]

bb.cpc:                                           ; preds = %bb.cpb
  %i.hpd = load i8, ptr %i.hpb, align 1, !tbaa !44
  %i.hpe = icmp eq i8 %i.hpd, 10
  br i1 %i.hpe, label %bb.cpd, label %bb.cpe

bb.cpd:                                           ; preds = %bb.cpc
  %i.hpf = getelementptr inbounds nuw i8, ptr %i.hpa, i64 2 ; 2 uses
  store ptr %i.hpf, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.cpe

bb.cpe:                                           ; preds = %bb.cpc, %bb.cpd, %bb.cpb
  %.promoted = phi ptr [ %i.hpb, %bb.cpc ], [ %i.hpf, %bb.cpd ], [ %i.hpb, %bb.cpb ] ; 5 uses
  %i.hpg = icmp ult ptr %.promoted, %i.an
  br i1 %i.hpg, label %.lr.ph.preheader, label %.critedge52

.lr.ph.preheader:                                 ; preds = %bb.cpe
  %.promoted12720 = ptrtoaddr ptr %.promoted to i64 ; 2 uses
  %i.hph = trunc i64 %.promoted12720 to i32
  %i.hpi = sub i32 %i.hoz, %i.hph
  %scevgep = getelementptr i8, ptr %.promoted, i64 %i.hoy
  %i.hpj = sub i64 0, %.promoted12720
  %scevgep12721 = getelementptr i8, ptr %scevgep, i64 %i.hpj ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge54
  %.149509198 = phi i32 [ %.24951, %.critedge54 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.149559197 = phi i32 [ %i.hpo, %.critedge54 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.hpk = phi ptr [ %i.hpn, %.critedge54 ], [ %.promoted, %.lr.ph.preheader ] ; 3 uses
  %i.hpl = load i8, ptr %i.hpk, align 1, !tbaa !44 ; 2 uses
  switch i8 %i.hpl, label %.critedge52 [
    i8 32, label %.critedge54
    i8 9, label %.critedge54
  ]

.critedge54:                                      ; preds = %.lr.ph, %.lr.ph
  %i.hpm = icmp eq i8 %i.hpl, 9
  %.24951.v = select i1 %i.hpm, i32 2, i32 1
  %.24951 = or i32 %.24951.v, %.149509198         ; 2 uses
  %i.hpn = getelementptr inbounds nuw i8, ptr %i.hpk, i64 1 ; 3 uses
  store ptr %i.hpn, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hpo = add nuw nsw i32 %.149559197, 1
  %exitcond.not = icmp eq ptr %i.hpn, %scevgep12721
  br i1 %exitcond.not, label %.critedge52, label %.lr.ph, !llvm.loop !195

.critedge52:                                      ; preds = %.critedge54, %.lr.ph, %bb.cpe
  %13 = phi ptr [ %.promoted, %bb.cpe ], [ %i.hpk, %.lr.ph ], [ %scevgep12721, %.critedge54 ] ; 11 uses
  %.14955.lcssa = phi i32 [ 0, %bb.cpe ], [ %.149559197, %.lr.ph ], [ %i.hpi, %.critedge54 ] ; 10 uses
  %.14950.lcssa = phi i32 [ 0, %bb.cpe ], [ %.149509198, %.lr.ph ], [ %.24951, %.critedge54 ] ; 7 uses
  %i.hpp = icmp eq ptr %13, %i.an
  br i1 %i.hpp, label %bb.cpf, label %bb.cpj

bb.cpf:                                           ; preds = %.critedge52
  %i.hpq = sub i64 %i.hoy, %i.hoa                 ; 2 uses
  %i.hpr = trunc i64 %i.hpq to i32
  store i32 %i.hpr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hps = and i64 %i.hpq, 4294967295             ; 2 uses
  %i.hpt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.hps
  %.not10155 = icmp eq i64 %i.hps, 0
  br i1 %.not10155, label %._crit_edge10048, label %.lr.ph10047.preheader

.lr.ph10047.preheader:                            ; preds = %bb.cpf
  %.promoted10044 = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8
  br label %.lr.ph10047

.lr.ph10047:                                      ; preds = %.lr.ph10047.preheader, %bb.cpi
  %.0494810045 = phi ptr [ %i.hqa, %bb.cpi ], [ %i.y, %.lr.ph10047.preheader ] ; 3 uses
  %i.hpu = phi i32 [ %i.hpz, %bb.cpi ], [ %.promoted10044, %.lr.ph10047.preheader ] ; 3 uses
  %i.hpv = load i8, ptr %.0494810045, align 1, !tbaa !44
  switch i8 %i.hpv, label %bb.cpi [
    i8 10, label %bb.cph
    i8 13, label %bb.cpg
  ]

bb.cpg:                                           ; preds = %.lr.ph10047
  %i.hpw = getelementptr inbounds nuw i8, ptr %.0494810045, i64 1
  %i.hpx = load i8, ptr %i.hpw, align 1, !tbaa !44
  %.not5632 = icmp eq i8 %i.hpx, 10
  br i1 %.not5632, label %bb.cpi, label %bb.cph

bb.cph:                                           ; preds = %.lr.ph10047, %bb.cpg
  %i.hpy = add nsw i32 %i.hpu, 1                  ; 2 uses
  store i32 %i.hpy, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.cpi

bb.cpi:                                           ; preds = %.lr.ph10047, %bb.cph, %bb.cpg
  %i.hpz = phi i32 [ %i.hpu, %.lr.ph10047 ], [ %i.hpy, %bb.cph ], [ %i.hpu, %bb.cpg ]
  %i.hqa = getelementptr inbounds nuw i8, ptr %.0494810045, i64 1 ; 2 uses
  %i.hqb = icmp ult ptr %i.hqa, %i.hpt
  br i1 %i.hqb, label %.lr.ph10047, label %._crit_edge10048, !llvm.loop !196

._crit_edge10048:                                 ; preds = %bb.cpi, %bb.cpf
  store i32 1, ptr %i.u, align 8, !tbaa !44
  br label %.thread6564

bb.cpj:                                           ; preds = %.critedge52
  %i.hqc = load i8, ptr %13, align 1, !tbaa !44   ; 3 uses
  %i.hqd = and i8 %i.hqc, -33
  %i.hqe = add i8 %i.hqd, -65
  %or.cond6619 = icmp ult i8 %i.hqe, 26
  br i1 %or.cond6619, label %bb.cpl, label %bb.cpk

bb.cpk:                                           ; preds = %bb.cpj
  %i.hqf = icmp eq i8 %i.hqc, 95
  %i.hqg = icmp slt i8 %i.hqc, 0
  %or.cond6356 = or i1 %i.hqf, %i.hqg
  br i1 %or.cond6356, label %bb.cpl, label %.backedge6969

bb.cpl:                                           ; preds = %bb.cpj, %bb.cpk
  %i.hqh = load i32, ptr %i.hox, align 8, !tbaa !138
  %i.hqi = sext i32 %i.hqh to i64                 ; 3 uses
  %i.hqj = ptrtoint ptr %13 to i64
  %i.hqk = sub i64 %i.hoy, %i.hqj
  %i.hql = icmp sgt i64 %i.hqk, %i.hqi
  br i1 %i.hql, label %bb.cpm, label %.backedge6969

bb.cpm:                                           ; preds = %bb.cpl
  %i.hqm = load ptr, ptr %i.hog, align 8, !tbaa !47
  %bcmp = tail call i32 @bcmp(ptr nonnull %13, ptr %i.hqm, i64 %i.hqi)
  %.not5628 = icmp eq i32 %bcmp, 0
  br i1 %.not5628, label %bb.cpn, label %.backedge6969

bb.cpn:                                           ; preds = %bb.cpm
  %i.hqn = getelementptr inbounds i8, ptr %13, i64 %i.hqi
  %i.hqo = load i8, ptr %i.hqn, align 1, !tbaa !44 ; 4 uses
  %i.hqp = and i8 %i.hqo, -33
  %i.hqq = add i8 %i.hqp, -65
  %or.cond6620 = icmp ult i8 %i.hqq, 26
  %i.hqr = add i8 %i.hqo, -48
  %or.cond6359 = icmp ult i8 %i.hqr, 10
  %or.cond6621 = or i1 %or.cond6359, %or.cond6620
  br i1 %or.cond6621, label %.backedge6969, label %bb.cpo

bb.cpo:                                           ; preds = %bb.cpn
  %i.hqs = icmp eq i8 %i.hqo, 95
  %i.hqt = icmp slt i8 %i.hqo, 0
  %or.cond6360 = or i1 %i.hqs, %i.hqt
  br i1 %or.cond6360, label %.backedge6969, label %bb.cpp

.backedge6969:                                    ; preds = %bb.cpb, %bb.cpm, %bb.cpl, %bb.cpk, %bb.cpo, %bb.cpn
  %i.hqu = phi ptr [ %13, %bb.cpo ], [ %13, %bb.cpn ], [ %i.hpb, %bb.cpb ], [ %13, %bb.cpm ], [ %13, %bb.cpl ], [ %13, %bb.cpk ] ; 3 uses
  %.04954.be = phi i32 [ %.14955.lcssa, %bb.cpo ], [ %.14955.lcssa, %bb.cpn ], [ %.049549207, %bb.cpb ], [ %.14955.lcssa, %bb.cpm ], [ %.14955.lcssa, %bb.cpl ], [ %.14955.lcssa, %bb.cpk ] ; 2 uses
  %.04949.be = phi i32 [ %.14950.lcssa, %bb.cpo ], [ %.14950.lcssa, %bb.cpn ], [ %.049499208, %bb.cpb ], [ %.14950.lcssa, %bb.cpm ], [ %.14950.lcssa, %bb.cpl ], [ %.14950.lcssa, %bb.cpk ] ; 2 uses
  %i.hqv = icmp ult ptr %i.hqu, %i.an
  br i1 %i.hqv, label %bb.cpb, label %.loopexit6968, !llvm.loop !197

bb.cpp:                                           ; preds = %bb.cpo
  %i.hqw = icmp eq i32 %.14950.lcssa, 3
  br i1 %i.hqw, label %bb.cpq, label %bb.cpr

bb.cpq:                                           ; preds = %bb.cpp
  %i.hqx = load ptr, ptr @zend_ce_parse_error, align 8, !tbaa !79
  %i.hqy = tail call ptr @zend_throw_exception(ptr noundef %i.hqx, ptr noundef nonnull @.str.6, i64 noundef 0) #16 ; 0 uses
  br i1 %.not5629, label %._crit_edge12737, label %.thread6538, !prof !201

._crit_edge12737:                                 ; preds = %bb.cpq
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.cpr

bb.cpr:                                           ; preds = %._crit_edge12737, %bb.cpp
  %i.hqz = phi ptr [ %.pre, %._crit_edge12737 ], [ %13, %bb.cpp ] ; 3 uses
  %i.hra = sub nuw i32 -2, %.14955.lcssa
  %i.hrb = sext i32 %i.hra to i64
  %i.hrc = getelementptr inbounds i8, ptr %i.hqz, i64 %i.hrb
  %i.hrd = load i8, ptr %i.hrc, align 1, !tbaa !44
  %i.hre = icmp eq i8 %i.hrd, 13
  br i1 %i.hre, label %bb.cps, label %bb.cpt

bb.cps:                                           ; preds = %bb.cpr
  %i.hrf = xor i32 %.14955.lcssa, -1
  %i.hrg = sext i32 %i.hrf to i64
  %i.hrh = getelementptr inbounds i8, ptr %i.hqz, i64 %i.hrg
  %i.hri = load i8, ptr %i.hrh, align 1, !tbaa !44
  %i.hrj = icmp eq i8 %i.hri, 10
  br i1 %i.hrj, label %bb.cpu, label %bb.cpt

bb.cpt:                                           ; preds = %bb.cps, %bb.cpr
  br label %bb.cpu

bb.cpu:                                           ; preds = %bb.cps, %bb.cpt
  %.04958 = phi i32 [ 1, %bb.cpt ], [ 2, %bb.cps ]
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 153), align 1, !tbaa !97
  %i.hrk = zext nneg i32 %.14955.lcssa to i64
  %i.hrl = sub nsw i64 0, %i.hrk
  %i.hrm = getelementptr inbounds i8, ptr %i.hqz, i64 %i.hrl ; 2 uses
  store ptr %i.hrm, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hrn = getelementptr inbounds nuw i8, ptr %i.hog, i64 12
  store i32 %.14955.lcssa, ptr %i.hrn, align 4, !tbaa !204
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  %.pre12738 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132 ; 2 uses
  %.pre12813 = ptrtoint ptr %.pre12738 to i64
  br label %.loopexit6968

.loopexit6968:                                    ; preds = %.backedge6969, %bb.cpa, %bb.cpu
  %.pre-phi12814 = phi i64 [ %.pre12813, %bb.cpu ], [ %i.hoa, %bb.cpa ], [ %i.hoa, %.backedge6969 ]
  %i.hro = phi ptr [ %.pre12738, %bb.cpu ], [ %i.y, %bb.cpa ], [ %i.y, %.backedge6969 ]
  %i.hrp = phi ptr [ %i.hrm, %bb.cpu ], [ %i.y, %bb.cpa ], [ %i.hqu, %.backedge6969 ]
  %.14959 = phi i32 [ %.04958, %bb.cpu ], [ 0, %bb.cpa ], [ 0, %.backedge6969 ] ; 4 uses
  %.34957 = phi i32 [ %.14955.lcssa, %bb.cpu ], [ 0, %bb.cpa ], [ %.04954.be, %.backedge6969 ]
  %.44953 = phi i32 [ %.14950.lcssa, %bb.cpu ], [ -1, %bb.cpa ], [ %.04949.be, %.backedge6969 ] ; 2 uses
  %i.hrq = ptrtoint ptr %i.hrp to i64
  %i.hrr = sub i64 %i.hrq, %.pre-phi12814
  %i.hrs = trunc i64 %i.hrr to i32                ; 2 uses
  store i32 %i.hrs, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hrt = sub i32 %i.hrs, %.14959
  %i.hru = zext i32 %i.hrt to i64                 ; 4 uses
  %i.hrv = and i64 %i.hru, 4294967288
  %i.hrw = add nuw nsw i64 %i.hrv, 32
  %i.hrx = tail call noalias ptr @_emalloc(i64 noundef %i.hrw) #17 ; 6 uses
  store i32 1, ptr %i.hrx, align 4, !tbaa !45
  %i.hry = getelementptr inbounds nuw i8, ptr %i.hrx, i64 4
  store i32 22, ptr %i.hry, align 4, !tbaa !44
  %i.hrz = getelementptr inbounds nuw i8, ptr %i.hrx, i64 8
  store i64 0, ptr %i.hrz, align 8, !tbaa !83
  %i.hsa = getelementptr inbounds nuw i8, ptr %i.hrx, i64 16
  store i64 %i.hru, ptr %i.hsa, align 8, !tbaa !84
  %i.hsb = getelementptr inbounds nuw i8, ptr %i.hrx, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hsb, ptr align 1 %i.hro, i64 %i.hru, i1 false)
  %i.hsc = getelementptr inbounds nuw i8, ptr %i.hsb, i64 %i.hru
  store i8 0, ptr %i.hsc, align 1, !tbaa !44
  store ptr %i.hrx, ptr %0, align 8, !tbaa !44
  store i32 262, ptr %i.u, align 8, !tbaa !44
  %i.hsd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !122
  %i.hse = icmp ne ptr %i.hsd, null
  %i.hsf = icmp eq i32 %.44953, -1
  %or.cond56.not6600 = select i1 %i.hse, i1 true, i1 %i.hsf
  %or.cond6361 = or i1 %.not5629, %or.cond56.not6600
  br i1 %or.cond6361, label %bb.cpw, label %bb.cpv, !prof !200

bb.cpv:                                           ; preds = %.loopexit6968
  %i.hsg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132
  %i.hsh = getelementptr inbounds i8, ptr %i.hsg, i64 -1
  %i.hsi = load i8, ptr %i.hsh, align 1, !tbaa !44 ; 2 uses
  %i.hsj = icmp eq i8 %i.hsi, 10
  %i.hsk = icmp eq i8 %i.hsi, 13
  %spec.select6362 = or i1 %i.hsj, %i.hsk
  %i.hsl = icmp eq i32 %.44953, 1
  %i.hsm = icmp ne i32 %.14959, 0
  %i.hsn = tail call fastcc zeroext i1 @strip_multiline_string_indentation(ptr noundef nonnull %0, i32 noundef %.34957, i1 noundef zeroext %i.hsl, i1 noundef zeroext %spec.select6362, i1 noundef zeroext %i.hsm)
  br i1 %i.hsn, label %bb.cpw, label %.thread6538

bb.cpw:                                           ; preds = %.loopexit6968, %bb.cpv
  %i.hso = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132 ; 2 uses
  %i.hsp = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48 ; 2 uses
  %i.hsq = sub i32 %i.hsp, %.14959
  %i.hsr = zext i32 %i.hsq to i64
  %i.hss = getelementptr inbounds nuw i8, ptr %i.hso, i64 %i.hsr
  %.not10156 = icmp eq i32 %i.hsp, %.14959
  br i1 %.not10156, label %.thread6564, label %.lr.ph10043.preheader

.lr.ph10043.preheader:                            ; preds = %bb.cpw
  %.promoted10040 = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8
  br label %.lr.ph10043

.lr.ph10043:                                      ; preds = %.lr.ph10043.preheader, %bb.cpz
  %.0492810041 = phi ptr [ %i.hsz, %bb.cpz ], [ %i.hso, %.lr.ph10043.preheader ] ; 3 uses
  %i.hst = phi i32 [ %i.hsy, %bb.cpz ], [ %.promoted10040, %.lr.ph10043.preheader ] ; 3 uses
  %i.hsu = load i8, ptr %.0492810041, align 1, !tbaa !44
  switch i8 %i.hsu, label %bb.cpz [
    i8 10, label %bb.cpy
    i8 13, label %bb.cpx
  ]

bb.cpx:                                           ; preds = %.lr.ph10043
  %i.hsv = getelementptr inbounds nuw i8, ptr %.0492810041, i64 1
  %i.hsw = load i8, ptr %i.hsv, align 1, !tbaa !44
  %.not5631 = icmp eq i8 %i.hsw, 10
  br i1 %.not5631, label %bb.cpz, label %bb.cpy

bb.cpy:                                           ; preds = %.lr.ph10043, %bb.cpx
  %i.hsx = add nsw i32 %i.hst, 1                  ; 2 uses
  store i32 %i.hsx, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.cpz

bb.cpz:                                           ; preds = %.lr.ph10043, %bb.cpy, %bb.cpx
  %i.hsy = phi i32 [ %i.hst, %.lr.ph10043 ], [ %i.hsx, %bb.cpy ], [ %i.hst, %bb.cpx ]
  %i.hsz = getelementptr inbounds nuw i8, ptr %.0492810041, i64 1 ; 2 uses
  %i.hta = icmp ult ptr %i.hsz, %i.hss
  br i1 %i.hta, label %.lr.ph10043, label %.thread6564, !llvm.loop !198

bb.cqa:                                           ; preds = %bb.dn, %bb.do
  store i32 0, ptr %i.u, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  br label %.thread6538

.thread6554:                                      ; preds = %.loopexit6746, %bb.cje, %bb.cjp, %.loopexit6629, %bb.cjk, %bb.ciy, %bb.cgj, %.loopexit6759, %bb.cgu, %bb.cmj, %.loopexit6957, %bb.cgp, %bb.cbz, %bb.jo, %bb.cgd, %bb.cej, %bb.ff, %bb.ceu, %bb.cep, %bb.ced, %bb.cmb, %bb.cke
  %.386561 = phi i32 [ 270, %bb.cke ], [ 262, %bb.cmb ], [ 262, %.loopexit6746 ], [ 266, %bb.cje ], [ 266, %bb.cjp ], [ 264, %.loopexit6629 ], [ 266, %bb.cjk ], [ 266, %bb.ciy ], [ 266, %bb.cgj ], [ 265, %.loopexit6759 ], [ 266, %bb.cgu ], [ 266, %bb.cmj ], [ 263, %.loopexit6957 ], [ 266, %bb.cgp ], [ 262, %bb.cbz ], [ 266, %bb.jo ], [ 266, %bb.cgd ], [ 266, %bb.cej ], [ 262, %bb.ff ], [ 266, %bb.ceu ], [ 266, %bb.cep ], [ 266, %bb.ced ] ; 3 uses
  %.148776559 = phi i32 [ 0, %bb.cke ], [ 0, %bb.cmb ], [ 0, %.loopexit6746 ], [ 1, %bb.cje ], [ 1, %bb.cjp ], [ 10, %.loopexit6629 ], [ 1, %bb.cjk ], [ 1, %bb.ciy ], [ 1, %bb.cgj ], [ 0, %.loopexit6759 ], [ 1, %bb.cgu ], [ 1, %bb.cmj ], [ 1, %.loopexit6957 ], [ 1, %bb.cgp ], [ 0, %bb.cbz ], [ 1, %bb.jo ], [ 1, %bb.cgd ], [ 1, %bb.cej ], [ 0, %bb.ff ], [ 1, %bb.ceu ], [ 1, %bb.cep ], [ 1, %bb.ced ] ; 4 uses
  %i.htb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 208), align 8, !tbaa !89 ; 2 uses
  %.not6266 = icmp eq ptr %i.htb, null
  br i1 %.not6266, label %bb.cqb, label %zend_string_alloc.exit6399

zend_string_alloc.exit6399:                       ; preds = %.thread6554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  store i64 0, ptr %i.r, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #16
  store ptr null, ptr %i.s, align 8, !tbaa !51
  %i.htc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132
  %i.htd = zext nneg i32 %.148776559 to i64
  %i.hte = getelementptr inbounds nuw i8, ptr %i.htc, i64 %i.htd
  %i.htf = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.htg = sub i32 %i.htf, %.148776559
  %i.hth = zext i32 %i.htg to i64
  %i.hti = call i64 %i.htb(ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef %i.hte, i64 noundef %i.hth) #16 ; 0 uses
  %i.htj = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.htk = load i64, ptr %i.r, align 8, !tbaa !92 ; 4 uses
  %i.htl = and i64 %i.htk, -8
  %i.htm = add i64 %i.htl, 32
  %i.htn = call noalias ptr @_emalloc(i64 noundef %i.htm) #17 ; 6 uses
  store i32 1, ptr %i.htn, align 4, !tbaa !45
  %i.hto = getelementptr inbounds nuw i8, ptr %i.htn, i64 4
  store i32 22, ptr %i.hto, align 4, !tbaa !44
  %i.htp = getelementptr inbounds nuw i8, ptr %i.htn, i64 8
  store i64 0, ptr %i.htp, align 8, !tbaa !83
  %i.htq = getelementptr inbounds nuw i8, ptr %i.htn, i64 16
  store i64 %i.htk, ptr %i.htq, align 8, !tbaa !84
  %i.htr = getelementptr inbounds nuw i8, ptr %i.htn, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.htr, ptr align 1 %i.htj, i64 %i.htk, i1 false)
  %i.hts = getelementptr inbounds nuw i8, ptr %i.htr, i64 %i.htk
  store i8 0, ptr %i.hts, align 1, !tbaa !44
  store ptr %i.htn, ptr %0, align 8, !tbaa !44
  store i32 262, ptr %i.u, align 8, !tbaa !44
  %i.htt = load ptr, ptr %i.s, align 8, !tbaa !51
  call void @_efree(ptr noundef %i.htt) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  br label %.thread6564

bb.cqb:                                           ; preds = %.thread6554
  %i.htu = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.htv = sub i32 %i.htu, %.148776559            ; 2 uses
  %i.htw = icmp eq i32 %i.htv, 1
  %i.htx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132
  %i.hty = zext nneg i32 %.148776559 to i64
  %i.htz = getelementptr inbounds nuw i8, ptr %i.htx, i64 %i.hty ; 2 uses
  br i1 %i.htw, label %bb.cqc, label %zend_string_alloc.exit6400

bb.cqc:                                           ; preds = %bb.cqb
  %i.hua = load i8, ptr %i.htz, align 1, !tbaa !44
  %i.hub = zext i8 %i.hua to i64
  %i.huc = getelementptr inbounds nuw [8 x i8], ptr @zend_one_char_string, i64 %i.hub
  %i.hud = load ptr, ptr %i.huc, align 8, !tbaa !136
  store ptr %i.hud, ptr %0, align 8, !tbaa !44
  store i32 6, ptr %i.u, align 8, !tbaa !44
  br label %.thread6564

zend_string_alloc.exit6400:                       ; preds = %bb.cqb
  %i.hue = zext i32 %i.htv to i64                 ; 4 uses
  %i.huf = and i64 %i.hue, 4294967288
  %i.hug = add nuw nsw i64 %i.huf, 32
  %i.huh = tail call noalias ptr @_emalloc(i64 noundef %i.hug) #17 ; 6 uses
  store i32 1, ptr %i.huh, align 4, !tbaa !45
  %i.hui = getelementptr inbounds nuw i8, ptr %i.huh, i64 4
  store i32 22, ptr %i.hui, align 4, !tbaa !44
  %i.huj = getelementptr inbounds nuw i8, ptr %i.huh, i64 8
  store i64 0, ptr %i.huj, align 8, !tbaa !83
  %i.huk = getelementptr inbounds nuw i8, ptr %i.huh, i64 16
  store i64 %i.hue, ptr %i.huk, align 8, !tbaa !84
  %i.hul = getelementptr inbounds nuw i8, ptr %i.huh, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hul, ptr align 1 %i.htz, i64 %i.hue, i1 false)
  %i.hum = getelementptr inbounds nuw i8, ptr %i.hul, i64 %i.hue
end_hunk_1
