Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tdsc?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tdsc_decode_frame:bb.a
  %i.fh = load i32, ptr %i.fd, align 1, !tbaa !75
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
  store ptr %i.fl, ptr %i.do, align 8, !tbaa !74
  %i.fm = load i32, ptr %i.fi, align 1, !tbaa !75
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
  store ptr %i.dv, ptr %i.do, align 8, !tbaa !71
  br label %bytestream2_get_le32.exit.i.i

bb.al:                                            ; preds = %bytestream2_get_le32.exit92.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store ptr %i.fq, ptr %i.do, align 8, !tbaa !74
  %i.fr = load i32, ptr %i.fn, align 1, !tbaa !75
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
  %.pre.i.i = load i32, ptr %i.dq, align 8, !tbaa !64 ; 2 uses
  br i1 %or.cond90.i.i, label %bb.am, label %bytestream2_get_le32.exit._crit_edge.i.i

bytestream2_get_le32.exit._crit_edge.i.i:         ; preds = %bytestream2_get_le32.exit.i.i
  %.pre157.i.i = load i32, ptr %i.dr, align 4, !tbaa !65
  br label %split.i.i

bb.am:                                            ; preds = %bytestream2_get_le32.exit.i.i
  %i.fu = icmp sgt i32 %.0.i91.i.i, %.pre.i.i
  %.pre158.i.i = load i32, ptr %i.dr, align 4, !tbaa !65 ; 2 uses
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
  %i.ga = load ptr, ptr %i.ds, align 8, !tbaa !78 ; 2 uses
  %.not88.i.i = icmp eq ptr %i.ga, null
  br i1 %.not88.i.i, label %tdsc_parse_tdsf.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gb = load ptr, ptr %i.dp, align 8, !tbaa !73
  %i.gc = load ptr, ptr %i.do, align 8, !tbaa !71 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = zext i32 %.0.i99.i.i to i64
  %i.gh = call i64 @llvm.smin.i64(i64 %i.gf, i64 %i.gg)
  %i.gi = and i64 %i.gh, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr align 1 %i.gc, i64 %i.gi, i1 false)
  %i.gj = load ptr, ptr %i.do, align 8, !tbaa !71
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gi
  store ptr %i.gk, ptr %i.do, align 8, !tbaa !71
  switch i32 %.0.i97.i.i, label %bb.az [
    i32 1246774599, label %bb.ap
    i32 1380013856, label %bb.ax
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gl = load ptr, ptr %i.b, align 8, !tbaa !28  ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !40
  call void @av_packet_unref(ptr noundef %i.gn) #6
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !78
  %i.gq = load ptr, ptr %i.gm, align 8, !tbaa !40 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !69
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  store i32 %.0.i99.i.i, ptr %i.gs, align 8, !tbaa !70
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
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !47
  %.not.i.i.i = icmp eq i32 %i.hd, 12
  br i1 %.not.i.i.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 104
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !76
  %i.hg = icmp sgt i32 %i.fx, %i.hf
  br i1 %i.hg, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 108
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !77
  %i.hj = icmp sgt i32 %i.fy, %i.hi
  br i1 %i.hj, label %bb.av, label %.preheader.lr.ph.i.i.i

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %i.gz) #6
  %i.hk = load i32, ptr %i.du, align 8, !tbaa !79
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
  %i.hw = load ptr, ptr %i.hr, align 8, !tbaa !74
  %i.hx = mul nuw nsw i32 %.0.i95.i.i, 3
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hy
  %i.ia = mul nsw i32 %i.ht, %.0.i93.i.i
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 %i.ib
  %i.id = load ptr, ptr %i.hb, align 8, !tbaa !74
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !74
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !74
  %wide.trip.count.i.i.i = zext nneg i32 %i.fx to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.i.i.i
  %.0.i44.i.i.i = phi i32 [ %i.jw, %._crit_edge.i.i.i ], [ 0, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.024.i43.i.i.i = phi ptr [ %i.jp, %._crit_edge.i.i.i ], [ %i.ic, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.025.i42.i.i.i = phi ptr [ %i.jq, %._crit_edge.i.i.i ], [ %i.id, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.026.i41.i.i.i = phi ptr [ %i.ju, %._crit_edge.i.i.i ], [ %i.if, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.027.i40.i.i.i = phi ptr [ %i.jv, %._crit_edge.i.i.i ], [ %i.ih, %.preheader.lr.ph.i.i.i ] ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.aw ] ; 4 uses
  %i.ii = mul nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.ij = getelementptr inbounds nuw i8, ptr %.024.i43.i.i.i, i64 %i.ii ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.025.i42.i.i.i, i64 %indvars.iv.i.i.i
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !75
  %i.im = zext i8 %i.il to i32                    ; 3 uses
  %i.in = lshr i64 %indvars.iv.i.i.i, 1
  %i.io = and i64 %i.in, 2147483647               ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.026.i41.i.i.i, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !75
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nsw i32 %i.ir, -128                 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.027.i40.i.i.i, i64 %i.io
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !75
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nsw i32 %i.iv, -128                 ; 2 uses
  %i.ix = mul nsw i32 %i.iw, 91881
  %i.iy = add nsw i32 %i.ix, 32768
  %i.iz = ashr i32 %i.iy, 16
  %i.ja = add nsw i32 %i.iz, %i.im
  %4 = call i32 @llvm.smax.i32(i32 %i.ja, i32 0)
  %.0.i1213.i.i.i.i = call i32 @llvm.umin.i32(i32 %4, i32 255)
  %i.jb = trunc nuw i32 %.0.i1213.i.i.i.i to i8
  store i8 %i.jb, ptr %i.ij, align 1, !tbaa !75
  %i.jc = mul nsw i32 %i.is, -22554
  %.neg.i.i.i.i = mul nsw i32 %i.iw, -46802
  %i.jd = add nsw i32 %i.jc, 32768
  %i.je = add nsw i32 %i.jd, %.neg.i.i.i.i
  %i.jf = ashr i32 %i.je, 16
  %i.jg = add nsw i32 %i.jf, %i.im
  %5 = call i32 @llvm.smax.i32(i32 %i.jg, i32 0)
  %.0.i1014.i.i.i.i = call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.jh = trunc nuw i32 %.0.i1014.i.i.i.i to i8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !75
  %i.jj = mul nsw i32 %i.is, 116130
  %i.jk = add nsw i32 %i.jj, 32768
  %i.jl = ashr i32 %i.jk, 16
  %i.jm = add nsw i32 %i.jl, %i.im
  %6 = call i32 @llvm.smax.i32(i32 %i.jm, i32 0)
  %.0.i15.i.i.i.i = call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.jn = trunc nuw i32 %.0.i15.i.i.i.i to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !75
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.aw, !llvm.loop !50

._crit_edge.i.i.i:                                ; preds = %bb.aw
  %i.jp = getelementptr inbounds i8, ptr %.024.i43.i.i.i, i64 %i.hu
  %i.jq = getelementptr inbounds i8, ptr %.025.i42.i.i.i, i64 %i.hv
  %i.jr = trunc i32 %.0.i44.i.i.i to i1
  %i.js = select i1 %i.jr, i32 %i.hn, i32 0
  %i.jt = sext i32 %i.js to i64                   ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %.026.i41.i.i.i, i64 %i.jt
  %i.jv = getelementptr inbounds i8, ptr %.027.i40.i.i.i, i64 %i.jt
  %i.jw = add nuw nsw i32 %.0.i44.i.i.i, 1        ; 2 uses
  %exitcond46.not.i.i.i = icmp eq i32 %i.jw, %i.fy
  br i1 %exitcond46.not.i.i.i, label %tdsc_blit.exit.loopexit.i.i.i, label %.preheader.i.i.i, !llvm.loop !51

tdsc_blit.exit.loopexit.i.i.i:                    ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !39
  call void @av_frame_unref(ptr noundef %.pre.i.i.i) #6
  br label %select.unfold.i.i

bb.ax:                                            ; preds = %bb.ao
  %i.jx = sext i32 %i.fx to i64
  %i.jy = mul nuw nsw i64 %i.jx, 3
  %i.jz = sext i32 %i.fy to i64
  %i.ka = mul nuw nsw i64 %i.jy, %i.jz
  %i.kb = icmp sgt i64 %i.ka, %i.ep
  br i1 %i.kb, label %bytestream2_get_le32.exit92, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kc = load ptr, ptr %i.dt, align 8, !tbaa !38 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !74
  %i.ke = mul nuw nsw i32 %.0.i95.i.i, 3
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !42 ; 2 uses
  %i.kj = mul nsw i32 %i.ki, %.0.i93.i.i
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds i8, ptr %i.kg, i64 %i.kk
  %i.km = load ptr, ptr %i.ds, align 8, !tbaa !78
  %i.kn = mul nuw nsw i32 %i.fx, 3                ; 2 uses
  call void @av_image_copy_plane(ptr noundef %i.kl, i32 noundef %i.ki, ptr noundef %i.km, i32 noundef %i.kn, i32 noundef %i.kn, i32 noundef %i.fy) #6
  br label %select.unfold.i.i

bb.az:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %.0.i97.i.i) #6
  br label %bytestream2_get_le32.exit92

select.unfold.i.i:                                ; preds = %bb.ay, %tdsc_blit.exit.loopexit.i.i.i, %bb.av
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.14, i32 noundef %.077133.i.i, i32 noundef %i.fx, i32 noundef %i.fy, i32 noundef %.0.i95.i.i, i32 noundef %.0.i93.i.i) #6
  %i.ko = add nuw nsw i32 %.077133.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ko, %.0.i95
  br i1 %exitcond.not.i.i, label %tdsc_parse_tdsf.exit.thread121, label %bb.z, !llvm.loop !52

tdsc_parse_tdsf.exit:                             ; preds = %bb.an
  %i.kp = icmp slt i32 %i.fz, 0
  br i1 %i.kp, label %bytestream2_get_le32.exit92, label %tdsc_parse_tdsf.exit.thread121

tdsc_parse_tdsf.exit.thread121:                   ; preds = %select.unfold.i.i, %bb.y, %tdsc_parse_tdsf.exit
  %i.kq = load ptr, ptr %i.an, align 8, !tbaa !73 ; 3 uses
  %i.kr = load ptr, ptr %i.ae, align 8, !tbaa !71 ; 3 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt                    ; 2 uses
  %i.kv = trunc i64 %i.ku to i32
  %i.kw = icmp sgt i32 %i.kv, 7
  br i1 %i.kw, label %bb.ba, label %.thread134

bb.ba:                                            ; preds = %tdsc_parse_tdsf.exit.thread121
  %i.kx = icmp slt i64 %i.ku, 4
  br i1 %i.kx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.kq, ptr %i.ae, align 8, !tbaa !71
  br label %.thread134

bb.bc:                                            ; preds = %bb.ba
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 4 ; 2 uses
  store ptr %i.ky, ptr %i.ae, align 8, !tbaa !74
  %i.kz = load i32, ptr %i.kr, align 1, !tbaa !75
  br label %bytestream2_get_le32.exit92.thread

bytestream2_get_le32.exit92.thread:               ; preds = %bb.bc, %bytestream2_get_le32.exit98
  %i.la = phi ptr [ %i.ar, %bytestream2_get_le32.exit98 ], [ %i.ky, %bb.bc ] ; 3 uses
  %i.lb = phi ptr [ %i.am, %bytestream2_get_le32.exit98 ], [ %i.kq, %bb.bc ] ; 2 uses
  %.274 = phi i32 [ %i.as, %bytestream2_get_le32.exit98 ], [ %i.kz, %bb.bc ]
  %.171 = phi i1 [ true, %bytestream2_get_le32.exit98 ], [ %.0.i93, %bb.bc ] ; 12 uses
  %i.lc = icmp eq i32 %.274, 1297306692
  br i1 %i.lc, label %bb.bd, label %.thread134

bb.bd:                                            ; preds = %bytestream2_get_le32.exit92.thread
  %i.ld = ptrtoint ptr %i.lb to i64               ; 3 uses
  %i.le = ptrtoint ptr %i.la to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = icmp slt i64 %i.lf, 4
  br i1 %i.lg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr %i.lb, ptr %i.ae, align 8, !tbaa !71
  br label %bytestream2_get_le32.exit

bb.bf:                                            ; preds = %bb.bd
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 4 ; 2 uses
  store ptr %i.lh, ptr %i.ae, align 8, !tbaa !74
  %i.li = load i32, ptr %i.la, align 1, !tbaa !75
  %.pre265 = ptrtoint ptr %i.lh to i64
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.be, %bb.bf
  %.pre-phi266 = phi i64 [ %i.ld, %bb.be ], [ %.pre265, %bb.bf ]
  %.0.i = phi i32 [ 0, %bb.be ], [ %i.li, %bb.bf ]
  %i.lj = sub i64 %i.ld, %.pre-phi266
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = icmp sgt i32 %.0.i, %i.lk
  br i1 %i.ll, label %.thread131, label %bb.bg

.thread131:                                       ; preds = %bytestream2_get_le32.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6) #6
  br label %bytestream2_get_le32.exit92

