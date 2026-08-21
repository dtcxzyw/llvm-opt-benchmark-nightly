inline.NumInlined: 332
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mkv_write_header:bb.a
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %mkv_start_seekhead.exit
  %i.bw = tail call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.bu) #14 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %mkv_write_info.exit.thread, label %._crit_edge.i

mkv_write_info.exit.thread:                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %mkv_write_tags.exit.thread

._crit_edge.i:                                    ; preds = %bb.h
  %.pre126.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %mkv_start_seekhead.exit
  %.pre126.i = phi ptr [ %.pre126.pre.i, %._crit_edge.i ], [ %i.bv, %mkv_start_seekhead.exit ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 368
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !57
  %.not6.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not4.i.i.i, label %put_ebml_void.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bp, %bb.j ]
  %i.ca = add nsw i32 %.05.i.i.i.i, -1            ; 3 uses
  %i.cb = shl nsw i32 %i.ca, 3
  %i.cc = lshr i32 236, %i.cb
  tail call void @avio_w8(ptr noundef %.pre126.i, i32 noundef %i.cc) #14
  %.not.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i, label %put_ebml_void.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !51

put_ebml_void.exit.i.i:                           ; preds = %.lr.ph.i.i.i.i, %bb.j
  tail call void @avio_w8(ptr noundef %.pre126.i, i32 noundef 132) #14
  tail call void @ffio_fill(ptr noundef %.pre126.i, i32 noundef 0, i64 noundef 4) #14
  %.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %put_ebml_void.exit.i.i, %bb.i
  %i.cd = phi ptr [ %.pre.i, %put_ebml_void.exit.i.i ], [ %.pre126.i, %bb.i ] ; 37 uses
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 42), align 2, !tbaa !50
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cf, 23
  %i.ch = lshr i32 %i.cg, 3
  br label %.lr.ph.i.i.i99

.lr.ph.i.i.i99:                                   ; preds = %.lr.ph.i.i.i99, %bb.k
  %.05.i.i.i100 = phi i32 [ %i.ci, %.lr.ph.i.i.i99 ], [ %i.ch, %bb.k ]
  %i.ci = add nsw i32 %.05.i.i.i100, -1           ; 3 uses
  %i.cj = shl nsw i32 %i.ci, 3
  %i.ck = lshr i32 2807729, %i.cj
  %i.cl = and i32 %i.ck, 255
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.cl) #14
  %.not.i.i.i101 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i101, label %.lr.ph.i.i151.preheader, label %.lr.ph.i.i.i99, !llvm.loop !51

.lr.ph.i.i151.preheader:                          ; preds = %.lr.ph.i.i.i99
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 131) #14
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 15) #14
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 66) #14
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 64) #14
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !40
  %i.co = tail call ptr @av_dict_get(ptr noundef %i.cn, ptr noundef nonnull @.str.48, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not.i102 = icmp eq ptr %i.co, null
  br i1 %.not.i102, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i151.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !59 ; 2 uses
  %i.cr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cq) #15 ; 2 uses
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 123), align 1, !tbaa !50
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.ct, 15
  %i.cv = lshr i32 %i.cu, 3
  br label %.lr.ph.i.i.i60.i

.lr.ph.i.i.i60.i:                                 ; preds = %.lr.ph.i.i.i60.i, %bb.l
  %.05.i.i.i61.i = phi i32 [ %i.cw, %.lr.ph.i.i.i60.i ], [ %i.cv, %bb.l ]
  %i.cw = add nsw i32 %.05.i.i.i61.i, -1          ; 3 uses
  %i.cx = shl nsw i32 %i.cw, 3
  %i.cy = lshr i32 31657, %i.cx
  %i.cz = and i32 %i.cy, 251
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.cz) #14
  %.not.i.i.i62.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i62.i, label %put_ebml_string.exit.i, label %.lr.ph.i.i.i60.i, !llvm.loop !51

put_ebml_string.exit.i:                           ; preds = %.lr.ph.i.i.i60.i
  %i.da = trunc i64 %i.cr to i32
  %sext.i.i = shl i64 %i.cr, 32
  %i.db = ashr exact i64 %sext.i.i, 32
  tail call fastcc void @put_ebml_length(ptr noundef %i.cd, i64 noundef %i.db, i32 noundef 0)
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull %i.cq, i32 noundef %i.da) #14
  br label %bb.m

bb.m:                                             ; preds = %put_ebml_string.exit.i, %.lr.ph.i.i151.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !61
  %i.de = and i32 %i.dd, 1024
  %.not53.i = icmp eq i32 %i.de, 0
  %i.df = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 77), align 1, !tbaa !50
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dg, 15
  %i.di = lshr i32 %i.dh, 3                       ; 2 uses
  br i1 %.not53.i, label %.lr.ph.i.i.i64.i, label %.lr.ph.i.i.i86.i

.lr.ph.i.i.i64.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i64.i
  %.05.i.i.i65.i = phi i32 [ %i.dj, %.lr.ph.i.i.i64.i ], [ %i.di, %bb.m ]
  %i.dj = add nsw i32 %.05.i.i.i65.i, -1          ; 3 uses
  %i.dk = shl nsw i32 %i.dj, 3
  %i.dl = lshr i32 19840, %i.dk
  %i.dm = and i32 %i.dl, 205
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.dm) #14
  %.not.i.i.i66.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i66.i, label %.lr.ph.i.i143.preheader, label %.lr.ph.i.i.i64.i, !llvm.loop !51

.lr.ph.i.i143.preheader:                          ; preds = %.lr.ph.i.i.i64.i
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 140) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull @.str.49, i32 noundef 12) #14
  %i.dn = load ptr, ptr %i.cm, align 8, !tbaa !40
  %i.do = tail call ptr @av_dict_get(ptr noundef %i.dn, ptr noundef nonnull @.str.50, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not54.i = icmp eq ptr %i.do, null
  br i1 %.not54.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i143.preheader
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !59 ; 2 uses
  %i.dr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dq) #15 ; 2 uses
  %i.ds = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 87), align 1, !tbaa !50
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dt, 15
  %i.dv = lshr i32 %i.du, 3
  br label %.lr.ph.i.i.i70.i

.lr.ph.i.i.i70.i:                                 ; preds = %.lr.ph.i.i.i70.i, %bb.n
  %.05.i.i.i71.i = phi i32 [ %i.dw, %.lr.ph.i.i.i70.i ], [ %i.dv, %bb.n ]
  %i.dw = add nsw i32 %.05.i.i.i71.i, -1          ; 3 uses
  %i.dx = shl nsw i32 %i.dw, 3
  %i.dy = lshr i32 22337, %i.dx
  %i.dz = and i32 %i.dy, 87
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.dz) #14
  %.not.i.i.i72.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i.i72.i, label %put_ebml_string.exit74.i, label %.lr.ph.i.i.i70.i, !llvm.loop !51

put_ebml_string.exit74.i:                         ; preds = %.lr.ph.i.i.i70.i
  %i.ea = trunc i64 %i.dr to i32
  %sext.i73.i = shl i64 %i.dr, 32
  %i.eb = ashr exact i64 %sext.i73.i, 32
  tail call fastcc void @put_ebml_length(ptr noundef %i.cd, i64 noundef %i.eb, i32 noundef 0)
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull %i.dq, i32 noundef %i.ea) #14
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i143.preheader
  %i.ec = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 87), align 1, !tbaa !50
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 15
  %i.ef = lshr i32 %i.ee, 3
  br label %.lr.ph.i.i.i76.i

.lr.ph.i.i.i76.i:                                 ; preds = %.lr.ph.i.i.i76.i, %bb.o
  %.05.i.i.i77.i = phi i32 [ %i.eg, %.lr.ph.i.i.i76.i ], [ %i.ef, %bb.o ]
  %i.eg = add nsw i32 %.05.i.i.i77.i, -1          ; 3 uses
  %i.eh = shl nsw i32 %i.eg, 3
  %i.ei = lshr i32 22337, %i.eh
  %i.ej = and i32 %i.ei, 87
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.ej) #14
  %.not.i.i.i78.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i78.i, label %.lr.ph.i.i135.preheader, label %.lr.ph.i.i.i76.i, !llvm.loop !51

.lr.ph.i.i135.preheader:                          ; preds = %.lr.ph.i.i.i76.i
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 140) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull @.str.49, i32 noundef 12) #14
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i135.preheader, %put_ebml_string.exit74.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !27
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.en = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 115), align 1, !tbaa !50
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %i.eo, 15
  %i.eq = lshr i32 %i.ep, 3
  br label %.lr.ph.i.i81.i

.lr.ph.i.i81.i:                                   ; preds = %.lr.ph.i.i81.i, %bb.q
  %.05.i.i82.i = phi i32 [ %i.er, %.lr.ph.i.i81.i ], [ %i.eq, %bb.q ]
  %i.er = add nsw i32 %.05.i.i82.i, -1            ; 3 uses
  %i.es = shl nsw i32 %i.er, 3
  %i.et = lshr i32 29604, %i.es
  %i.eu = and i32 %i.et, 247
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.eu) #14
  %.not.i.i83.i = icmp eq i32 %i.er, 0
  br i1 %.not.i.i83.i, label %.lr.ph.i.i115.preheader.i, label %.lr.ph.i.i81.i, !llvm.loop !51

.lr.ph.i.i115.preheader.i:                        ; preds = %.lr.ph.i.i81.i
  %3 = getelementptr inbounds nuw i8, ptr %i.bt, i64 400
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 144) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull %3, i32 noundef 16) #14
  br label %bb.r

.lr.ph.i.i.i86.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i86.i
  %.05.i.i.i87.i = phi i32 [ %i.ev, %.lr.ph.i.i.i86.i ], [ %i.di, %bb.m ]
  %i.ev = add nsw i32 %.05.i.i.i87.i, -1          ; 3 uses
  %i.ew = shl nsw i32 %i.ev, 3
  %i.ex = lshr i32 19840, %i.ew
  %i.ey = and i32 %i.ex, 205
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.ey) #14
  %.not.i.i.i88.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i88.i, label %.lr.ph.i.i127.preheader, label %.lr.ph.i.i.i86.i, !llvm.loop !51

.lr.ph.i.i127.preheader:                          ; preds = %.lr.ph.i.i.i86.i
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 132) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull @.str.51, i32 noundef 4) #14
  %i.ez = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 87), align 1, !tbaa !50
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.fa, 15
  %i.fc = lshr i32 %i.fb, 3
  br label %.lr.ph.i.i.i92.i

.lr.ph.i.i.i92.i:                                 ; preds = %.lr.ph.i.i.i92.i, %.lr.ph.i.i127.preheader
  %.05.i.i.i93.i = phi i32 [ %i.fd, %.lr.ph.i.i.i92.i ], [ %i.fc, %.lr.ph.i.i127.preheader ]
  %i.fd = add nsw i32 %.05.i.i.i93.i, -1          ; 3 uses
  %i.fe = shl nsw i32 %i.fd, 3
  %i.ff = lshr i32 22337, %i.fe
  %i.fg = and i32 %i.ff, 87
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.fg) #14
  %.not.i.i.i94.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i.i94.i, label %.lr.ph.i.i122.preheader, label %.lr.ph.i.i.i92.i, !llvm.loop !51

