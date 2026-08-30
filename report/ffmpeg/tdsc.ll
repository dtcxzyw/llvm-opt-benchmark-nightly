Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tdsc?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tdsc_decode_frame:bb.a
  %i.eq = add nsw i64 %i.ep, 24
  %i.er = icmp sgt i64 %i.eq, %i.eo
  br i1 %i.er, label %bytestream2_get_le32.exit92, label %bb.af

bb.af:                                            ; preds = %bytestream2_get_le32.exit100.i.i
  %i.es = icmp slt i64 %i.en, 4
  br i1 %i.es, label %bytestream2_get_le32.exit98.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 3 uses
  store ptr %i.et, ptr %i.do, align 8, !tbaa !60
  %i.eu = load i32, ptr %i.em, align 1, !tbaa !61
  %.pre160.i.i = ptrtoint ptr %i.et to i64
  br label %bytestream2_get_le32.exit98.i.i

bytestream2_get_le32.exit98.i.i:                  ; preds = %bb.ag, %bb.af
  %.pre-phi161.i.i = phi i64 [ %.pre160.i.i, %bb.ag ], [ %i.dx, %bb.af ]
  %i.ev = phi ptr [ %i.et, %bb.ag ], [ %i.dv, %bb.af ]
  %.0.i97.i.i = phi i32 [ %i.eu, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.ew = sub i64 %i.dx, %.pre-phi161.i.i
  %..i.i.i = call i64 @llvm.smin.i64(i64 %i.ew, i64 4)
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 %..i.i.i ; 3 uses
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.dx, %i.ey
  %i.fa = icmp slt i64 %i.ez, 4
  br i1 %i.fa, label %bytestream2_get_le32.exit96.i.i, label %bb.ah

bb.ah:                                            ; preds = %bytestream2_get_le32.exit98.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 3 uses
  store ptr %i.fb, ptr %i.do, align 8, !tbaa !60
  %i.fc = load i32, ptr %i.ex, align 1, !tbaa !61
  %.pre162.i.i = ptrtoint ptr %i.fb to i64
  br label %bytestream2_get_le32.exit96.i.i

bytestream2_get_le32.exit96.i.i:                  ; preds = %bb.ah, %bytestream2_get_le32.exit98.i.i
  %.pre-phi163.i.i = phi i64 [ %.pre162.i.i, %bb.ah ], [ %i.dx, %bytestream2_get_le32.exit98.i.i ]
  %i.fd = phi ptr [ %i.fb, %bb.ah ], [ %i.dv, %bytestream2_get_le32.exit98.i.i ] ; 2 uses
  %.0.i95.i.i = phi i32 [ %i.fc, %bb.ah ], [ 0, %bytestream2_get_le32.exit98.i.i ] ; 7 uses
  %i.fe = sub i64 %i.dx, %.pre-phi163.i.i
  %i.ff = icmp slt i64 %i.fe, 4
  br i1 %i.ff, label %bytestream2_get_le32.exit94.i.i, label %bb.ai

bb.ai:                                            ; preds = %bytestream2_get_le32.exit96.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 3 uses
  store ptr %i.fg, ptr %i.do, align 8, !tbaa !60
  %i.fh = load i32, ptr %i.fd, align 1, !tbaa !61
  %.pre164.i.i = ptrtoint ptr %i.fg to i64
  br label %bytestream2_get_le32.exit94.i.i

bytestream2_get_le32.exit94.i.i:                  ; preds = %bb.ai, %bytestream2_get_le32.exit96.i.i
  %.pre-phi165.i.i = phi i64 [ %.pre164.i.i, %bb.ai ], [ %i.dx, %bytestream2_get_le32.exit96.i.i ]
  %i.fi = phi ptr [ %i.fg, %bb.ai ], [ %i.dv, %bytestream2_get_le32.exit96.i.i ] ; 2 uses
  %.0.i93.i.i = phi i32 [ %i.fh, %bb.ai ], [ 0, %bytestream2_get_le32.exit96.i.i ] ; 7 uses
  %i.fj = sub i64 %i.dx, %.pre-phi165.i.i
  %i.fk = icmp slt i64 %i.fj, 4
  br i1 %i.fk, label %bytestream2_get_le32.exit92.i.i, label %bb.aj

bb.aj:                                            ; preds = %bytestream2_get_le32.exit94.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 3 uses
  store ptr %i.fl, ptr %i.do, align 8, !tbaa !60
  %i.fm = load i32, ptr %i.fi, align 1, !tbaa !61
  %.pre166.i.i = ptrtoint ptr %i.fl to i64
  br label %bytestream2_get_le32.exit92.i.i

bytestream2_get_le32.exit92.i.i:                  ; preds = %bb.aj, %bytestream2_get_le32.exit94.i.i
  %.pre-phi167.i.i = phi i64 [ %.pre166.i.i, %bb.aj ], [ %i.dx, %bytestream2_get_le32.exit94.i.i ]
  %i.fn = phi ptr [ %i.fl, %bb.aj ], [ %i.dv, %bytestream2_get_le32.exit94.i.i ] ; 2 uses
  %.0.i91.i.i = phi i32 [ %i.fm, %bb.aj ], [ 0, %bytestream2_get_le32.exit94.i.i ] ; 4 uses
  %i.fo = sub i64 %i.dx, %.pre-phi167.i.i
  %i.fp = icmp slt i64 %i.fo, 4
  br i1 %i.fp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bytestream2_get_le32.exit92.i.i
  store ptr %i.dv, ptr %i.do, align 8, !tbaa !57
  br label %bytestream2_get_le32.exit.i.i

bb.al:                                            ; preds = %bytestream2_get_le32.exit92.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store ptr %i.fq, ptr %i.do, align 8, !tbaa !60
  %i.fr = load i32, ptr %i.fn, align 1, !tbaa !61
  br label %bytestream2_get_le32.exit.i.i

bytestream2_get_le32.exit.i.i:                    ; preds = %bb.al, %bb.ak
  %.0.i.i.i = phi i32 [ 0, %bb.ak ], [ %i.fr, %bb.al ] ; 4 uses
  %i.fs = icmp sgt i32 %.0.i95.i.i, -1
  %i.ft = icmp sgt i32 %.0.i93.i.i, -1
  %or.cond.not112.i.i = select i1 %i.fs, i1 %i.ft, i1 false
  %.not86.i.i = icmp sgt i32 %.0.i91.i.i, %.0.i95.i.i
  %or.cond89.i.i = select i1 %or.cond.not112.i.i, i1 %.not86.i.i, i1 false
  %.not87.i.i = icmp sgt i32 %.0.i.i.i, %.0.i93.i.i
  %or.cond90.i.i = select i1 %or.cond89.i.i, i1 %.not87.i.i, i1 false
  %.pre.i.i = load i32, ptr %i.dq, align 8, !tbaa !50 ; 2 uses
  br i1 %or.cond90.i.i, label %bb.am, label %bytestream2_get_le32.exit._crit_edge.i.i

bytestream2_get_le32.exit._crit_edge.i.i:         ; preds = %bytestream2_get_le32.exit.i.i
  %.pre157.i.i = load i32, ptr %i.dr, align 4, !tbaa !51
  br label %split.i.i

bb.am:                                            ; preds = %bytestream2_get_le32.exit.i.i
  %i.fu = icmp sgt i32 %.0.i91.i.i, %.pre.i.i
  %.pre158.i.i = load i32, ptr %i.dr, align 4, !tbaa !51 ; 2 uses
  %i.fv = icmp sgt i32 %.0.i.i.i, %.pre158.i.i
  %or.cond.i.i = select i1 %i.fu, i1 true, i1 %i.fv
  br i1 %or.cond.i.i, label %split.i.i, label %bb.an

split.i.i:                                        ; preds = %bb.am, %bytestream2_get_le32.exit._crit_edge.i.i
  %i.fw = phi i32 [ %.pre157.i.i, %bytestream2_get_le32.exit._crit_edge.i.i ], [ %.pre158.i.i, %bb.am ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %.0.i95.i.i, i32 noundef %.0.i93.i.i, i32 noundef %.0.i91.i.i, i32 noundef %.0.i.i.i, i32 noundef %.pre.i.i, i32 noundef %i.fw) #6
  br label %bytestream2_get_le32.exit92

bb.an:                                            ; preds = %bb.am
  %i.fx = sub nuw nsw i32 %.0.i91.i.i, %.0.i95.i.i ; 5 uses
  %i.fy = sub nuw nsw i32 %.0.i.i.i, %.0.i93.i.i  ; 5 uses
  %i.fz = call i32 @av_reallocp(ptr noundef nonnull %i.ds, i64 noundef %i.ep) #6 ; 2 uses
  %i.ga = load ptr, ptr %i.ds, align 8, !tbaa !64 ; 2 uses
  %.not88.i.i = icmp eq ptr %i.ga, null
  br i1 %.not88.i.i, label %tdsc_parse_tdsf.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gb = load ptr, ptr %i.dp, align 8, !tbaa !59
  %i.gc = load ptr, ptr %i.do, align 8, !tbaa !57 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = zext i32 %.0.i99.i.i to i64
  %i.gh = call i64 @llvm.smin.i64(i64 %i.gf, i64 %i.gg)
  %i.gi = and i64 %i.gh, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr align 1 %i.gc, i64 %i.gi, i1 false)
  %i.gj = load ptr, ptr %i.do, align 8, !tbaa !57
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gi
  store ptr %i.gk, ptr %i.do, align 8, !tbaa !57
  switch i32 %.0.i97.i.i, label %bb.az [
    i32 1246774599, label %bb.ap
    i32 1380013856, label %bb.ax
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gl = load ptr, ptr %i.b, align 8, !tbaa !9   ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !40
  call void @av_packet_unref(ptr noundef %i.gn) #6
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !64
  %i.gq = load ptr, ptr %i.gm, align 8, !tbaa !40 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !54
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  store i32 %.0.i99.i.i, ptr %i.gs, align 8, !tbaa !56
  %i.gt = load ptr, ptr %i.gl, align 8, !tbaa !41
  %i.gu = call i32 @avcodec_send_packet(ptr noundef %i.gt, ptr noundef %i.gq) #6 ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.15) #6
  br label %bytestream2_get_le32.exit92

bb.ar:                                            ; preds = %bb.ap
  %i.gw = load ptr, ptr %i.gl, align 8, !tbaa !41
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gl, i64 56 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !39
  %i.gz = call i32 @avcodec_receive_frame(ptr noundef %i.gw, ptr noundef %i.gy) #6 ; 2 uses
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hb = load ptr, ptr %i.gx, align 8, !tbaa !39 ; 8 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 116
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !45
  %.not.i.i.i = icmp eq i32 %i.hd, 12
  br i1 %.not.i.i.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 104
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !62
  %i.hg = icmp sgt i32 %i.fx, %i.hf
  br i1 %i.hg, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 108
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !63
  %i.hj = icmp sgt i32 %i.fy, %i.hi
  br i1 %i.hj, label %bb.av, label %.preheader.lr.ph.i.i.i

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %i.gz) #6
  %i.hk = load i32, ptr %i.du, align 8, !tbaa !65
  %i.hl = and i32 %i.hk, 8
  %.not38.i.i.i = icmp eq i32 %i.hl, 0
  br i1 %.not38.i.i.i, label %select.unfold.i.i, label %bytestream2_get_le32.exit92

