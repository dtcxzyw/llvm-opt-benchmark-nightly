Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pl_gram?download=true
inline.NumInlined: 116
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@plpgsql_yyparse:bb.a
  %i.sh = load i32, ptr %.31145, align 4
  call fastcc void @check_assignable(ptr noundef %i.sg, i32 noundef %i.sh, ptr noundef %1)
  %i.si = call ptr @palloc0(i64 noundef 24) #10   ; 6 uses
  store i32 1, ptr %i.si, align 8
  %i.sj = load i32, ptr %.31145, align 4
  %i.sk = call i32 @plpgsql_location_to_lineno(i32 noundef %i.sj, ptr noundef %1) #10
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  store i32 %i.sk, ptr %i.sl, align 4
  %i.sm = load ptr, ptr @plpgsql_curr_compile, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 552 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 8
  %i.sp = add i32 %i.so, 1                        ; 2 uses
  store i32 %i.sp, ptr %i.sn, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store i32 %i.sp, ptr %i.sq, align 8
  %i.sr = load ptr, ptr %.31130, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.st = load i32, ptr %i.ss, align 4
  %i.su = getelementptr inbounds nuw i8, ptr %i.si, i64 12
  store i32 %i.st, ptr %i.su, align 4
  call void @plpgsql_push_back_token(i32 noundef 277, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %1) #10
  %i.sv = call fastcc ptr @read_sql_construct(i32 noundef 59, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %.01158, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef %i.a, ptr noundef %1) ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  store ptr %i.sv, ptr %i.sw, align 8
  %i.sx = load ptr, ptr %.31130, align 8          ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.ec, label %mark_expr_as_assignment_source.exit1287

bb.ec:                                            ; preds = %list_length.exit1284.thread1402
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.tb = load i32, ptr %i.ta, align 4
  br label %mark_expr_as_assignment_source.exit1287

mark_expr_as_assignment_source.exit1287:          ; preds = %list_length.exit1284.thread1402, %bb.ec
  %.sink6.i1285 = phi i32 [ %i.tb, %bb.ec ], [ -1, %list_length.exit1284.thread1402 ]
  %.sink.i1286 = phi i8 [ 1, %bb.ec ], [ 0, %list_length.exit1284.thread1402 ]
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  store i32 %.sink6.i1285, ptr %i.tc, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 36
  store i8 %.sink.i1286, ptr %i.td, align 4
  store ptr %i.si, ptr %4, align 8
  br label %bb.ol

bb.ed:                                            ; preds = %bb.w
  %i.te = call ptr @palloc0(i64 noundef 24) #10   ; 6 uses
  store i32 19, ptr %i.te, align 8
  %i.tf = getelementptr inbounds i8, ptr %.31145, i64 -16
  %i.tg = load i32, ptr %i.tf, align 4
  %i.th = call i32 @plpgsql_location_to_lineno(i32 noundef %i.tg, ptr noundef %1) #10
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  store i32 %i.th, ptr %i.ti, align 4
  %i.tj = load ptr, ptr @plpgsql_curr_compile, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 552 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 8
  %i.tm = add i32 %i.tl, 1                        ; 2 uses
  store i32 %i.tm, ptr %i.tk, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  store i32 %i.tm, ptr %i.tn, align 8
  %i.to = getelementptr inbounds i8, ptr %.31130, i64 -96
  %i.tp = load i8, ptr %i.to, align 8, !range !3, !noundef !4 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.te, i64 12
  store i8 %i.tp, ptr %i.tq, align 4
  %i.tr = getelementptr inbounds i8, ptr %.31130, i64 -32
  %i.ts = load ptr, ptr %i.tr, align 8            ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  store ptr %i.ts, ptr %i.tt, align 8
  %.not1240 = icmp eq ptr %i.ts, null
  br i1 %.not1240, label %.critedge1271, label %.lr.ph1753

.lr.ph1753:                                       ; preds = %bb.ed
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  %i.tv = load i32, ptr %i.tu, align 4            ; 2 uses
  %i.tw = trunc nuw i8 %i.tp to i1                ; 2 uses
  %i.tx = icmp sgt i32 %i.tv, 0
  br i1 %i.tx, label %.lr.ph1764, label %.critedge1271