bb.bg:                                            ; preds = %bytestream2_get_le32.exit
  %i.lm = load ptr, ptr %i.b, align 8, !tbaa !28  ; 10 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 27 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 24 ; 6 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !73 ; 10 uses
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !71 ; 3 uses
  %i.lr = ptrtoint ptr %i.lp to i64               ; 14 uses
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = icmp slt i64 %i.lt, 4
  br i1 %i.lu, label %bytestream2_get_le32.exit22.thread.i, label %bytestream2_get_le32.exit22.i

bytestream2_get_le32.exit22.thread.i:             ; preds = %bb.bg
  store ptr %i.lp, ptr %i.ln, align 8, !tbaa !71
  br label %bb.cq

bytestream2_get_le32.exit22.i:                    ; preds = %bb.bg
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 3 uses
  store ptr %i.lv, ptr %i.ln, align 8, !tbaa !74
  %i.lw = load i32, ptr %i.lq, align 1, !tbaa !75 ; 3 uses
  %.pre.i = ptrtoint ptr %i.lv to i64
  %i.lx = sub i64 %i.lr, %.pre.i
  %..i.i100 = call i64 @llvm.smin.i64(i64 %i.lx, i64 4)
  %i.ly = getelementptr inbounds i8, ptr %i.lv, i64 %..i.i100 ; 4 uses
  store ptr %i.ly, ptr %i.ln, align 8, !tbaa !71
  %i.lz = and i32 %i.lw, -2
  %or.cond.i101 = icmp eq i32 %i.lz, 2
  br i1 %or.cond.i101, label %bb.bh, label %bb.cq