.preheader.lr.ph.i.i.i:                           ; preds = %bb.au
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 68
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !42
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !42
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !38 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !42 ; 2 uses
  %i.hu = sext i32 %i.ht to i64
  %i.hv = sext i32 %i.hp to i64
  %i.hw = load ptr, ptr %i.hr, align 8, !tbaa !60
  %i.hx = mul nuw nsw i32 %.0.i95.i.i, 3
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hy
  %i.ia = mul nsw i32 %i.ht, %.0.i93.i.i
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 %i.ib
  %i.id = load ptr, ptr %i.hb, align 8, !tbaa !60
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !60
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !60
  %wide.trip.count.i.i.i = zext nneg i32 %i.fx to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.i.i.i
  %.0.i44.i.i.i = phi i32 [ %i.ka, %._crit_edge.i.i.i ], [ 0, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.024.i43.i.i.i = phi ptr [ %i.jv, %._crit_edge.i.i.i ], [ %i.ic, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.025.i42.i.i.i = phi ptr [ %i.jw, %._crit_edge.i.i.i ], [ %i.id, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.026.i41.i.i.i = phi ptr [ %i.jy, %._crit_edge.i.i.i ], [ %i.if, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.027.i40.i.i.i = phi ptr [ %i.jz, %._crit_edge.i.i.i ], [ %i.ih, %.preheader.lr.ph.i.i.i ] ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.aw ] ; 4 uses
  %i.ii = mul nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.ij = getelementptr inbounds nuw i8, ptr %.024.i43.i.i.i, i64 %i.ii ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.025.i42.i.i.i, i64 %indvars.iv.i.i.i
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !61
  %i.im = zext i8 %i.il to i32                    ; 3 uses
  %i.in = lshr i64 %indvars.iv.i.i.i, 1
  %i.io = and i64 %i.in, 2147483647               ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.026.i41.i.i.i, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !61
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nsw i32 %i.ir, -128                 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.027.i40.i.i.i, i64 %i.io
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !61
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nsw i32 %i.iv, -128                 ; 2 uses
  %i.ix = mul nsw i32 %i.iw, 91881
  %i.iy = add nsw i32 %i.ix, 32768
  %i.iz = ashr i32 %i.iy, 16
  %i.ja = add nsw i32 %i.iz, %i.im                ; 3 uses
  %i.jb = icmp ugt i32 %i.ja, 255
  %isnotneg.i11.i.i.i.i = icmp sgt i32 %i.ja, -1
  %i.jc = sext i1 %isnotneg.i11.i.i.i.i to i8
  %i.jd = trunc nuw i32 %i.ja to i8
  %.0.i12.i.i.i.i = select i1 %i.jb, i8 %i.jc, i8 %i.jd
  store i8 %.0.i12.i.i.i.i, ptr %i.ij, align 1, !tbaa !61
  %i.je = mul nsw i32 %i.is, -22554
  %.neg.i.i.i.i = mul nsw i32 %i.iw, -46802
  %i.jf = add nsw i32 %i.je, 32768
  %i.jg = add nsw i32 %i.jf, %.neg.i.i.i.i
  %i.jh = ashr i32 %i.jg, 16
  %i.ji = add nsw i32 %i.jh, %i.im                ; 3 uses
  %i.jj = icmp ugt i32 %i.ji, 255
  %isnotneg.i9.i.i.i.i = icmp sgt i32 %i.ji, -1
  %i.jk = sext i1 %isnotneg.i9.i.i.i.i to i8
  %i.jl = trunc nuw i32 %i.ji to i8
  %.0.i10.i.i.i.i = select i1 %i.jj, i8 %i.jk, i8 %i.jl
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store i8 %.0.i10.i.i.i.i, ptr %i.jm, align 1, !tbaa !61
  %i.jn = mul nsw i32 %i.is, 116130
  %i.jo = add nsw i32 %i.jn, 32768
  %i.jp = ashr i32 %i.jo, 16
  %i.jq = add nsw i32 %i.jp, %i.im                ; 3 uses
  %i.jr = icmp ugt i32 %i.jq, 255
  %isnotneg.i.i.i.i.i = icmp sgt i32 %i.jq, -1
  %i.js = sext i1 %isnotneg.i.i.i.i.i to i8
  %i.jt = trunc nuw i32 %i.jq to i8
  %.0.i.i.i.i.i = select i1 %i.jr, i8 %i.js, i8 %i.jt
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  store i8 %.0.i.i.i.i.i, ptr %i.ju, align 1, !tbaa !61
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.aw, !llvm.loop !66

._crit_edge.i.i.i:                                ; preds = %bb.aw
  %i.jv = getelementptr inbounds i8, ptr %.024.i43.i.i.i, i64 %i.hu
  %i.jw = getelementptr inbounds i8, ptr %.025.i42.i.i.i, i64 %i.hv
  %i.jx = trunc i32 %.0.i44.i.i.i to i1
  %4 = select i1 %i.jx, i32 %i.hn, i32 0
  %5 = sext i32 %4 to i64                         ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.026.i41.i.i.i, i64 %5
  %i.jz = getelementptr inbounds i8, ptr %.027.i40.i.i.i, i64 %5
  %i.ka = add nuw nsw i32 %.0.i44.i.i.i, 1        ; 2 uses
  %exitcond46.not.i.i.i = icmp eq i32 %i.ka, %i.fy
  br i1 %exitcond46.not.i.i.i, label %tdsc_blit.exit.loopexit.i.i.i, label %.preheader.i.i.i, !llvm.loop !68

tdsc_blit.exit.loopexit.i.i.i:                    ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !39
  call void @av_frame_unref(ptr noundef %.pre.i.i.i) #6
  br label %select.unfold.i.i

bb.ax:                                            ; preds = %bb.ao
  %i.kb = sext i32 %i.fx to i64
  %i.kc = mul nsw i64 %i.kb, 3
  %i.kd = sext i32 %i.fy to i64
  %i.ke = mul nsw i64 %i.kc, %i.kd
  %i.kf = icmp sgt i64 %i.ke, %i.ep
  br i1 %i.kf, label %bytestream2_get_le32.exit92, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kg = load ptr, ptr %i.dt, align 8, !tbaa !38 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !60
  %i.ki = mul nuw nsw i32 %.0.i95.i.i, 3
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !42 ; 2 uses
  %i.kn = mul nsw i32 %i.km, %.0.i93.i.i
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds i8, ptr %i.kk, i64 %i.ko
  %i.kq = load ptr, ptr %i.ds, align 8, !tbaa !64
  %i.kr = mul nsw i32 %i.fx, 3                    ; 2 uses
  call void @av_image_copy_plane(ptr noundef %i.kp, i32 noundef %i.km, ptr noundef %i.kq, i32 noundef %i.kr, i32 noundef %i.kr, i32 noundef %i.fy) #6
  br label %select.unfold.i.i

bb.az:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %.0.i97.i.i) #6
  br label %bytestream2_get_le32.exit92

select.unfold.i.i:                                ; preds = %bb.ay, %tdsc_blit.exit.loopexit.i.i.i, %bb.av
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.14, i32 noundef %.077133.i.i, i32 noundef %i.fx, i32 noundef %i.fy, i32 noundef %.0.i95.i.i, i32 noundef %.0.i93.i.i) #6
  %i.ks = add nuw nsw i32 %.077133.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ks, %.0.i95
  br i1 %exitcond.not.i.i, label %tdsc_parse_tdsf.exit.thread121, label %bb.z, !llvm.loop !69

tdsc_parse_tdsf.exit:                             ; preds = %bb.an
  %i.kt = icmp slt i32 %i.fz, 0
  br i1 %i.kt, label %bytestream2_get_le32.exit92, label %tdsc_parse_tdsf.exit.thread121

tdsc_parse_tdsf.exit.thread121:                   ; preds = %select.unfold.i.i, %bb.y, %tdsc_parse_tdsf.exit
  %i.ku = load ptr, ptr %i.an, align 8, !tbaa !59 ; 3 uses
  %i.kv = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 3 uses
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx                    ; 2 uses
  %i.kz = trunc i64 %i.ky to i32
  %i.la = icmp sgt i32 %i.kz, 7
  br i1 %i.la, label %bb.ba, label %.thread134

bb.ba:                                            ; preds = %tdsc_parse_tdsf.exit.thread121
  %i.lb = icmp slt i64 %i.ky, 4
  br i1 %i.lb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.ku, ptr %i.ae, align 8, !tbaa !57
  br label %.thread134

bb.bc:                                            ; preds = %bb.ba
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 4 ; 2 uses
  store ptr %i.lc, ptr %i.ae, align 8, !tbaa !60
  %i.ld = load i32, ptr %i.kv, align 1, !tbaa !61
  br label %bytestream2_get_le32.exit92.thread

bytestream2_get_le32.exit92.thread:               ; preds = %bb.bc, %bytestream2_get_le32.exit98
  %i.le = phi ptr [ %i.ar, %bytestream2_get_le32.exit98 ], [ %i.lc, %bb.bc ] ; 3 uses
  %i.lf = phi ptr [ %i.am, %bytestream2_get_le32.exit98 ], [ %i.ku, %bb.bc ] ; 2 uses
  %.274 = phi i32 [ %i.as, %bytestream2_get_le32.exit98 ], [ %i.ld, %bb.bc ]
  %.171 = phi i1 [ true, %bytestream2_get_le32.exit98 ], [ %.0.i93, %bb.bc ] ; 12 uses
  %i.lg = icmp eq i32 %.274, 1297306692
  br i1 %i.lg, label %bb.bd, label %.thread134

bb.bd:                                            ; preds = %bytestream2_get_le32.exit92.thread
  %i.lh = ptrtoint ptr %i.lf to i64               ; 3 uses
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = icmp slt i64 %i.lj, 4
  br i1 %i.lk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr %i.lf, ptr %i.ae, align 8, !tbaa !57
  br label %bytestream2_get_le32.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 4 ; 2 uses
  store ptr %i.ll, ptr %i.ae, align 8, !tbaa !60
  %i.lm = load i32, ptr %i.le, align 1, !tbaa !61
  %.pre265 = ptrtoint ptr %i.ll to i64
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.be, %bb.bf
  %.pre-phi266 = phi i64 [ %i.lh, %bb.be ], [ %.pre265, %bb.bf ]
  %.0.i = phi i32 [ 0, %bb.be ], [ %i.lm, %bb.bf ]
  %i.ln = sub i64 %i.lh, %.pre-phi266
  %i.lo = trunc i64 %i.ln to i32
  %i.lp = icmp sgt i32 %.0.i, %i.lo
  br i1 %i.lp, label %.thread131, label %bb.bg

.thread131:                                       ; preds = %bytestream2_get_le32.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6) #6
  br label %bytestream2_get_le32.exit92

