Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@emit_graph:bb.a
  %.not87.i = icmp eq ptr %i.cm, null
  br i1 %.not87.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ck) #27 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ah, label %gv_strdup.exit93.i

bb.ah:                                            ; preds = %bb.ag
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cq = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ck) #31
  %i.cr = add i64 %i.cq, 1
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.45, i64 noundef %i.cr) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit93.i:                               ; preds = %bb.ag
  %i.ct = tail call ptr @strtok(ptr noundef nonnull %i.cn, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not8898.i = icmp eq ptr %i.ct, null
  br i1 %.not8898.i, label %._crit_edge101.i, label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %gv_strdup.exit93.i, %bb.aj
  %.199.i = phi ptr [ %i.cv, %bb.aj ], [ %i.ct, %gv_strdup.exit93.i ] ; 2 uses
  %i.cu = load i8, ptr %.199.i, align 1, !tbaa !14
  %.not91.i = icmp eq i8 %i.cu, 0
  br i1 %.not91.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph100.i
  tail call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.199.i) #27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph100.i
  %i.cv = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not88.i = icmp eq ptr %i.cv, null
  br i1 %.not88.i, label %._crit_edge101.i, label %.lr.ph100.i, !llvm.loop !252

._crit_edge101.i:                                 ; preds = %bb.aj, %gv_strdup.exit93.i
  tail call void @free(ptr noundef %i.cn) #27
  br label %bb.al

bb.ak:                                            ; preds = %bb.af
  tail call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %i.ck) #27
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge101.i, %bb.ae, %.lr.ph105.i
  %i.cw = tail call ptr @agget(ptr noundef nonnull %.060103.i, ptr noundef nonnull @.str.56) #27 ; 3 uses
  %.not89.i = icmp eq ptr %i.cw, null
  br i1 %.not89.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %.not90.i = icmp eq i8 %i.cx, 0
  br i1 %.not90.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %i.cw) #27
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.cy = tail call ptr @agnxtout(ptr noundef %1, ptr noundef nonnull %.060103.i) #27 ; 2 uses
  %.not84.i = icmp eq ptr %i.cy, null
  br i1 %.not84.i, label %._crit_edge106.i, label %.lr.ph105.i, !llvm.loop !253

._crit_edge106.i:                                 ; preds = %bb.ao, %bb.ad
  %i.cz = tail call ptr @agnxtnode(ptr noundef %1, ptr noundef nonnull %.061108.i) #27 ; 2 uses
  %.not73.i = icmp eq ptr %i.cz, null
  br i1 %.not73.i, label %emit_colors.exit, label %.lr.ph110.i, !llvm.loop !254

emit_colors.exit:                                 ; preds = %._crit_edge106.i, %bb.m, %emit_begin_graph.exit
  %i.da = tail call ptr @agfstnode(ptr noundef %1) #27 ; 2 uses
  %.not55298 = icmp eq ptr %i.da, null
  br i1 %.not55298, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %emit_colors.exit, %.lr.ph
  %.0299 = phi ptr [ %i.de, %.lr.ph ], [ %i.da, %emit_colors.exit ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0299, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 160
  store i8 0, ptr %i.dd, align 8, !tbaa !156
  %i.de = tail call ptr @agnxtnode(ptr noundef %1, ptr noundef nonnull %.0299) #27 ; 2 uses
  %.not55 = icmp eq ptr %i.de, null
  br i1 %.not55, label %._crit_edge, label %.lr.ph, !llvm.loop !255

._crit_edge:                                      ; preds = %.lr.ph, %emit_colors.exit
  %i.df = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 496
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !157 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 7 uses
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !158
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 504
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !159 ; 5 uses
  %.not.i57 = icmp eq ptr %i.dk, null
  br i1 %.not.i57, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !47
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.do = load i32, ptr %i.c, align 8, !tbaa !68
  %i.dp = and i32 %i.do, 64
  %.not20.i = icmp eq i32 %i.dp, 0
  br i1 %.not20.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !160
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.57, ptr noundef %i.dr) #27
  %i.ds = load i32, ptr %i.di, align 4, !tbaa !158
  %i.dt = add nsw i32 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !47
  %.val304.pre.pre = load i32, ptr %i.di, align 4, !tbaa !158
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.val304.pre = phi i32 [ %.val304.pre.pre, %bb.ar ], [ %i.dh, %bb.aq ], [ %i.dh, %bb.ap ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dw = load i32, ptr %i.dl, align 4, !tbaa !47
  br label %firstlayer.exit

bb.at:                                            ; preds = %._crit_edge
  %i.dx = icmp sgt i32 %i.dh, 1
  br i1 %i.dx, label %bb.au, label %firstlayer.exit

bb.au:                                            ; preds = %bb.at
  %i.dy = load i32, ptr %i.c, align 8, !tbaa !68
  %i.dz = and i32 %i.dy, 64
  %.not19.i = icmp eq i32 %i.dz, 0
  br i1 %.not19.i, label %firstlayer.exit.thread, label %firstlayer.exit

firstlayer.exit.thread:                           ; preds = %bb.au
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !160
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.57, ptr noundef %i.eb) #27
  store i32 1, ptr %i.di, align 4, !tbaa !158
  store i32 1, ptr %i.ag, align 8, !tbaa !103
  br label %.lr.ph308

firstlayer.exit:                                  ; preds = %bb.as, %bb.at, %bb.au
  %.val304 = phi i32 [ %.val304.pre, %bb.as ], [ %i.dh, %bb.at ], [ %i.dh, %bb.au ]
  %.sink.i = phi i32 [ %i.dw, %bb.as ], [ 1, %bb.at ], [ 1, %bb.au ] ; 2 uses
  %storemerge.i = phi ptr [ %i.dv, %bb.as ], [ null, %bb.at ], [ null, %bb.au ]
  store i32 %.sink.i, ptr %i.ag, align 8, !tbaa !103
  %.not125306 = icmp sgt i32 %.sink.i, %.val304
  br i1 %.not125306, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %firstlayer.exit.thread, %firstlayer.exit
  %storemerge.i570 = phi ptr [ null, %firstlayer.exit.thread ], [ %storemerge.i, %firstlayer.exit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 9 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.phi.trans.insert183.i = getelementptr inbounds nuw i8, ptr %4, i64 31 ; 11 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph308, %nextlayer.exit
  %.0122307 = phi ptr [ %storemerge.i570, %.lr.ph308 ], [ %.1, %nextlayer.exit ] ; 3 uses
  %i.fg = load ptr, ptr %0, align 8, !tbaa !70
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 504
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !159 ; 2 uses
  %.not.i58 = icmp eq ptr %i.fi, null
  %.0.in.i = select i1 %.not.i58, ptr %i.di, ptr %i.fi
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !47
  %i.fj = icmp sgt i32 %.0.i, 1
  br i1 %i.fj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @gvrender_begin_layer(ptr noundef nonnull %0) #27
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fk = load i64, ptr %i.ed, align 4            ; 3 uses
  store i64 %i.fk, ptr %i.ec, align 4
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, -1
  br i1 %i.fm, label %.lr.ph301, label %validpage.exit.thread

.lr.ph301:                                        ; preds = %bb.ax, %nextpage.exit
  %.pre.i.i483.in.in = phi i64 [ %.pre.i.i484.in.in, %nextpage.exit ], [ %i.fk, %bb.ax ] ; 2 uses
  %i.fn = phi i32 [ %i.adu, %nextpage.exit ], [ %i.fl, %bb.ax ] ; 3 uses
  %.pre.i.i483.in = lshr i64 %.pre.i.i483.in.in, 32 ; 2 uses
  %.pre.i.i483 = trunc nuw i64 %.pre.i.i483.in to i32 ; 3 uses
  %i.fo = load i32, ptr %i.ee, align 4, !tbaa !161
  %i.fp = icmp slt i32 %i.fn, %i.fo
  %i.fq = icmp sgt i64 %.pre.i.i483.in.in, -1
  %or.cond758 = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond758, label %validpage.exit, label %validpage.exit.thread

validpage.exit:                                   ; preds = %.lr.ph301
  %i.fr = load i32, ptr %i.eg, align 8, !tbaa !162
  %i.fs = icmp sgt i32 %i.fr, %.pre.i.i483
  br i1 %i.fs, label %bb.ay, label %validpage.exit.thread

bb.ay:                                            ; preds = %validpage.exit
  %i.ft = load ptr, ptr %i.al, align 8, !tbaa !39 ; 17 uses
  %i.fu = load i32, ptr %i.c, align 8, !tbaa !68  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.fv = load i32, ptr %i.ag, align 8, !tbaa !103 ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not127 = icmp eq i32 %i.fn, 0
  br i1 %.not127, label %NotFirstPage.exit.i, label %.thread214.i

NotFirstPage.exit.i:                              ; preds = %bb.az
  %.not565 = icmp eq i64 %.pre.i.i483.in, 0
  br i1 %.not565, label %bb.bz, label %.thread.i

.thread.i:                                        ; preds = %NotFirstPage.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 256 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !52
  br label %bb.bb

.thread214.i:                                     ; preds = %bb.az
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 256 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !52
  br label %._crit_edge.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 256 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !52
  %i.gd = load ptr, ptr %0, align 8, !tbaa !70
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 488
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !104
  %i.gg = zext nneg i32 %i.fv to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !105
  call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef %i.gi)
  %.pre.i = load i32, ptr %i.ec, align 4, !tbaa !106
  %.pre.i.i.pre = load i32, ptr %i.ef, align 8, !tbaa !107
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread.i
  %.pre.i.i = phi i32 [ %.pre.i.i483, %.thread.i ], [ %.pre.i.i.pre, %bb.ba ] ; 2 uses
  %i.gj = phi i32 [ 0, %.thread.i ], [ %.pre.i, %bb.ba ] ; 2 uses
  %i.gk = phi ptr [ %i.fy, %.thread.i ], [ %i.gc, %bb.ba ] ; 2 uses
  %i.gl = phi ptr [ %i.fx, %.thread.i ], [ %i.gb, %bb.ba ] ; 2 uses
  %i.gm = icmp sgt i32 %i.gj, 0
  %i.gn = icmp sgt i32 %.pre.i.i, 0
  %or.cond.i.i = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %layerPagePrefix.exit.i

._crit_edge.i.i:                                  ; preds = %bb.bb, %.thread214.i
  %.pre.i218.i = phi i32 [ %.pre.i.i483, %.thread214.i ], [ %.pre.i.i, %bb.bb ]
  %i.go = phi ptr [ %i.fz, %.thread214.i ], [ %i.gl, %bb.bb ]
  %i.gp = phi ptr [ %i.ga, %.thread214.i ], [ %i.gk, %bb.bb ]
  %i.gq = phi i32 [ %i.fn, %.thread214.i ], [ %i.gj, %bb.bb ]
  call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull %4, ptr noundef nonnull @.str.46, i32 noundef %i.gq, i32 noundef %.pre.i218.i)
  br label %layerPagePrefix.exit.i

layerPagePrefix.exit.i:                           ; preds = %._crit_edge.i.i, %bb.bb
  %i.gr = phi ptr [ %i.gl, %bb.bb ], [ %i.go, %._crit_edge.i.i ]
  %i.gs = phi ptr [ %i.gk, %bb.bb ], [ %i.gp, %._crit_edge.i.i ] ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  %i.gu = select i1 %i.gt, ptr @.str.58, ptr %i.gs ; 3 uses
  %i.gv = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gu) #31 ; 8 uses
  %i.gw = icmp eq i64 %i.gv, 0
  %.val.i.pre.i = load i8, ptr %.phi.trans.insert183.i, align 1, !tbaa !14 ; 3 uses
  br i1 %i.gw, label %agxbput.exit.i, label %agxblen.exit.i.i.i

agxblen.exit.i.i.i:                               ; preds = %layerPagePrefix.exit.i
  %.not.i.i.i.i = icmp eq i8 %.val.i.pre.i, -1    ; 4 uses
  %i.gx = zext i8 %.val.i.pre.i to i64            ; 4 uses
  %i.gy = load i64, ptr %i.eh, align 8
  %.fr.i118 = freeze i64 %i.gy                    ; 7 uses
  %i.gz = load i64, ptr %i.ei, align 8            ; 2 uses
  %.0.i30.i.i.i = select i1 %.not.i.i.i.i, i64 %.fr.i118, i64 31
  %.0.i24.i.i.i = select i1 %.not.i.i.i.i, i64 %i.gz, i64 %i.gx
  %i.ha = sub i64 %.0.i30.i.i.i, %.0.i24.i.i.i
  %i.hb = icmp ugt i64 %i.gv, %i.ha
  br i1 %i.hb, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %agxblen.exit.i.i.i
  br i1 %.not.i.i.i.i, label %agxbsizeof.exit.i117, label %bb.bi

agxbsizeof.exit.i117:                             ; preds = %bb.bc
  %i.hc = icmp eq i64 %.fr.i118, 0
  %i.hd = shl i64 %.fr.i118, 1
  %spec.select44.i119 = select i1 %i.hc, i64 8192, i64 %i.hd
  %i.he = add i64 %.fr.i118, %i.gv
  %spec.select33.i120 = call i64 @llvm.umax.i64(i64 %i.he, i64 %spec.select44.i119) ; 7 uses
  %i.hf = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.hg = icmp eq i64 %spec.select33.i120, 0
  br i1 %i.hg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %agxbsizeof.exit.i117
  call void @free(ptr noundef %i.hf) #27
  br label %.thread

bb.be:                                            ; preds = %agxbsizeof.exit.i117
  %i.hh = call ptr @realloc(ptr noundef %i.hf, i64 noundef %spec.select33.i120) #34 ; 4 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hj, ptr noundef nonnull @.str.45, i64 noundef %spec.select33.i120) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.hl = icmp ugt i64 %spec.select33.i120, %.fr.i118
  br i1 %i.hl, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.fr.i118
  %i.hn = sub nuw i64 %spec.select33.i120, %.fr.i118
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hm, i8 0, i64 %i.hn, i1 false)
  br label %.thread