.lr.ph.i.i122.preheader:                          ; preds = %.lr.ph.i.i.i92.i
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 132) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull @.str.51, i32 noundef 4) #14
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i122.preheader, %.lr.ph.i.i115.preheader.i, %bb.p
  %i.fh = call i32 @ff_parse_creation_time_metadata(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 0) #14
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fj = load i64, ptr %i.d, align 8, !tbaa !62
  %i.fk = mul i64 %i.fj, 1000
  %i.fl = add i64 %i.fk, -978307200000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.fm = call noundef i64 @llvm.bswap.i64(i64 %i.fl)
  store i64 %i.fm, ptr %i.e, align 8, !tbaa !50
  %i.fn = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 68), align 4, !tbaa !50
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nuw nsw i32 %i.fo, 15
  %i.fq = lshr i32 %i.fp, 3
  br label %.lr.ph.i.i97.i

.lr.ph.i.i97.i:                                   ; preds = %.lr.ph.i.i97.i, %bb.s
  %.05.i.i98.i = phi i32 [ %i.fr, %.lr.ph.i.i97.i ], [ %i.fq, %bb.s ]
  %i.fr = add nsw i32 %.05.i.i98.i, -1            ; 3 uses
  %i.fs = shl nsw i32 %i.fr, 3
  %i.ft = lshr i32 17505, %i.fs
  %i.fu = and i32 %i.ft, 101
  call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.fu) #14
  %.not.i.i99.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i99.i, label %.lr.ph.i.i120.preheader.i, label %.lr.ph.i.i97.i, !llvm.loop !51

.lr.ph.i.i120.preheader.i:                        ; preds = %.lr.ph.i.i97.i
  call void @avio_w8(ptr noundef %i.cd, i32 noundef 136) #14
  call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull %i.e, i32 noundef 8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i120.preheader.i, %bb.r
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  store i64 0, ptr %i.fv, align 8, !tbaa !63
  %i.fw = call i64 @avio_seek(ptr noundef %i.cd, i64 noundef 0, i32 noundef 1) #14
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bt, i64 372
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !65
  %.not55.i = icmp eq i32 %i.fz, 0
  br i1 %.not55.i, label %bb.u, label %mkv_write_info.exit

bb.u:                                             ; preds = %bb.t
  %i.ga = load ptr, ptr %i.cm, align 8, !tbaa !40
  %i.gb = call ptr @av_dict_get(ptr noundef %i.ga, ptr noundef nonnull @.str.56, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.not.i102.i = icmp eq ptr %i.gb, null
  br i1 %.not.i102.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !59
  %i.ge = call i32 @av_parse_time(ptr noundef nonnull %i.b, ptr noundef %i.gd, i32 noundef 1) #14
  %i.gf = icmp eq i32 %i.ge, 0
  %i.gg = load i64, ptr %i.b, align 8             ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, 0
  %or.cond.i.i = select i1 %i.gf, i1 %i.gh, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.57, i64 noundef %i.gg) #14
  %i.gi = load i64, ptr %i.b, align 8, !tbaa !62
  br label %get_metadata_duration.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.gj = load i32, ptr %i.u, align 4, !tbaa !41
  %.not25.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.ab, %bb.x
  %.017.lcssa.i.i = phi i64 [ 0, %bb.x ], [ %.1.i.i, %bb.ab ] ; 2 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.58, i64 noundef %.017.lcssa.i.i) #14
  br label %get_metadata_duration.exit.i

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i.i
  %indvars.iv.i103.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i104.i, %bb.ab ] ; 2 uses
  %.01723.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !66
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.i103.i
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !67
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !69
  %i.gq = call ptr @av_dict_get(ptr noundef %i.gp, ptr noundef nonnull @.str.56, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.gq, null
  br i1 %.not22.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !59
  %i.gt = call i32 @av_parse_time(ptr noundef nonnull %i.c, ptr noundef %i.gs, i32 noundef 1) #14
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gv = load i64, ptr %i.c, align 8, !tbaa !62
  %i.gw = call i64 @llvm.smax.i64(i64 %.01723.i.i, i64 %i.gv)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.i.i = phi i64 [ %i.gw, %bb.aa ], [ %.01723.i.i, %bb.z ], [ %.01723.i.i, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %indvars.iv.next.i104.i = add nuw nsw i64 %indvars.iv.i103.i, 1 ; 2 uses
  %i.gx = load i32, ptr %i.u, align 4, !tbaa !41
  %i.gy = zext i32 %i.gx to i64
  %i.gz = icmp samesign ult i64 %indvars.iv.next.i104.i, %i.gy
  br i1 %i.gz, label %bb.y, label %._crit_edge.i.i, !llvm.loop !76

get_metadata_duration.exit.i:                     ; preds = %._crit_edge.i.i, %bb.w
  %.018.i.i = phi i64 [ %i.gi, %bb.w ], [ %.017.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !77 ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, 0
  br i1 %i.hc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %get_metadata_duration.exit.i
  %i.hd = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 68), align 4, !tbaa !50
  %i.he = zext i8 %i.hd to i32
  %i.hf = add nuw nsw i32 %i.he, 15
  %i.hg = lshr i32 %i.hf, 3
  br label %.lr.ph.i.i105.i

.lr.ph.i.i105.i:                                  ; preds = %.lr.ph.i.i105.i, %bb.ac
  %.05.i.i106.i = phi i32 [ %i.hh, %.lr.ph.i.i105.i ], [ %i.hg, %bb.ac ]
  %i.hh = add nsw i32 %.05.i.i106.i, -1           ; 3 uses
  %i.hi = shl nsw i32 %i.hh, 3
  %i.hj = lshr i32 17545, %i.hi
  %i.hk = and i32 %i.hj, 205
  call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.hk) #14
  %.not.i.i107.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i107.i, label %put_ebml_float.exit.i, label %.lr.ph.i.i105.i, !llvm.loop !51

put_ebml_float.exit.i:                            ; preds = %.lr.ph.i.i105.i
  %i.hl = call i64 @av_rescale(i64 noundef %i.hb, i64 noundef 1000, i64 noundef 1000000) #16 ; 2 uses
  %i.hm = sitofp nsz i64 %i.hl to double
  call void @avio_w8(ptr noundef %i.cd, i32 noundef 136) #14
  %i.hn = bitcast double %i.hm to i64
  call void @avio_wb64(ptr noundef %i.cd, i64 noundef %i.hn) #14
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.52, i64 noundef %i.hl) #14
  br label %mkv_write_info.exit

bb.ad:                                            ; preds = %get_metadata_duration.exit.i
  %i.ho = icmp sgt i64 %.018.i.i, 0
  br i1 %i.ho, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hp = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 68), align 4, !tbaa !50
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add nuw nsw i32 %i.hq, 15
  %i.hs = lshr i32 %i.hr, 3
  br label %.lr.ph.i.i109.i

.lr.ph.i.i109.i:                                  ; preds = %.lr.ph.i.i109.i, %bb.ae
  %.05.i.i110.i = phi i32 [ %i.ht, %.lr.ph.i.i109.i ], [ %i.hs, %bb.ae ]
  %i.ht = add nsw i32 %.05.i.i110.i, -1           ; 3 uses
end_hunk_0
begin_hunk_1_@mkv_write_trailer:bb.a
bb.bd:                                            ; preds = %bb.ba
  %i.kf = load i32, ptr %i.bs, align 4, !tbaa !109
  %.not215 = icmp eq i32 %i.kf, 0
  br i1 %.not215, label %bb.be, label %start_ebml_master_crc32.exit

bb.be:                                            ; preds = %bb.bd
  %i.kg = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef 0, i32 noundef 1) #14
  br label %start_ebml_master_crc32.exit

start_ebml_master_crc32.exit.thread274:           ; preds = %bb.m, %.loopexit280, %bb.am, %bb.av, %bb.ay
  %.0.ph = phi i32 [ %i.jy, %.loopexit280 ], [ %i.js, %bb.ay ], [ %i.jl, %bb.av ], [ %i.ij, %bb.am ], [ %i.bu, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.cb

start_ebml_master_crc32.exit:                     ; preds = %bb.bc, %bb.bb, %bb.be, %bb.bd, %bb.as
  %.0175 = phi i32 [ 0, %bb.bc ], [ 0, %bb.bd ], [ -22, %bb.as ], [ 0, %bb.be ], [ 0, %bb.bb ]
  %.3173 = phi i64 [ %.1171, %bb.bc ], [ %.1171, %bb.bd ], [ %i.aa, %bb.as ], [ %i.kg, %bb.be ], [ %.1171, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.bf

bb.bf:                                            ; preds = %start_ebml_master_crc32.exit, %bb.i, %bb.j
  %.1176 = phi i32 [ 0, %bb.i ], [ %.0175, %start_ebml_master_crc32.exit ], [ 0, %bb.j ]
  %.4174 = phi i64 [ %i.aa, %bb.i ], [ %.3173, %start_ebml_master_crc32.exit ], [ %i.aa, %bb.j ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !53 ; 2 uses
  %i.kj = sub nsw i64 %.4174, %i.ki
  %i.kk = icmp ult i64 %i.kj, 72057594037927935
  br i1 %i.kk, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.kl = add nsw i64 %i.ki, -8
  %i.km = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %i.kl, i32 noundef 0) #14 ; 2 uses
  %i.kn = icmp slt i64 %i.km, 0
  br i1 %i.kn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ko = trunc i64 %i.km to i32
  br label %bb.cb

bb.bi:                                            ; preds = %bb.bg
  %i.kp = load i64, ptr %i.kh, align 8, !tbaa !53
  %i.kq = sub nsw i64 %.4174, %i.kp
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.g, i64 noundef %i.kq, i32 noundef 8)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %i.kr = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !156
  %i.ku = call fastcc i32 @mkv_write_seekhead(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i32 noundef 1, i64 noundef %i.kt) ; 2 uses
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %bb.cb, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kw = load ptr, ptr %i.kr, align 8, !tbaa !58
  %.not217 = icmp eq ptr %i.kw, null
  br i1 %.not217, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kx = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !63
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.109, i64 noundef %i.ky) #14
  %i.kz = load ptr, ptr %i.kr, align 8, !tbaa !58
  %i.la = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !64
  %i.lc = call i64 @avio_seek(ptr noundef %i.kz, i64 noundef %i.lb, i32 noundef 0) #14 ; 0 uses
  %i.ld = load ptr, ptr %i.kr, align 8, !tbaa !58
  %i.le = load i64, ptr %i.kx, align 8, !tbaa !63
  %i.lf = sitofp nsz i64 %i.le to double
  call fastcc void @put_ebml_float(ptr noundef %i.ld, i32 noundef 17545, double noundef %i.lf)
  %i.lg = call fastcc i32 @end_ebml_master_crc32(ptr noundef nonnull %i.g, ptr noundef nonnull %i.kr, ptr noundef nonnull %i.e, i32 noundef 357149030, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.lh = icmp slt i32 %i.lg, 0
  br i1 %i.lh, label %bb.cb, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.li = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !121 ; 16 uses
  %.not218 = icmp eq ptr %i.lj, null
  br i1 %.not218, label %bb.bv, label %.preheader279

.preheader279:                                    ; preds = %bb.bm
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !41
  %.not323 = icmp eq i32 %i.ll, 0
  br i1 %.not323, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader279
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ln = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 85), align 1
  %i.lo = zext i8 %i.ln to i32
  %i.lp = add nuw nsw i32 %i.lo, 15
  %i.lq = lshr i32 %i.lp, 3
  %i.lr = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 65), align 1
  %i.ls = zext i8 %i.lr to i32
  %i.lt = add nuw nsw i32 %i.ls, 15
  %i.lu = lshr i32 %i.lt, 3                       ; 2 uses
  br label %bb.bn

