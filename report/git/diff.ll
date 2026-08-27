Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff?download=true
inline.NumInlined: 585
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@fn_out_consume:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  %i.l = trunc i64 %i.k to i32
  tail call fastcc void @emit_diff_symbol(ptr noundef nonnull %i.d, i32 noundef 21, ptr noundef %i.i, i32 noundef %i.l, i32 noundef 0)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !465  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %.not9.i = icmp eq ptr %i.p, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.p, align 1, !tbaa !40
  br label %strbuf_setlen.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !40
  %.not10.i = icmp eq i8 %i.q, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.418, ptr noundef nonnull @.str.416, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #35
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.c, %bb.d
  store ptr null, ptr %i.f, align 8, !tbaa !465
  br label %bb.f

bb.f:                                             ; preds = %strbuf_setlen.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !464
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12   ; 3 uses
  %.not70 = icmp eq ptr %i.t, null
  br i1 %.not70, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #34
  %i.v = trunc i64 %i.u to i32
  tail call fastcc void @emit_diff_symbol(ptr noundef nonnull %i.d, i32 noundef 23, ptr noundef nonnull %i.t, i32 noundef %i.v, i32 noundef 0)
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !464
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12   ; 2 uses
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #34
  %i.aa = trunc i64 %i.z to i32
  tail call fastcc void @emit_diff_symbol(ptr noundef nonnull %i.d, i32 noundef 22, ptr noundef nonnull %i.y, i32 noundef %i.aa, i32 noundef 0)
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = load i8, ptr %1, align 1, !tbaa !40     ; 3 uses
  %i.ad = icmp eq i8 %i.ac, 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !473 ; 10 uses
  %.not72 = icmp eq ptr %i.af, null               ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.af

bb.i:                                             ; preds = %bb.h
  br i1 %.not72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @diff_words_flush(ptr noundef nonnull %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %2, ptr %i.b, align 8, !tbaa !19
  store ptr %1, ptr %i.a, align 8, !tbaa !12
  %.old1.not.i = icmp eq i64 %2, 0
  br i1 %.old1.not.i, label %sane_truncate_line.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.preheader.i
  %i.ag = call i32 @utf8_width(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #33 ; 0 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %or.cond.i = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %sane_truncate_line.exit, !llvm.loop !517

sane_truncate_line.exit:                          ; preds = %.preheader.i, %bb.k
  %i.al = phi i64 [ 0, %bb.k ], [ %i.aj, %.preheader.i ]
  %i.am = sub i64 %2, %i.al                       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !452
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !453
  %i.ap = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 45) #34 ; 3 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %find_lno.exit, label %bb.l

bb.l:                                             ; preds = %sane_truncate_line.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = call i64 @__isoc23_strtol(ptr noundef nonnull %i.aq, ptr noundef null, i32 noundef 10) #33
  %i.as = trunc i64 %i.ar to i32
  store i32 %i.as, ptr %i.an, align 8, !tbaa !452
  %i.at = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ap, i32 noundef 43) #34 ; 2 uses
  %.not11.i = icmp eq ptr %i.at, null
  br i1 %.not11.i, label %find_lno.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = call i64 @__isoc23_strtol(ptr noundef nonnull %i.au, ptr noundef null, i32 noundef 10) #33
  %i.aw = trunc i64 %i.av to i32
  store i32 %i.aw, ptr %i.ao, align 4, !tbaa !453
  br label %find_lno.exit

