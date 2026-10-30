Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-rot13-filter?download=true
inline.NumInlined: 40
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cmd__rot13_filter:bb.a
bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.dq = call ptr @packet_read_line(i32 noundef 0, ptr noundef null) #9
  %.not.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @die(ptr noundef nonnull @.str.67) #10
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @hashmap_iter_init(ptr noundef nonnull @delay, ptr noundef nonnull %3) #9
  %i.dr = call ptr @hashmap_iter_next(ptr noundef nonnull %3) #9 ; 2 uses
  %.not1420.i.i = icmp eq ptr %i.dr, null
  br i1 %.not1420.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.aj
  %.01321.i.i = phi ptr [ %i.eg, %bb.aj ], [ %i.dr, %bb.ad ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01321.i.i, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !45 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !40
  %.not16.i.i = icmp eq i32 %i.du, 0
  br i1 %.not16.i.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !39
  %i.dx = add nsw i32 %i.dw, -1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !39
  %i.dy = getelementptr inbounds nuw i8, ptr %.01321.i.i, i64 16 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !46 ; 2 uses
  %i.ea = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dz, ptr noundef nonnull dereferenceable(16) @.str.14) #11
  %.not17.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not17.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.68) #9
  %.pre.i.i = load ptr, ptr %i.dy, align 8, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eb = phi ptr [ %.pre.i.i, %bb.af ], [ %i.dz, %bb.ae ] ; 2 uses
  %i.ec = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eb, ptr noundef nonnull dereferenceable(16) @.str.13) #11
  %.not18.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not18.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load i32, ptr %i.dv, align 4, !tbaa !39
  %.not19.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not19.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ee = call ptr @string_list_append(ptr noundef nonnull %4, ptr noundef nonnull %i.eb) #9 ; 0 uses
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !46
  call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef %i.ef) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %.lr.ph.i.i
  %i.eg = call ptr @hashmap_iter_next(ptr noundef nonnull %3) #9 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.eg, null
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %bb.aj, %bb.ad
  call void @string_list_sort(ptr noundef nonnull %4) #9
  %i.eh = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %.not1522.i.i = icmp eq ptr %i.eh, null
  %i.ei = load i64, ptr %i.cs, align 8
  %.not269.i = icmp eq i64 %i.ei, 0
  %or.cond.i.a = select i1 %.not1522.i.i, i1 true, i1 %.not269.i
  br i1 %or.cond.i.a, label %reply_list_available_blobs_cmd.exit.i, label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph176.i
  %.023.i175.i = phi ptr [ %i.em, %.lr.ph176.i ], [ %i.eh, %._crit_edge.i.i ] ; 2 uses
  %i.ej = load ptr, ptr @logfile, align 8, !tbaa !36
  %i.ek = load ptr, ptr %.023.i175.i, align 8, !tbaa !51
  %i.el = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ej, ptr noundef nonnull @.str.42, ptr noundef %i.ek) #9 ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.023.i175.i, i64 16 ; 2 uses
  %i.en = load ptr, ptr %4, align 8, !tbaa !49
  %i.eo = load i64, ptr %i.cs, align 8, !tbaa !52
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.eo
  %i.eq = icmp ult ptr %i.em, %i.ep
  br i1 %i.eq, label %.lr.ph176.i, label %reply_list_available_blobs_cmd.exit.i