._crit_edge:                                      ; preds = %end_ebml_master.exit, %.preheader279
  %i.lv = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !157
  %i.lx = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %i.lw, i32 noundef 0) #14 ; 0 uses
  %i.ly = call fastcc i32 @end_ebml_master_crc32(ptr noundef nonnull %i.g, ptr noundef nonnull %i.li, ptr noundef nonnull %i.e, i32 noundef 374648427, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.lz = icmp sgt i32 %i.ly, -1
  br i1 %i.lz, label %bb.bv, label %bb.cb

bb.bn:                                            ; preds = %.lr.ph, %end_ebml_master.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %end_ebml_master.exit ] ; 2 uses
  %i.ma = load ptr, ptr %i.lm, align 8, !tbaa !86
  %i.mb = getelementptr inbounds nuw [120 x i8], ptr %i.ma, i64 %indvars.iv ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 64 ; 3 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !158 ; 2 uses
  %.not220 = icmp eq i64 %i.md, 0
  br i1 %.not220, label %end_ebml_master.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.me = icmp ult i64 %i.md, 256
  br i1 %i.me, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.47, i32 noundef 3429) #14
  call void @abort() #17
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 72
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !159
  %i.mh = call i64 @avio_seek(ptr noundef nonnull %i.lj, i64 noundef %i.mg, i32 noundef 0) #14 ; 0 uses
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !158 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i233, %bb.br ], [ 1, %bb.bq ] ; 3 uses
  %.0.i231 = phi i64 [ %i.mj, %bb.br ], [ %i.mi, %bb.bq ]
  %i.mj = lshr i64 %.0.i231, 8                    ; 2 uses
  %.not.i232 = icmp eq i64 %i.mj, 0
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i230, 1
  br i1 %.not.i232, label %.lr.ph.i.i, label %bb.br, !llvm.loop !142

.lr.ph.i.i:                                       ; preds = %bb.br, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.mk, %.lr.ph.i.i ], [ %i.lq, %bb.br ]
  %i.mk = add nsw i32 %.05.i.i, -1                ; 3 uses
  %i.ml = shl nsw i32 %i.mk, 3
  %i.mm = lshr i32 21998, %i.ml
  %i.mn = and i32 %i.mm, 255
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef %i.mn) #14
  %.not.i.i234 = icmp eq i32 %i.mk, 0
  br i1 %.not.i.i234, label %put_ebml_id.exit.i, label %.lr.ph.i.i, !llvm.loop !51

put_ebml_id.exit.i:                               ; preds = %.lr.ph.i.i
  %i.mo = and i64 %indvars.iv.i230, 4294967295
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.lj, i64 noundef %i.mo, i32 noundef 0)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %put_ebml_id.exit.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.i230, %put_ebml_id.exit.i ], [ %indvars.iv.next17.i, %bb.bs ] ; 2 uses
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, -1 ; 2 uses
  %i.mp = shl nsw i64 %indvars.iv.next17.i, 3
  %i.mq = lshr i64 %i.mi, %i.mp
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = and i32 %i.mr, 255
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef %i.ms) #14
  %i.mt = icmp sgt i64 %indvars.iv16.i, 1
  br i1 %i.mt, label %bb.bs, label %put_ebml_uint.exit, !llvm.loop !143

put_ebml_uint.exit:                               ; preds = %bb.bs
  %i.mu = load i64, ptr %i.mc, align 8, !tbaa !158
  %i.mv = icmp eq i64 %i.mu, 4
  br i1 %i.mv, label %bb.bt, label %end_ebml_master.exit

bb.bt:                                            ; preds = %put_ebml_uint.exit
  %i.mw = call fastcc { i64, i32 } @start_ebml_master(ptr noundef nonnull %i.lj, i32 noundef 16868, i64 noundef 8) ; 2 uses
  br label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %bb.bt, %.lr.ph.i.i240
  %.05.i.i241 = phi i32 [ %i.mx, %.lr.ph.i.i240 ], [ %i.lu, %bb.bt ]
  %i.mx = add nsw i32 %.05.i.i241, -1             ; 3 uses
  %i.my = shl nsw i32 %i.mx, 3
  %i.mz = lshr i32 16871, %i.my
  %i.na = and i32 %i.mz, 231
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef %i.na) #14
  %.not.i.i242 = icmp eq i32 %i.mx, 0
  br i1 %.not.i.i242, label %put_ebml_id.exit.i243, label %.lr.ph.i.i240, !llvm.loop !51

put_ebml_id.exit.i243:                            ; preds = %.lr.ph.i.i240
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.lj, i64 noundef 1, i32 noundef 0)
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef 4) #14
  br label %.lr.ph.i.i252, !llvm.loop !142

.lr.ph.i.i252:                                    ; preds = %put_ebml_id.exit.i243, %.lr.ph.i.i252
  %.05.i.i253 = phi i32 [ %i.nb, %.lr.ph.i.i252 ], [ %i.lu, %put_ebml_id.exit.i243 ]
  %i.nb = add nsw i32 %.05.i.i253, -1             ; 3 uses
  %i.nc = shl nsw i32 %i.nb, 3
  %i.nd = lshr i32 16880, %i.nc
  %i.ne = and i32 %i.nd, 241
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef %i.ne) #14
  %.not.i.i254 = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i254, label %put_ebml_id.exit.i255, label %.lr.ph.i.i252, !llvm.loop !51

put_ebml_id.exit.i255:                            ; preds = %.lr.ph.i.i252
  %1 = extractvalue { i64, i32 } %i.mw, 0         ; 2 uses
  %2 = extractvalue { i64, i32 } %i.mw, 1         ; 2 uses
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.lj, i64 noundef 1, i32 noundef 0)
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef 4) #14
  %i.nf = call i64 @avio_seek(ptr noundef nonnull %i.lj, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.ng = sext i32 %2 to i64
  %i.nh = sub nsw i64 %1, %i.ng
  %i.ni = call i64 @avio_seek(ptr noundef nonnull %i.lj, i64 noundef %i.nh, i32 noundef 0) #14
  %i.nj = icmp slt i64 %i.ni, 0
  br i1 %i.nj, label %end_ebml_master.exit, label %bb.bu

bb.bu:                                            ; preds = %put_ebml_id.exit.i255
  %i.nk = sub nsw i64 %i.nf, %1
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.lj, i64 noundef %i.nk, i32 noundef range(i32 -2147483647, -2147483648) %2)
  %i.nl = call i64 @avio_seek(ptr noundef nonnull %i.lj, i64 noundef %i.nf, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit

end_ebml_master.exit:                             ; preds = %bb.bu, %put_ebml_id.exit.i255, %put_ebml_uint.exit, %bb.bn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nm = load i32, ptr %i.lk, align 4, !tbaa !41
  %i.nn = zext i32 %i.nm to i64
  %i.no = icmp samesign ult i64 %indvars.iv.next, %i.nn
  br i1 %i.no, label %bb.bn, label %._crit_edge, !llvm.loop !160

bb.bv:                                            ; preds = %._crit_edge, %bb.bm
  %i.np = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !104 ; 13 uses
  %.not219 = icmp eq ptr %i.nq, null
  br i1 %.not219, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %bb.bv
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !41 ; 2 uses
  %.not324 = icmp eq i32 %i.ns, 0
  br i1 %.not324, label %._crit_edge322, label %.lr.ph321

.lr.ph321:                                        ; preds = %.preheader
  %i.nt = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nv = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 69), align 1
  %i.nw = zext i8 %i.nv to i32
  %i.nx = add nuw nsw i32 %i.nw, 15
  %i.ny = lshr i32 %i.nx, 3
  %i.nz = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 68), align 4
  %i.oa = zext i8 %i.nz to i32
  %i.ob = add nuw nsw i32 %i.oa, 15
  %i.oc = lshr i32 %i.ob, 3
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph321, %bb.bz
  %i.od = phi i32 [ %i.ns, %.lr.ph321 ], [ %i.px, %bb.bz ]
  %indvars.iv365 = phi i64 [ 0, %.lr.ph321 ], [ %indvars.iv.next366, %bb.bz ] ; 4 uses
  %i.oe = load ptr, ptr %i.nt, align 8, !tbaa !86
  %i.of = getelementptr inbounds nuw [120 x i8], ptr %i.oe, i64 %indvars.iv365 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 56 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !105
  %i.oi = icmp sgt i64 %i.oh, 0
  br i1 %i.oi, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.oj = load ptr, ptr %i.nu, align 8, !tbaa !66
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %indvars.iv365
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !67
  %i.om = getelementptr inbounds nuw i8, ptr %i.of, i64 48 ; 2 uses
  %i.on = load i64, ptr %i.om, align 8, !tbaa !161
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 32
  %i.op = load i64, ptr %i.oo, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  %i.oq = load i64, ptr %i.om, align 8, !tbaa !161
  %i.or = trunc nuw nsw i64 %indvars.iv365 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.111, i32 noundef %i.or, i64 noundef %i.oq) #14
  %i.os = load i64, ptr %i.og, align 8, !tbaa !105
  %i.ot = call i64 @avio_seek(ptr noundef nonnull %i.nq, i64 noundef %i.os, i32 noundef 0) #14 ; 0 uses
  %i.ou = call fastcc { i64, i32 } @start_ebml_master(ptr noundef nonnull %i.nq, i32 noundef 26568, i64 noundef 34) ; 2 uses
  br label %.lr.ph.i.i.i260

.lr.ph.i.i.i260:                                  ; preds = %bb.bx, %.lr.ph.i.i.i260
  %.05.i.i.i261 = phi i32 [ %i.ov, %.lr.ph.i.i.i260 ], [ %i.ny, %bb.bx ]
  %i.ov = add nsw i32 %.05.i.i.i261, -1           ; 3 uses
  %i.ow = shl nsw i32 %i.ov, 3
  %i.ox = lshr i32 17827, %i.ow
  %i.oy = and i32 %i.ox, 231
  call void @avio_w8(ptr noundef nonnull %i.nq, i32 noundef %i.oy) #14
  %.not.i.i.i262 = icmp eq i32 %i.ov, 0
  br i1 %.not.i.i.i262, label %put_ebml_string.exit, label %.lr.ph.i.i.i260, !llvm.loop !51

put_ebml_string.exit:                             ; preds = %.lr.ph.i.i.i260
  %i.oz = sitofp nsz i64 %i.on to double
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.op to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.op, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.pa = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.pb = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.pc = fdiv nsz double %i.pa, %i.pb
  %i.pd = fmul nsz double %i.pc, %i.oz            ; 2 uses
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.nq, i64 noundef 8, i32 noundef 0)
  call void @avio_write(ptr noundef nonnull %i.nq, ptr noundef nonnull @.str.56, i32 noundef 8) #14
  %i.pe = fptosi double %i.pd to i32              ; 2 uses
  %i.pf = sdiv i32 %i.pe, 3600
  %i.pg = sdiv i32 %i.pe, 60
  %i.ph = srem i32 %i.pg, 60
  %i.pi = frem nsz double %i.pd, 6.000000e+01
  %i.pj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.112, i32 noundef %i.pf, i32 noundef %i.ph, double noundef %i.pi) #14 ; 0 uses
  br label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %put_ebml_string.exit, %.lr.ph.i.i263
  %.05.i.i264 = phi i32 [ %i.pk, %.lr.ph.i.i263 ], [ %i.oc, %put_ebml_string.exit ]
  %i.pk = add nsw i32 %.05.i.i264, -1             ; 3 uses
  %i.pl = shl nsw i32 %i.pk, 3
  %i.pm = lshr i32 17543, %i.pl
  %i.pn = and i32 %i.pm, 199
  call void @avio_w8(ptr noundef nonnull %i.nq, i32 noundef %i.pn) #14
  %.not.i.i265 = icmp eq i32 %i.pk, 0
  br i1 %.not.i.i265, label %.lr.ph.i.i269.preheader, label %.lr.ph.i.i263, !llvm.loop !51

