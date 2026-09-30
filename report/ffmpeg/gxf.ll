Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/gxf?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0_@gxf_header:bb.a
  store i64 -9223372036854775808, ptr %i.h, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i64 -9223372036854775808, ptr %i.t, align 8, !tbaa !64
  %i.u = icmp sgt i32 %i.q, 1
  br i1 %i.u, label %.lr.ph.i, label %gxf_material_tags.exit

.lr.ph.i:                                         ; preds = %bb.h, %bb.n
  %i.v = phi i32 [ %i.aa, %bb.n ], [ %i.q, %bb.h ]
  %i.w = tail call i32 @avio_r8(ptr noundef %i.f) #6
  %i.x = tail call i32 @avio_r8(ptr noundef %i.f) #6 ; 4 uses
  %i.y = add nsw i32 %i.v, -2                     ; 3 uses
  %i.z = icmp sgt i32 %i.x, %i.y
  br i1 %i.z, label %gxf_material_tags.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = sub nsw i32 %i.y, %i.x                  ; 3 uses
  %i.ab = icmp eq i32 %i.x, 4
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call i32 @avio_rb32(ptr noundef %i.f) #6 ; 2 uses
  switch i32 %i.w, label %bb.n [
    i32 65, label %bb.k
    i32 66, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = zext i32 %i.ac to i64
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !63
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ae = zext i32 %i.ac to i64
  store i64 %i.ae, ptr %i.t, align 8, !tbaa !64
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.af = sext i32 %i.x to i64
  %i.ag = tail call i64 @avio_skip(ptr noundef %i.f, i64 noundef %i.af) #6 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ah = icmp sgt i32 %i.aa, 1
  br i1 %i.ah, label %.lr.ph.i, label %gxf_material_tags.exit

gxf_material_tags.exit:                           ; preds = %.lr.ph.i, %bb.n, %bb.h
  %i.ai = phi i32 [ %i.q, %bb.h ], [ %i.aa, %bb.n ], [ %i.y, %.lr.ph.i ]
  %i.aj = sext i32 %i.ai to i64
  %i.ak = tail call i64 @avio_skip(ptr noundef %i.f, i64 noundef %i.aj) #6 ; 0 uses
  %i.al = add nsw i32 %i.s, -2                    ; 3 uses
  %i.am = tail call i32 @avio_rb16(ptr noundef %i.f) #6 ; 6 uses
  %i.an = icmp sgt i32 %i.am, %i.al
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %gxf_material_tags.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.5) #6
  br label %.loopexit

bb.p:                                             ; preds = %gxf_material_tags.exit
  %i.ao = sub nsw i32 %i.al, %i.am
  %i.ap = icmp sgt i32 %i.am, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.ao
  %.sroa.047.0132 = phi i32 [ 0, %.lr.ph ], [ %.sroa.047.2, %bb.ao ] ; 5 uses
  %.sroa.10.0131 = phi i32 [ 0, %.lr.ph ], [ %.sroa.10.2, %bb.ao ] ; 5 uses
  %i.av = phi i32 [ %i.am, %.lr.ph ], [ %i.ba, %bb.ao ]
  %i.aw = add nsw i32 %i.av, -4
  %i.ax = call i32 @avio_r8(ptr noundef %i.f) #6  ; 3 uses
  %i.ay = call i32 @avio_r8(ptr noundef %i.f) #6  ; 3 uses
  %i.az = call i32 @avio_rb16(ptr noundef %i.f) #6 ; 4 uses
  %i.ba = sub nsw i32 %i.aw, %i.az                ; 3 uses
  %i.bb = and i32 %i.ax, 128
  %.not118 = icmp eq i32 %i.bb, 0
  br i1 %.not118, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.ax) #6
  br label %bb.ao, !llvm.loop !61

bb.s:                                             ; preds = %bb.q
  %i.bc = and i32 %i.ax, 127                      ; 2 uses
  %i.bd = and i32 %i.ay, 192
  %.not119 = icmp eq i32 %i.bd, 192
  br i1 %.not119, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.ay) #6
  br label %bb.ao, !llvm.loop !61

bb.u:                                             ; preds = %bb.s
  %i.be = and i32 %i.ay, 63
  store i32 0, ptr %i.aq, align 8, !tbaa !28
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !28
  store i32 0, ptr %i.ar, align 8, !tbaa !32
  store i64 2147483648, ptr %i.as, align 8, !tbaa !65
  %i.bf = icmp sgt i32 %i.az, 1
  br i1 %i.bf, label %.lr.ph.i123, label %gxf_track_tags.exit

