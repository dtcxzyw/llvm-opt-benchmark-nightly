Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_language_scanner?download=true
inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lex_scan:bb.a
  %i.gmo = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gmo, i8 0, i64 3, i1 false)
  %i.gmp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.gmq = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  store i32 %i.gmq, ptr %i.gmp, align 4, !tbaa !135
  %i.gmr = call i32 @zend_stack_push(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 128), ptr noundef nonnull %4) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.thread6538

bb.cgg:                                           ; preds = %bb.cga
  %i.gms = getelementptr inbounds nuw i8, ptr %i.glt, i64 2 ; 2 uses
  store ptr %i.gms, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gmt = load i8, ptr %i.gms, align 1, !tbaa !44
  %i.gmu = icmp eq i8 %i.gmt, 62
  br i1 %i.gmu, label %bb.cgk, label %bb.cgh

bb.cgh:                                           ; preds = %bb.cgt, %bb.cgt, %bb.cgt, %bb.cgt, %bb.cgt, %bb.cgt, %bb.cgn, %bb.cgn, %bb.cgn, %bb.cgn, %bb.cgn, %bb.cgn, %bb.cgs, %bb.cgm, %bb.cgr, %bb.cgo, %bb.cgl, %bb.cgi, %bb.cgg
  store ptr %i.gls, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.cgd

bb.cgi:                                           ; preds = %bb.cgb
  %i.gmv = getelementptr inbounds nuw i8, ptr %i.glt, i64 2 ; 2 uses
  store ptr %i.gmv, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gmw = load i8, ptr %i.gmv, align 1, !tbaa !44
  %i.gmx = icmp eq i8 %i.gmw, 45
  br i1 %i.gmx, label %bb.cgo, label %bb.cgh

bb.cgj:                                           ; preds = %bb.cgc
  %i.gmy = getelementptr inbounds nuw i8, ptr %i.glt, i64 2
  %i.gmz = ptrtoint ptr %i.gmy to i64
  %i.gna = ptrtoint ptr %i.y to i64
  %i.gnb = sub i64 %i.gmz, %i.gna                 ; 2 uses
  %i.gnc = trunc i64 %i.gnb to i32
  %i.gnd = and i64 %i.gnb, 4294967295
  %i.gne = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gnd
  %i.gnf = getelementptr inbounds i8, ptr %i.gne, i64 -1
  store ptr %i.gnf, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gng = add i32 %i.gnc, -1
  store i32 %i.gng, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.gnh = tail call i32 @zend_stack_push(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 72), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64)) #16 ; 0 uses
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br label %.thread6554

bb.cgk:                                           ; preds = %bb.cgg
  %i.gni = getelementptr inbounds nuw i8, ptr %i.glt, i64 3 ; 2 uses
  store ptr %i.gni, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gnj = load i8, ptr %i.gni, align 1, !tbaa !44 ; 5 uses
  %i.gnk = icmp ult i8 %i.gnj, 96
  br i1 %i.gnk, label %bb.cgl, label %bb.cgn

bb.cgl:                                           ; preds = %bb.cgk
  %i.gnl = icmp samesign ult i8 %i.gnj, 65
  br i1 %i.gnl, label %bb.cgh, label %bb.cgm

bb.cgm:                                           ; preds = %bb.cgl
  %i.gnm = icmp samesign ugt i8 %i.gnj, 90
  %i.gnn = icmp ne i8 %i.gnj, 95
  %or.cond1532 = and i1 %i.gnm, %i.gnn
  br i1 %or.cond1532, label %bb.cgh, label %bb.cgp