.lr.ph.i.i269.preheader:                          ; preds = %.lr.ph.i.i263
  %i.po = extractvalue { i64, i32 } %i.ou, 0      ; 2 uses
  %i.pp = extractvalue { i64, i32 } %i.ou, 1      ; 2 uses
  call void @avio_w8(ptr noundef nonnull %i.nq, i32 noundef 147) #14
  call void @avio_write(ptr noundef nonnull %i.nq, ptr noundef nonnull %i.c, i32 noundef 19) #14
  %i.pq = call i64 @avio_seek(ptr noundef nonnull %i.nq, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.pr = sext i32 %i.pp to i64
  %i.ps = sub nsw i64 %i.po, %i.pr
  %i.pt = call i64 @avio_seek(ptr noundef nonnull %i.nq, i64 noundef %i.ps, i32 noundef 0) #14
  %i.pu = icmp slt i64 %i.pt, 0
  br i1 %i.pu, label %end_ebml_master.exit267, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i269.preheader
  %i.pv = sub nsw i64 %i.pq, %i.po
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.nq, i64 noundef %i.pv, i32 noundef range(i32 -2147483647, -2147483648) %i.pp)
  %i.pw = call i64 @avio_seek(ptr noundef nonnull %i.nq, i64 noundef %i.pq, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit267

end_ebml_master.exit267:                          ; preds = %.lr.ph.i.i269.preheader, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %.pre369 = load i32, ptr %i.nr, align 4, !tbaa !41
  br label %bb.bz

bb.bz:                                            ; preds = %end_ebml_master.exit267, %bb.bw
  %i.px = phi i32 [ %.pre369, %end_ebml_master.exit267 ], [ %i.od, %bb.bw ] ; 2 uses
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.py = zext i32 %i.px to i64
  %i.pz = icmp samesign ult i64 %indvars.iv.next366, %i.py
  br i1 %i.pz, label %bb.bw, label %._crit_edge322, !llvm.loop !162

._crit_edge322:                                   ; preds = %bb.bz, %.preheader
  %i.qa = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !163
  %i.qc = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %i.qb, i32 noundef 0) #14 ; 0 uses
  %i.qd = call fastcc i32 @end_ebml_master_crc32(ptr noundef nonnull %i.g, ptr noundef nonnull %i.np, ptr noundef nonnull %i.e, i32 noundef 307544935, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.qe = icmp sgt i32 %i.qd, -1
  br i1 %i.qe, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %._crit_edge322, %bb.bv
  %i.qf = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %.4174, i32 noundef 0) #14 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %start_ebml_master_crc32.exit.thread274, %bb.bl, %bb.bj, %bb.g, %bb.h, %bb.f, %bb.e, %._crit_edge, %._crit_edge322, %bb.ca, %bb.bh, %bb.c
  %.5 = phi i32 [ %i.m, %bb.c ], [ %i.ly, %._crit_edge ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %.0.ph, %start_ebml_master_crc32.exit.thread274 ], [ %i.ko, %bb.bh ], [ 0, %bb.g ], [ %i.ku, %bb.bj ], [ %.1176, %bb.ca ], [ %i.qd, %._crit_edge322 ], [ 0, %bb.h ], [ %i.lg, %bb.bl ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @mkv_query_codec(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mkv_codec_tags, i64 24), align 4, !tbaa !164 ; 2 uses
  %.not17 = icmp eq i32 %i.a, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.b = getelementptr inbounds nuw [28 x i8], ptr @ff_mkv_codec_tags, i64 %indvars.iv.next
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !164  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !166

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ]
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %i.f = icmp eq i32 %i.e, %0
  br i1 %i.f, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = icmp slt i32 %1, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.h = tail call i32 @avcodec_get_type(i32 noundef %0) #14
  %or.cond = icmp ugt i32 %i.h, 1
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1163346256, 1) i32 @mkv_init(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.AVLFG, align 4              ; 29 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41   ; 3 uses
  %.not141 = icmp eq i32 %i.e, 0
  br i1 %.not141, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !81   ; 2 uses
  switch i32 %i.m, label %bb.d [
    i32 86047, label %bb.c
    i32 86036, label %bb.c
    i32 77825, label %bb.c
    i32 86057, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 68, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = tail call ptr @avcodec_get_name(i32 noundef %i.m) #14
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.114, ptr noundef %i.n) #14
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !169
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  store i32 1, ptr %i.o, align 8, !tbaa !169
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 1, ptr %i.r, align 8, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(5) @.str.4) #15
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 0, ptr %i.w, align 8, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ 2, %bb.g ], [ 1, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 %.sink, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !174
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !135
  %i.ab = zext i32 %i.e to i64
  %i.ac = tail call noalias ptr @av_calloc(i64 noundef %i.ab, i64 noundef 120) #14 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !86
  %.not98 = icmp eq ptr %i.ac, null
  br i1 %.not98, label %bb.an, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !61
  %i.ag = and i32 %i.af, 1024
  %.not99 = icmp eq i32 %i.ag, 0
  br i1 %.not99, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  %i.ah = tail call i32 @av_get_random_seed() #14
  call void @av_lfg_init(ptr noundef nonnull %1, i32 noundef %i.ah) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !175 ; 13 uses
  %i.al = add i32 %i.ak, 40
  %i.am = and i32 %i.al, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !49
  %i.aq = add i32 %i.ak, 9
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !49
  %i.av = add i32 %i.au, %i.ap                    ; 2 uses
  %i.aw = and i32 %i.ak, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ax
  store i32 %i.av, ptr %i.ay, align 4, !tbaa !49
  %i.az = add i32 %i.ak, 1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !49
  %i.ba = add i32 %i.ak, 41
end_hunk_1
begin_hunk_2_@mkv_write_tracks:bb.a
  %i.ia = trunc i64 %i.hv to i32
  %sext.i298.i = shl i64 %i.hv, 32
  %i.ib = ashr exact i64 %sext.i298.i, 32
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.ib, i32 noundef 0)
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull %i.hu, i32 noundef %i.ia) #14
  br i1 %narrow, label %bb.x, label %put_ebml_uint.exit312.i

bb.x:                                             ; preds = %put_ebml_string.exit299.i
  br i1 %.not4.i.i305.i, label %put_ebml_id.exit.i309.i, label %.lr.ph.i.i306.i

.lr.ph.i.i306.i:                                  ; preds = %bb.x, %.lr.ph.i.i306.i
  %.05.i.i307.i = phi i32 [ %i.ic, %.lr.ph.i.i306.i ], [ %i.ci, %bb.x ]
  %i.ic = add nsw i32 %.05.i.i307.i, -1           ; 3 uses
  %i.id = shl nsw i32 %i.ic, 3
  %i.ie = lshr i32 136, %i.id
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ie) #14
  %.not.i.i308.i = icmp eq i32 %i.ic, 0
  br i1 %.not.i.i308.i, label %put_ebml_id.exit.i309.i, label %.lr.ph.i.i306.i, !llvm.loop !51

put_ebml_id.exit.i309.i:                          ; preds = %.lr.ph.i.i306.i, %bb.x
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  br label %put_ebml_uint.exit312.i

put_ebml_uint.exit312.i:                          ; preds = %put_ebml_id.exit.i309.i, %put_ebml_string.exit299.i
  %i.if = load i32, ptr %i.fr, align 8, !tbaa !186
  %i.ig = and i32 %i.if, 64
  %.not240.i = icmp eq i32 %i.ig, 0
  br i1 %.not240.i, label %put_ebml_uint.exit325.i, label %.lr.ph.i.i319.i

.lr.ph.i.i319.i:                                  ; preds = %put_ebml_uint.exit312.i, %.lr.ph.i.i319.i
  %.05.i.i320.i = phi i32 [ %i.ih, %.lr.ph.i.i319.i ], [ %i.cm, %put_ebml_uint.exit312.i ]
  %i.ih = add nsw i32 %.05.i.i320.i, -1           ; 3 uses
  %i.ii = shl nsw i32 %i.ih, 3
  %i.ij = lshr i32 21930, %i.ii
  %i.ik = and i32 %i.ij, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ik) #14
  %.not.i.i321.i = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i321.i, label %.lr.ph.i.i197.preheader, label %.lr.ph.i.i319.i, !llvm.loop !51

.lr.ph.i.i197.preheader:                          ; preds = %.lr.ph.i.i319.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  br label %put_ebml_uint.exit325.i

put_ebml_uint.exit325.i:                          ; preds = %.lr.ph.i.i197.preheader, %put_ebml_uint.exit312.i
  %i.il = load i32, ptr %i.cn, align 8, !tbaa !27
  %i.im = icmp eq i32 %i.il, 2
  br i1 %i.im, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %put_ebml_uint.exit325.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !81 ; 2 uses
  %.not250.i = icmp eq i32 %i.io, 94226
  br i1 %.not250.i, label %bb.aa, label %.preheader626.i

.preheader626.i:                                  ; preds = %bb.y
  %i.ip = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_webm_codec_tags, i64 24), align 4, !tbaa !164 ; 2 uses
  %.not254633.i = icmp eq i32 %i.ip, 0
  br i1 %.not254633.i, label %.thread581.i, label %.lr.ph635.i

bb.z:                                             ; preds = %.lr.ph635.i
  %indvars.iv.next642.i = add nuw nsw i64 %indvars.iv641.i, 1 ; 2 uses
  %i.iq = getelementptr inbounds nuw [28 x i8], ptr @ff_webm_codec_tags, i64 %indvars.iv.next642.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !164 ; 2 uses
  %.not254.i = icmp eq i32 %i.is, 0
  br i1 %.not254.i, label %.thread581.i, label %.lr.ph635.i, !llvm.loop !189

.lr.ph635.i:                                      ; preds = %.preheader626.i, %bb.z
  %indvars.iv641.i = phi i64 [ %indvars.iv.next642.i, %bb.z ], [ 0, %.preheader626.i ] ; 2 uses
  %i.it = phi i32 [ %i.is, %bb.z ], [ %i.ip, %.preheader626.i ]
  %i.iu = icmp eq i32 %i.it, %i.io
  br i1 %i.iu, label %.loopexit627.loopexit.i, label %bb.z

bb.aa:                                            ; preds = %bb.y
  %i.iv = load i32, ptr %i.fr, align 8, !tbaa !186 ; 3 uses
  %i.iw = and i32 %i.iv, 65536
  %.not251.i = icmp eq i32 %i.iw, 0
  br i1 %.not251.i, label %bb.ab, label %.loopexit627.i.a

bb.ab:                                            ; preds = %bb.aa
  %i.ix = and i32 %i.iv, 131072
  %.not252.i = icmp eq i32 %i.ix, 0
  br i1 %.not252.i, label %bb.ac, label %.loopexit627.i.a

bb.ac:                                            ; preds = %bb.ab
  %i.iy = and i32 %i.iv, 262144
  %.not253.i = icmp eq i32 %i.iy, 0               ; 2 uses
  %.str.64..str.63.i = select i1 %.not253.i, ptr @.str.64, ptr @.str.63
  %..i = select i1 %.not253.i, i32 17, i32 33
  br label %.loopexit627.i.a