find_lno.exit:                                    ; preds = %sane_truncate_line.exit, %bb.l, %bb.m
  %i.ax = trunc i64 %i.am to i32                  ; 5 uses
  %i.ay = load i32, ptr %0, align 8, !tbaa !449
  %i.az = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.ay) #33
  %.0.i.i = select i1 %i.az, ptr getelementptr inbounds nuw (i8, ptr @diff_colors, i64 75), ptr @.str.41 ; 2 uses
  %i.ba = load i32, ptr %0, align 8, !tbaa !449
  %i.bb = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.ba) #33
  %.0.i73.i = select i1 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @diff_colors, i64 225), ptr @.str.41 ; 2 uses
  %i.bc = load i32, ptr %0, align 8, !tbaa !449
  %i.bd = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.bc) #33
  %.0.i74.i = select i1 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @diff_colors, i64 600), ptr @.str.41 ; 2 uses
  %i.be = load i32, ptr %0, align 8, !tbaa !449
  %i.bf = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.be) #33
  %.0.i75.i = select i1 %i.bf, ptr @diff_colors, ptr @.str.41 ; 6 uses
  %i.bg = load i32, ptr %0, align 8, !tbaa !449
  %i.bh = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.bg) #33 ; 2 uses
  %i.bi = select i1 %i.bh, ptr @.str.319, ptr @.str.41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.run_textconv.buf, i64 24, i1 false)
  %i.bj = icmp slt i32 %i.ax, 10
  br i1 %i.bj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %find_lno.exit
  %i.bk = load i16, ptr %1, align 1
  %i.bl = icmp ne i16 %i.bk, 16448
  %i.bm = zext i1 %i.bl to i32
  %.not.i76 = icmp eq i32 %i.bm, 0
  br i1 %.not.i76, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bo = add i64 %i.am, 4294967294
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = call ptr @memmem(ptr noundef nonnull %i.bn, i64 noundef %i.bp, ptr noundef nonnull @emit_hunk_header.atat, i64 noundef 2) #34 ; 5 uses
  %i.br = ptrtoaddr ptr %i.bq to i64
  %.not66.i = icmp eq ptr %i.bq, null
  br i1 %.not66.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %find_lno.exit
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !451
  call fastcc void @emit_diff_symbol(ptr noundef %i.bs, i32 noundef 31, ptr noundef nonnull %1, i32 noundef %i.ax, i32 noundef 0)
  br label %emit_hunk_header.exit

bb.q:                                             ; preds = %bb.o
  %.ptr72.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 5 uses
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !451
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 232
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !440
  %.not67.i = icmp eq i32 %i.bv, 0
  br i1 %.not67.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = select i1 %i.bh, i64 4, i64 0
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %i.bi, i64 noundef %i.bw) #33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i73.i) #34
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.0.i73.i, i64 noundef %i.bx) #33
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !451
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 236
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !518
  %.not68.i = icmp eq i32 %i.ca, 0
  br i1 %.not68.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull @emit_hunk_header.atat, i64 noundef 2) #33
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cb = ptrtoint ptr %.ptr72.i to i64
  %i.cc = ptrtoint ptr %1 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %i.cd) #33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i75.i) #34
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.0.i75.i, i64 noundef %i.ce) #33
  %i.cf = and i64 %i.am, 2147483647
  %i.cg = getelementptr i8, ptr %1, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !40
  switch i8 %i.ci, label %bb.x [
    i8 13, label %bb.w
    i8 10, label %bb.w
  ]