reply_list_available_blobs_cmd.exit.i:            ; preds = %.lr.ph176.i, %._crit_edge.i.i
  call void @string_list_clear(ptr noundef nonnull %4, i32 noundef 0) #9
  call void @packet_flush(i32 noundef 1) #9
  %i.er = load ptr, ptr @logfile, align 8, !tbaa !36
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.66, i64 6, i64 1, ptr %i.er) ; 0 uses
  call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.59) #9
  call void @packet_flush(i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.ca

bb.ak:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.es = call i32 @packet_read_line_gently(i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) #9
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %packet_key_val_read.exit100.thread.i, label %bb.al

packet_key_val_read.exit100.thread.i:             ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit131.i

bb.al:                                            ; preds = %bb.ak
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !22  ; 21 uses
  %.not.i.i88.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i88.i, label %skip_prefix_impl.exit.i.i94.i, label %.preheader14.i.i89.preheader.i

.preheader14.i.i89.preheader.i:                   ; preds = %bb.al
  %scevgep240.i = getelementptr i8, ptr %i.eu, i64 8
  %scevgep241.i = getelementptr i8, ptr %i.eu, i64 9 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !41
  %i.ew = icmp eq i8 %i.ev, 112
  br i1 %i.ew, label %.preheader14.i.i89.1.i, label %skip_prefix_impl.exit.i.i94.i

.preheader.preheader.i.i95.i:                     ; preds = %.preheader14.i.i89.7.i
  %i.ex = load i8, ptr %scevgep240.i, align 1, !tbaa !41
  %i.ey = icmp eq i8 %i.ex, 61
  br i1 %i.ey, label %.preheader.1.i.i96.i, label %skip_prefix_impl.exit.i.i94.i

.preheader14.i.i89.1.i:                           ; preds = %.preheader14.i.i89.preheader.i
  %indvars.iv.i.i92.i = getelementptr i8, ptr %i.eu, i64 1
  %i.ez = load i8, ptr %indvars.iv.i.i92.i, align 1, !tbaa !41
  %i.fa = icmp eq i8 %i.ez, 97
  br i1 %i.fa, label %.preheader14.i.i89.2.i, label %skip_prefix_impl.exit.i.i94.i

.preheader14.i.i89.2.i:                           ; preds = %.preheader14.i.i89.1.i
  %indvars.iv.i.i92.1.i = getelementptr i8, ptr %i.eu, i64 2
  %i.fb = load i8, ptr %indvars.iv.i.i92.1.i, align 1, !tbaa !41
  %i.fc = icmp eq i8 %i.fb, 116
  br i1 %i.fc, label %.preheader14.i.i89.3.i, label %skip_prefix_impl.exit.i.i94.i

.preheader14.i.i89.3.i:                           ; preds = %.preheader14.i.i89.2.i
  %indvars.iv.i.i92.2.i = getelementptr i8, ptr %i.eu, i64 3
  %i.fd = load i8, ptr %indvars.iv.i.i92.2.i, align 1, !tbaa !41
  %i.fe = icmp eq i8 %i.fd, 104
  br i1 %i.fe, label %.preheader14.i.i89.4.i, label %skip_prefix_impl.exit.i.i94.i

.preheader14.i.i89.4.i:                           ; preds = %.preheader14.i.i89.3.i
  %indvars.iv.i.i92.3.i = getelementptr i8, ptr %i.eu, i64 4
  %i.ff = load i8, ptr %indvars.iv.i.i92.3.i, align 1, !tbaa !41
  %i.fg = icmp eq i8 %i.ff, 110
  br i1 %i.fg, label %.preheader14.i.i89.5.i, label %skip_prefix_impl.exit.i.i94.i

.preheader14.i.i89.5.i:                           ; preds = %.preheader14.i.i89.4.i
  %indvars.iv.i.i92.4.i = getelementptr i8, ptr %i.eu, i64 5
  %i.fh = load i8, ptr %indvars.iv.i.i92.4.i, align 1, !tbaa !41
  %i.fi = icmp eq i8 %i.fh, 97
  br i1 %i.fi, label %.preheader14.i.i89.6.i, label %skip_prefix_impl.exit.i.i94.i

.preheader14.i.i89.6.i:                           ; preds = %.preheader14.i.i89.5.i
  %indvars.iv.i.i92.5.i = getelementptr i8, ptr %i.eu, i64 6
  %i.fj = load i8, ptr %indvars.iv.i.i92.5.i, align 1, !tbaa !41
  %i.fk = icmp eq i8 %i.fj, 109
  br i1 %i.fk, label %.preheader14.i.i89.7.i, label %skip_prefix_impl.exit.i.i94.i

.preheader14.i.i89.7.i:                           ; preds = %.preheader14.i.i89.6.i
  %indvars.iv.i.i92.6.i = getelementptr i8, ptr %i.eu, i64 7
  %i.fl = load i8, ptr %indvars.iv.i.i92.6.i, align 1, !tbaa !41
  %i.fm = icmp eq i8 %i.fl, 101
  br i1 %i.fm, label %.preheader.preheader.i.i95.i, label %skip_prefix_impl.exit.i.i94.i

.preheader.1.i.i96.i:                             ; preds = %.preheader.preheader.i.i95.i
  %i.fn = load i8, ptr %scevgep241.i, align 1, !tbaa !41
  %.not3.i.i97.i = icmp eq i8 %i.fn, 0
  br i1 %.not3.i.i97.i, label %skip_prefix_impl.exit.i.i94.i, label %packet_key_val_read.exit100.i

skip_prefix_impl.exit.i.i94.i:                    ; preds = %.preheader.1.i.i96.i, %.preheader14.i.i89.7.i, %.preheader14.i.i89.6.i, %.preheader14.i.i89.5.i, %.preheader14.i.i89.4.i, %.preheader14.i.i89.3.i, %.preheader14.i.i89.2.i, %.preheader14.i.i89.1.i, %.preheader.preheader.i.i95.i, %.preheader14.i.i89.preheader.i, %bb.al
  %i.fo = phi ptr [ %i.eu, %.preheader14.i.i89.preheader.i ], [ %i.eu, %.preheader14.i.i89.7.i ], [ %i.eu, %.preheader14.i.i89.6.i ], [ %i.eu, %.preheader14.i.i89.5.i ], [ %i.eu, %.preheader14.i.i89.4.i ], [ %i.eu, %.preheader14.i.i89.3.i ], [ %i.eu, %.preheader14.i.i89.2.i ], [ %i.eu, %.preheader14.i.i89.1.i ], [ %i.eu, %.preheader.preheader.i.i95.i ], [ %i.eu, %.preheader.1.i.i96.i ], [ @.str.28, %bb.al ]
  call void (ptr, ...) @die(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.fo) #10
  unreachable

packet_key_val_read.exit100.i:                    ; preds = %.preheader.1.i.i96.i
  %i.fp = call ptr @xstrdup(ptr noundef nonnull %scevgep241.i) #9 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not66.i = icmp eq ptr %i.fp, null
  br i1 %.not66.i, label %.loopexit131.i, label %bb.am

.loopexit131.i:                                   ; preds = %packet_key_val_read.exit100.i, %packet_key_val_read.exit100.thread.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.41) #10
  unreachable