.lr.ph.i123:                                      ; preds = %bb.u, %bb.ad
  %.0127 = phi i32 [ %i.bk, %bb.ad ], [ %i.az, %bb.u ]
  %i.bg = call i32 @avio_r8(ptr noundef %i.f) #6  ; 2 uses
  %i.bh = call i32 @avio_r8(ptr noundef %i.f) #6  ; 5 uses
  %i.bi = add nsw i32 %.0127, -2                  ; 3 uses
  %i.bj = icmp sgt i32 %i.bh, %i.bi
  br i1 %i.bj, label %gxf_track_tags.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i123
  %i.bk = sub nsw i32 %i.bi, %i.bh                ; 3 uses
  %i.bl = icmp eq i32 %i.bh, 4
  br i1 %i.bl, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bm = call i32 @avio_rb32(ptr noundef %i.f) #6 ; 4 uses
  switch i32 %i.bg, label %bb.ad [
    i32 80, label %bb.x
    i32 82, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bn = add i32 %i.bm, -10
  %or.cond.i.i = icmp ult i32 %i.bn, -9
  %i.bo = add nsw i32 %i.bm, -1
  %i.bp = select i1 %or.cond.i.i, i32 8, i32 %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr @frame_rate_tab, i64 %i.bq
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.br, align 8, !tbaa !28
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.aq, align 8, !tbaa !28
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.bs = add i32 %i.bm, -1
  %or.cond.i = icmp ult i32 %i.bs, 2
  br i1 %or.cond.i, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  store i32 %i.bm, ptr %i.ar, align 8, !tbaa !32
  br label %bb.ad

bb.aa:                                            ; preds = %bb.v
  %i.bt = icmp eq i32 %i.bh, 8
  %i.bu = icmp eq i32 %i.bg, 77
  %or.cond3.i = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond3.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bv = call i64 @avio_rl64(ptr noundef %i.f) #6
  store i64 %i.bv, ptr %i.as, align 8, !tbaa !65
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bw = sext i32 %i.bh to i64
  %i.bx = call i64 @avio_skip(ptr noundef %i.f, i64 noundef %i.bw) #6 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w
  %i.by = icmp sgt i32 %i.bk, 1
  br i1 %i.by, label %.lr.ph.i123, label %gxf_track_tags.exit

gxf_track_tags.exit:                              ; preds = %.lr.ph.i123, %bb.ad, %bb.u
  %.1 = phi i32 [ %i.az, %bb.u ], [ %i.bk, %bb.ad ], [ %i.bi, %.lr.ph.i123 ]
  switch i32 %i.bc, label %bb.ai [
    i32 24, label %bb.ae
    i32 8, label %bb.ae
    i32 7, label %bb.ae
  ]

bb.ae:                                            ; preds = %gxf_track_tags.exit, %gxf_track_tags.exit, %gxf_track_tags.exit
  %i.bz = load i64, ptr %i.as, align 8, !tbaa !65
  %i.ca = trunc i64 %i.bz to i32                  ; 6 uses
  %i.cb = load i32, ptr %i.ar, align 8, !tbaa !32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.cc = and i32 %i.ca, 255                      ; 2 uses
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = sdiv i32 %i.cc, %i.cb
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ce = phi i32 [ %i.cd, %bb.af ], [ %i.cc, %bb.ae ]
  %.not18.i = icmp sgt i32 %i.ca, -1
  br i1 %.not18.i, label %bb.ah, label %add_timecode_metadata.exit

bb.ah:                                            ; preds = %bb.ag
  %i.cf = lshr i32 %i.ca, 24
  %i.cg = and i32 %i.cf, 31
  %i.ch = lshr i32 %i.ca, 16
  %i.ci = and i32 %i.ch, 255
  %i.cj = lshr i32 %i.ca, 8
  %i.ck = and i32 %i.cj, 255
  %1 = lshr i32 %i.ca, 29
  %2 = or i32 %1, 58
  %i.cl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.16, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.ck, i32 noundef %2, i32 noundef %i.ce) #6 ; 0 uses
  %i.cm = call i32 @av_dict_set(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i32 noundef 0) #6 ; 0 uses
  br label %add_timecode_metadata.exit

add_timecode_metadata.exit:                       ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ai