.lr.ph.preheader.i:                               ; preds = %.preheader.i77
  %4 = sub i64 %i.cp, %i.br
  %5 = add i64 %4, %.pre-phi                      ; 3 uses
  %scevgep.i = getelementptr i8, ptr %i.bq, i64 %5
  br label %.lr.ph.i

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.cj = add nsw i32 %i.ax, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i = phi i32 [ %i.cj, %bb.w ], [ %i.ax, %bb.v ] ; 3 uses
  %i.ck = zext nneg i32 %.1.i to i64              ; 2 uses
  %i.cl = getelementptr i8, ptr %1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !40
  switch i8 %i.cn, label %.preheader.i77 [
    i8 13, label %bb.y
    i8 10, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.co = add nsw i32 %.1.i, -1                   ; 2 uses
  %.pre = zext nneg i32 %i.co to i64
  br label %.preheader.i77

.preheader.i77:                                   ; preds = %bb.y, %bb.x
  %.pre-phi = phi i64 [ %.pre, %bb.y ], [ %i.ck, %bb.x ] ; 3 uses
  %.1.1.i = phi i32 [ %i.co, %bb.y ], [ %.1.i, %bb.x ]
  %i.cp = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cq = ptrtoint ptr %.ptr72.i to i64           ; 3 uses
  %i.cr = sub i64 %i.cq, %i.cp
  %i.cs = icmp slt i64 %i.cr, %.pre-phi
  br i1 %i.cs, label %.lr.ph.preheader.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.preheader.i
  %i.ct = phi i64 [ %i.cv, %bb.z ], [ %i.cq, %.lr.ph.preheader.i ]
  %.058.ptr81.i = phi ptr [ %.058.ptr.i, %bb.z ], [ %.ptr72.i, %.lr.ph.preheader.i ] ; 2 uses
  %.058.idx80.i = phi i64 [ %.058.add.i, %bb.z ], [ 2, %.lr.ph.preheader.i ] ; 2 uses
  %i.cu = load i8, ptr %.058.ptr81.i, align 1, !tbaa !40
  switch i8 %i.cu, label %._crit_edge.i [
    i8 32, label %bb.z
    i8 9, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %.058.add.i = add nuw i64 %.058.idx80.i, 1      ; 3 uses
  %.058.ptr.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.058.add.i ; 2 uses
  %i.cv = ptrtoint ptr %.058.ptr.i to i64         ; 2 uses
  %exitcond.not.i = icmp eq i64 %.058.add.i, %5
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !519

._crit_edge.i:                                    ; preds = %bb.z, %.lr.ph.i
  %.058.idx.lcssa.i = phi i64 [ %.058.idx80.i, %.lr.ph.i ], [ %5, %bb.z ] ; 2 uses
  %.058.ptr.lcssa.i = phi ptr [ %.058.ptr81.i, %.lr.ph.i ], [ %scevgep.i, %bb.z ] ; 2 uses
  %.lcssa76.i = phi i64 [ %i.ct, %.lr.ph.i ], [ %i.cv, %bb.z ] ; 2 uses
  %.not71.i = icmp eq i64 %.058.idx.lcssa.i, 2
  br i1 %.not71.i, label %._crit_edge.thread.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i) #34
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.0.i.i, i64 noundef %i.cw) #33
  %gepdiff.i = add nsw i64 %.058.idx.lcssa.i, -2
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.ptr72.i, i64 noundef %gepdiff.i) #33
  %i.cx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i75.i) #34
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.0.i75.i, i64 noundef %i.cx) #33
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.aa, %._crit_edge.i, %.preheader.i77
  %.lcssa76100.i = phi i64 [ %.lcssa76.i, %._crit_edge.i ], [ %.lcssa76.i, %bb.aa ], [ %i.cq, %.preheader.i77 ]
  %.058.ptr.lcssa99.i = phi ptr [ %.058.ptr.lcssa.i, %._crit_edge.i ], [ %.058.ptr.lcssa.i, %bb.aa ], [ %.ptr72.i, %.preheader.i77 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %.pre-phi ; 3 uses
  %i.cz = icmp ult ptr %.058.ptr.lcssa99.i, %i.cy
  br i1 %i.cz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.thread.i
  %i.da = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i74.i) #34
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.0.i74.i, i64 noundef %i.da) #33
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.db, %.lcssa76100.i
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.058.ptr.lcssa99.i, i64 noundef %i.dc) #33
  %i.dd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i75.i) #34
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.0.i75.i, i64 noundef %i.dd) #33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.thread.i
  %i.de = sub nsw i32 %i.ax, %.1.1.i
  %i.df = sext i32 %i.de to i64
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %i.cy, i64 noundef %i.df) #33
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !69 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i, label %strbuf_complete_line.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !42 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.dh
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !40
  %.not6.i.i.i = icmp eq i8 %i.dm, 10
  br i1 %.not6.i.i.i, label %strbuf_complete_line.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = load i64, ptr %3, align 8, !tbaa !68    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dn, 0
  %.neg.i.i.i.i = add i64 %i.dh, 1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dn, %.neg.i.i.i.i
  %or.cond.i.i.i = or i1 %.not.i.i.i.i.i, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %strbuf_avail.exit.thread.i.i.i.i, label %strbuf_addch.exit.i.i.i

