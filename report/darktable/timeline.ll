Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/timeline?download=true
inline.NumInlined: 87
inline.NumDeleted: 19
begin_hunk_0_@_lib_timeline_draw_callback:bb.a
  store i32 -1, ptr %i.bb, align 4, !tbaa !114
  br label %_time_compare_at_zoom.exit122.thread.i

_time_compare_at_zoom.exit122.thread.thread.i:    ; preds = %bb.ak, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  br label %bb.ar

_time_compare_at_zoom.exit122.thread.i:           ; preds = %bb.ao, %_time_compare_at_zoom.exit122.i, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  switch i32 %i.w, label %_time_format_for_db.exit.i [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
    i32 2, label %bb.aq
    i32 3, label %bb.ar
    i32 4, label %bb.ar
    i32 5, label %bb.as
    i32 6, label %bb.as
    i32 7, label %bb.at
    i32 8, label %bb.at
  ]

bb.ap:                                            ; preds = %_time_compare_at_zoom.exit122.thread.i, %_time_compare_at_zoom.exit122.thread.thread162.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.bc, align 4, !tbaa !81
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_time_compare_at_zoom.exit122.thread.i, %_time_compare_at_zoom.exit122.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.bd, align 4, !tbaa !82
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_time_compare_at_zoom.exit122.thread.i, %_time_compare_at_zoom.exit122.thread.i, %_time_compare_at_zoom.exit122.thread.thread.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !83
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_time_compare_at_zoom.exit122.thread.i, %_time_compare_at_zoom.exit122.thread.i, %_time_compare_at_zoom.exit122.thread.thread163.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.bf, align 4, !tbaa !84
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_time_compare_at_zoom.exit122.thread.i, %_time_compare_at_zoom.exit122.thread.i
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.bg, align 4, !tbaa !148
  %i.bh = call i64 @dt_datetime_numbers_to_gtimespan(ptr noundef nonnull %3) #15
  br label %_time_format_for_db.exit.i

_time_format_for_db.exit.i:                       ; preds = %bb.at, %_time_compare_at_zoom.exit122.thread.i
  %.0.i123.i = phi i64 [ %i.bh, %bb.at ], [ 0, %_time_compare_at_zoom.exit122.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bi = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.20, i64 noundef %.0.i123.i) #15 ; 4 uses
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !62
  %i.bk = and i32 %i.bj, 256
  %.not106.i = icmp eq i32 %i.bk, 0
  br i1 %.not106.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_time_format_for_db.exit.i
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, i32 noundef 673, ptr noundef nonnull @__FUNCTION__._block_get_at_zoom, ptr noundef %i.bi) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_time_format_for_db.exit.i
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !63
  %i.bm = call ptr @dt_database_get(ptr noundef %i.bl) #15
  %i.bn = call i32 @sqlite3_prepare_v2(ptr noundef %i.bm, ptr noundef %i.bi, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #15
  %.not107.i = icmp eq i32 %i.bn, 0
  br i1 %.not107.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !63
  %i.bq = call ptr @dt_database_get(ptr noundef %i.bp) #15
  %i.br = call ptr @sqlite3_errmsg(ptr noundef %i.bq) #15
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef 673, ptr noundef nonnull @__FUNCTION__._block_get_at_zoom, ptr noundef %i.bi, ptr noundef %i.br) #16 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.bu = call i32 @sqlite3_step(ptr noundef %i.bt) #15
  %i.bv = icmp eq i32 %i.bu, 100
  br i1 %i.bv, label %bb.ay, label %_block_get_at_zoom.exit