.lr.ph1764:                                       ; preds = %.lr.ph1753
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8
  %wide.trip.count = zext nneg i32 %i.tv to i64
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph1764, %bb.eh
  %indvars.iv = phi i64 [ 0, %.lr.ph1764 ], [ %indvars.iv.next, %bb.eh ] ; 2 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv
  %i.ub = load ptr, ptr %i.ua, align 8            ; 4 uses
  %i.uc = load i32, ptr %i.ub, align 4
  switch i32 %i.uc, label %.split [
    i32 0, label %bb.ef
    i32 1, label %bb.ef
    i32 3, label %bb.eg
    i32 4, label %bb.eg
    i32 5, label %bb.eg
    i32 6, label %bb.eg
    i32 7, label %bb.eg
    i32 8, label %bb.eg
    i32 9, label %bb.eg
    i32 10, label %bb.eg
    i32 11, label %bb.eg
    i32 12, label %bb.eg
    i32 2, label %bb.eh
  ]

.critedge1271:                                    ; preds = %bb.eh, %.lr.ph1753, %bb.ed
  store ptr %i.te, ptr %4, align 8
  br label %bb.ol

bb.ef:                                            ; preds = %bb.ee, %bb.ee
  br i1 %i.tw, label %.split1760, label %bb.eh

.split1760:                                       ; preds = %bb.ef
  %i.ud = getelementptr inbounds i8, ptr %.31145, i64 -16
  %i.ue = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.uf = call i32 @errcode(i32 noundef 16801924) #10 ; 0 uses
  %i.ug = load i32, ptr %i.ub, align 4
  %i.uh = call ptr @plpgsql_getdiag_kindname(i32 noundef %i.ug) #10
  %i.ui = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15, ptr noundef %i.uh) #10 ; 0 uses
  %i.uj = load i32, ptr %i.ud, align 4
  %i.uk = call i32 @plpgsql_scanner_errposition(i32 noundef %i.uj, ptr noundef %1) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 1042, ptr noundef nonnull @__func__.plpgsql_yyparse) #10
  unreachable

bb.eg:                                            ; preds = %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee
  br i1 %i.tw, label %bb.eh, label %.split1756

.split1756:                                       ; preds = %bb.eg
  %i.ul = getelementptr inbounds i8, ptr %.31145, i64 -16
  %i.um = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.un = call i32 @errcode(i32 noundef 16801924) #10 ; 0 uses
  %i.uo = load i32, ptr %i.ub, align 4
  %i.up = call ptr @plpgsql_getdiag_kindname(i32 noundef %i.uo) #10
  %i.uq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16, ptr noundef %i.up) #10 ; 0 uses
  %i.ur = load i32, ptr %i.ul, align 4
  %i.us = call i32 @plpgsql_scanner_errposition(i32 noundef %i.ur, ptr noundef %1) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 1060, ptr noundef nonnull @__func__.plpgsql_yyparse) #10
  unreachable

.split:                                           ; preds = %bb.ee
  %i.ut = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.uu = load i32, ptr %i.ub, align 4
  %i.uv = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.17, i32 noundef %i.uu) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 1067, ptr noundef nonnull @__func__.plpgsql_yyparse) #10
  unreachable

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge1271, label %bb.ee

bb.ei:                                            ; preds = %bb.w
  store i8 0, ptr %4, align 8
  br label %bb.ol

bb.ej:                                            ; preds = %bb.w
  store i8 0, ptr %4, align 8
  br label %bb.ol

bb.ek:                                            ; preds = %bb.w
  store i8 1, ptr %4, align 8
  br label %bb.ol

bb.el:                                            ; preds = %bb.w
  %i.uw = getelementptr inbounds i8, ptr %.31130, i64 -64
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = load ptr, ptr %.31130, align 8
  %i.uz = call ptr @lappend(ptr noundef %i.ux, ptr noundef %i.uy) #10
  store ptr %i.uz, ptr %4, align 8
  br label %bb.ol

