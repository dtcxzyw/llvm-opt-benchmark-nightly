Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pcf?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pcf_load_font:bb.a
  br i1 %i.ez, label %.thread126.sink.split.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ey
  %i.fb = call ptr @ft_mem_strdup(ptr noundef %i.cn, ptr noundef %i.fa, ptr noundef nonnull %i.c) #12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !43
  %i.fd = load i32, ptr %i.c, align 4, !tbaa !76
  %.not110.i = icmp eq i32 %i.fd, 0
  br i1 %.not110.i, label %.thread128.i, label %pcf_get_properties.exit

bb.ay:                                            ; preds = %bb.av
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i64 %i.ey, ptr %i.fe, align 8, !tbaa !43
  br label %.thread128.i

.thread128.i:                                     ; preds = %bb.ay, %bb.ax
  %i.ff = add nuw nsw i64 %.188134.i, 1           ; 2 uses
  %exitcond144.not.i = icmp eq i64 %i.ff, %..089.i
  br i1 %exitcond144.not.i, label %.thread126.sink.split.i, label %.lr.ph136.i, !llvm.loop !156

.thread126.sink.split.i:                          ; preds = %bb.x, %.thread128.i, %bb.aw, %.lr.ph136.i, %bb.at, %bb.ap, %bb.ak, %._crit_edge.i198, %bb.af, %bb.z, %bb.y, %bb.w
  %.sink.i = phi i32 [ 83, %bb.y ], [ 8, %bb.ap ], [ 0, %bb.at ], [ 9, %.lr.ph136.i ], [ 8, %bb.af ], [ 83, %._crit_edge.i198 ], [ 83, %bb.ak ], [ 83, %bb.z ], [ 3, %bb.w ], [ 0, %.thread128.i ], [ 9, %bb.aw ], [ 3, %bb.x ]
  %.091.ph.i = phi ptr [ null, %bb.y ], [ %i.dm, %bb.ap ], [ %i.dm, %bb.at ], [ %i.dm, %.thread128.i ], [ null, %bb.af ], [ %i.dm, %._crit_edge.i198 ], [ %i.dm, %bb.ak ], [ null, %bb.z ], [ null, %bb.w ], [ %i.dm, %.lr.ph136.i ], [ %i.dm, %bb.aw ], [ null, %bb.x ]
  %.085.ph.i = phi ptr [ null, %bb.y ], [ null, %bb.ap ], [ %i.eg, %bb.at ], [ %i.eg, %.thread128.i ], [ null, %bb.af ], [ null, %._crit_edge.i198 ], [ null, %bb.ak ], [ null, %bb.z ], [ null, %bb.w ], [ %i.eg, %.lr.ph136.i ], [ %i.eg, %bb.aw ], [ null, %bb.x ]
  store i32 %.sink.i, ptr %i.c, align 4, !tbaa !76
  br label %pcf_get_properties.exit

pcf_get_properties.exit:                          ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i, %bb.au, %bb.ax, %bb.aa, %bb.ae, %bb.ag, %bb.ao, %bb.aq, %bb.ar, %bb.as, %.thread126.sink.split.i
  %.091.i = phi ptr [ %i.dm, %bb.aq ], [ null, %bb.aa ], [ null, %bb.ae ], [ %i.dm, %bb.ar ], [ %i.dm, %bb.ag ], [ %i.dm, %bb.as ], [ %i.dm, %.lr.ph.split.us.i ], [ %.091.ph.i, %.thread126.sink.split.i ], [ %i.dm, %bb.au ], [ %i.dm, %bb.ao ], [ %i.dm, %bb.ax ], [ %i.dm, %.lr.ph.split.i ]
  %.085.i = phi ptr [ %i.eg, %bb.aq ], [ null, %bb.aa ], [ null, %bb.ae ], [ %i.eg, %bb.ar ], [ null, %bb.ag ], [ %i.eg, %bb.as ], [ null, %.lr.ph.split.us.i ], [ %.085.ph.i, %.thread126.sink.split.i ], [ %i.eg, %bb.au ], [ null, %bb.ao ], [ %i.eg, %bb.ax ], [ null, %.lr.ph.split.i ]
  call void @ft_mem_free(ptr noundef %i.cn, ptr noundef %.091.i) #12
  call void @ft_mem_free(ptr noundef %i.cn, ptr noundef %.085.i) #12
  %i.fg = load i32, ptr %i.c, align 4, !tbaa !76  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  store i32 %i.fg, ptr %i.e, align 4, !tbaa !76
  %.not170 = icmp eq i32 %i.fg, 0
  br i1 %.not170, label %bb.az, label %.thread267