bb.bh:                                            ; preds = %bytestream2_get_le32.exit22.i
  %i.ma = icmp eq i32 %i.lw, 3
  %i.mb = ptrtoint ptr %i.ly to i64
  %i.mc = sub i64 %i.lr, %i.mb
  %i.md = icmp slt i64 %i.mc, 4
  br i1 %i.md, label %bytestream2_get_le32.exit20.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 4 ; 3 uses
  store ptr %i.me, ptr %i.ln, align 8, !tbaa !74
  %i.mf = load i32, ptr %i.ly, align 1, !tbaa !75
  %.pre45.i = ptrtoint ptr %i.me to i64
  br label %bytestream2_get_le32.exit20.i

bytestream2_get_le32.exit20.i:                    ; preds = %bb.bi, %bb.bh
  %.pre-phi46.i = phi i64 [ %.pre45.i, %bb.bi ], [ %i.lr, %bb.bh ]
  %i.mg = phi ptr [ %i.me, %bb.bi ], [ %i.lp, %bb.bh ] ; 2 uses
  %.0.i19.i = phi i32 [ %i.mf, %bb.bi ], [ 0, %bb.bh ]
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lm, i64 108
  store i32 %.0.i19.i, ptr %i.mh, align 4, !tbaa !81
  %i.mi = sub i64 %i.lr, %.pre-phi46.i
  %i.mj = icmp slt i64 %i.mi, 4
  br i1 %i.mj, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bytestream2_get_le32.exit20.i
  store ptr %i.lp, ptr %i.ln, align 8, !tbaa !71
  br label %bytestream2_get_le32.exit.i103