bb.cgn:                                           ; preds = %bb.cgk
  switch i8 %i.gnj, label %bb.cgp [
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
  %spec.select6376 = select i1 %or.cond6324, i32 0, i32 412, !prof !196
  br label %.thread6538

bb.chb:                                           ; preds = %bb.cgx
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gpo = icmp ult ptr %i.y, %i.ac
  br i1 %i.gpo, label %.lr.ph9239, label %.loopexit6962

.lr.ph9239:                                       ; preds = %bb.chb
  %i.gpp = getelementptr inbounds nuw i8, ptr %i.goy, i64 8
  %i.gpq = ptrtoint ptr %i.ac to i64              ; 3 uses
  %i.gpr = trunc i64 %i.gpq to i32
  br label %bb.chc

bb.chc:                                           ; preds = %.lr.ph9239, %.backedge6963
  %i.gps = phi ptr [ %i.y, %.lr.ph9239 ], [ %.promoted92249242, %.backedge6963 ] ; 6 uses
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
  %.promoted92249241 = phi ptr [ %i.gpt, %bb.chd ], [ %i.gpx, %bb.che ], [ %i.gpt, %bb.chc ] ; 5 uses
  %i.gpy = icmp ult ptr %.promoted92249241, %i.ac
  br i1 %i.gpy, label %.lr.ph9228.preheader, label %.critedge46

.lr.ph9228.preheader:                             ; preds = %bb.chf
  %.promoted9224924112737 = ptrtoaddr ptr %.promoted92249241 to i64 ; 2 uses
  %i.gpz = trunc i64 %.promoted9224924112737 to i32
  %i.gqa = sub i32 %i.gpr, %i.gpz
  %scevgep12738 = getelementptr i8, ptr %.promoted92249241, i64 %i.gpq
  %i.gqb = sub i64 0, %.promoted9224924112737
  %scevgep12739 = getelementptr i8, ptr %scevgep12738, i64 %i.gqb
  br label %.lr.ph9228

.lr.ph9228:                                       ; preds = %.lr.ph9228.preheader, %.critedge48
  %.049759226 = phi i32 [ %.14976, %.critedge48 ], [ 0, %.lr.ph9228.preheader ] ; 2 uses
  %.049779225 = phi i32 [ %i.gqg, %.critedge48 ], [ 0, %.lr.ph9228.preheader ] ; 2 uses
  %i.gqc = phi ptr [ %i.gqf, %.critedge48 ], [ %.promoted92249241, %.lr.ph9228.preheader ] ; 3 uses
  %i.gqd = load i8, ptr %i.gqc, align 1, !tbaa !44 ; 2 uses
  switch i8 %i.gqd, label %.critedge46 [
    i8 32, label %.critedge48
    i8 9, label %.critedge48
  ]

.critedge48:                                      ; preds = %.lr.ph9228, %.lr.ph9228
  %i.gqe = icmp eq i8 %i.gqd, 9
  %.14976.v = select i1 %i.gqe, i32 2, i32 1
  %.14976 = or i32 %.14976.v, %.049759226         ; 2 uses
  %i.gqf = getelementptr inbounds nuw i8, ptr %i.gqc, i64 1 ; 4 uses
  store ptr %i.gqf, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.gqg = add nuw nsw i32 %.049779225, 1
  %exitcond12740.not = icmp eq ptr %i.gqf, %scevgep12739
  br i1 %exitcond12740.not, label %.critedge46, label %.lr.ph9228, !llvm.loop !187

.critedge46:                                      ; preds = %.critedge48, %.lr.ph9228, %bb.chf
  %.promoted92249244 = phi ptr [ %.promoted92249241, %bb.chf ], [ %i.gqc, %.lr.ph9228 ], [ %i.gqf, %.critedge48 ] ; 12 uses
  %.04977.lcssa = phi i32 [ 0, %bb.chf ], [ %.049779225, %.lr.ph9228 ], [ %i.gqa, %.critedge48 ] ; 4 uses
  %.04975.lcssa = phi i32 [ 0, %bb.chf ], [ %.049759226, %.lr.ph9228 ], [ %.14976, %.critedge48 ] ; 2 uses
  %i.gqh = icmp eq ptr %.promoted92249244, %i.ac
  br i1 %i.gqh, label %bb.chg, label %bb.chk

bb.chg:                                           ; preds = %.critedge46
  %13 = ptrtoint ptr %.promoted92249244 to i64
  %i.gqi = sub i64 %13, %i.gos                    ; 2 uses
  %i.gqj = trunc i64 %i.gqi to i32
  store i32 %i.gqj, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.gqk = and i64 %i.gqi, 4294967295             ; 2 uses
  %i.gql = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gqk
  %.not10173 = icmp eq i64 %i.gqk, 0
  br i1 %.not10173, label %._crit_edge10103, label %.lr.ph10102.preheader

.lr.ph10102.preheader:                            ; preds = %bb.chg
  %.promoted10099 = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8
  br label %.lr.ph10102

.lr.ph10102:                                      ; preds = %.lr.ph10102.preheader, %bb.chj
  %.0497410100 = phi ptr [ %i.gqs, %bb.chj ], [ %i.y, %.lr.ph10102.preheader ] ; 3 uses
  %i.gqm = phi i32 [ %i.gqr, %bb.chj ], [ %.promoted10099, %.lr.ph10102.preheader ] ; 3 uses
  %i.gqn = load i8, ptr %.0497410100, align 1, !tbaa !44
  switch i8 %i.gqn, label %bb.chj [
    i8 10, label %bb.chi
    i8 13, label %bb.chh
  ]

bb.chh:                                           ; preds = %.lr.ph10102
  %i.gqo = getelementptr inbounds nuw i8, ptr %.0497410100, i64 1
  %i.gqp = load i8, ptr %i.gqo, align 1, !tbaa !44
  %.not5696 = icmp eq i8 %i.gqp, 10
  br i1 %.not5696, label %bb.chj, label %bb.chi

bb.chi:                                           ; preds = %.lr.ph10102, %bb.chh
  %i.gqq = add nsw i32 %i.gqm, 1                  ; 2 uses
  store i32 %i.gqq, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.chj

bb.chj:                                           ; preds = %.lr.ph10102, %bb.chi, %bb.chh
  %i.gqr = phi i32 [ %i.gqm, %.lr.ph10102 ], [ %i.gqq, %bb.chi ], [ %i.gqm, %bb.chh ]
  %i.gqs = getelementptr inbounds nuw i8, ptr %.0497410100, i64 1 ; 2 uses
  %i.gqt = icmp ult ptr %i.gqs, %i.gql
  br i1 %i.gqt, label %.lr.ph10102, label %._crit_edge10103, !llvm.loop !188

._crit_edge10103:                                 ; preds = %bb.chj, %bb.chg
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
  %.promoted92249242 = phi ptr [ %i.gpt, %switch.early.test6377 ], [ %.promoted92249244, %bb.chp ], [ %.promoted92249244, %bb.chm ], [ %i.gpt, %bb.cia ], [ %.promoted92249244, %bb.cho ], [ %.promoted92249244, %bb.chl ], [ %.promoted92249244, %bb.chn ], [ %i.gpt, %bb.cic ], [ %i.gpt, %bb.cic ], [ %i.gpt, %bb.cib ], [ %i.gsr, %bb.cid ], [ %i.gpt, %bb.chc ] ; 3 uses
  %i.grm = icmp ult ptr %.promoted92249242, %i.ac
  br i1 %i.grm, label %bb.chc, label %.loopexit6962

bb.chq:                                           ; preds = %bb.chp
  %i.grn = icmp eq i32 %.04975.lcssa, 3
  br i1 %i.grn, label %bb.chr, label %bb.chs

bb.chr:                                           ; preds = %bb.chq
  %i.gro = load ptr, ptr @zend_ce_parse_error, align 8, !tbaa !79
  %i.grp = tail call ptr @zend_throw_exception(ptr noundef %i.gro, ptr noundef nonnull @.str.6, i64 noundef 0) #16 ; 0 uses
  br i1 %.not5629, label %._crit_edge12759, label %.thread6538, !prof !197

._crit_edge12759:                                 ; preds = %bb.chr
  %.pre12760 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.chs

bb.chs:                                           ; preds = %._crit_edge12759, %bb.chq
  %i.grq = phi ptr [ %.pre12760, %._crit_edge12759 ], [ %.promoted92249244, %bb.chq ] ; 4 uses
  %i.grr = sub nuw i32 -2, %.04977.lcssa
  %i.grs = sext i32 %i.grr to i64
  %i.grt = getelementptr inbounds i8, ptr %i.grq, i64 %i.grs
  %i.gru = load i8, ptr %i.grt, align 1, !tbaa !44
  %i.grv = icmp eq i8 %i.gru, 13
  br i1 %i.grv, label %bb.cht, label %bb.chu

bb.cht:                                           ; preds = %bb.chs
  %i.grw = xor i32 %.04977.lcssa, -1
  %i.grx = sext i32 %i.grw to i64
  %i.gry = getelementptr inbounds i8, ptr %i.grq, i64 %i.grx
  %i.grz = load i8, ptr %i.gry, align 1, !tbaa !44
  %i.gsa = icmp eq i8 %i.grz, 10
  br i1 %i.gsa, label %bb.chv, label %bb.chu

bb.chu:                                           ; preds = %bb.cht, %bb.chs
  br label %bb.chv

bb.chv:                                           ; preds = %bb.cht, %bb.chu
  %.04978 = phi i32 [ 1, %bb.chu ], [ 2, %bb.cht ]
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 153), align 1, !tbaa !97
  %i.gsb = load i8, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 152), align 8, !tbaa !43, !range !85, !noundef !86
  %i.gsc = trunc nuw i8 %i.gsb to i1
  br i1 %i.gsc, label %bb.chw, label %bb.chx