bb.az:                                            ; preds = %pcf_get_properties.exit
  %i.fh = load ptr, ptr %i.x, align 8, !tbaa !55  ; 2 uses
  %i.fi = load i64, ptr %i.l, align 8, !tbaa !87  ; 3 uses
  %.not.i205 = icmp eq i64 %i.fi, 0
  br i1 %.not.i205, label %.loopexit, label %.lr.ph.i206

bb.ba:                                            ; preds = %.lr.ph.i206
  %i.fj = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i207 = icmp eq i64 %i.fj, %i.fi
  br i1 %exitcond.not.i207, label %.loopexit, label %.lr.ph.i206, !llvm.loop !157

.lr.ph.i206:                                      ; preds = %bb.az, %bb.ba
  %.07.i = phi i64 [ %i.fj, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fh, i64 %.07.i
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !88
  %i.fm = icmp eq i64 %i.fl, 256
  br i1 %i.fm, label %pcf_has_table_type.exit, label %bb.ba

.loopexit:                                        ; preds = %bb.ba, %bb.az
  %i.fn = call fastcc i32 @pcf_get_accel(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 2) ; 2 uses
  store i32 %i.fn, ptr %i.e, align 4, !tbaa !76
  %.not172 = icmp eq i32 %i.fn, 0
  br i1 %.not172, label %.loopexit.pcf_has_table_type.exit_crit_edge, label %.thread267

.loopexit.pcf_has_table_type.exit_crit_edge:      ; preds = %.loopexit
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !55
  %.pre304 = load i64, ptr %i.l, align 8, !tbaa !87
  br label %pcf_has_table_type.exit

pcf_has_table_type.exit:                          ; preds = %.lr.ph.i206, %.loopexit.pcf_has_table_type.exit_crit_edge
  %i.fo = phi i64 [ %.pre304, %.loopexit.pcf_has_table_type.exit_crit_edge ], [ %i.fi, %.lr.ph.i206 ] ; 2 uses
  %i.fp = phi ptr [ %.pre, %.loopexit.pcf_has_table_type.exit_crit_edge ], [ %i.fh, %.lr.ph.i206 ]
  %.not171243 = phi i1 [ true, %.loopexit.pcf_has_table_type.exit_crit_edge ], [ false, %.lr.ph.i206 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.fq = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %.not26.i.i209 = icmp eq i64 %i.fo, 0
  br i1 %.not26.i.i209, label %pcf_get_metrics.exit.thread, label %.lr.ph.i.i210

bb.bb:                                            ; preds = %.lr.ph.i.i210
  %i.fr = add nuw i64 %.025.i.i211, 1             ; 2 uses
  %exitcond.not.i.i212 = icmp eq i64 %i.fr, %i.fo
  br i1 %exitcond.not.i.i212, label %pcf_get_metrics.exit.thread, label %.lr.ph.i.i210, !llvm.loop !1

.lr.ph.i.i210:                                    ; preds = %pcf_has_table_type.exit, %bb.bb
  %.025.i.i211 = phi i64 [ %i.fr, %bb.bb ], [ 0, %pcf_has_table_type.exit ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %.025.i.i211 ; 3 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !88
  %i.fu = icmp eq i64 %i.ft, 4
  br i1 %i.fu, label %bb.bc, label %bb.bb

bb.bc:                                            ; preds = %.lr.ph.i.i210
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !89 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !86 ; 2 uses
  %i.fz = icmp ugt i64 %i.fw, %i.fy
  br i1 %i.fz, label %pcf_get_metrics.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ga = sub nuw i64 %i.fy, %i.fw
  %i.gb = call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef %i.ga) #12
  %.not.i.i214 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i214, label %bb.be, label %pcf_get_metrics.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !164 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !76
  %i.ge = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #12
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = load i32, ptr %i.b, align 4, !tbaa !76
  %.not46.i = icmp eq i32 %i.gg, 0
  br i1 %.not46.i, label %bb.bf, label %pcf_get_metrics.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.gh = and i64 %i.gf, 4294967040               ; 2 uses
  %trunc.i = trunc nuw i64 %i.gh to i32
  switch i32 %trunc.i, label %pcf_get_metrics.exit.thread [
    i32 0, label %bb.bg
    i32 256, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.gi = icmp eq i64 %i.gh, 0                    ; 3 uses
  %i.gj = and i64 %i.gf, 4
  %.not48.i = icmp eq i64 %i.gj, 0                ; 3 uses
  br i1 %i.gi, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not48.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gk = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #12
  %i.gl = zext i32 %i.gk to i64
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bh
  %i.gm = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #12
  %i.gn = zext i32 %i.gm to i64
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bg
  br i1 %.not48.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.go = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #12
  %i.gp = zext i16 %i.go to i64
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.gq = call zeroext i16 @FT_Stream_ReadUShortLE(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #12
  %i.gr = zext i16 %i.gq to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bj, %bb.bi
  %.039.i = phi i64 [ %i.gl, %bb.bi ], [ %i.gn, %bb.bj ], [ %i.gp, %bb.bl ], [ %i.gr, %bb.bm ] ; 2 uses
  %i.gs = load i32, ptr %i.b, align 4, !tbaa !76
  %.not49.i = icmp eq i32 %i.gs, 0
  br i1 %.not49.i, label %bb.bo, label %pcf_get_metrics.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.gt = add nsw i64 %.039.i, -1                 ; 2 uses
  br i1 %i.gi, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gu = udiv i64 %i.gd, 12
  %or.cond54.not.i = icmp ult i64 %i.gt, %i.gu
  br i1 %or.cond54.not.i, label %bb.br, label %pcf_get_metrics.exit.thread

bb.bq:                                            ; preds = %bb.bo
  %i.gv = udiv i64 %i.gd, 5
  %or.cond.not.i = icmp ult i64 %i.gt, %i.gv
  br i1 %or.cond.not.i, label %bb.br, label %pcf_get_metrics.exit.thread

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gw = call i64 @llvm.umin.i64(i64 %.039.i, i64 65534)
  %.040.i = add nuw nsw i64 %i.gw, 1              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 6 uses
  store i64 %.040.i, ptr %i.gx, align 8, !tbaa !90
  %i.gy = call ptr @ft_mem_qrealloc(ptr noundef %i.fq, i64 noundef 24, i64 noundef 0, i64 noundef %.040.i, ptr noundef null, ptr noundef nonnull %i.b) #12 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 5 uses
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !47
  %i.ha = load i32, ptr %i.b, align 4, !tbaa !76
  %.not51.i = icmp eq i32 %i.ha, 0
  br i1 %.not51.i, label %.preheader.i215, label %pcf_get_metrics.exit.thread

.preheader.i215:                                  ; preds = %bb.br
  %i.hb = load i64, ptr %i.gx, align 8, !tbaa !90
  %i.hc = icmp ugt i64 %i.hb, 1
  br i1 %i.hc, label %.lr.ph.i216, label %pcf_get_metrics.exit.thread248

.lr.ph.i216:                                      ; preds = %.preheader.i215
  %.04166.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hf = select i1 %.not48.i, ptr @pcf_metric_header, ptr @pcf_metric_msb_header
  br i1 %i.gi, label %pcf_get_metric.exit.us.i, label %.lr.ph.split.i217

pcf_get_metric.exit.us.i:                         ; preds = %.lr.ph.i216, %bb.bv
  %.04170.us.i = phi ptr [ %.041.us.i, %bb.bv ], [ %.04166.i, %.lr.ph.i216 ] ; 5 uses
  %.069.us.i = phi i64 [ %i.hu, %bb.bv ], [ 1, %.lr.ph.i216 ]
  %.pn67.us.i = phi ptr [ %.04170.us.i, %bb.bv ], [ %i.gy, %.lr.ph.i216 ] ; 5 uses
  %i.hg = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %0, ptr noundef nonnull %i.hf, ptr noundef nonnull %.04170.us.i) #12 ; 2 uses
  store i32 %i.hg, ptr %i.b, align 4, !tbaa !76
  %i.hh = getelementptr inbounds nuw i8, ptr %.pn67.us.i, i64 40
  store i64 0, ptr %i.hh, align 8, !tbaa !71
  %.not52.us.i = icmp eq i32 %i.hg, 0
  br i1 %.not52.us.i, label %bb.bs, label %pcf_get_metrics.exit

bb.bs:                                            ; preds = %pcf_get_metric.exit.us.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.pn67.us.i, i64 26
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !65
  %i.hk = load i16, ptr %.04170.us.i, align 8, !tbaa !66
  %i.hl = icmp slt i16 %i.hj, %i.hk
  br i1 %i.hl, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn67.us.i, i64 30
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !63
  %i.ho = sext i16 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %.pn67.us.i, i64 32
  %i.hq = load i16, ptr %i.hp, align 8, !tbaa !64
  %i.hr = sext i16 %i.hq to i32
  %i.hs = sub nsw i32 0, %i.hr
  %i.ht = icmp slt i32 %i.ho, %i.hs
  br i1 %i.ht, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i64 0, ptr %.04170.us.i, align 8
  %4 = getelementptr inbounds nuw i8, ptr %.pn67.us.i, i64 32
  store i16 0, ptr %4, align 8, !tbaa !64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.hu = add nuw i64 %.069.us.i, 1               ; 2 uses
  %.041.us.i = getelementptr inbounds nuw i8, ptr %.04170.us.i, i64 24
  %i.hv = load i64, ptr %i.gx, align 8, !tbaa !90
  %i.hw = icmp ult i64 %i.hu, %i.hv
  br i1 %i.hw, label %pcf_get_metric.exit.us.i, label %pcf_get_metrics.exit.thread248, !llvm.loop !158

.lr.ph.split.i217:                                ; preds = %.lr.ph.i216, %bb.by
  %.04170.i = phi ptr [ %.041.i, %bb.by ], [ %.04166.i, %.lr.ph.i216 ] ; 5 uses
  %.069.i = phi i64 [ %i.io, %bb.by ], [ 1, %.lr.ph.i216 ]
  %.pn67.i = phi ptr [ %.04170.i, %bb.by ], [ %i.gy, %.lr.ph.i216 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.hx = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %0, ptr noundef nonnull @pcf_compressed_metric_header, ptr noundef nonnull %3) #12 ; 2 uses
  %.not.i55.i = icmp eq i32 %i.hx, 0
  br i1 %.not.i55.i, label %bb.bw, label %.thread.loopexit72.i

bb.bw:                                            ; preds = %.lr.ph.split.i217
  %i.hy = load i8, ptr %3, align 1, !tbaa !171
  %i.hz = zext i8 %i.hy to i16
  %i.ia = add nsw i16 %i.hz, -128
  store i16 %i.ia, ptr %.04170.i, align 8, !tbaa !66
  %i.ib = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 26
  %i.ic = load i8, ptr %i.he, align 1, !tbaa !92
  %i.id = load <4 x i8>, ptr %i.hd, align 1, !tbaa !43
  %i.ie = zext i8 %i.ic to i16
  %i.if = zext <4 x i8> %i.id to <4 x i16>
  %i.ig = add nsw <4 x i16> %i.if, splat (i16 -128) ; 3 uses
  store <4 x i16> %i.ig, ptr %i.ib, align 2, !tbaa !75
  %i.ih = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 34
  store i16 0, ptr %i.ih, align 2, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  store i32 0, ptr %i.b, align 4, !tbaa !76
  %i.ii = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 40
  store i64 0, ptr %i.ii, align 8, !tbaa !71
  %i.ij = load i16, ptr %.04170.i, align 8, !tbaa !66
  %i.ik = extractelement <4 x i16> %i.ig, i64 0
  %i.il = icmp slt i16 %i.ik, %i.ij
  %narrow = sub nsw i16 128, %i.ie
  %i.im = extractelement <4 x i16> %i.ig, i64 2
  %i.in = icmp slt i16 %i.im, %narrow
  %or.cond269 = select i1 %i.il, i1 true, i1 %i.in
  br i1 %or.cond269, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %5 = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 32
  store i64 0, ptr %.04170.i, align 8
  store i16 0, ptr %5, align 8, !tbaa !64
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.io = add nuw i64 %.069.i, 1                  ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04170.i, i64 24
  %i.ip = load i64, ptr %i.gx, align 8, !tbaa !90
  %i.iq = icmp ult i64 %i.io, %i.ip
  br i1 %i.iq, label %.lr.ph.split.i217, label %pcf_get_metrics.exit.thread248, !llvm.loop !158

.thread.loopexit72.i:                             ; preds = %.lr.ph.split.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  store i32 %i.hx, ptr %i.b, align 4, !tbaa !76
  %i.ir = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 40
  store i64 0, ptr %i.ir, align 8, !tbaa !71
  br label %pcf_get_metrics.exit

pcf_get_metrics.exit.thread:                      ; preds = %bb.bb, %bb.bp, %bb.bf, %bb.bn, %bb.br, %bb.bq, %bb.be, %bb.bd, %pcf_has_table_type.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread267

pcf_get_metrics.exit.thread248:                   ; preds = %bb.by, %bb.bv, %.preheader.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.e, align 4, !tbaa !76
  br label %bb.bz

pcf_get_metrics.exit:                             ; preds = %pcf_get_metric.exit.us.i, %.thread.loopexit72.i
  %i.is = load ptr, ptr %i.gz, align 8, !tbaa !47
  call void @ft_mem_free(ptr noundef %i.fq, ptr noundef %i.is) #12
  store ptr null, ptr %i.gz, align 8, !tbaa !47
  %.pre.i218 = load i32, ptr %i.b, align 4, !tbaa !76 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  store i32 %.pre.i218, ptr %i.e, align 4, !tbaa !76
  %.not173 = icmp eq i32 %.pre.i218, 0
  br i1 %.not173, label %bb.bz, label %.thread267

bb.bz:                                            ; preds = %pcf_get_metrics.exit.thread248, %pcf_get_metrics.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.it = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.iu = load i64, ptr %i.l, align 8, !tbaa !87  ; 2 uses
  %.not26.i.i219 = icmp eq i64 %i.iu, 0
  br i1 %.not26.i.i219, label %pcf_get_bitmaps.exit.thread, label %.lr.ph.i.i220

bb.ca:                                            ; preds = %.lr.ph.i.i220
  %i.iv = add nuw i64 %.025.i.i221, 1             ; 2 uses
  %exitcond.not.i.i222 = icmp eq i64 %i.iv, %i.iu
  br i1 %exitcond.not.i.i222, label %pcf_get_bitmaps.exit.thread, label %.lr.ph.i.i220, !llvm.loop !1

.lr.ph.i.i220:                                    ; preds = %bb.bz, %bb.ca
  %.025.i.i221 = phi i64 [ %i.iv, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %.025.i.i221 ; 3 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !88
  %i.iy = icmp eq i64 %i.ix, 8
  br i1 %i.iy, label %bb.cb, label %bb.ca

bb.cb:                                            ; preds = %.lr.ph.i.i220
  %i.iz = load i64, ptr %i.fv, align 8, !tbaa !89 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !86 ; 2 uses
  %i.jc = icmp ugt i64 %i.iz, %i.jb
  br i1 %i.jc, label %pcf_get_bitmaps.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jd = sub nuw i64 %i.jb, %i.iz
  %i.je = call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef %i.jd) #12
  %.not.i.i225 = icmp eq i32 %i.je, 0
  br i1 %.not.i.i225, label %bb.cd, label %pcf_get_bitmaps.exit.thread

bb.cd:                                            ; preds = %bb.cc
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !164 ; 2 uses
  %i.jh = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %0, i64 noundef 8) #12 ; 2 uses
  store i32 %i.jh, ptr %i.a, align 4, !tbaa !76
  %.not42.i = icmp eq i32 %i.jh, 0
  br i1 %.not42.i, label %bb.ce, label %pcf_get_bitmaps.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.ji = call i32 @FT_Stream_GetULongLE(ptr noundef nonnull %0) #12 ; 2 uses
  %i.jj = zext i32 %i.ji to i64                   ; 2 uses
  %i.jk = and i64 %i.jj, 4
  %.not43.i = icmp eq i64 %i.jk, 0                ; 3 uses
  br i1 %.not43.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jl = call i32 @FT_Stream_GetULong(ptr noundef nonnull %0) #12
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.jm = call i32 @FT_Stream_GetULongLE(ptr noundef nonnull %0) #12
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.037.in.i = phi i32 [ %i.jl, %bb.cf ], [ %i.jm, %bb.cg ] ; 2 uses
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %0) #12
  %i.jn = icmp ult i32 %i.ji, 256
  br i1 %i.jn, label %bb.ci, label %pcf_get_bitmaps.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %narrow.i = call i32 @llvm.umin.i32(i32 %.037.in.i, i32 65534)
  %..037.i = zext nneg i32 %narrow.i to i64       ; 4 uses
  %i.jo = load i64, ptr %i.gx, align 8, !tbaa !90
  %i.jp = add i64 %i.jo, -1
  %.not44.i = icmp eq i64 %i.jp, %..037.i
  br i1 %.not44.i, label %bb.cj, label %pcf_get_bitmaps.exit.thread

bb.cj:                                            ; preds = %bb.ci
  %i.jq = load i64, ptr %i.fv, align 8, !tbaa !89
  %i.jr = shl nuw nsw i64 %..037.i, 2
  %i.js = add nuw nsw i64 %i.jr, 16
  %i.jt = add i64 %i.js, %i.jq                    ; 2 uses
  %.not4559.i = icmp eq i32 %.037.in.i, 0
  br i1 %.not4559.i, label %._crit_edge.i229, label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %bb.cj
  br i1 %.not43.i, label %.lr.ph.split.us.i233, label %.lr.ph.split.i227

.lr.ph.split.us.i233:                             ; preds = %.lr.ph.i226, %.lr.ph.split.us.i233
  %.03660.us.i = phi i64 [ %i.ka, %.lr.ph.split.us.i233 ], [ 1, %.lr.ph.i226 ] ; 3 uses
  %i.ju = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %.0.us.i = zext i32 %i.ju to i64                ; 2 uses
  %i.jv = icmp ult i64 %i.jg, %.0.us.i
  %i.jw = select i1 %i.jv, i64 0, i64 %.0.us.i
  %.sink.i234 = add i64 %i.jw, %i.jt
  %i.jx = load ptr, ptr %i.gz, align 8, !tbaa !47
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.03660.us.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store i64 %.sink.i234, ptr %i.jz, align 8, !tbaa !71
  %i.ka = add nuw nsw i64 %.03660.us.i, 1
  %exitcond66.not.i = icmp eq i64 %.03660.us.i, %..037.i
  br i1 %exitcond66.not.i, label %._crit_edge.i229.thread252, label %.lr.ph.split.us.i233, !llvm.loop !159

.lr.ph.split.i227:                                ; preds = %.lr.ph.i226, %.lr.ph.split.i227
  %.03660.i = phi i64 [ %i.kh, %.lr.ph.split.i227 ], [ 1, %.lr.ph.i226 ] ; 3 uses
  %i.kb = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %.0.i = zext i32 %i.kb to i64                   ; 2 uses
  %i.kc = icmp ult i64 %i.jg, %.0.i
  %i.kd = select i1 %i.kc, i64 0, i64 %.0.i
  %.sink90.i = add i64 %i.kd, %i.jt
  %i.ke = load ptr, ptr %i.gz, align 8, !tbaa !47
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.ke, i64 %.03660.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store i64 %.sink90.i, ptr %i.kg, align 8, !tbaa !71
  %i.kh = add nuw nsw i64 %.03660.i, 1
  %exitcond.not.i228 = icmp eq i64 %.03660.i, %..037.i
  br i1 %exitcond.not.i228, label %._crit_edge.i229.thread, label %.lr.ph.split.i227, !llvm.loop !159

._crit_edge.i229:                                 ; preds = %bb.cj
  %i.ki = load i32, ptr %i.a, align 4, !tbaa !76
  %.not46.i230 = icmp eq i32 %i.ki, 0
  br i1 %.not46.i230, label %.preheader.i231, label %pcf_get_bitmaps.exit.thread

._crit_edge.i229.thread252:                       ; preds = %.lr.ph.split.us.i233
  %i.kj = load i32, ptr %i.a, align 4, !tbaa !76
  %.not46.i230253 = icmp eq i32 %i.kj, 0
  br i1 %.not46.i230253, label %.preheader.split.us.preheader.i, label %pcf_get_bitmaps.exit.thread

._crit_edge.i229.thread:                          ; preds = %.lr.ph.split.i227
  %i.kk = load i32, ptr %i.a, align 4, !tbaa !76
  %.not46.i230251 = icmp eq i32 %i.kk, 0
  br i1 %.not46.i230251, label %.preheader.split.preheader.i, label %pcf_get_bitmaps.exit.thread

.preheader.i231:                                  ; preds = %._crit_edge.i229
  br i1 %.not43.i, label %.preheader.split.us.preheader.i, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %._crit_edge.i229.thread, %.preheader.i231
  %i.kl = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.km = load i32, ptr %i.a, align 4, !tbaa !76
  %.not48.i232 = icmp eq i32 %i.km, 0
  br i1 %.not48.i232, label %.preheader.split.1.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.us.preheader.i:                  ; preds = %._crit_edge.i229.thread252, %.preheader.i231
  %i.kn = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.ko = load i32, ptr %i.a, align 4, !tbaa !76
  %.not48.us.i = icmp eq i32 %i.ko, 0
  br i1 %.not48.us.i, label %.preheader.split.us.1.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.us.1.i:                          ; preds = %.preheader.split.us.preheader.i
  %i.kp = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.kq = load i32, ptr %i.a, align 4, !tbaa !76
  %.not48.us.1.i = icmp eq i32 %i.kq, 0
  br i1 %.not48.us.1.i, label %.preheader.split.us.2.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.us.2.i:                          ; preds = %.preheader.split.us.1.i
  %i.kr = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.ks = load i32, ptr %i.a, align 4, !tbaa !76
  %.not48.us.2.i = icmp eq i32 %i.ks, 0
  br i1 %.not48.us.2.i, label %.preheader.split.us.3.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.us.3.i:                          ; preds = %.preheader.split.us.2.i
  %i.kt = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.ku = load i32, ptr %i.a, align 4, !tbaa !76
  %.not48.us.3.i = icmp eq i32 %i.ku, 0
  br i1 %.not48.us.3.i, label %bb.ck, label %pcf_get_bitmaps.exit.thread

.preheader.split.1.i:                             ; preds = %.preheader.split.preheader.i
  %i.kv = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.kw = load i32, ptr %i.a, align 4, !tbaa !76
  %.not48.1.i = icmp eq i32 %i.kw, 0
  br i1 %.not48.1.i, label %.preheader.split.2.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.2.i:                             ; preds = %.preheader.split.1.i
end_hunk_0