bb.ai:                                            ; preds = %gxf_track_tags.exit, %add_timecode_metadata.exit
  %i.cn = sext i32 %.1 to i64
  %i.co = call i64 @avio_skip(ptr noundef %i.f, i64 noundef %i.cn) #6 ; 0 uses
  %i.cp = call fastcc i32 @get_sindex(ptr noundef %0, i32 noundef %i.be, i32 noundef %i.bc) ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.ao, label %bb.aj, !llvm.loop !61

bb.aj:                                            ; preds = %bb.ai
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !35 ; 2 uses
  %i.cv = icmp ne i32 %.sroa.047.0132, 0
  %i.cw = icmp ne i32 %.sroa.10.0131, 0
  %or.cond8 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond8, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !66
  %i.cy = load i32, ptr %i.aq, align 8, !tbaa !67
  %i.cz = shl nsw i32 %i.cy, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.sroa.10.1 = phi i32 [ %.sroa.10.0131, %bb.aj ], [ %i.cz, %bb.ak ] ; 3 uses
  %.sroa.047.1 = phi i32 [ %.sroa.047.0132, %bb.aj ], [ %i.cx, %bb.ak ] ; 3 uses
  %i.da = load i64, ptr %i.h, align 8, !tbaa !63  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store i64 %i.da, ptr %i.db, align 8, !tbaa !41
  %.not120 = icmp eq i64 %i.da, -9223372036854775808
  br i1 %.not120, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dc = load i64, ptr %i.t, align 8, !tbaa !64  ; 2 uses
  %.not121 = icmp eq i64 %i.dc, -9223372036854775808
  br i1 %.not121, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dd = sub nsw i64 %i.dc, %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !68
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.am, %bb.an, %bb.ai, %bb.t, %bb.r
  %.sroa.10.2 = phi i32 [ %.sroa.10.0131, %bb.t ], [ %.sroa.10.0131, %bb.r ], [ %.sroa.10.0131, %bb.ai ], [ %.sroa.10.1, %bb.an ], [ %.sroa.10.1, %bb.am ], [ %.sroa.10.1, %bb.al ] ; 2 uses
  %.sroa.047.2 = phi i32 [ %.sroa.047.0132, %bb.t ], [ %.sroa.047.0132, %bb.r ], [ %.sroa.047.0132, %bb.ai ], [ %.sroa.047.1, %bb.an ], [ %.sroa.047.1, %bb.am ], [ %.sroa.047.1, %bb.al ] ; 2 uses
  %i.df = icmp sgt i32 %i.ba, 0
  br i1 %i.df, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ao, %bb.p
  %.pr130.lcssa = phi i32 [ %i.am, %bb.p ], [ %i.ba, %bb.ao ] ; 2 uses
  %.sroa.10.0.lcssa = phi i32 [ 0, %bb.p ], [ %.sroa.10.2, %bb.ao ] ; 4 uses
  %.sroa.047.0.lcssa = phi i32 [ 0, %bb.p ], [ %.sroa.047.2, %bb.ao ] ; 4 uses
  store i32 %.pr130.lcssa, ptr %i.d, align 4
  %i.dg = icmp slt i32 %.pr130.lcssa, 0
  br i1 %i.dg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #6
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge
  %.not115 = icmp eq i32 %i.al, %i.am
  br i1 %.not115, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dh = sext i32 %i.ao to i64
  %i.di = call i64 @avio_skip(ptr noundef %i.f, i64 noundef %i.dh) #6 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dj = call fastcc i32 @parse_packet_header(ptr noundef %i.f, ptr noundef %i.b, ptr noundef %i.d)
  %.not116 = icmp eq i32 %i.dj, 0
  br i1 %.not116, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.10) #6
  br label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !28  ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 252
  br i1 %i.dl, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.dm = load i32, ptr %i.d, align 4, !tbaa !28
  call fastcc void @gxf_read_index(ptr noundef %0, i32 noundef %i.dm)
  %i.dn = call fastcc i32 @parse_packet_header(ptr noundef %i.f, ptr noundef %i.b, ptr noundef %i.d)
  %.not117 = icmp eq i32 %i.dn, 0
  br i1 %.not117, label %bb.aw, label %thread-pre-split

bb.aw:                                            ; preds = %bb.av
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.10) #6
  br label %.loopexit

thread-pre-split:                                 ; preds = %bb.av
  %.pr128 = load i32, ptr %i.b, align 4, !tbaa !28
  br label %bb.ax