bb.chw:                                           ; preds = %bb.chv
  store i32 %.04977.lcssa, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 156), align 4, !tbaa !201
  %i.gsd = icmp eq i32 %.04975.lcssa, 1
  %i.gse = zext i1 %i.gsd to i8
  store i8 %i.gse, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 160), align 8, !tbaa !202
  br label %bb.chy

bb.chx:                                           ; preds = %bb.chv
  %i.gsf = zext nneg i32 %.04977.lcssa to i64
  %i.gsg = sub nsw i64 0, %i.gsf
  %i.gsh = getelementptr inbounds i8, ptr %i.grq, i64 %i.gsg ; 2 uses
  store ptr %i.gsh, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.chy

bb.chy:                                           ; preds = %bb.chx, %bb.chw
  %i.gsi = phi ptr [ %i.gsh, %bb.chx ], [ %i.grq, %bb.chw ]
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  %.pre12761 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132 ; 2 uses
  %.pre12822 = ptrtoint ptr %.pre12761 to i64
  br label %.loopexit6962

bb.chz:                                           ; preds = %bb.chc
  %i.gsj = load i8, ptr %i.gpt, align 1, !tbaa !44
  %.fr = freeze i8 %i.gsj                         ; 3 uses
  %i.gsk = and i8 %.fr, -33
  %i.gsl = add i8 %i.gsk, -65
  %or.cond6617 = icmp ult i8 %i.gsl, 26
  %i.gsm = icmp slt i8 %.fr, 0
  %or.cond6618 = or i1 %i.gsm, %or.cond6617
  br i1 %or.cond6618, label %bb.cie, label %switch.early.test6377