bb.bg:                                            ; preds = %bytestream2_get_le32.exit
  %i.lq = load ptr, ptr %i.b, align 8, !tbaa !9   ; 10 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 27 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 24 ; 6 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !59 ; 10 uses
  %i.lu = load ptr, ptr %i.lr, align 8, !tbaa !57 ; 3 uses
  %i.lv = ptrtoint ptr %i.lt to i64               ; 14 uses
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = icmp slt i64 %i.lx, 4
  br i1 %i.ly, label %bytestream2_get_le32.exit22.thread.i, label %bytestream2_get_le32.exit22.i

bytestream2_get_le32.exit22.thread.i:             ; preds = %bb.bg
  store ptr %i.lt, ptr %i.lr, align 8, !tbaa !57
  br label %bb.cq

bytestream2_get_le32.exit22.i:                    ; preds = %bb.bg
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 4 ; 3 uses
  store ptr %i.lz, ptr %i.lr, align 8, !tbaa !60
  %i.ma = load i32, ptr %i.lu, align 1, !tbaa !61 ; 3 uses
  %.pre.i = ptrtoint ptr %i.lz to i64
  %i.mb = sub i64 %i.lv, %.pre.i
  %..i.i100 = call i64 @llvm.smin.i64(i64 %i.mb, i64 4)
  %i.mc = getelementptr inbounds i8, ptr %i.lz, i64 %..i.i100 ; 4 uses
  store ptr %i.mc, ptr %i.lr, align 8, !tbaa !57
  %i.md = and i32 %i.ma, -2
  %or.cond.i101 = icmp eq i32 %i.md, 2
  br i1 %or.cond.i101, label %bb.bh, label %bb.cq

