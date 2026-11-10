Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/movenc?download=true
inline.NumInlined: 471
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 28
begin_hunk_0_@ff_mov_write_packet:bb.a
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.y, %bb.x
  %.0555.in = phi ptr [ %i.cg, %bb.v ], [ %i.cg, %bb.w ], [ %i.ck, %bb.y ], [ %i.ck, %bb.x ]
  %.0555 = load ptr, ptr %.0555.in, align 8, !tbaa !95
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.p
  %.2557 = phi ptr [ %.0555, %bb.z ], [ %i.i, %bb.p ] ; 24 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 5 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !98 ; 18 uses
  switch i32 %i.cp, label %bb.ae [
    i32 73728, label %.preheader769
    i32 69638, label %bb.ad
    i32 69633, label %bb.ad
  ]

.preheader769:                                    ; preds = %bb.aa
  %i.cq = icmp sgt i32 %i.m, 0
  br i1 %i.cq, label %.lr.ph, label %.thread714.thread

.lr.ph:                                           ; preds = %.preheader769
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !99
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %.0559775 = phi i32 [ 0, %.lr.ph ], [ %i.dd, %bb.ab ] ; 3 uses
  %.0565774 = phi i32 [ 0, %.lr.ph ], [ %i.dc, %bb.ab ] ; 2 uses
  %i.ct = zext nneg i32 %.0565774 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !100
  %i.cw = lshr i8 %i.cv, 3
  %i.cx = and i8 %i.cw, 15
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr @ff_mov_write_packet.packed_size, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !101
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %.0565774, %i.db        ; 2 uses
  %i.dd = add nuw nsw i32 %.0559775, 1
  %i.de = icmp slt i32 %i.dc, %i.m
  %i.df = icmp samesign ult i32 %.0559775, 99
  %i.dg = select i1 %i.de, i1 %i.df, i1 false
  br i1 %i.dg, label %bb.ab, label %._crit_edge, !llvm.loop !278

._crit_edge:                                      ; preds = %bb.ab
  %i.dh = icmp eq i32 %.0559775, 0
  br i1 %i.dh, label %.thread716, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1) #18
  br label %.thread

bb.ad:                                            ; preds = %bb.aa, %bb.aa
  %i.di = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 160
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !103
  br label %.thread714

bb.ae:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %.0558, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !104 ; 2 uses
  %.not654 = icmp eq i64 %i.dm, 0
  br i1 %.not654, label %.thread716, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = sext i32 %i.m to i64
  %i.do = sdiv i64 %i.dn, %i.dm
  %i.dp = trunc i64 %i.do to i32
  br label %.thread714

.thread714:                                       ; preds = %bb.ad, %bb.af
  %.1560 = phi i32 [ %i.dp, %bb.af ], [ %i.dk, %bb.ad ] ; 2 uses
  %i.dq = icmp eq i32 %.1560, 0
  br i1 %i.dq, label %.thread714.thread, label %.thread716

.thread714.thread:                                ; preds = %.preheader769, %.thread714
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #18
  br label %.thread