bb.ax:                                            ; preds = %thread-pre-split, %bb.au
  %i.do = phi i32 [ %.pr128, %thread-pre-split ], [ %i.dk, %bb.au ]
  %i.dp = icmp eq i32 %i.do, 253
  br i1 %i.dp, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.dq = load i32, ptr %i.d, align 4, !tbaa !28  ; 5 uses
  %i.dr = icmp sgt i32 %i.dq, 56
  br i1 %i.dr, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.ds = add nsw i32 %i.dq, -57
  %i.dt = call i64 @avio_skip(ptr noundef %i.f, i64 noundef 5) #6 ; 0 uses
  %i.du = call i64 @avio_skip(ptr noundef %i.f, i64 noundef 48) #6 ; 0 uses
  %i.dv = call i32 @avio_rl32(ptr noundef %i.f) #6
  %i.dw = icmp ne i32 %.sroa.047.0.lcssa, 0
  %i.dx = icmp ne i32 %.sroa.10.0.lcssa, 0
  %or.cond11 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond11, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dy = lshr i32 %i.dv, 6
  %i.dz = and i32 %i.dy, 31
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !42
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @fps_umf2avr.map, i64 %i.ed
  %.sroa.0.0.copyload.i = load i64, ptr %i.ee, align 8, !tbaa !28 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.sroa.016.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.11) #6
  %i.ef = shl nsw i32 %.sroa.016.0.extract.trunc, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.sroa.10.3 = phi i32 [ %.sroa.10.0.lcssa, %bb.az ], [ %i.ef, %bb.ba ] ; 2 uses
  %.sroa.047.3 = phi i32 [ %.sroa.047.0.lcssa, %bb.az ], [ %.sroa.4.0.extract.trunc, %bb.ba ] ; 2 uses
  %i.eg = icmp samesign ugt i32 %i.dq, 80
  br i1 %i.eg, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.eh = add nsw i32 %i.dq, -81
  %i.ei = call i64 @avio_skip(ptr noundef %i.f, i64 noundef 16) #6 ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ek = call i32 @avio_rl32(ptr noundef %i.f) #6
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !32
  call fastcc void @add_timecode_metadata(ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.12, i32 noundef %i.ek, i32 noundef %i.em)
  %i.en = call i32 @avio_rl32(ptr noundef %i.f) #6
  %i.eo = load i32, ptr %i.el, align 8, !tbaa !32
  call fastcc void @add_timecode_metadata(ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.13, i32 noundef %i.en, i32 noundef %i.eo)
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ay
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.14) #6
  br label %bb.bf

bb.be:                                            ; preds = %bb.ax
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.15) #6
  %.pre = load i32, ptr %i.d, align 4, !tbaa !28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bb, %bb.bc, %bb.bd, %bb.be
  %i.ep = phi i32 [ %.pre, %bb.be ], [ %i.dq, %bb.bd ], [ %i.eh, %bb.bc ], [ %i.ds, %bb.bb ]
  %.sroa.10.4 = phi i32 [ %.sroa.10.0.lcssa, %bb.be ], [ %.sroa.10.0.lcssa, %bb.bd ], [ %.sroa.10.3, %bb.bc ], [ %.sroa.10.3, %bb.bb ] ; 2 uses
  %.sroa.047.4 = phi i32 [ %.sroa.047.0.lcssa, %bb.be ], [ %.sroa.047.0.lcssa, %bb.bd ], [ %.sroa.047.3, %bb.bc ], [ %.sroa.047.3, %bb.bb ] ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = call i64 @avio_skip(ptr noundef %i.f, i64 noundef %i.eq) #6 ; 0 uses
  %i.es = icmp ne i32 %.sroa.047.4, 0
  %i.et = icmp ne i32 %.sroa.10.4, 0
  %or.cond14 = select i1 %i.es, i1 %i.et, i1 false ; 2 uses
  %spec.select = select i1 %or.cond14, i32 %.sroa.10.4, i32 60000
  %spec.select122 = select i1 %or.cond14, i32 %.sroa.047.4, i32 1001
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !43
  %.not139 = icmp eq i32 %i.ev, 0
  br i1 %.not139, label %.loopexit, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.bf
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph138, %bb.bg
  %indvars.iv = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next, %bb.bg ] ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !35
  call void @avpriv_set_pts_info(ptr noundef %i.ez, i32 noundef 32, i32 noundef %spec.select122, i32 noundef %spec.select) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fa = load i32, ptr %i.eu, align 4, !tbaa !43
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv.next, %i.fb
end_hunk_0
begin_hunk_1_@gxf_packet:bb.a

