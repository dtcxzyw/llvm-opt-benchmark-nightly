Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/htmlsubtitles?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_htmlmarkup_to_ass:bb.a
  %i.bt = icmp sgt i32 %.0142288, 0
  %or.cond3 = select i1 %i.ao, i1 %i.bt, i1 false
  br i1 %or.cond3, label %bb.aa, label %bb.ap

bb.aa:                                            ; preds = %bb.z
  %i.bu = add nsw i32 %.0142288, -1               ; 5 uses
  %i.bv = zext nneg i32 %.0142288 to i64
  %i.bw = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.bv ; 4 uses
  %i.bx = zext nneg i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !23 ; 2 uses
  %.not182 = icmp eq i32 %i.ca, 0
  br i1 %.not182, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 128
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !23 ; 3 uses
  %.not183 = icmp eq i32 %i.cc, 0
  br i1 %.not183, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.5) #9
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %.not184 = icmp eq i32 %i.cc, %i.ca
  br i1 %.not184, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %i.cc) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad, %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 132
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !25 ; 2 uses
  %.not185 = icmp ult i32 %i.ce, 16777216
  br i1 %.not185, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 132
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !25 ; 3 uses
  %.not186 = icmp ult i32 %i.cg, 16777216
  br i1 %.not186, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.7) #9
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %.not187 = icmp eq i32 %i.cg, %i.ce
  br i1 %.not187, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = and i32 %i.cg, 16777215
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %i.ch) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj, %bb.ai, %bb.af
  %i.ci = load i8, ptr %i.bw, align 8, !tbaa !9
  %.not188 = icmp eq i8 %i.ci, 0
  br i1 %.not188, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cj = load i8, ptr %i.by, align 8, !tbaa !9
  %.not189 = icmp eq i8 %i.cj, 0
  br i1 %.not189, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.9) #9
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  %i.ck = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(1) %i.bw) #10
  %.not190 = icmp eq i32 %i.ck, 0
  br i1 %.not190, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.by) #9
  br label %.loopexit

bb.ap:                                            ; preds = %bb.z
  %i.cl = icmp ugt i32 %.0142288, 14
  %or.cond6.not = select i1 %i.ao, i1 true, i1 %i.cl
  br i1 %or.cond6.not, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cm = zext nneg i32 %.0142288 to i64
  %i.cn = add nuw nsw i32 %.0142288, 1            ; 3 uses
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.co ; 5 uses
  %i.cq = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cp, ptr noundef nonnull align 8 dereferenceable(136) %i.cq, i64 136, i1 false), !tbaa.struct !26
  %.not177281 = icmp eq ptr %.0146, null
  br i1 %.not177281, label %.loopexit, label %.lr.ph284

.lr.ph284:                                        ; preds = %bb.aq
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 132
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 128 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph284, %select.unfold
  %.1147282 = phi ptr [ %.0146, %.lr.ph284 ], [ %i.es, %select.unfold ] ; 10 uses
  %i.ct = call i32 @av_strncasecmp(ptr noundef nonnull %.1147282, ptr noundef nonnull @.str.11, i64 noundef 5) #9
  %.not178 = icmp eq i32 %i.ct, 0
  br i1 %.not178, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.cu = getelementptr inbounds nuw i8, ptr %.1147282, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.cw = icmp eq i8 %i.cv, 34
  %i.cx = select i1 %i.cw, i64 6, i64 5
  %i.cy = getelementptr inbounds nuw i8, ptr %.1147282, i64 %i.cx ; 3 uses
  %i.cz = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.cy, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.cs) #9
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.at, label %select.unfold

bb.at:                                            ; preds = %bb.as
  %i.db = load i32, ptr %i.cs, align 8, !tbaa !23
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %i.db) #9
  br label %select.unfold