bb.am:                                            ; preds = %packet_key_val_read.exit100.i
  %i.fq = load ptr, ptr @logfile, align 8, !tbaa !36
  %i.fr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fq, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.fp) #9 ; 0 uses
  %i.fs = call ptr @packet_read_line(i32 noundef 0, ptr noundef null) #9 ; 2 uses
  %.not67170.i = icmp eq ptr %i.fs, null
  br i1 %.not67170.i, label %._crit_edge.i35, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.am, %add_delay_entry.exit.i
  %i.ft = phi ptr [ %i.gg, %add_delay_entry.exit.i ], [ %i.fs, %bb.am ] ; 6 uses
  %i.fu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ft, ptr noundef nonnull dereferenceable(12) @.str.43) #11
  %.not85.i = icmp eq i32 %i.fu, 0
  br i1 %.not85.i, label %bb.an, label %bb.at

bb.an:                                            ; preds = %.lr.ph.i34
  %i.fv = call ptr @strmap_get(ptr noundef nonnull @delay, ptr noundef nonnull %i.fp) #9 ; 3 uses
  %.not86.i = icmp eq ptr %i.fv, null             ; 2 uses
  br i1 %.not86.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !40
  %.not87.i = icmp eq i32 %i.fw, 0
  br i1 %.not87.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 1, ptr %i.fv, align 8, !tbaa !40
  br label %add_delay_entry.exit.i

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.fx = load i32, ptr @always_delay, align 4
  %8 = icmp ne i32 %i.fx, 0
  %or.cond.i = select i1 %.not86.i, i1 %8, i1 false
  br i1 %or.cond.i, label %bb.ar, label %add_delay_entry.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.fy = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #9 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 1, ptr %i.fz, align 4, !tbaa !39
  store i32 1, ptr %i.fy, align 8, !tbaa !40
  %i.ga = call ptr @strmap_put(ptr noundef nonnull @delay, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fy) #9
  %.not.i101.i = icmp eq ptr %i.ga, null
  br i1 %.not.i101.i, label %add_delay_entry.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.19, i32 noundef 145, ptr noundef nonnull @.str.20) #10
  unreachable