bb.em:                                            ; preds = %bb.w
  %i.va = load ptr, ptr %.31130, align 8
  %i.vb = call ptr @list_make1_impl(i32 noundef 1, ptr %i.va) #10
  store ptr %i.vb, ptr %4, align 8
  br label %bb.ol

bb.en:                                            ; preds = %bb.w
  %i.vc = call ptr @palloc(i64 noundef 8) #10     ; 3 uses
  %i.vd = getelementptr inbounds i8, ptr %.31130, i64 -64
  %i.ve = load ptr, ptr %i.vd, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vg = load i32, ptr %i.vf, align 4
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  store i32 %i.vg, ptr %i.vh, align 4
  %i.vi = load i32, ptr %.31130, align 8
  store i32 %i.vi, ptr %i.vc, align 4
  store ptr %i.vc, ptr %4, align 8
  br label %bb.ol

bb.eo:                                            ; preds = %bb.w
  %i.vj = call i32 @plpgsql_yylex(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %1) #10
  switch i32 %i.vj, label %tok_is_keyword.exit1324 [
    i32 365, label %bb.es
    i32 277, label %bb.ep
    i32 355, label %bb.eu
    i32 350, label %bb.ex
    i32 353, label %bb.ez
    i32 354, label %bb.fb
    i32 352, label %bb.fd
    i32 295, label %bb.fg
    i32 299, label %bb.fi
    i32 351, label %bb.fk
    i32 339, label %bb.fm
    i32 375, label %bb.fp
    i32 368, label %bb.fr
    i32 362, label %bb.ft
  ]

bb.ep:                                            ; preds = %bb.eo
  %i.vk = load i8, ptr %i.m, align 8, !range !3, !noundef !4
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %tok_is_keyword.exit1324, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.vm = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not.i1288 = icmp eq ptr %i.vm, null
  br i1 %.not.i1288, label %tok_is_keyword.exit1324, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.vn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vm, ptr noundef nonnull dereferenceable(10) @.str.18) #11
  %i.vo = icmp eq i32 %i.vn, 0
  br i1 %i.vo, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.eo, %bb.er
  store i32 0, ptr %4, align 8
  br label %bb.ol

bb.et:                                            ; preds = %bb.er
  %i.vp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vm, ptr noundef nonnull dereferenceable(15) @.str.19) #11
  %i.vq = icmp eq i32 %i.vp, 0
  br i1 %i.vq, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.eo, %bb.et
  store i32 1, ptr %4, align 8
  br label %bb.ol

bb.ev:                                            ; preds = %bb.et
  %.pr = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i1293 = icmp eq ptr %.pr, null
  br i1 %.not.i1293, label %tok_is_keyword.exit1324, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.vr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr, ptr noundef nonnull dereferenceable(11) @.str.20) #11
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.eo, %bb.ew
  store i32 2, ptr %4, align 8
  br label %bb.ol

bb.ey:                                            ; preds = %bb.ew
  %i.vt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr, ptr noundef nonnull dereferenceable(20) @.str.21) #11
  %i.vu = icmp eq i32 %i.vt, 0
  br i1 %i.vu, label %bb.ez, label %.thread2045

bb.ez:                                            ; preds = %bb.eo, %bb.ey
  store i32 4, ptr %4, align 8
  br label %bb.ol

.thread2045:                                      ; preds = %bb.ey
  %.pr2106 = load ptr, ptr %i.n, align 8          ; 3 uses
  %.not.i1299 = icmp eq ptr %.pr2106, null
  br i1 %.not.i1299, label %tok_is_keyword.exit1324, label %bb.fa

bb.fa:                                            ; preds = %.thread2045
  %i.vv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr2106, ptr noundef nonnull dereferenceable(18) @.str.22) #11
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.eo, %bb.fa
  store i32 5, ptr %4, align 8
  br label %bb.ol

bb.fc:                                            ; preds = %bb.fa
  %i.vx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr2106, ptr noundef nonnull dereferenceable(21) @.str.23) #11
  %i.vy = icmp eq i32 %i.vx, 0
  br i1 %i.vy, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.eo, %bb.fc
  store i32 3, ptr %4, align 8
  br label %bb.ol