bb.bk:                                            ; preds = %bytestream2_get_le32.exit20.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 4 ; 2 uses
  store ptr %i.mk, ptr %i.ln, align 8, !tbaa !74
  %i.ml = load i32, ptr %i.mg, align 1, !tbaa !75
  br label %bytestream2_get_le32.exit.i103

bytestream2_get_le32.exit.i103:                   ; preds = %bb.bk, %bb.bj
  %i.mm = phi ptr [ %i.lp, %bb.bj ], [ %i.mk, %bb.bk ] ; 3 uses
  %.0.i.i104 = phi i32 [ 0, %bb.bj ], [ %i.ml, %bb.bk ]
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lm, i64 112
  store i32 %.0.i.i104, ptr %i.mn, align 8, !tbaa !82
  br i1 %i.ma, label %bb.bl, label %.thread134

bb.bl:                                            ; preds = %bytestream2_get_le32.exit.i103
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = sub i64 %i.lr, %i.mo
  %i.mq = icmp slt i64 %i.mp, 2
  br i1 %i.mq, label %bytestream2_get_le16.exit157.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 2 ; 3 uses
  store ptr %i.mr, ptr %i.ln, align 8, !tbaa !74
end_hunk_0
begin_hunk_1_@tdsc_decode_frame:bb.a
  %i.aag = mul i32 %i.zt, %i.aaf
  %i.aah = sub i32 0, %i.aag
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds i8, ptr %.083.i, i64 %i.aai
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.aak = mul nsw i32 %i.zt, %i.yz
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds i8, ptr %.0.i114, i64 %i.aal
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.184.i = phi ptr [ %i.aaj, %bb.cw ], [ %.083.i, %bb.cx ]
  %.180.i = phi i32 [ %i.aad, %bb.cw ], [ %.079.i, %bb.cx ] ; 2 uses
  %.1.i = phi ptr [ %.0.i114, %bb.cw ], [ %i.aam, %bb.cx ]
  %i.aan = icmp sgt i32 %.182.i, -1
  %i.aao = icmp sgt i32 %.180.i, 0
  %or.cond7.i = select i1 %i.aan, i1 %i.aao, i1 false
  br i1 %or.cond7.i, label %.preheader.lr.ph.i, label %tdsc_paint_cursor.exit