bb.at:                                            ; preds = %.lr.ph.i34
  %i.gb = call zeroext i1 @starts_with(ptr noundef nonnull %i.ft, ptr noundef nonnull @.str.44) #9
  br i1 %i.gb, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gc = call zeroext i1 @starts_with(ptr noundef nonnull %i.ft, ptr noundef nonnull @.str.45) #9
  br i1 %i.gc, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gd = call zeroext i1 @starts_with(ptr noundef nonnull %i.ft, ptr noundef nonnull @.str.46) #9
  br i1 %i.gd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.ge = load ptr, ptr @logfile, align 8, !tbaa !36
  %i.gf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.ft) #9 ; 0 uses
  br label %add_delay_entry.exit.i

bb.ax:                                            ; preds = %bb.av
  call void (ptr, ...) @die(ptr noundef nonnull @.str.47, ptr noundef nonnull %i.ft) #10
  unreachable

add_delay_entry.exit.i:                           ; preds = %bb.aw, %bb.ar, %bb.aq, %bb.ap
  %i.gg = call ptr @packet_read_line(i32 noundef 0, ptr noundef null) #9 ; 2 uses
  %.not67.i = icmp eq ptr %i.gg, null
  br i1 %.not67.i, label %._crit_edge.i35, label %.lr.ph.i34, !llvm.loop !15

._crit_edge.i35:                                  ; preds = %add_delay_entry.exit.i, %bb.am
  %i.gh = call i64 @read_packetized_to_strbuf(i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0) #9 ; 0 uses
  %i.gi = load ptr, ptr @logfile, align 8, !tbaa !36
  %i.gj = load i64, ptr %i.cq, align 8, !tbaa !54
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.48, i64 noundef %i.gj) #9 ; 0 uses
  %i.gl = call ptr @strmap_get(ptr noundef nonnull @delay, ptr noundef nonnull %i.fp) #9 ; 2 uses
  %.not68.i = icmp eq ptr %i.gl, null
  br i1 %.not68.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i35
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !55 ; 2 uses
  %.not69.i = icmp eq ptr %i.gn, null
  br i1 %.not69.i, label %bb.az, label %rot13.exit.i