bb.fe:                                            ; preds = %bb.fc
  %.pr2054 = load ptr, ptr %i.n, align 8          ; 3 uses
  %.not.i1305 = icmp eq ptr %.pr2054, null
  br i1 %.not.i1305, label %tok_is_keyword.exit1324, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.vz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr2054, ptr noundef nonnull dereferenceable(12) @.str.24) #11
  %i.wa = icmp eq i32 %i.vz, 0
  br i1 %i.wa, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.eo, %bb.ff
  store i32 7, ptr %4, align 8
  br label %bb.ol

bb.fh:                                            ; preds = %bb.ff
  %i.wb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr2054, ptr noundef nonnull dereferenceable(16) @.str.25) #11
  %i.wc = icmp eq i32 %i.wb, 0
  br i1 %i.wc, label %bb.fi, label %.thread2060

bb.fi:                                            ; preds = %bb.eo, %bb.fh
  store i32 8, ptr %4, align 8
  br label %bb.ol

.thread2060:                                      ; preds = %bb.fh
  %.pr2108.pr = load ptr, ptr %i.n, align 8       ; 3 uses
  %.not.i1311 = icmp eq ptr %.pr2108.pr, null
  br i1 %.not.i1311, label %tok_is_keyword.exit1324, label %bb.fj

bb.fj:                                            ; preds = %.thread2060
  %i.wd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr2108.pr, ptr noundef nonnull dereferenceable(17) @.str.26) #11
  %i.we = icmp eq i32 %i.wd, 0
  br i1 %i.we, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.eo, %bb.fj
  store i32 9, ptr %4, align 8
  br label %bb.ol

bb.fl:                                            ; preds = %bb.fj
  %i.wf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr2108.pr, ptr noundef nonnull dereferenceable(13) @.str.27) #11
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.eo, %bb.fl
  store i32 10, ptr %4, align 8
  br label %bb.ol

bb.fn:                                            ; preds = %bb.fl
  %.pr2069 = load ptr, ptr %i.n, align 8          ; 3 uses
  %.not.i1317 = icmp eq ptr %.pr2069, null
  br i1 %.not.i1317, label %tok_is_keyword.exit1324, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.wh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr2069, ptr noundef nonnull dereferenceable(11) @.str.28) #11
  %i.wi = icmp eq i32 %i.wh, 0
  br i1 %i.wi, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.eo, %bb.fo
  store i32 11, ptr %4, align 8
  br label %bb.ol

bb.fq:                                            ; preds = %bb.fo
  %i.wj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr2069, ptr noundef nonnull dereferenceable(12) @.str.29) #11
  %i.wk = icmp eq i32 %i.wj, 0
  br i1 %i.wk, label %bb.fr, label %.thread2075

bb.fr:                                            ; preds = %bb.eo, %bb.fq
  store i32 12, ptr %4, align 8
  br label %bb.ol

.thread2075:                                      ; preds = %bb.fq
  %.pr2110.pr = load ptr, ptr %i.n, align 8       ; 2 uses
  %.not.i1323 = icmp eq ptr %.pr2110.pr, null
  br i1 %.not.i1323, label %tok_is_keyword.exit1324, label %bb.fs

bb.fs:                                            ; preds = %.thread2075
  %i.wl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr2110.pr, ptr noundef nonnull dereferenceable(18) @.str.30) #11
  %i.wm = icmp eq i32 %i.wl, 0
  br i1 %i.wm, label %bb.ft, label %tok_is_keyword.exit1324

bb.ft:                                            ; preds = %bb.eo, %bb.fs
  store i32 6, ptr %4, align 8
  br label %bb.ol

tok_is_keyword.exit1324:                          ; preds = %.thread2045, %bb.fe, %bb.eq, %bb.ev, %bb.fn, %.thread2060, %bb.ep, %bb.eo, %bb.fs, %.thread2075
  call void @plpgsql_yyerror(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.31) #13
  unreachable