bb.ay:                                            ; preds = %bb.ax
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.bx = call i64 @sqlite3_column_int64(ptr noundef %i.bw, i32 noundef 0) #15
  %i.by = call i32 @dt_datetime_gtimespan_to_numbers(ptr noundef nonnull %4, i64 noundef %i.bx) #15 ; 0 uses
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.ca = call i32 @sqlite3_column_int(ptr noundef %i.bz, i32 noundef 1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false), !tbaa.struct !77
  %i.cb = load i32, ptr %i.v, align 8, !tbaa !73  ; 7 uses
  %i.cc = icmp ult i32 %i.cb, 7
  br i1 %i.cc, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.cd, align 8, !tbaa !84
  %.not99.i = icmp eq i32 %i.cb, 6
  br i1 %.not99.i, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !83
  %.fr.i = freeze i32 %i.cf                       ; 2 uses
  %i.cg = srem i32 %.fr.i, 6
  %i.ch = sub nsw i32 %.fr.i, %i.cg
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !83
  %i.ci = icmp samesign ult i32 %i.cb, 5
  br i1 %i.ci, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.ce, align 4, !tbaa !83
  %.not100.i = icmp eq i32 %i.cb, 4
  br i1 %.not100.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !82
  %.fr109.i = freeze i32 %i.ck                    ; 2 uses
  %i.cl = add i32 %.fr109.i, -1
  %i.cm = srem i32 %i.cl, 10
  %i.cn = sub i32 %.fr109.i, %i.cm
  store i32 %i.cn, ptr %i.cj, align 8, !tbaa !82
  %i.co = icmp samesign ult i32 %i.cb, 3
  br i1 %i.co, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  store i32 1, ptr %i.cj, align 8, !tbaa !82
  %.not101.i = icmp eq i32 %i.cb, 2
  br i1 %.not101.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !81
  %i.cr = add nsw i32 %i.cq, -1
  %i.cs = sdiv i32 %i.cr, 4
  %i.ct = shl nsw i32 %i.cs, 2
  %i.cu = or disjoint i32 %i.ct, 1
  %i.cv = icmp eq i32 %i.cb, 0
  %spec.store.select.i = select i1 %i.cv, i32 1, i32 %i.cu
  store i32 %spec.store.select.i, ptr %i.cp, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val, i64 136 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 140 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i, %bb.bf
  %.0100.i = phi i32 [ 0, %bb.bf ], [ %i.gh, %._crit_edge.i ] ; 3 uses
  %.097.i = phi i32 [ %i.ca, %bb.bf ], [ %.299.lcssa.i, %._crit_edge.i ]
  %i.dg = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #17 ; 26 uses
  %i.dh = load i32, ptr %i.v, align 8, !tbaa !73
  %i.di = call fastcc ptr @_time_format_for_ui(ptr noundef nonnull byval(%struct.dt_datetime_t) align 8 %5, i32 noundef %i.dh)
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !116
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dj, ptr noundef nonnull align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !77
  %i.dk = load i32, ptr %i.v, align 8, !tbaa !73  ; 4 uses
  %.val.i = load i32, ptr %5, align 8             ; 6 uses
  %.val110.i = load i32, ptr %i.cw, align 4       ; 2 uses
  switch i32 %i.dk, label %bb.bm [
    i32 0, label %_block_get_bar_count.exit.thread52.i
    i32 1, label %_time_days_in_month.exit.i.i
    i32 2, label %bb.bj
    i32 3, label %_block_get_bar_count.exit.i
    i32 4, label %_block_get_bar_count.exit.thread57.i
    i32 5, label %_block_get_bar_count.exit.i
    i32 6, label %_block_get_bar_count.exit.thread54.i
  ]

_block_get_bar_count.exit.thread52.i:             ; preds = %bb.bg
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  store i32 12, ptr %i.dl, align 8, !tbaa !149
  %i.dm = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 12, i64 noundef 4) #17
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !117
  %i.do = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 12, i64 noundef 4) #17
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !118
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 56 ; 2 uses
  store i32 120, ptr %i.dq, align 8, !tbaa !119
  store i32 1, ptr %i.cw, align 4, !tbaa !81
  br label %.lr.ph116.preheader.i

_time_days_in_month.exit.i.i:                     ; preds = %bb.bg
  %i.dr = add nsw i32 %.val110.i, -1
  %i.ds = sdiv i32 %i.dr, 4
  %i.dt = shl nsw i32 %i.ds, 2                    ; 3 uses
  %i.du = or disjoint i32 %i.dt, 2
  switch i32 %i.du, label %bb.bi [
    i32 2, label %bb.bh
    i32 10, label %_block_get_bar_count.exit.thread49.i
  ]