bb.au:                                            ; preds = %bb.ar
  %i.dc = call i32 @av_strncasecmp(ptr noundef nonnull %.1147282, ptr noundef nonnull @.str.14, i64 noundef 6) #9
  %.not179 = icmp eq i32 %i.dc, 0
  br i1 %.not179, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.dd = getelementptr inbounds nuw i8, ptr %.1147282, i64 6
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !9
  %i.df = icmp eq i8 %i.de, 34
  %i.dg = select i1 %i.df, i64 7, i64 6
  %i.dh = getelementptr inbounds nuw i8, ptr %.1147282, i64 %i.dg ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i214, %bb.aw ], [ 0, %bb.av ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i213
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dk = icmp eq i8 %i.dj, 35
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i213, 1
  br i1 %i.dk, label %bb.aw, label %html_color_parse.exit, !llvm.loop !28

html_color_parse.exit:                            ; preds = %bb.aw
  %i.dl = trunc nuw nsw i64 %indvars.iv.i213 to i32
  %i.dm = call i32 @llvm.smax.i32(i32 %i.dl, i32 1)
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr i8, ptr %i.dh, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -1     ; 2 uses
  %i.dq = call i64 @strcspn(ptr noundef %i.dp, ptr noundef nonnull @.str.24) #10
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = call i32 @av_parse_color(ptr noundef nonnull %i.a, ptr noundef %i.dp, i32 noundef %i.dr, ptr noundef %0) #9
  %i.dt = load i16, ptr %i.a, align 2
  %i.du = load i8, ptr %i.c, align 2
  %.inv.i = icmp sgt i32 %i.ds, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.inv.i, label %bb.ax, label %select.unfold

bb.ax:                                            ; preds = %html_color_parse.exit
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 16
  %i.dx = zext i16 %i.dt to i32
  %i.dy = or disjoint i32 %i.dw, %i.dx            ; 2 uses
  %i.dz = or disjoint i32 %i.dy, -16777216
  store i32 %i.dz, ptr %i.cr, align 4, !tbaa !25
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %i.dy) #9
  br label %select.unfold

bb.ay:                                            ; preds = %bb.au
  %i.ea = call i32 @av_strncasecmp(ptr noundef nonnull %.1147282, ptr noundef nonnull @.str.15, i64 noundef 5) #9
  %.not180 = icmp eq i32 %i.ea, 0
  br i1 %.not180, label %bb.az, label %select.unfold

bb.az:                                            ; preds = %bb.ay
  %i.eb = getelementptr inbounds nuw i8, ptr %.1147282, i64 5
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ed = icmp eq i8 %i.ec, 34
  %i.ee = select i1 %i.ed, i64 6, i64 5
  %i.ef = getelementptr inbounds nuw i8, ptr %.1147282, i64 %i.ee ; 4 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !9
  %i.ei = icmp eq i8 %i.eh, 34
  %i.ej = select i1 %i.ei, ptr @.str.16, ptr @.str.17
  %i.ek = call i64 @strcspn(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ej) #10
  %i.el = shl i64 %i.ek, 32                       ; 2 uses
  %sext = add i64 %i.el, 4294967296
  %i.em = ashr exact i64 %sext, 32
  %i.en = call i64 @llvm.umin.i64(i64 %i.em, i64 128)
  %i.eo = call i64 @av_strlcpy(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.ef, i64 noundef %i.en) #9 ; 0 uses
  %i.ep = ashr exact i64 %i.el, 32
  %i.eq = getelementptr inbounds i8, ptr %i.ef, i64 %i.ep
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.cp) #9
  br label %select.unfold

select.unfold:                                    ; preds = %html_color_parse.exit, %bb.ax, %bb.az, %bb.ay, %bb.as, %bb.at
  %.2148 = phi ptr [ %.1147282, %bb.ay ], [ %i.eq, %bb.az ], [ %i.cy, %bb.as ], [ %i.cy, %bb.at ], [ %i.dh, %bb.ax ], [ %i.dh, %html_color_parse.exit ]
  %i.er = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2148, i32 noundef 32) #10 ; 2 uses
  %.not181 = icmp eq ptr %i.er, null
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  br i1 %.not181, label %.loopexit, label %bb.ar, !llvm.loop !29

.loopexit:                                        ; preds = %select.unfold, %bb.aq, %bb.ak, %bb.an, %bb.ao, %bb.am, %bb.ap
  %.1143 = phi i32 [ %.0142288, %bb.ap ], [ %i.bu, %bb.ak ], [ %i.bu, %bb.am ], [ %i.bu, %bb.ao ], [ %i.bu, %bb.an ], [ %i.cn, %bb.aq ], [ %i.cn, %select.unfold ]
  %i.et = zext nneg i32 %i.bh to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %.1246.lcssa322, i64 %i.et
  br label %handle_open_brace.exit