.preheader.lr.ph.i:                               ; preds = %bb.cy
  %.not20.i = icmp eq i32 %.182.i, 0
  %i.aap = sext i32 %i.yz to i64
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val, i64 96
  br i1 %.not20.i, label %tdsc_paint_cursor.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.aar = zext nneg i32 %.182.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i115, %.preheader.preheader.i
  %.26.i = phi ptr [ %i.acf, %._crit_edge.i115 ], [ %.1.i, %.preheader.preheader.i ] ; 2 uses
  %.0775.i = phi i32 [ %i.acj, %._crit_edge.i115 ], [ 0, %.preheader.preheader.i ]
  %.2854.i = phi ptr [ %i.aci, %._crit_edge.i115 ], [ %.184.i, %.preheader.preheader.i ] ; 2 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.cz ] ; 3 uses
  %i.aas = shl nuw nsw i64 %indvars.iv.i, 2
  %i.aat = getelementptr inbounds nuw i8, ptr %.2854.i, i64 %i.aas ; 4 uses
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !75
  %i.aav = mul nuw nsw i64 %indvars.iv.i, 3
  %i.aaw = getelementptr inbounds nuw i8, ptr %.26.i, i64 %i.aav ; 4 uses
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !75
  %i.aay = zext i8 %i.aax to i32
  %i.aaz = zext i8 %i.aau to i32                  ; 4 uses
  %i.aba = sub nuw nsw i32 256, %i.aaz            ; 3 uses
  %i.abb = mul nuw nsw i32 %i.aba, %i.aay
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aat, i64 1
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !75
  %i.abe = zext i8 %i.abd to i32
  %i.abf = mul nuw nsw i32 %i.abe, %i.aaz
  %i.abg = add nuw nsw i32 %i.abf, %i.abb
  %i.abh = lshr i32 %i.abg, 8
  %i.abi = trunc nuw i32 %i.abh to i8
  store i8 %i.abi, ptr %i.aaw, align 1, !tbaa !75
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1 ; 2 uses
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !75
  %i.abl = zext i8 %i.abk to i32
  %i.abm = mul nuw nsw i32 %i.aba, %i.abl
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aat, i64 2
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !75
  %i.abp = zext i8 %i.abo to i32
  %i.abq = mul nuw nsw i32 %i.abp, %i.aaz
  %i.abr = add nuw nsw i32 %i.abq, %i.abm
  %i.abs = lshr i32 %i.abr, 8
  %i.abt = trunc nuw i32 %i.abs to i8
  store i8 %i.abt, ptr %i.abj, align 1, !tbaa !75
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aaw, i64 2 ; 2 uses
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !75
  %i.abw = zext i8 %i.abv to i32
  %i.abx = mul nuw nsw i32 %i.aba, %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %i.aat, i64 3
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !75
  %i.aca = zext i8 %i.abz to i32
  %i.acb = mul nuw nsw i32 %i.aca, %i.aaz
  %i.acc = add nuw nsw i32 %i.acb, %i.abx
  %i.acd = lshr i32 %i.acc, 8
  %i.ace = trunc nuw i32 %i.acd to i8
  store i8 %i.ace, ptr %i.abu, align 1, !tbaa !75
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.aar
  br i1 %exitcond.not, label %._crit_edge.i115, label %bb.cz, !llvm.loop !62