.thread716:                                       ; preds = %._crit_edge, %bb.ae, %.thread714
  %.1560718 = phi i32 [ %.1560, %.thread714 ], [ 1, %bb.ae ], [ 1, %._crit_edge ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0558, i64 64 ; 11 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105 ; 18 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !39
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %.thread716
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !106 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dy = getelementptr inbounds nuw i8, ptr %.0558, i64 120
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !107
  switch i32 %i.dz, label %bb.ai [
    i32 1882548577, label %bb.al
    i32 1899325793, label %bb.al
    i32 842361185, label %bb.al
    i32 859138401, label %bb.al
    i32 892692833, label %bb.al
    i32 909470049, label %bb.al
    i32 1882286433, label %bb.al
    i32 1899063649, label %bb.al
    i32 842099041, label %bb.al
    i32 858876257, label %bb.al
    i32 892430689, label %bb.al
    i32 909207905, label %bb.al
    i32 2021026145, label %bb.al
    i32 1852397121, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  %.not655 = icmp eq i32 %i.cp, 99
  br i1 %.not655, label %.thread719.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !108
  %i.ec = zext nneg i32 %i.dw to i64
  %i.ed = tail call ptr @av_memdup(ptr noundef %i.eb, i64 noundef %i.ec) #18 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0558, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !109
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !40
  %.not656 = icmp eq ptr %i.ed, null
  br i1 %.not656, label %.thread750, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eg = load i32, ptr %i.dv, align 8, !tbaa !106 ; 2 uses
  %i.eh = load ptr, ptr %i.dr, align 8, !tbaa !105 ; 2 uses
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !39
  %.pr.pre = load i32, ptr %i.co, align 4, !tbaa !98
  %i.ei = icmp eq i32 %i.eg, 0
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ak, %bb.ag, %.thread716
  %.not657 = phi i1 [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ true, %bb.ah ], [ %i.ei, %bb.ak ], [ true, %bb.ag ], [ false, %.thread716 ]
  %i.ej = phi ptr [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ah ], [ %i.eh, %bb.ak ], [ %i.ds, %bb.ag ], [ %i.ds, %.thread716 ]
  %.pr = phi i32 [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %i.cp, %bb.ah ], [ %.pr.pre, %bb.ak ], [ %i.cp, %bb.ag ], [ %i.cp, %.thread716 ]
  switch i32 %.pr, label %bb.ao [
    i32 99, label %.thread719
    i32 27, label %.thread719
    i32 172, label %.thread719
    i32 195, label %.thread719
    i32 166, label %.thread719
    i32 263, label %.thread719
    i32 98316, label %.thread719
    i32 86060, label %.thread719
  ]

.thread719:                                       ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  br i1 %.not657, label %.thread719.thread, label %bb.ao

.thread719.thread:                                ; preds = %bb.ai, %.thread719
  %i.ek = phi ptr [ %i.ej, %.thread719 ], [ %i.ds, %bb.ai ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0558, i64 120
  %i.em = load i32, ptr %i.el, align 8, !tbaa !107
  switch i32 %i.em, label %bb.am [
    i32 1882548577, label %bb.ao
    i32 1899325793, label %bb.ao
    i32 842361185, label %bb.ao
    i32 859138401, label %bb.ao
    i32 892692833, label %bb.ao
    i32 909470049, label %bb.ao
    i32 1882286433, label %bb.ao
    i32 1899063649, label %bb.ao
    i32 842099041, label %bb.ao
    i32 858876257, label %bb.ao
    i32 892430689, label %bb.ao
    i32 909207905, label %bb.ao
    i32 2021026145, label %bb.ao
    i32 1852397121, label %bb.ao
  ]

bb.am:                                            ; preds = %.thread719.thread
  %i.en = load i32, ptr %i.b, align 4, !tbaa !39  ; 3 uses
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !39
  %i.eo = add nsw i32 %i.en, 64
  %i.ep = sext i32 %i.eo to i64
  %i.eq = tail call noalias ptr @av_malloc(i64 noundef %i.ep) #18 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0558, i64 56 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !109
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !40
  %.not658 = icmp eq ptr %i.eq, null
  br i1 %.not658, label %.thread750, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !99
  %i.ev = sext i32 %i.en to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr align 1 %i.eu, i64 %i.ev, i1 false)
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !109
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !40
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %i.ev
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ey, i8 0, i64 64, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %.thread719.thread, %bb.an, %.thread719
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !283
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !284
  %i.fd = tail call ptr @av_packet_side_data_get(ptr noundef %i.fa, i32 noundef %i.fc, i32 noundef 1) #18 ; 4 uses
  %i.fe = load i32, ptr %i.l, align 8, !tbaa !38
  %i.ff = icmp ne i32 %i.fe, 0
  %i.fg = icmp ne ptr %i.fd, null
  %or.cond = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !111 ; 3 uses
  %.not659 = icmp eq i64 %i.fi, 0
  br i1 %.not659, label %bb.ax, label %.preheader

.preheader:                                       ; preds = %bb.ap
  %i.fj = getelementptr inbounds nuw i8, ptr %.0558, i64 44 ; 4 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !112 ; 4 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph777, label %._crit_edge778.thread

.lr.ph777:                                        ; preds = %.preheader
  %i.fm = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.fn = getelementptr inbounds nuw i8, ptr %.0558, i64 56
  %wide.trip.count = zext nneg i32 %i.fk to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph777, %bb.as
  %indvars.iv = phi i64 [ 0, %.lr.ph777 ], [ %indvars.iv.next, %bb.as ] ; 4 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !39
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp eq i64 %i.fi, %i.fq
  br i1 %i.fr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !109
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !40
  %i.fv = load ptr, ptr %i.fd, align 8, !tbaa !113
  %bcmp = tail call i32 @bcmp(ptr %i.fu, ptr %i.fv, i64 %i.fi)
  %.not660 = icmp eq i32 %bcmp, 0
  br i1 %.not660, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge778, label %bb.aq, !llvm.loop !279

bb.at:                                            ; preds = %bb.ar
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %.0558, i64 48
  store i32 %i.fw, ptr %i.fx, align 8, !tbaa !114
  br label %bb.ax

._crit_edge778:                                   ; preds = %bb.as
  %.not661 = icmp eq i32 %i.fk, 2147483647
  br i1 %.not661, label %.thread, label %._crit_edge778.thread

._crit_edge778.thread:                            ; preds = %.preheader, %._crit_edge778
  %i.fy = add nsw i32 %i.fk, 1                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0558, i64 56 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !109
  %i.gb = sext i32 %i.fy to i64                   ; 2 uses
  %i.gc = tail call ptr @av_realloc_array(ptr noundef %i.ga, i64 noundef %i.gb, i64 noundef 8) #18 ; 2 uses
  %.not662 = icmp eq ptr %i.gc, null
  br i1 %.not662, label %.thread, label %bb.au

bb.au:                                            ; preds = %._crit_edge778.thread
  store ptr %i.gc, ptr %i.fz, align 8, !tbaa !109
  %i.gd = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.ge = tail call ptr @av_realloc_array(ptr noundef %i.gd, i64 noundef %i.gb, i64 noundef 4) #18 ; 2 uses
  %.not663 = icmp eq ptr %i.ge, null
  br i1 %.not663, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr %i.ge, ptr %i.dr, align 8, !tbaa !105
  %i.gf = load ptr, ptr %i.fd, align 8, !tbaa !113
  %i.gg = load i64, ptr %i.fh, align 8, !tbaa !111
  %i.gh = tail call ptr @av_memdup(ptr noundef %i.gf, i64 noundef %i.gg) #18 ; 2 uses
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !109
  %i.gj = load i32, ptr %i.fj, align 4, !tbaa !112
  %i.gk = sext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gk
  store ptr %i.gh, ptr %i.gl, align 8, !tbaa !40
  %.not664 = icmp eq ptr %i.gh, null
  br i1 %.not664, label %.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = load i64, ptr %i.fh, align 8, !tbaa !111
  %i.gn = trunc i64 %i.gm to i32
  %i.go = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gk
  store i32 %i.gn, ptr %i.gp, align 4, !tbaa !39
  %i.gq = load i32, ptr %i.fj, align 4, !tbaa !112
  %i.gr = getelementptr inbounds nuw i8, ptr %.0558, i64 48
  store i32 %i.gq, ptr %i.gr, align 8, !tbaa !114
  store i32 %i.fy, ptr %i.fj, align 4, !tbaa !112
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw, %bb.ap, %bb.ao
  %i.gs = load i32, ptr %i.co, align 4, !tbaa !98 ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 86018
  br i1 %i.gt, label %bb.ay, label %thread-pre-split725

bb.ay:                                            ; preds = %bb.ax
  %i.gu = load i32, ptr %i.l, align 8, !tbaa !38
  %i.gv = icmp sgt i32 %i.gu, 2
  br i1 %i.gv, label %bb.az, label %.thread745

bb.az:                                            ; preds = %bb.ay
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !99
  %i.gy = load i16, ptr %i.gx, align 1, !tbaa !100
  %i.gz = tail call i16 @llvm.bswap.i16(i16 %i.gy)
  %i.ha = icmp ugt i16 %i.gz, -17
  br i1 %i.ha, label %bb.ba, label %.thread745

bb.ba:                                            ; preds = %bb.az
  %i.hb = getelementptr inbounds nuw i8, ptr %.0558, i64 128
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !115
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !116
  %.not665 = icmp eq i64 %i.he, 0
  br i1 %.not665, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #18
  br label %.thread

bb.bc:                                            ; preds = %bb.ba
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.4) #18
  %.pr726.pre = load i32, ptr %i.co, align 4, !tbaa !98
  br label %thread-pre-split725

thread-pre-split725:                              ; preds = %bb.bc, %bb.ax
  %i.hf = phi i32 [ %i.gs, %bb.ax ], [ %.pr726.pre, %bb.bc ] ; 2 uses
  switch i32 %i.hf, label %.thread745 [
    i32 27, label %bb.bd
    i32 172, label %bb.bn
    i32 195, label %bb.bx
    i32 98316, label %bb.cf
    i32 222, label %bb.co
    i32 86019, label %bb.cw
    i32 86056, label %bb.cw
    i32 94218, label %bb.ei
    i32 270, label %bb.ep
  ]

bb.bd:                                            ; preds = %thread-pre-split725
  %i.hg = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.hh = getelementptr inbounds nuw i8, ptr %.0558, i64 48
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !114
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !39
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %bb.be, label %.thread745

bb.be:                                            ; preds = %bb.bd
  %i.hn = getelementptr inbounds nuw i8, ptr %.0558, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !109
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hj
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !40
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !100
  %.not666 = icmp eq i8 %i.hr, 1
  br i1 %.not666, label %.thread745, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hs = getelementptr inbounds nuw i8, ptr %.0558, i64 120
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !107
  switch i32 %i.ht, label %bb.bg [
    i32 1882548577, label %.thread745
    i32 1899325793, label %.thread745
    i32 842361185, label %.thread745
    i32 859138401, label %.thread745
    i32 892692833, label %.thread745
    i32 909470049, label %.thread745
    i32 1882286433, label %.thread745
    i32 1899063649, label %.thread745
    i32 842099041, label %.thread745
    i32 858876257, label %.thread745
    i32 892430689, label %.thread745
    i32 909207905, label %.thread745
    i32 2021026145, label %.thread745
    i32 1852397121, label %.thread745
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.hu = getelementptr inbounds nuw i8, ptr %.0558, i64 240
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !117 ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, -1
  br i1 %i.hw, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.hx = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !118
  %i.hz = icmp slt i32 %i.hv, %i.hy
end_hunk_0