bb.bh:                                            ; preds = %_time_days_in_month.exit.i.i
  %i.dv = and i32 %.val.i, 3
  %i.dw = icmp eq i32 %i.dv, 0
  %i.dx = srem i32 %.val.i, 100
  %.not.i14.i.i = icmp ne i32 %i.dx, 0
  %or.cond.not8.i15.i.i = and i1 %i.dw, %.not.i14.i.i
  %i.dy = srem i32 %.val.i, 400
  %i.dz = icmp eq i32 %i.dy, 0
  %or.cond6.i16.i.i = or i1 %i.dz, %or.cond.not8.i15.i.i
  %spec.select.i17.i.i = select i1 %or.cond6.i16.i.i, i32 29, i32 28
  br label %_block_get_bar_count.exit.thread49.i

bb.bi:                                            ; preds = %_time_days_in_month.exit.i.i
  br label %_block_get_bar_count.exit.thread49.i

_block_get_bar_count.exit.thread49.i:             ; preds = %bb.bi, %bb.bh, %_time_days_in_month.exit.i.i
  %.0.i13.i.i = phi i32 [ 30, %bb.bi ], [ %spec.select.i17.i.i, %bb.bh ], [ 31, %_time_days_in_month.exit.i.i ]
  %switch.selectcmp2.i.i = icmp ult i32 %i.dt, 8
  %i.ea = add i32 %i.dt, -4
  %switch.selectcmp4.i.i = icmp ult i32 %i.ea, 8
  %12 = select i1 %switch.selectcmp4.i.i, i32 31, i32 30
  %i.eb = select i1 %switch.selectcmp2.i.i, i32 62, i32 60
  %i.ec = add nuw nsw i32 %12, %i.eb
  %i.ed = add nuw nsw i32 %i.ec, %.0.i13.i.i      ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !149
  %i.ef = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.eg = call noalias ptr @calloc(i64 noundef %i.ef, i64 noundef 4) #17
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !117
  %i.ei = call noalias ptr @calloc(i64 noundef %i.ef, i64 noundef 4) #17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !118
  br label %_block_get_bar_width.exit.thread.i

bb.bj:                                            ; preds = %bb.bg
  switch i32 %.val110.i, label %bb.bl [
    i32 2, label %bb.bk
    i32 1, label %_block_get_bar_count.exit.thread.i
    i32 3, label %_block_get_bar_count.exit.thread.i
    i32 5, label %_block_get_bar_count.exit.thread.i
    i32 7, label %_block_get_bar_count.exit.thread.i
    i32 8, label %_block_get_bar_count.exit.thread.i
    i32 10, label %_block_get_bar_count.exit.thread.i
    i32 12, label %_block_get_bar_count.exit.thread.i
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.ek = and i32 %.val.i, 3
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = srem i32 %.val.i, 100
  %.not.i32.i.i = icmp ne i32 %i.em, 0
  %or.cond.not8.i33.i.i = and i1 %i.el, %.not.i32.i.i
  %i.en = srem i32 %.val.i, 400
  %i.eo = icmp eq i32 %i.en, 0
  %or.cond6.i34.i.i = or i1 %i.eo, %or.cond.not8.i33.i.i
  %spec.select.i35.i.i = select i1 %or.cond6.i34.i.i, i32 29, i32 28
  br label %_block_get_bar_count.exit.thread.i

bb.bl:                                            ; preds = %bb.bj
  br label %_block_get_bar_count.exit.thread.i

_block_get_bar_count.exit.thread57.i:             ; preds = %bb.bg
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  store i32 24, ptr %i.ep, align 8, !tbaa !149
  %i.eq = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 24, i64 noundef 4) #17
  %i.er = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !117
  %i.es = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 24, i64 noundef 4) #17
  %i.et = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !118
  br label %_block_get_bar_width.exit.thread77.i

_block_get_bar_count.exit.thread54.i:             ; preds = %bb.bg
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  store i32 60, ptr %i.eu, align 8, !tbaa !149
  %i.ev = call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 60, i64 noundef 4) #17
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !117
  %i.ex = call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 60, i64 noundef 4) #17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !118
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dg, i64 56 ; 2 uses
  store i32 120, ptr %i.ez, align 8, !tbaa !119
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bg
  br label %_block_get_bar_count.exit.i