bb.fu:                                            ; preds = %bb.w
  %i.wn = load ptr, ptr %.31130, align 8
  %i.wo = load i32, ptr %i.wn, align 4
  %.off = add i32 %i.wo, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.wp = call i32 @plpgsql_peek(ptr noundef %1) #10
  %i.wq = icmp eq i32 %i.wp, 91
  br i1 %i.wq, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %i.wr = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.ws = call i32 @errcode(i32 noundef 16801924) #10 ; 0 uses
  %i.wt = call fastcc ptr @NameOfDatum(ptr noundef %.31130)
  %i.wu = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, ptr noundef %i.wt) #10 ; 0 uses
  %i.wv = load i32, ptr %.31145, align 4
  %i.ww = call i32 @plpgsql_scanner_errposition(i32 noundef %i.wv, ptr noundef %1) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 1174, ptr noundef nonnull @__func__.plpgsql_yyparse) #10
  unreachable

bb.fx:                                            ; preds = %bb.fv
  %i.wx = load ptr, ptr %.31130, align 8
  %i.wy = load i32, ptr %.31145, align 4
  call fastcc void @check_assignable(ptr noundef %i.wx, i32 noundef %i.wy, ptr noundef %1)
  %i.wz = load ptr, ptr %.31130, align 8
  store ptr %i.wz, ptr %4, align 8
  br label %bb.ol

bb.fy:                                            ; preds = %bb.w
  %i.xa = load i32, ptr %.31145, align 4
  call fastcc void @word_is_not_variable(ptr noundef %.31130, i32 noundef %i.xa, ptr noundef %1)
  unreachable
end_hunk_0
begin_hunk_1_@make_return_query_stmt:bb.a
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = icmp eq i32 %i.ad, 381
  br i1 %i.ae, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %i.ag = call fastcc ptr @read_sql_construct(i32 noundef 44, i32 noundef 59, i32 noundef 0, ptr noundef nonnull @.str.63, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3)
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = call ptr @lappend(ptr noundef %i.ah, ptr noundef %i.ag) #10
  store ptr %i.ai, ptr %i.af, align 8
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = icmp eq i32 %i.aj, 44
  br i1 %i.ak, label %bb.h, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %tok_is_keyword.exit
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @make_return_stmt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc0(i64 noundef 32) #10 ; 6 uses
  store i32 11, ptr %i.a, align 8
  %i.b = tail call i32 @plpgsql_location_to_lineno(i32 noundef %0, ptr noundef %3) #10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.b, ptr %i.c, align 4
  %i.d = load ptr, ptr @plpgsql_curr_compile, align 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 552 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, 1                          ; 2 uses
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 83
  %i.l = load i8, ptr %i.k, align 1, !range !3, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @plpgsql_yylex(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #10
  %.not48 = icmp eq i32 %i.n, 59
  br i1 %.not48, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.p = tail call i32 @errcode(i32 noundef 67141764) #10 ; 0 uses
  %i.q = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.108) #10 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.109) #10 ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = tail call i32 @plpgsql_scanner_errposition(i32 noundef %i.s, ptr noundef %3) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 3377, ptr noundef nonnull @__func__.make_return_stmt) #10
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, 2278
  br i1 %i.w, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = tail call i32 @plpgsql_yylex(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #10
  %.not47 = icmp eq i32 %i.x, 59
  br i1 %.not47, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr @plpgsql_curr_compile, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 85
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 112
  %i.ac = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @errcode(i32 noundef 16801924) #10 ; 0 uses
  %i.ae = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.110) #10 ; 0 uses
  %i.af = load i32, ptr %2, align 4
  %i.ag = tail call i32 @plpgsql_scanner_errposition(i32 noundef %i.af, ptr noundef %3) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 3387, ptr noundef nonnull @__func__.make_return_stmt) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call i32 @errcode(i32 noundef 67141764) #10 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.111) #10 ; 0 uses
  %i.aj = load i32, ptr %2, align 4
  %i.ak = tail call i32 @plpgsql_scanner_errposition(i32 noundef %i.aj, ptr noundef %3) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 3392, ptr noundef nonnull @__func__.make_return_stmt) #10
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 492
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp sgt i32 %i.am, -1
  %i.ao = tail call i32 @plpgsql_yylex(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #10 ; 3 uses
  br i1 %i.an, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i32 %i.ao, 59
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.aq = tail call i32 @errcode(i32 noundef 67141764) #10 ; 0 uses
  %i.ar = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.112) #10 ; 0 uses
  %i.as = load i32, ptr %2, align 4
  %i.at = tail call i32 @plpgsql_scanner_errposition(i32 noundef %i.as, ptr noundef %3) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 3401, ptr noundef nonnull @__func__.make_return_stmt) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.au = load ptr, ptr @plpgsql_curr_compile, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 492
  %i.aw = load i32, ptr %i.av, align 4
  store i32 %i.aw, ptr %i.j, align 8
  br label %bb.r

