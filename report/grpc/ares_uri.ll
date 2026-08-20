inline.NumInlined: 64
inline.NumDeleted: 26
begin_hunk_0_@ares_uri_parse_buf:bb.a
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !18  ; 2 uses
  %.not.i49.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i49.i.i, label %.loopexit.i.i, label %.lr.ph.i42.i.i

.loopexit.i.i:                                    ; preds = %bb.aq, %bb.ae
  %.0.lcssa.i51.i.i = phi i64 [ 0, %bb.ae ], [ %.1.i48.i.i, %bb.aq ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.0.lcssa.i51.i.i
  store i8 0, ptr %i.ds, align 1, !tbaa !18
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !24  ; 7 uses
  %.not.i63.i.i = icmp eq ptr %i.dt, null         ; 2 uses
  br i1 %.not38.i.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.loopexit.i.i
  br i1 %.not.i63.i.i, label %ares_uri_parse_userinfo.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.du = call i64 @ares_strlen(ptr noundef nonnull %i.dt) #11
  %i.dv = call i32 @ares_str_isprint(ptr noundef nonnull %i.dt, i64 noundef %i.du) #11
  %.not9.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i, label %ares_uri_parse_userinfo.exit.thread22.i, label %ares_uri_parse_userinfo.exit.i

bb.at:                                            ; preds = %.loopexit.i.i
  br i1 %.not.i63.i.i, label %ares_uri_parse_userinfo.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dw = call i64 @ares_strlen(ptr noundef nonnull %i.dt) #11
  %i.dx = call i32 @ares_str_isprint(ptr noundef nonnull %i.dt, i64 noundef %i.dw) #11
  %.not10.i66.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not10.i66.i.i, label %ares_uri_parse_userinfo.exit.thread22.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dy = call i64 @ares_strlen(ptr noundef nonnull %i.dt) #11
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %ares_uri_parse_userinfo.exit.thread22.i, label %ares_uri_parse_userinfo.exit.i

ares_uri_parse_userinfo.exit.thread22.i:          ; preds = %bb.y, %switch.early.test113.i.i.i, %switch.early.test.i.i.i, %bb.ap, %switch.early.test113.i58.i.i, %switch.early.test.i55.i.i, %bb.av, %bb.au, %bb.as, %bb.ad, %bb.ab, %bb.aa, %bb.m
  %.1.i.ph.i = phi i32 [ 17, %bb.as ], [ 17, %bb.aa ], [ 17, %bb.ap ], [ %i.co, %bb.ad ], [ 17, %bb.av ], [ 17, %bb.ab ], [ %i.ba, %bb.m ], [ 17, %bb.au ], [ 17, %switch.early.test.i55.i.i ], [ 17, %switch.early.test113.i58.i.i ], [ 17, %switch.early.test.i.i.i ], [ 17, %switch.early.test113.i.i.i ], [ 17, %bb.y ]
  %i.ea = load ptr, ptr %i.f, align 8, !tbaa !24
  call void @ares_free(ptr noundef %i.ea) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %ares_uri_parse_authority.exit.thread57

ares_uri_parse_userinfo.exit.i:                   ; preds = %bb.av, %bb.at, %bb.as, %bb.ar
  %.sink94.i.i = phi i64 [ 24, %bb.ar ], [ 24, %bb.as ], [ 16, %bb.av ], [ 16, %bb.at ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sink94.i.i ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !24
  call void @ares_free(ptr noundef %i.ec) #11
  store ptr %i.dt, ptr %i.eb, align 8, !tbaa !24
  store ptr null, ptr %i.f, align 8, !tbaa !24
  %i.ed = call i32 @ares_buf_consume(ptr noundef %i.av, i64 noundef 1) #11 ; 0 uses
  %i.ee = load ptr, ptr %i.f, align 8, !tbaa !24
  call void @ares_free(ptr noundef %i.ee) #11
  br label %ares_uri_parse_userinfo.exit.thread.i

ares_uri_parse_userinfo.exit.thread.i:            ; preds = %ares_uri_parse_userinfo.exit.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  %i.ef = load ptr, ptr %i.g, align 8, !tbaa !29  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.eg = call i32 @ares_buf_peek_byte(ptr noundef %i.ef, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not.i16.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i16.i, label %bb.aw, label %ares_uri_parse_authority.exit.thread61

bb.aw:                                            ; preds = %ares_uri_parse_userinfo.exit.thread.i
  %i.eh = load i8, ptr %i.c, align 1, !tbaa !18
  %i.ei = icmp eq i8 %i.eh, 91
  br i1 %i.ei, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ej = call i32 @ares_buf_consume(ptr noundef %i.ef, i64 noundef 1) #11 ; 0 uses
  call void @ares_buf_tag(ptr noundef %i.ef) #11
  %i.ek = call i64 @ares_buf_consume_until_charset(ptr noundef %i.ef, ptr noundef nonnull @.str.8, i64 noundef 1, i32 noundef 1) #11
  %i.el = icmp eq i64 %i.ek, -1
  br i1 %i.el, label %ares_uri_parse_authority.exit.thread61, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.em = call i32 @ares_buf_tag_fetch_string(ptr noundef %i.ef, ptr noundef nonnull %i.d, i64 noundef 256) #11 ; 2 uses
  %.not46.i.i = icmp eq i32 %i.em, 0
  br i1 %.not46.i.i, label %bb.az, label %ares_uri_parse_authority.exit.thread61

bb.az:                                            ; preds = %bb.ay
  %i.en = call i32 @ares_buf_consume(ptr noundef %i.ef, i64 noundef 1) #11 ; 0 uses
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  call void @ares_buf_tag(ptr noundef %i.ef) #11
  %i.eo = call i64 @ares_buf_consume_until_charset(ptr noundef %i.ef, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 0) #11 ; 0 uses
  %i.ep = call i32 @ares_buf_tag_fetch_string(ptr noundef %i.ef, ptr noundef nonnull %i.d, i64 noundef 256) #11 ; 2 uses
  %.not45.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not45.i.i, label %bb.bb, label %ares_uri_parse_authority.exit.thread61

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.eq = call i32 @ares_uri_set_host(ptr noundef nonnull %i.m, ptr noundef nonnull %i.d) ; 2 uses
  %.not47.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not47.i.i, label %bb.bc, label %ares_uri_parse_authority.exit.thread61

bb.bc:                                            ; preds = %bb.bb
  %i.er = call i64 @ares_buf_len(ptr noundef %i.ef) #11
  %.not48.i.i = icmp eq i64 %i.er, 0
  br i1 %.not48.i.i, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = call i32 @ares_buf_peek_byte(ptr noundef %i.ef, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not49.i.i = icmp eq i32 %i.es, 0
  br i1 %.not49.i.i, label %bb.be, label %ares_uri_parse_authority.exit.thread61

bb.be:                                            ; preds = %bb.bd
  %i.et = load i8, ptr %i.c, align 1, !tbaa !18
  %.not50.i.i = icmp eq i8 %i.et, 58
  br i1 %.not50.i.i, label %bb.bf, label %ares_uri_parse_authority.exit.thread61

bb.bf:                                            ; preds = %bb.be
  %i.eu = call i32 @ares_buf_consume(ptr noundef %i.ef, i64 noundef 1) #11 ; 0 uses
  %i.ev = call i64 @ares_buf_len(ptr noundef %i.ef) #11 ; 3 uses
  %i.ew = add i64 %i.ev, -6
  %or.cond.i.i = icmp ult i64 %i.ew, -5
  br i1 %or.cond.i.i, label %ares_uri_parse_authority.exit.thread61, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ex = call i32 @ares_buf_fetch_bytes(ptr noundef %i.ef, ptr noundef nonnull %i.e, i64 noundef %i.ev) #11 ; 2 uses
  %.not51.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not51.i.i, label %bb.bh, label %ares_uri_parse_authority.exit.thread61

bb.bh:                                            ; preds = %bb.bg
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ev
  store i8 0, ptr %i.ey, align 1, !tbaa !18
  %i.ez = call i32 @ares_str_isnum(ptr noundef nonnull %i.e) #11
  %.not52.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not52.i.i, label %ares_uri_parse_authority.exit.thread61, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fa = call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 10) #11, !inline_history !31
  %i.fb = trunc i64 %i.fa to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i16 %i.fb, ptr %i.fc, align 8, !tbaa !21
  br label %bb.bj

ares_uri_parse_authority.exit.thread57:           ; preds = %bb.k, %bb.i, %ares_uri_parse_userinfo.exit.thread22.i, %bb.j
  %.0.i41.ph = phi i32 [ %i.aj, %bb.i ], [ 17, %bb.j ], [ %.1.i.ph.i, %ares_uri_parse_userinfo.exit.thread22.i ], [ 17, %bb.k ]
  %i.fd = load ptr, ptr %i.g, align 8, !tbaa !29
  call void @ares_buf_destroy(ptr noundef %i.fd) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  br label %.thread78

ares_uri_parse_authority.exit.thread61:           ; preds = %bb.ay, %ares_uri_parse_userinfo.exit.thread.i, %bb.ax, %bb.ba, %bb.bd, %bb.be, %bb.bf, %bb.bh, %bb.bg, %bb.bb
  %.0.i.i.ph = phi i32 [ %i.eq, %bb.bb ], [ %i.ex, %bb.bg ], [ 17, %bb.bh ], [ 17, %bb.bf ], [ 17, %bb.be ], [ %i.es, %bb.bd ], [ %i.ep, %bb.ba ], [ 17, %bb.ax ], [ %i.eg, %ares_uri_parse_userinfo.exit.thread.i ], [ %i.em, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.fe = load ptr, ptr %i.g, align 8, !tbaa !29
  call void @ares_buf_destroy(ptr noundef %i.fe) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  br label %.thread78

bb.bj:                                            ; preds = %bb.bi, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.ff = load ptr, ptr %i.g, align 8, !tbaa !29
  call void @ares_buf_destroy(ptr noundef %i.ff) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !24
  %i.fg = call i64 @ares_buf_len(ptr noundef nonnull %1) #11
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %ares_uri_parse_path.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fi = call i32 @ares_buf_peek_byte(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not.i42 = icmp eq i32 %i.fi, 0
  br i1 %.not.i42, label %bb.bl, label %ares_uri_parse_path.exit.thread66

ares_uri_parse_path.exit.thread66:                ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread78

bb.bl:                                            ; preds = %bb.bk
  %i.fj = load i8, ptr %i.a, align 1, !tbaa !18
  %.not15.i = icmp eq i8 %i.fj, 47
  br i1 %.not15.i, label %bb.bm, label %ares_uri_parse_path.exit.thread

bb.bm:                                            ; preds = %bb.bl
  call void @ares_buf_tag(ptr noundef nonnull %1) #11
  %i.fk = call i64 @ares_buf_consume_until_charset(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 0) #11 ; 0 uses
  %i.fl = call i32 @ares_buf_tag_fetch_strdup(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not16.i = icmp eq i32 %i.fl, 0
  %.pre93 = load ptr, ptr %i.b, align 8, !tbaa !24 ; 11 uses
  br i1 %.not16.i, label %bb.bn, label %ares_uri_parse_path.exit.thread70

bb.bn:                                            ; preds = %bb.bm
  %i.fm = icmp eq ptr %.pre93, null
  br i1 %i.fm, label %ares_uri_parse_path.exit.thread70, label %.lr.ph.i.i44

ares_uri_chis_path_enc.exit.thread.i:             ; preds = %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %ares_uri_chis_unreserved.exit.i.i.i, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44
  %i.fn = add nuw i64 %.014.i.i45, 1              ; 2 uses
  %.not.i.i46 = icmp eq i64 %i.fn, -1
  br i1 %.not.i.i46, label %ares_uri_str_isvalid.exit.i47, label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %bb.bn, %ares_uri_chis_path_enc.exit.thread.i
  %.014.i.i45 = phi i64 [ %i.fn, %ares_uri_chis_path_enc.exit.thread.i ], [ 0, %bb.bn ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.pre93, i64 %.014.i.i45
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !18  ; 4 uses
  switch i8 %i.fp, label %ares_uri_chis_unreserved.exit.i.i.i [
    i8 0, label %ares_uri_str_isvalid.exit.i47
    i8 58, label %ares_uri_chis_path_enc.exit.thread.i
    i8 64, label %ares_uri_chis_path_enc.exit.thread.i
    i8 47, label %ares_uri_chis_path_enc.exit.thread.i
    i8 45, label %ares_uri_chis_path_enc.exit.thread.i
    i8 46, label %ares_uri_chis_path_enc.exit.thread.i
    i8 95, label %ares_uri_chis_path_enc.exit.thread.i
    i8 126, label %ares_uri_chis_path_enc.exit.thread.i
  ]

ares_uri_chis_unreserved.exit.i.i.i:              ; preds = %.lr.ph.i.i44
  %i.fq = and i8 %i.fp, -33
  %i.fr = add i8 %i.fq, -91
  %or.cond13.i.i.i.i49 = icmp ult i8 %i.fr, -26
  %i.fs = add i8 %i.fp, -58
  %i.ft = icmp ult i8 %i.fs, -10
  %narrow.i.not.i.i.i50 = and i1 %i.ft, %or.cond13.i.i.i.i49
  br i1 %narrow.i.not.i.i.i50, label %bb.bo, label %ares_uri_chis_path_enc.exit.thread.i

bb.bo:                                            ; preds = %ares_uri_chis_unreserved.exit.i.i.i
  switch i8 %i.fp, label %ares_uri_parse_path.exit.thread70 [
    i8 33, label %ares_uri_chis_path_enc.exit.thread.i
    i8 36, label %ares_uri_chis_path_enc.exit.thread.i
    i8 38, label %ares_uri_chis_path_enc.exit.thread.i
    i8 39, label %ares_uri_chis_path_enc.exit.thread.i
    i8 40, label %ares_uri_chis_path_enc.exit.thread.i
    i8 41, label %ares_uri_chis_path_enc.exit.thread.i
    i8 42, label %ares_uri_chis_path_enc.exit.thread.i
    i8 43, label %ares_uri_chis_path_enc.exit.thread.i
    i8 44, label %ares_uri_chis_path_enc.exit.thread.i
    i8 59, label %ares_uri_chis_path_enc.exit.thread.i
    i8 61, label %ares_uri_chis_path_enc.exit.thread.i
    i8 37, label %ares_uri_chis_path_enc.exit.thread.i
  ]

ares_uri_str_isvalid.exit.i47:                    ; preds = %.lr.ph.i.i44, %ares_uri_chis_path_enc.exit.thread.i
  %i.fu = load i8, ptr %.pre93, align 1, !tbaa !18 ; 2 uses
  %.not115.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not115.i.i, label %ares_uri_parse_path.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %ares_uri_str_isvalid.exit.i47, %bb.ca
  %i.fv = phi i8 [ %i.gv, %bb.ca ], [ %i.fu, %ares_uri_str_isvalid.exit.i47 ] ; 2 uses
  %i.fw = phi ptr [ %i.gu, %bb.ca ], [ %.pre93, %ares_uri_str_isvalid.exit.i47 ]
  %.0117.i.i = phi i64 [ %.1.i.i, %bb.ca ], [ 0, %ares_uri_str_isvalid.exit.i47 ] ; 3 uses
  %.079116.i.i = phi i64 [ %i.gt, %bb.ca ], [ 0, %ares_uri_str_isvalid.exit.i47 ] ; 2 uses
  %.not95.i.i = icmp eq i8 %i.fv, 37
  br i1 %.not95.i.i, label %bb.bp, label %.sink.split.i.i

bb.bp:                                            ; preds = %.lr.ph.i19.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !18
  %.fr118.i.i = freeze i8 %i.fy                   ; 6 uses
  %i.fz = add i8 %.fr118.i.i, -48                 ; 2 uses
  %or.cond98.i.i = icmp ult i8 %i.fz, 10
  br i1 %or.cond98.i.i, label %bb.bq, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.bp
  switch i8 %.fr118.i.i, label %ares_uri_parse_path.exit.thread70.loopexit [
    i8 102, label %bb.bq
    i8 101, label %bb.bq
    i8 100, label %bb.bq
    i8 99, label %bb.bq
    i8 98, label %bb.bq
    i8 97, label %bb.bq
    i8 70, label %bb.bq
    i8 69, label %bb.bq
    i8 68, label %bb.bq
    i8 67, label %bb.bq
    i8 66, label %bb.bq
    i8 65, label %bb.bq
  ]

bb.bq:                                            ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.bp
  %i.ga = add i64 %.079116.i.i, 2                 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre93, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !18
  %.fr119.i.i = freeze i8 %i.gc                   ; 6 uses
  %i.gd = add i8 %.fr119.i.i, -48                 ; 2 uses
  %or.cond101.i.i = icmp ult i8 %i.gd, 10
  br i1 %or.cond101.i.i, label %bb.br, label %switch.early.test113.i.i

switch.early.test113.i.i:                         ; preds = %bb.bq
  switch i8 %.fr119.i.i, label %ares_uri_parse_path.exit.thread70.loopexit [
    i8 102, label %bb.br
    i8 101, label %bb.br
    i8 100, label %bb.br
    i8 99, label %bb.br
    i8 98, label %bb.br
    i8 97, label %bb.br
    i8 70, label %bb.br
    i8 69, label %bb.br
    i8 68, label %bb.br
    i8 67, label %bb.br
    i8 66, label %bb.br
    i8 65, label %bb.br
  ]

bb.br:                                            ; preds = %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %bb.bq
  %i.ge = icmp samesign ult i8 %.fr118.i.i, 58
  br i1 %i.ge, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gf = add nsw i8 %.fr118.i.i, -65
  %or.cond105.i.i = icmp ult i8 %i.gf, 6
  br i1 %or.cond105.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gg = add nsw i8 %.fr118.i.i, -55
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.gh = add nsw i8 %.fr118.i.i, -87
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.br
  %i.gi = phi i8 [ %i.gh, %bb.bu ], [ %i.gg, %bb.bt ], [ %i.fz, %bb.br ]
  %i.gj = shl i8 %i.gi, 4
  %i.gk = icmp samesign ult i8 %.fr119.i.i, 58
  br i1 %i.gk, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gl = add nsw i8 %.fr119.i.i, -65
  %or.cond107.i.i = icmp ult i8 %i.gl, 6
  br i1 %or.cond107.i.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.gm = add nsw i8 %.fr119.i.i, -55
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.gn = add nsw i8 %.fr119.i.i, -87
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bv
  %i.go = phi i8 [ %i.gn, %bb.by ], [ %i.gm, %bb.bx ], [ %i.gd, %bb.bv ]
  %i.gp = or i8 %i.go, %i.gj                      ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.pre93, i64 %.0117.i.i
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !18
  %i.gr = add i8 %i.gp, -32
  %or.cond108.i.i = icmp ult i8 %i.gr, 95
  br i1 %or.cond108.i.i, label %bb.ca, label %ares_uri_parse_path.exit.thread70.loopexit

.sink.split.i.i:                                  ; preds = %.lr.ph.i19.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.pre93, i64 %.0117.i.i
  store i8 %i.fv, ptr %i.gs, align 1, !tbaa !18
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split.i.i, %bb.bz
  %.180.i.i = phi i64 [ %i.ga, %bb.bz ], [ %.079116.i.i, %.sink.split.i.i ]
  %.1.i.i = add i64 %.0117.i.i, 1                 ; 2 uses
  %i.gt = add i64 %.180.i.i, 1                    ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.pre93, i64 %i.gt ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !18  ; 2 uses
  %.not.i20.i = icmp eq i8 %i.gv, 0
  br i1 %.not.i20.i, label %ares_uri_parse_path.exit, label %.lr.ph.i19.i

ares_uri_parse_path.exit.thread:                  ; preds = %bb.bj, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.cb

ares_uri_parse_path.exit.thread70.loopexit:       ; preds = %switch.early.test.i.i, %bb.bz, %switch.early.test113.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !24
  br label %ares_uri_parse_path.exit.thread70

ares_uri_parse_path.exit.thread70:                ; preds = %bb.bo, %ares_uri_parse_path.exit.thread70.loopexit, %bb.bm, %bb.bn
  %i.gw = phi ptr [ %.pre, %ares_uri_parse_path.exit.thread70.loopexit ], [ null, %bb.bn ], [ %.pre93, %bb.bm ], [ %.pre93, %bb.bo ]
  %.0.i43.ph = phi i32 [ 17, %ares_uri_parse_path.exit.thread70.loopexit ], [ 17, %bb.bn ], [ %i.fl, %bb.bm ], [ 17, %bb.bo ]
  call void @ares_free(ptr noundef %i.gw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread78

ares_uri_parse_path.exit:                         ; preds = %bb.ca, %ares_uri_str_isvalid.exit.i47
  %.0.lcssa.i.i = phi i64 [ 0, %ares_uri_str_isvalid.exit.i47 ], [ %.1.i.i, %bb.ca ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.pre93, i64 %.0.lcssa.i.i
  store i8 0, ptr %i.gx, align 1, !tbaa !18
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.gz = call i32 @ares_uri_set_path(ptr noundef nonnull %i.m, ptr noundef %i.gy) ; 2 uses
  %i.ha = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @ares_free(ptr noundef %i.ha) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not36 = icmp eq i32 %i.gz, 0
  br i1 %.not36, label %bb.cb, label %.thread78

bb.cb:                                            ; preds = %ares_uri_parse_path.exit.thread, %ares_uri_parse_path.exit
  %i.hb = call fastcc i32 @ares_uri_parse_query(ptr noundef %i.m, ptr noundef %1) ; 2 uses
  %.not37 = icmp eq i32 %i.hb, 0
  br i1 %.not37, label %bb.cc, label %.thread78

bb.cc:                                            ; preds = %bb.cb
  %i.hc = call fastcc i32 @ares_uri_parse_fragment(ptr noundef %i.m, ptr noundef %1) ; 2 uses
  %.not38 = icmp eq i32 %i.hc, 0
  br i1 %.not38, label %bb.ce, label %.thread78

bb.cd:                                            ; preds = %bb.b, %bb.d
  %i.hd = tail call i32 @ares_buf_set_position(ptr noundef nonnull %1, i64 noundef %i.l) #11 ; 0 uses
  br label %ares_uri_destroy.exit

.thread78:                                        ; preds = %ares_uri_parse_scheme.exit.thread, %ares_uri_parse_authority.exit.thread61, %ares_uri_parse_path.exit, %bb.cb, %ares_uri_parse_authority.exit.thread, %ares_uri_parse_authority.exit.thread57, %ares_uri_parse_path.exit.thread66, %ares_uri_parse_path.exit.thread70, %bb.cc
  %.07781 = phi i32 [ %i.hc, %bb.cc ], [ %.0.i39.ph, %ares_uri_parse_scheme.exit.thread ], [ %.0.i.i.ph, %ares_uri_parse_authority.exit.thread61 ], [ %i.gz, %ares_uri_parse_path.exit ], [ %i.hb, %bb.cb ], [ 17, %ares_uri_parse_authority.exit.thread ], [ %.0.i41.ph, %ares_uri_parse_authority.exit.thread57 ], [ %i.fi, %ares_uri_parse_path.exit.thread66 ], [ %.0.i43.ph, %ares_uri_parse_path.exit.thread70 ]
  %i.he = call i32 @ares_buf_set_position(ptr noundef nonnull %1, i64 noundef %i.l) #11 ; 0 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !14
  call void @ares_free(ptr noundef %i.hg) #11
  %i.hh = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !15
  call void @ares_free(ptr noundef %i.hi) #11
  %i.hj = getelementptr inbounds nuw i8, ptr %i.m, i64 296
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !16
  call void @ares_free(ptr noundef %i.hk) #11
  %i.hl = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !17
  call void @ares_free(ptr noundef %i.hm) #11
  %i.hn = load ptr, ptr %i.p, align 8, !tbaa !8
  call void @ares_htable_dict_destroy(ptr noundef %i.hn) #11
  call void @ares_free(ptr noundef nonnull %i.m) #11
  br label %ares_uri_destroy.exit

bb.ce:                                            ; preds = %bb.cc
  store ptr %i.m, ptr %0, align 8, !tbaa !27
  br label %ares_uri_destroy.exit

ares_uri_destroy.exit:                            ; preds = %.thread78, %bb.cd, %bb.ce, %bb.a
  %.027 = phi i32 [ 2, %bb.a ], [ 0, %bb.ce ], [ 15, %bb.cd ], [ %.07781, %.thread78 ]
  ret i32 %.027
}

declare i64 @ares_buf_get_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ares_uri_parse_query(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr null, ptr %i.e, align 8, !tbaa !29
  %i.f = tail call i64 @ares_buf_len(ptr noundef nonnull %1) #11
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @ares_buf_peek_byte(ptr noundef nonnull %1, ptr noundef nonnull %i.d) #11 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.d, align 1, !tbaa !18
  %.not15 = icmp eq i8 %i.i, 63
  br i1 %.not15, label %bb.d, label %bb.ax

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @ares_buf_consume(ptr noundef nonnull %1, i64 noundef 1) #11 ; 0 uses
  call void @ares_buf_tag(ptr noundef nonnull %1) #11
  %i.k = call i64 @ares_buf_consume_until_charset(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 0) #11
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.ax, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @ares_buf_tag_fetch_constbuf(ptr noundef nonnull %1, ptr noundef nonnull %i.e) #11 ; 2 uses
  %.not16 = icmp eq i32 %i.m, 0
  br i1 %.not16, label %bb.f, label %bb.ax

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !29   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !24
  %i.o = call i64 @ares_buf_len(ptr noundef %i.n) #11
  %.not117.i = icmp eq i64 %i.o, 0
  br i1 %.not117.i, label %ares_uri_parse_query_buf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.g

bb.g:                                             ; preds = %bb.aw, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i8 0, ptr %i.c, align 1, !tbaa !18
  call void @ares_buf_tag(ptr noundef %i.n) #11
  %i.q = call i64 @ares_buf_consume_until_charset(ptr noundef %i.n, ptr noundef nonnull @.str.11, i64 noundef 2, i32 noundef 0) #11
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 @ares_buf_len(ptr noundef %i.n) #11
  %.not29.i = icmp eq i64 %i.s, 0
  br i1 %.not29.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = call i32 @ares_buf_peek_byte(ptr noundef %i.n, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not30.i = icmp eq i32 %i.t, 0
  br i1 %.not30.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = call i32 @ares_buf_tag_fetch_strdup(ptr noundef %i.n, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not31.i = icmp eq i32 %i.u, 0
  br i1 %.not31.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.thread.i, label %.lr.ph.i.i

ares_uri_chis_query_enc.exit.thread.i:            ; preds = %ares_uri_chis_query_enc.exit.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.x = add nuw i64 %.014.i.i, 1                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i, label %ares_uri_str_isvalid.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %ares_uri_chis_query_enc.exit.thread.i
  %.014.i.i = phi i64 [ %i.x, %ares_uri_chis_query_enc.exit.thread.i ], [ 0, %bb.k ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.014.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18    ; 8 uses
  switch i8 %i.z, label %ares_uri_chis_unreserved.exit.i.i.i.i [
    i8 0, label %ares_uri_str_isvalid.exit.i
    i8 47, label %ares_uri_chis_query_enc.exit.thread.i
    i8 63, label %ares_uri_chis_query_enc.exit.thread.i
    i8 58, label %ares_uri_chis_query_enc.exit.i
    i8 64, label %ares_uri_chis_query_enc.exit.i
    i8 126, label %ares_uri_chis_query_enc.exit.i
    i8 45, label %ares_uri_chis_query_enc.exit.i
    i8 46, label %ares_uri_chis_query_enc.exit.i
    i8 95, label %ares_uri_chis_query_enc.exit.i
  ]

ares_uri_chis_unreserved.exit.i.i.i.i:            ; preds = %.lr.ph.i.i
  %i.aa = and i8 %i.z, -33
  %i.ab = add i8 %i.aa, -91
  %or.cond13.i.i.i.i.i = icmp ult i8 %i.ab, -26
  %i.ac = add i8 %i.z, -58
  %i.ad = icmp ult i8 %i.ac, -10
  %narrow.i.not.i.i.i.i = and i1 %i.ad, %or.cond13.i.i.i.i.i
  br i1 %narrow.i.not.i.i.i.i, label %bb.l, label %ares_uri_chis_query_enc.exit.i

bb.l:                                             ; preds = %ares_uri_chis_unreserved.exit.i.i.i.i
  %i.ae = icmp ult i8 %i.z, 62
  br i1 %i.ae, label %switch.lookup, label %ares_uri_chis_query_enc.exit.i

switch.lookup:                                    ; preds = %bb.l
  %switch.cast = zext nneg i8 %i.z to i62
  %switch.downshift = lshr i62 1729347270106677247, %switch.cast
  %switch.masked = trunc i62 %switch.downshift to i1
  br label %ares_uri_chis_query_enc.exit.i

ares_uri_chis_query_enc.exit.i:                   ; preds = %bb.l, %switch.lookup, %ares_uri_chis_unreserved.exit.i.i.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %.not103.i = phi i1 [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i ], [ false, %ares_uri_chis_unreserved.exit.i.i.i.i ], [ %switch.masked, %switch.lookup ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i ], [ true, %bb.l ]
  %i.af = icmp eq i8 %i.z, 38
  %or.cond.i.i.not104.i = or i1 %i.af, %.not103.i
  %i.ag = icmp eq i8 %i.z, 61
  %narrow.i.i.not101.i = or i1 %i.ag, %or.cond.i.i.not104.i
  %i.ah = icmp ne i8 %i.z, 37
  %.not99.i = and i1 %i.ah, %narrow.i.i.not101.i
  br i1 %.not99.i, label %.thread.i, label %ares_uri_chis_query_enc.exit.thread.i

ares_uri_str_isvalid.exit.i:                      ; preds = %.lr.ph.i.i, %ares_uri_chis_query_enc.exit.thread.i
  %i.ai = load i8, ptr %i.v, align 1, !tbaa !18   ; 2 uses
  %.not115.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not115.i.i, label %.loopexit.i, label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %ares_uri_str_isvalid.exit.i, %bb.x
  %i.aj = phi i8 [ %i.bj, %bb.x ], [ %i.ai, %ares_uri_str_isvalid.exit.i ] ; 2 uses
  %i.ak = phi ptr [ %i.bi, %bb.x ], [ %i.v, %ares_uri_str_isvalid.exit.i ]
  %.0117.i.i = phi i64 [ %.1.i.i, %bb.x ], [ 0, %ares_uri_str_isvalid.exit.i ] ; 3 uses
  %.079116.i.i = phi i64 [ %i.bh, %bb.x ], [ 0, %ares_uri_str_isvalid.exit.i ] ; 2 uses
  switch i8 %i.aj, label %.sink.split.i.fold.split.i [
    i8 43, label %.sink.split.i.i
    i8 37, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph.i40.i
  %i.al = getelementptr i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18
  %.fr118.i.i = freeze i8 %i.am                   ; 6 uses
  %i.an = add i8 %.fr118.i.i, -48                 ; 2 uses
  %or.cond98.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond98.i.i, label %bb.n, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.m
  switch i8 %.fr118.i.i, label %.thread.i [
    i8 102, label %bb.n
    i8 101, label %bb.n
    i8 100, label %bb.n
    i8 99, label %bb.n
    i8 98, label %bb.n
    i8 97, label %bb.n
    i8 70, label %bb.n
    i8 69, label %bb.n
    i8 68, label %bb.n
    i8 67, label %bb.n
    i8 66, label %bb.n
    i8 65, label %bb.n
  ]

bb.n:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.m
  %i.ao = add i64 %.079116.i.i, 2                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %.fr119.i.i = freeze i8 %i.aq                   ; 6 uses
  %i.ar = add i8 %.fr119.i.i, -48                 ; 2 uses
  %or.cond101.i.i = icmp ult i8 %i.ar, 10
  br i1 %or.cond101.i.i, label %bb.o, label %switch.early.test113.i.i

switch.early.test113.i.i:                         ; preds = %bb.n
  switch i8 %.fr119.i.i, label %.thread.i [
    i8 102, label %bb.o
    i8 101, label %bb.o
    i8 100, label %bb.o
    i8 99, label %bb.o
    i8 98, label %bb.o
    i8 97, label %bb.o
    i8 70, label %bb.o
    i8 69, label %bb.o
    i8 68, label %bb.o
    i8 67, label %bb.o
    i8 66, label %bb.o
    i8 65, label %bb.o
  ]

bb.o:                                             ; preds = %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %switch.early.test113.i.i, %bb.n
  %i.as = icmp samesign ult i8 %.fr118.i.i, 58
  br i1 %i.as, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = add nsw i8 %.fr118.i.i, -65
  %or.cond105.i.i = icmp ult i8 %i.at, 6
  br i1 %or.cond105.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = add nsw i8 %.fr118.i.i, -55
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.av = add nsw i8 %.fr118.i.i, -87
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %i.aw = phi i8 [ %i.av, %bb.r ], [ %i.au, %bb.q ], [ %i.an, %bb.o ]
  %i.ax = shl i8 %i.aw, 4
  %i.ay = icmp samesign ult i8 %.fr119.i.i, 58
  br i1 %i.ay, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = add nsw i8 %.fr119.i.i, -65
  %or.cond107.i.i = icmp ult i8 %i.az, 6
  br i1 %or.cond107.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = add nsw i8 %.fr119.i.i, -55
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bb = add nsw i8 %.fr119.i.i, -87
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %i.bc = phi i8 [ %i.bb, %bb.v ], [ %i.ba, %bb.u ], [ %i.ar, %bb.s ]
  %i.bd = or i8 %i.bc, %i.ax                      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0117.i.i
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !18
  %i.bf = add i8 %i.bd, -32
  %or.cond108.i.i = icmp ult i8 %i.bf, 95
  br i1 %or.cond108.i.i, label %bb.x, label %.thread.i

.sink.split.i.fold.split.i:                       ; preds = %.lr.ph.i40.i
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.sink.split.i.fold.split.i, %.lr.ph.i40.i
  %.sink.i.i = phi i8 [ 32, %.lr.ph.i40.i ], [ %i.aj, %.sink.split.i.fold.split.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0117.i.i
  store i8 %.sink.i.i, ptr %i.bg, align 1, !tbaa !18
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i.i, %bb.w
  %.180.i.i = phi i64 [ %i.ao, %bb.w ], [ %.079116.i.i, %.sink.split.i.i ]
  %.1.i.i = add i64 %.0117.i.i, 1                 ; 2 uses
  %i.bh = add i64 %.180.i.i, 1                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18  ; 2 uses
  %.not.i41.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i41.i, label %.loopexit.i, label %.lr.ph.i40.i

.loopexit.i:                                      ; preds = %bb.x, %ares_uri_str_isvalid.exit.i
  %.0.lcssa.i.i = phi i64 [ 0, %ares_uri_str_isvalid.exit.i ], [ %.1.i.i, %bb.x ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.lcssa.i.i
  store i8 0, ptr %i.bk, align 1, !tbaa !18
  %i.bl = load i8, ptr %i.c, align 1, !tbaa !18   ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 61
  br i1 %i.bm, label %bb.y, label %bb.ao

bb.y:                                             ; preds = %.loopexit.i
  %i.bn = call i32 @ares_buf_consume(ptr noundef %i.n, i64 noundef 1) #11 ; 0 uses
  call void @ares_buf_tag(ptr noundef %i.n) #11
  %i.bo = call i64 @ares_buf_consume_until_charset(ptr noundef %i.n, ptr noundef nonnull @.str.12, i64 noundef 1, i32 noundef 0) #11
  %.not34.i = icmp eq i64 %i.bo, 0
  br i1 %.not34.i, label %thread-pre-split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = call i32 @ares_buf_tag_fetch_strdup(ptr noundef %i.n, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not35.i = icmp eq i32 %i.bp, 0
  br i1 %.not35.i, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !24  ; 9 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.thread.i, label %.lr.ph.i43.i

ares_uri_chis_query_enc.exit81.thread.i:          ; preds = %ares_uri_chis_query_enc.exit81.i, %.lr.ph.i43.i, %.lr.ph.i43.i
  %i.bs = add nuw i64 %.014.i44.i, 1              ; 2 uses
  %.not.i47.i = icmp eq i64 %i.bs, -1
  br i1 %.not.i47.i, label %ares_uri_str_isvalid.exit49.i, label %.lr.ph.i43.i

.lr.ph.i43.i:                                     ; preds = %bb.aa, %ares_uri_chis_query_enc.exit81.thread.i
  %.014.i44.i = phi i64 [ %i.bs, %ares_uri_chis_query_enc.exit81.thread.i ], [ 0, %bb.aa ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.014.i44.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18  ; 8 uses
  switch i8 %i.bu, label %ares_uri_chis_unreserved.exit.i.i.i78.i [
    i8 0, label %ares_uri_str_isvalid.exit49.i
    i8 47, label %ares_uri_chis_query_enc.exit81.thread.i
    i8 63, label %ares_uri_chis_query_enc.exit81.thread.i
    i8 58, label %ares_uri_chis_query_enc.exit81.i
    i8 64, label %ares_uri_chis_query_enc.exit81.i
    i8 126, label %ares_uri_chis_query_enc.exit81.i
    i8 45, label %ares_uri_chis_query_enc.exit81.i
    i8 46, label %ares_uri_chis_query_enc.exit81.i
    i8 95, label %ares_uri_chis_query_enc.exit81.i
  ]

ares_uri_chis_unreserved.exit.i.i.i78.i:          ; preds = %.lr.ph.i43.i
  %i.bv = and i8 %i.bu, -33
  %i.bw = add i8 %i.bv, -91
  %or.cond13.i.i.i.i79.i = icmp ult i8 %i.bw, -26
  %i.bx = add i8 %i.bu, -58
  %i.by = icmp ult i8 %i.bx, -10
  %narrow.i.not.i.i.i80.i = and i1 %i.by, %or.cond13.i.i.i.i79.i
  br i1 %narrow.i.not.i.i.i80.i, label %bb.ab, label %ares_uri_chis_query_enc.exit81.i

bb.ab:                                            ; preds = %ares_uri_chis_unreserved.exit.i.i.i78.i
  %i.bz = icmp ult i8 %i.bu, 62
  br i1 %i.bz, label %switch.lookup49, label %ares_uri_chis_query_enc.exit81.i

switch.lookup49:                                  ; preds = %bb.ab
  %switch.cast50 = zext nneg i8 %i.bu to i62
  %switch.downshift52 = lshr i62 1729347270106677247, %switch.cast50
  %switch.masked53 = trunc i62 %switch.downshift52 to i1
  br label %ares_uri_chis_query_enc.exit81.i

ares_uri_chis_query_enc.exit81.i:                 ; preds = %bb.ab, %switch.lookup49, %ares_uri_chis_unreserved.exit.i.i.i78.i, %.lr.ph.i43.i, %.lr.ph.i43.i, %.lr.ph.i43.i, %.lr.ph.i43.i, %.lr.ph.i43.i, %.lr.ph.i43.i
  %.not110.i = phi i1 [ false, %.lr.ph.i43.i ], [ false, %.lr.ph.i43.i ], [ false, %.lr.ph.i43.i ], [ false, %ares_uri_chis_unreserved.exit.i.i.i78.i ], [ %switch.masked53, %switch.lookup49 ], [ false, %.lr.ph.i43.i ], [ false, %.lr.ph.i43.i ], [ false, %.lr.ph.i43.i ], [ true, %bb.ab ]
  %i.ca = icmp eq i8 %i.bu, 38
  %or.cond.i.i75.not111.i = or i1 %i.ca, %.not110.i
  %i.cb = icmp eq i8 %i.bu, 61
  %narrow.i.i76.not108.i = or i1 %i.cb, %or.cond.i.i75.not111.i
  %i.cc = icmp ne i8 %i.bu, 37
  %.not106.i = and i1 %i.cc, %narrow.i.i76.not108.i
  br i1 %.not106.i, label %.thread.i, label %ares_uri_chis_query_enc.exit81.thread.i

ares_uri_str_isvalid.exit49.i:                    ; preds = %.lr.ph.i43.i, %ares_uri_chis_query_enc.exit81.thread.i
  %i.cd = load i8, ptr %i.bq, align 1, !tbaa !18  ; 2 uses
  %.not115.i50.i = icmp eq i8 %i.cd, 0
  br i1 %.not115.i50.i, label %ares_uri_decode_inplace.exit72.i, label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %ares_uri_str_isvalid.exit49.i, %bb.an
  %i.ce = phi i8 [ %i.de, %bb.an ], [ %i.cd, %ares_uri_str_isvalid.exit49.i ] ; 2 uses
  %i.cf = phi ptr [ %i.dd, %bb.an ], [ %i.bq, %ares_uri_str_isvalid.exit49.i ]
  %.0117.i52.i = phi i64 [ %.1.i58.i, %bb.an ], [ 0, %ares_uri_str_isvalid.exit49.i ] ; 3 uses
  %.079116.i53.i = phi i64 [ %i.dc, %bb.an ], [ 0, %ares_uri_str_isvalid.exit49.i ] ; 2 uses
  switch i8 %i.ce, label %.sink.split.i55.fold.split.i [
    i8 43, label %.sink.split.i55.i
    i8 37, label %bb.ac
  ]

bb.ac:                                            ; preds = %.lr.ph.i51.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18
  %.fr118.i63.i = freeze i8 %i.ch                 ; 6 uses
  %i.ci = add i8 %.fr118.i63.i, -48               ; 2 uses
  %or.cond98.i64.i = icmp ult i8 %i.ci, 10
  br i1 %or.cond98.i64.i, label %bb.ad, label %switch.early.test.i65.i

switch.early.test.i65.i:                          ; preds = %bb.ac
  switch i8 %.fr118.i63.i, label %.thread.i [
    i8 102, label %bb.ad
    i8 101, label %bb.ad
    i8 100, label %bb.ad
    i8 99, label %bb.ad
    i8 98, label %bb.ad
    i8 97, label %bb.ad
    i8 70, label %bb.ad
    i8 69, label %bb.ad
    i8 68, label %bb.ad
    i8 67, label %bb.ad
    i8 66, label %bb.ad
    i8 65, label %bb.ad
  ]

bb.ad:                                            ; preds = %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %switch.early.test.i65.i, %bb.ac
  %i.cj = add i64 %.079116.i53.i, 2               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !18
  %.fr119.i66.i = freeze i8 %i.cl                 ; 6 uses
  %i.cm = add i8 %.fr119.i66.i, -48               ; 2 uses
  %or.cond101.i67.i = icmp ult i8 %i.cm, 10
  br i1 %or.cond101.i67.i, label %bb.ae, label %switch.early.test113.i68.i

switch.early.test113.i68.i:                       ; preds = %bb.ad
  switch i8 %.fr119.i66.i, label %.thread.i [
    i8 102, label %bb.ae
    i8 101, label %bb.ae
    i8 100, label %bb.ae
    i8 99, label %bb.ae
    i8 98, label %bb.ae
    i8 97, label %bb.ae
    i8 70, label %bb.ae
    i8 69, label %bb.ae
    i8 68, label %bb.ae
    i8 67, label %bb.ae
    i8 66, label %bb.ae
    i8 65, label %bb.ae
  ]

bb.ae:                                            ; preds = %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %switch.early.test113.i68.i, %bb.ad
  %i.cn = icmp samesign ult i8 %.fr118.i63.i, 58
  br i1 %i.cn, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = add nsw i8 %.fr118.i63.i, -65
  %or.cond105.i69.i = icmp ult i8 %i.co, 6
  br i1 %or.cond105.i69.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cp = add nsw i8 %.fr118.i63.i, -55
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cq = add nsw i8 %.fr118.i63.i, -87
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.cr = phi i8 [ %i.cq, %bb.ah ], [ %i.cp, %bb.ag ], [ %i.ci, %bb.ae ]
  %i.cs = shl i8 %i.cr, 4
  %i.ct = icmp samesign ult i8 %.fr119.i66.i, 58
  br i1 %i.ct, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = add nsw i8 %.fr119.i66.i, -65
  %or.cond107.i70.i = icmp ult i8 %i.cu, 6
  br i1 %or.cond107.i70.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cv = add nsw i8 %.fr119.i66.i, -55
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cw = add nsw i8 %.fr119.i66.i, -87
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai
  %i.cx = phi i8 [ %i.cw, %bb.al ], [ %i.cv, %bb.ak ], [ %i.cm, %bb.ai ]
  %i.cy = or i8 %i.cx, %i.cs                      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.0117.i52.i
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !18
  %i.da = add i8 %i.cy, -32
  %or.cond108.i71.i = icmp ult i8 %i.da, 95
  br i1 %or.cond108.i71.i, label %bb.an, label %.thread.i

.sink.split.i55.fold.split.i:                     ; preds = %.lr.ph.i51.i
  br label %.sink.split.i55.i

.sink.split.i55.i:                                ; preds = %.sink.split.i55.fold.split.i, %.lr.ph.i51.i
  %.sink.i56.i = phi i8 [ 32, %.lr.ph.i51.i ], [ %i.ce, %.sink.split.i55.fold.split.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.0117.i52.i
  store i8 %.sink.i56.i, ptr %i.db, align 1, !tbaa !18
  br label %bb.an

bb.an:                                            ; preds = %.sink.split.i55.i, %bb.am
  %.180.i57.i = phi i64 [ %i.cj, %bb.am ], [ %.079116.i53.i, %.sink.split.i55.i ]
  %.1.i58.i = add i64 %.0117.i52.i, 1             ; 2 uses
  %i.dc = add i64 %.180.i57.i, 1                  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dc ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !18  ; 2 uses
  %.not.i59.i = icmp eq i8 %i.de, 0
  br i1 %.not.i59.i, label %ares_uri_decode_inplace.exit72.i, label %.lr.ph.i51.i

ares_uri_decode_inplace.exit72.i:                 ; preds = %bb.an, %ares_uri_str_isvalid.exit49.i
  %.0.lcssa.i61.i = phi i64 [ 0, %ares_uri_str_isvalid.exit49.i ], [ %.1.i58.i, %bb.an ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.0.lcssa.i61.i
  store i8 0, ptr %i.df, align 1, !tbaa !18
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %ares_uri_decode_inplace.exit72.i, %bb.y
  %.pr.i = load i8, ptr %i.c, align 1, !tbaa !18
  br label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split.i, %.loopexit.i
  %i.dg = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bl, %.loopexit.i ]
  %.not38.i = icmp eq i8 %i.dg, 0
  br i1 %.not38.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dh = call i32 @ares_buf_consume(ptr noundef %i.n, i64 noundef 1) #11 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !24  ; 5 uses
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !24  ; 4 uses
  %i.dk = icmp eq ptr %i.di, null
  br i1 %i.dk, label %.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dl = load i8, ptr %i.di, align 1, !tbaa !18
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %.thread.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dn = call i64 @ares_strlen(ptr noundef nonnull %i.di) #11
  %i.do = call i32 @ares_str_isprint(ptr noundef nonnull %i.di, i64 noundef %i.dn) #11
  %.not.i73.i = icmp eq i32 %i.do, 0
  br i1 %.not.i73.i, label %.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not15.i.i = icmp eq ptr %i.dj, null
  br i1 %.not15.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dp = call i64 @ares_strlen(ptr noundef nonnull %i.dj) #11
  %i.dq = call i32 @ares_str_isprint(ptr noundef nonnull %i.dj, i64 noundef %i.dp) #11
  %.not16.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not16.i.i, label %.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.ds = call i32 @ares_htable_dict_insert(ptr noundef %i.dr, ptr noundef nonnull %i.di, ptr noundef %i.dj) #11
  %.not17.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not17.i.i, label %.thread.i, label %bb.aw

.thread.i:                                        ; preds = %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.aa, %bb.z, %bb.k, %bb.j, %bb.i, %bb.g, %ares_uri_chis_query_enc.exit.i, %bb.w, %switch.early.test113.i.i, %switch.early.test.i.i, %ares_uri_chis_query_enc.exit81.i, %bb.am, %switch.early.test113.i68.i, %switch.early.test.i65.i
  %.1.ph.i = phi i32 [ 17, %ares_uri_chis_query_enc.exit.i ], [ 17, %bb.w ], [ 17, %ares_uri_chis_query_enc.exit81.i ], [ 17, %bb.am ], [ 17, %switch.early.test.i65.i ], [ 17, %switch.early.test113.i68.i ], [ 17, %switch.early.test.i.i ], [ 17, %switch.early.test113.i.i ], [ 17, %bb.g ], [ 17, %bb.k ], [ 17, %bb.au ], [ 17, %bb.aa ], [ 17, %bb.as ], [ 15, %bb.av ], [ %i.u, %bb.j ], [ 2, %bb.ar ], [ %i.bp, %bb.z ], [ 2, %bb.aq ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %ares_uri_parse_query_buf.exit

bb.aw:                                            ; preds = %bb.av
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !24
  call void @ares_free(ptr noundef %i.dt) #11
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @ares_free(ptr noundef %i.du) #11
  store ptr null, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.dv = call i64 @ares_buf_len(ptr noundef %i.n) #11
  %.not.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i, label %ares_uri_parse_query_buf.exit, label %bb.g

ares_uri_parse_query_buf.exit:                    ; preds = %bb.aw, %bb.f, %.thread.i
  %.2.i = phi i32 [ %.1.ph.i, %.thread.i ], [ 0, %bb.f ], [ 0, %bb.aw ]
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !24
  call void @ares_free(ptr noundef %i.dw) #11
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @ares_free(ptr noundef %i.dx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !29
  call void @ares_buf_destroy(ptr noundef %i.dy) #11
  br label %bb.ax

bb.ax:                                            ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %ares_uri_parse_query_buf.exit
  %.0 = phi i32 [ %.2.i, %ares_uri_parse_query_buf.exit ], [ 0, %bb.a ], [ %i.h, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ares_uri_parse_fragment(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = tail call i64 @ares_buf_len(ptr noundef nonnull %1) #11
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @ares_buf_peek_byte(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.a, align 1, !tbaa !18
  %.not18 = icmp eq i8 %i.g, 35
  br i1 %.not18, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @ares_buf_consume(ptr noundef nonnull %1, i64 noundef 1) #11 ; 0 uses
  %i.i = call i64 @ares_buf_len(ptr noundef nonnull %1) #11
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call i64 @ares_buf_len(ptr noundef nonnull %1) #11
  %i.l = call i32 @ares_buf_fetch_str_dup(ptr noundef nonnull %1, i64 noundef %i.k, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not19 = icmp eq i32 %i.l, 0
  %.pre28 = load ptr, ptr %i.b, align 8, !tbaa !24 ; 5 uses
  br i1 %.not19, label %bb.f, label %ares_uri_str_isvalid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq ptr %.pre28, null
  br i1 %i.m, label %ares_uri_str_isvalid.exit.thread, label %.lr.ph.i

ares_uri_chis_fragment_enc.exit.thread:           ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %ares_uri_chis_unreserved.exit.i.i.i
  %i.n = add nuw i64 %.014.i, 1                   ; 2 uses
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %ares_uri_str_isvalid.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %ares_uri_chis_fragment_enc.exit.thread
  %.014.i = phi i64 [ %i.n, %ares_uri_chis_fragment_enc.exit.thread ], [ 0, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre28, i64 %.014.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18    ; 4 uses
  switch i8 %i.p, label %ares_uri_chis_unreserved.exit.i.i.i [
    i8 0, label %ares_uri_str_isvalid.exit
    i8 47, label %ares_uri_chis_fragment_enc.exit.thread
    i8 63, label %ares_uri_chis_fragment_enc.exit.thread
    i8 58, label %ares_uri_chis_fragment_enc.exit.thread
    i8 64, label %ares_uri_chis_fragment_enc.exit.thread
    i8 126, label %ares_uri_chis_fragment_enc.exit.thread
    i8 45, label %ares_uri_chis_fragment_enc.exit.thread
    i8 46, label %ares_uri_chis_fragment_enc.exit.thread
    i8 95, label %ares_uri_chis_fragment_enc.exit.thread
  ]

ares_uri_chis_unreserved.exit.i.i.i:              ; preds = %.lr.ph.i
  %i.q = and i8 %i.p, -33
  %i.r = add i8 %i.q, -91
  %or.cond13.i.i.i.i = icmp ult i8 %i.r, -26
  %i.s = add i8 %i.p, -58
  %i.t = icmp ult i8 %i.s, -10
  %narrow.i.not.i.i.i = and i1 %i.t, %or.cond13.i.i.i.i
  br i1 %narrow.i.not.i.i.i, label %bb.g, label %ares_uri_chis_fragment_enc.exit.thread

bb.g:                                             ; preds = %ares_uri_chis_unreserved.exit.i.i.i
  switch i8 %i.p, label %ares_uri_str_isvalid.exit.thread [
    i8 33, label %ares_uri_chis_fragment_enc.exit.thread
    i8 36, label %ares_uri_chis_fragment_enc.exit.thread
    i8 38, label %ares_uri_chis_fragment_enc.exit.thread
    i8 39, label %ares_uri_chis_fragment_enc.exit.thread
    i8 40, label %ares_uri_chis_fragment_enc.exit.thread
    i8 41, label %ares_uri_chis_fragment_enc.exit.thread
    i8 42, label %ares_uri_chis_fragment_enc.exit.thread
    i8 43, label %ares_uri_chis_fragment_enc.exit.thread
    i8 44, label %ares_uri_chis_fragment_enc.exit.thread
    i8 59, label %ares_uri_chis_fragment_enc.exit.thread
    i8 61, label %ares_uri_chis_fragment_enc.exit.thread
    i8 37, label %ares_uri_chis_fragment_enc.exit.thread
  ]

ares_uri_str_isvalid.exit:                        ; preds = %.lr.ph.i, %ares_uri_chis_fragment_enc.exit.thread
  %i.u = call fastcc i32 @ares_uri_decode_inplace(ptr noundef nonnull %.pre28, i32 noundef 0, ptr noundef %i.c) ; 2 uses
  %.not21 = icmp eq i32 %i.u, 0
  %.pre27 = load ptr, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  br i1 %.not21, label %bb.h, label %ares_uri_str_isvalid.exit.thread

bb.h:                                             ; preds = %ares_uri_str_isvalid.exit
  %i.v = call fastcc i32 @ares_uri_set_fragment_own(ptr noundef %0, ptr noundef %.pre27) ; 2 uses
  %.not22 = icmp eq i32 %i.v, 0
  br i1 %.not22, label %bb.i, label %.ares_uri_str_isvalid.exit.thread_crit_edge

.ares_uri_str_isvalid.exit.thread_crit_edge:      ; preds = %bb.h
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !24
  br label %ares_uri_str_isvalid.exit.thread

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.b, align 8, !tbaa !24
  br label %ares_uri_str_isvalid.exit.thread

ares_uri_str_isvalid.exit.thread:                 ; preds = %bb.g, %.ares_uri_str_isvalid.exit.thread_crit_edge, %bb.f, %ares_uri_str_isvalid.exit, %bb.e, %bb.i
  %i.w = phi ptr [ %.pre28, %bb.e ], [ %.pre27, %ares_uri_str_isvalid.exit ], [ %.pre, %.ares_uri_str_isvalid.exit.thread_crit_edge ], [ null, %bb.i ], [ null, %bb.f ], [ %.pre28, %bb.g ]
  %.0 = phi i32 [ %i.l, %bb.e ], [ %i.u, %ares_uri_str_isvalid.exit ], [ %i.v, %.ares_uri_str_isvalid.exit.thread_crit_edge ], [ 0, %bb.i ], [ 17, %bb.f ], [ 17, %bb.g ]
  call void @ares_free(ptr noundef %i.w) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %ares_uri_str_isvalid.exit.thread
  %.013 = phi i32 [ %.0, %ares_uri_str_isvalid.exit.thread ], [ 0, %bb.a ], [ %i.f, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.013
}

declare i32 @ares_buf_set_position(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ares_uri_parse(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !27
  %i.c = tail call ptr @ares_buf_create() #11     ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ares_buf_append_str(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #11 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @ares_uri_parse_buf(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ %i.e, %bb.c ], [ 15, %bb.b ]
  tail call void @ares_buf_destroy(ptr noundef %i.c) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.012 = phi i32 [ %.0, %bb.e ], [ 2, %bb.a ]
  ret i32 %.012
}

declare i32 @ares_buf_append_str(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ares_buf_create_const(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_buf_split_str_array(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ares_array_len(ptr noundef) local_unnamed_addr #2

declare ptr @ares_array_at(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ares_array_remove_at(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_buf_append_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ares_array_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @ares_buf_append_num_dec(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_buf_append_num_hex(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ares_htable_dict_num_keys(ptr noundef) local_unnamed_addr #2

declare void @ares_free_array(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @ares_buf_tag(ptr noundef) local_unnamed_addr #2

declare i64 @ares_buf_consume_until_seq(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ares_buf_tag_fetch_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_buf_consume(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ares_buf_consume_until_charset(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ares_buf_tag_fetch_constbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ares_buf_peek(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ares_buf_tag_rollback(ptr noundef) local_unnamed_addr #2

declare i32 @ares_buf_tag_fetch_strdup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 18) i32 @ares_uri_decode_inplace(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !18      ; 2 uses
  %.not115 = icmp eq i8 %i.a, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not94 = icmp ne i32 %1, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.b = phi i8 [ %i.a, %.lr.ph ], [ %i.ac, %bb.o ] ; 3 uses
  %i.c = phi ptr [ %0, %.lr.ph ], [ %i.ab, %bb.o ]
  %.0117 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %.079116 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.o ] ; 2 uses
  %i.d = icmp eq i8 %i.b, 43
  %or.cond = and i1 %.not94, %i.d
  br i1 %or.cond, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not95 = icmp eq i8 %i.b, 37
  br i1 %.not95, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.c, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18
  %.fr118 = freeze i8 %i.f                        ; 6 uses
  %i.g = add i8 %.fr118, -48                      ; 2 uses
  %or.cond98 = icmp ult i8 %i.g, 10
  br i1 %or.cond98, label %bb.e, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i8 %.fr118, label %.loopexit [
    i8 102, label %bb.e
    i8 101, label %bb.e
    i8 100, label %bb.e
    i8 99, label %bb.e
    i8 98, label %bb.e
    i8 97, label %bb.e
    i8 70, label %bb.e
    i8 69, label %bb.e
    i8 68, label %bb.e
    i8 67, label %bb.e
    i8 66, label %bb.e
    i8 65, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  %i.h = add i64 %.079116, 2                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %.fr119 = freeze i8 %i.j                        ; 6 uses
  %i.k = add i8 %.fr119, -48                      ; 2 uses
  %or.cond101 = icmp ult i8 %i.k, 10
  br i1 %or.cond101, label %bb.f, label %switch.early.test113

switch.early.test113:                             ; preds = %bb.e
  switch i8 %.fr119, label %.loopexit [
    i8 102, label %bb.f
    i8 101, label %bb.f
    i8 100, label %bb.f
    i8 99, label %bb.f
    i8 98, label %bb.f
    i8 97, label %bb.f
    i8 70, label %bb.f
    i8 69, label %bb.f
    i8 68, label %bb.f
    i8 67, label %bb.f
    i8 66, label %bb.f
    i8 65, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test113, %switch.early.test113, %switch.early.test113, %switch.early.test113, %switch.early.test113, %switch.early.test113, %switch.early.test113, %switch.early.test113, %switch.early.test113, %switch.early.test113, %switch.early.test113, %switch.early.test113, %bb.e
  %i.l = icmp samesign ult i8 %.fr118, 58
  br i1 %i.l, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i8 %.fr118, -65
  %or.cond105 = icmp ult i8 %i.m, 6
  br i1 %or.cond105, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i8 %.fr118, -55
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = add nsw i8 %.fr118, -87
  br label %bb.j
end_hunk_0