strbuf_avail.exit.thread.i.i.i.i:                 ; preds = %bb.ae
  call void @strbuf_grow(ptr noundef nonnull %3, i64 noundef 1) #33
  %.pre.i.i.i.i = load i64, ptr %i.dg, align 8, !tbaa !69 ; 2 uses
  %.pre7.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  %.pre.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !42
  br label %strbuf_addch.exit.i.i.i

strbuf_addch.exit.i.i.i:                          ; preds = %strbuf_avail.exit.thread.i.i.i.i, %bb.ae
  %i.do = phi ptr [ %.pre.i.i.i, %strbuf_avail.exit.thread.i.i.i.i ], [ %i.dj, %bb.ae ]
  %.pre-phi.i.i.i.i = phi i64 [ %.pre7.i.i.i.i, %strbuf_avail.exit.thread.i.i.i.i ], [ %.neg.i.i.i.i, %bb.ae ]
  %i.dp = phi i64 [ %.pre.i.i.i.i, %strbuf_avail.exit.thread.i.i.i.i ], [ %i.dh, %bb.ae ]
  store i64 %.pre-phi.i.i.i.i, ptr %i.dg, align 8, !tbaa !69
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  store i8 10, ptr %i.dq, align 1, !tbaa !40
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !42
  %i.ds = load i64, ptr %i.dg, align 8, !tbaa !69
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ds
  store i8 0, ptr %i.dt, align 1, !tbaa !40
  %.pre.i = load i64, ptr %i.dg, align 8, !tbaa !69
  br label %strbuf_complete_line.exit.i

strbuf_complete_line.exit.i:                      ; preds = %strbuf_addch.exit.i.i.i, %bb.ad, %bb.ac
  %i.du = phi i64 [ 0, %bb.ac ], [ %i.dh, %bb.ad ], [ %.pre.i, %strbuf_addch.exit.i.i.i ]
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !451
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !42
  %i.dy = trunc i64 %i.du to i32
  call fastcc void @emit_diff_symbol(ptr noundef %i.dv, i32 noundef 30, ptr noundef %i.dx, i32 noundef %i.dy, i32 noundef 0)
  call void @strbuf_release(ptr noundef nonnull %3) #33
  br label %emit_hunk_header.exit

emit_hunk_header.exit:                            ; preds = %bb.p, %strbuf_complete_line.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.az

bb.af:                                            ; preds = %bb.h
  br i1 %.not72, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !474
  %i.eb = icmp eq i32 %i.ea, 1
  %i.ec = select i1 %i.eb, i32 24, i32 25
  switch i8 %i.ac, label %bb.al [
    i8 45, label %bb.ah
    i8 43, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ed = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !520 ; 2 uses
  %i.ef = add i64 %i.ee, %2                       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !521 ; 2 uses
  %i.ei = icmp ugt i64 %i.ef, %i.eh
  %.pre.i78 = load ptr, ptr %i.af, align 8, !tbaa !522 ; 2 uses
  br i1 %i.ei, label %bb.ai, label %diff_words_append.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ej = mul i64 %i.eh, 3
  %i.ek = add i64 %i.ej, 48
  %i.el = lshr i64 %i.ek, 1
  %..i = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.ef) ; 2 uses
  store i64 %..i, ptr %i.eg, align 8, !tbaa !521
  %i.em = tail call ptr @xrealloc(ptr noundef %.pre.i78, i64 noundef %..i) #33 ; 2 uses
  store ptr %i.em, ptr %i.af, align 8, !tbaa !522
  %.pre25.i = load i64, ptr %i.ed, align 8, !tbaa !520
  br label %diff_words_append.exit