bb.bh:                                            ; preds = %bytestream2_get_le32.exit22.i
  %i.me = icmp eq i32 %i.ma, 3
  %i.mf = ptrtoint ptr %i.mc to i64
  %i.mg = sub i64 %i.lv, %i.mf
  %i.mh = icmp slt i64 %i.mg, 4
  br i1 %i.mh, label %bytestream2_get_le32.exit20.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 4 ; 3 uses
  store ptr %i.mi, ptr %i.lr, align 8, !tbaa !60
  %i.mj = load i32, ptr %i.mc, align 1, !tbaa !61
  %.pre45.i = ptrtoint ptr %i.mi to i64
  br label %bytestream2_get_le32.exit20.i

bytestream2_get_le32.exit20.i:                    ; preds = %bb.bi, %bb.bh
  %.pre-phi46.i = phi i64 [ %.pre45.i, %bb.bi ], [ %i.lv, %bb.bh ]
  %i.mk = phi ptr [ %i.mi, %bb.bi ], [ %i.lt, %bb.bh ] ; 2 uses
  %.0.i19.i = phi i32 [ %i.mj, %bb.bi ], [ 0, %bb.bh ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lq, i64 108
  store i32 %.0.i19.i, ptr %i.ml, align 4, !tbaa !70
  %i.mm = sub i64 %i.lv, %.pre-phi46.i
  %i.mn = icmp slt i64 %i.mm, 4
  br i1 %i.mn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bytestream2_get_le32.exit20.i
  store ptr %i.lt, ptr %i.lr, align 8, !tbaa !57
  br label %bytestream2_get_le32.exit.i103

bb.bk:                                            ; preds = %bytestream2_get_le32.exit20.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 4 ; 2 uses
  store ptr %i.mo, ptr %i.lr, align 8, !tbaa !60
  %i.mp = load i32, ptr %i.mk, align 1, !tbaa !61
  br label %bytestream2_get_le32.exit.i103

bytestream2_get_le32.exit.i103:                   ; preds = %bb.bk, %bb.bj
  %i.mq = phi ptr [ %i.lt, %bb.bj ], [ %i.mo, %bb.bk ] ; 3 uses
  %.0.i.i104 = phi i32 [ 0, %bb.bj ], [ %i.mp, %bb.bk ]
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lq, i64 112
  store i32 %.0.i.i104, ptr %i.mr, align 8, !tbaa !71
  br i1 %i.me, label %bb.bl, label %.thread134

bb.bl:                                            ; preds = %bytestream2_get_le32.exit.i103
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = sub i64 %i.lv, %i.ms
  %i.mu = icmp slt i64 %i.mt, 2
  br i1 %i.mu, label %bytestream2_get_le16.exit157.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 2 ; 3 uses
  store ptr %i.mv, ptr %i.lr, align 8, !tbaa !60
  %i.mw = load i16, ptr %i.mq, align 1, !tbaa !61
  %i.mx = zext i16 %i.mw to i32
  %.pre226.i.i = ptrtoint ptr %i.mv to i64
  br label %bytestream2_get_le16.exit157.i.i

bytestream2_get_le16.exit157.i.i:                 ; preds = %bb.bm, %bb.bl
  %.pre-phi.i.i105 = phi i64 [ %.pre226.i.i, %bb.bm ], [ %i.lv, %bb.bl ]
  %i.my = phi ptr [ %i.mv, %bb.bm ], [ %i.lt, %bb.bl ] ; 2 uses
  %.0.i156.i.i = phi i32 [ %i.mx, %bb.bm ], [ 0, %bb.bl ] ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lq, i64 116 ; 3 uses
end_hunk_0