bb.bi:                                            ; preds = %bb.bc
  %i.ho = add i64 %i.gv, 31
  %spec.select.i113 = call i64 @llvm.umax.i64(i64 %i.ho, i64 62) ; 3 uses
  %i.hp = call noalias ptr @calloc(i64 noundef %spec.select.i113, i64 noundef 1) #28 ; 3 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.bj, label %gv_calloc.exit.i114

bb.bj:                                            ; preds = %bb.bi
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str.45, i64 noundef %spec.select.i113) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit.i114:                              ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hp, ptr nonnull align 8 %4, i64 %i.gx, i1 false)
  store i64 %i.gx, ptr %i.ei, align 8, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %gv_calloc.exit.i114, %bb.bh, %bb.bg, %bb.bd
  %spec.select3641.i115 = phi i64 [ %spec.select.i113, %gv_calloc.exit.i114 ], [ 0, %bb.bd ], [ %spec.select33.i120, %bb.bg ], [ %spec.select33.i120, %bb.bh ]
  %.0.i116 = phi ptr [ %i.hp, %gv_calloc.exit.i114 ], [ null, %bb.bd ], [ %i.hh, %bb.bg ], [ %i.hh, %bb.bh ] ; 2 uses
  store ptr %.0.i116, ptr %4, align 8, !tbaa !14
  store i64 %spec.select3641.i115, ptr %i.eh, align 8, !tbaa !14
  store i8 -1, ptr %.phi.trans.insert183.i, align 1, !tbaa !14
  %.pre = load i64, ptr %i.ei, align 8, !tbaa !14
  br label %agxbput.exit.thread.i

bb.bk:                                            ; preds = %agxblen.exit.i.i.i
  br i1 %.not.i.i.i.i, label %.agxbput.exit.thread.i_crit_edge, label %bb.bl

.agxbput.exit.thread.i_crit_edge:                 ; preds = %bb.bk
  %.pre485 = load ptr, ptr %4, align 8, !tbaa !14
  br label %agxbput.exit.thread.i

bb.bl:                                            ; preds = %bb.bk
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 %i.gx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ht, ptr nonnull readonly align 1 %i.gu, i64 %i.gv, i1 false)
  %i.hu = trunc i64 %i.gv to i8
  %i.hv = load i8, ptr %.phi.trans.insert183.i, align 1, !tbaa !14
  %i.hw = add i8 %i.hv, %i.hu                     ; 2 uses
  store i8 %i.hw, ptr %.phi.trans.insert183.i, align 1, !tbaa !14
  br label %agxbput.exit.i

agxbput.exit.thread.i:                            ; preds = %.agxbput.exit.thread.i_crit_edge, %.thread
  %i.hx = phi ptr [ %.0.i116, %.thread ], [ %.pre485, %.agxbput.exit.thread.i_crit_edge ]
  %i.hy = phi i64 [ %.pre, %.thread ], [ %i.gz, %.agxbput.exit.thread.i_crit_edge ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hz, ptr nonnull readonly align 1 %i.gu, i64 %i.gv, i1 false)
  %i.ia = add i64 %i.hy, %i.gv                    ; 2 uses
  store i64 %i.ia, ptr %i.ei, align 8, !tbaa !14
  br label %bb.bm

agxbput.exit.i:                                   ; preds = %bb.bl, %layerPagePrefix.exit.i
  %.val.i.i = phi i8 [ %i.hw, %bb.bl ], [ %.val.i.pre.i, %layerPagePrefix.exit.i ] ; 3 uses
  switch i8 %.val.i.i, label %agxblen.exit.i.i90.i [
    i8 -1, label %agxbput.exit.i._crit_edge
    i8 31, label %agxbclear.exit.thread.i.i
  ]

agxbput.exit.i._crit_edge:                        ; preds = %agxbput.exit.i
  %.pre486 = load i64, ptr %i.ei, align 8, !tbaa !14
end_hunk_0
begin_hunk_1_@emit_graph:bb.a
._crit_edge141.i.i:                               ; preds = %.lr.ph140.i.i, %.lr.ph145.i.i
  %i.abd = call ptr @agnxtnode(ptr noundef nonnull %1, ptr noundef nonnull %.298143.i.i) #27 ; 2 uses
  %.not108.i.i = icmp eq ptr %i.abd, null
  br i1 %.not108.i.i, label %._crit_edge146.i.i, label %.lr.ph145.i.i, !llvm.loop !266

._crit_edge146.i.i:                               ; preds = %._crit_edge141.i.i, %bb.fm
  call void @gvrender_end_edges(ptr noundef nonnull %0) #27
  call void @gvrender_begin_nodes(ptr noundef nonnull %0) #27
  %i.abe = call ptr @agfstnode(ptr noundef nonnull %1) #27 ; 2 uses
  %.not109147.i.i = icmp eq ptr %i.abe, null
  br i1 %.not109147.i.i, label %._crit_edge151.i.i, label %.lr.ph150.i.i

.lr.ph150.i.i:                                    ; preds = %._crit_edge146.i.i, %.lr.ph150.i.i
  %.399148.i.i = phi ptr [ %i.abf, %.lr.ph150.i.i ], [ %i.abe, %._crit_edge146.i.i ] ; 2 uses
  call fastcc void @emit_node(ptr noundef nonnull %0, ptr noundef nonnull %.399148.i.i)
  %i.abf = call ptr @agnxtnode(ptr noundef nonnull %1, ptr noundef nonnull %.399148.i.i) #27 ; 2 uses
  %.not109.i.i = icmp eq ptr %i.abf, null
  br i1 %.not109.i.i, label %._crit_edge151.i.i, label %.lr.ph150.i.i, !llvm.loop !267

._crit_edge151.i.i:                               ; preds = %.lr.ph150.i.i, %._crit_edge146.i.i
  call void @gvrender_end_nodes(ptr noundef nonnull %0) #27
  br label %.loopexit.i99.i

bb.fn:                                            ; preds = %bb.fl
  %i.abg = and i32 %i.fu, 8
  %.not102.i.i = icmp eq i32 %i.abg, 0
  br i1 %.not102.i.i, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @gvrender_begin_nodes(ptr noundef nonnull %0) #27
  %i.abh = call ptr @agfstnode(ptr noundef nonnull %1) #27 ; 2 uses
  %.not105152.i.i = icmp eq ptr %i.abh, null
  br i1 %.not105152.i.i, label %._crit_edge156.i.i, label %.lr.ph155.i.i

.lr.ph155.i.i:                                    ; preds = %bb.fo, %write_node_test.exit.i.i
  %.4153.i.i = phi ptr [ %i.abv, %write_node_test.exit.i.i ], [ %i.abh, %bb.fo ] ; 3 uses
  %i.abi = load ptr, ptr %i.bh, align 8, !tbaa !87 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 236
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !171
  %.not9.i.i.i = icmp slt i32 %i.abk, 1
  br i1 %.not9.i.i.i, label %.loopexit124.i.i, label %.lr.ph.i.i100.i

bb.fp:                                            ; preds = %.lr.ph.i.i100.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.abl = load ptr, ptr %i.bh, align 8, !tbaa !87 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 236
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !171
  %i.abo = sext i32 %i.abn to i64
  %.not.not.i.i.i = icmp slt i64 %indvars.iv.i.i.i, %i.abo
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i100.i, label %.loopexit124.i.i, !llvm.loop !268

.lr.ph.i.i100.i:                                  ; preds = %.lr.ph155.i.i, %bb.fp
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.fp ], [ 1, %.lr.ph155.i.i ] ; 3 uses
  %i.abp = phi ptr [ %i.abl, %bb.fp ], [ %i.abi, %.lr.ph155.i.i ]
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 240
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !172
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv.i.i.i
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !173
  %i.abu = call i32 @agcontains(ptr noundef %i.abt, ptr noundef nonnull %.4153.i.i) #27
  %.not8.i.i.i = icmp eq i32 %i.abu, 0
  br i1 %.not8.i.i.i, label %bb.fp, label %write_node_test.exit.i.i

.loopexit124.i.i:                                 ; preds = %bb.fp, %.lr.ph155.i.i
  call fastcc void @emit_node(ptr noundef nonnull %0, ptr noundef nonnull %.4153.i.i)
  br label %write_node_test.exit.i.i

write_node_test.exit.i.i:                         ; preds = %.lr.ph.i.i100.i, %.loopexit124.i.i
  %i.abv = call ptr @agnxtnode(ptr noundef nonnull %1, ptr noundef nonnull %.4153.i.i) #27 ; 2 uses
  %.not105.i.i = icmp eq ptr %i.abv, null
  br i1 %.not105.i.i, label %._crit_edge156.i.i, label %.lr.ph155.i.i, !llvm.loop !269

._crit_edge156.i.i:                               ; preds = %write_node_test.exit.i.i, %bb.fo
  call void @gvrender_end_nodes(ptr noundef nonnull %0) #27
  call void @gvrender_begin_edges(ptr noundef nonnull %0) #27
  %i.abw = call ptr @agfstnode(ptr noundef nonnull %1) #27 ; 2 uses
  %.not106162.i.i = icmp eq ptr %i.abw, null
  br i1 %.not106162.i.i, label %._crit_edge166.i.i, label %.lr.ph165.i.i

.lr.ph165.i.i:                                    ; preds = %._crit_edge156.i.i, %._crit_edge161.i.i
  %.5163.i.i = phi ptr [ %i.acm, %._crit_edge161.i.i ], [ %i.abw, %._crit_edge156.i.i ] ; 2 uses
  %i.abx = call ptr @agfstout(ptr noundef nonnull %1, ptr noundef nonnull %.5163.i.i) #27 ; 2 uses
  %.not107157.i.i = icmp eq ptr %i.abx, null
  br i1 %.not107157.i.i, label %._crit_edge161.i.i, label %.lr.ph160.i.i

.lr.ph160.i.i:                                    ; preds = %.lr.ph165.i.i, %write_edge_test.exit.i.i
  %.2158.i.i = phi ptr [ %i.acl, %write_edge_test.exit.i.i ], [ %i.abx, %.lr.ph165.i.i ] ; 3 uses
  %i.aby = load ptr, ptr %i.bh, align 8, !tbaa !87 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 236
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !171
  %.not9.i114.i.i = icmp slt i32 %i.aca, 1
  br i1 %.not9.i114.i.i, label %.loopexit123.i.i, label %.lr.ph.i115.i.i

bb.fq:                                            ; preds = %.lr.ph.i115.i.i
  %indvars.iv.next.i119.i.i = add nuw nsw i64 %indvars.iv.i116.i.i, 1
  %i.acb = load ptr, ptr %i.bh, align 8, !tbaa !87 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 236
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !171
  %i.ace = sext i32 %i.acd to i64
  %.not.not.i120.i.i = icmp slt i64 %indvars.iv.i116.i.i, %i.ace
  br i1 %.not.not.i120.i.i, label %.lr.ph.i115.i.i, label %.loopexit123.i.i, !llvm.loop !270

.lr.ph.i115.i.i:                                  ; preds = %.lr.ph160.i.i, %bb.fq
  %indvars.iv.i116.i.i = phi i64 [ %indvars.iv.next.i119.i.i, %bb.fq ], [ 1, %.lr.ph160.i.i ] ; 3 uses
  %i.acf = phi ptr [ %i.acb, %bb.fq ], [ %i.aby, %.lr.ph160.i.i ]
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 240
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !172
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %indvars.iv.i116.i.i
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !173
  %i.ack = call i32 @agcontains(ptr noundef %i.acj, ptr noundef nonnull %.2158.i.i) #27
  %.not8.i117.i.i = icmp eq i32 %i.ack, 0
  br i1 %.not8.i117.i.i, label %bb.fq, label %write_edge_test.exit.i.i

.loopexit123.i.i:                                 ; preds = %bb.fq, %.lr.ph160.i.i
  call fastcc void @emit_edge(ptr noundef nonnull %0, ptr noundef %.2158.i.i)
  br label %write_edge_test.exit.i.i

write_edge_test.exit.i.i:                         ; preds = %.lr.ph.i115.i.i, %.loopexit123.i.i
  %i.acl = call ptr @agnxtout(ptr noundef nonnull %1, ptr noundef nonnull %.2158.i.i) #27 ; 2 uses
  %.not107.i.i = icmp eq ptr %i.acl, null
  br i1 %.not107.i.i, label %._crit_edge161.i.i, label %.lr.ph160.i.i, !llvm.loop !271

._crit_edge161.i.i:                               ; preds = %write_edge_test.exit.i.i, %.lr.ph165.i.i
  %i.acm = call ptr @agnxtnode(ptr noundef nonnull %1, ptr noundef nonnull %.5163.i.i) #27 ; 2 uses
  %.not106.i.i = icmp eq ptr %i.acm, null
  br i1 %.not106.i.i, label %._crit_edge166.i.i, label %.lr.ph165.i.i, !llvm.loop !272

._crit_edge166.i.i:                               ; preds = %._crit_edge161.i.i, %._crit_edge156.i.i
  call void @gvrender_end_edges(ptr noundef nonnull %0) #27
  br label %.loopexit.i99.i

bb.fr:                                            ; preds = %bb.fn
  %i.acn = call ptr @agfstnode(ptr noundef nonnull %1) #27 ; 2 uses
  %.not103172.i.i = icmp eq ptr %i.acn, null
  br i1 %.not103172.i.i, label %.loopexit.i99.i, label %.lr.ph175.i.i

.lr.ph175.i.i:                                    ; preds = %bb.fr, %._crit_edge171.i.i
  %.6173.i.i = phi ptr [ %i.acw, %._crit_edge171.i.i ], [ %i.acn, %bb.fr ] ; 3 uses
  call fastcc void @emit_node(ptr noundef nonnull %0, ptr noundef nonnull %.6173.i.i)
  %i.aco = call ptr @agfstout(ptr noundef nonnull %1, ptr noundef nonnull %.6173.i.i) #27 ; 2 uses
  %.not104167.i.i = icmp eq ptr %i.aco, null
  br i1 %.not104167.i.i, label %._crit_edge171.i.i, label %.lr.ph170.i.i