._crit_edge.i115:                                 ; preds = %bb.cz
  %i.acf = getelementptr inbounds i8, ptr %.26.i, i64 %i.aap
  %i.acg = load i32, ptr %i.aaq, align 8, !tbaa !87
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds i8, ptr %.2854.i, i64 %i.ach
  %i.acj = add nuw nsw i32 %.0775.i, 1            ; 2 uses
  %i.ack = icmp slt i32 %i.acj, %.180.i
  br i1 %i.ack, label %.preheader.i, label %tdsc_paint_cursor.exit, !llvm.loop !63

tdsc_paint_cursor.exit:                           ; preds = %._crit_edge.i115, %bb.cs, %bb.ct, %bb.cu, %bb.cy, %.preheader.lr.ph.i
  br i1 %.171130, label %bb.db, label %bb.da

bb.da:                                            ; preds = %tdsc_paint_cursor.exit
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !90
  %i.acn = or i32 %i.acm, 2
  store i32 %i.acn, ptr %i.acl, align 4, !tbaa !90
  br label %bb.db

bb.db:                                            ; preds = %tdsc_paint_cursor.exit, %bb.da
  %.sink = phi i32 [ 1, %bb.da ], [ 2, %tdsc_paint_cursor.exit ]
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %.sink, ptr %i.aco, align 8, !tbaa !91
  store i32 1, ptr %2, align 4, !tbaa !42
  %i.acp = load i32, ptr %i.aa, align 8, !tbaa !70
  br label %bytestream2_get_le32.exit92