.thread581.i:                                     ; preds = %.preheader626.i, %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.65) #14
  br label %start_ebml_master_crc32.exit

.loopexit627.loopexit.i:                          ; preds = %.lr.ph635.i
  %i.iz = getelementptr inbounds nuw [28 x i8], ptr @ff_webm_codec_tags, i64 %indvars.iv641.i
  br label %.loopexit627.i.a

.loopexit627.i.a:                                 ; preds = %.loopexit627.loopexit.i, %bb.ac, %bb.ab, %bb.aa
  %.0214.ph.i = phi ptr [ %.str.64..str.63.i, %bb.ac ], [ @.str.61, %bb.aa ], [ @.str.62, %bb.ab ], [ %i.iz, %.loopexit627.loopexit.i ] ; 3 uses
  %.0202.ph.i = phi i32 [ %..i, %bb.ac ], [ 17, %bb.aa ], [ 33, %bb.ab ], [ 1, %.loopexit627.loopexit.i ] ; 2 uses
  %i.ja = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0214.ph.i) #15 ; 2 uses
  br i1 %.not4.i.i.i383.i, label %.loopexit628.sink.split.i, label %.lr.ph.i.i.i326.i

.lr.ph.i.i.i326.i:                                ; preds = %.loopexit627.i.a, %.lr.ph.i.i.i326.i
  %.05.i.i.i327.i = phi i32 [ %i.jb, %.lr.ph.i.i.i326.i ], [ %i.cs, %.loopexit627.i.a ]
  %i.jb = add nsw i32 %.05.i.i.i327.i, -1         ; 3 uses
  %i.jc = shl nsw i32 %i.jb, 3
  %i.jd = lshr i32 134, %i.jc
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.jd) #14
  %.not.i.i.i328.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i.i328.i, label %.loopexit628.sink.split.i, label %.lr.ph.i.i.i326.i, !llvm.loop !51

bb.ad:                                            ; preds = %put_ebml_uint.exit325.i
  %i.je = load i32, ptr %i.fr, align 8, !tbaa !186 ; 2 uses
  %i.jf = and i32 %i.je, 8
  %.not241.i = icmp eq i32 %i.jf, 0
  br i1 %.not241.i, label %put_ebml_uint.exit343.i, label %.lr.ph.i.i337.i

.lr.ph.i.i337.i:                                  ; preds = %bb.ad, %.lr.ph.i.i337.i
  %.05.i.i338.i = phi i32 [ %i.jg, %.lr.ph.i.i337.i ], [ %i.cm, %bb.ad ]
  %i.jg = add nsw i32 %.05.i.i338.i, -1           ; 3 uses
  %i.jh = shl nsw i32 %i.jg, 3
  %i.ji = lshr i32 21935, %i.jh
  %i.jj = and i32 %i.ji, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.jj) #14
  %.not.i.i339.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i339.i, label %.lr.ph.i.i188.preheader, label %.lr.ph.i.i337.i, !llvm.loop !51

.lr.ph.i.i188.preheader:                          ; preds = %.lr.ph.i.i337.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %.pre.i = load i32, ptr %i.fr, align 8, !tbaa !186
  br label %put_ebml_uint.exit343.i

put_ebml_uint.exit343.i:                          ; preds = %.lr.ph.i.i188.preheader, %bb.ad
  %i.jk = phi i32 [ %.pre.i, %.lr.ph.i.i188.preheader ], [ %i.je, %bb.ad ] ; 2 uses
  %i.jl = and i32 %i.jk, 128
  %.not242.i = icmp eq i32 %i.jl, 0
  br i1 %.not242.i, label %put_ebml_uint.exit356.i, label %.lr.ph.i.i350.i

.lr.ph.i.i350.i:                                  ; preds = %put_ebml_uint.exit343.i, %.lr.ph.i.i350.i
  %.05.i.i351.i = phi i32 [ %i.jm, %.lr.ph.i.i350.i ], [ %i.cm, %put_ebml_uint.exit343.i ]
  %i.jm = add nsw i32 %.05.i.i351.i, -1           ; 3 uses
  %i.jn = shl nsw i32 %i.jm, 3
  %i.jo = lshr i32 21931, %i.jn
  %i.jp = and i32 %i.jo, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.jp) #14
  %.not.i.i352.i = icmp eq i32 %i.jm, 0
  br i1 %.not.i.i352.i, label %.lr.ph.i.i179.preheader, label %.lr.ph.i.i350.i, !llvm.loop !51

.lr.ph.i.i179.preheader:                          ; preds = %.lr.ph.i.i350.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %.pre649.i.a = load i32, ptr %i.fr, align 8, !tbaa !186
  br label %put_ebml_uint.exit356.i

put_ebml_uint.exit356.i:                          ; preds = %.lr.ph.i.i179.preheader, %put_ebml_uint.exit343.i
  %i.jq = phi i32 [ %.pre649.i.a, %.lr.ph.i.i179.preheader ], [ %i.jk, %put_ebml_uint.exit343.i ] ; 2 uses
  %i.jr = and i32 %i.jq, 256
  %.not243.i = icmp eq i32 %i.jr, 0
  br i1 %.not243.i, label %put_ebml_uint.exit369.i, label %.lr.ph.i.i363.i

.lr.ph.i.i363.i:                                  ; preds = %put_ebml_uint.exit356.i, %.lr.ph.i.i363.i
  %.05.i.i364.i = phi i32 [ %i.js, %.lr.ph.i.i363.i ], [ %i.cm, %put_ebml_uint.exit356.i ]
  %i.js = add nsw i32 %.05.i.i364.i, -1           ; 3 uses
  %i.jt = shl nsw i32 %i.js, 3
  %i.ju = lshr i32 21932, %i.jt
  %i.jv = and i32 %i.ju, 253
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.jv) #14
  %.not.i.i365.i = icmp eq i32 %i.js, 0
  br i1 %.not.i.i365.i, label %.lr.ph.i.i170.preheader, label %.lr.ph.i.i363.i, !llvm.loop !51

.lr.ph.i.i170.preheader:                          ; preds = %.lr.ph.i.i363.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %.pre650.i = load i32, ptr %i.fr, align 8, !tbaa !186
  br label %put_ebml_uint.exit369.i

put_ebml_uint.exit369.i:                          ; preds = %.lr.ph.i.i170.preheader, %put_ebml_uint.exit356.i
  %i.jw = phi i32 [ %.pre650.i, %.lr.ph.i.i170.preheader ], [ %i.jq, %put_ebml_uint.exit356.i ] ; 2 uses
  %i.jx = and i32 %i.jw, 6
  %.off.i = add nsw i32 %i.jx, -1
  %switch.i = icmp ult i32 %.off.i, 5
  br i1 %switch.i, label %.lr.ph.i.i376.i, label %put_ebml_uint.exit382.i

.lr.ph.i.i376.i:                                  ; preds = %put_ebml_uint.exit369.i, %.lr.ph.i.i376.i
  %.05.i.i377.i = phi i32 [ %i.jy, %.lr.ph.i.i376.i ], [ %i.cm, %put_ebml_uint.exit369.i ]
  %i.jy = add nsw i32 %.05.i.i377.i, -1           ; 3 uses
  %i.jz = shl nsw i32 %i.jy, 3
  %i.ka = lshr i32 21934, %i.jz
  %i.kb = and i32 %i.ka, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.kb) #14
  %.not.i.i378.i = icmp eq i32 %i.jy, 0
  br i1 %.not.i.i378.i, label %put_ebml_id.exit.i379.i, label %.lr.ph.i.i376.i, !llvm.loop !51

put_ebml_id.exit.i379.i:                          ; preds = %.lr.ph.i.i376.i
  %i.kc = lshr i32 %i.jw, 2
  %.lobit.i = and i32 %i.kc, 1
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %.lobit.i) #14
  br label %put_ebml_uint.exit382.i

put_ebml_uint.exit382.i:                          ; preds = %put_ebml_id.exit.i379.i, %put_ebml_uint.exit369.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !81 ; 2 uses
  switch i32 %i.ke, label %bb.af [
    i32 88, label %.loopexit628.i
    i32 13, label %bb.ae
  ]

bb.ae:                                            ; preds = %put_ebml_uint.exit382.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !190
  %.not247.i = icmp eq i32 %i.kg, 0
  br i1 %.not247.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae, %put_ebml_uint.exit382.i
  %i.kh = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mkv_codec_tags, i64 24), align 4, !tbaa !164 ; 2 uses
  %.not249631.i = icmp eq i32 %i.kh, 0
  br i1 %.not249631.i, label %.loopexit628.i, label %.lr.ph.i

bb.ag:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ki = getelementptr inbounds nuw [28 x i8], ptr @ff_mkv_codec_tags, i64 %indvars.iv.next.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !164 ; 2 uses
  %.not249.i = icmp eq i32 %i.kk, 0
  br i1 %.not249.i, label %.loopexit628.i, label %.lr.ph.i, !llvm.loop !191

.lr.ph.i:                                         ; preds = %bb.af, %bb.ag
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.kl = phi i32 [ %i.kk, %bb.ag ], [ %i.kh, %bb.af ]
  %i.km = icmp eq i32 %i.kl, %i.ke
  br i1 %i.km, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph.i
  %i.kn = getelementptr inbounds nuw [28 x i8], ptr @ff_mkv_codec_tags, i64 %indvars.iv.i ; 3 uses
  %i.ko = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kn) #15 ; 2 uses
  br i1 %.not4.i.i.i383.i, label %.loopexit628.sink.split.i, label %.lr.ph.i.i.i384.i

.lr.ph.i.i.i384.i:                                ; preds = %bb.ah, %.lr.ph.i.i.i384.i
  %.05.i.i.i385.i = phi i32 [ %i.kp, %.lr.ph.i.i.i384.i ], [ %i.cs, %bb.ah ]
  %i.kp = add nsw i32 %.05.i.i.i385.i, -1         ; 3 uses
  %i.kq = shl nsw i32 %i.kp, 3
  %i.kr = lshr i32 134, %i.kq
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.kr) #14
  %.not.i.i.i386.i = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i.i386.i, label %.loopexit628.sink.split.i, label %.lr.ph.i.i.i384.i, !llvm.loop !51

bb.ai:                                            ; preds = %bb.ae
  %i.ks = load i32, ptr %i.co, align 8, !tbaa !192
  %.not248.i = icmp eq i32 %i.ks, 0
  br i1 %.not248.i, label %bb.aj, label %.loopexit628.i

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.66) #14
  br label %start_ebml_master_crc32.exit

.loopexit628.sink.split.i:                        ; preds = %.lr.ph.i.i.i384.i, %.lr.ph.i.i.i326.i, %bb.ah, %.loopexit627.i.a
  %.sink718.i = phi i64 [ %i.ja, %.loopexit627.i.a ], [ %i.ko, %bb.ah ], [ %i.ja, %.lr.ph.i.i.i326.i ], [ %i.ko, %.lr.ph.i.i.i384.i ] ; 2 uses
  %.0214.ph.sink.i = phi ptr [ %.0214.ph.i, %.loopexit627.i.a ], [ %i.kn, %bb.ah ], [ %.0214.ph.i, %.lr.ph.i.i.i326.i ], [ %i.kn, %.lr.ph.i.i.i384.i ]
  %.1203.ph.i = phi i32 [ %.0202.ph.i, %.loopexit627.i.a ], [ 1, %bb.ah ], [ %.0202.ph.i, %.lr.ph.i.i.i326.i ], [ 1, %.lr.ph.i.i.i384.i ]
  %i.kt = trunc i64 %.sink718.i to i32
  %sext.i329.i = shl i64 %.sink718.i, 32
  %i.ku = ashr exact i64 %sext.i329.i, 32
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.ku, i32 noundef 0)
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull %.0214.ph.sink.i, i32 noundef %i.kt) #14
  br label %.loopexit628.i