.lr.ph170.i.i:                                    ; preds = %.lr.ph175.i.i, %.lr.ph170.i.i
  %.3168.i.i = phi ptr [ %i.acv, %.lr.ph170.i.i ], [ %i.aco, %.lr.ph175.i.i ] ; 4 uses
  %i.acp = load i32, ptr %.3168.i.i, align 8
  %i.acq = and i32 %i.acp, 3
  %i.acr = icmp eq i32 %i.acq, 2
  %i.acs = select i1 %i.acr, i64 56, i64 -8
  %i.act = getelementptr inbounds i8, ptr %.3168.i.i, i64 %i.acs
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !176
  call fastcc void @emit_node(ptr noundef nonnull %0, ptr noundef %i.acu)
  call fastcc void @emit_edge(ptr noundef nonnull %0, ptr noundef %.3168.i.i)
  %i.acv = call ptr @agnxtout(ptr noundef nonnull %1, ptr noundef nonnull %.3168.i.i) #27 ; 2 uses
  %.not104.i.i = icmp eq ptr %i.acv, null
  br i1 %.not104.i.i, label %._crit_edge171.i.i, label %.lr.ph170.i.i, !llvm.loop !273

._crit_edge171.i.i:                               ; preds = %.lr.ph170.i.i, %.lr.ph175.i.i
  %i.acw = call ptr @agnxtnode(ptr noundef nonnull %1, ptr noundef nonnull %.6173.i.i) #27 ; 2 uses
  %.not103.i.i = icmp eq ptr %i.acw, null
  br i1 %.not103.i.i, label %.loopexit.i99.i, label %.lr.ph175.i.i, !llvm.loop !274

.loopexit.i99.i:                                  ; preds = %._crit_edge171.i.i, %bb.fr, %._crit_edge166.i.i, %._crit_edge151.i.i, %._crit_edge136.i.i
  br i1 %.not82.i67, label %emit_view.exit.i, label %bb.fs

bb.fs:                                            ; preds = %.loopexit.i99.i
  call void @emit_clusters(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.fu)
  br label %emit_view.exit.i

emit_view.exit.i:                                 ; preds = %bb.fs, %.loopexit.i99.i
  call void @gvrender_end_page(ptr noundef nonnull %0) #27
  br i1 %i.jh, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %emit_view.exit.i
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ft, i64 256
  store ptr %.068.i, ptr %i.acx, align 8, !tbaa !52
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %emit_view.exit.i
  %.val88.i = load i8, ptr %.phi.trans.insert183.i, align 1, !tbaa !14
  %i.acy = icmp eq i8 %.val88.i, -1
  br i1 %i.acy, label %bb.fv, label %emit_page.exit

bb.fv:                                            ; preds = %bb.fu
  %.val.i = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val.i) #27
  br label %emit_page.exit

emit_page.exit:                                   ; preds = %bb.fu, %bb.fv
  %i.acz = call ptr @setColorScheme(ptr noundef %i.jj) #27
  call void @free(ptr noundef %i.acz) #27
  call void @free(ptr noundef %i.jj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ada = load i64, ptr %i.ec, align 4           ; 2 uses
  %i.adb = load i64, ptr %i.fc, align 4           ; 2 uses
  %.sroa.2.0.extract.shift.i.i = and i64 %i.adb, -4294967296
  %i.adc = add i64 %i.adb, %i.ada                 ; 3 uses
  %i.add = add i64 %.sroa.2.0.extract.shift.i.i, %i.ada ; 4 uses
  %.sroa.24.0.insert.ext.i.i = and i64 %i.add, -4294967296
  %.sroa.03.0.insert.ext.i.i = and i64 %i.adc, 4294967295
  %.sroa.03.0.insert.insert.i.i = or disjoint i64 %.sroa.24.0.insert.ext.i.i, %.sroa.03.0.insert.ext.i.i
  store i64 %.sroa.03.0.insert.insert.i.i, ptr %i.ec, align 4
  %i.ade = trunc i64 %i.adc to i32                ; 2 uses
  %i.adf = icmp sgt i32 %i.ade, -1
  %i.adg = lshr i64 %i.add, 32
  %i.adh = trunc nuw i64 %i.adg to i32
  br i1 %i.adf, label %bb.fw, label %validpage.exit.thread.i

bb.fw:                                            ; preds = %emit_page.exit
  %i.adi = load i32, ptr %i.ee, align 4, !tbaa !161
  %i.adj = icmp sgt i32 %i.adi, %i.ade
  %i.adk = icmp sgt i64 %i.add, -1
  %or.cond.i = and i1 %i.adk, %i.adj
  br i1 %or.cond.i, label %validpage.exit.i, label %validpage.exit.thread.i

validpage.exit.i:                                 ; preds = %bb.fw
  %i.adl = load i32, ptr %i.eg, align 8, !tbaa !162
  %i.adm = icmp sgt i32 %i.adl, %i.adh
  br i1 %i.adm, label %nextpage.exit, label %validpage.exit.thread.i

validpage.exit.thread.i:                          ; preds = %validpage.exit.i, %bb.fw, %emit_page.exit
  %i.adn = load i32, ptr %i.fe, align 8, !tbaa !299
  %.not.i74 = icmp eq i32 %i.adn, 0
  br i1 %.not.i74, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %validpage.exit.thread.i
  %i.ado = load i32, ptr %i.ed, align 4, !tbaa !177
  store i32 %i.ado, ptr %i.ec, align 4, !tbaa !106
  br label %bb.fz

bb.fy:                                            ; preds = %validpage.exit.thread.i
  %i.adp = load i32, ptr %i.ff, align 8, !tbaa !178
  store i32 %i.adp, ptr %i.ef, align 8, !tbaa !107
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.adq = load i64, ptr %i.ec, align 4           ; 2 uses
  %i.adr = load i64, ptr %i.fd, align 4           ; 2 uses
  %.sroa.2.0.extract.shift.i13.i = and i64 %i.adr, -4294967296
  %i.ads = add i64 %i.adr, %i.adq                 ; 2 uses
  %i.adt = add i64 %.sroa.2.0.extract.shift.i13.i, %i.adq ; 2 uses
  %.sroa.24.0.insert.ext.i14.i = and i64 %i.adt, -4294967296
  %.sroa.03.0.insert.ext.i15.i = and i64 %i.ads, 4294967295
  %.sroa.03.0.insert.insert.i16.i = or disjoint i64 %.sroa.24.0.insert.ext.i14.i, %.sroa.03.0.insert.ext.i15.i
  store i64 %.sroa.03.0.insert.insert.i16.i, ptr %i.ec, align 4
  br label %nextpage.exit

nextpage.exit:                                    ; preds = %validpage.exit.i, %bb.fz
  %.in = phi i64 [ %i.adc, %validpage.exit.i ], [ %i.ads, %bb.fz ]
  %.pre.i.i484.in.in = phi i64 [ %i.add, %validpage.exit.i ], [ %i.adt, %bb.fz ]
  %i.adu = trunc i64 %.in to i32                  ; 2 uses
  %i.adv = icmp sgt i32 %i.adu, -1
  br i1 %i.adv, label %.lr.ph301, label %validpage.exit.thread, !llvm.loop !275

validpage.exit.thread:                            ; preds = %validpage.exit, %.lr.ph301, %nextpage.exit, %bb.ax
  %i.adw = load ptr, ptr %0, align 8, !tbaa !70
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 504
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !159 ; 2 uses
  %.not.i75 = icmp eq ptr %i.ady, null
  %.0.in.i76 = select i1 %.not.i75, ptr %i.di, ptr %i.ady
  %.0.i77 = load i32, ptr %.0.in.i76, align 4, !tbaa !47
  %i.adz = icmp sgt i32 %.0.i77, 1
  br i1 %i.adz, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %validpage.exit.thread
  call void @gvrender_end_layer(ptr noundef nonnull %0) #27
  br label %bb.gb

bb.gb:                                            ; preds = %validpage.exit.thread, %bb.ga
  %.not.i78 = icmp eq ptr %.0122307, null
  br i1 %.not.i78, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aea = getelementptr inbounds nuw i8, ptr %.0122307, i64 4
  %i.aeb = load i32, ptr %.0122307, align 4, !tbaa !47
  br label %nextlayer.exit

bb.gd:                                            ; preds = %bb.gb
  %i.aec = load i32, ptr %i.ag, align 8, !tbaa !103
  %i.aed = add nsw i32 %i.aec, 1
  br label %nextlayer.exit

nextlayer.exit:                                   ; preds = %bb.gc, %bb.gd
  %storemerge = phi i32 [ %i.aeb, %bb.gc ], [ %i.aed, %bb.gd ] ; 2 uses
  %.1 = phi ptr [ %i.aea, %bb.gc ], [ null, %bb.gd ]
  store i32 %storemerge, ptr %i.ag, align 8, !tbaa !103
  %.val = load i32, ptr %i.di, align 4, !tbaa !158
  %.not125 = icmp sgt i32 %storemerge, %.val
  br i1 %.not125, label %._crit_edge309, label %bb.av, !llvm.loop !276

._crit_edge309:                                   ; preds = %nextlayer.exit, %firstlayer.exit
  call void @gvrender_end_graph(ptr noundef nonnull %0) #27
  call void @pop_obj_state(ptr noundef nonnull %0)
  ret void
}

declare ptr @late_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agattr_text(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gvrender_comment(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gvrender_begin_layer(ptr noundef) local_unnamed_addr #2

declare void @gvrender_end_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @emit_once(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !17
  tail call void @flockfile(ptr noundef %i.a) #27
  %i.b = load ptr, ptr @strings, align 8, !tbaa !179 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @Dtoset, align 8, !tbaa !119
  %i.e = tail call ptr @dtopen(ptr noundef nonnull @stringdict, ptr noundef %i.d) #27 ; 2 uses
  store ptr %i.e, ptr @strings, align 8, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143
  %i.h = tail call ptr %i.g(ptr noundef nonnull %i.f, ptr noundef %0, i32 noundef 4) #27
  %.not = icmp eq ptr %i.h, null                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @strings, align 8, !tbaa !179 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.k = tail call noalias ptr @strdup(ptr noundef readonly %0) #27 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %gv_strdup.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #31
  %i.o = add i64 %i.n, 1
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.45, i64 noundef %i.o) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit:                                   ; preds = %bb.d
  %i.q = tail call ptr %i.j(ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, i32 noundef 1) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %gv_strdup.exit
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !17
  tail call void @funlockfile(ptr noundef %i.r) #27
  ret i1 %.not
}

declare ptr @dtopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @emit_once_reset() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !17
  tail call void @flockfile(ptr noundef %i.a) #27
  %i.b = load ptr, ptr @strings, align 8, !tbaa !179 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @dtclose(ptr noundef nonnull %i.b) #27 ; 0 uses
  store ptr null, ptr @strings, align 8, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !17
  tail call void @funlockfile(ptr noundef %i.d) #27
  ret void
}