switch.early.test6377:                            ; preds = %bb.chz
  switch i8 %.fr, label %.backedge6963 [
    i8 123, label %bb.cie
    i8 95, label %bb.cie
  ]

bb.cia:                                           ; preds = %bb.chc
  %i.gsn = load i8, ptr %i.gpt, align 1, !tbaa !44
  %i.gso = icmp eq i8 %i.gsn, 36
  br i1 %i.gso, label %bb.cie, label %.backedge6963

bb.cib:                                           ; preds = %bb.chc
  %i.gsp = icmp ult ptr %i.gpt, %i.ac
  br i1 %i.gsp, label %bb.cic, label %.backedge6963

bb.cic:                                           ; preds = %bb.cib
  %i.gsq = load i8, ptr %i.gpt, align 1, !tbaa !44
  switch i8 %i.gsq, label %bb.cid [
    i8 10, label %.backedge6963
    i8 13, label %.backedge6963
  ]

bb.cid:                                           ; preds = %bb.cic
  %i.gsr = getelementptr inbounds nuw i8, ptr %i.gps, i64 2 ; 2 uses
  store ptr %i.gsr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %.backedge6963

bb.cie:                                           ; preds = %switch.early.test6377, %switch.early.test6377, %bb.chz, %bb.cia
  store ptr %i.gps, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %.loopexit6962

.loopexit6962:                                    ; preds = %.backedge6963, %bb.chb, %bb.cie, %bb.chy
  %.pre-phi12823 = phi i64 [ %.pre12822, %bb.chy ], [ %i.gos, %bb.chb ], [ %i.gos, %bb.cie ], [ %i.gos, %.backedge6963 ]
  %i.gss = phi ptr [ %.pre12761, %bb.chy ], [ %i.y, %bb.chb ], [ %i.y, %bb.cie ], [ %i.y, %.backedge6963 ]
  %i.gst = phi ptr [ %i.gsi, %bb.chy ], [ %i.y, %bb.chb ], [ %i.gps, %bb.cie ], [ %.promoted92249242, %.backedge6963 ]
  %.14979 = phi i32 [ %.04978, %bb.chy ], [ 0, %bb.chb ], [ 0, %bb.cie ], [ 0, %.backedge6963 ] ; 4 uses
  %i.gsu = ptrtoint ptr %i.gst to i64
  %i.gsv = sub i64 %i.gsu, %.pre-phi12823
  %i.gsw = trunc i64 %i.gsv to i32                ; 2 uses
end_hunk_0
begin_hunk_1_@lex_scan:bb.a
bb.cob:                                           ; preds = %bb.coa, %bb.cnz, %bb.cof
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hme = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 82), align 2, !tbaa !203, !range !85, !noundef !86
  %i.hmf = trunc nuw i8 %i.hme to i1
  br i1 %i.hmf, label %bb.coc, label %.loopexit6972.loopexit

bb.coc:                                           ; preds = %bb.cob
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br i1 %.not5629, label %.thread6538, label %.thread6571, !prof !197

bb.cod:                                           ; preds = %bb.cnz
  %i.hmg = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  store ptr %i.hmg, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br i1 %.not5629, label %.thread6538, label %.thread6546.thread, !prof !197

bb.coe:                                           ; preds = %bb.coa
  %i.hmh = getelementptr inbounds nuw i8, ptr %i.y, i64 3 ; 2 uses
  store ptr %i.hmh, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hmi = load i8, ptr %i.hmh, align 1, !tbaa !44
  %i.hmj = and i8 %i.hmi, -33
  %or.cond1607 = icmp eq i8 %i.hmj, 72
  br i1 %or.cond1607, label %bb.cog, label %bb.cof

bb.cof:                                           ; preds = %bb.cog, %bb.coe
  store ptr %i.hlz, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.cob

bb.cog:                                           ; preds = %bb.coe
  %i.hmk = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store ptr %i.hmk, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hml = load i8, ptr %i.hmk, align 1, !tbaa !44
  %i.hmm = and i8 %i.hml, -33
  %or.cond1610.not = icmp eq i8 %i.hmm, 80
  br i1 %or.cond1610.not, label %bb.coh, label %bb.cof

bb.coh:                                           ; preds = %bb.cog
  %i.hmn = getelementptr inbounds nuw i8, ptr %i.y, i64 5 ; 4 uses
  store ptr %i.hmn, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hmo = load i8, ptr %i.hmn, align 1, !tbaa !44 ; 3 uses
  %i.hmp = icmp ult i8 %i.hmo, 13
  br i1 %i.hmp, label %bb.coi, label %bb.coj

bb.coi:                                           ; preds = %bb.coh
  %i.hmq = add nsw i8 %i.hmo, -9
  %or.cond1613 = icmp ult i8 %i.hmq, 2
  br i1 %or.cond1613, label %bb.coo, label %bb.cok

bb.coj:                                           ; preds = %bb.coh
  switch i8 %i.hmo, label %bb.cok [
    i8 13, label %bb.cos
    i8 32, label %bb.coo
  ]