bb.p:                                             ; preds = %.thread, %bb.o, %bb.n
  %i.ax = phi i32 [ %i.an, %.thread ], [ %i.at, %bb.o ], [ %i.at, %bb.n ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.s, ptr %i.ay, align 4, !tbaa !72
  %i.az = sext i32 %i.z to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !73
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !47
  %i.be = icmp eq i32 %i.bd, 24
  br i1 %i.be, label %bb.q, label %.thread75

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !32
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !74
  br label %.thread75

bb.r:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.bj = load i32, ptr %i.g, align 8, !tbaa !71
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %.lr.ph, label %.thread75

.thread75:                                        ; preds = %bb.r, %bb.a, %bb.p, %bb.q, %bb.c, %bb.i, %bb.b
  %.2 = phi i32 [ -1094995529, %bb.b ], [ %i.ax, %bb.p ], [ %i.ax, %bb.q ], [ -1094995529, %bb.c ], [ %i.s, %bb.i ], [ -541478725, %bb.a ], [ -541478725, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @gxf_seek(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %spec.select = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.h) ; 3 uses
  %i.i = sub nsw i64 %spec.select, %i.h
  %i.j = tail call i32 @av_index_search_timestamp(ptr noundef %i.c, i64 noundef %i.i, i32 noundef 5) #6 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.n = zext nneg i32 %i.j to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !77   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.r = load i32, ptr %i.q, align 8, !tbaa !78
  %i.s = add nsw i32 %i.r, -2
  %i.t = icmp slt i32 %i.j, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77
  %i.w = sub i64 %i.v, %i.p
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.w, i64 204800)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.x, %bb.c ], [ 104857600, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = tail call i64 @avio_seek(ptr noundef %i.z, i64 noundef %i.p, i32 noundef 0) #6 ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = trunc i64 %i.aa to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ad = trunc i64 %spec.select to i32
  %.val = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.ae = tail call fastcc i64 @gxf_resync_media(ptr %.val, i64 noundef %.0, i32 noundef %i.ad)
  %reass.sub = sub i64 %i.ae, %spec.select
  %i.af = add i64 %reass.sub, -5
  %i.ag = icmp ult i64 %i.af, -9
  %spec.select40 = sext i1 %i.ag to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %bb.e
  %.033 = phi i32 [ %spec.select40, %bb.f ], [ %i.ac, %bb.e ], [ -1, %bb.a ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, -9223372036854775807) i64 @gxf_read_timestamp(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef captures(none) %2, i64 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !79
  %i.d = tail call i64 @avio_seek(ptr noundef %i.b, i64 noundef %i.c, i32 noundef 0) #6
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %2, align 8, !tbaa !79
  %i.g = sub nsw i64 %3, %i.f
  %.val = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.h = tail call fastcc i64 @gxf_resync_media(ptr %.val, i64 noundef %i.g, i32 noundef -1)
  %i.i = tail call i64 @avio_seek(ptr noundef %i.b, i64 noundef 0, i32 noundef 1) #6
  store i64 %i.i, ptr %2, align 8, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ -9223372036854775808, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parse_packet_header(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @avio_rb32(ptr noundef %0) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @avio_r8(ptr noundef %0) #6
  %.not13 = icmp eq i32 %i.b, 1
  br i1 %.not13, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @avio_r8(ptr noundef %0) #6
  store i32 %i.c, ptr %1, align 4, !tbaa !28
  %i.d = tail call i32 @avio_rb32(ptr noundef %0) #6 ; 3 uses
  store i32 %i.d, ptr %2, align 4, !tbaa !28
  %i.e = add i32 %i.d, -16777216
  %or.cond = icmp ult i32 %i.e, -16777200
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.d, -16
  store i32 %i.f, ptr %2, align 4, !tbaa !28
  %i.g = tail call i32 @avio_rb32(ptr noundef %0) #6
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @avio_r8(ptr noundef %0) #6
  %.not16 = icmp eq i32 %i.h, 225
  br i1 %.not16, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @avio_r8(ptr noundef %0) #6
  %.not17 = icmp eq i32 %i.i, 226
  %. = zext i1 %.not17 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %., %bb.f ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @avio_r8(ptr noundef) local_unnamed_addr #3

declare i32 @avio_rb16(ptr noundef) local_unnamed_addr #3

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @add_timecode_metadata(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = and i32 %2, 255                          ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i32 %i.b, %3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %.not18 = icmp sgt i32 %2, -1
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i32 %2, 24
  %i.f = and i32 %i.e, 31
  %i.g = lshr i32 %2, 16
  %i.h = and i32 %i.g, 255
  %i.i = lshr i32 %2, 8
  %i.j = and i32 %i.i, 255
  %4 = lshr i32 %2, 29
  %5 = or i32 %4, 58
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.16, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %5, i32 noundef %i.d) #6 ; 0 uses
  %i.l = call i32 @av_dict_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_sindex(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @ff_find_stream_index(ptr noundef %0, i32 noundef %1) #6 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #6 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %1, ptr %i.d, align 4, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 24 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 11 uses
  switch i32 %2, label %bb.n [
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 13, label %bb.e
    i32 14, label %bb.e
    i32 15, label %bb.e
    i32 16, label %bb.e
    i32 25, label %bb.e
    i32 11, label %bb.f
    i32 12, label %bb.f
    i32 20, label %bb.f
    i32 22, label %bb.g
    i32 23, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 17, label %bb.j
    i32 26, label %bb.k
    i32 29, label %bb.k
    i32 7, label %bb.l
    i32 8, label %bb.l
    i32 24, label %bb.l
    i32 30, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !81
  store i32 7, ptr %i.g, align 4, !tbaa !47
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !81
  store i32 24, ptr %i.g, align 4, !tbaa !47
  br label %bb.o

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !81
  store i32 2, ptr %i.g, align 4, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 808
  store i32 2, ptr %i.h, align 8, !tbaa !82
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !81
  store i32 1, ptr %i.g, align 4, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 808
  store i32 2, ptr %i.i, align 8, !tbaa !82
  br label %bb.o

bb.h:                                             ; preds = %bb.c
  store i32 1, ptr %i.f, align 8, !tbaa !81
  store i32 65548, ptr %i.g, align 4, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i32 1, ptr %i.j, align 8, !tbaa !28
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  store i32 1, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !28
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i64 4, ptr %.sroa.37.0..sroa_idx, align 8, !tbaa !42
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store ptr null, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !83
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !44   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store i32 48000, ptr %i.l, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 1152000, ptr %i.m, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 156
  store i32 3, ptr %i.n, align 4, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i32 24, ptr %i.o, align 8, !tbaa !87
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  store i32 1, ptr %i.f, align 8, !tbaa !81
  store i32 65536, ptr %i.g, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i32 1, ptr %i.p, align 8, !tbaa !28
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  store i32 1, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !28
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i64 4, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !42
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store ptr null, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !83
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !44   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  store i32 48000, ptr %i.r, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 768000, ptr %i.s, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 156
  store i32 2, ptr %i.t, align 4, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i32 16, ptr %i.u, align 8, !tbaa !87
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  store i32 1, ptr %i.f, align 8, !tbaa !81
  store i32 86019, ptr %i.g, align 4, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i32 1, ptr %i.v, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !28
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i64 3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !83
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  store i32 48000, ptr %i.x, align 8, !tbaa !84
  br label %bb.o

bb.k:                                             ; preds = %bb.c, %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !81
  store i32 27, ptr %i.g, align 4, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 808
  store i32 2, ptr %i.y, align 8, !tbaa !82
  br label %bb.o

bb.l:                                             ; preds = %bb.c, %bb.c, %bb.c
  store i32 2, ptr %i.f, align 8, !tbaa !81
  store i32 0, ptr %i.g, align 4, !tbaa !47
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !81
  store i32 99, ptr %i.g, align 4, !tbaa !47
  br label %bb.o

bb.n:                                             ; preds = %bb.c
  store i32 -1, ptr %i.f, align 8, !tbaa !81
  store i32 0, ptr %i.g, align 4, !tbaa !47
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43
  %i.ab = add i32 %i.aa, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.a, %bb.o
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.ab, %bb.o ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gxf_read_index(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 4 uses
  %i.c = icmp slt i32 %1, 8
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @avio_rl32(ptr noundef %i.b) #6
  %i.e = tail call i32 @avio_rl32(ptr noundef %i.b) #6 ; 4 uses
  %i.f = add nsw i32 %1, -8                       ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i32, ptr %i.g, align 8, !tbaa !89
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %.not37 = icmp eq ptr %i.k, null
  br i1 %.not37, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %i.m = icmp ugt i32 %i.e, 1000
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_1