declare i32 @dtclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @emit_clusters(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [4 x %struct.pointf_s], align 16    ; 15 uses
  %4 = alloca %struct.graphviz_polygon_style_t, align 4 ; 8 uses
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !171
  %.not199 = icmp slt i32 %i.f, 1
  br i1 %.not199, label %._crit_edge203, label %.lr.ph202

.lr.ph202:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.i = and i32 %2, 4
  %.not151 = icmp eq i32 %i.i, 0                  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.s = and i32 %2, 8
  %.not180 = icmp eq i32 %i.s, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph202, %clust_in_layer.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph202 ], [ %indvars.iv.next, %clust_in_layer.exit ] ; 3 uses
  %i.t = phi ptr [ %i.d, %.lr.ph202 ], [ %i.fq, %clust_in_layer.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !172
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !173  ; 27 uses
  %i.y = load i32, ptr %i.g, align 4, !tbaa !158
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %.loopexit192, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = call ptr @agattr_text(ptr noundef %i.x, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef null) #27
  %i.ab = call ptr @late_string(ptr noundef %i.x, ptr noundef %i.aa, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !70
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !103
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !158
  %i.af = call fastcc noundef zeroext i1 @selectedLayer(ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef readonly %i.ab)
  br i1 %i.af, label %.loopexit192, label %bb.d

bb.d:                                             ; preds = %bb.c
  %strcmpload.i = load i8, ptr %i.ab, align 1
  %i.ag = icmp eq i8 %strcmpload.i, 0
  br i1 %i.ag, label %bb.e, label %clust_in_layer.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = call ptr @agfstnode(ptr noundef %i.x) #27 ; 2 uses
  %.not16.not.i = icmp eq ptr %i.ah, null
  br i1 %.not16.not.i, label %clust_in_layer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
end_hunk_1
begin_hunk_2_@emit_edge:bb.a
find_next_distinct.exit.i.i:                      ; preds = %.lr.ph327
  %i.auc = extractelement <2 x double> %i.atu, i64 1 ; 5 uses
  %i.aud = extractelement <2 x double> %i.atu, i64 0 ; 5 uses
  %i.aue = icmp eq i64 %.017.lcssa.i.i.i, -1
  br i1 %i.aue, label %process_corner.exit.i.i, label %bb.lx

bb.lx:                                            ; preds = %find_next_distinct.exit.i.i
  %i.auf = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %.017.lcssa.i.i.i
  %i.aug = load <2 x double>, ptr %i.auf, align 8, !tbaa !110
  %i.auh = fsub <2 x double> %i.atu, %i.aug       ; 4 uses
  %i.aui = shufflevector <2 x double> %i.atx, <2 x double> %i.auh, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.auj = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.aui) ; 2 uses
  %i.auk = fcmp ogt <4 x double> %i.auj, splat (double 1.000000e-01) ; 2 uses
  %i.aul = fcmp olt <4 x double> %i.auj, splat (double 1.000000e-01) ; 2 uses
  %i.aum = shufflevector <4 x i1> %i.auk, <4 x i1> %i.aul, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aun = shufflevector <4 x i1> %i.aul, <4 x i1> %i.auk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.auo = freeze <4 x i1> %i.aum
  %i.aup = bitcast <4 x i1> %i.auo to i4
  %i.auq = icmp eq i4 %i.aup, -1                  ; 2 uses
  %i.aur = bitcast <4 x i1> %i.aun to i4
  %i.aus = icmp eq i4 %i.aur, -1
  %i.aut = select i1 %i.auq, i1 true, i1 %i.aus
  br i1 %i.aut, label %bb.ly, label %process_corner.exit.i.i

bb.ly:                                            ; preds = %bb.lx
  %.val6468.i.i.i = load i64, ptr %i.arr, align 8, !tbaa !109
  %.not69.i.i.i = icmp eq i64 %.val6468.i.i.i, 0
  br i1 %.not69.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i95

bb.lz:                                            ; preds = %.lr.ph.i.i.i95
  %i.auu = add nuw i64 %.06370.i.i.i, 1           ; 2 uses
  %.val64.i.i.i = load i64, ptr %i.arr, align 8, !tbaa !109
  %.not.not.i.i.i = icmp ult i64 %i.auu, %.val64.i.i.i
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i.i95, label %.critedge.i.i.i, !llvm.loop !363

.lr.ph.i.i.i95:                                   ; preds = %bb.ly, %bb.lz
  %.06370.i.i.i = phi i64 [ %i.auu, %bb.lz ], [ 0, %bb.ly ] ; 2 uses
  %i.auv = load ptr, ptr %8, align 8, !tbaa !14
  %i.auw = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.06370.i.i.i) #27
  %i.aux = getelementptr inbounds nuw [72 x i8], ptr %i.auv, i64 %i.auw
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.aux, align 8, !tbaa !200
  %i.auy = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %.sroa.011.0.copyload.i.i.i
  %i.auz = load <2 x double>, ptr %i.auy, align 8, !tbaa !110
  %i.ava = fsub <2 x double> %i.atu, %i.auz       ; 2 uses
  %i.avb = extractelement <2 x double> %i.ava, i64 0
  %i.avc = extractelement <2 x double> %i.ava, i64 1
  %i.avd = call double @hypot(double noundef %i.avb, double noundef %i.avc) #27
  %i.ave = fcmp uge double %i.avd, 1.000000e-02
  br i1 %i.ave, label %bb.lz, label %process_corner.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.lz, %bb.ly
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ars, i8 0, i64 72, i1 false)
  %i.avf = call i64 @gv_list_append_slot_(ptr noundef nonnull %8, i64 noundef 72) #27
  %i.avg = load ptr, ptr %8, align 8, !tbaa !14
  %i.avh = getelementptr inbounds nuw [72 x i8], ptr %i.avg, i64 %i.avf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.avh, ptr noundef nonnull align 8 dereferenceable(72) %i.ars, i64 72, i1 false), !tbaa.struct !396
  %i.avi = load ptr, ptr %8, align 8, !tbaa !14
  %.val.i.i.i97 = load i64, ptr %i.arr, align 8, !tbaa !109
  %i.avj = add i64 %.val.i.i.i97, -1
  %i.avk = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %i.avj) #27
  %i.avl = getelementptr inbounds nuw [72 x i8], ptr %i.avi, i64 %i.avk ; 17 uses
  store i64 %.056.i.i, ptr %i.avl, align 8, !tbaa !203
  %i.avm = extractelement <2 x double> %i.auh, i64 0
  %i.avn = extractelement <2 x double> %i.auh, i64 1
  %i.avo = call double @hypot(double noundef %i.avm, double noundef %i.avn) #27
  %i.avp = call double @hypot(double noundef %i.aty, double noundef %i.atz) #27
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avl, i64 8
  %i.avr = insertelement <2 x double> poison, double %i.avo, i64 0
  %i.avs = shufflevector <2 x double> %i.avr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avt = fdiv <2 x double> %i.auh, %i.avs       ; 3 uses
  %i.avu = fneg <2 x double> %i.avt
  %i.avv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avu, <2 x double> %i.atk, <2 x double> %i.atu)
  store <2 x double> %i.avv, ptr %i.avq, align 8, !tbaa !110
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avl, i64 24
  %i.avx = insertelement <2 x double> poison, double %i.avp, i64 0
  %i.avy = shufflevector <2 x double> %i.avx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avz = fdiv <2 x double> %i.atx, %i.avy       ; 3 uses
  %i.awa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avz, <2 x double> %i.atk, <2 x double> %i.atu)
  store <2 x double> %i.awa, ptr %i.avw, align 8, !tbaa !110
  br i1 %i.auq, label %bb.ma, label %bb.mh

bb.ma:                                            ; preds = %.critedge.i.i.i
  %i.awb = extractelement <2 x double> %i.avt, i64 0 ; 2 uses
  %i.awc = fcmp ogt double %i.awb, 0.000000e+00   ; 2 uses
  %i.awd = extractelement <2 x double> %i.avz, i64 1 ; 2 uses
  %i.awe = fcmp olt double %i.awd, 0.000000e+00   ; 2 uses
  %or.cond3.i.i.i.i = and i1 %i.awc, %i.awe
  br i1 %or.cond3.i.i.i.i, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  %i.awf = fsub <2 x double> %i.atu, %i.atk
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avl, i64 40
  store <2 x double> %i.awf, ptr %i.awg, align 8, !tbaa !110
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avl, i64 56
  store <2 x double> <double 0.000000e+00, double f0x3FF921FB54442D18>, ptr %i.awh, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mc:                                            ; preds = %bb.ma
  %i.awi = fcmp ogt double %i.awd, 0.000000e+00
  %or.cond5.i.i.i.i = and i1 %i.awc, %i.awi
  %i.awj = getelementptr inbounds nuw i8, ptr %i.avl, i64 56 ; 3 uses
  br i1 %or.cond5.i.i.i.i, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.awk = fsub double %i.aud, %.1388.i
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avl, i64 40
  store double %i.awk, ptr %i.awl, align 8, !tbaa !397
  %i.awm = fadd double %.1388.i, %i.auc
  %i.awn = getelementptr inbounds nuw i8, ptr %i.avl, i64 48
  store double %i.awm, ptr %i.awn, align 8, !tbaa !398
  store <2 x double> <double f0xBFF921FB54442D18, double 0.000000e+00>, ptr %i.awj, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.me:                                            ; preds = %bb.mc
  %i.awo = fcmp olt double %i.awb, 0.000000e+00
  %or.cond7.i.i.i.i = and i1 %i.awo, %i.awe
  %i.awp = fadd double %.1388.i, %i.aud
  %i.awq = getelementptr inbounds nuw i8, ptr %i.avl, i64 40
  store double %i.awp, ptr %i.awq, align 8, !tbaa !397
  %i.awr = getelementptr inbounds nuw i8, ptr %i.avl, i64 48 ; 2 uses
  br i1 %or.cond7.i.i.i.i, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.aws = fsub double %i.auc, %.1388.i
  store double %i.aws, ptr %i.awr, align 8, !tbaa !398
  store <2 x double> <double f0x3FF921FB54442D18, double f0x400921FB54442D18>, ptr %i.awj, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mg:                                            ; preds = %bb.me
  %i.awt = fadd double %.1388.i, %i.auc
  store double %i.awt, ptr %i.awr, align 8, !tbaa !398
  store <2 x double> <double f0x400921FB54442D18, double f0x4012D97C7F3321D2>, ptr %i.awj, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mh:                                            ; preds = %.critedge.i.i.i
  %i.awu = extractelement <2 x double> %i.avt, i64 1 ; 2 uses
  %i.awv = fcmp olt double %i.awu, 0.000000e+00   ; 2 uses
  %i.aww = extractelement <2 x double> %i.avz, i64 0 ; 2 uses
  %i.awx = fcmp ogt double %i.aww, 0.000000e+00   ; 2 uses
  %or.cond9.i.i.i.i = and i1 %i.awv, %i.awx
  br i1 %or.cond9.i.i.i.i, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.awy = fadd <2 x double> %i.atk, %i.atu
  %i.awz = getelementptr inbounds nuw i8, ptr %i.avl, i64 40
  store <2 x double> %i.awy, ptr %i.awz, align 8, !tbaa !110
  %i.axa = getelementptr inbounds nuw i8, ptr %i.avl, i64 56
  store <2 x double> <double f0x400921FB54442D18, double f0x4012D97C7F3321D2>, ptr %i.axa, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mj:                                            ; preds = %bb.mh
  %i.axb = fcmp olt double %i.aww, 0.000000e+00
  %or.cond11.i.i.i.i = and i1 %i.awv, %i.axb
  %i.axc = getelementptr inbounds nuw i8, ptr %i.avl, i64 48 ; 3 uses
  br i1 %or.cond11.i.i.i.i, label %bb.mk, label %bb.ml

bb.mk:                                            ; preds = %bb.mj
  %i.axd = fsub double %i.aud, %.1388.i
  %i.axe = getelementptr inbounds nuw i8, ptr %i.avl, i64 40
  store double %i.axd, ptr %i.axe, align 8, !tbaa !397
  %i.axf = fadd double %.1388.i, %i.auc
  store double %i.axf, ptr %i.axc, align 8, !tbaa !398
  %i.axg = getelementptr inbounds nuw i8, ptr %i.avl, i64 56
  store <2 x double> <double f0x4012D97C7F3321D2, double f0x401921FB54442D18>, ptr %i.axg, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.ml:                                            ; preds = %bb.mj
  %i.axh = fcmp ogt double %i.awu, 0.000000e+00
  %or.cond13.i.i.i.i = and i1 %i.axh, %i.awx
  %i.axi = getelementptr inbounds nuw i8, ptr %i.avl, i64 40 ; 2 uses
  %i.axj = fsub double %i.auc, %.1388.i           ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.avl, i64 56 ; 2 uses
  br i1 %or.cond13.i.i.i.i, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.axl = fadd double %.1388.i, %i.aud
  store double %i.axl, ptr %i.axi, align 8, !tbaa !397
  store double %i.axj, ptr %i.axc, align 8, !tbaa !398
  store <2 x double> <double f0x3FF921FB54442D18, double f0x400921FB54442D18>, ptr %i.axk, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mn:                                            ; preds = %bb.ml
  %i.axm = fsub double %i.aud, %.1388.i
  store double %i.axm, ptr %i.axi, align 8, !tbaa !397
  store double %i.axj, ptr %i.axc, align 8, !tbaa !398
  store <2 x double> <double 0.000000e+00, double f0x3FF921FB54442D18>, ptr %i.axk, align 8, !tbaa !110
  br label %process_corner.exit.i.i

process_corner.exit.i.i:                          ; preds = %bb.lw, %.lr.ph.i.i.i95, %find_prev_distinct.exit.i.i, %bb.mn, %bb.mm, %bb.mk, %bb.mi, %bb.mg, %bb.mf, %bb.md, %bb.mb, %bb.lx, %find_next_distinct.exit.i.i
  %i.axn = add nuw i64 %.056.i.i, 1               ; 2 uses
  %exitcond59.not.i.i = icmp eq i64 %i.axn, %i.atg
  br i1 %exitcond59.not.i.i, label %find_ortho_corners.exit.i, label %bb.lu, !llvm.loop !364

find_ortho_corners.exit.i:                        ; preds = %process_corner.exit.i.i, %bb.lt
  %.val477.i = load i64, ptr %i.arr, align 8, !tbaa !109
  %i.axo = icmp eq i64 %.val477.i, 0
  br i1 %i.axo, label %bb.nl, label %bb.mo

bb.mo:                                            ; preds = %find_ortho_corners.exit.i
  call void @gv_list_sort_(ptr noundef nonnull %8, ptr noundef nonnull @compare_corners, i64 noundef 72) #27
  %.sroa.0380.0.copyload = load <2 x double>, ptr %i.ath, align 8
  %.val476581.i = load i64, ptr %i.arr, align 8, !tbaa !109
  %i.axp = add i64 %i.atg, -1                     ; 2 uses
  %i.axq = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %i.axp
  br label %bb.nb

bb.mp:                                            ; preds = %bb.nk
  %.not27.i.i = icmp eq i64 %.val476.i, 0
  br i1 %.not27.i.i, label %draw_ortho_corner_markers.exit.i, label %.lr.ph.i507.i

.lr.ph.i507.i:                                    ; preds = %bb.mp, %bb.na
  %.026.i.i = phi i64 [ %i.ayw, %bb.na ], [ 0, %bb.mp ] ; 2 uses
  %i.axr = load ptr, ptr %8, align 8, !tbaa !14
  %i.axs = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.026.i.i) #27
  %i.axt = getelementptr inbounds nuw [72 x i8], ptr %i.axr, i64 %i.axs ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.axt, i64 40
  %.sroa.3.0.copyload.i.i = load double, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !110
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.axt, i64 48
  %.sroa.4.0.copyload.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i509.i = getelementptr inbounds nuw i8, ptr %i.axt, i64 56
  %.sroa.5.0.copyload.i510.i = load double, ptr %.sroa.5.0..sroa_idx.i509.i, align 8, !tbaa !110
  %.sroa.6.0..sroa_idx.i511.i = getelementptr inbounds nuw i8, ptr %i.axt, i64 64
  %.sroa.6.0.copyload.i512.i = load double, ptr %.sroa.6.0..sroa_idx.i511.i, align 8, !tbaa !110
  %i.axu = call ptr @ellipticWedge(double %.sroa.3.0.copyload.i.i, double %.sroa.4.0.copyload.i.i, double noundef %.1388.i, double noundef %.1388.i, double noundef %.sroa.5.0.copyload.i510.i, double noundef %.sroa.6.0.copyload.i512.i) #27 ; 5 uses
  %.not.i513.i = icmp eq ptr %i.axu, null
  br i1 %.not.i513.i, label %bb.na, label %bb.mq

bb.mq:                                            ; preds = %.lr.ph.i507.i
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  %i.axw = load i64, ptr %i.axv, align 8, !tbaa !113 ; 2 uses
  %i.axx = icmp ugt i64 %i.axw, 4
  br i1 %i.axx, label %bb.mr, label %bb.na

bb.mr:                                            ; preds = %bb.mq
  %i.axy = call i64 @llvm.usub.sat.i64(i64 %i.axw, i64 6) ; 4 uses
  %i.axz = icmp ugt i64 %i.axy, 1
  br i1 %i.axz, label %.lr.ph.i.i516.i, label %bb.mz