bb.cok:                                           ; preds = %bb.coj, %bb.coi
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hmr = icmp eq ptr %i.hmn, %i.hic
  br i1 %i.hmr, label %bb.col, label %bb.com

bb.col:                                           ; preds = %bb.cok
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br i1 %.not5629, label %.thread6538, label %.thread6571, !prof !197

bb.com:                                           ; preds = %bb.cok
  %i.hms = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 82), align 2, !tbaa !203, !range !85, !noundef !86
  %i.hmt = trunc nuw i8 %i.hms to i1
  br i1 %i.hmt, label %bb.con, label %.loopexit6972.loopexit

bb.con:                                           ; preds = %bb.com
  store ptr %i.hlz, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br i1 %.not5629, label %.thread6538, label %.thread6571, !prof !197

bb.coo:                                           ; preds = %bb.coj, %bb.coi, %bb.cos
  %i.hmu = phi i64 [ 5, %bb.coj ], [ 5, %bb.coi ], [ 6, %bb.cos ]
  %i.hmv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.hmu
  %i.hmw = getelementptr inbounds nuw i8, ptr %i.hmv, i64 1 ; 2 uses
  store ptr %i.hmw, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.cop

bb.cop:                                           ; preds = %bb.cos, %bb.coo
  %i.hmx = phi ptr [ %i.hni, %bb.cos ], [ %i.hmw, %bb.coo ]
  %i.hmy = ptrtoint ptr %i.hmx to i64
  %i.hmz = ptrtoint ptr %i.y to i64
  %i.hna = sub i64 %i.hmy, %i.hmz                 ; 2 uses
  %i.hnb = trunc i64 %i.hna to i32
  store i32 %i.hnb, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hnc = add i64 %i.hna, 4294967295
  %i.hnd = and i64 %i.hnc, 4294967295
  %i.hne = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.hnd
  %i.hnf = load i8, ptr %i.hne, align 1, !tbaa !44
  switch i8 %i.hnf, label %bb.cor [
    i8 10, label %bb.coq
    i8 13, label %bb.coq
  ]

bb.coq:                                           ; preds = %bb.cop, %bb.cop
  %i.hng = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %i.hnh = add nsw i32 %i.hng, 1
  store i32 %i.hnh, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.cor

bb.cor:                                           ; preds = %bb.cop, %bb.coq
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br i1 %.not5629, label %.thread6538, label %.thread6571, !prof !197

bb.cos:                                           ; preds = %bb.coj
  %i.hni = getelementptr inbounds nuw i8, ptr %i.y, i64 6 ; 3 uses
  store ptr %i.hni, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hnj = load i8, ptr %i.hni, align 1, !tbaa !44
  %i.hnk = icmp eq i8 %i.hnj, 10
  br i1 %i.hnk, label %bb.coo, label %bb.cop

bb.cot:                                           ; preds = %bb.h
  br i1 %.not5635, label %bb.cou, label %.thread6532

bb.cou:                                           ; preds = %bb.cot
  store ptr %i.am, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hnl = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !139
  %i.hnm = add nsw i32 %i.hnl, -1
  store i32 %i.hnm, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !139
  %i.hnn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 112), align 8, !tbaa !141
  %i.hno = getelementptr inbounds i8, ptr %i.hnn, i64 -8 ; 2 uses
  store ptr %i.hno, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 112), align 8, !tbaa !141
  %i.hnp = load ptr, ptr %i.hno, align 8, !tbaa !55 ; 4 uses
  %i.hnq = getelementptr inbounds nuw i8, ptr %i.hnp, i64 12
  %i.hnr = load i32, ptr %i.hnq, align 4, !tbaa !200
  %i.hns = getelementptr inbounds nuw i8, ptr %i.hnp, i64 8
  %i.hnt = load i32, ptr %i.hns, align 8, !tbaa !138
  %i.hnu = add nsw i32 %i.hnt, %i.hnr             ; 2 uses
  store i32 %i.hnu, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hnv = add i32 %i.hnu, -1
  %i.hnw = zext i32 %i.hnv to i64
  %i.hnx = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.hnw
  store ptr %i.hnx, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hny = load ptr, ptr %i.hnp, align 8, !tbaa !47
  tail call void @_efree(ptr noundef %i.hny) #16
  tail call void @_efree(ptr noundef nonnull %i.hnp) #16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br label %.thread6538

bb.cov:                                           ; preds = %bb.h
  br i1 %.not5635, label %bb.cow, label %.thread6532

bb.cow:                                           ; preds = %bb.cov
  store ptr %i.am, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hnz = ptrtoint ptr %i.y to i64               ; 3 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hoa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 104), align 8, !tbaa !143
  %i.hob = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !139
  %i.hoc = sext i32 %i.hob to i64
  %i.hod = getelementptr [8 x i8], ptr %i.hoa, i64 %i.hoc
  %i.hoe = getelementptr i8, ptr %i.hod, i64 -8
  %i.hof = load ptr, ptr %i.hoe, align 8, !tbaa !55 ; 3 uses
  %i.hog = icmp ugt ptr %i.am, %i.an
  br i1 %i.hog, label %bb.cox, label %bb.cpa