.loopexit628.i:                                   ; preds = %bb.ag, %.loopexit628.sink.split.i, %bb.ai, %bb.af, %put_ebml_uint.exit382.i
  %.1203.i = phi i32 [ 0, %bb.af ], [ 0, %put_ebml_uint.exit382.i ], [ %.1203.ph.i, %.loopexit628.sink.split.i ], [ 0, %bb.ai ], [ 0, %bb.ag ] ; 7 uses
  %i.kv = load i32, ptr %i.ga, align 8, !tbaa !87
  switch i32 %i.kv, label %bb.fz [
    i32 0, label %bb.ak
    i32 1, label %bb.ev
    i32 3, label %bb.fu
  ]

bb.ak:                                            ; preds = %.loopexit628.i
  store i32 1, ptr %i.dy, align 4, !tbaa !114
  br i1 %.not4.i.i518.i, label %put_ebml_id.exit.i398.i, label %.lr.ph.i.i395.i

.lr.ph.i.i395.i:                                  ; preds = %bb.ak, %.lr.ph.i.i395.i
  %.05.i.i396.i = phi i32 [ %i.kw, %.lr.ph.i.i395.i ], [ %i.cw, %bb.ak ]
  %i.kw = add nsw i32 %.05.i.i396.i, -1           ; 3 uses
  %i.kx = shl nsw i32 %i.kw, 3
  %i.ky = lshr i32 131, %i.kx
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ky) #14
  %.not.i.i397.i = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i397.i, label %put_ebml_id.exit.i398.i, label %.lr.ph.i.i395.i, !llvm.loop !51

put_ebml_id.exit.i398.i:                          ; preds = %.lr.ph.i.i395.i, %bb.ak
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %i.kz = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !193 ; 2 uses
  %i.lb = icmp sgt i32 %i.la, 0
  br i1 %i.lb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %put_ebml_id.exit.i398.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.fq, i64 92
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !194 ; 2 uses
  %i.le = icmp sgt i32 %i.ld, 0
  br i1 %i.le, label %select.unfold.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %put_ebml_id.exit.i398.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.fq, i64 204
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !195 ; 2 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.li = getelementptr inbounds nuw i8, ptr %i.fq, i64 208
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !196 ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %select.unfold.i, label %bb.aq

select.unfold.i:                                  ; preds = %bb.an, %bb.al
  %.sroa.519.0.ph.i = phi i32 [ %i.ld, %bb.al ], [ %i.lj, %bb.an ]
  %.sroa.016.0.ph.i = phi i32 [ %i.la, %bb.al ], [ %i.lg, %bb.an ]
  %.sroa.519.0.insert.ext.i = zext nneg i32 %.sroa.519.0.ph.i to i64
  %.sroa.519.0.insert.shift.i = shl nuw nsw i64 %.sroa.519.0.insert.ext.i, 32
  %.sroa.016.0.insert.ext.i = zext nneg i32 %.sroa.016.0.ph.i to i64
  %.sroa.016.0.insert.insert.i = or disjoint i64 %.sroa.519.0.insert.shift.i, %.sroa.016.0.insert.ext.i ; 2 uses
  %.sroa.01.0.insert.insert.i.i = call range(i64 1, -2147483648) i64 @llvm.fshl.i64(i64 range(i64 4294967296, 9223372034707292160) %.sroa.016.0.insert.insert.i, i64 range(i64 4294967296, 9223372034707292160) %.sroa.016.0.insert.insert.i, i64 32) ; 2 uses
  %sext.i402.i = and i64 %.sroa.01.0.insert.insert.i.i, 2147483647 ; 2 uses
  %i.ll = mul nuw nsw i64 %sext.i402.i, 1000000000
  %i.lm = lshr i64 %.sroa.01.0.insert.insert.i.i, 32 ; 3 uses
  %i.ln = udiv i64 %i.ll, %i.lm                   ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %select.unfold.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ao ], [ 1, %select.unfold.i ] ; 3 uses
  %.0.i.i.i = phi i64 [ %i.lo, %bb.ao ], [ %i.ln, %select.unfold.i ]
  %i.lo = lshr i64 %.0.i.i.i, 8                   ; 2 uses
  %.not.i.i403.i = icmp eq i64 %i.lo, 0
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %.not.i.i403.i, label %.lr.ph.i.i.i404.i, label %bb.ao, !llvm.loop !142

.lr.ph.i.i.i404.i:                                ; preds = %bb.ao, %.lr.ph.i.i.i404.i
  %.05.i.i.i405.i = phi i32 [ %i.lp, %.lr.ph.i.i.i404.i ], [ %i.dh, %bb.ao ]
  %i.lp = add nsw i32 %.05.i.i.i405.i, -1         ; 3 uses
  %i.lq = shl nsw i32 %i.lp, 3
  %i.lr = lshr i32 2352003, %i.lq
  %i.ls = and i32 %i.lr, 227
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ls) #14
  %.not.i.i.i406.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i.i406.i, label %put_ebml_id.exit.i.i.i, label %.lr.ph.i.i.i404.i, !llvm.loop !51

put_ebml_id.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i404.i
  %i.lt = and i64 %indvars.iv.i.i.i, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.lt, i32 noundef 0)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %put_ebml_id.exit.i.i.i
  %indvars.iv16.i.i.i = phi i64 [ %indvars.iv.i.i.i, %put_ebml_id.exit.i.i.i ], [ %indvars.iv.next17.i.i.i, %bb.ap ] ; 2 uses
  %indvars.iv.next17.i.i.i = add nsw i64 %indvars.iv16.i.i.i, -1 ; 2 uses
  %i.lu = shl nsw i64 %indvars.iv.next17.i.i.i, 3
  %i.lv = lshr i64 %i.ln, %i.lu
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = and i32 %i.lw, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.lx) #14
  %i.ly = icmp sgt i64 %indvars.iv16.i.i.i, 1
  br i1 %i.ly, label %bb.ap, label %mkv_write_default_duration.exit.i, !llvm.loop !143

mkv_write_default_duration.exit.i:                ; preds = %bb.ap
  %i.lz = mul nuw nsw i64 %sext.i402.i, 1000      ; 2 uses
  %i.ma = udiv i64 %i.lz, %i.lm                   ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.fx, i64 96
  store i64 %i.ma, ptr %i.mb, align 8, !tbaa !197
  %i.mc = urem i64 %i.lz, %i.lm
  %i.md = icmp ne i64 %i.mc, 0
  %i.me = zext i1 %i.md to i64
  %i.mf = add nuw nsw i64 %i.ma, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.fx, i64 104
  store i64 %i.mf, ptr %i.mg, align 8, !tbaa !198
  br label %bb.aq

bb.aq:                                            ; preds = %mkv_write_default_duration.exit.i, %bb.an, %bb.am
  %.not269.i = icmp eq i32 %.1203.i, 0
  br i1 %.not269.i, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !81
  %i.mj = call i32 @ff_codec_get_tag(ptr noundef nonnull @ff_codec_movvideo_tags, i32 noundef %i.mi) #14
  %.not270.i = icmp eq i32 %i.mj, 0
  br i1 %.not270.i, label %.thread590.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mk = load i32, ptr %i.mh, align 4, !tbaa !81
  %i.ml = call i32 @ff_codec_get_tag(ptr noundef nonnull @ff_codec_bmp_tags, i32 noundef %i.mk) #14
  %.not271.i = icmp eq i32 %i.ml, 0
  %i.mm = load i32, ptr %i.mh, align 4, !tbaa !81 ; 2 uses
  br i1 %.not271.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.not272.i = icmp eq i32 %i.mm, 13
  br i1 %.not272.i, label %.thread590.i, label %bb.av
end_hunk_2
begin_hunk_3_@mkv_write_tracks:bb.a
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.alb) #14
  %.not.i.i508.i = icmp eq i32 %i.aky, 0
  br i1 %.not.i.i508.i, label %put_ebml_id.exit.i509.i, label %.lr.ph.i.i506.i, !llvm.loop !51

put_ebml_id.exit.i509.i:                          ; preds = %.lr.ph.i.i506.i
  %i.alc = and i64 %indvars.iv.i500.i, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.alc, i32 noundef 0)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %put_ebml_id.exit.i509.i
  %indvars.iv16.i510.i = phi i64 [ %indvars.iv.i500.i, %put_ebml_id.exit.i509.i ], [ %indvars.iv.next17.i511.i, %bb.fs ] ; 2 uses
  %indvars.iv.next17.i511.i = add nsw i64 %indvars.iv16.i510.i, -1 ; 2 uses
  %i.ald = shl nsw i64 %indvars.iv.next17.i511.i, 3
  %i.ale = lshr i64 %i.akw, %i.ald
  %i.alf = trunc i64 %i.ale to i32
  %i.alg = and i32 %i.alf, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.alg) #14
  %i.alh = icmp sgt i64 %indvars.iv16.i510.i, 1
  br i1 %i.alh, label %bb.fs, label %put_ebml_uint.exit512.i, !llvm.loop !143

put_ebml_uint.exit512.i:                          ; preds = %bb.fs, %.thread612.i
  %i.ali = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.alj = sext i32 %i.ajo to i64
  %i.alk = sub nsw i64 %i.ajn, %i.alj
  %i.all = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.alk, i32 noundef 0) #14
  %i.alm = icmp slt i64 %i.all, 0
  br i1 %i.alm, label %end_ebml_master.exit.i, label %bb.ft

bb.ft:                                            ; preds = %put_ebml_uint.exit512.i
  %i.aln = sub nsw i64 %i.ali, %i.ajn
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.aln, i32 noundef range(i32 -2147483647, -2147483648) %i.ajo)
  %i.alo = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.ali, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit.i

bb.fu:                                            ; preds = %.loopexit628.i
  %.not256.i = icmp eq i32 %.1203.i, 0
  br i1 %.not256.i, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !81
  %i.alr = call ptr @avcodec_get_name(i32 noundef %i.alq) #14
  %i.als = load i32, ptr %i.alp, align 4, !tbaa !81
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.71, ptr noundef %i.alr, i32 noundef %i.als) #14
  br label %start_ebml_master_crc32.exit

bb.fw:                                            ; preds = %bb.fu
  %i.alt = load i32, ptr %i.cn, align 8, !tbaa !27
  %i.alu = icmp eq i32 %i.alt, 2
  br i1 %i.alu, label %.thread622.i.a, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.alv = load i32, ptr %i.fr, align 8, !tbaa !186
  %i.alw = and i32 %i.alv, 131072
  %.not257.i = icmp eq i32 %i.alw, 0
  br i1 %.not257.i, label %.thread.i, label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %bb.fx, %.lr.ph.i.i105
  %.05.i.i = phi i32 [ %i.alx, %.lr.ph.i.i105 ], [ %i.cm, %bb.fx ]
  %i.alx = add nsw i32 %.05.i.i, -1               ; 3 uses
  %i.aly = shl nsw i32 %i.alx, 3
  %i.alz = lshr i32 21933, %i.aly
  %i.ama = and i32 %i.alz, 253
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ama) #14
  %.not.i.i106 = icmp eq i32 %i.alx, 0
  br i1 %.not.i.i106, label %put_ebml_id.exit.i, label %.lr.ph.i.i105, !llvm.loop !51