.lr.ph.i.i516.i:                                  ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  call void @gv_list_reserve_(ptr noundef nonnull %2, i64 noundef range(i64 -1, -6) %i.axy, i64 noundef 16) #27
  br label %bb.ms

._crit_edge.i.i.i:                                ; preds = %bb.ms
  br i1 %.not.i.i508.i, label %bb.mu, label %bb.mt

bb.ms:                                            ; preds = %bb.ms, %.lr.ph.i.i516.i
  %.01824.i.i.i = phi i64 [ 0, %.lr.ph.i.i516.i ], [ %i.ayg, %bb.ms ] ; 2 uses
  %i.aya = load ptr, ptr %i.axu, align 8, !tbaa !112
  %i.ayb = getelementptr [16 x i8], ptr %i.aya, i64 %.01824.i.i.i
  %i.ayc = getelementptr i8, ptr %i.ayb, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.arw, ptr noundef nonnull align 8 dereferenceable(16) %i.ayc, i64 16, i1 false), !tbaa.struct !120
  %i.ayd = call i64 @gv_list_append_slot_(ptr noundef nonnull %2, i64 noundef 16) #27
  %i.aye = load ptr, ptr %2, align 8, !tbaa !14
  %i.ayf = getelementptr inbounds nuw [16 x i8], ptr %i.aye, i64 %i.ayd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ayf, ptr noundef nonnull align 8 dereferenceable(16) %i.arw, i64 16, i1 false), !tbaa.struct !120
  %i.ayg = add nuw i64 %.01824.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i91 = icmp eq i64 %i.ayg, %i.axy
  br i1 %exitcond.not.i.i.i91, label %._crit_edge.i.i.i, label %bb.ms, !llvm.loop !365

bb.mt:                                            ; preds = %._crit_edge.i.i.i
  %i.ayh = load i8, ptr %.0399524.i, align 1, !tbaa !14
  %.not22.i.i.i = icmp eq i8 %i.ayh, 0
  br i1 %.not22.i.i.i, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt, %._crit_edge.i.i.i
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt
  %.str.27.sink.i.i.i = phi ptr [ @.str.27, %bb.mu ], [ %.0399524.i, %bb.mt ]
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.str.27.sink.i.i.i) #27
  %i.ayi = load ptr, ptr %2, align 8, !tbaa !14
  %i.ayj = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef 0) #27
  %i.ayk = getelementptr inbounds nuw [16 x i8], ptr %i.ayi, i64 %i.ayj
  call void @gvrender_polyline(ptr noundef %0, ptr noundef %i.ayk, i64 noundef range(i64 -1, -6) %i.axy) #27
  %.val25.i.i.i = load i64, ptr %i.arx, align 8, !tbaa !109
  %.not31.i.i.i = icmp eq i64 %.val25.i.i.i, 0
  br i1 %.not31.i.i.i, label %render_corner_arc.exit.i.i, label %.lr.ph28.i.i.i

.lr.ph28.i.i.i:                                   ; preds = %bb.mv, %bb.my
  %.026.i.i.i = phi i64 [ %i.ayt, %bb.my ], [ 0, %bb.mv ] ; 2 uses
  %i.ayl = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.026.i.i.i) #27
  %i.aym = load ptr, ptr %i.ary, align 8, !tbaa !391 ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.aym to i64
  switch i64 %magicptr.i.i.i, label %bb.mx [
    i64 1, label %bb.mw
    i64 0, label %bb.my
  ]

bb.mw:                                            ; preds = %.lr.ph28.i.i.i
  %i.ayn = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite.i.i.i = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.ayn) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.mx:                                            ; preds = %.lr.ph28.i.i.i
  %i.ayo = load ptr, ptr %2, align 8, !tbaa !14
  %i.ayp = getelementptr inbounds nuw [16 x i8], ptr %i.ayo, i64 %i.ayl ; 2 uses
  %i.ayq = load double, ptr %i.ayp, align 8
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayp, i64 8
  %i.ays = load double, ptr %i.ayr, align 8
  call void %i.aym(double %i.ayq, double %i.ays) #27, !inline_history !366
  br label %bb.my

bb.my:                                            ; preds = %bb.mx, %.lr.ph28.i.i.i
  %i.ayt = add nuw i64 %.026.i.i.i, 1             ; 2 uses
  %.val.i.i517.i = load i64, ptr %i.arx, align 8, !tbaa !109
  %i.ayu = icmp ult i64 %i.ayt, %.val.i.i517.i
  br i1 %i.ayu, label %.lr.ph28.i.i.i, label %render_corner_arc.exit.i.i, !llvm.loop !367

render_corner_arc.exit.i.i:                       ; preds = %bb.my, %bb.mv
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 16) #27
  call void @gv_list_free_(ptr noundef nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.mz

bb.mz:                                            ; preds = %render_corner_arc.exit.i.i, %bb.mr
  %i.ayv = load ptr, ptr %i.axu, align 8, !tbaa !112
  call void @free(ptr noundef %i.ayv) #27
  call void @free(ptr noundef %i.axu) #27
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %bb.mq, %.lr.ph.i507.i
  %i.ayw = add nuw i64 %.026.i.i, 1               ; 2 uses
  %.val.i514.i = load i64, ptr %i.arr, align 8, !tbaa !109 ; 2 uses
  %i.ayx = icmp ult i64 %i.ayw, %.val.i514.i
  br i1 %i.ayx, label %.lr.ph.i507.i, label %draw_ortho_corner_markers.exit.i, !llvm.loop !368

bb.nb:                                            ; preds = %bb.nk, %bb.mo
  %.sroa.0380.0 = phi <2 x double> [ %.sroa.0380.0.copyload, %bb.mo ], [ %.sroa.0380.1, %bb.nk ] ; 2 uses
  %.val476584.i = phi i64 [ %.val476581.i, %bb.mo ], [ %.val476.i, %bb.nk ]
  %.0383583.i = phi i64 [ 0, %bb.mo ], [ %i.bbw, %bb.nk ] ; 7 uses
  %.0384582.i = phi i64 [ 0, %bb.mo ], [ %.1385.i, %bb.nk ] ; 2 uses
  %i.ayy = icmp ult i64 %.0383583.i, %.val476584.i
  br i1 %i.ayy, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.ayz = load ptr, ptr %8, align 8, !tbaa !14
  %i.aza = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0383583.i) #27
  %i.azb = getelementptr inbounds nuw [72 x i8], ptr %i.ayz, i64 %i.aza
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !203
  %i.azd = load ptr, ptr %8, align 8, !tbaa !14
  %i.aze = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0383583.i) #27
  %i.azf = getelementptr inbounds nuw [72 x i8], ptr %i.azd, i64 %i.aze
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 8
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb
  %.sink.i88 = phi ptr [ %i.azg, %bb.nc ], [ %i.axq, %bb.nb ]
  %.0382.i = phi i64 [ %i.azc, %bb.nc ], [ %i.axp, %bb.nb ] ; 2 uses
  %.sroa.0.0.copyload = load <2 x double>, ptr %.sink.i88, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 40, i1 false)
  store <2 x double> %.sroa.0380.0, ptr %i.art, align 8
  %i.azh = call i64 @gv_list_append_slot_(ptr noundef nonnull %9, i64 noundef 16) #27
  %i.azi = load ptr, ptr %9, align 8, !tbaa !14
  %i.azj = getelementptr inbounds nuw [16 x i8], ptr %i.azi, i64 %i.azh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azj, ptr noundef nonnull align 8 dereferenceable(16) %i.art, i64 16, i1 false), !tbaa.struct !120
  %.0378569.i = add i64 %.0384582.i, 1            ; 2 uses
  %i.azk = icmp ult i64 %.0378569.i, %.0382.i
  br i1 %i.azk, label %.preheader539.i, label %._crit_edge.i89

.preheader539.i:                                  ; preds = %bb.nd, %.loopexit643.i
  %.0378570.i = phi i64 [ %.0378.i, %.loopexit643.i ], [ %.0378569.i, %bb.nd ] ; 3 uses
  %.val474566.i = load i64, ptr %i.arr, align 8, !tbaa !109
  %.not634.i = icmp eq i64 %.val474566.i, 0
  br i1 %.not634.i, label %.critedge.loopexit.i, label %.lr.ph568.preheader.i

.lr.ph568.preheader.i:                            ; preds = %.preheader539.i
  %i.azl = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %.0378570.i
  br label %.lr.ph568.i

._crit_edge.i89:                                  ; preds = %.loopexit643.i, %bb.nd
  store <2 x double> %.sroa.0.0.copyload, ptr %i.art, align 8
  %i.azm = call i64 @gv_list_append_slot_(ptr noundef nonnull %9, i64 noundef 16) #27
  %i.azn = load ptr, ptr %9, align 8, !tbaa !14
  %i.azo = getelementptr inbounds nuw [16 x i8], ptr %i.azn, i64 %i.azm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azo, ptr noundef nonnull align 8 dereferenceable(16) %i.art, i64 16, i1 false), !tbaa.struct !120
  %i.azp = load ptr, ptr %9, align 8, !tbaa !14
  %i.azq = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %9, i64 noundef 0) #27
  %i.azr = getelementptr inbounds nuw [16 x i8], ptr %i.azp, i64 %i.azq
  %.val473.i = load i64, ptr %i.aru, align 8, !tbaa !109
  call void @gvrender_polyline(ptr noundef %0, ptr noundef %i.azr, i64 noundef %.val473.i) #27
  %.val472571.i = load i64, ptr %i.aru, align 8, !tbaa !109
  %.not635.i = icmp eq i64 %.val472571.i, 0
  br i1 %.not635.i, label %._crit_edge575.i, label %.lr.ph574.i

bb.ne:                                            ; preds = %.lr.ph568.i
  %i.azs = add nuw i64 %.0374567.i, 1             ; 2 uses
  %.val474.i = load i64, ptr %i.arr, align 8, !tbaa !109
  %i.azt = icmp ult i64 %i.azs, %.val474.i
  br i1 %i.azt, label %.lr.ph568.i, label %.critedge.loopexit.i, !llvm.loop !369

.lr.ph568.i:                                      ; preds = %bb.ne, %.lr.ph568.preheader.i
  %.0374567.i = phi i64 [ %i.azs, %bb.ne ], [ 0, %.lr.ph568.preheader.i ] ; 2 uses
  %i.azu = load ptr, ptr %8, align 8, !tbaa !14
  %i.azv = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0374567.i) #27
  %i.azw = getelementptr inbounds nuw [72 x i8], ptr %i.azu, i64 %i.azv
  %i.azx = load i64, ptr %i.azw, align 8, !tbaa !203
  %i.azy = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %i.azx
  %i.azz = load <2 x double>, ptr %i.azy, align 8, !tbaa !110
  %i.baa = load <2 x double>, ptr %i.azl, align 8, !tbaa !110
  %i.bab = fsub <2 x double> %i.baa, %i.azz       ; 2 uses
  %i.bac = extractelement <2 x double> %i.bab, i64 0
  %i.bad = extractelement <2 x double> %i.bab, i64 1
  %i.bae = call double @hypot(double noundef %i.bac, double noundef %i.bad) #27
  %i.baf = fcmp uge double %i.bae, 1.000000e-02
  br i1 %i.baf, label %bb.ne, label %.loopexit643.i

.critedge.loopexit.i:                             ; preds = %bb.ne, %.preheader539.i
  %i.bag = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %.0378570.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.art, ptr noundef nonnull align 8 dereferenceable(16) %i.bag, i64 16, i1 false), !tbaa.struct !120
  %i.bah = call i64 @gv_list_append_slot_(ptr noundef nonnull %9, i64 noundef 16) #27
  %i.bai = load ptr, ptr %9, align 8, !tbaa !14
  %i.baj = getelementptr inbounds nuw [16 x i8], ptr %i.bai, i64 %i.bah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.baj, ptr noundef nonnull align 8 dereferenceable(16) %i.art, i64 16, i1 false), !tbaa.struct !120
  br label %.loopexit643.i

.loopexit643.i:                                   ; preds = %.lr.ph568.i, %.critedge.loopexit.i
  %.0378.i = add nuw i64 %.0378570.i, 1           ; 2 uses
  %exitcond666.not.i = icmp eq i64 %.0378.i, %.0382.i
  br i1 %exitcond666.not.i, label %._crit_edge.i89, label %.preheader539.i, !llvm.loop !370

._crit_edge575.i:                                 ; preds = %bb.nh, %._crit_edge.i89
  call void @gv_list_clear_(ptr noundef nonnull %9, i64 noundef 16) #27
  call void @gv_list_free_(ptr noundef nonnull %9) #27
  %.val471.i = load i64, ptr %i.arr, align 8, !tbaa !109 ; 2 uses
  %i.bak = icmp ult i64 %.0383583.i, %.val471.i
  br i1 %i.bak, label %bb.ni, label %bb.nk

.lr.ph574.i:                                      ; preds = %._crit_edge.i89, %bb.nh
  %.0370572.i = phi i64 [ %i.bat, %bb.nh ], [ 0, %._crit_edge.i89 ] ; 2 uses
  %i.bal = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %9, i64 noundef %.0370572.i) #27
  %i.bam = load ptr, ptr %i.arv, align 8, !tbaa !391 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.bam to i64
  switch i64 %magicptr.i, label %bb.ng [
    i64 1, label %bb.nf
    i64 0, label %bb.nh
  ]

bb.nf:                                            ; preds = %.lr.ph574.i
  %i.ban = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.ban) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.ng:                                            ; preds = %.lr.ph574.i
  %i.bao = load ptr, ptr %9, align 8, !tbaa !14
  %i.bap = getelementptr inbounds nuw [16 x i8], ptr %i.bao, i64 %i.bal ; 2 uses
  %i.baq = load double, ptr %i.bap, align 8
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bap, i64 8
  %i.bas = load double, ptr %i.bar, align 8
  call void %i.bam(double %i.baq, double %i.bas) #27, !inline_history !371
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %.lr.ph574.i
  %i.bat = add nuw i64 %.0370572.i, 1             ; 2 uses
  %.val472.i = load i64, ptr %i.aru, align 8, !tbaa !109
  %i.bau = icmp ult i64 %i.bat, %.val472.i
  br i1 %i.bau, label %.lr.ph574.i, label %._crit_edge575.i, !llvm.loop !372