bb.cox:                                           ; preds = %bb.cow
  %i.hoh = tail call zeroext i1 @zend_stack_is_empty(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 128)) #16 ; 2 uses
  br i1 %i.hoh, label %check_nesting_at_end.exit6441, label %bb.coy

bb.coy:                                           ; preds = %bb.cox
  %i.hoi = tail call ptr @zend_stack_top(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 128)) #16 ; 2 uses
  %i.hoj = load i8, ptr %i.hoi, align 4, !tbaa !134
  %i.hok = getelementptr inbounds nuw i8, ptr %i.hoi, i64 4
  %i.hol = load i32, ptr %i.hok, align 4, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.hom = sext i8 %i.hoj to i32
  %i.hon = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %i.hom) #16
  %i.hoo = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %.not.i.i6438 = icmp eq i32 %i.hol, %i.hoo
  br i1 %.not.i.i6438, label %report_bad_nesting.exit.i6439, label %bb.coz

bb.coz:                                           ; preds = %bb.coy
  %i.hop = sext i32 %i.hon to i64                 ; 2 uses
  %i.hoq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hop
  %i.hor = sub nsw i64 256, %i.hop
  %i.hos = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.hoq, i64 noundef %i.hor, ptr noundef nonnull @.str.21, i32 noundef %i.hol) #16 ; 0 uses
  br label %report_bad_nesting.exit.i6439

report_bad_nesting.exit.i6439:                    ; preds = %bb.coz, %bb.coy
  %i.hot = load ptr, ptr @zend_ce_parse_error, align 8, !tbaa !79
  %i.hou = call ptr @zend_throw_exception(ptr noundef %i.hot, ptr noundef nonnull %i.a, i64 noundef 0) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %check_nesting_at_end.exit6441

check_nesting_at_end.exit6441:                    ; preds = %bb.cox, %report_bad_nesting.exit.i6439
  %or.cond6353 = or i1 %.not5629, %i.hoh
  %spec.select6381 = select i1 %or.cond6353, i32 0, i32 412, !prof !196
  br label %.thread6538

bb.cpa:                                           ; preds = %bb.cow
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hov = icmp ult ptr %i.y, %i.an
  br i1 %i.hov, label %.lr.ph9209, label %.loopexit6968

.lr.ph9209:                                       ; preds = %bb.cpa
  %i.how = getelementptr inbounds nuw i8, ptr %i.hof, i64 8
  %i.hox = ptrtoint ptr %i.an to i64              ; 3 uses
  %i.hoy = trunc i64 %i.hox to i32
  br label %bb.cpb

bb.cpb:                                           ; preds = %.lr.ph9209, %.backedge6969
  %i.hoz = phi ptr [ %i.y, %.lr.ph9209 ], [ %i.hqu, %.backedge6969 ] ; 3 uses
  %.049499208 = phi i32 [ -1, %.lr.ph9209 ], [ %.04949.be, %.backedge6969 ]
  %.049549207 = phi i32 [ 0, %.lr.ph9209 ], [ %.04954.be, %.backedge6969 ]
  %i.hpa = getelementptr inbounds nuw i8, ptr %i.hoz, i64 1 ; 5 uses
  store ptr %i.hpa, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hpb = load i8, ptr %i.hoz, align 1, !tbaa !44
  switch i8 %i.hpb, label %.backedge6969 [
    i8 13, label %bb.cpc
    i8 10, label %bb.cpe
  ]

bb.cpc:                                           ; preds = %bb.cpb
  %i.hpc = load i8, ptr %i.hpa, align 1, !tbaa !44
  %i.hpd = icmp eq i8 %i.hpc, 10
  br i1 %i.hpd, label %bb.cpd, label %bb.cpe

bb.cpd:                                           ; preds = %bb.cpc
  %i.hpe = getelementptr inbounds nuw i8, ptr %i.hoz, i64 2 ; 2 uses
  store ptr %i.hpe, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.cpe

bb.cpe:                                           ; preds = %bb.cpc, %bb.cpd, %bb.cpb
  %.promoted9213 = phi ptr [ %i.hpa, %bb.cpc ], [ %i.hpe, %bb.cpd ], [ %i.hpa, %bb.cpb ] ; 5 uses
  %i.hpf = icmp ult ptr %.promoted9213, %i.an
  br i1 %i.hpf, label %.lr.ph.preheader, label %.critedge52