bb.ba:                                            ; preds = %._crit_edge277
  %i.ev = load i8, ptr %.0.lcssa, align 1, !tbaa !9 ; 2 uses
  %i.ew = sext i8 %i.ev to i32                    ; 3 uses
  %.not191 = icmp eq i8 %i.ev, 0
  br i1 %.not191, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !9
  %.not192 = icmp eq i8 %i.ey, 0
  br i1 %.not192, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ez = add nsw i32 %i.ew, -65
  %or.cond.i215 = icmp ult i32 %i.ez, 26
  %i.fa = or disjoint i32 %i.ew, 32
  %spec.select.i = select i1 %or.cond.i215, i32 %i.fa, i32 %i.ew ; 2 uses
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.18, i32 %spec.select.i, i64 5)
  %.not193 = icmp eq ptr %memchr, null
  br i1 %.not193, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fb = xor i1 %i.ao, true
  %i.fc = zext i1 %i.fb to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %spec.select.i, i32 noundef %i.fc) #9
  %i.fd = zext nneg i32 %i.bh to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.1246.lcssa322, i64 %i.fd
  br label %handle_open_brace.exit

bb.be:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.ff = call i32 @av_strncasecmp(ptr noundef nonnull %.0.lcssa, ptr noundef nonnull @.str.20, i64 noundef 2) #9
  %.not194 = icmp eq i32 %i.ff, 0
  br i1 %.not194, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  switch i8 %i.fh, label %bb.bi [
    i8 0, label %bb.bh
    i8 47, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %.not196 = icmp eq i8 %i.fj, 0
  br i1 %.not196, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str) #9
  %i.fk = zext nneg i32 %i.bh to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.1246.lcssa322, i64 %i.fk
  br label %handle_open_brace.exit

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %bb.be
  %.not197 = icmp eq i32 %.3, 0
  br i1 %.not197, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ao, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.21, ptr noundef nonnull %.0.lcssa) #9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fm = zext nneg i32 %i.bh to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.1246.lcssa322, i64 %i.fm
  br label %handle_open_brace.exit

bb.bm:                                            ; preds = %bb.bi
  call void @av_bprint_chars(ptr noundef %1, i8 noundef signext 60, i32 noundef 1) #9
  br label %handle_open_brace.exit

scantag.exit.thread:                              ; preds = %bb.u, %bb.t, %bb.t, %bb.s, %bb.s, %bb.r, %bb.r, %bb.q, %bb.q
  %i.fo = load i8, ptr %.1246.lcssa322, align 1, !tbaa !9
  call void @av_bprint_chars(ptr noundef %1, i8 noundef signext %i.fo, i32 noundef 1) #9
  br label %handle_open_brace.exit

bb.bn:                                            ; preds = %bb.b
  call void @av_bprint_chars(ptr noundef %1, i8 noundef signext %i.f, i32 noundef 1) #9
  br label %handle_open_brace.exit