bb.az:                                            ; preds = %bb.ay, %._crit_edge.i35
  %i.go = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fp, ptr noundef nonnull dereferenceable(8) @.str.49) #11
  %.not70.i = icmp eq i32 %i.go, 0
  br i1 %.not70.i, label %rot13.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fp, ptr noundef nonnull dereferenceable(8) @.str.50) #11
  %.not71.i = icmp eq i32 %i.gp, 0
  br i1 %.not71.i, label %rot13.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dm, ptr noundef nonnull dereferenceable(6) @.str.8) #11
  %i.gr = icmp eq i32 %i.gq, 0
  %.b64.i = load i1, ptr @has_clean_cap, align 4
  %or.cond3.i = select i1 %i.gr, i1 %.b64.i, i1 false
  br i1 %or.cond3.i, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gs = load ptr, ptr %i.cr, align 8, !tbaa !56 ; 4 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !41  ; 2 uses
  %.not10.i.i = icmp eq i8 %i.gt, 0
  br i1 %.not10.i.i, label %rot13.exit.i, label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %bb.bc, %bb.be
  %i.gu = phi i8 [ %i.hd, %bb.be ], [ %i.gt, %bb.bc ] ; 3 uses
  %.011.i.i = phi ptr [ %i.hc, %bb.be ], [ %i.gs, %bb.bc ] ; 2 uses
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !41
  %i.gy = and i8 %i.gx, 4
  %.not8.i.i = icmp eq i8 %i.gy, 0
  br i1 %.not8.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i102.i
  %spec.select.i9.i.i = or i8 %i.gu, 32
  %i.gz = icmp ult i8 %spec.select.i9.i.i, 110
  %i.ha = select i1 %i.gz, i8 13, i8 -13
  %i.hb = add i8 %i.ha, %i.gu
  store i8 %i.hb, ptr %.011.i.i, align 1, !tbaa !41
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i102.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !41  ; 2 uses
  %.not.i103.i = icmp eq i8 %i.hd, 0
  br i1 %.not.i103.i, label %rot13.exit.i, label %.lr.ph.i102.i, !llvm.loop !16

bb.bf:                                            ; preds = %bb.bb
  %i.he = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dm, ptr noundef nonnull dereferenceable(7) @.str.7) #11
  %i.hf = icmp eq i32 %i.he, 0
  %.b.i = load i1, ptr @has_smudge_cap, align 4
  %or.cond5.i = select i1 %i.hf, i1 %.b.i, i1 false
  br i1 %or.cond5.i, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.hg = load ptr, ptr %i.cr, align 8, !tbaa !56 ; 4 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !41  ; 2 uses
  %.not10.i105.i = icmp eq i8 %i.hh, 0
  br i1 %.not10.i105.i, label %rot13.exit.i, label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %bb.bg, %bb.bi
  %i.hi = phi i8 [ %i.hr, %bb.bi ], [ %i.hh, %bb.bg ] ; 3 uses
  %.011.i107.i = phi ptr [ %i.hq, %bb.bi ], [ %i.hg, %bb.bg ] ; 2 uses
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !41
  %i.hm = and i8 %i.hl, 4
  %.not8.i108.i = icmp eq i8 %i.hm, 0
  br i1 %.not8.i108.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i106.i
  %spec.select.i9.i109.i = or i8 %i.hi, 32
  %i.hn = icmp ult i8 %spec.select.i9.i109.i, 110
  %i.ho = select i1 %i.hn, i8 13, i8 -13
  %i.hp = add i8 %i.ho, %i.hi
  store i8 %i.hp, ptr %.011.i107.i, align 1, !tbaa !41
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph.i106.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.011.i107.i, i64 1 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !41  ; 2 uses
  %.not.i110.i = icmp eq i8 %i.hr, 0
  br i1 %.not.i110.i, label %rot13.exit.i, label %.lr.ph.i106.i, !llvm.loop !16

bb.bj:                                            ; preds = %bb.bf
  call void (ptr, ...) @die(ptr noundef nonnull @.str.52, ptr noundef nonnull %i.dm) #10
  unreachable

rot13.exit.i:                                     ; preds = %bb.bi, %bb.be, %bb.bg, %bb.bc, %bb.ba, %bb.az, %bb.ay
  %.055.i = phi ptr [ %i.gn, %bb.ay ], [ @.str.51, %bb.az ], [ %i.gs, %bb.be ], [ @.str.51, %bb.ba ], [ %i.gs, %bb.bc ], [ %i.hg, %bb.bg ], [ %i.hg, %bb.bi ] ; 4 uses
  %i.hs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fp, ptr noundef nonnull dereferenceable(8) @.str.49) #11
  %.not72.i = icmp eq i32 %i.hs, 0
  br i1 %.not72.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %rot13.exit.i
  %i.ht = load ptr, ptr @logfile, align 8, !tbaa !36
  %fwrite73.i = call i64 @fwrite(ptr nonnull @.str.53, i64 8, i64 1, ptr %i.ht) ; 0 uses
  call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.54) #9
  call void @packet_flush(i32 noundef 1) #9
  br label %bb.bz