.lr.ph.preheader:                                 ; preds = %bb.cpe
  %.promoted921312735 = ptrtoaddr ptr %.promoted9213 to i64 ; 2 uses
  %i.hpg = trunc i64 %.promoted921312735 to i32
  %i.hph = sub i32 %i.hoy, %i.hpg
  %scevgep = getelementptr i8, ptr %.promoted9213, i64 %i.hox
  %i.hpi = sub i64 0, %.promoted921312735
  %scevgep12736 = getelementptr i8, ptr %scevgep, i64 %i.hpi ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge54
  %.149509198 = phi i32 [ %.24951, %.critedge54 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.149559197 = phi i32 [ %i.hpn, %.critedge54 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.hpj = phi ptr [ %i.hpm, %.critedge54 ], [ %.promoted9213, %.lr.ph.preheader ] ; 3 uses
  %i.hpk = load i8, ptr %i.hpj, align 1, !tbaa !44 ; 2 uses
  switch i8 %i.hpk, label %.critedge52 [
    i8 32, label %.critedge54
    i8 9, label %.critedge54
  ]

.critedge54:                                      ; preds = %.lr.ph, %.lr.ph
  %i.hpl = icmp eq i8 %i.hpk, 9
  %.24951.v = select i1 %i.hpl, i32 2, i32 1
  %.24951 = or i32 %.24951.v, %.149509198         ; 2 uses
  %i.hpm = getelementptr inbounds nuw i8, ptr %i.hpj, i64 1 ; 3 uses
  store ptr %i.hpm, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.hpn = add nuw nsw i32 %.149559197, 1
  %exitcond.not = icmp eq ptr %i.hpm, %scevgep12736
  br i1 %exitcond.not, label %.critedge52, label %.lr.ph, !llvm.loop !191

.critedge52:                                      ; preds = %.critedge54, %.lr.ph, %bb.cpe
  %i.hpo = phi ptr [ %.promoted9213, %bb.cpe ], [ %i.hpj, %.lr.ph ], [ %scevgep12736, %.critedge54 ] ; 12 uses
  %.14955.lcssa = phi i32 [ 0, %bb.cpe ], [ %.149559197, %.lr.ph ], [ %i.hph, %.critedge54 ] ; 10 uses
  %.14950.lcssa = phi i32 [ 0, %bb.cpe ], [ %.149509198, %.lr.ph ], [ %.24951, %.critedge54 ] ; 7 uses
  %i.hpp = icmp eq ptr %i.hpo, %i.an
  br i1 %i.hpp, label %bb.cpf, label %bb.cpj

bb.cpf:                                           ; preds = %.critedge52
  %14 = ptrtoint ptr %i.hpo to i64
  %i.hpq = sub i64 %14, %i.hnz                    ; 2 uses
  %i.hpr = trunc i64 %i.hpq to i32
  store i32 %i.hpr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.hps = and i64 %i.hpq, 4294967295             ; 2 uses
  %i.hpt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.hps
  %.not10170 = icmp eq i64 %i.hps, 0
  br i1 %.not10170, label %._crit_edge10063, label %.lr.ph10062.preheader

.lr.ph10062.preheader:                            ; preds = %bb.cpf
  %.promoted10059 = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8
  br label %.lr.ph10062

.lr.ph10062:                                      ; preds = %.lr.ph10062.preheader, %bb.cpi
  %.0494810060 = phi ptr [ %i.hqa, %bb.cpi ], [ %i.y, %.lr.ph10062.preheader ] ; 3 uses
  %i.hpu = phi i32 [ %i.hpz, %bb.cpi ], [ %.promoted10059, %.lr.ph10062.preheader ] ; 3 uses
  %i.hpv = load i8, ptr %.0494810060, align 1, !tbaa !44
  switch i8 %i.hpv, label %bb.cpi [
    i8 10, label %bb.cph
    i8 13, label %bb.cpg
  ]

bb.cpg:                                           ; preds = %.lr.ph10062
  %i.hpw = getelementptr inbounds nuw i8, ptr %.0494810060, i64 1
  %i.hpx = load i8, ptr %i.hpw, align 1, !tbaa !44
  %.not5632 = icmp eq i8 %i.hpx, 10
  br i1 %.not5632, label %bb.cpi, label %bb.cph

bb.cph:                                           ; preds = %.lr.ph10062, %bb.cpg
  %i.hpy = add nsw i32 %i.hpu, 1                  ; 2 uses
  store i32 %i.hpy, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.cpi

bb.cpi:                                           ; preds = %.lr.ph10062, %bb.cph, %bb.cpg
  %i.hpz = phi i32 [ %i.hpu, %.lr.ph10062 ], [ %i.hpy, %bb.cph ], [ %i.hpu, %bb.cpg ]
  %i.hqa = getelementptr inbounds nuw i8, ptr %.0494810060, i64 1 ; 2 uses
  %i.hqb = icmp ult ptr %i.hqa, %i.hpt
  br i1 %i.hqb, label %.lr.ph10062, label %._crit_edge10063, !llvm.loop !192

._crit_edge10063:                                 ; preds = %bb.cpi, %bb.cpf
  store i32 1, ptr %i.u, align 8, !tbaa !44
  br label %.thread6564

bb.cpj:                                           ; preds = %.critedge52
  %i.hqc = load i8, ptr %i.hpo, align 1, !tbaa !44 ; 3 uses
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
  %i.hqh = load i32, ptr %i.how, align 8, !tbaa !138
  %i.hqi = sext i32 %i.hqh to i64                 ; 3 uses
  %i.hqj = ptrtoint ptr %i.hpo to i64
  %i.hqk = sub i64 %i.hox, %i.hqj
  %i.hql = icmp sgt i64 %i.hqk, %i.hqi
  br i1 %i.hql, label %bb.cpm, label %.backedge6969

bb.cpm:                                           ; preds = %bb.cpl
  %i.hqm = load ptr, ptr %i.hof, align 8, !tbaa !47
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.hpo, ptr %i.hqm, i64 %i.hqi)
  %.not5628 = icmp eq i32 %bcmp, 0
  br i1 %.not5628, label %bb.cpn, label %.backedge6969

bb.cpn:                                           ; preds = %bb.cpm
  %i.hqn = getelementptr inbounds i8, ptr %i.hpo, i64 %i.hqi
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
  %i.hqu = phi ptr [ %i.hpo, %bb.cpo ], [ %i.hpo, %bb.cpn ], [ %i.hpa, %bb.cpb ], [ %i.hpo, %bb.cpm ], [ %i.hpo, %bb.cpl ], [ %i.hpo, %bb.cpk ] ; 3 uses
  %.04954.be = phi i32 [ %.14955.lcssa, %bb.cpo ], [ %.14955.lcssa, %bb.cpn ], [ %.049549207, %bb.cpb ], [ %.14955.lcssa, %bb.cpm ], [ %.14955.lcssa, %bb.cpl ], [ %.14955.lcssa, %bb.cpk ] ; 2 uses
  %.04949.be = phi i32 [ %.14950.lcssa, %bb.cpo ], [ %.14950.lcssa, %bb.cpn ], [ %.049499208, %bb.cpb ], [ %.14950.lcssa, %bb.cpm ], [ %.14950.lcssa, %bb.cpl ], [ %.14950.lcssa, %bb.cpk ] ; 2 uses
  %i.hqv = icmp ult ptr %i.hqu, %i.an
  br i1 %i.hqv, label %bb.cpb, label %.loopexit6968, !llvm.loop !193

bb.cpp:                                           ; preds = %bb.cpo
  %i.hqw = icmp eq i32 %.14950.lcssa, 3
  br i1 %i.hqw, label %bb.cpq, label %bb.cpr

bb.cpq:                                           ; preds = %bb.cpp
  %i.hqx = load ptr, ptr @zend_ce_parse_error, align 8, !tbaa !79
  %i.hqy = tail call ptr @zend_throw_exception(ptr noundef %i.hqx, ptr noundef nonnull @.str.6, i64 noundef 0) #16 ; 0 uses
  br i1 %.not5629, label %._crit_edge12751, label %.thread6538, !prof !197

._crit_edge12751:                                 ; preds = %bb.cpq
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.cpr

bb.cpr:                                           ; preds = %._crit_edge12751, %bb.cpp
  %i.hqz = phi ptr [ %.pre, %._crit_edge12751 ], [ %i.hpo, %bb.cpp ] ; 3 uses
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
  %i.hrn = getelementptr inbounds nuw i8, ptr %i.hof, i64 12
  store i32 %.14955.lcssa, ptr %i.hrn, align 4, !tbaa !200
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  %.pre12752 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132 ; 2 uses
  %.pre12826 = ptrtoint ptr %.pre12752 to i64
  br label %.loopexit6968

.loopexit6968:                                    ; preds = %.backedge6969, %bb.cpa, %bb.cpu
  %.pre-phi12827 = phi i64 [ %.pre12826, %bb.cpu ], [ %i.hnz, %bb.cpa ], [ %i.hnz, %.backedge6969 ]
  %i.hro = phi ptr [ %.pre12752, %bb.cpu ], [ %i.y, %bb.cpa ], [ %i.y, %.backedge6969 ]
  %i.hrp = phi ptr [ %i.hrm, %bb.cpu ], [ %i.y, %bb.cpa ], [ %i.hqu, %.backedge6969 ]
  %.14959 = phi i32 [ %.04958, %bb.cpu ], [ 0, %bb.cpa ], [ 0, %.backedge6969 ] ; 4 uses
  %.34957 = phi i32 [ %.14955.lcssa, %bb.cpu ], [ 0, %bb.cpa ], [ %.04954.be, %.backedge6969 ]
  %.44953 = phi i32 [ %.14950.lcssa, %bb.cpu ], [ -1, %bb.cpa ], [ %.04949.be, %.backedge6969 ] ; 2 uses
  %i.hrq = ptrtoint ptr %i.hrp to i64
  %i.hrr = sub i64 %i.hrq, %.pre-phi12827
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
  br i1 %or.cond6361, label %bb.cpw, label %bb.cpv, !prof !196

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
  %.not10171 = icmp eq i32 %i.hsp, %.14959
  br i1 %.not10171, label %.thread6564, label %.lr.ph10058.preheader

.lr.ph10058.preheader:                            ; preds = %bb.cpw
  %.promoted10055 = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8
  br label %.lr.ph10058

end_hunk_1