handle_open_brace.exit:                           ; preds = %.thread.i, %bb.n, %.loopexit, %bb.bh, %bb.bm, %bb.bl, %bb.bd, %scantag.exit.thread, %bb.g, %bb.bn, %rstrip_spaces_buf.exit
  %.2247.ph = phi ptr [ %i.ah, %bb.n ], [ %.0245285, %.thread.i ], [ %i.fe, %bb.bd ], [ %i.fl, %bb.bh ], [ %i.fn, %bb.bl ], [ %.1246.lcssa322, %bb.bm ], [ %i.eu, %.loopexit ], [ %.1246.lcssa322, %scantag.exit.thread ], [ %.0245285, %bb.g ], [ %.0245285, %rstrip_spaces_buf.exit ], [ %.0245285, %bb.bn ] ; 5 uses
  %.1243.ph = phi i32 [ %i.aa, %bb.n ], [ %i.aa, %.thread.i ], [ %.0242286, %bb.bd ], [ %.0242286, %bb.bh ], [ %.0242286, %bb.bl ], [ %.0242286, %bb.bm ], [ %.0242286, %.loopexit ], [ %.0242286, %scantag.exit.thread ], [ %.0242286, %bb.g ], [ %.0242286, %rstrip_spaces_buf.exit ], [ %.0242286, %bb.bn ] ; 4 uses
  %.1.ph = phi i32 [ 0, %bb.n ], [ %.2240, %.thread.i ], [ %.0239287, %bb.bd ], [ %.0239287, %bb.bh ], [ %.0239287, %bb.bl ], [ %.0239287, %bb.bm ], [ %.0239287, %.loopexit ], [ %.0239287, %scantag.exit.thread ], [ %.0239287, %bb.g ], [ %.0239287, %rstrip_spaces_buf.exit ], [ %.0239287, %bb.bn ] ; 4 uses
  %.3145.ph = phi i32 [ %.0142288, %bb.n ], [ %.0142288, %.thread.i ], [ %.0142288, %bb.bd ], [ %.0142288, %bb.bh ], [ %.0142288, %bb.bl ], [ %.0142288, %bb.bm ], [ %.1143, %.loopexit ], [ %.0142288, %scantag.exit.thread ], [ %.0142288, %bb.g ], [ %.0142288, %rstrip_spaces_buf.exit ], [ %.0142288, %bb.bn ] ; 4 uses
  %.1140.ph = phi i32 [ %.0139289, %bb.n ], [ %.0139289, %.thread.i ], [ %.0139289, %bb.bd ], [ %.0139289, %bb.bh ], [ %.0139289, %bb.bl ], [ %.0139289, %bb.bm ], [ %.0139289, %.loopexit ], [ %.0139289, %scantag.exit.thread ], [ 0, %bb.g ], [ 1, %rstrip_spaces_buf.exit ], [ %.0139289, %bb.bn ] ; 3 uses
  %.pr = load i8, ptr %.2247.ph, align 1, !tbaa !9
  switch i8 %.pr, label %bb.bo [
    i8 32, label %handle_open_brace.exit.thread
    i8 13, label %handle_open_brace.exit.thread
    i8 10, label %handle_open_brace.exit.thread
  ]

bb.bo:                                            ; preds = %handle_open_brace.exit
  br label %handle_open_brace.exit.thread