bb.m:                                             ; preds = %bb.i
  %i.ax = icmp eq i32 %i.ao, 277
  br i1 %i.ax, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call i32 @plpgsql_peek(ptr noundef %3) #10
  %i.az = icmp eq i32 %i.ay, 59
  br i1 %i.az, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %1, align 8               ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  switch i32 %i.bb, label %bb.q [
    i32 0, label %bb.p
    i32 4, label %bb.p
    i32 1, label %bb.p
    i32 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  store i32 %i.bd, ptr %i.j, align 8
  %i.be = tail call i32 @plpgsql_yylex(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #10 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  tail call void @plpgsql_push_back_token(i32 noundef %i.ao, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #10
  %i.bf = tail call fastcc ptr @read_sql_construct(i32 noundef 59, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3)
  store ptr %i.bf, ptr %i.i, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.e, %bb.l, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare zeroext i1 @plpgsql_token_is_unreserved_keyword(i32 noundef) local_unnamed_addr #2

declare i32 @plpgsql_recognize_err_condition(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_raise_options(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ab, %bb.a
  %.038 = phi ptr [ null, %bb.a ], [ %i.ae, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = call i32 @plpgsql_yylex(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #10 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @plpgsql_yyerror(ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull @.str.49) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = call ptr @palloc(i64 noundef 16) #10     ; 3 uses
  switch i32 %i.d, label %tok_is_keyword.exit62 [
    i32 314, label %bb.z
    i32 277, label %bb.e
    i32 338, label %bb.i
    i32 307, label %bb.l
    i32 326, label %bb.n
    i32 294, label %bb.p
    i32 298, label %bb.r
    i32 303, label %bb.u
    i32 374, label %bb.w
    i32 367, label %bb.y
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %i.b, align 8, !range !3, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %tok_is_keyword.exit62, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %tok_is_keyword.exit62, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(8) @.str.133) #11
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(8) @.str.134) #11
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.h
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  %.pr = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i43 = icmp eq ptr %.pr, null
  br i1 %.not.i43, label %tok_is_keyword.exit62, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr, ptr noundef nonnull dereferenceable(7) @.str.135) #11
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.d, %bb.k
  br label %bb.z

bb.m:                                             ; preds = %bb.k
  %i.p = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr, ptr noundef nonnull dereferenceable(5) @.str.136) #11
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.n, label %.thread111

bb.n:                                             ; preds = %bb.d, %bb.m
  br label %bb.z

.thread111:                                       ; preds = %bb.m
  %.pr130 = load ptr, ptr %i.c, align 8           ; 3 uses
  %.not.i49 = icmp eq ptr %.pr130, null
  br i1 %.not.i49, label %tok_is_keyword.exit62, label %bb.o

bb.o:                                             ; preds = %.thread111
  %i.r = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr130, ptr noundef nonnull dereferenceable(7) @.str.137) #11
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.d, %bb.o
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr130, ptr noundef nonnull dereferenceable(11) @.str.138) #11
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.d, %bb.q
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %.pr120 = load ptr, ptr %i.c, align 8           ; 3 uses
  %.not.i55 = icmp eq ptr %.pr120, null
  br i1 %.not.i55, label %tok_is_keyword.exit62, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr120, ptr noundef nonnull dereferenceable(9) @.str.139) #11
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.d, %bb.t
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.x = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr120, ptr noundef nonnull dereferenceable(6) @.str.140) #11
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.w, label %.thread126