put_ebml_id.exit.i:                               ; preds = %.lr.ph.i.i105
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef 1, i32 noundef 0)
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %.pr621.pre.i = load i32, ptr %i.cn, align 8, !tbaa !27
  %i.amb = icmp eq i32 %.pr621.pre.i, 2
  br i1 %i.amb, label %.thread622.i.a, label %.thread.i

.thread622.i.a:                                   ; preds = %put_ebml_id.exit.i, %bb.fw
  %i.amc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !81
  %.not258.i = icmp eq i32 %i.amd, 94226
  br i1 %.not258.i, label %bb.fy, label %.thread.i

.thread.i:                                        ; preds = %.thread622.i.a, %put_ebml_id.exit.i, %bb.fx
  br label %bb.fy

bb.fy:                                            ; preds = %.thread.i, %.thread622.i.a
  %.2204.i = phi i32 [ 17, %.thread.i ], [ %.1203.i, %.thread622.i.a ] ; 2 uses
  br i1 %.not4.i.i518.i, label %end_ebml_master.exit.loopexit.i, label %.lr.ph.i.i519.i

.lr.ph.i.i519.i:                                  ; preds = %bb.fy, %.lr.ph.i.i519.i
  %.05.i.i520.i = phi i32 [ %i.ame, %.lr.ph.i.i519.i ], [ %i.cw, %bb.fy ]
  %i.ame = add nsw i32 %.05.i.i520.i, -1          ; 3 uses
  %i.amf = shl nsw i32 %i.ame, 3
  %i.amg = lshr i32 131, %i.amf
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.amg) #14
  %.not.i.i521.i = icmp eq i32 %i.ame, 0
  br i1 %.not.i.i521.i, label %end_ebml_master.exit.loopexit.i, label %.lr.ph.i.i519.i, !llvm.loop !51

bb.fz:                                            ; preds = %.loopexit628.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.72) #14
  br label %start_ebml_master_crc32.exit

end_ebml_master.exit.loopexit.i:                  ; preds = %.lr.ph.i.i519.i, %bb.fy
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %.2204.i) #14
  br label %end_ebml_master.exit.i

end_ebml_master.exit.i:                           ; preds = %end_ebml_master.exit.loopexit.i, %bb.ft, %put_ebml_uint.exit512.i, %mkv_write_track_video.exit.i
  %.1207.i = phi i32 [ %.0206595.i, %mkv_write_track_video.exit.i ], [ 0, %bb.ft ], [ 0, %put_ebml_uint.exit512.i ], [ 0, %end_ebml_master.exit.loopexit.i ]
  %.3205.i = phi i32 [ %.1203.i, %mkv_write_track_video.exit.i ], [ %.1203.i, %bb.ft ], [ %.1203.i, %put_ebml_uint.exit512.i ], [ %.2204.i, %end_ebml_master.exit.loopexit.i ]
  %i.amh = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 144
  %i.amj = load i32, ptr %i.ami, align 8, !tbaa !78
  %i.amk = and i32 %i.amj, 1
  %.not.i526.i = icmp eq i32 %i.amk, 0
  br i1 %.not.i526.i, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %end_ebml_master.exit.i
  %i.aml = load i32, ptr %i.dd, align 4, !tbaa !65
  %.not48.i.i = icmp eq i32 %i.aml, 0
  br i1 %.not48.i.i, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.amm = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14
  %i.amn = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  store i64 %i.amm, ptr %i.amn, align 8, !tbaa !159
  br label %.lr.ph.i.i.i528.i

.lr.ph.i.i.i528.i:                                ; preds = %.lr.ph.i.i.i528.i, %bb.gb
  %.05.i.i.i529.i = phi i32 [ %i.amo, %.lr.ph.i.i.i528.i ], [ %i.cm, %bb.gb ]
  %i.amo = add nsw i32 %.05.i.i.i529.i, -1        ; 3 uses
  %i.amp = shl nsw i32 %i.amo, 3
  %i.amq = lshr i32 21998, %i.amp
  %i.amr = and i32 %i.amq, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.amr) #14
  %.not.i.i.i530.i = icmp eq i32 %i.amo, 0
  br i1 %.not.i.i.i530.i, label %.lr.ph.i.i565.preheader.i, label %.lr.ph.i.i.i528.i, !llvm.loop !51

.lr.ph.i.i565.preheader.i:                        ; preds = %.lr.ph.i.i.i528.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  %i.ams = load i32, ptr %i.ga, align 8, !tbaa !87
  %i.amt = icmp eq i32 %i.ams, 0
  br i1 %i.amt, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %.lr.ph.i.i565.preheader.i
  br i1 %.not4.i.i.i532.i, label %put_ebml_void.exit.i.i, label %.lr.ph.i.i51.i.i

.lr.ph.i.i51.i.i:                                 ; preds = %bb.gc, %.lr.ph.i.i51.i.i
  %.05.i.i52.i.i = phi i32 [ %i.amu, %.lr.ph.i.i51.i.i ], [ %i.fi, %bb.gc ]
  %i.amu = add nsw i32 %.05.i.i52.i.i, -1         ; 3 uses
  %i.amv = shl nsw i32 %i.amu, 3
  %i.amw = lshr i32 236, %i.amv
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.amw) #14
  %.not.i.i53.i.i = icmp eq i32 %i.amu, 0
  br i1 %.not.i.i53.i.i, label %put_ebml_void.exit.i.i, label %.lr.ph.i.i51.i.i, !llvm.loop !51

put_ebml_void.exit.i.i:                           ; preds = %.lr.ph.i.i51.i.i, %bb.gc
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 2) #14
  call void @ffio_fill(ptr noundef %i.fy, i32 noundef 0, i64 noundef 2) #14
  br label %bb.gd

bb.gd:                                            ; preds = %put_ebml_void.exit.i.i, %.lr.ph.i.i565.preheader.i, %bb.ga, %end_ebml_master.exit.i
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ga, i64 32 ; 2 uses
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !202
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ga, i64 40 ; 2 uses
  %i.ana = load i32, ptr %i.amz, align 8, !tbaa !203
  %i.anb = call ptr @av_packet_side_data_get(ptr noundef %i.amy, i32 noundef %i.ana, i32 noundef 29) #14 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.anb, null
  br i1 %.not49.i.i, label %mkv_write_blockadditionmapping.exit.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !204 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 2
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !252 ; 2 uses
  %i.anf = icmp ult i8 %i.ane, 11
  br i1 %i.anf, label %bb.gf, label %bb.gi

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @ff_isom_put_dvcc_dvvc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.anc) #14
  %i.ang = call fastcc { i64, i32 } @start_ebml_master(ptr noundef %i.fy, i32 noundef 16868, i64 noundef 63) ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.gf
  %.05.i.i.i.i.i = phi i32 [ %i.anh, %.lr.ph.i.i.i.i.i ], [ %i.fm, %bb.gf ]
  %i.anh = add nsw i32 %.05.i.i.i.i.i, -1         ; 3 uses
  %i.ani = shl nsw i32 %i.anh, 3
  %i.anj = lshr i32 16804, %i.ani
  %i.ank = and i32 %i.anj, 229
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ank) #14
  %.not.i.i.i.i.i = icmp eq i32 %i.anh, 0
  br i1 %.not.i.i.i.i.i, label %put_ebml_string.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !51

put_ebml_string.exit.i.i:                         ; preds = %.lr.ph.i.i.i.i.i
  %i.anl = icmp samesign ugt i8 %i.ane, 7
  %..i.i = select i1 %i.anl, i64 1685485123, i64 1685480259
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 154) #14
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull @.str.82, i32 noundef 26) #14
  br label %.lr.ph.i.i61.i.i

.lr.ph.i.i61.i.i:                                 ; preds = %put_ebml_string.exit.i.i, %.lr.ph.i.i61.i.i
  %.05.i.i62.i.i = phi i32 [ %i.anm, %.lr.ph.i.i61.i.i ], [ %i.fm, %put_ebml_string.exit.i.i ]
  %i.anm = add nsw i32 %.05.i.i62.i.i, -1         ; 3 uses
  %i.ann = shl nsw i32 %i.anm, 3
  %i.ano = lshr i32 16871, %i.ann
  %i.anp = and i32 %i.ano, 231
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.anp) #14
  %.not.i.i63.i.i = icmp eq i32 %i.anm, 0
  br i1 %.not.i.i63.i.i, label %put_ebml_id.exit.i64.i.i, label %.lr.ph.i.i61.i.i, !llvm.loop !51

put_ebml_id.exit.i64.i.i:                         ; preds = %.lr.ph.i.i61.i.i
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef 4, i32 noundef 0)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gg, %put_ebml_id.exit.i64.i.i
  %indvars.iv16.i65.i.i = phi i64 [ 4, %put_ebml_id.exit.i64.i.i ], [ %indvars.iv.next17.i66.i.i, %bb.gg ] ; 2 uses
  %indvars.iv.next17.i66.i.i = add nsw i64 %indvars.iv16.i65.i.i, -1 ; 2 uses
  %i.anq = shl nsw i64 %indvars.iv.next17.i66.i.i, 3
  %i.anr = lshr i64 %..i.i, %i.anq
  %i.ans = trunc nuw nsw i64 %i.anr to i32
  %i.ant = and i32 %i.ans, 119
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ant) #14
  %i.anu = icmp sgt i64 %indvars.iv16.i65.i.i, 1
  br i1 %i.anu, label %bb.gg, label %.lr.ph.i.i69.i.i, !llvm.loop !143

.lr.ph.i.i69.i.i:                                 ; preds = %bb.gg, %.lr.ph.i.i69.i.i
  %.05.i.i70.i.i = phi i32 [ %i.anv, %.lr.ph.i.i69.i.i ], [ %i.fm, %bb.gg ]
  %i.anv = add nsw i32 %.05.i.i70.i.i, -1         ; 3 uses
  %i.anw = shl nsw i32 %i.anv, 3
  %i.anx = lshr i32 16877, %i.anw
  %i.any = and i32 %i.anx, 237
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.any) #14
  %.not.i.i71.i.i = icmp eq i32 %i.anv, 0
  br i1 %.not.i.i71.i.i, label %.lr.ph.i.i107.preheader.i.i, label %.lr.ph.i.i69.i.i, !llvm.loop !51

.lr.ph.i.i107.preheader.i.i:                      ; preds = %.lr.ph.i.i69.i.i
  %i.anz = extractvalue { i64, i32 } %i.ang, 0    ; 2 uses
  %i.aoa = extractvalue { i64, i32 } %i.ang, 1    ; 2 uses
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 152) #14
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull %i.a, i32 noundef 24) #14
  %i.aob = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.aoc = sext i32 %i.aoa to i64
  %i.aod = sub nsw i64 %i.anz, %i.aoc
  %i.aoe = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.aod, i32 noundef 0) #14
  %i.aof = icmp slt i64 %i.aoe, 0
  br i1 %i.aof, label %end_ebml_master.exit.i.i, label %bb.gh

bb.gh:                                            ; preds = %.lr.ph.i.i107.preheader.i.i
  %i.aog = sub nsw i64 %i.aob, %i.anz
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.aog, i32 noundef range(i32 -2147483647, -2147483648) %i.aoa)
  %i.aoh = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.aob, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit.i.i

end_ebml_master.exit.i.i:                         ; preds = %bb.gh, %.lr.ph.i.i107.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.gi