handle_open_brace.exit.thread:                    ; preds = %bb.f, %bb.b, %handle_open_brace.exit, %handle_open_brace.exit, %handle_open_brace.exit, %bb.bo
  %.3145262 = phi i32 [ %.3145.ph, %bb.bo ], [ %.3145.ph, %handle_open_brace.exit ], [ %.3145.ph, %handle_open_brace.exit ], [ %.3145.ph, %handle_open_brace.exit ], [ %.0142288, %bb.f ], [ %.0142288, %bb.b ]
  %.1261 = phi i32 [ %.1.ph, %bb.bo ], [ %.1.ph, %handle_open_brace.exit ], [ %.1.ph, %handle_open_brace.exit ], [ %.1.ph, %handle_open_brace.exit ], [ %.0239287, %bb.f ], [ %.0239287, %bb.b ]
  %.1243260 = phi i32 [ %.1243.ph, %bb.bo ], [ %.1243.ph, %handle_open_brace.exit ], [ %.1243.ph, %handle_open_brace.exit ], [ %.1243.ph, %handle_open_brace.exit ], [ %.0242286, %bb.f ], [ %.0242286, %bb.b ]
  %.2247259 = phi ptr [ %.2247.ph, %bb.bo ], [ %.2247.ph, %handle_open_brace.exit ], [ %.2247.ph, %handle_open_brace.exit ], [ %.2247.ph, %handle_open_brace.exit ], [ %.0245285, %bb.f ], [ %.0245285, %bb.b ]
  %.2141 = phi i32 [ 0, %bb.bo ], [ %.1140.ph, %handle_open_brace.exit ], [ %.1140.ph, %handle_open_brace.exit ], [ %.1140.ph, %handle_open_brace.exit ], [ 1, %bb.f ], [ %.0139289, %bb.b ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.2247259, i64 1
  br label %bb.b, !llvm.loop !30

.critedge:                                        ; preds = %bb.c, %bb.b
  %.val = load i32, ptr %i.d, align 8, !tbaa !10  ; 4 uses
  %.val209 = load i32, ptr %i.e, align 4, !tbaa !14
  %.not267 = icmp ult i32 %.val, %.val209
  br i1 %.not267, label %thread-pre-split, label %rstrip_spaces_buf.exit223

thread-pre-split:                                 ; preds = %.critedge
  %i.fq = icmp ugt i32 %.val, 1
  %.pre302 = load ptr, ptr %1, align 8, !tbaa !15 ; 2 uses
  br i1 %i.fq, label %sub_0.lr.ph, label %.critedge8

sub_0.lr.ph:                                      ; preds = %thread-pre-split
  %i.fr = zext i32 %.val to i64
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.bp
  %indvars.iv298 = phi i64 [ %i.fr, %sub_0.lr.ph ], [ %indvars.iv.next299, %bb.bp ] ; 3 uses
  %indvars.iv.next299 = add nsw i64 %indvars.iv298, -2 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next299 to i32 ; 3 uses
  %i.fs = and i64 %indvars.iv.next299, 4294967295
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre302, i64 %i.fs ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1
  %.not292 = icmp eq i8 %i.fu, 92
  br i1 %.not292, label %.tail, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0
  %i.fv = trunc nuw i64 %indvars.iv298 to i32
  br label %.critedge8

.tail:                                            ; preds = %sub_0
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = icmp eq i8 %i.fx, 78
  br i1 %i.fy, label %bb.bp, label %.critedge8.loopexit.split.loop.exit337

bb.bp:                                            ; preds = %.tail
  store i32 %indvars, ptr %i.d, align 8, !tbaa !10
  %i.fz = icmp ugt i32 %indvars, 1
  br i1 %i.fz, label %sub_0, label %.critedge8, !llvm.loop !31

.critedge8.loopexit.split.loop.exit337:           ; preds = %.tail
  %i.ga = trunc nuw i64 %indvars.iv298 to i32
  br label %.critedge8

.critedge8:                                       ; preds = %bb.bp, %.critedge8.loopexit.split.loop.exit337, %.tail.thread, %thread-pre-split
  %.lcssa = phi i32 [ %.val, %thread-pre-split ], [ %i.fv, %.tail.thread ], [ %i.ga, %.critedge8.loopexit.split.loop.exit337 ], [ %indvars, %bb.bp ]
  %i.gb = zext i32 %.lcssa to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.pre302, i64 %i.gb
  store i8 0, ptr %i.gc, align 1, !tbaa !9
  %.val.i216 = load i32, ptr %i.d, align 8, !tbaa !10 ; 3 uses
  %.val7.i217 = load i32, ptr %i.e, align 4, !tbaa !14
  %.not.i218 = icmp uge i32 %.val.i216, %.val7.i217
  %.not68.i219 = icmp eq i32 %.val.i216, 0
  %or.cond.i220 = or i1 %.not68.i219, %.not.i218
  br i1 %or.cond.i220, label %rstrip_spaces_buf.exit223, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %.critedge8, %bb.bq
  %i.gd = phi i32 [ %i.gk, %bb.bq ], [ %.val.i216, %.critedge8 ]
  %i.ge = load ptr, ptr %1, align 8, !tbaa !15
  %i.gf = add i32 %i.gd, -1                       ; 2 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gg ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !9
  %i.gj = icmp eq i8 %i.gi, 32
  br i1 %i.gj, label %bb.bq, label %rstrip_spaces_buf.exit223

bb.bq:                                            ; preds = %.lr.ph.i221
  store i32 %i.gf, ptr %i.d, align 8, !tbaa !10
  store i8 0, ptr %i.gh, align 1, !tbaa !9
  %i.gk = load i32, ptr %i.d, align 8, !tbaa !10  ; 2 uses
  %.not6.i222 = icmp eq i32 %i.gk, 0
  br i1 %.not6.i222, label %rstrip_spaces_buf.exit223, label %.lr.ph.i221, !llvm.loop !16

rstrip_spaces_buf.exit223:                        ; preds = %bb.bq, %.lr.ph.i221, %.critedge8, %.critedge
  %.0150 = phi i32 [ -12, %.critedge ], [ 0, %.critedge8 ], [ 0, %.lr.ph.i221 ], [ 0, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0150
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @av_bprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_bprint_chars(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @av_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @av_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i64 @av_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare i32 @av_parse_color(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !6, i64 8}
!11 = !{!"AVBPrint", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !7, i64 21}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!11, !6, i64 12}
!15 = !{!11, !12, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17, !21}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = distinct !{!22, !17}
!23 = !{!24, !6, i64 128}
!24 = !{!"font_tag", !7, i64 0, !6, i64 128, !6, i64 132}
!25 = !{!24, !6, i64 132}
!26 = !{i64 0, i64 128, !9, i64 128, i64 4, !27, i64 132, i64 4, !27}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
end_hunk_0
