inline.NumInlined: 54
inline.NumDeleted: 14
begin_hunk_0_@pm_regexp_parse_item:bb.a
  br i1 %i.dh, label %.preheader, label %.loopexit

.split.us:                                        ; preds = %.lr.ph122.split.us
  %i.di = getelementptr i8, ptr %0, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !17
  %i.dk = getelementptr i8, ptr %0, i64 64
  %.val14.i = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.dl = getelementptr i8, ptr %0, i64 72
  %.val15.i = load ptr, ptr %i.dl, align 8, !tbaa !46
  tail call void %.val14.i(ptr noundef %i.dj, ptr noundef nonnull %.val139.i118, ptr noundef nonnull @.str, ptr noundef %.val15.i) #5, !inline_history !63
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph130, %bb.bc
  %.val.i53 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %.val13.i = load ptr, ptr %i.o, align 8, !tbaa !19 ; 4 uses
  %.not76 = icmp ult ptr %.val.i53, %.val13.i
  br i1 %.not76, label %bb.bb, label %pm_regexp_char_accept.exit

bb.bb:                                            ; preds = %.preheader
  %i.dm = load i8, ptr %.val.i53, align 1, !tbaa !48
  switch i8 %i.dm, label %bb.bc [
    i8 124, label %bb.bd
    i8 41, label %pm_regexp_char_accept.exit
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.dn = tail call fastcc zeroext i1 @pm_regexp_parse_item(ptr noundef nonnull %0, i16 noundef zeroext %i.dd), !inline_history !62
  br i1 %i.dn, label %.preheader, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %.lr.ph130, %bb.bc, %.split.us
  store i8 %i.dc, ptr %i.db, align 8, !tbaa !20
  br label %pm_regexp_parse_group.exit.thread

bb.bd:                                            ; preds = %bb.bb
  %i.do = getelementptr i8, ptr %.val.i53, i64 1  ; 2 uses
  store ptr %i.do, ptr %i.a, align 8, !tbaa !18
  br label %pm_regexp_char_accept.exit

pm_regexp_char_accept.exit:                       ; preds = %.preheader, %bb.bb, %bb.bd
  %.val.i = phi ptr [ %i.do, %bb.bd ], [ %.val.i53, %bb.bb ], [ %.val.i53, %.preheader ] ; 4 uses
  %.not75 = icmp ult ptr %.val.i, %.val13.i
  br i1 %.not75, label %bb.ba, label %.critedge8.i, !llvm.loop !61

.critedge8.i:                                     ; preds = %pm_regexp_char_accept.exit, %bb.ba, %.lr.ph122.split.us, %.lr.ph122.split, %bb.az
  %i.dp = phi ptr [ %.val.i117, %bb.az ], [ %.val.i117, %.lr.ph122.split ], [ %.val.i117, %.lr.ph122.split.us ], [ %.val.i, %bb.ba ], [ %.val.i, %pm_regexp_char_accept.exit ] ; 4 uses
  %.val139.i.lcssa = phi ptr [ %.val139.i118, %bb.az ], [ %.val139.i118, %.lr.ph122.split ], [ %.val139.i118, %.lr.ph122.split.us ], [ %.val13.i, %bb.ba ], [ %.val13.i, %pm_regexp_char_accept.exit ]
  store i8 %i.dc, ptr %i.db, align 8, !tbaa !20
  %.not.i47 = icmp ult ptr %i.dp, %.val139.i.lcssa
  br i1 %.not.i47, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge8.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !48
  %i.dr = icmp eq i8 %i.dq, 41
  br i1 %i.dr, label %pm_regexp_char_expect.exit, label %bb.bf

pm_regexp_char_expect.exit:                       ; preds = %bb.be
  %i.ds = getelementptr i8, ptr %i.dp, i64 1
  br label %.loopexit82.sink.split

bb.bf:                                            ; preds = %bb.be, %.critedge8.i
  %i.dt = getelementptr i8, ptr %0, i64 64
  %.val154.i = load ptr, ptr %i.dt, align 8, !tbaa !45
  %i.du = getelementptr i8, ptr %0, i64 72
  %.val155.i = load ptr, ptr %i.du, align 8, !tbaa !46
  tail call void %.val154.i(ptr noundef %i.h, ptr noundef %i.dp, ptr noundef nonnull @.str.4, ptr noundef %.val155.i) #5, !inline_history !52
  br label %pm_regexp_parse_group.exit.thread

pm_regexp_parse_group.exit.thread:                ; preds = %bb.ao, %bb.am, %bb.al, %bb.as, %bb.at, %pm_regexp_options_remove.exit, %bb.w, %bb.s, %bb.q, %.loopexit85, %bb.t, %bb.i, %bb.l, %bb.ak, %bb.z, %bb.bf, %.loopexit, %bb.ac, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.bt

.loopexit82.sink.split:                           ; preds = %pm_regexp_char_expect.exit, %bb.p, %bb.ar, %bb.aw
  %.sink191 = phi ptr [ %i.cx, %bb.aw ], [ %i.cp, %bb.ar ], [ %i.ak, %bb.p ], [ %i.ds, %pm_regexp_char_expect.exit ]
  store ptr %.sink191, ptr %i.a, align 8, !tbaa !18
  br label %.loopexit82

.loopexit82:                                      ; preds = %bb.v, %bb.u, %.loopexit82.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.bg:                                            ; preds = %bb.a
  %i.dv = getelementptr i8, ptr %i.b, i64 1
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !18
  %i.dw = tail call fastcc zeroext i1 @pm_regexp_parse_lbracket(ptr noundef %0, i16 noundef zeroext %1)
  br i1 %i.dw, label %bb.bh, label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.bi:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.dx = getelementptr i8, ptr %i.b, i64 1       ; 2 uses
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !18
  %i.dy = getelementptr i8, ptr %0, i64 64
  %.val43 = load ptr, ptr %i.dy, align 8, !tbaa !45
  %i.dz = getelementptr i8, ptr %0, i64 72
  %.val44 = load ptr, ptr %i.dz, align 8, !tbaa !46
  tail call void %.val43(ptr noundef nonnull %i.b, ptr noundef %i.dx, ptr noundef nonnull @.str.1, ptr noundef %.val44) #5, !inline_history !64
  br label %bb.bt

bb.bj:                                            ; preds = %bb.a
  %i.ea = getelementptr i8, ptr %i.b, i64 1       ; 2 uses
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !18
  %i.eb = getelementptr i8, ptr %0, i64 64
  %.val41 = load ptr, ptr %i.eb, align 8, !tbaa !45
  %i.ec = getelementptr i8, ptr %0, i64 72
  %.val42 = load ptr, ptr %i.ec, align 8, !tbaa !46
  tail call void %.val41(ptr noundef nonnull %i.b, ptr noundef %i.ea, ptr noundef nonnull @.str.2, ptr noundef %.val42) #5, !inline_history !64
  br label %bb.bt

bb.bk:                                            ; preds = %bb.a
  %i.ed = getelementptr i8, ptr %0, i64 32
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !20, !range !38, !noundef !39
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.eg = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %.val11.i = load ptr, ptr %i.eg, align 8, !tbaa !19 ; 3 uses
  %.not.i = icmp ult ptr %i.b, %.val11.i
  br i1 %.not.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.eh = ptrtoint ptr %.val11.i to i64
  %i.ei = ptrtoint ptr %i.b to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = getelementptr i8, ptr %0, i64 33
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !40, !range !38, !noundef !39
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = getelementptr i8, ptr %0, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !42
  %i.ep = tail call ptr @pm_memchr(ptr noundef nonnull %i.b, i32 noundef 10, i64 noundef %i.ej, i1 noundef zeroext %i.em, ptr noundef %i.eo) #5 ; 2 uses
  %.not12.i = icmp eq ptr %i.ep, null
  br i1 %.not12.i, label %._crit_edge, label %pm_regexp_char_find.exit

._crit_edge:                                      ; preds = %bb.bm
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !19
  br label %bb.bn

pm_regexp_char_find.exit:                         ; preds = %bb.bm
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !18
  br label %bb.bt

bb.bn:                                            ; preds = %._crit_edge, %bb.bl
  %i.er = phi ptr [ %.pre, %._crit_edge ], [ %.val11.i, %bb.bl ]
  store ptr %i.er, ptr %i.a, align 8, !tbaa !18
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bk, %bb.a
  %i.es = getelementptr i8, ptr %0, i64 33
  %i.et = load i8, ptr %i.es, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ev = getelementptr i8, ptr %0, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !19
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.b to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %i.b, i64 noundef %i.ez) #5
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.fb = getelementptr i8, ptr %0, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !42
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fe = getelementptr i8, ptr %0, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !19
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.b to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = tail call i64 %i.fd(ptr noundef nonnull %i.b, i64 noundef %i.fi) #5
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0 = phi i64 [ %i.fj, %bb.bq ], [ %i.fa, %bb.bp ] ; 2 uses
  %.not78 = icmp eq i64 %.0, 0
  br i1 %.not78, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fk = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fl = getelementptr i8, ptr %i.fk, i64 %.0
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !18
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.bt:                                            ; preds = %pm_regexp_char_find.exit, %pm_regexp_parse_group.exit.thread, %bb.bs, %bb.br, %bb.bn, %bb.bg, %bb.bh, %.loopexit82, %bb.bj, %bb.bi, %bb.e, %bb.b
  %.1 = phi i1 [ true, %pm_regexp_char_find.exit ], [ true, %bb.b ], [ true, %bb.e ], [ false, %bb.bg ], [ false, %pm_regexp_parse_group.exit.thread ], [ true, %bb.bi ], [ true, %bb.bj ], [ true, %.loopexit82 ], [ true, %bb.bh ], [ true, %bb.bn ], [ false, %bb.br ], [ true, %bb.bs ]
  ret i1 %.1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @pm_regexp_parse_quantifier(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val6 = load ptr, ptr %i.b, align 8, !tbaa !19 ; 7 uses
  %.val625 = ptrtoaddr ptr %.val6 to i64          ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %.not17 = icmp ult ptr %.promoted, %.val6
  br i1 %.not17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %pm_regexp_parse_range_quantifier.exit
  %i.c = phi ptr [ %i.v, %pm_regexp_parse_range_quantifier.exit ], [ %.promoted, %bb.a ] ; 7 uses
  %1 = ptrtoaddr ptr %i.c to i64
  %i.d = load i8, ptr %i.c, align 1, !tbaa !48
  switch i8 %i.d, label %._crit_edge [
    i8 42, label %bb.b
    i8 43, label %bb.b
    i8 63, label %bb.b
    i8 123, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.e = getelementptr i8, ptr %i.c, i64 1
  br label %pm_regexp_parse_range_quantifier.exit.sink.split

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.c, i64 1        ; 14 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !18
  %.not35.i = icmp ult ptr %i.f, %.val6
  br i1 %.not35.i, label %.lr.ph.i, label %pm_regexp_parse_range_quantifier.exit.sink.split

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !48
  switch i8 %i.g, label %pm_regexp_parse_range_quantifier.exit [
    i8 48, label %bb.d
    i8 49, label %bb.d
    i8 50, label %bb.d
    i8 51, label %bb.d
    i8 52, label %bb.d
    i8 53, label %bb.d
    i8 54, label %bb.d
    i8 55, label %bb.d
    i8 56, label %bb.d
    i8 57, label %bb.d
    i8 44, label %bb.i
  ]

bb.d:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.h = getelementptr i8, ptr %i.c, i64 2        ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !18
  %.not.jt1.i13 = icmp ult ptr %i.h, %.val6
  br i1 %.not.jt1.i13, label %.lr.ph.jt1.i.preheader, label %pm_regexp_parse_range_quantifier.exit.sink.split

.lr.ph.jt1.i.preheader:                           ; preds = %bb.d
  %scevgep = getelementptr i8, ptr %i.c, i64 %.val625
  %i.i = sub i64 0, %1
  %scevgep26 = getelementptr i8, ptr %scevgep, i64 %i.i
  br label %.lr.ph.jt1.i

.lr.ph.jt1.i:                                     ; preds = %.lr.ph.jt1.i.preheader, %bb.e
  %i.j = phi ptr [ %i.l, %bb.e ], [ %i.h, %.lr.ph.jt1.i.preheader ] ; 4 uses
  %.sink53.i14 = phi ptr [ %i.j, %bb.e ], [ %i.f, %.lr.ph.jt1.i.preheader ]
  %i.k = load i8, ptr %i.j, align 1, !tbaa !48
  switch i8 %i.k, label %pm_regexp_parse_range_quantifier.exit.sink.split [
    i8 48, label %bb.e
    i8 49, label %bb.e
    i8 50, label %bb.e
    i8 51, label %bb.e
    i8 52, label %bb.e
    i8 53, label %bb.e
    i8 54, label %bb.e
    i8 55, label %bb.e
    i8 56, label %bb.e
    i8 57, label %bb.e
    i8 44, label %.preheader.i
    i8 125, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph.jt1.i, %.lr.ph.jt1.i, %.lr.ph.jt1.i, %.lr.ph.jt1.i, %.lr.ph.jt1.i, %.lr.ph.jt1.i, %.lr.ph.jt1.i, %.lr.ph.jt1.i, %.lr.ph.jt1.i, %.lr.ph.jt1.i
  %i.l = getelementptr i8, ptr %i.j, i64 1        ; 3 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !18
  %exitcond.not = icmp eq ptr %i.l, %scevgep26
  br i1 %exitcond.not, label %pm_regexp_parse_range_quantifier.exit.sink.split, label %.lr.ph.jt1.i

bb.f:                                             ; preds = %.lr.ph.jt1.i
  %i.m = getelementptr i8, ptr %.sink53.i14, i64 2
  br label %pm_regexp_parse_range_quantifier.exit.sink.split

.lr.ph.jt3.i:                                     ; preds = %bb.i
  %i.n = load i8, ptr %i.u, align 1, !tbaa !48
  %.off.i = add i8 %i.n, -48
  %switch.i = icmp ult i8 %.off.i, 10
  br i1 %switch.i, label %.preheader.i, label %pm_regexp_parse_range_quantifier.exit.sink.split

.preheader.i:                                     ; preds = %.lr.ph.jt1.i, %.lr.ph.jt3.i
  %.lcssa51.sink.i = phi ptr [ %i.u, %.lr.ph.jt3.i ], [ %i.j, %.lr.ph.jt1.i ] ; 4 uses
  %i.o = getelementptr i8, ptr %.lcssa51.sink.i, i64 1 ; 3 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !18
  %.not.jt2.i15 = icmp ult ptr %i.o, %.val6
  br i1 %.not.jt2.i15, label %.lr.ph.jt2.i.preheader, label %pm_regexp_parse_range_quantifier.exit.sink.split

.lr.ph.jt2.i.preheader:                           ; preds = %.preheader.i
  %.lcssa51.sink.i28 = ptrtoaddr ptr %.lcssa51.sink.i to i64
  %scevgep27 = getelementptr i8, ptr %.lcssa51.sink.i, i64 %.val625
  %i.p = sub i64 0, %.lcssa51.sink.i28
  %scevgep29 = getelementptr i8, ptr %scevgep27, i64 %i.p
  br label %.lr.ph.jt2.i

.lr.ph.jt2.i:                                     ; preds = %.lr.ph.jt2.i.preheader, %bb.g
  %i.q = phi ptr [ %i.s, %bb.g ], [ %i.o, %.lr.ph.jt2.i.preheader ] ; 3 uses
  %.lcssa51.sink.sink.i16 = phi ptr [ %i.q, %bb.g ], [ %.lcssa51.sink.i, %.lr.ph.jt2.i.preheader ]
  %i.r = load i8, ptr %i.q, align 1, !tbaa !48
  switch i8 %i.r, label %pm_regexp_parse_range_quantifier.exit.sink.split [
    i8 48, label %bb.g
    i8 49, label %bb.g
    i8 50, label %bb.g
    i8 51, label %bb.g
    i8 52, label %bb.g
    i8 53, label %bb.g
    i8 54, label %bb.g
    i8 55, label %bb.g
    i8 56, label %bb.g
    i8 57, label %bb.g
    i8 125, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.jt2.i, %.lr.ph.jt2.i, %.lr.ph.jt2.i, %.lr.ph.jt2.i, %.lr.ph.jt2.i, %.lr.ph.jt2.i, %.lr.ph.jt2.i, %.lr.ph.jt2.i, %.lr.ph.jt2.i, %.lr.ph.jt2.i
  %i.s = getelementptr i8, ptr %i.q, i64 1        ; 3 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !18
  %exitcond30.not = icmp eq ptr %i.s, %scevgep29
  br i1 %exitcond30.not, label %pm_regexp_parse_range_quantifier.exit.sink.split, label %.lr.ph.jt2.i

bb.h:                                             ; preds = %.lr.ph.jt2.i
  %i.t = getelementptr i8, ptr %.lcssa51.sink.sink.i16, i64 2
  br label %pm_regexp_parse_range_quantifier.exit.sink.split

bb.i:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr i8, ptr %i.c, i64 2        ; 4 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !18
  %.not.jt3.i = icmp ult ptr %i.u, %.val6
  br i1 %.not.jt3.i, label %.lr.ph.jt3.i, label %pm_regexp_parse_range_quantifier.exit.sink.split

pm_regexp_parse_range_quantifier.exit.sink.split: ; preds = %bb.e, %.lr.ph.jt1.i, %bb.g, %.lr.ph.jt2.i, %bb.c, %bb.f, %.lr.ph.jt3.i, %bb.h, %bb.i, %.preheader.i, %bb.d, %bb.b
  %.sink.i.sink = phi ptr [ %i.e, %bb.b ], [ %i.f, %.lr.ph.jt3.i ], [ %i.t, %bb.h ], [ %i.f, %bb.i ], [ %i.f, %bb.c ], [ %i.m, %bb.f ], [ %i.f, %.preheader.i ], [ %i.f, %bb.g ], [ %i.f, %bb.d ], [ %i.f, %.lr.ph.jt2.i ], [ %i.f, %.lr.ph.jt1.i ], [ %i.f, %bb.e ] ; 2 uses
  store ptr %.sink.i.sink, ptr %i.a, align 8, !tbaa !18
  br label %pm_regexp_parse_range_quantifier.exit

pm_regexp_parse_range_quantifier.exit:            ; preds = %pm_regexp_parse_range_quantifier.exit.sink.split, %.lr.ph.i
  %i.v = phi ptr [ %i.f, %.lr.ph.i ], [ %.sink.i.sink, %pm_regexp_parse_range_quantifier.exit.sink.split ] ; 2 uses
  %.not = icmp ult ptr %i.v, %.val6
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %pm_regexp_parse_range_quantifier.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @pm_regexp_parse_lbracket(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i16 %1, 4095
  %i.b = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 12 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val24 = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr i8, ptr %0, i64 72
  %.val25 = load ptr, ptr %i.g, align 8, !tbaa !46
  tail call void %.val24(ptr noundef %i.e, ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef %.val25) #5, !inline_history !64
  br label %pm_regexp_char_expect.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16         ; 14 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 14 uses
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.i, align 1, !tbaa !48
  %i.l = icmp eq i8 %i.k, 93
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.i, i64 1        ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !18
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr i8, ptr %0, i64 72
  %.val23 = load ptr, ptr %i.o, align 8, !tbaa !46
  tail call void %.val(ptr noundef nonnull %i.i, ptr noundef %i.m, ptr noundef nonnull @.str.7, ptr noundef %.val23) #5, !inline_history !64
  br label %pm_regexp_char_expect.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr i8, ptr %i.i, i64 2        ; 4 uses
  %i.q = icmp ult ptr %i.p, %i.c
  br i1 %i.q, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.i, align 1, !tbaa !48
  %i.s = icmp eq i8 %i.r, 91
  br i1 %i.s, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.i, i64 1        ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !48
  %i.v = icmp eq i8 %i.u, 58
  br i1 %i.v, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  store ptr %i.t, ptr %i.h, align 8, !tbaa !18
  %.not.i.i = icmp ult ptr %i.t, %i.c
  br i1 %.not.i.i, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %i.t, align 1, !tbaa !48
  %i.x = icmp eq i8 %i.w, 58
  br i1 %i.x, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  store ptr %i.p, ptr %i.h, align 8, !tbaa !18
  %i.y = load i8, ptr %i.p, align 1, !tbaa !48
  %i.z = icmp eq i8 %i.y, 94
  br i1 %i.z, label %bb.l, label %pm_regexp_char_accept.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %i.i, i64 3       ; 2 uses
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !18
  br label %pm_regexp_char_accept.exit.i

pm_regexp_char_accept.exit.i:                     ; preds = %bb.l, %bb.k
  %.val.i10.i = phi ptr [ %i.aa, %bb.l ], [ %i.p, %bb.k ] ; 3 uses
  %.not.i11.i = icmp ult ptr %.val.i10.i, %i.c
  br i1 %.not.i11.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %pm_regexp_char_accept.exit.i
  %i.ab = ptrtoint ptr %i.c to i64
  %i.ac = ptrtoint ptr %.val.i10.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr i8, ptr %0, i64 33
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = tail call ptr @pm_memchr(ptr noundef %.val.i10.i, i32 noundef 58, i64 noundef %i.ad, i1 noundef zeroext %i.ag, ptr noundef %i.ai) #5 ; 4 uses
  %.not12.i.i = icmp eq ptr %i.aj, null
  %.val4.i30.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !19 ; 7 uses
  br i1 %.not12.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %i.aj, i64 1      ; 3 uses
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !18
  %.not.i14.i = icmp ult ptr %i.ak, %.val4.i30.pre.pre
  br i1 %.not.i14.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !48
  %i.am = icmp eq i8 %i.al, 93
  br i1 %i.am, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr i8, ptr %i.aj, i64 2      ; 3 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !18
  %.not.i19.i = icmp ult ptr %i.an, %.val4.i30.pre.pre
  br i1 %.not.i19.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !48
  %i.ap = icmp eq i8 %i.ao, 93
  br i1 %i.ap, label %pm_regexp_parse_posix_class.exit, label %bb.r

pm_regexp_parse_posix_class.exit:                 ; preds = %bb.q
  %i.aq = getelementptr i8, ptr %i.aj, i64 3
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !18
  br label %pm_regexp_char_expect.exit

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.i, %bb.q, %bb.j, %pm_regexp_char_accept.exit.i, %bb.o, %bb.n
  %.val4.i30.pre = phi ptr [ %.val4.i30.pre.pre, %bb.p ], [ %.val4.i30.pre.pre, %bb.m ], [ %i.c, %bb.i ], [ %.val4.i30.pre.pre, %bb.q ], [ %i.c, %bb.j ], [ %i.c, %pm_regexp_char_accept.exit.i ], [ %.val4.i30.pre.pre, %bb.o ], [ %.val4.i30.pre.pre, %bb.n ]
  store ptr %i.i, ptr %i.h, align 8, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.h, %bb.g, %bb.f
  %.val10.i36 = phi ptr [ %.val4.i30.pre, %bb.r ], [ %i.c, %bb.h ], [ %i.c, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %.not.i31 = icmp ult ptr %i.i, %.val10.i36
  br i1 %.not.i31, label %bb.t, label %pm_regexp_char_accept.exit

bb.t:                                             ; preds = %bb.s
  %i.ar = load i8, ptr %i.i, align 1, !tbaa !48
  %i.as = icmp eq i8 %i.ar, 94
  br i1 %i.as, label %bb.u, label %pm_regexp_char_accept.exit

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr i8, ptr %i.i, i64 1       ; 2 uses
  store ptr %i.at, ptr %i.h, align 8, !tbaa !18
  br label %pm_regexp_char_accept.exit

pm_regexp_char_accept.exit:                       ; preds = %bb.s, %bb.t, %bb.u
  %.val9.i35 = phi ptr [ %i.i, %bb.s ], [ %i.i, %bb.t ], [ %i.at, %bb.u ] ; 2 uses
  %.not37 = icmp ult ptr %.val9.i35, %.val10.i36
  br i1 %.not37, label %.lr.ph, label %pm_regexp_char_expect.exit

end_hunk_0