bb.ni:                                            ; preds = %._crit_edge575.i
  %i.bav = load ptr, ptr %8, align 8, !tbaa !14
  %i.baw = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0383583.i) #27
  %i.bax = getelementptr inbounds nuw [72 x i8], ptr %i.bav, i64 %i.baw
  %i.bay = load i64, ptr %i.bax, align 8, !tbaa !203
  %.0367.i140 = add i64 %i.bay, 1                 ; 3 uses
  %i.baz = icmp ult i64 %.0367.i140, %i.atg
  %.val470576.i141 = load i64, ptr %i.arr, align 8
  %i.bba = icmp ne i64 %.val470576.i141, 0
  %or.cond632.i142 = select i1 %i.baz, i1 %i.bba, i1 false
  br i1 %or.cond632.i142, label %.lr.ph578.preheader.i, label %.critedge538.i

.loopexit642.i.loopexit:                          ; preds = %.lr.ph578.i
  %.0367.i = add nuw i64 %.0367.i143, 1           ; 3 uses
  %i.bbb = icmp ult i64 %.0367.i, %i.atg
  %.val470576.i = load i64, ptr %i.arr, align 8
  %i.bbc = icmp ne i64 %.val470576.i, 0
  %or.cond632.i = select i1 %i.bbb, i1 %i.bbc, i1 false
  br i1 %or.cond632.i, label %.lr.ph578.preheader.i, label %.critedge538.i

.lr.ph578.preheader.i:                            ; preds = %bb.ni, %.loopexit642.i.loopexit
  %.0367.i143 = phi i64 [ %.0367.i, %.loopexit642.i.loopexit ], [ %.0367.i140, %bb.ni ] ; 3 uses
  %i.bbd = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %.0367.i143
  br label %.lr.ph578.i

bb.nj:                                            ; preds = %.lr.ph578.i
  %i.bbe = add nuw i64 %.0365577.i, 1             ; 2 uses
  %.val470.i = load i64, ptr %i.arr, align 8, !tbaa !109
  %i.bbf = icmp ult i64 %i.bbe, %.val470.i
  br i1 %i.bbf, label %.lr.ph578.i, label %.critedge538.i, !llvm.loop !373

.lr.ph578.i:                                      ; preds = %bb.nj, %.lr.ph578.preheader.i
  %.0365577.i = phi i64 [ %i.bbe, %bb.nj ], [ 0, %.lr.ph578.preheader.i ] ; 2 uses
  %i.bbg = load ptr, ptr %8, align 8, !tbaa !14
  %i.bbh = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0365577.i) #27
  %i.bbi = getelementptr inbounds nuw [72 x i8], ptr %i.bbg, i64 %i.bbh
  %i.bbj = load i64, ptr %i.bbi, align 8, !tbaa !203
  %i.bbk = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %i.bbj
  %i.bbl = load <2 x double>, ptr %i.bbk, align 8, !tbaa !110
  %i.bbm = load <2 x double>, ptr %i.bbd, align 8, !tbaa !110
  %i.bbn = fsub <2 x double> %i.bbm, %i.bbl       ; 2 uses
  %i.bbo = extractelement <2 x double> %i.bbn, i64 0
  %i.bbp = extractelement <2 x double> %i.bbn, i64 1
  %i.bbq = call double @hypot(double noundef %i.bbo, double noundef %i.bbp) #27
  %i.bbr = fcmp uge double %i.bbq, 1.000000e-02
  br i1 %i.bbr, label %bb.nj, label %.loopexit642.i.loopexit

.critedge538.i:                                   ; preds = %.loopexit642.i.loopexit, %bb.nj, %bb.ni
  %.0367.i136 = phi i64 [ %.0367.i143, %bb.nj ], [ %.0367.i140, %bb.ni ], [ %.0367.i, %.loopexit642.i.loopexit ]
  %i.bbs = load ptr, ptr %8, align 8, !tbaa !14
  %i.bbt = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0383583.i) #27
  %i.bbu = getelementptr inbounds nuw [72 x i8], ptr %i.bbs, i64 %i.bbt
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 24
  %.sroa.0380.0.copyload382 = load <2 x double>, ptr %i.bbv, align 8
  %.val476.pre.i = load i64, ptr %i.arr, align 8, !tbaa !109
  br label %bb.nk

bb.nk:                                            ; preds = %.critedge538.i, %._crit_edge575.i
  %.sroa.0380.1 = phi <2 x double> [ %.sroa.0380.0.copyload382, %.critedge538.i ], [ %.sroa.0380.0, %._crit_edge575.i ]
  %.val476.i = phi i64 [ %.val476.pre.i, %.critedge538.i ], [ %.val471.i, %._crit_edge575.i ] ; 3 uses
  %.1385.i = phi i64 [ %.0367.i136, %.critedge538.i ], [ %.0384582.i, %._crit_edge575.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bbw = add i64 %.0383583.i, 1                 ; 2 uses
  %.not449.i = icmp ugt i64 %i.bbw, %.val476.i
  br i1 %.not449.i, label %bb.mp, label %bb.nb, !llvm.loop !374

bb.nl:                                            ; preds = %find_ortho_corners.exit.i
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.ath, i64 noundef %i.atg, i32 noundef 0) #27
  %.val585.pre.i = load i64, ptr %i.arr, align 8, !tbaa !109
  br label %draw_ortho_corner_markers.exit.i

draw_ortho_corner_markers.exit.i:                 ; preds = %bb.mp, %bb.na, %bb.nl
  %.val585.i = phi i64 [ %.val585.pre.i, %bb.nl ], [ 0, %bb.mp ], [ %.val.i514.i, %bb.na ]
  %.not636.i = icmp eq i64 %.val585.i, 0
  br i1 %.not636.i, label %._crit_edge589.i, label %.lr.ph588.i

._crit_edge589.i:                                 ; preds = %bb.no, %draw_ortho_corner_markers.exit.i
  call void @gv_list_clear_(ptr noundef nonnull %8, i64 noundef 72) #27
  call void @gv_list_free_(ptr noundef nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.nq

.lr.ph588.i:                                      ; preds = %draw_ortho_corner_markers.exit.i, %bb.no
  %.0586.i = phi i64 [ %i.bcc, %bb.no ], [ 0, %draw_ortho_corner_markers.exit.i ] ; 2 uses
  %i.bbx = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0586.i) #27
  %i.bby = load ptr, ptr %i.arz, align 8, !tbaa !400 ; 2 uses
  %magicptr469.i = ptrtoint ptr %i.bby to i64
  switch i64 %magicptr469.i, label %bb.nn [
    i64 1, label %bb.nm
    i64 0, label %bb.no
  ]

bb.nm:                                            ; preds = %.lr.ph588.i
  %i.bbz = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite454.i = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.bbz) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.nn:                                            ; preds = %.lr.ph588.i
  %i.bca = load ptr, ptr %8, align 8, !tbaa !14
  %i.bcb = getelementptr inbounds nuw [72 x i8], ptr %i.bca, i64 %i.bbx
  call void %i.bby(ptr noundef byval(%struct.corner_info_t) align 8 %i.bcb) #27, !inline_history !371
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %.lr.ph588.i
  %i.bcc = add nuw i64 %.0586.i, 1                ; 2 uses
  %.val.i90 = load i64, ptr %i.arr, align 8, !tbaa !109
  %i.bcd = icmp ult i64 %i.bcc, %.val.i90
  br i1 %i.bcd, label %.lr.ph588.i, label %._crit_edge589.i, !llvm.loop !375

bb.np:                                            ; preds = %bb.ls
  %i.bce = load ptr, ptr %6, align 8, !tbaa !199
  %i.bcf = load i64, ptr %i.arq, align 8, !tbaa !198
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.bce, i64 noundef %i.bcf, i32 noundef 0) #27
  br label %bb.nq

bb.nq:                                            ; preds = %bb.np, %._crit_edge589.i
  %i.bcg = load i32, ptr %i.asa, align 8, !tbaa !394 ; 3 uses
  %.not451.i = icmp eq i32 %i.bcg, 0
  br i1 %.not451.i, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bch = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.bci = load double, ptr %i.asb, align 8
  %i.bcj = load double, ptr %i.asc, align 8
  %i.bck = load double, ptr %i.bch, align 8
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bch, i64 8
  %i.bcm = load double, ptr %i.bcl, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.bci, double %i.bcj, double %i.bck, double %i.bcm, double noundef %i.aac, double noundef %i.zx, i32 noundef %i.bcg) #27
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.nq
  %i.bcn = load i32, ptr %i.asd, align 4, !tbaa !395 ; 3 uses
  %.not452.i = icmp eq i32 %i.bcn, 0
  br i1 %.not452.i, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bco = load ptr, ptr %6, align 8, !tbaa !199
  %i.bcp = load i64, ptr %i.arq, align 8, !tbaa !198
  %i.bcq = getelementptr [16 x i8], ptr %i.bco, i64 %i.bcp ; 2 uses
  %i.bcr = getelementptr i8, ptr %i.bcq, i64 -16
  %i.bcs = load double, ptr %i.ase, align 8
  %i.bct = load double, ptr %i.asf, align 8
  %i.bcu = load double, ptr %i.bcr, align 8
  %i.bcv = getelementptr i8, ptr %i.bcq, i64 -8
  %i.bcw = load double, ptr %i.bcv, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 3, double %i.bcs, double %i.bct, double %i.bcu, double %i.bcw, double noundef %i.aac, double noundef %i.zx, i32 noundef %i.bcn) #27
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %i.bcx = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 16
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !191 ; 3 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 8
  %i.bdb = load i64, ptr %i.bda, align 8, !tbaa !195 ; 3 uses
  %i.bdc = icmp ugt i64 %i.bdb, 1
  br i1 %i.bdc, label %bb.nv, label %bb.nx

bb.nv:                                            ; preds = %bb.nu
  %i.bdd = or i32 %i.bcn, %i.bcg
  %or.cond12.i = icmp ne i32 %i.bdd, 0
  %or.cond14.i = and i1 %.not39, %or.cond12.i
  br i1 %or.cond14.i, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  call void @gvrender_set_style(ptr noundef %0, ptr noundef nonnull %.036) #27
  %.pre.i84 = load ptr, ptr %i.b, align 8, !tbaa !87
  %.phi.trans.insert.i85 = getelementptr inbounds nuw i8, ptr %.pre.i84, i64 16
  %.pre675.i = load ptr, ptr %.phi.trans.insert.i85, align 8, !tbaa !191 ; 2 uses
  %.phi.trans.insert676.i = getelementptr inbounds nuw i8, ptr %.pre675.i, i64 8
  %.pre677.i = load i64, ptr %.phi.trans.insert676.i, align 8, !tbaa !195
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv, %bb.nu
  %i.bde = phi i64 [ %i.bdb, %bb.nv ], [ %.pre677.i, %bb.nw ], [ %i.bdb, %bb.nu ]
  %i.bdf = phi ptr [ %i.bcz, %bb.nv ], [ %.pre675.i, %bb.nw ], [ %i.bcz, %bb.nu ]
  %i.bdg = add nuw i64 %.0392590.i, 1             ; 2 uses
  %i.bdh = icmp ult i64 %i.bdg, %i.bde
  br i1 %i.bdh, label %bb.lm, label %.loopexit543.i, !llvm.loop !376

.loopexit543.i:                                   ; preds = %bb.nx, %bb.ll, %._crit_edge631.i, %bb.jy, %bb.jx, %multicolor.exit.i, %emit_begin_edge.exit
  %i.bdi = getelementptr inbounds nuw i8, ptr %7, i64 31
  %.val479.i = load i8, ptr %i.bdi, align 1, !tbaa !14
  %i.bdj = icmp eq i8 %.val479.i, -1
  br i1 %i.bdj, label %bb.ny, label %emit_edge_graphics.exit

bb.ny:                                            ; preds = %.loopexit543.i
  %.val478.i = load ptr, ptr %7, align 8
  call void @free(ptr noundef %.val478.i) #27
  br label %emit_edge_graphics.exit

emit_edge_graphics.exit:                          ; preds = %.loopexit543.i, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bdk = load ptr, ptr %i.gc, align 8, !tbaa !39 ; 26 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 16
  %i.bdm = load ptr, ptr %i.bdl, align 8, !tbaa !14 ; 3 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdk, i64 248 ; 2 uses
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !53
  %.not.i112 = icmp eq ptr %i.bdo, null
  br i1 %.not.i112, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %emit_edge_graphics.exit
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdk, i64 352
  %i.bdq = load i16, ptr %i.bdp, align 8
  %i.bdr = and i16 %i.bdq, 1
  %.not103.i = icmp eq i16 %i.bdr, 0
  br i1 %.not103.i, label %.loopexit.i114, label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %emit_edge_graphics.exit
  call void @gvrender_end_anchor(ptr noundef nonnull %0) #27
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdk, i64 376 ; 2 uses
  %i.bdt = load i64, ptr %i.bds, align 8, !tbaa !401 ; 2 uses
  %.not104.i = icmp eq i64 %i.bdt, 0
  br i1 %.not104.i, label %.loopexit.i114, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdk, i64 384 ; 2 uses
  %.not115.i = icmp eq i64 %i.bdt, 1
  br i1 %.not115.i, label %.loopexit.i114, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ob
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !67 ; 2 uses
  %i.bdw = load i64, ptr %i.bdv, align 8, !tbaa !200
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdk, i64 360
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdk, i64 392
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdk, i64 368
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdk, i64 288
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdk, i64 320
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdk, i64 256
  br label %bb.oc