bytestream2_get_le32.exit92:                      ; preds = %bb.av, %bytestream2_get_le32.exit100.i.i, %bb.ax, %tdsc_load_cursor.exit.i, %bb.l, %tdsc_parse_tdsf.exit, %bytestream2_get_le16.exit.thread.i, %bytestream2_get_le32.exit51.i, %bytestream2_get_le16.exit54.i, %._crit_edge.i, %bytestream2_get_le16.exit.i, %bb.x, %bytestream2_get_le32.exit51.thread.i, %bytestream2_get_le16.exit54.thread.i, %bb.aq, %split.i.i, %bb.az, %.loopexit.i.i, %.thread131, %bb.e, %bb.cr, %.thread134, %bb.db, %bb.i, %bb.f
  %.5 = phi i32 [ -1313558101, %bb.f ], [ -1094995529, %bb.i ], [ %i.s, %bb.e ], [ %i.yr, %.thread134 ], [ %i.acp, %bb.db ], [ -1094995529, %bytestream2_get_le16.exit.thread.i ], [ -1094995529, %.thread131 ], [ %i.yv, %bb.cr ], [ -1094995529, %bb.l ], [ %i.fz, %tdsc_parse_tdsf.exit ], [ -1094995529, %bytestream2_get_le16.exit54.i ], [ -1094995529, %bytestream2_get_le32.exit51.i ], [ %.0.i23.i, %tdsc_load_cursor.exit.i ], [ -1094995529, %.loopexit.i.i ], [ -1094995529, %bb.az ], [ -1094995529, %split.i.i ], [ %i.gu, %bb.aq ], [ -1094995529, %bytestream2_get_le16.exit54.thread.i ], [ -1094995529, %bytestream2_get_le32.exit51.thread.i ], [ %i.dk, %bb.x ], [ -1094995529, %bytestream2_get_le16.exit.i ], [ %i.db, %._crit_edge.i ], [ -1094995529, %bb.ax ], [ -1094995529, %bytestream2_get_le32.exit100.i.i ], [ -1094995529, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.5
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @tdsc_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @av_packet_free(ptr noundef nonnull %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.f) #6
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.g) #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @av_freep(ptr noundef nonnull %i.h) #6
  tail call void @avcodec_free_context(ptr noundef %i.b) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_reallocp(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare ptr @av_packet_alloc() local_unnamed_addr #3

declare ptr @avcodec_alloc_context3(ptr noundef) local_unnamed_addr #3

declare i32 @avcodec_open2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_get_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #3

declare i32 @avcodec_send_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @avcodec_receive_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_packet_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @avcodec_free_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 136}
!30 = !{!27, !6, i64 112}
!31 = !{!27, !6, i64 116}
!32 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!33 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!34 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!35 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!36 = !{!"TDSCContext", !32, i64 0, !6, i64 8, !6, i64 12, !33, i64 16, !34, i64 40, !35, i64 48, !34, i64 56, !14, i64 64, !14, i64 72, !13, i64 80, !14, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120}
!37 = !{!36, !13, i64 80}
!38 = !{!36, !34, i64 40}
!39 = !{!36, !34, i64 56}
!40 = !{!36, !35, i64 48}
!41 = !{!36, !32, i64 0}
!42 = !{!6, !6, i64 0}
!43 = !{!"p2 omnipotent char", !25, i64 0}
!44 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!45 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!46 = !{!"AVFrame", !5, i64 0, !5, i64 64, !43, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !44, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !45, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!47 = !{!46, !6, i64 116}
!48 = !{!27, !6, i64 644}
!49 = !{!27, !13, i64 792}
!50 = distinct !{!50, !80}
!51 = distinct !{!51, !80}
!52 = distinct !{!52, !80}
!53 = distinct !{!53, !80}
!54 = distinct !{!54, !80, !89}
!55 = distinct !{!55, !80}
!56 = distinct !{!56, !80}
!57 = distinct !{!57, !80, !89}
!58 = distinct !{!58, !80}
!59 = distinct !{!59, !80, !89}
!60 = distinct !{!60, !80}
!61 = distinct !{!61, !80, !89}
!62 = distinct !{!62, !80}
!63 = distinct !{!63, !80}
!64 = !{!36, !6, i64 8}
!65 = !{!36, !6, i64 12}
!66 = !{!13, !13, i64 0}
!67 = !{!36, !14, i64 72}
!68 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!69 = !{!68, !14, i64 24}
!70 = !{!68, !6, i64 32}
!71 = !{!33, !14, i64 0}
!72 = !{!33, !14, i64 16}
!73 = !{!33, !14, i64 8}
!74 = !{!14, !14, i64 0}
!75 = !{!5, !5, i64 0}
!76 = !{!46, !6, i64 104}
!77 = !{!46, !6, i64 108}
!78 = !{!36, !14, i64 64}
!79 = !{!27, !6, i64 528}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!36, !6, i64 108}
!82 = !{!36, !6, i64 112}
!83 = !{!36, !6, i64 116}
!84 = !{!36, !6, i64 120}
!85 = !{!36, !6, i64 100}
!86 = !{!36, !6, i64 104}
!87 = !{!36, !6, i64 96}
!88 = !{!36, !14, i64 88}
!89 = !{!"llvm.loop.unswitch.partial.disable"}
!90 = !{!46, !6, i64 276}
!91 = !{!46, !6, i64 120}
end_hunk_1