diff_words_append.exit:                           ; preds = %bb.ah, %bb.ai
  %i.en = phi i64 [ %i.ee, %bb.ah ], [ %.pre25.i, %bb.ai ]
  %i.eo = phi ptr [ %.pre.i78, %bb.ah ], [ %i.em, %bb.ai ]
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eq = add i64 %2, -1                          ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr nonnull readonly align 1 %i.ep, i64 %i.eq, i1 false)
  %i.es = load i64, ptr %i.ed, align 8, !tbaa !520
  %i.et = add i64 %i.es, %i.eq                    ; 2 uses
  store i64 %i.et, ptr %i.ed, align 8, !tbaa !520
  %i.eu = load ptr, ptr %i.af, align 8, !tbaa !522
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %i.et
  store i8 0, ptr %i.ev, align 1, !tbaa !40
  br label %bb.az

bb.aj:                                            ; preds = %bb.ag
  %i.ew = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 4 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !520 ; 2 uses
  %i.ez = add i64 %i.ey, %2                       ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !521 ; 2 uses
  %i.fc = icmp ugt i64 %i.ez, %i.fb
  %.pre.i79 = load ptr, ptr %i.ew, align 8, !tbaa !522 ; 2 uses
  br i1 %i.fc, label %bb.ak, label %diff_words_append.exit82

bb.ak:                                            ; preds = %bb.aj
  %i.fd = mul i64 %i.fb, 3
  %i.fe = add i64 %i.fd, 48
  %i.ff = lshr i64 %i.fe, 1
  %..i80 = tail call i64 @llvm.umax.i64(i64 %i.ff, i64 %i.ez) ; 2 uses
  store i64 %..i80, ptr %i.fa, align 8, !tbaa !521
  %i.fg = tail call ptr @xrealloc(ptr noundef %.pre.i79, i64 noundef %..i80) #33 ; 2 uses
  store ptr %i.fg, ptr %i.ew, align 8, !tbaa !522
  %.pre25.i81 = load i64, ptr %i.ex, align 8, !tbaa !520
  br label %diff_words_append.exit82

diff_words_append.exit82:                         ; preds = %bb.aj, %bb.ak
  %i.fh = phi i64 [ %i.ey, %bb.aj ], [ %.pre25.i81, %bb.ak ]
  %i.fi = phi ptr [ %.pre.i79, %bb.aj ], [ %i.fg, %bb.ak ]
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fk = add i64 %2, -1                          ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 %i.fh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr nonnull readonly align 1 %i.fj, i64 %i.fk, i1 false)
  %i.fm = load i64, ptr %i.ex, align 8, !tbaa !520
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  store i64 %i.fn, ptr %i.ex, align 8, !tbaa !520
  %i.fo = load ptr, ptr %i.ew, align 8, !tbaa !522
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fn
  store i8 0, ptr %i.fp, align 1, !tbaa !40
  br label %bb.az

bb.al:                                            ; preds = %bb.ag
  %i.fq = tail call zeroext i1 @starts_with(ptr noundef nonnull %1, ptr noundef nonnull @.str.381) #33
  br i1 %i.fq, label %bb.az, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @diff_words_flush(ptr noundef nonnull %0)
  %i.fr = trunc i64 %2 to i32
  tail call fastcc void @emit_diff_symbol(ptr noundef nonnull %i.d, i32 noundef %i.ec, ptr noundef nonnull %1, i32 noundef %i.fr, i32 noundef 0)
  br label %bb.az

bb.an:                                            ; preds = %bb.af
  switch i8 %i.ac, label %bb.ax [
    i8 43, label %bb.ao
    i8 45, label %bb.as
    i8 32, label %bb.at
    i8 92, label %bb.au
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !453
  %i.fu = add nsw i32 %i.ft, 1                    ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !453
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
end_hunk_0