bb.oc:                                            ; preds = %bb.oc, %.lr.ph.i113
  %i.bed = phi ptr [ %i.bdv, %.lr.ph.i113 ], [ %i.bem, %bb.oc ]
  %.0113.i = phi i64 [ 1, %.lr.ph.i113 ], [ %i.beq, %bb.oc ] ; 3 uses
  %.099112.i = phi i64 [ %i.bdw, %.lr.ph.i113 ], [ %i.bep, %bb.oc ] ; 2 uses
  %i.bee = getelementptr inbounds nuw [8 x i8], ptr %i.bed, i64 %.0113.i
  %i.bef = load i64, ptr %i.bee, align 8, !tbaa !200
  store i64 %i.bef, ptr %i.bdx, align 8, !tbaa !123
  %i.beg = load ptr, ptr %i.bdy, align 8, !tbaa !66
  %i.beh = getelementptr inbounds nuw [16 x i8], ptr %i.beg, i64 %.099112.i
  store ptr %i.beh, ptr %i.bdz, align 8, !tbaa !65
  %i.bei = load ptr, ptr %i.bdn, align 8, !tbaa !53
  %i.bej = load ptr, ptr %i.bea, align 8, !tbaa !57
  %i.bek = load ptr, ptr %i.beb, align 8, !tbaa !61
  %i.bel = load ptr, ptr %i.bec, align 8, !tbaa !52
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.bei, ptr noundef %i.bej, ptr noundef %i.bek, ptr noundef %i.bel) #27
  call void @gvrender_end_anchor(ptr noundef nonnull %0) #27
  %i.bem = load ptr, ptr %i.bdu, align 8, !tbaa !67 ; 2 uses
  %i.ben = getelementptr inbounds nuw [8 x i8], ptr %i.bem, i64 %.0113.i
  %i.beo = load i64, ptr %i.ben, align 8, !tbaa !200
  %i.bep = add i64 %i.beo, %.099112.i
  %i.beq = add nuw i64 %.0113.i, 1                ; 2 uses
  %i.ber = load i64, ptr %i.bds, align 8, !tbaa !401
end_hunk_2
begin_hunk_3_@gvRenderJobs:bb.a
  call fastcc void @graphviz_exit() #30
  unreachable

gv_alloc.exit.i:                                  ; preds = %bb.cs
  %i.sk = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.sb, ptr noundef nonnull @.str.129, ptr noundef nonnull %3, ptr noundef nonnull %i.ko, ptr noundef nonnull %i.a, ptr noundef %i.se) #27
  %i.sl = icmp eq i32 %i.sk, 4
  br i1 %i.sl, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %gv_alloc.exit.i
  %i.sm = load ptr, ptr %i.kp, align 8, !tbaa !483
  %i.sn = call ptr @agnode(ptr noundef %i.sm, ptr noundef %i.se, i32 noundef 0) #27 ; 2 uses
  %.not70.i = icmp eq ptr %i.sn, null
  br i1 %.not70.i, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !87
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.sq, i64 16, i1 false), !tbaa.struct !120
  br label %bb.da

bb.cw:                                            ; preds = %gv_alloc.exit.i
  store i8 0, ptr %i.b, align 1, !tbaa !14
  %i.sr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.sb, ptr noundef nonnull @.str.130, ptr noundef nonnull %3, ptr noundef nonnull %i.ko, ptr noundef nonnull %i.a, ptr noundef %i.se, ptr noundef nonnull %i.b) #27
  %i.ss = icmp eq i32 %i.sr, 4
  br i1 %i.ss, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.st = load ptr, ptr %i.kp, align 8, !tbaa !483
  %i.su = call ptr @agnode(ptr noundef %i.st, ptr noundef %i.se, i32 noundef 0) #27 ; 2 uses
  %.not69.i = icmp eq ptr %i.su, null
  br i1 %.not69.i, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !87
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.sx, i64 16, i1 false), !tbaa.struct !120
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw
  %i.sy = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.sb, ptr noundef nonnull @.str.131, ptr noundef nonnull %3, ptr noundef nonnull %i.ko, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %i.kn) #27 ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv, %bb.cu
  call void @free(ptr noundef %i.se) #27
  %.pre.i = load double, ptr %i.a, align 8, !tbaa !110
  br label %init_job_viewport.exit

init_job_viewport.exit:                           ; preds = %bb.cr, %bb.da
  %i.sz = phi double [ %.pre.i, %bb.da ], [ %i.ru, %bb.cr ]
  %i.ta = getelementptr inbounds nuw i8, ptr %.092145, i64 496 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ta, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !120
  %i.tb = getelementptr inbounds nuw i8, ptr %.092145, i64 480 ; 2 uses
  store double %i.sz, ptr %i.tb, align 8, !tbaa !144
  %i.tc = getelementptr inbounds nuw i8, ptr %.092145, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tc, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.td = load ptr, ptr %.092145, align 8, !tbaa !70 ; 3 uses
  %i.te = load i32, ptr %i.sa, align 8, !tbaa !146
  %.not.i130 = icmp eq i32 %i.te, 0
  %i.tf = getelementptr inbounds nuw i8, ptr %.092145, i64 544
  %i.tg = load <2 x double>, ptr %i.ta, align 8, !tbaa !110 ; 2 uses
  %i.th = insertelement <2 x i1> poison, i1 %.not.i130, i64 0
  %i.ti = shufflevector <2 x i1> %i.th, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.tj = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.tk = select <2 x i1> %i.ti, <2 x double> %i.tg, <2 x double> %i.tj ; 5 uses
  %i.tl = load <2 x double>, ptr %i.tf, align 8, !tbaa !110 ; 5 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 462
  %i.tn = load i8, ptr %i.tm, align 2, !tbaa !437, !range !145, !noundef !181
  %i.to = trunc nuw i8 %i.tn to i1
  br i1 %i.to, label %bb.db, label %bb.dl

bb.db:                                            ; preds = %init_job_viewport.exit
  %i.tp = getelementptr inbounds nuw i8, ptr %.092145, i64 280
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !68
  %i.tr = and i32 %i.tq, 32
  %.not204.i = icmp eq i32 %i.tr, 0
  br i1 %.not204.i, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ts = getelementptr inbounds nuw i8, ptr %i.td, i64 400
  %i.tt = fmul <2 x double> %i.tl, splat (double 2.000000e+00)
  %i.tu = load <2 x double>, ptr %i.ts, align 8
  %i.tv = fsub <2 x double> %i.tu, %i.tt          ; 4 uses
  %i.tw = extractelement <2 x double> %i.tv, i64 0 ; 3 uses
  %i.tx = fcmp olt double %i.tw, 1.000000e-04
  br i1 %i.tx, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ty = getelementptr inbounds nuw i8, ptr %.092145, i64 292
  store i32 1, ptr %i.ty, align 4, !tbaa !161
  br label %bb.dg

bb.de:                                            ; preds = %bb.dc
  %i.tz = extractelement <2 x double> %i.tk, i64 0 ; 2 uses
  %i.ua = fdiv double %i.tz, %i.tw
  %i.ub = fptosi double %i.ua to i32              ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.092145, i64 292 ; 2 uses
  store i32 %i.ub, ptr %i.uc, align 4, !tbaa !161
  %i.ud = sitofp i32 %i.ub to double
  %i.ue = fneg double %i.ud
  %i.uf = call double @llvm.fmuladd.f64(double %i.ue, double %i.tw, double %i.tz)
  %i.ug = fcmp ogt double %i.uf, 1.000000e-04
  br i1 %i.ug, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.uh = add nsw i32 %i.ub, 1                    ; 2 uses
  store i32 %i.uh, ptr %i.uc, align 4, !tbaa !161
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %i.ui = phi i32 [ %i.ub, %bb.de ], [ %i.uh, %bb.df ], [ 1, %bb.dd ] ; 2 uses
  %i.uj = extractelement <2 x double> %i.tv, i64 1 ; 3 uses
  %i.uk = fcmp olt double %i.uj, 1.000000e-04
  br i1 %i.uk, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ul = getelementptr inbounds nuw i8, ptr %.092145, i64 296
  store i32 1, ptr %i.ul, align 8, !tbaa !162
  br label %bb.dk

bb.di:                                            ; preds = %bb.dg
  %i.um = extractelement <2 x double> %i.tk, i64 1 ; 2 uses
  %i.un = fdiv double %i.um, %i.uj
  %i.uo = fptosi double %i.un to i32              ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.092145, i64 296 ; 2 uses
  store i32 %i.uo, ptr %i.up, align 8, !tbaa !162
  %i.uq = sitofp i32 %i.uo to double
  %i.ur = fneg double %i.uq
  %i.us = call double @llvm.fmuladd.f64(double %i.ur, double %i.uj, double %i.um)
  %i.ut = fcmp ogt double %i.us, 1.000000e-04
  br i1 %i.ut, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.uu = add nsw i32 %i.uo, 1                    ; 2 uses
  store i32 %i.uu, ptr %i.up, align 8, !tbaa !162
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %i.uv = phi i32 [ %i.uo, %bb.di ], [ %i.uu, %bb.dj ], [ 1, %bb.dh ] ; 2 uses
  %i.uw = mul nsw i32 %i.uv, %i.ui
  %i.ux = getelementptr inbounds nuw i8, ptr %.092145, i64 332
  store i32 %i.uw, ptr %i.ux, align 4, !tbaa !484
  %i.uy = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.tk, <2 x double> %i.tv)
  %i.uz = add nsw i32 %i.ui, -1
  %i.va = add nsw i32 %i.uv, -1
  br label %bb.do

bb.dl:                                            ; preds = %bb.db, %init_job_viewport.exit
  %i.vb = getelementptr inbounds nuw i8, ptr %.092145, i64 136
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !466
  %.not205.i = icmp eq ptr %i.vc, null
  br i1 %.not205.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.vd = getelementptr inbounds nuw i8, ptr %.092145, i64 168
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !471
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vg = fmul <2 x double> %i.tl, splat (double 2.000000e+00)
  %i.vh = load <2 x double>, ptr %i.vf, align 8
  %i.vi = fsub <2 x double> %i.vh, %i.vg
  %i.vj = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.vi, <2 x double> zeroinitializer)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.vk = phi <2 x double> [ %i.vj, %bb.dm ], [ zeroinitializer, %bb.dl ]
  %i.vl = getelementptr inbounds nuw i8, ptr %.092145, i64 332
  store i32 1, ptr %i.vl, align 4, !tbaa !484
  %i.vm = getelementptr inbounds nuw i8, ptr %.092145, i64 292
  %i.vn = getelementptr inbounds nuw i8, ptr %.092145, i64 296
  store i32 1, ptr %i.vn, align 8, !tbaa !162
  store i32 1, ptr %i.vm, align 4, !tbaa !161
  %i.vo = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.vk, <2 x double> %i.tk)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dk
  %i.vp = phi i32 [ %i.va, %bb.dk ], [ 0, %bb.dn ] ; 2 uses
  %i.vq = phi i32 [ %i.uz, %bb.dk ], [ 0, %bb.dn ] ; 2 uses
  %i.vr = phi <2 x double> [ %i.uy, %bb.dk ], [ %i.tk, %bb.dn ] ; 7 uses
  %i.vs = phi <2 x double> [ %i.tv, %bb.dk ], [ %i.vo, %bb.dn ] ; 4 uses
  %i.vt = shufflevector <2 x double> %i.vr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.vu = getelementptr inbounds nuw i8, ptr %.092145, i64 560 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.092145, i64 576
  %i.vw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> splat (double 2.000000e+00), <2 x double> %i.vs)
  %i.vx = load <2 x double>, ptr %i.vu, align 8, !tbaa !110
  %i.vy = fmul <2 x double> %i.vw, %i.vx
  %i.vz = fdiv <2 x double> %i.vy, splat (double 7.200000e+01) ; 2 uses
  %i.wa = fcmp ult <2 x double> %i.vz, zeroinitializer
  %i.wb = select <2 x i1> %i.wa, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.wc = fadd <2 x double> %i.vz, %i.wb
  %i.wd = fptosi <2 x double> %i.wc to <2 x i32>
  store <2 x i32> %i.wd, ptr %i.vv, align 8, !tbaa !47
  %i.we = getelementptr inbounds nuw i8, ptr %.092145, i64 308 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.092145, i64 316 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.092145, i64 300 ; 3 uses
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.092145, i64 304 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.td, i64 360 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.wg, i8 0, i64 24, i1 false)
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !442
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !14
  switch i8 %i.wj, label %pagecode.exit.i [
    i8 84, label %bb.dp
    i8 66, label %bb.dq
    i8 76, label %bb.dr
    i8 82, label %bb.ds
  ]

bb.dp:                                            ; preds = %bb.do
  store i32 %i.vp, ptr %.sroa.223.0..sroa_idx.i, align 8, !tbaa !178
  br label %pagecode.exit.i

bb.dq:                                            ; preds = %bb.do
  br label %pagecode.exit.i

bb.dr:                                            ; preds = %bb.do
  br label %pagecode.exit.i

bb.ds:                                            ; preds = %bb.do
  store i32 %i.vq, ptr %i.wg, align 4, !tbaa !177
  br label %pagecode.exit.i

pagecode.exit.i:                                  ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do
  %.sroa.0.0.insert.insert.i.i = phi i64 [ 0, %bb.do ], [ -4294967296, %bb.dp ], [ 4294967296, %bb.dq ], [ 1, %bb.dr ], [ 4294967295, %bb.ds ] ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.we, align 4
  %7 = load ptr, ptr %i.wh, align 8, !tbaa !442
  %i.wk = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !14
  %i.wm = trunc i64 %.sroa.0.0.insert.insert.i.i to i32
  %i.wn = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %i.wo = trunc nuw i64 %i.wn to i32
  switch i8 %i.wl, label %pagecode.exit224.i [
    i8 84, label %bb.dt
    i8 66, label %bb.du
    i8 76, label %bb.dv
    i8 82, label %bb.dw
  ]

bb.dt:                                            ; preds = %pagecode.exit.i
  store i32 %i.vp, ptr %.sroa.223.0..sroa_idx.i, align 8, !tbaa !178
  br label %pagecode.exit224.i

bb.du:                                            ; preds = %pagecode.exit.i
  br label %pagecode.exit224.i

bb.dv:                                            ; preds = %pagecode.exit.i
  br label %pagecode.exit224.i

bb.dw:                                            ; preds = %pagecode.exit.i
  store i32 %i.vq, ptr %i.wg, align 4, !tbaa !177
  br label %pagecode.exit224.i