bb.bl:                                            ; preds = %rot13.exit.i
  %i.hu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fp, ptr noundef nonnull dereferenceable(8) @.str.50) #11
  %.not74.i = icmp eq i32 %i.hu, 0
  br i1 %.not74.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hv = load ptr, ptr @logfile, align 8, !tbaa !36
  %fwrite75.i = call i64 @fwrite(ptr nonnull @.str.55, i64 8, i64 1, ptr %i.hv) ; 0 uses
  call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.56) #9
  call void @packet_flush(i32 noundef 1) #9
  br label %bb.bz

bb.bn:                                            ; preds = %bb.bl
  %i.hw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dm, ptr noundef nonnull dereferenceable(7) @.str.7) #11
  %.not76.i = icmp eq i32 %i.hw, 0
  br i1 %.not76.i, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.hx = call ptr @strmap_get(ptr noundef nonnull @delay, ptr noundef nonnull %i.fp) #9 ; 4 uses
  %.not77.i = icmp eq ptr %i.hx, null
  br i1 %.not77.i, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !40
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ia = load ptr, ptr @logfile, align 8, !tbaa !36
  %fwrite78.i = call i64 @fwrite(ptr nonnull @.str.57, i64 10, i64 1, ptr %i.ia) ; 0 uses
  call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.58) #9
  call void @packet_flush(i32 noundef 1) #9
  store i32 2, ptr %i.hx, align 8, !tbaa !40
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !55 ; 2 uses
  %.not79.i = icmp eq ptr %i.ic, %.055.i
  br i1 %.not79.i, label %bb.bz, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @free(ptr noundef %i.ic) #9
  %i.id = call ptr @xstrdup(ptr noundef nonnull %.055.i) #9
  store ptr %i.id, ptr %i.ib, align 8, !tbaa !55
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4, !tbaa !57
  call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.59) #9
  call void @packet_flush(i32 noundef 1) #9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %bb.bs
  %.07.i.i = phi ptr [ %i.fp, %bb.bs ], [ %i.if, %bb.bu ] ; 3 uses
  %.06.i.i = phi ptr [ %i.dm, %bb.bs ], [ %i.ih, %bb.bu ] ; 2 uses
  %i.ie = load i8, ptr %.06.i.i, align 1, !tbaa !41 ; 2 uses
  %.not.i113.i = icmp eq i8 %i.ie, 0
  br i1 %.not.i113.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.if = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.ig = load i8, ptr %.07.i.i, align 1, !tbaa !41
  %i.ih = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 1
  %i.ii = icmp eq i8 %i.ig, %i.ie
  br i1 %i.ii, label %bb.bt, label %skip_prefix_impl.exit.i, !llvm.loop !17

bb.bv:                                            ; preds = %bb.bt
  %i.ij = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.07.i.i, ptr noundef nonnull dereferenceable(14) @.str.60) #11
  %.not80.i = icmp eq i32 %i.ij, 0
  br i1 %.not80.i, label %bb.bw, label %skip_prefix_impl.exit.i

bb.bw:                                            ; preds = %bb.bv
  %i.ik = load ptr, ptr @logfile, align 8, !tbaa !36
  %fwrite81.i = call i64 @fwrite(ptr nonnull @.str.61, i64 13, i64 1, ptr %i.ik) ; 0 uses
  call void (ptr, ...) @die(ptr noundef nonnull @.str.62, ptr noundef nonnull %i.dm) #10
  unreachable

skip_prefix_impl.exit.i:                          ; preds = %bb.bu, %bb.bv
  %i.il = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.055.i) #11 ; 2 uses
  %i.im = load ptr, ptr @logfile, align 8, !tbaa !36
  %i.in = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.im, ptr noundef nonnull @.str.63, i64 noundef %i.il) #9 ; 0 uses
end_hunk_0