_block_get_bar_count.exit.thread.i:               ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj
  %.0.i124.ph.i = phi i32 [ 31, %bb.bj ], [ 31, %bb.bj ], [ 31, %bb.bj ], [ 31, %bb.bj ], [ 31, %bb.bj ], [ 31, %bb.bj ], [ 31, %bb.bj ], [ %spec.select.i35.i.i, %bb.bk ], [ 30, %bb.bl ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  store i32 %.0.i124.ph.i, ptr %i.fa, align 8, !tbaa !149
  %i.fb = zext nneg i32 %.0.i124.ph.i to i64      ; 2 uses
  %i.fc = call noalias ptr @calloc(i64 noundef %i.fb, i64 noundef 4) #17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !117
  %i.fe = call noalias ptr @calloc(i64 noundef %i.fb, i64 noundef 4) #17
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !118
  %i.fg = shl nuw nsw i32 %.0.i124.ph.i, 2
  br label %_block_get_bar_width.exit.thread.i

_block_get_bar_count.exit.i:                      ; preds = %bb.bm, %bb.bg, %bb.bg
  %.0.i124.i = phi i32 [ 1, %bb.bm ], [ 120, %bb.bg ], [ 120, %bb.bg ] ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 6 uses
  store i32 %.0.i124.i, ptr %i.fh, align 8, !tbaa !149
  %i.fi = zext nneg i32 %.0.i124.i to i64         ; 2 uses
  %i.fj = call noalias ptr @calloc(i64 noundef %i.fi, i64 noundef 4) #17
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 6 uses
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !117
  %i.fl = call noalias ptr @calloc(i64 noundef %i.fi, i64 noundef 4) #17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 6 uses
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !118
  %cond.i = icmp eq i32 %i.dk, 4
  br i1 %cond.i, label %_block_get_bar_width.exit.thread77.i, label %_block_get_bar_width.exit.i

_block_get_bar_width.exit.thread.i:               ; preds = %_block_get_bar_count.exit.thread.i, %_block_get_bar_count.exit.thread49.i
  %.ph.i = phi ptr [ %i.ej, %_block_get_bar_count.exit.thread49.i ], [ %i.ff, %_block_get_bar_count.exit.thread.i ]
  %.ph60.i = phi ptr [ %i.eh, %_block_get_bar_count.exit.thread49.i ], [ %i.fd, %_block_get_bar_count.exit.thread.i ]
  %.ph61.i = phi ptr [ %i.ee, %_block_get_bar_count.exit.thread49.i ], [ %i.fa, %_block_get_bar_count.exit.thread.i ]
  %.0.i12448.ph.i = phi i32 [ %i.ed, %_block_get_bar_count.exit.thread49.i ], [ %i.fg, %_block_get_bar_count.exit.thread.i ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dg, i64 56 ; 2 uses
  store i32 %.0.i12448.ph.i, ptr %i.fn, align 8, !tbaa !119
  store i32 1, ptr %i.cx, align 8, !tbaa !82
  br label %.lr.ph116.preheader.i

_block_get_bar_width.exit.thread77.i:             ; preds = %_block_get_bar_count.exit.i, %_block_get_bar_count.exit.thread57.i
  %.ph73.i = phi ptr [ %i.et, %_block_get_bar_count.exit.thread57.i ], [ %i.fm, %_block_get_bar_count.exit.i ]
  %.ph74.i = phi ptr [ %i.er, %_block_get_bar_count.exit.thread57.i ], [ %i.fk, %_block_get_bar_count.exit.i ]
  %.ph75.i = phi ptr [ %i.ep, %_block_get_bar_count.exit.thread57.i ], [ %i.fh, %_block_get_bar_count.exit.i ]
  %.0.i12448.ph76.i = phi i32 [ 24, %_block_get_bar_count.exit.thread57.i ], [ %.0.i124.i, %_block_get_bar_count.exit.i ]
  %i.fo = mul nuw nsw i32 %.0.i12448.ph76.i, 5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dg, i64 56 ; 2 uses
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !119
  br label %bb.bn

_block_get_bar_width.exit.i:                      ; preds = %_block_get_bar_count.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dg, i64 56 ; 5 uses
  store i32 %.0.i124.i, ptr %i.fq, align 8, !tbaa !119
  switch i32 %i.dk, label %.lr.ph116.preheader.i [
    i32 6, label %bb.bo
    i32 5, label %bb.bo
    i32 3, label %bb.bn
  ]

bb.bn:                                            ; preds = %_block_get_bar_width.exit.i, %_block_get_bar_width.exit.thread77.i
  %i.fr = phi ptr [ %i.fp, %_block_get_bar_width.exit.thread77.i ], [ %i.fq, %_block_get_bar_width.exit.i ]
  %i.fs = phi ptr [ %.ph75.i, %_block_get_bar_width.exit.thread77.i ], [ %i.fh, %_block_get_bar_width.exit.i ]
  %i.ft = phi ptr [ %.ph74.i, %_block_get_bar_width.exit.thread77.i ], [ %i.fk, %_block_get_bar_width.exit.i ]
  %i.fu = phi ptr [ %.ph73.i, %_block_get_bar_width.exit.thread77.i ], [ %i.fm, %_block_get_bar_width.exit.i ]
  store i32 0, ptr %i.cz, align 4, !tbaa !83
  br label %.lr.ph116.preheader.i

bb.bo:                                            ; preds = %_block_get_bar_width.exit.i, %_block_get_bar_width.exit.i, %_block_get_bar_count.exit.thread54.i
  %i.fv = phi ptr [ %i.ez, %_block_get_bar_count.exit.thread54.i ], [ %i.fq, %_block_get_bar_width.exit.i ], [ %i.fq, %_block_get_bar_width.exit.i ]
  %i.fw = phi ptr [ %i.eu, %_block_get_bar_count.exit.thread54.i ], [ %i.fh, %_block_get_bar_width.exit.i ], [ %i.fh, %_block_get_bar_width.exit.i ]
  %i.fx = phi ptr [ %i.ew, %_block_get_bar_count.exit.thread54.i ], [ %i.fk, %_block_get_bar_width.exit.i ], [ %i.fk, %_block_get_bar_width.exit.i ]
  %i.fy = phi ptr [ %i.ey, %_block_get_bar_count.exit.thread54.i ], [ %i.fm, %_block_get_bar_width.exit.i ], [ %i.fm, %_block_get_bar_width.exit.i ]
  store i32 0, ptr %i.cy, align 8, !tbaa !84
  br label %.lr.ph116.preheader.i

.lr.ph116.preheader.i:                            ; preds = %bb.bo, %bb.bn, %_block_get_bar_width.exit.i, %_block_get_bar_width.exit.thread.i, %_block_get_bar_count.exit.thread52.i
  %i.fz = phi ptr [ %i.fq, %_block_get_bar_width.exit.i ], [ %i.fn, %_block_get_bar_width.exit.thread.i ], [ %i.fv, %bb.bo ], [ %i.fr, %bb.bn ], [ %i.dq, %_block_get_bar_count.exit.thread52.i ]
  %i.ga = phi ptr [ %i.fh, %_block_get_bar_width.exit.i ], [ %.ph61.i, %_block_get_bar_width.exit.thread.i ], [ %i.fw, %bb.bo ], [ %i.fs, %bb.bn ], [ %i.dl, %_block_get_bar_count.exit.thread52.i ]
  %i.gb = phi ptr [ %i.fk, %_block_get_bar_width.exit.i ], [ %.ph60.i, %_block_get_bar_width.exit.thread.i ], [ %i.fx, %bb.bo ], [ %i.ft, %bb.bn ], [ %i.dn, %_block_get_bar_count.exit.thread52.i ]
  %i.gc = phi ptr [ %i.fm, %_block_get_bar_width.exit.i ], [ %.ph.i, %_block_get_bar_width.exit.thread.i ], [ %i.fy, %bb.bo ], [ %i.fu, %bb.bn ], [ %i.dp, %_block_get_bar_count.exit.thread52.i ]
  br label %.lr.ph116.i

._crit_edge.i:                                    ; preds = %_time_add.exit.i
  %i.gd = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.ge = call ptr @g_list_append(ptr noundef %i.gd, ptr noundef nonnull %i.dg) #15
  store ptr %i.ge, ptr %i.r, align 8, !tbaa !74
  %i.gf = load i32, ptr %i.fz, align 8, !tbaa !119
  %i.gg = add i32 %.0100.i, 2
  %i.gh = add i32 %i.gg, %i.gf                    ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, %i.e
  %i.gj = icmp ne i32 %.2.lcssa.i, 100
  %or.cond.i = or i1 %i.gj, %i.gi
  br i1 %or.cond.i, label %bb.dn, label %bb.bg

.lr.ph116.i:                                      ; preds = %_time_add.exit.i, %.lr.ph116.preheader.i
  %i.gk = phi i32 [ %i.dk, %.lr.ph116.preheader.i ], [ %i.iz, %_time_add.exit.i ] ; 15 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph116.preheader.i ], [ %indvars.iv.next.i, %_time_add.exit.i ] ; 5 uses
  %.1114.i = phi i32 [ 100, %.lr.ph116.preheader.i ], [ %.2.lcssa.i, %_time_add.exit.i ] ; 2 uses
  %.198113.i = phi i32 [ %.097.i, %.lr.ph116.preheader.i ], [ %.299.lcssa.i, %_time_add.exit.i ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %i.t, align 4, !tbaa !72
  %.sroa.53.0.copyload.i = load i32, ptr %.sroa.59.0..sroa_idx.i, align 4, !tbaa !72
  %.sroa.64.0.copyload.i = load i32, ptr %.sroa.610.0..sroa_idx.i, align 8, !tbaa !72 ; 2 uses
  %.sroa.75.0.copyload.i = load i32, ptr %.sroa.711.0..sroa_idx.i, align 4, !tbaa !72 ; 2 uses
  %i.gl = load i32, ptr %5, align 8, !tbaa !80    ; 2 uses
  %.not.i126.i = icmp eq i32 %.sroa.01.0.copyload.i, %i.gl
  br i1 %.not.i126.i, label %bb.bp, label %_time_compare_at_zoom.exit137.thread164.i

bb.bp:                                            ; preds = %.lr.ph116.i
  %.sroa.42.0.copyload.i = load i32, ptr %.sroa.48.0..sroa_idx.i, align 8, !tbaa !72
  %i.gm = load i32, ptr %i.cw, align 4, !tbaa !81
  %.not22.i128.i = icmp eq i32 %.sroa.42.0.copyload.i, %i.gm
  br i1 %.not22.i128.i, label %bb.bq, label %_time_compare_at_zoom.exit137.thread164.i

bb.bq:                                            ; preds = %bb.bp
  %cond102.i = icmp eq i32 %i.gk, 0
  br i1 %cond102.i, label %_block_get_bar_width.exit139.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gn = load i32, ptr %i.cx, align 8, !tbaa !82
  %.not24.i130.i = icmp eq i32 %.sroa.53.0.copyload.i, %i.gn
  br i1 %.not24.i130.i, label %bb.bs, label %_time_compare_at_zoom.exit137.thread164.i

bb.bs:                                            ; preds = %bb.br
  %i.go = icmp ugt i32 %i.gk, 2
  br i1 %i.go, label %bb.bt, label %_time_compare_at_zoom.exit137.thread.i

bb.bt:                                            ; preds = %bb.bs
  %i.gp = sdiv i32 %.sroa.64.0.copyload.i, 2
  %i.gq = load i32, ptr %i.cz, align 4, !tbaa !83 ; 2 uses
  %i.gr = sdiv i32 %i.gq, 2
  %.not25.i131.i = icmp eq i32 %i.gp, %i.gr
  br i1 %.not25.i131.i, label %bb.bu, label %_time_compare_at_zoom.exit137.thread164.i

bb.bu:                                            ; preds = %bb.bt
  %cond103.i = icmp eq i32 %i.gk, 3
  br i1 %cond103.i, label %_block_get_bar_width.exit139.i, label %bb.bv
end_hunk_0