pagecode.exit224.i:                               ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt, %pagecode.exit.i
  %.sroa.0.0.insert.insert.i223.i = phi i64 [ 0, %pagecode.exit.i ], [ -4294967296, %bb.dt ], [ 4294967296, %bb.du ], [ 1, %bb.dv ], [ 4294967295, %bb.dw ] ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i223.i, ptr %i.wf, align 4
  %i.wp = getelementptr inbounds nuw i8, ptr %.092145, i64 324
  store i32 0, ptr %i.wp, align 4, !tbaa !47
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.092145, i64 328
  store i32 0, ptr %.sroa.219.0..sroa_idx.i, align 8, !tbaa !47
  %i.wq = trunc i64 %.sroa.0.0.insert.insert.i223.i to i32
  %i.wr = add nsw i32 %i.wq, %i.wm
  %i.ws = call i32 @llvm.abs.i32(i32 %i.wr, i1 true)
  %.not207.i = icmp eq i32 %i.ws, 1
  br i1 %.not207.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %pagecode.exit224.i
  %i.wt = lshr i64 %.sroa.0.0.insert.insert.i223.i, 32
  %i.wu = trunc nuw i64 %i.wt to i32
  %i.wv = add nsw i32 %i.wu, %i.wo
  %i.ww = call i32 @llvm.abs.i32(i32 %i.wv, i1 true)
  %.not208.i = icmp eq i32 %i.ww, 1
  br i1 %.not208.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %pagecode.exit224.i
  store i64 4294967296, ptr %i.we, align 4
  store i64 1, ptr %i.wf, align 4
  %8 = load ptr, ptr %i.wh, align 8, !tbaa !442
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.132, ptr noundef %8) #27
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.wx = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !101
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 82
  %i.xb = load i8, ptr %i.xa, align 2, !tbaa !485, !range !145, !noundef !181
  %i.xc = trunc nuw i8 %i.xb to i1
  br i1 %i.xc, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %foldExtExtBinop = fsub <2 x double> %i.vs, %i.vr
  %i.xd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.xe = fmul double %i.xd, 5.000000e-01
  %i.xf = fcmp ogt <2 x double> %i.vs, %i.vr      ; 2 uses
  %i.xg = extractelement <2 x i1> %i.xf, i64 0
  %.sroa.072.0.i = select i1 %i.xg, double %i.xe, double 0.000000e+00 ; 2 uses
  %i.xh = extractelement <2 x i1> %i.xf, i64 1
  br i1 %i.xh, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %foldExtExtBinop226 = fsub <2 x double> %i.vs, %i.vr
  %i.xi = extractelement <2 x double> %foldExtExtBinop226, i64 1
  %i.xj = fmul double %i.xi, 5.000000e-01
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz
  %.sroa.8.0.i = phi double [ %i.xj, %bb.eb ], [ 0.000000e+00, %bb.ea ], [ 0.000000e+00, %bb.dz ] ; 2 uses
  %.sroa.072.1.i = phi double [ %.sroa.072.0.i, %bb.eb ], [ %.sroa.072.0.i, %bb.ea ], [ 0.000000e+00, %bb.dz ] ; 2 uses
  %i.xk = load i32, ptr %i.sa, align 8, !tbaa !146
  %.not209.i = icmp eq i32 %i.xk, 0               ; 2 uses
  br i1 %.not209.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.xl = shufflevector <2 x double> %i.tl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.xm = shufflevector <2 x double> %i.vr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.8.1.i = phi double [ %.sroa.072.1.i, %bb.ed ], [ %.sroa.8.0.i, %bb.ec ]
  %.sroa.072.2.i = phi double [ %.sroa.8.0.i, %bb.ed ], [ %.sroa.072.1.i, %bb.ec ]
  %i.xn = phi <2 x double> [ %i.xm, %bb.ed ], [ %i.vr, %bb.ec ]
  %i.xo = phi <2 x double> [ %i.xl, %bb.ed ], [ %i.tl, %bb.ec ]
  %i.xp = phi <2 x double> [ %i.vt, %bb.ed ], [ %i.vr, %bb.ec ]
  %i.xq = getelementptr inbounds nuw i8, ptr %.092145, i64 512 ; 2 uses
  %i.xr = insertelement <2 x double> poison, double %.sroa.072.2.i, i64 0
  %i.xs = insertelement <2 x double> %i.xr, double %.sroa.8.1.i, i64 1
  %i.xt = fadd <2 x double> %i.xo, %i.xs          ; 4 uses
  %i.xu = extractelement <2 x double> %i.xt, i64 0 ; 2 uses
  store double %i.xu, ptr %i.xq, align 8, !tbaa !110
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.092145, i64 520 ; 2 uses
  %i.xv = extractelement <2 x double> %i.xt, i64 1 ; 2 uses
  store double %i.xv, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !110
  %i.xw = getelementptr inbounds nuw i8, ptr %.092145, i64 528 ; 2 uses
  %i.xx = fadd <2 x double> %i.xp, %i.xt          ; 3 uses
  %i.xy = extractelement <2 x double> %i.xx, i64 0 ; 2 uses
  store double %i.xy, ptr %i.xw, align 8, !tbaa !110
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.092145, i64 536 ; 2 uses
  %i.xz = extractelement <2 x double> %i.xx, i64 1 ; 2 uses
  store double %i.xz, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !110
  %i.ya = load double, ptr %i.tb, align 8, !tbaa !144
  %i.yb = getelementptr inbounds nuw i8, ptr %.092145, i64 448
  %i.yc = insertelement <2 x double> poison, double %i.ya, i64 0
  %i.yd = shufflevector <2 x double> %i.yc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ye = fdiv <2 x double> %i.xn, %i.yd
  store <2 x double> %i.ye, ptr %i.yb, align 8, !tbaa !110
  %i.yf = getelementptr inbounds nuw i8, ptr %.092145, i64 584 ; 3 uses
  %i.yg = load <2 x double>, ptr %i.vu, align 8, !tbaa !110
  %i.yh = shufflevector <2 x double> %i.yg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.yi = shufflevector <2 x double> %i.xt, <2 x double> %i.xx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yj = fmul <4 x double> %i.yi, %i.yh
  %i.yk = fdiv <4 x double> %i.yj, splat (double 7.200000e+01) ; 2 uses
  %i.yl = fcmp ult <4 x double> %i.yk, zeroinitializer
  %i.ym = select <4 x i1> %i.yl, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.yn = fadd <4 x double> %i.yk, %i.ym
  %i.yo = fptosi <4 x double> %i.yn to <4 x i32>
  store <4 x i32> %i.yo, ptr %i.yf, align 8, !tbaa !47
  br i1 %.not209.i, label %init_job_pagination.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.yp = getelementptr inbounds nuw i8, ptr %.092145, i64 592 ; 2 uses
  %i.yq = load i64, ptr %i.yf, align 8            ; 2 uses
  %.sroa.01.0.insert.insert.i.i = call i64 @llvm.fshl.i64(i64 %i.yq, i64 %i.yq, i64 32)
  store i64 %.sroa.01.0.insert.insert.i.i, ptr %i.yf, align 8
  %i.yr = load i64, ptr %i.yp, align 8            ; 2 uses
  %.sroa.01.0.insert.insert.i239.i = call i64 @llvm.fshl.i64(i64 %i.yr, i64 %i.yr, i64 32)
  store i64 %.sroa.01.0.insert.insert.i239.i, ptr %i.yp, align 8
  store double %i.xv, ptr %i.xq, align 8, !tbaa !110
  store double %i.xu, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !110
  store double %i.xz, ptr %i.xw, align 8, !tbaa !110
  store double %i.xy, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !110
  br label %init_job_pagination.exit

init_job_pagination.exit:                         ; preds = %bb.ee, %bb.ef
  %i.ys = getelementptr inbounds nuw i8, ptr %.092145, i64 280
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !68
  %i.yu = and i32 %i.yt, 128
  %.not116 = icmp eq i32 %i.yu, 0
  br i1 %.not116, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %init_job_pagination.exit
  call void @emit_graph(ptr noundef nonnull %.092145, ptr noundef nonnull %1)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %init_job_pagination.exit
  store ptr %.092145, ptr @gvRenderJobs.prevjob, align 8, !tbaa !462
  br label %bb.ei

bb.ei:                                            ; preds = %.thread, %bb.eh
  %i.yv = call ptr @gvjobs_next(ptr noundef nonnull %0) #27 ; 2 uses
  %.not104 = icmp eq ptr %i.yv, null
  br i1 %.not104, label %._crit_edge, label %bb.ba, !llvm.loop !421

._crit_edge:                                      ; preds = %bb.ei, %gv_fixLocale.exit
  %i.yw = load i32, ptr @gv_fixLocale.cnt, align 4, !tbaa !47 ; 2 uses
  %i.yx = icmp sgt i32 %i.yw, 0
  br i1 %i.yx, label %bb.ej, label %gv_fixLocale.exit131

bb.ej:                                            ; preds = %._crit_edge
  %i.yy = add nsw i32 %i.yw, -1                   ; 2 uses
  store i32 %i.yy, ptr @gv_fixLocale.cnt, align 4, !tbaa !47
  %i.yz = icmp eq i32 %i.yy, 0
  br i1 %i.yz, label %bb.ek, label %gv_fixLocale.exit131

bb.ek:                                            ; preds = %bb.ej
  %i.za = load ptr, ptr @gv_fixLocale.save_locale, align 8, !tbaa !105
  %i.zb = call ptr @setlocale(i32 noundef 1, ptr noundef %i.za) #27 ; 0 uses
  %i.zc = load ptr, ptr @gv_fixLocale.save_locale, align 8, !tbaa !105
  call void @free(ptr noundef %i.zc) #27
  br label %gv_fixLocale.exit131

gv_fixLocale.exit131:                             ; preds = %._crit_edge, %bb.ej, %bb.ek
  %i.zd = load i8, ptr @Verbose, align 1, !tbaa !14
  %.not105 = icmp eq i8 %i.zd, 0
  br i1 %.not105, label %bb.em, label %bb.el

bb.el:                                            ; preds = %gv_fixLocale.exit131
  %i.ze = load ptr, ptr @stderr, align 8, !tbaa !17
  call void @flockfile(ptr noundef %i.ze) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.zf = call i64 @time(ptr noundef null) #27
  store i64 %i.zf, ptr %i.h, align 8, !tbaa !200
  %i.zg = call ptr @localtime(ptr noundef nonnull %i.h) #27 ; 6 uses
  %i.zh = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 20
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !423
  %i.zk = add nsw i32 %i.zj, 1900
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !424
  %i.zn = add nsw i32 %i.zm, 1
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zg, i64 12
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !425
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !426
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !427
  %i.zu = load i32, ptr %i.zg, align 8, !tbaa !428
  %i.zv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zh, ptr noundef nonnull @.str.39, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 45), i32 noundef 4321, i32 noundef %i.zk, i32 noundef %i.zn, i32 noundef %i.zp, i32 noundef %i.zr, i32 noundef %i.zt, i32 noundef %i.zu) #29 ; 0 uses
  %i.zw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.zx = call ptr @agnameof(ptr noundef nonnull %1) #27
  %i.zy = call double @elapsed_sec() #27
  %i.zz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zw, ptr noundef nonnull @.str.40, ptr noundef %i.zx, double noundef %i.zy) #29 ; 0 uses
  %i.aaa = load ptr, ptr @stderr, align 8, !tbaa !17
  %fputc106 = call i32 @fputc(i32 10, ptr %i.aaa) ; 0 uses
  %i.aab = load ptr, ptr @stderr, align 8, !tbaa !17
  call void @funlockfile(ptr noundef %i.aab) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.em

bb.em:                                            ; preds = %gv_fixLocale.exit131, %bb.el, %gv_fixLocale.exit125, %bb.bl, %gv_fixLocale.exit124, %bb.bg, %bb.e, %bb.f
  %.0 = phi i32 [ -1, %gv_fixLocale.exit124 ], [ -1, %bb.e ], [ -1, %gv_fixLocale.exit125 ], [ -1, %bb.f ], [ -1, %bb.bg ], [ -1, %bb.bl ], [ 0, %bb.el ], [ 0, %gv_fixLocale.exit131 ]
  ret i32 %.0
}

declare void @start_timer() local_unnamed_addr #2

declare ptr @agbindrec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #12

declare double @elapsed_sec() local_unnamed_addr #2

declare ptr @gvjobs_first(ptr noundef) local_unnamed_addr #2

declare i32 @gvrender_select(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

declare void @gvrender_end_job(ptr noundef) local_unnamed_addr #2

declare i32 @gvrender_begin_job(ptr noundef) local_unnamed_addr #2

declare ptr @gvjobs_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @freeSeg(ptr nofree noundef readonly byval(%struct.colorseg_t) align 8 captures(none) %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !180
  tail call void @free(ptr noundef %i.a) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #15 {
bb.a:
  tail call void @exit(i32 noundef 1) #35
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #17

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @agxbmore(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 31         ; 2 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !14 ; 2 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %agxbsizeof.exit, label %bb.g

agxbsizeof.exit:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %.fr = freeze i64 %i.c                          ; 6 uses
  %i.d = icmp eq i64 %.fr, 0
  %i.e = shl i64 %.fr, 1
  %spec.select44 = select i1 %i.d, i64 8192, i64 %i.e
  %i.f = add i64 %.fr, %1
  %spec.select33 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %spec.select44) ; 7 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.h = icmp eq i64 %spec.select33, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %agxbsizeof.exit
  tail call void @free(ptr noundef %i.g) #27
  br label %gv_recalloc.exit

bb.c:                                             ; preds = %agxbsizeof.exit
  %i.i = tail call ptr @realloc(ptr noundef %i.g, i64 noundef %spec.select33) #34 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.45, i64 noundef %spec.select33) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %spec.select33, %.fr
  br i1 %i.m, label %bb.f, label %gv_recalloc.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.fr
  %i.o = sub nuw i64 %spec.select33, %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %gv_recalloc.exit

bb.g:                                             ; preds = %bb.a
  %i.p = add i64 %1, 31
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.p, i64 62) ; 3 uses
  %i.q = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 1) #28 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %gv_calloc.exit
end_hunk_3