bb.w:                                             ; preds = %bb.d, %bb.v
  br label %bb.z

.thread126:                                       ; preds = %bb.v
  %.pr132.pr = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not.i61 = icmp eq ptr %.pr132.pr, null
  br i1 %.not.i61, label %tok_is_keyword.exit62, label %bb.x

bb.x:                                             ; preds = %.thread126
  %i.z = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pr132.pr, ptr noundef nonnull dereferenceable(7) @.str.141) #11
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.y, label %tok_is_keyword.exit62

bb.y:                                             ; preds = %bb.d, %bb.x
  br label %bb.z

tok_is_keyword.exit62:                            ; preds = %bb.f, %bb.j, %bb.s, %.thread111, %bb.e, %bb.d, %bb.x, %.thread126
  call void @plpgsql_yyerror(ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull @.str.142) #13
  unreachable

bb.z:                                             ; preds = %bb.g, %bb.d, %bb.i, %bb.n, %bb.r, %bb.w, %bb.y, %bb.u, %bb.p, %bb.l
  %.sink = phi i32 [ 1, %bb.i ], [ 3, %bb.n ], [ 5, %bb.r ], [ 7, %bb.w ], [ 8, %bb.y ], [ 6, %bb.u ], [ 4, %bb.p ], [ 2, %bb.l ], [ 0, %bb.d ], [ 0, %bb.g ]
  store i32 %.sink, ptr %i.f, align 8
  %i.ab = call i32 @plpgsql_yylex(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #10 ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4
  switch i32 %i.ab, label %bb.aa [
    i32 270, label %bb.ab
    i32 61, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  call void @plpgsql_yyerror(ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull @.str.143) #13
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.z
  %i.ac = call fastcc ptr @read_sql_construct(i32 noundef 44, i32 noundef 59, i32 noundef 0, ptr noundef nonnull @.str.63, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = call ptr @lappend(ptr noundef %.038, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.af = load i32, ptr %i.a, align 4
  %i.ag = icmp eq i32 %i.af, 59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.ag, label %bb.ac, label %bb.b

bb.ac:                                            ; preds = %bb.ab
  ret ptr %i.ae
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_raise_parameters(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.011 = phi ptr [ %i.i, %bb.c ], [ %i.b, %bb.a ] ; 4 uses
  %.0 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]      ; 5 uses
  %i.d = load i8, ptr %.011, align 1
  switch i8 %i.d, label %bb.c [
    i8 0, label %bb.d
    i8 37, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp ne i8 %i.f, 37                      ; 2 uses
  %spec.select = select i1 %i.g, ptr %.011, ptr %i.e
  %i.h = zext i1 %i.g to i32
  %spec.select15 = add i32 %.0, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %.112 = phi ptr [ %.011, %.preheader ], [ %spec.select, %bb.b ]
  %.1 = phi i32 [ %.0, %.preheader ], [ %spec.select15, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %.112, i64 1
  br label %.preheader, !llvm.loop !19

bb.d:                                             ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %list_length.exit, label %list_length.exit.thread

list_length.exit:                                 ; preds = %bb.d
  %i.l = icmp slt i32 %.0, 0
  br i1 %i.l, label %bb.e, label %list_length.exit17

list_length.exit.thread:                          ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp slt i32 %.0, %i.n
  br i1 %i.o, label %bb.e, label %list_length.exit17

bb.e:                                             ; preds = %list_length.exit.thread, %list_length.exit
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.q = tail call i32 @errcode(i32 noundef 16801924) #10 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.144) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 4169, ptr noundef nonnull @__func__.check_raise_parameters) #10
  unreachable

list_length.exit17:                               ; preds = %list_length.exit.thread, %list_length.exit
  %i.s = phi i32 [ 0, %list_length.exit ], [ %i.n, %list_length.exit.thread ]
  %i.t = icmp sgt i32 %.0, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %list_length.exit17
  %i.u = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.v = tail call i32 @errcode(i32 noundef 16801924) #10 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.145) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 4173, ptr noundef nonnull @__func__.check_raise_parameters) #10
  unreachable

end_hunk_1