bb.gi:                                            ; preds = %end_ebml_master.exit.i.i, %bb.ge
  %i.aoi = load ptr, ptr %i.amx, align 8, !tbaa !202
  %i.aoj = load i32, ptr %i.amz, align 8, !tbaa !203
  %i.aok = call ptr @av_packet_side_data_get(ptr noundef %i.aoi, i32 noundef %i.aoj, i32 noundef 42) #14 ; 3 uses
  %.not50.i.i = icmp eq ptr %i.aok, null
  br i1 %.not50.i.i, label %mkv_write_blockadditionmapping.exit.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 8 ; 2 uses
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !212 ; 2 uses
  %i.aon = add i64 %i.aom, 1
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %bb.gj
  %.03.i.i.i.i = phi i64 [ %i.aon, %bb.gj ], [ %i.aop, %bb.gk ]
  %.0.i.i.i.i = phi i32 [ 0, %bb.gj ], [ %i.aoo, %bb.gk ] ; 2 uses
  %i.aoo = add nuw nsw i32 %.0.i.i.i.i, 1
  %i.aop = lshr i64 %.03.i.i.i.i, 7               ; 2 uses
  %.not.i.i73.i.i = icmp eq i64 %i.aop, 0
  br i1 %.not.i.i73.i.i, label %ebml_length_size.exit.i.i, label %bb.gk, !llvm.loop !152

ebml_length_size.exit.i.i:                        ; preds = %bb.gk
  %i.aoq = add nuw nsw i32 %.0.i.i.i.i, 3
  %i.aor = zext nneg i32 %i.aoq to i64
  %i.aos = add i64 %i.aom, 46
  %i.aot = add i64 %i.aos, %i.aor
  %i.aou = call fastcc { i64, i32 } @start_ebml_master(ptr noundef %i.fy, i32 noundef 16868, i64 noundef %i.aot) ; 2 uses
  br label %.lr.ph.i.i.i74.i.i

.lr.ph.i.i.i74.i.i:                               ; preds = %.lr.ph.i.i.i74.i.i, %ebml_length_size.exit.i.i
  %.05.i.i.i75.i.i = phi i32 [ %i.aov, %.lr.ph.i.i.i74.i.i ], [ %i.fm, %ebml_length_size.exit.i.i ]
  %i.aov = add nsw i32 %.05.i.i.i75.i.i, -1       ; 3 uses
  %i.aow = shl nsw i32 %i.aov, 3
  %i.aox = lshr i32 16804, %i.aow
  %i.aoy = and i32 %i.aox, 229
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.aoy) #14
  %.not.i.i.i76.i.i = icmp eq i32 %i.aov, 0
  br i1 %.not.i.i.i76.i.i, label %.lr.ph.i.i547.preheader.i, label %.lr.ph.i.i.i74.i.i, !llvm.loop !51

.lr.ph.i.i547.preheader.i:                        ; preds = %.lr.ph.i.i.i74.i.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 164) #14
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull @.str.83, i32 noundef 36) #14
  br label %.lr.ph.i.i85.i.i

.lr.ph.i.i85.i.i:                                 ; preds = %.lr.ph.i.i85.i.i, %.lr.ph.i.i547.preheader.i
  %.05.i.i86.i.i = phi i32 [ %i.aoz, %.lr.ph.i.i85.i.i ], [ %i.fm, %.lr.ph.i.i547.preheader.i ]
  %i.aoz = add nsw i32 %.05.i.i86.i.i, -1         ; 3 uses
  %i.apa = shl nsw i32 %i.aoz, 3
  %i.apb = lshr i32 16871, %i.apa
  %i.apc = and i32 %i.apb, 231
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.apc) #14
  %.not.i.i87.i.i = icmp eq i32 %i.aoz, 0
  br i1 %.not.i.i87.i.i, label %.lr.ph.i.i539.preheader.i, label %.lr.ph.i.i85.i.i, !llvm.loop !51

.lr.ph.i.i539.preheader.i:                        ; preds = %.lr.ph.i.i85.i.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 132) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 104) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 118) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 99) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 69) #14
  %i.apd = load ptr, ptr %i.aok, align 8, !tbaa !204
  %i.ape = load i64, ptr %i.aol, align 8, !tbaa !212 ; 2 uses
  br label %.lr.ph.i.i93.i.i

.lr.ph.i.i93.i.i:                                 ; preds = %.lr.ph.i.i93.i.i, %.lr.ph.i.i539.preheader.i
  %.05.i.i94.i.i = phi i32 [ %i.apf, %.lr.ph.i.i93.i.i ], [ %i.fm, %.lr.ph.i.i539.preheader.i ]
  %i.apf = add nsw i32 %.05.i.i94.i.i, -1         ; 3 uses
  %i.apg = shl nsw i32 %i.apf, 3
  %i.aph = lshr i32 16877, %i.apg
  %i.api = and i32 %i.aph, 237
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.api) #14
  %.not.i.i95.i.i = icmp eq i32 %i.apf, 0
  br i1 %.not.i.i95.i.i, label %put_ebml_binary.exit97.i.i, label %.lr.ph.i.i93.i.i, !llvm.loop !51

put_ebml_binary.exit97.i.i:                       ; preds = %.lr.ph.i.i93.i.i
  %i.apj = extractvalue { i64, i32 } %i.aou, 0    ; 2 uses
  %i.apk = extractvalue { i64, i32 } %i.aou, 1    ; 2 uses
  %i.apl = trunc i64 %i.ape to i32
  %sext.i527.i = shl i64 %i.ape, 32
  %i.apm = ashr exact i64 %sext.i527.i, 32
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.apm, i32 noundef 0)
  call void @avio_write(ptr noundef %i.fy, ptr noundef %i.apd, i32 noundef %i.apl) #14
  %i.apn = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.apo = sext i32 %i.apk to i64
  %i.app = sub nsw i64 %i.apj, %i.apo
  %i.apq = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.app, i32 noundef 0) #14
  %i.apr = icmp slt i64 %i.apq, 0
  br i1 %i.apr, label %end_ebml_master.exit98.i.i, label %bb.gl

bb.gl:                                            ; preds = %put_ebml_binary.exit97.i.i
  %i.aps = sub nsw i64 %i.apn, %i.apj
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.aps, i32 noundef range(i32 -2147483647, -2147483648) %i.apk)
  %i.apt = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.apn, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit98.i.i

end_ebml_master.exit98.i.i:                       ; preds = %bb.gl, %put_ebml_binary.exit97.i.i
  %i.apu = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 2 uses
  %i.apv = load i64, ptr %i.apu, align 8, !tbaa !158
  %spec.select.i.i = call i64 @llvm.umax.i64(i64 %i.apv, i64 1)
  store i64 %spec.select.i.i, ptr %i.apu, align 8, !tbaa !158
  br label %mkv_write_blockadditionmapping.exit.i

mkv_write_blockadditionmapping.exit.i:            ; preds = %end_ebml_master.exit98.i.i, %bb.gi, %bb.gd
  %i.apw = load i32, ptr %i.cn, align 8, !tbaa !27
  %i.apx = icmp eq i32 %i.apw, 2
  br i1 %i.apx, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %mkv_write_blockadditionmapping.exit.i
  %i.apy = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !81
  %.not274.i = icmp eq i32 %i.apz, 94226
  br i1 %.not274.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %mkv_write_blockadditionmapping.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.aqa = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14
  %i.aqb = trunc i64 %i.aqa to i32
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.fx, i64 80
  store i32 %i.aqb, ptr %i.aqc, align 8, !tbaa !254
  %i.aqd = load ptr, ptr %i.fn, align 8, !tbaa !125
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !96
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.aqh = load i32, ptr %i.aqg, align 8, !tbaa !97
  %i.aqi = call fastcc i32 @mkv_assemble_codecprivate(ptr noundef nonnull %0, ptr noundef %i.aqd, ptr noundef nonnull %i.ga, ptr noundef %i.aqf, i32 noundef %i.aqh, i32 noundef %.3205.i, i32 noundef %.1207.i, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h) ; 2 uses
  %i.aqj = icmp slt i32 %i.aqi, 0
  br i1 %i.aqj, label %start_ebml_master_crc32.exit.loopexit, label %.thread623.i

.thread623.i:                                     ; preds = %bb.gn
  %i.aqk = load i32, ptr %i.h, align 4, !tbaa !49 ; 2 uses
  %i.aql = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.aqm = load i32, ptr %i.g, align 4, !tbaa !49
  call fastcc void @mkv_put_codecprivate(ptr noundef %i.fy, i32 noundef %i.aqk, ptr noundef %i.aql, i32 noundef %i.aqm)
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.fx, i64 84
  store i32 %i.aqk, ptr %i.aqn, align 4, !tbaa !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.go

bb.go:                                            ; preds = %.thread623.i, %bb.gm
  %i.aqo = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.aqp = sext i32 %i.gk to i64
  %i.aqq = sub nsw i64 %i.gj, %i.aqp
  %i.aqr = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.aqq, i32 noundef 0) #14
  %i.aqs = icmp slt i64 %i.aqr, 0
  br i1 %i.aqs, label %mkv_write_track.exit.thread, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aqt = sub nsw i64 %i.aqo, %i.gj
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.aqt, i32 noundef range(i32 -2147483647, -2147483648) %i.gk)
  %i.aqu = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.aqo, i32 noundef 0) #14 ; 0 uses
  br label %mkv_write_track.exit.thread

mkv_write_track.exit.thread:                      ; preds = %bb.go, %bb.gp
  %i.aqv = load ptr, ptr %i.fn, align 8, !tbaa !125
  call void @ffio_reset_dyn_buf(ptr noundef %i.aqv) #14
  br label %mkv_write_track.exit.thread222

mkv_write_track.exit.thread222:                   ; preds = %mkv_write_track.exit.thread, %bb.n
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.aqw = load i32, ptr %i.o, align 4, !tbaa !41
  %i.aqx = zext i32 %i.aqw to i64
  %i.aqy = icmp samesign ult i64 %indvars.iv.next281, %i.aqx
  br i1 %i.aqy, label %bb.n, label %._crit_edge259, !llvm.loop !256

._crit_edge259:                                   ; preds = %mkv_write_track.exit.thread222, %bb.m
  %i.aqz = call fastcc i32 @end_ebml_master_crc32_tentatively(ptr noundef %i.l, ptr noundef nonnull %i.r, ptr noundef %i.j, i32 noundef 374648427)
  br label %start_ebml_master_crc32.exit

start_ebml_master_crc32.exit.loopexit:            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.ara = load ptr, ptr %i.fn, align 8, !tbaa !125
  call void @ffio_reset_dyn_buf(ptr noundef %i.ara) #14
  br label %start_ebml_master_crc32.exit

start_ebml_master_crc32.exit:                     ; preds = %start_ebml_master_crc32.exit.loopexit, %.thread581.i, %bb.fv, %bb.ey, %mkv_write_track_video.exit.thread.i, %get_aac_sample_rates.exit.i, %bb.fz, %bb.aj, %bb.c, %bb.a, %._crit_edge259
  %.279 = phi i32 [ %i.aqz, %._crit_edge259 ], [ 0, %bb.a ], [ -22, %bb.aj ], [ %i.t, %bb.c ], [ -22, %.thread581.i ], [ -38, %bb.fv ], [ -22, %bb.ey ], [ %.3.i.ph.i, %mkv_write_track_video.exit.thread.i ], [ -22, %get_aac_sample_rates.exit.i ], [ -22, %bb.fz ], [ %i.aqi, %start_ebml_master_crc32.exit.loopexit ]
end_hunk_3
