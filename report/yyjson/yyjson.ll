Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_read_opts:bb.a
  br i1 %i.ej, label %bb.au, label %._crit_edge5800.loopexit.split.loop.exit8990, !prof !62

bb.au:                                            ; preds = %bb.at
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  store ptr %i.ek, ptr %i.i, align 8, !tbaa !107
  %.sroa.01.0.copyload.i798 = load i16, ptr %i.ek, align 1 ; 2 uses
  %i.el = icmp eq i16 %.sroa.01.0.copyload.i798, 8224
  br i1 %i.el, label %bb.av, label %._crit_edge5800.loopexit.split.loop.exit8987, !prof !62

bb.av:                                            ; preds = %bb.au
  %i.em = getelementptr inbounds nuw i8, ptr %i.dv, i64 18 ; 2 uses
  store ptr %i.em, ptr %i.i, align 8, !tbaa !107
  %.sroa.01.0.copyload.i797 = load i16, ptr %i.em, align 1 ; 2 uses
  %i.en = icmp eq i16 %.sroa.01.0.copyload.i797, 8224
  br i1 %i.en, label %bb.aw, label %._crit_edge5800.loopexit.split.loop.exit8984, !prof !62

bb.aw:                                            ; preds = %bb.av
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 20 ; 2 uses
  store ptr %i.eo, ptr %i.i, align 8, !tbaa !107
  %.sroa.01.0.copyload.i796 = load i16, ptr %i.eo, align 1 ; 2 uses
  %i.ep = icmp eq i16 %.sroa.01.0.copyload.i796, 8224
  br i1 %i.ep, label %bb.ax, label %._crit_edge5800.loopexit.split.loop.exit8981, !prof !62

bb.ax:                                            ; preds = %bb.aw
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 22 ; 2 uses
  store ptr %i.eq, ptr %i.i, align 8, !tbaa !107
  %.sroa.01.0.copyload.i795 = load i16, ptr %i.eq, align 1 ; 2 uses
  %i.er = icmp eq i16 %.sroa.01.0.copyload.i795, 8224
  br i1 %i.er, label %bb.ay, label %._crit_edge5800.loopexit.split.loop.exit8978, !prof !62

bb.ay:                                            ; preds = %bb.ax
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 2 uses
  store ptr %i.es, ptr %i.i, align 8, !tbaa !107
  %.sroa.01.0.copyload.i794 = load i16, ptr %i.es, align 1 ; 2 uses
  %i.et = icmp eq i16 %.sroa.01.0.copyload.i794, 8224
  br i1 %i.et, label %bb.az, label %._crit_edge5800.loopexit.split.loop.exit8975, !prof !62

bb.az:                                            ; preds = %bb.ay
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dv, i64 26 ; 2 uses
  store ptr %i.eu, ptr %i.i, align 8, !tbaa !107
  %.sroa.01.0.copyload.i793 = load i16, ptr %i.eu, align 1 ; 2 uses
  %i.ev = icmp eq i16 %.sroa.01.0.copyload.i793, 8224
  br i1 %i.ev, label %bb.ba, label %._crit_edge5800.loopexit.split.loop.exit8972, !prof !62

bb.ba:                                            ; preds = %bb.az
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 28 ; 2 uses
  store ptr %i.ew, ptr %i.i, align 8, !tbaa !107
  %.sroa.01.0.copyload.i792 = load i16, ptr %i.ew, align 1 ; 2 uses
  %i.ex = icmp eq i16 %.sroa.01.0.copyload.i792, 8224
  br i1 %i.ex, label %bb.bb, label %._crit_edge5800.loopexit.split.loop.exit8969, !prof !62

bb.bb:                                            ; preds = %bb.ba
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 30 ; 2 uses
  store ptr %i.ey, ptr %i.i, align 8, !tbaa !107
  %.sroa.01.0.copyload.i = load i16, ptr %i.ey, align 1 ; 2 uses
  %i.ez = icmp eq i16 %.sroa.01.0.copyload.i, 8224
  br i1 %i.ez, label %bb.bc, label %._crit_edge5800.loopexit.split.loop.exit, !prof !62

bb.bc:                                            ; preds = %bb.bb
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 4 uses
  store ptr %i.fa, ptr %i.i, align 8, !tbaa !107
  %.sroa.01.0.copyload.i825 = load i16, ptr %i.fa, align 1 ; 2 uses
  %i.fb = icmp eq i16 %.sroa.01.0.copyload.i825, 8224
  br i1 %i.fb, label %.lr.ph5799, label %._crit_edge5800, !prof !118

._crit_edge5800.loopexit.split.loop.exit:         ; preds = %bb.bb
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dv, i64 30
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8969:     ; preds = %bb.ba
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8972:     ; preds = %bb.az
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dv, i64 26
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8975:     ; preds = %bb.ay
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8978:     ; preds = %bb.ax
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 22
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8981:     ; preds = %bb.aw
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8984:     ; preds = %bb.av
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dv, i64 18
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8987:     ; preds = %bb.au
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8990:     ; preds = %bb.at
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dv, i64 14
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8993:     ; preds = %bb.as
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8996:     ; preds = %bb.ar
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dv, i64 10
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit8999:     ; preds = %bb.aq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit9002:     ; preds = %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 6
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit9005:     ; preds = %bb.ao
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  br label %._crit_edge5800

._crit_edge5800.loopexit.split.loop.exit9008:     ; preds = %.lr.ph5799
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  br label %._crit_edge5800

._crit_edge5800:                                  ; preds = %bb.bc, %._crit_edge5800.loopexit.split.loop.exit, %._crit_edge5800.loopexit.split.loop.exit8969, %._crit_edge5800.loopexit.split.loop.exit8972, %._crit_edge5800.loopexit.split.loop.exit8975, %._crit_edge5800.loopexit.split.loop.exit8978, %._crit_edge5800.loopexit.split.loop.exit8981, %._crit_edge5800.loopexit.split.loop.exit8984, %._crit_edge5800.loopexit.split.loop.exit8987, %._crit_edge5800.loopexit.split.loop.exit8990, %._crit_edge5800.loopexit.split.loop.exit8993, %._crit_edge5800.loopexit.split.loop.exit8996, %._crit_edge5800.loopexit.split.loop.exit8999, %._crit_edge5800.loopexit.split.loop.exit9002, %._crit_edge5800.loopexit.split.loop.exit9005, %._crit_edge5800.loopexit.split.loop.exit9008, %.backedge5066
  %.in8140.a = phi i16 [ %.sroa.01.0.copyload.i8255797, %.backedge5066 ], [ %.sroa.01.0.copyload.i805, %._crit_edge5800.loopexit.split.loop.exit9008 ], [ %.sroa.01.0.copyload.i804, %._crit_edge5800.loopexit.split.loop.exit9005 ], [ %.sroa.01.0.copyload.i803, %._crit_edge5800.loopexit.split.loop.exit9002 ], [ %.sroa.01.0.copyload.i802, %._crit_edge5800.loopexit.split.loop.exit8999 ], [ %.sroa.01.0.copyload.i801, %._crit_edge5800.loopexit.split.loop.exit8996 ], [ %.sroa.01.0.copyload.i800, %._crit_edge5800.loopexit.split.loop.exit8993 ], [ %.sroa.01.0.copyload.i799, %._crit_edge5800.loopexit.split.loop.exit8990 ], [ %.sroa.01.0.copyload.i798, %._crit_edge5800.loopexit.split.loop.exit8987 ], [ %.sroa.01.0.copyload.i797, %._crit_edge5800.loopexit.split.loop.exit8984 ], [ %.sroa.01.0.copyload.i796, %._crit_edge5800.loopexit.split.loop.exit8981 ], [ %.sroa.01.0.copyload.i795, %._crit_edge5800.loopexit.split.loop.exit8978 ], [ %.sroa.01.0.copyload.i794, %._crit_edge5800.loopexit.split.loop.exit8975 ], [ %.sroa.01.0.copyload.i793, %._crit_edge5800.loopexit.split.loop.exit8972 ], [ %.sroa.01.0.copyload.i792, %._crit_edge5800.loopexit.split.loop.exit8969 ], [ %.sroa.01.0.copyload.i, %._crit_edge5800.loopexit.split.loop.exit ], [ %.sroa.01.0.copyload.i825, %bb.bc ] ; 2 uses
  %.promoted5816 = phi ptr [ %.promoted5796, %.backedge5066 ], [ %i.fq, %._crit_edge5800.loopexit.split.loop.exit9008 ], [ %i.fp, %._crit_edge5800.loopexit.split.loop.exit9005 ], [ %i.fo, %._crit_edge5800.loopexit.split.loop.exit9002 ], [ %i.fn, %._crit_edge5800.loopexit.split.loop.exit8999 ], [ %i.fm, %._crit_edge5800.loopexit.split.loop.exit8996 ], [ %i.fl, %._crit_edge5800.loopexit.split.loop.exit8993 ], [ %i.fk, %._crit_edge5800.loopexit.split.loop.exit8990 ], [ %i.fj, %._crit_edge5800.loopexit.split.loop.exit8987 ], [ %i.fi, %._crit_edge5800.loopexit.split.loop.exit8984 ], [ %i.fh, %._crit_edge5800.loopexit.split.loop.exit8981 ], [ %i.fg, %._crit_edge5800.loopexit.split.loop.exit8978 ], [ %i.ff, %._crit_edge5800.loopexit.split.loop.exit8975 ], [ %i.fe, %._crit_edge5800.loopexit.split.loop.exit8972 ], [ %i.fd, %._crit_edge5800.loopexit.split.loop.exit8969 ], [ %i.fc, %._crit_edge5800.loopexit.split.loop.exit ], [ %i.fa, %bb.bc ] ; 12 uses
  %i.fr = trunc i16 %.in8140.a to i8              ; 5 uses
  switch i8 %i.fr, label %bb.bd [
    i8 123, label %.loopexit5064
    i8 91, label %.loopexit5065
  ]

bb.bd:                                            ; preds = %._crit_edge5800
  %.mask8141 = and i16 %.in8140.a, 255
  %i.fs = zext nneg i16 %.mask8141 to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !100 ; 3 uses
  %i.fv = and i8 %i.fu, 16
  %.not4862 = icmp eq i8 %i.fv, 0
  br i1 %.not4862, label %bb.jp, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fw = getelementptr inbounds nuw i8, ptr %.3663.i.ph, i64 16 ; 3 uses
  %.not870.i = icmp ult ptr %i.fw, %.3696.i.ph
  br i1 %.not870.i, label %bb.bg, label %bb.bf, !prof !62

bb.bf:                                            ; preds = %bb.be
  %i.fx = lshr i64 %.2771.i.ph, 1
  %i.fy = add i64 %i.fx, %.2771.i.ph              ; 3 uses
  %i.fz = shl i64 %.2771.i.ph, 4
  %i.ga = shl i64 %i.fy, 4
  %i.gb = call ptr %.sroa.5.0.copyload2121(ptr noundef %.sroa.31.0.copyload2149, ptr noundef %.3729.i.ph, i64 noundef %i.fz, i64 noundef %i.ga) #33, !inline_history !195 ; 5 uses
  %.not871.i = icmp eq ptr %i.gb, null
  br i1 %.not871.i, label %bb.aji, label %.thread4149

.thread4149:                                      ; preds = %bb.bf
  %i.gc = ptrtoint ptr %.3651.i.ph to i64
  %i.gd = ptrtoint ptr %.3729.i.ph to i64         ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ptrtoint ptr %i.fw to i64
  %i.gg = sub i64 %i.gf, %i.gd
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ge
  %i.gj = getelementptr [16 x i8], ptr %i.gb, i64 %i.fy
  %i.gk = getelementptr i8, ptr %i.gj, i64 -32
  %.pre7514.a = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %bb.bg

bb.bg:                                            ; preds = %.thread4149, %bb.be
  %i.gl = phi ptr [ %.pre7514.a, %.thread4149 ], [ %.promoted5816, %bb.be ] ; 21 uses
  %.3772.i = phi i64 [ %i.fy, %.thread4149 ], [ %.2771.i.ph, %bb.be ] ; 34 uses
  %.5731.i = phi ptr [ %i.gb, %.thread4149 ], [ %.3729.i.ph, %bb.be ] ; 38 uses
  %.5698.i = phi ptr [ %i.gk, %.thread4149 ], [ %.3696.i.ph, %bb.be ] ; 34 uses
  %.5665.i = phi ptr [ %i.gh, %.thread4149 ], [ %i.fw, %bb.be ] ; 126 uses
  %.5653.i = phi ptr [ %i.gi, %.thread4149 ], [ %.3651.i.ph, %bb.be ] ; 34 uses
  %i.gm = add i64 %.1761.i.ph, 1                  ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !119
  %i.gn = and i32 %2, 32
  %.not4881 = icmp eq i32 %i.gn, 0
  br i1 %.not4881, label %bb.bh, label %.split, !prof !62

.split:                                           ; preds = %bb.bg
  %i.go = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, i32 noundef %2, ptr noundef %.5665.i, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br i1 %i.go, label %.preheader5069, label %bb.aje, !prof !255

bb.bh:                                            ; preds = %bb.bg
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !100 ; 3 uses
  %i.gq = icmp eq i8 %i.gp, 45                    ; 57 uses
  %i.gr = zext i1 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gr ; 6 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !100 ; 4 uses
  %i.gu = add i8 %i.gt, -49
  %i.gv = icmp ult i8 %i.gu, 9
  br i1 %i.gv, label %._crit_edge5820, label %.lr.ph5819, !prof !120

.lr.ph5819:                                       ; preds = %bb.bh
  %i.gw = and i32 %2, 512
  %.not6506 = icmp ne i32 %i.gw, 0                ; 3 uses
  br i1 %.not6506, label %.lr.ph5819.split.us, label %.lr.ph5819.split, !prof !45

.lr.ph5819.split.us:                              ; preds = %.lr.ph5819, %bb.bj
  %i.gx = phi i8 [ %i.hb, %bb.bj ], [ %i.gt, %.lr.ph5819 ] ; 3 uses
  %.0903.i5165817.us = phi ptr [ %i.ha, %bb.bj ], [ %i.gs, %.lr.ph5819 ] ; 9 uses
  %.not.i517.us = icmp eq i8 %i.gx, 48
  br i1 %.not.i517.us, label %.split5824.us, label %bb.bi, !prof !62

bb.bi:                                            ; preds = %.lr.ph5819.split.us
  %i.gy = icmp eq i8 %i.gx, 43
  %i.gz = icmp eq ptr %.0903.i5165817.us, %i.gl
  %or.cond990.i519.us = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond990.i519.us, label %bb.bj, label %.split5827.us

bb.bj:                                            ; preds = %bb.bi
  %i.ha = getelementptr inbounds nuw i8, ptr %.0903.i5165817.us, i64 1 ; 3 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !100 ; 3 uses
  %i.hc = add i8 %i.hb, -49
  %i.hd = icmp ult i8 %i.hc, 9
  br i1 %i.hd, label %._crit_edge5820, label %.lr.ph5819.split.us, !prof !121, !llvm.loop !5

.lr.ph5819.split:                                 ; preds = %.lr.ph5819
  %.not.i517 = icmp eq i8 %i.gt, 48
  br i1 %.not.i517, label %.split5824.us.thread, label %.loopexit5060, !prof !62

.split5827.us:                                    ; preds = %bb.bi
  %i.he = icmp eq i8 %i.gx, 46
  br i1 %i.he, label %bb.bk, label %.loopexit5060

bb.bk:                                            ; preds = %.split5827.us
  %i.hf = getelementptr inbounds nuw i8, ptr %.0903.i5165817.us, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !100 ; 2 uses
  %i.hh = add i8 %i.hg, -48
  %i.hi = icmp ult i8 %i.hh, 10
  br i1 %i.hi, label %.thread8151, label %.loopexit5060

.thread8151:                                      ; preds = %bb.bk
  %i.hj = getelementptr inbounds nuw i8, ptr %.0903.i5165817.us, i64 1
  br label %.preheader5059

.loopexit5060:                                    ; preds = %.lr.ph5819.split, %bb.bk, %.split5827.us
  %.0903.i5165353 = phi ptr [ %.0903.i5165817.us, %.split5827.us ], [ %.0903.i5165817.us, %bb.bk ], [ %i.gs, %.lr.ph5819.split ]
  br i1 %.not4873, label %read_inf_or_nan.exit839.thread, label %bb.bl, !prof !62

bb.bl:                                            ; preds = %.loopexit5060
  %i.hk = icmp ne i8 %i.gp, 43
  %brmerge = or i1 %.not6506, %i.hk
  br i1 %brmerge, label %bb.bm, label %read_inf_or_nan.exit839.thread, !prof !122

bb.bm:                                            ; preds = %bb.bl
  %i.hl = zext i8 %i.gp to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !100 ; 2 uses
  %i.ho = and i8 %i.hn, 1
  %i.hp = zext nneg i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.hp ; 9 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !100
  %i.hs = and i8 %i.hr, -33
  %i.ht = icmp eq i8 %i.hs, 73
  br i1 %i.ht, label %bb.bn, label %._crit_edge7518

bb.bn:                                            ; preds = %bb.bm
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !100
  %i.hw = and i8 %i.hv, -33
  %i.hx = icmp eq i8 %i.hw, 78
  br i1 %i.hx, label %bb.bo, label %._crit_edge7518

bb.bo:                                            ; preds = %bb.bn
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !100
  %i.ia = and i8 %i.hz, -33
  %i.ib = icmp eq i8 %i.ia, 70
  br i1 %i.ib, label %bb.bp, label %._crit_edge7518

bb.bp:                                            ; preds = %bb.bo
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hq, i64 3 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !100
  %i.ie = and i8 %i.id, -33
  %i.if = icmp eq i8 %i.ie, 73
  br i1 %i.if, label %bb.bq, label %read_inf.exit1480

bb.bq:                                            ; preds = %bb.bp
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !100
  %i.ii = and i8 %i.ih, -33
  %i.ij = icmp eq i8 %i.ii, 78
  br i1 %i.ij, label %bb.br, label %._crit_edge7518

bb.br:                                            ; preds = %bb.bq
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hq, i64 5
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !100
  %i.im = and i8 %i.il, -33
  %i.in = icmp eq i8 %i.im, 73
  br i1 %i.in, label %bb.bs, label %._crit_edge7518

bb.bs:                                            ; preds = %bb.br
  %i.io = getelementptr inbounds nuw i8, ptr %i.hq, i64 6
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !100
  %i.iq = and i8 %i.ip, -33
  %i.ir = icmp eq i8 %i.iq, 84
  br i1 %i.ir, label %bb.bt, label %._crit_edge7518

bb.bt:                                            ; preds = %bb.bs
  %i.is = getelementptr inbounds nuw i8, ptr %i.hq, i64 7
  %i.it = load i8, ptr %i.is, align 1, !tbaa !100
  %i.iu = and i8 %i.it, -33
  %i.iv = icmp eq i8 %i.iu, 89
  br i1 %i.iv, label %bb.bu, label %._crit_edge7518

bb.bu:                                            ; preds = %bb.bt
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  br label %read_inf.exit1480

read_inf.exit1480:                                ; preds = %bb.bu, %bb.bp
  %.0.i1479 = phi ptr [ %i.iw, %bb.bu ], [ %i.ic, %bb.bp ]
  store ptr %.0.i1479, ptr %i.i, align 8, !tbaa !107
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.ix = select i1 %i.gq, i64 -4503599627370496, i64 9218868437227405312
  %i.iy = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

._crit_edge7518:                                  ; preds = %bb.bq, %bb.bm, %bb.bt, %bb.bs, %bb.br, %bb.bo, %bb.bn
  %i.iz = and i8 %i.hn, 1
  %i.ja = zext nneg i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.ja ; 4 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !100
  %i.jd = and i8 %i.jc, -33
  %i.je = icmp eq i8 %i.jd, 78
  br i1 %i.je, label %bb.bv, label %read_inf_or_nan.exit839.thread

bb.bv:                                            ; preds = %._crit_edge7518
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !100
  %i.jh = and i8 %i.jg, -33
  %i.ji = icmp eq i8 %i.jh, 65
  br i1 %i.ji, label %bb.bw, label %read_inf_or_nan.exit839.thread

bb.bw:                                            ; preds = %bb.bv
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !100
  %i.jl = and i8 %i.jk, -33
  %i.jm = icmp eq i8 %i.jl, 78
  br i1 %i.jm, label %.split4191, label %read_inf_or_nan.exit839.thread

.split4191:                                       ; preds = %bb.bw
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 3
  store ptr %i.jn, ptr %i.i, align 8, !tbaa !107
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.jo = select i1 %i.gq, i64 -2251799813685248, i64 9221120237041090560
  %i.jp = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

read_inf_or_nan.exit839.thread:                   ; preds = %bb.bl, %._crit_edge7518, %bb.bv, %bb.bw, %.loopexit5060
  store ptr @.str.89, ptr %i.j, align 8, !tbaa !107
  store ptr %.0903.i5165353, ptr %i.i, align 8, !tbaa !107
  br label %read_num.exit646.thread

.split5824.us:                                    ; preds = %.lr.ph5819.split.us
  %i.jq = getelementptr inbounds nuw i8, ptr %.0903.i5165817.us, i64 1 ; 3 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !100 ; 3 uses
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !100
  %i.jv = and i8 %i.ju, 26
  %.not4883 = icmp eq i8 %i.jv, 0
  br i1 %.not4883, label %bb.bx, label %bb.by, !prof !62

.split5824.us.thread:                             ; preds = %.lr.ph5819.split
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 3 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !100 ; 2 uses
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !100
  %i.kb = and i8 %i.ka, 26
  %.not48838147 = icmp eq i8 %i.kb, 0
  br i1 %.not48838147, label %.split4189, label %bb.by, !prof !62

bb.bx:                                            ; preds = %.split5824.us
  %i.kc = and i8 %i.jr, -33
  %i.kd = icmp eq i8 %i.kc, 88
  br i1 %i.kd, label %.split4190, label %.split4189

.split4190:                                       ; preds = %bb.bx
  %i.ke = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, i32 noundef %2, ptr noundef %.5665.i, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br i1 %i.ke, label %.preheader5069, label %bb.aje, !prof !255

.split4189:                                       ; preds = %.split5824.us.thread, %bb.bx
  %i.kf = phi ptr [ %i.jw, %.split5824.us.thread ], [ %i.jq, %bb.bx ]
  %i.kg = select i1 %i.gq, i64 12, i64 4
  store i64 %i.kg, ptr %.5665.i, align 8, !tbaa !99
  %i.kh = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 0, ptr %i.kh, align 8, !tbaa !100
  store ptr %i.kf, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

bb.by:                                            ; preds = %.split5824.us.thread, %.split5824.us
  %i.ki = phi i8 [ %i.jx, %.split5824.us.thread ], [ %i.jr, %.split5824.us ] ; 3 uses
  %i.kj = phi ptr [ %i.jw, %.split5824.us.thread ], [ %i.jq, %.split5824.us ] ; 5 uses
  %.us-phi58258148 = phi ptr [ %i.gs, %.split5824.us.thread ], [ %.0903.i5165817.us, %.split5824.us ]
  %i.kk = icmp eq i8 %i.ki, 46
  br i1 %i.kk, label %bb.bz, label %bb.cd, !prof !62

bb.bz:                                            ; preds = %bb.by
  %.phi.trans.insert7520 = getelementptr inbounds nuw i8, ptr %.us-phi58258148, i64 2
  %.pre7521 = load i8, ptr %.phi.trans.insert7520, align 1, !tbaa !100 ; 3 uses
  %.pre7624.a = add i8 %.pre7521, -48
  %i.kl = icmp ult i8 %.pre7624.a, 10
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 1 ; 4 uses
  br i1 %i.kl, label %.preheader5059, label %bb.ca, !prof !256

.preheader5059:                                   ; preds = %.thread8151, %bb.bz
  %i.kn = phi ptr [ %i.hj, %.thread8151 ], [ %i.km, %bb.bz ] ; 2 uses
  %.1904.i5208154 = phi ptr [ %.0903.i5165817.us, %.thread8151 ], [ %i.kj, %bb.bz ]
  %i.ko = phi i8 [ %i.hg, %.thread8151 ], [ %.pre7521, %bb.bz ] ; 2 uses
  %i.kp = icmp eq i8 %i.ko, 48
  br i1 %i.kp, label %.lr.ph5834, label %._crit_edge5835.thread, !prof !123

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not6506, label %bb.cb, label %bb.cc, !prof !45

bb.cb:                                            ; preds = %bb.ca
  %i.kq = and i8 %.pre7521, -33
  %i.kr = icmp eq i8 %i.kq, 69
  br i1 %i.kr, label %bb.gz, label %.split4201

.split4201:                                       ; preds = %bb.cb
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.ks = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.kt = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !100
  store ptr %i.km, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

bb.cc:                                            ; preds = %bb.ca
  store ptr @.str.90, ptr %i.j, align 8, !tbaa !107
  store ptr %i.km, ptr %i.i, align 8, !tbaa !107
  br label %read_num.exit646.thread

.lr.ph5834:                                       ; preds = %.preheader5059, %.lr.ph5834
  %.2905.i5685833 = phi ptr [ %i.ku, %.lr.ph5834 ], [ %i.kn, %.preheader5059 ]
  %i.ku = getelementptr inbounds nuw i8, ptr %.2905.i5685833, i64 1 ; 4 uses
  %.pr = load i8, ptr %i.ku, align 1, !tbaa !100  ; 4 uses
  %i.kv = icmp eq i8 %.pr, 48
  br i1 %i.kv, label %.lr.ph5834, label %._crit_edge5835, !prof !124, !llvm.loop !6

._crit_edge5835:                                  ; preds = %.lr.ph5834
  %.pre7626.a = add i8 %.pr, -48
  %i.kw = icmp ult i8 %.pre7626.a, 10
  br i1 %i.kw, label %._crit_edge5835.thread, label %.thread8160, !prof !125

._crit_edge5835.thread:                           ; preds = %.preheader5059, %._crit_edge5835
  %.2905.i568.lcssa8159 = phi ptr [ %i.ku, %._crit_edge5835 ], [ %i.kn, %.preheader5059 ]
  %.lcssa53458158 = phi i8 [ %.pr, %._crit_edge5835 ], [ %i.ko, %.preheader5059 ]
  %i.kx = zext nneg i8 %.lcssa53458158 to i64
  %i.ky = add nsw i64 %i.kx, -48
  %i.kz = getelementptr inbounds i8, ptr %.2905.i568.lcssa8159, i64 -1
  br label %bb.eo

bb.cd:                                            ; preds = %bb.by
  %.pre7702.a = add i8 %i.ki, -48
  %i.la = icmp ult i8 %.pre7702.a, 10
  br i1 %i.la, label %bb.ce, label %.thread8160, !prof !125

bb.ce:                                            ; preds = %bb.cd
  store ptr @.str.91, ptr %i.j, align 8, !tbaa !107
  %i.lb = getelementptr inbounds i8, ptr %i.kj, i64 -1
  store ptr %i.lb, ptr %i.i, align 8, !tbaa !107
  br label %read_num.exit646.thread

.thread8160:                                      ; preds = %._crit_edge5835, %bb.cd
  %.3906.i5698163 = phi ptr [ %i.kj, %bb.cd ], [ %i.ku, %._crit_edge5835 ] ; 3 uses
  %i.lc = phi i8 [ %i.ki, %bb.cd ], [ %.pr, %._crit_edge5835 ]
  %i.ld = and i8 %i.lc, -33
  %i.le = icmp eq i8 %i.ld, 69
  br i1 %i.le, label %bb.cf, label %.split4193, !prof !45

bb.cf:                                            ; preds = %.thread8160
  %i.lf = getelementptr inbounds nuw i8, ptr %.3906.i5698163, i64 1
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !100
  %i.lh = zext i8 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !100
  %i.lk = trunc i8 %i.lj to i1
  %i.ll = select i1 %i.lk, i64 2, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.3906.i5698163, i64 %i.ll ; 3 uses
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !100
  %i.lo = add i8 %i.ln, -48
  %i.lp = icmp ult i8 %i.lo, 10
  br i1 %i.lp, label %.preheader5058, label %bb.cg, !prof !62

bb.cg:                                            ; preds = %bb.cf
  store ptr @.str.92, ptr %i.j, align 8, !tbaa !107
  store ptr %i.lm, ptr %i.i, align 8, !tbaa !107
  br label %read_num.exit646.thread

.preheader5058:                                   ; preds = %bb.cf, %.preheader5058
  %.4907.i571 = phi ptr [ %i.lq, %.preheader5058 ], [ %i.lm, %bb.cf ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.4907.i571, i64 1 ; 3 uses
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !100
  %i.ls = add i8 %i.lr, -48
  %i.lt = icmp ult i8 %i.ls, 10
  br i1 %i.lt, label %.preheader5058, label %.split4193, !llvm.loop !7

.split4193:                                       ; preds = %.preheader5058, %.thread8160
  %.5908.i570 = phi ptr [ %.3906.i5698163, %.thread8160 ], [ %i.lq, %.preheader5058 ]
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.lu = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.lv = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !100
  store ptr %.5908.i570, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

._crit_edge5820:                                  ; preds = %bb.bj, %bb.bh
  %.0903.i516.lcssa = phi ptr [ %i.gs, %bb.bh ], [ %i.ha, %bb.bj ] ; 39 uses
  %.lcssa5346 = phi i8 [ %i.gt, %bb.bh ], [ %i.hb, %bb.bj ]
  %i.lw = zext nneg i8 %.lcssa5346 to i64         ; 2 uses
  %i.lx = add nsw i64 %i.lw, -48                  ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 1 ; 6 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !100 ; 2 uses
  %i.ma = zext i8 %i.lz to i64                    ; 2 uses
  %i.mb = add nsw i64 %i.ma, -48                  ; 2 uses
  %i.mc = icmp ult i64 %i.mb, 10
  br i1 %i.mc, label %bb.ch, label %bb.db, !prof !62

bb.ch:                                            ; preds = %._crit_edge5820
  %i.md = mul nuw nsw i64 %i.lx, 10
  %i.me = add nuw nsw i64 %i.mb, %i.md            ; 5 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 2 ; 6 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !100 ; 2 uses
  %i.mh = zext i8 %i.mg to i64                    ; 2 uses
  %i.mi = add nsw i64 %i.mh, -48                  ; 2 uses
  %i.mj = icmp ult i64 %i.mi, 10
  br i1 %i.mj, label %bb.ci, label %bb.dd, !prof !62

bb.ci:                                            ; preds = %bb.ch
  %i.mk = mul nuw nsw i64 %i.me, 10
  %i.ml = add nuw nsw i64 %i.mi, %i.mk            ; 5 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 3 ; 6 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !100 ; 2 uses
  %i.mo = zext i8 %i.mn to i64                    ; 2 uses
  %i.mp = add nsw i64 %i.mo, -48                  ; 2 uses
  %i.mq = icmp ult i64 %i.mp, 10
  br i1 %i.mq, label %bb.cj, label %bb.df, !prof !62

bb.cj:                                            ; preds = %bb.ci
  %i.mr = mul nuw nsw i64 %i.ml, 10
  %i.ms = add nuw nsw i64 %i.mp, %i.mr            ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 4 ; 6 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !100 ; 2 uses
  %i.mv = zext i8 %i.mu to i64                    ; 2 uses
  %i.mw = add nsw i64 %i.mv, -48                  ; 2 uses
  %i.mx = icmp ult i64 %i.mw, 10
  br i1 %i.mx, label %bb.ck, label %bb.dh, !prof !62

bb.ck:                                            ; preds = %bb.cj
  %i.my = mul nuw nsw i64 %i.ms, 10
  %i.mz = add nuw nsw i64 %i.mw, %i.my            ; 5 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 5 ; 6 uses
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !100 ; 2 uses
  %i.nc = zext i8 %i.nb to i64                    ; 2 uses
  %i.nd = add nsw i64 %i.nc, -48                  ; 2 uses
  %i.ne = icmp ult i64 %i.nd, 10
  br i1 %i.ne, label %bb.cl, label %bb.dj, !prof !62

bb.cl:                                            ; preds = %bb.ck
  %i.nf = mul nuw nsw i64 %i.mz, 10
  %i.ng = add nuw nsw i64 %i.nd, %i.nf            ; 5 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 6 ; 6 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !100 ; 2 uses
  %i.nj = zext i8 %i.ni to i64                    ; 2 uses
  %i.nk = add nsw i64 %i.nj, -48                  ; 2 uses
  %i.nl = icmp ult i64 %i.nk, 10
  br i1 %i.nl, label %bb.cm, label %bb.dl, !prof !62

bb.cm:                                            ; preds = %bb.cl
  %i.nm = mul nuw nsw i64 %i.ng, 10
  %i.nn = add nuw nsw i64 %i.nk, %i.nm            ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 7 ; 6 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !100 ; 2 uses
  %i.nq = zext i8 %i.np to i64                    ; 2 uses
  %i.nr = add nsw i64 %i.nq, -48                  ; 2 uses
  %i.ns = icmp ult i64 %i.nr, 10
  br i1 %i.ns, label %bb.cn, label %bb.dn, !prof !62

bb.cn:                                            ; preds = %bb.cm
  %i.nt = mul nuw nsw i64 %i.nn, 10
  %i.nu = add nuw nsw i64 %i.nr, %i.nt            ; 5 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 8 ; 6 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !100 ; 2 uses
  %i.nx = zext i8 %i.nw to i64                    ; 2 uses
  %i.ny = add nsw i64 %i.nx, -48                  ; 2 uses
  %i.nz = icmp ult i64 %i.ny, 10
  br i1 %i.nz, label %bb.co, label %bb.dq, !prof !62

bb.co:                                            ; preds = %bb.cn
  %i.oa = mul nuw nsw i64 %i.nu, 10
  %i.ob = add nuw nsw i64 %i.ny, %i.oa            ; 5 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 9 ; 6 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !100 ; 2 uses
  %i.oe = zext i8 %i.od to i64                    ; 2 uses
  %i.of = add nsw i64 %i.oe, -48                  ; 2 uses
  %i.og = icmp ult i64 %i.of, 10
  br i1 %i.og, label %bb.cp, label %bb.dt, !prof !62

bb.cp:                                            ; preds = %bb.co
  %i.oh = mul nuw nsw i64 %i.ob, 10
  %i.oi = add nuw nsw i64 %i.of, %i.oh            ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0903.i516.lcssa, i64 10 ; 6 uses
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !100 ; 2 uses
  %i.ol = zext i8 %i.ok to i64                    ; 2 uses
  %i.om = add nsw i64 %i.ol, -48                  ; 2 uses
  %i.on = icmp ult i64 %i.om, 10
  br i1 %i.on, label %bb.cq, label %bb.dw, !prof !62

bb.cq:                                            ; preds = %bb.cp
  %i.oo = mul nuw nsw i64 %i.oi, 10
  %i.op = add nuw nsw i64 %i.om, %i.oo            ; 5 uses
end_hunk_0
begin_hunk_1_@yyjson_read_opts:bb.a
  %i.ecz = getelementptr inbounds nuw i8, ptr %.24016, i64 12
  %.0.copyload.i1401 = load i16, ptr %i.ebb, align 1
  store i16 %.0.copyload.i1401, ptr %i.ecz, align 1
  %i.eda = getelementptr inbounds nuw i8, ptr %.24016, i64 14
  br label %byte_move_forward.exit1236thread-pre-split

bb.yg:                                            ; preds = %bb.xw
  %i.edb = getelementptr inbounds nuw i8, ptr %.24016, i64 15
  br label %byte_move_forward.exit1236thread-pre-split

byte_move_forward.exit1236thread-pre-split:       ; preds = %bb.xy, %bb.xz, %byte_move_forward.exit1229, %byte_move_forward.exit1226, %bb.ya, %bb.yb, %byte_move_forward.exit1219, %byte_move_forward.exit1216, %bb.yc, %bb.yd, %byte_move_forward.exit1209, %byte_move_forward.exit1206, %bb.ye, %bb.yf, %bb.yg
  %.94033.ph = phi ptr [ %i.dyt, %bb.xz ], [ %i.dyz, %byte_move_forward.exit1229 ], [ %i.dzf, %byte_move_forward.exit1226 ], [ %i.dzl, %bb.ya ], [ %i.dzr, %bb.yb ], [ %i.dzx, %byte_move_forward.exit1219 ], [ %i.ead, %byte_move_forward.exit1216 ], [ %i.eaj, %bb.yc ], [ %i.eap, %bb.yd ], [ %i.eav, %byte_move_forward.exit1209 ], [ %i.ebb, %byte_move_forward.exit1206 ], [ %i.ebh, %bb.ye ], [ %i.ebn, %bb.yf ], [ %i.ecd, %bb.xy ], [ %i.ebt, %bb.yg ] ; 2 uses
  %.34017.ph = phi ptr [ %i.ece, %bb.xz ], [ %i.ecf, %byte_move_forward.exit1229 ], [ %i.ecg, %byte_move_forward.exit1226 ], [ %i.eci, %bb.ya ], [ %i.eck, %bb.yb ], [ %i.ecl, %byte_move_forward.exit1219 ], [ %i.ecm, %byte_move_forward.exit1216 ], [ %i.eco, %bb.yc ], [ %i.ecq, %bb.yd ], [ %i.ecs, %byte_move_forward.exit1209 ], [ %i.ecu, %byte_move_forward.exit1206 ], [ %i.ecx, %bb.ye ], [ %i.eda, %bb.yf ], [ %i.ecc, %bb.xy ], [ %i.edb, %bb.yg ]
  %.pr8220 = load i8, ptr %.94033.ph, align 1, !tbaa !100
  br label %byte_move_forward.exit1236

byte_move_forward.exit1236:                       ; preds = %byte_move_forward.exit1236thread-pre-split, %read_uni_esc.exit1026
  %i.edc = phi i8 [ %.pr8220, %byte_move_forward.exit1236thread-pre-split ], [ %i.dyi, %read_uni_esc.exit1026 ] ; 2 uses
  %.94033 = phi ptr [ %.94033.ph, %byte_move_forward.exit1236thread-pre-split ], [ %.84032, %read_uni_esc.exit1026 ] ; 5 uses
  %.34017 = phi ptr [ %.34017.ph, %byte_move_forward.exit1236thread-pre-split ], [ %.24016, %read_uni_esc.exit1026 ] ; 3 uses
  %.not117.i876 = icmp sgt i8 %i.edc, -1
  br i1 %.not117.i876, label %.loopexit5080, label %.preheader5079

.preheader5079:                                   ; preds = %byte_move_forward.exit1236
  %storemerge119.i8775746 = load i32, ptr %.94033, align 1 ; 4 uses
  %i.edd = and i32 %storemerge119.i8775746, 12632304
  %i.ede = icmp eq i32 %i.edd, 8421600
  %i.edf = trunc i32 %storemerge119.i8775746 to i16 ; 2 uses
  br i1 %i.ede, label %.lr.ph5750, label %.critedge4.i878

.lr.ph5750:                                       ; preds = %.preheader5079, %bb.yh
  %.0.copyload.i13887507 = phi i16 [ %i.edl, %bb.yh ], [ %i.edf, %.preheader5079 ] ; 2 uses
  %storemerge119.i8775749 = phi i32 [ %storemerge119.i877, %bb.yh ], [ %storemerge119.i8775746, %.preheader5079 ] ; 4 uses
  %.440185748 = phi ptr [ %i.edh, %bb.yh ], [ %.34017, %.preheader5079 ] ; 4 uses
  %.1040345747 = phi ptr [ %i.edi, %bb.yh ], [ %.94033, %.preheader5079 ] ; 3 uses
  %i.edg = and i32 %storemerge119.i8775749, 8207
  switch i32 %i.edg, label %bb.yh [
    i32 8205, label %.critedge4.i878
    i32 0, label %.critedge4.i878
  ]

bb.yh:                                            ; preds = %.lr.ph5750
  store i32 %storemerge119.i8775749, ptr %.440185748, align 1
  %i.edh = getelementptr inbounds nuw i8, ptr %.440185748, i64 3 ; 2 uses
  %i.edi = getelementptr inbounds nuw i8, ptr %.1040345747, i64 3 ; 3 uses
  %storemerge119.i877 = load i32, ptr %i.edi, align 1 ; 4 uses
  %i.edj = and i32 %storemerge119.i877, 12632304
  %i.edk = icmp eq i32 %i.edj, 8421600
  %i.edl = trunc i32 %storemerge119.i877 to i16   ; 2 uses
  br i1 %i.edk, label %.lr.ph5750, label %.critedge4.i878, !llvm.loop !20

.critedge4.i878:                                  ; preds = %bb.yh, %.lr.ph5750, %.lr.ph5750, %.preheader5079
  %.0.copyload.i13887505.a = phi i16 [ %i.edf, %.preheader5079 ], [ %.0.copyload.i13887507, %.lr.ph5750 ], [ %.0.copyload.i13887507, %.lr.ph5750 ], [ %i.edl, %bb.yh ]
  %.104034.lcssa = phi ptr [ %.94033, %.preheader5079 ], [ %.1040345747, %.lr.ph5750 ], [ %.1040345747, %.lr.ph5750 ], [ %i.edi, %bb.yh ] ; 3 uses
  %.44018.lcssa = phi ptr [ %.34017, %.preheader5079 ], [ %.440185748, %.lr.ph5750 ], [ %.440185748, %.lr.ph5750 ], [ %i.edh, %bb.yh ] ; 3 uses
  %storemerge119.i877.lcssa = phi i32 [ %storemerge119.i8775746, %.preheader5079 ], [ %storemerge119.i8775749, %.lr.ph5750 ], [ %storemerge119.i8775749, %.lr.ph5750 ], [ %storemerge119.i877, %bb.yh ] ; 5 uses
  %i.edm = and i32 %storemerge119.i877.lcssa, 128
  %i.edn = icmp eq i32 %i.edm, 0
  br i1 %i.edn, label %read_uni_esc.exit1026.backedge, label %.preheader5078

.preheader5078:                                   ; preds = %.critedge4.i878
  %i.edo = and i32 %storemerge119.i877.lcssa, 49376
  %i.edp = icmp eq i32 %i.edo, 32960
  %i.edq = and i32 %storemerge119.i877.lcssa, 30
  %i.edr = icmp ne i32 %i.edq, 0
  %i.eds = and i1 %i.edp, %i.edr
  br i1 %i.eds, label %.lr.ph5766, label %.preheader5077

.preheader5077.loopexit:                          ; preds = %.lr.ph5766
  %i.edt = trunc i32 %.sroa.0.0.copyload.i976 to i16
  br label %.preheader5077

.preheader5077:                                   ; preds = %.preheader5077.loopexit, %.preheader5078
  %.0.copyload.i13887504 = phi i16 [ %.0.copyload.i13887505.a, %.preheader5078 ], [ %i.edt, %.preheader5077.loopexit ] ; 2 uses
  %.114035.lcssa = phi ptr [ %.104034.lcssa, %.preheader5078 ], [ %i.eed, %.preheader5077.loopexit ] ; 3 uses
  %.54019.lcssa = phi ptr [ %.44018.lcssa, %.preheader5078 ], [ %i.eec, %.preheader5077.loopexit ] ; 3 uses
  %.sroa.172590.2.in.lcssa = phi i32 [ %storemerge119.i877.lcssa, %.preheader5078 ], [ %.sroa.0.0.copyload.i976, %.preheader5077.loopexit ] ; 5 uses
  %i.edu = and i32 %.sroa.172590.2.in.lcssa, -1061109512
  %i.edv = icmp ne i32 %i.edu, -2139062032
  %i.edw = and i32 %.sroa.172590.2.in.lcssa, 12295
  %.not120.i8795774 = icmp eq i32 %i.edw, 0
  %or.cond121.i8805775 = or i1 %.not120.i8795774, %i.edv
  br i1 %or.cond121.i8805775, label %.critedge6.i881, label %.lr.ph5780.preheader

.lr.ph5780.preheader:                             ; preds = %.preheader5077
  %i.edx = and i32 %.sroa.172590.2.in.lcssa, 4
  %i.edy = icmp eq i32 %i.edx, 0
  %i.edz = and i32 %.sroa.172590.2.in.lcssa, 12291
  %i.eea = icmp eq i32 %i.edz, 0
  %i.eeb = or i1 %i.edy, %i.eea
  br i1 %i.eeb, label %.lr.ph9947, label %.critedge6.i881

.lr.ph5766:                                       ; preds = %.preheader5078, %.lr.ph5766
  %.sroa.02555.25765.in = phi i32 [ %.sroa.0.0.copyload.i976, %.lr.ph5766 ], [ %storemerge119.i877.lcssa, %.preheader5078 ]
  %.540195764 = phi ptr [ %i.eec, %.lr.ph5766 ], [ %.44018.lcssa, %.preheader5078 ] ; 2 uses
  %.1140355763 = phi ptr [ %i.eed, %.lr.ph5766 ], [ %.104034.lcssa, %.preheader5078 ]
  %.sroa.02555.25765 = trunc i32 %.sroa.02555.25765.in to i16
  store i16 %.sroa.02555.25765, ptr %.540195764, align 1
  %i.eec = getelementptr inbounds nuw i8, ptr %.540195764, i64 2 ; 2 uses
  %i.eed = getelementptr inbounds nuw i8, ptr %.1140355763, i64 2 ; 3 uses
  %.sroa.0.0.copyload.i976 = load i32, ptr %i.eed, align 1 ; 5 uses
  %i.eee = and i32 %.sroa.0.0.copyload.i976, 49376
  %i.eef = icmp eq i32 %i.eee, 32960
  %i.eeg = and i32 %.sroa.0.0.copyload.i976, 30
  %i.eeh = icmp ne i32 %i.eeg, 0
  %i.eei = and i1 %i.eef, %i.eeh
  br i1 %i.eei, label %.lr.ph5766, label %.preheader5077.loopexit, !llvm.loop !21

.lr.ph5780:                                       ; preds = %.lr.ph9947
  %i.eej = and i32 %.sroa.0.0.copyload.i977, 4
  %i.eek = icmp eq i32 %i.eej, 0
  %i.eel = and i32 %.sroa.0.0.copyload.i977, 12291
  %i.eem = icmp eq i32 %i.eel, 0
  %i.een = or i1 %i.eek, %i.eem
  br i1 %i.een, label %.lr.ph9947, label %.critedge6.i881.loopexit, !llvm.loop !22

.lr.ph9947:                                       ; preds = %.lr.ph5780.preheader, %.lr.ph5780
  %.12403657769946 = phi ptr [ %i.eep, %.lr.ph5780 ], [ %.114035.lcssa, %.lr.ph5780.preheader ]
  %.6402057779945 = phi ptr [ %i.eeo, %.lr.ph5780 ], [ %.54019.lcssa, %.lr.ph5780.preheader ] ; 2 uses
  %.sroa.02555.0.insert.insert257957799944 = phi i32 [ %.sroa.0.0.copyload.i977, %.lr.ph5780 ], [ %.sroa.172590.2.in.lcssa, %.lr.ph5780.preheader ]
  store i32 %.sroa.02555.0.insert.insert257957799944, ptr %.6402057779945, align 1
  %i.eeo = getelementptr inbounds nuw i8, ptr %.6402057779945, i64 4 ; 3 uses
  %i.eep = getelementptr inbounds nuw i8, ptr %.12403657769946, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i977 = load i32, ptr %i.eep, align 1 ; 7 uses
  %i.eeq = and i32 %.sroa.0.0.copyload.i977, -1061109512
  %i.eer = icmp ne i32 %i.eeq, -2139062032
  %i.ees = and i32 %.sroa.0.0.copyload.i977, 12295
  %.not120.i879 = icmp eq i32 %i.ees, 0
  %or.cond121.i880 = or i1 %.not120.i879, %i.eer
  br i1 %or.cond121.i880, label %..critedge6.i881.loopexit_crit_edge, label %.lr.ph5780, !llvm.loop !22

..critedge6.i881.loopexit_crit_edge:              ; preds = %.lr.ph9947
  %i.eet = trunc i32 %.sroa.0.0.copyload.i977 to i16
  br label %.critedge6.i881, !llvm.loop !22

.critedge6.i881.loopexit:                         ; preds = %.lr.ph5780
  %i.eeu = trunc i32 %.sroa.0.0.copyload.i977 to i16
  br label %.critedge6.i881

.critedge6.i881:                                  ; preds = %.critedge6.i881.loopexit, %.lr.ph5780.preheader, %..critedge6.i881.loopexit_crit_edge, %.preheader5077
  %.0.copyload.i13887502 = phi i16 [ %.0.copyload.i13887504, %.preheader5077 ], [ %i.eet, %..critedge6.i881.loopexit_crit_edge ], [ %.0.copyload.i13887504, %.lr.ph5780.preheader ], [ %i.eeu, %.critedge6.i881.loopexit ]
  %.124036.lcssa = phi ptr [ %.114035.lcssa, %.preheader5077 ], [ %i.eep, %..critedge6.i881.loopexit_crit_edge ], [ %.114035.lcssa, %.lr.ph5780.preheader ], [ %i.eep, %.critedge6.i881.loopexit ] ; 4 uses
  %.64020.lcssa = phi ptr [ %.54019.lcssa, %.preheader5077 ], [ %i.eeo, %..critedge6.i881.loopexit_crit_edge ], [ %.54019.lcssa, %.lr.ph5780.preheader ], [ %i.eeo, %.critedge6.i881.loopexit ] ; 2 uses
  %i.eev = icmp eq ptr %.94033, %.124036.lcssa
  br i1 %i.eev, label %bb.yi, label %read_uni_esc.exit1026.backedge, !prof !45

bb.yi:                                            ; preds = %.critedge6.i881
  br i1 %.not4853, label %read_str_opt.exit897.thread.sink.split, label %bb.xy, !prof !62

read_str_opt.exit882:                             ; preds = %bb.vm, %.loopexit5080
  %.14025.lcssa.sink9068 = phi ptr [ %.04014, %.loopexit5080 ], [ %.14025, %bb.vm ] ; 2 uses
  %.sink9064 = phi i64 [ 5, %.loopexit5080 ], [ 13, %bb.vm ]
  %.64030.pn = phi ptr [ %.64030, %.loopexit5080 ], [ %.14025, %bb.vm ]
  %i.eew = ptrtoint ptr %.14025.lcssa.sink9068 to i64
  %i.eex = ptrtoint ptr %i.dly to i64
  %i.eey = sub i64 %i.eew, %i.eex
  %i.eez = shl i64 %i.eey, 8
  %i.efa = or disjoint i64 %i.eez, %.sink9064
  store i64 %i.efa, ptr %i.dlw, align 8, !tbaa !99
  %i.efb = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store ptr %i.dly, ptr %i.efb, align 8, !tbaa !100
  store i8 0, ptr %.14025.lcssa.sink9068, align 1, !tbaa !100
  %storemerge4854 = getelementptr inbounds nuw i8, ptr %.64030.pn, i64 1
  store ptr %storemerge4854, ptr %i.i, align 8, !tbaa !107
  br label %.preheader5074

bb.yj:                                            ; preds = %.lr.ph5589, %.backedge5105
  %i.efc = phi i8 [ %i.dld, %.lr.ph5589 ], [ %i.glx, %.backedge5105 ] ; 6 uses
  %i.efd = phi ptr [ %storemerge6498, %.lr.ph5589 ], [ %i.gly, %.backedge5105 ] ; 55 uses
  %i.efe = zext i8 %i.efc to i64                  ; 3 uses
  %i.eff = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.efe
  %i.efg = load i8, ptr %i.eff, align 1, !tbaa !100 ; 3 uses
  %i.efh = and i8 %i.efg, 16
  %.not4800 = icmp eq i8 %i.efh, 0
  br i1 %.not4800, label %bb.agv, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.efi = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 16 ; 81 uses
  %i.efj = add i64 %.5765.i.ph, 2                 ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !119
  %i.efk = and i32 %2, 32
  %.not4813 = icmp eq i32 %i.efk, 0
  br i1 %.not4813, label %bb.yl, label %.split4321, !prof !62

.split4321:                                       ; preds = %bb.yk
  %i.efl = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, i32 noundef %2, ptr noundef nonnull %i.efi, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.efl, label %.preheader5074, label %bb.aje, !prof !137

bb.yl:                                            ; preds = %bb.yk
  %i.efm = icmp eq i8 %i.efc, 45                  ; 56 uses
  %i.efn = zext i1 %i.efm to i64
  %i.efo = getelementptr inbounds nuw i8, ptr %i.efd, i64 %i.efn ; 6 uses
  %i.efp = load i8, ptr %i.efo, align 1, !tbaa !100 ; 4 uses
  %i.efq = add i8 %i.efp, -49
  %i.efr = icmp ult i8 %i.efq, 9
  br i1 %i.efr, label %._crit_edge5595, label %.lr.ph5594, !prof !120

.lr.ph5594:                                       ; preds = %bb.yl
  %i.efs = and i32 %2, 512
  %.not6499 = icmp ne i32 %i.efs, 0               ; 4 uses
  br i1 %.not6499, label %.lr.ph5594.split.us, label %.lr.ph5594.split, !prof !45

.lr.ph5594.split.us:                              ; preds = %.lr.ph5594, %bb.yn
  %i.eft = phi i8 [ %i.efx, %bb.yn ], [ %i.efp, %.lr.ph5594 ] ; 3 uses
  %.0903.i6475592.us = phi ptr [ %i.efw, %bb.yn ], [ %i.efo, %.lr.ph5594 ] ; 9 uses
  %.not.i648.us = icmp eq i8 %i.eft, 48
  br i1 %.not.i648.us, label %.split5599.us, label %bb.ym, !prof !62

bb.ym:                                            ; preds = %.lr.ph5594.split.us
  %i.efu = icmp eq i8 %i.eft, 43
  %i.efv = icmp eq ptr %.0903.i6475592.us, %i.efd
  %or.cond990.i650.us = and i1 %i.efv, %i.efu
  br i1 %or.cond990.i650.us, label %bb.yn, label %.split5601.us

bb.yn:                                            ; preds = %bb.ym
  %i.efw = getelementptr inbounds nuw i8, ptr %.0903.i6475592.us, i64 1 ; 3 uses
  %i.efx = load i8, ptr %i.efw, align 1, !tbaa !100 ; 3 uses
  %i.efy = add i8 %i.efx, -49
  %i.efz = icmp ult i8 %i.efy, 9
  br i1 %i.efz, label %._crit_edge5595, label %.lr.ph5594.split.us, !prof !121, !llvm.loop !5

.lr.ph5594.split:                                 ; preds = %.lr.ph5594
  %.not.i648 = icmp eq i8 %i.efp, 48
  br i1 %.not.i648, label %.split5599.us.thread, label %.loopexit5098, !prof !62

.split5601.us:                                    ; preds = %bb.ym
  %i.ega = icmp eq i8 %i.eft, 46
  br i1 %i.ega, label %bb.yo, label %.loopexit5098

bb.yo:                                            ; preds = %.split5601.us
  %i.egb = getelementptr inbounds nuw i8, ptr %.0903.i6475592.us, i64 1
  %i.egc = load i8, ptr %i.egb, align 1, !tbaa !100 ; 2 uses
  %i.egd = add i8 %i.egc, -48
  %i.ege = icmp ult i8 %i.egd, 10
  br i1 %i.ege, label %.thread8226, label %.loopexit5098

.thread8226:                                      ; preds = %bb.yo
  %i.egf = getelementptr inbounds nuw i8, ptr %.0903.i6475592.us, i64 1
  br label %.preheader5097

.loopexit5098:                                    ; preds = %.lr.ph5594.split, %bb.yo, %.split5601.us
  %.0903.i6475420 = phi ptr [ %.0903.i6475592.us, %.split5601.us ], [ %.0903.i6475592.us, %bb.yo ], [ %i.efo, %.lr.ph5594.split ]
  br i1 %.not4805, label %read_inf_or_nan.exit.thread, label %bb.yp, !prof !62

bb.yp:                                            ; preds = %.loopexit5098
  %i.egg = icmp ne i8 %i.efc, 43
  %brmerge4591 = or i1 %.not6499, %i.egg
  br i1 %brmerge4591, label %bb.yq, label %.thread4301, !prof !122

bb.yq:                                            ; preds = %bb.yp
  %i.egh = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.efe
  %i.egi = load i8, ptr %i.egh, align 1, !tbaa !100
  %i.egj = and i8 %i.egi, 1
  %i.egk = zext nneg i8 %i.egj to i64
  %i.egl = getelementptr inbounds nuw i8, ptr %i.efd, i64 %i.egk ; 9 uses
  %i.egm = load i8, ptr %i.egl, align 1, !tbaa !100
  %i.egn = and i8 %i.egm, -33
  %i.ego = icmp eq i8 %i.egn, 73
  br i1 %i.ego, label %bb.yr, label %bb.yz

bb.yr:                                            ; preds = %bb.yq
  %i.egp = getelementptr inbounds nuw i8, ptr %i.egl, i64 1
  %i.egq = load i8, ptr %i.egp, align 1, !tbaa !100
  %i.egr = and i8 %i.egq, -33
  %i.egs = icmp eq i8 %i.egr, 78
  br i1 %i.egs, label %bb.ys, label %bb.yz

bb.ys:                                            ; preds = %bb.yr
  %i.egt = getelementptr inbounds nuw i8, ptr %i.egl, i64 2
  %i.egu = load i8, ptr %i.egt, align 1, !tbaa !100
  %i.egv = and i8 %i.egu, -33
  %i.egw = icmp eq i8 %i.egv, 70
  br i1 %i.egw, label %bb.yt, label %bb.yz

bb.yt:                                            ; preds = %bb.ys
  %i.egx = getelementptr inbounds nuw i8, ptr %i.egl, i64 3 ; 2 uses
  %i.egy = load i8, ptr %i.egx, align 1, !tbaa !100
  %i.egz = and i8 %i.egy, -33
  %i.eha = icmp eq i8 %i.egz, 73
  br i1 %i.eha, label %bb.yu, label %read_inf.exit1483

bb.yu:                                            ; preds = %bb.yt
  %i.ehb = getelementptr inbounds nuw i8, ptr %i.egl, i64 4
  %i.ehc = load i8, ptr %i.ehb, align 1, !tbaa !100
  %i.ehd = and i8 %i.ehc, -33
  %i.ehe = icmp eq i8 %i.ehd, 78
  br i1 %i.ehe, label %bb.yv, label %bb.yz

bb.yv:                                            ; preds = %bb.yu
  %i.ehf = getelementptr inbounds nuw i8, ptr %i.egl, i64 5
  %i.ehg = load i8, ptr %i.ehf, align 1, !tbaa !100
  %i.ehh = and i8 %i.ehg, -33
  %i.ehi = icmp eq i8 %i.ehh, 73
  br i1 %i.ehi, label %bb.yw, label %bb.yz

bb.yw:                                            ; preds = %bb.yv
  %i.ehj = getelementptr inbounds nuw i8, ptr %i.egl, i64 6
  %i.ehk = load i8, ptr %i.ehj, align 1, !tbaa !100
  %i.ehl = and i8 %i.ehk, -33
  %i.ehm = icmp eq i8 %i.ehl, 84
  br i1 %i.ehm, label %bb.yx, label %bb.yz

bb.yx:                                            ; preds = %bb.yw
  %i.ehn = getelementptr inbounds nuw i8, ptr %i.egl, i64 7
  %i.eho = load i8, ptr %i.ehn, align 1, !tbaa !100
  %i.ehp = and i8 %i.eho, -33
  %i.ehq = icmp eq i8 %i.ehp, 89
  br i1 %i.ehq, label %bb.yy, label %bb.yz

bb.yy:                                            ; preds = %bb.yx
  %i.ehr = getelementptr inbounds nuw i8, ptr %i.egl, i64 8
  br label %read_inf.exit1483

read_inf.exit1483:                                ; preds = %bb.yy, %bb.yt
  %.0.i1482 = phi ptr [ %i.ehr, %bb.yy ], [ %i.egx, %bb.yt ]
  store ptr %.0.i1482, ptr %i.i, align 8, !tbaa !107
  store i64 20, ptr %i.efi, align 8, !tbaa !99
  %i.ehs = select i1 %i.efm, i64 -4503599627370496, i64 9218868437227405312
  %i.eht = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.ehs, ptr %i.eht, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

bb.yz:                                            ; preds = %bb.yu, %bb.yq, %bb.yx, %bb.yw, %bb.yv, %bb.ys, %bb.yr
  %i.ehu = load i8, ptr %i.efd, align 1, !tbaa !100 ; 2 uses
  %i.ehv = icmp ne i8 %i.ehu, 43
  %brmerge4593 = or i1 %.not6499, %i.ehv
  br i1 %brmerge4593, label %bb.za, label %read_inf_or_nan.exit.thread, !prof !258

.thread4301:                                      ; preds = %bb.yp
  %i.ehw = load i8, ptr %i.efd, align 1, !tbaa !100 ; 2 uses
  %i.ehx = icmp eq i8 %i.ehw, 43
  br i1 %i.ehx, label %read_inf_or_nan.exit.thread, label %bb.za

bb.za:                                            ; preds = %bb.yz, %.thread4301
  %i.ehy = phi i8 [ %i.ehw, %.thread4301 ], [ %i.ehu, %bb.yz ] ; 2 uses
  %i.ehz = icmp eq i8 %i.ehy, 45
  %i.eia = zext i8 %i.ehy to i64
  %i.eib = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.eia
  %i.eic = load i8, ptr %i.eib, align 1, !tbaa !100
  %i.eid = and i8 %i.eic, 1
  %i.eie = zext nneg i8 %i.eid to i64
  %i.eif = getelementptr inbounds nuw i8, ptr %i.efd, i64 %i.eie ; 4 uses
  %i.eig = load i8, ptr %i.eif, align 1, !tbaa !100
  %i.eih = and i8 %i.eig, -33
  %i.eii = icmp eq i8 %i.eih, 78
  br i1 %i.eii, label %bb.zb, label %read_inf_or_nan.exit.thread

bb.zb:                                            ; preds = %bb.za
  %i.eij = getelementptr inbounds nuw i8, ptr %i.eif, i64 1
  %i.eik = load i8, ptr %i.eij, align 1, !tbaa !100
  %i.eil = and i8 %i.eik, -33
  %i.eim = icmp eq i8 %i.eil, 65
  br i1 %i.eim, label %bb.zc, label %read_inf_or_nan.exit.thread

bb.zc:                                            ; preds = %bb.zb
  %i.ein = getelementptr inbounds nuw i8, ptr %i.eif, i64 2
  %i.eio = load i8, ptr %i.ein, align 1, !tbaa !100
  %i.eip = and i8 %i.eio, -33
  %i.eiq = icmp eq i8 %i.eip, 78
  br i1 %i.eiq, label %.split4339, label %read_inf_or_nan.exit.thread

.split4339:                                       ; preds = %bb.zc
  %i.eir = getelementptr inbounds nuw i8, ptr %i.eif, i64 3
  store ptr %i.eir, ptr %i.i, align 8, !tbaa !107
  store i64 20, ptr %i.efi, align 8, !tbaa !99
  %i.eis = select i1 %i.ehz, i64 -2251799813685248, i64 9221120237041090560
  %i.eit = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.eis, ptr %i.eit, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

read_inf_or_nan.exit.thread:                      ; preds = %bb.yz, %.thread4301, %bb.za, %bb.zb, %bb.zc, %.loopexit5098
  store ptr @.str.89, ptr %i.j, align 8, !tbaa !107
  store ptr %.0903.i6475420, ptr %i.i, align 8, !tbaa !107
  br label %read_num.exit777.thread

.split5599.us:                                    ; preds = %.lr.ph5594.split.us
  %i.eiu = getelementptr inbounds nuw i8, ptr %.0903.i6475592.us, i64 1 ; 3 uses
  %i.eiv = load i8, ptr %i.eiu, align 1, !tbaa !100 ; 3 uses
  %i.eiw = zext i8 %i.eiv to i64
  %i.eix = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.eiw
  %i.eiy = load i8, ptr %i.eix, align 1, !tbaa !100
  %i.eiz = and i8 %i.eiy, 26
  %.not4815 = icmp eq i8 %i.eiz, 0
  br i1 %.not4815, label %bb.zd, label %bb.ze, !prof !62

.split5599.us.thread:                             ; preds = %.lr.ph5594.split
  %i.eja = getelementptr inbounds nuw i8, ptr %i.efo, i64 1 ; 3 uses
  %i.ejb = load i8, ptr %i.eja, align 1, !tbaa !100 ; 2 uses
  %i.ejc = zext i8 %i.ejb to i64
  %i.ejd = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.ejc
  %i.eje = load i8, ptr %i.ejd, align 1, !tbaa !100
  %i.ejf = and i8 %i.eje, 26
  %.not48158222 = icmp eq i8 %i.ejf, 0
  br i1 %.not48158222, label %.split4337, label %bb.ze, !prof !62

bb.zd:                                            ; preds = %.split5599.us
  %i.ejg = and i8 %i.eiv, -33
  %i.ejh = icmp eq i8 %i.ejg, 88
  br i1 %i.ejh, label %.split4338, label %.split4337, !prof !138

.split4338:                                       ; preds = %bb.zd
  %i.eji = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, i32 noundef %2, ptr noundef nonnull %i.efi, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.eji, label %.preheader5074, label %bb.aje, !prof !137

.split4337:                                       ; preds = %.split5599.us.thread, %bb.zd
  %i.ejj = phi ptr [ %i.eiu, %bb.zd ], [ %i.eja, %.split5599.us.thread ]
  %i.ejk = select i1 %i.efm, i64 12, i64 4
  store i64 %i.ejk, ptr %i.efi, align 8, !tbaa !99
  %i.ejl = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 0, ptr %i.ejl, align 8, !tbaa !100
  store ptr %i.ejj, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

bb.ze:                                            ; preds = %.split5599.us.thread, %.split5599.us
  %i.ejm = phi i8 [ %i.ejb, %.split5599.us.thread ], [ %i.eiv, %.split5599.us ] ; 3 uses
  %i.ejn = phi ptr [ %i.eja, %.split5599.us.thread ], [ %i.eiu, %.split5599.us ] ; 5 uses
  %.us-phi8223 = phi ptr [ %i.efo, %.split5599.us.thread ], [ %.0903.i6475592.us, %.split5599.us ]
  %i.ejo = icmp eq i8 %i.ejm, 46
  br i1 %i.ejo, label %bb.zf, label %bb.zj, !prof !62

bb.zf:                                            ; preds = %bb.ze
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.us-phi8223, i64 2
  %.pre7496 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !100 ; 3 uses
  %.pre7630 = add i8 %.pre7496, -48
  %i.ejp = icmp ult i8 %.pre7630, 10
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ejn, i64 1 ; 4 uses
  br i1 %i.ejp, label %.preheader5097, label %bb.zg, !prof !259

.preheader5097:                                   ; preds = %.thread8226, %bb.zf
  %i.ejr = phi ptr [ %i.egf, %.thread8226 ], [ %i.ejq, %bb.zf ] ; 2 uses
  %.1904.i6518229 = phi ptr [ %.0903.i6475592.us, %.thread8226 ], [ %i.ejn, %bb.zf ]
  %i.ejs = phi i8 [ %i.egc, %.thread8226 ], [ %.pre7496, %bb.zf ] ; 2 uses
  %i.ejt = icmp eq i8 %i.ejs, 48
  br i1 %i.ejt, label %.lr.ph5608, label %._crit_edge5609.thread, !prof !123

bb.zg:                                            ; preds = %bb.zf
  br i1 %.not6499, label %bb.zh, label %bb.zi, !prof !45

bb.zh:                                            ; preds = %bb.zg
  %i.eju = and i8 %.pre7496, -33
  %i.ejv = icmp eq i8 %i.eju, 69
  br i1 %i.ejv, label %bb.aef, label %.split4349

.split4349:                                       ; preds = %bb.zh
  store i64 20, ptr %i.efi, align 8, !tbaa !99
  %i.ejw = select i1 %i.efm, i64 -9223372036854775808, i64 0
  %i.ejx = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.ejw, ptr %i.ejx, align 8, !tbaa !100
  store ptr %i.ejq, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

bb.zi:                                            ; preds = %bb.zg
  store ptr @.str.90, ptr %i.j, align 8, !tbaa !107
  store ptr %i.ejq, ptr %i.i, align 8, !tbaa !107
  br label %read_num.exit777.thread

.lr.ph5608:                                       ; preds = %.preheader5097, %.lr.ph5608
  %.2905.i6995607 = phi ptr [ %i.ejy, %.lr.ph5608 ], [ %i.ejr, %.preheader5097 ]
  %i.ejy = getelementptr inbounds nuw i8, ptr %.2905.i6995607, i64 1 ; 4 uses
  %.pr4304 = load i8, ptr %i.ejy, align 1, !tbaa !100 ; 4 uses
  %i.ejz = icmp eq i8 %.pr4304, 48
  br i1 %i.ejz, label %.lr.ph5608, label %._crit_edge5609, !prof !124, !llvm.loop !6

._crit_edge5609:                                  ; preds = %.lr.ph5608
  %.pre7632.a = add i8 %.pr4304, -48
  %i.eka = icmp ult i8 %.pre7632.a, 10
  br i1 %i.eka, label %._crit_edge5609.thread, label %.thread8235, !prof !260

._crit_edge5609.thread:                           ; preds = %.preheader5097, %._crit_edge5609
  %.2905.i699.lcssa8234 = phi ptr [ %i.ejy, %._crit_edge5609 ], [ %i.ejr, %.preheader5097 ]
  %.lcssa54128233 = phi i8 [ %.pr4304, %._crit_edge5609 ], [ %i.ejs, %.preheader5097 ]
  %i.ekb = zext nneg i8 %.lcssa54128233 to i64
  %i.ekc = add nsw i64 %i.ekb, -48
  %i.ekd = getelementptr inbounds i8, ptr %.2905.i699.lcssa8234, i64 -1
  br label %bb.abu

bb.zj:                                            ; preds = %bb.ze
  %.pre7724.a = add i8 %i.ejm, -48
  %i.eke = icmp ult i8 %.pre7724.a, 10
  br i1 %i.eke, label %bb.zk, label %.thread8235, !prof !261

bb.zk:                                            ; preds = %bb.zj
  store ptr @.str.91, ptr %i.j, align 8, !tbaa !107
  %i.ekf = getelementptr inbounds i8, ptr %i.ejn, i64 -1
  store ptr %i.ekf, ptr %i.i, align 8, !tbaa !107
  br label %read_num.exit777.thread

.thread8235:                                      ; preds = %._crit_edge5609, %bb.zj
  %.3906.i7008238 = phi ptr [ %i.ejn, %bb.zj ], [ %i.ejy, %._crit_edge5609 ] ; 3 uses
  %i.ekg = phi i8 [ %i.ejm, %bb.zj ], [ %.pr4304, %._crit_edge5609 ]
  %i.ekh = and i8 %i.ekg, -33
  %i.eki = icmp eq i8 %i.ekh, 69
  br i1 %i.eki, label %bb.zl, label %.split4341, !prof !45

bb.zl:                                            ; preds = %.thread8235
  %i.ekj = getelementptr inbounds nuw i8, ptr %.3906.i7008238, i64 1
  %i.ekk = load i8, ptr %i.ekj, align 1, !tbaa !100
  %i.ekl = zext i8 %i.ekk to i64
  %i.ekm = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.ekl
  %i.ekn = load i8, ptr %i.ekm, align 1, !tbaa !100
  %i.eko = trunc i8 %i.ekn to i1
  %i.ekp = select i1 %i.eko, i64 2, i64 1
  %i.ekq = getelementptr inbounds nuw i8, ptr %.3906.i7008238, i64 %i.ekp ; 3 uses
  %i.ekr = load i8, ptr %i.ekq, align 1, !tbaa !100
  %i.eks = add i8 %i.ekr, -48
  %i.ekt = icmp ult i8 %i.eks, 10
  br i1 %i.ekt, label %.preheader5096, label %bb.zm, !prof !62

bb.zm:                                            ; preds = %bb.zl
  store ptr @.str.92, ptr %i.j, align 8, !tbaa !107
  store ptr %i.ekq, ptr %i.i, align 8, !tbaa !107
  br label %read_num.exit777.thread

.preheader5096:                                   ; preds = %bb.zl, %.preheader5096
  %.4907.i702 = phi ptr [ %i.eku, %.preheader5096 ], [ %i.ekq, %bb.zl ]
  %i.eku = getelementptr inbounds nuw i8, ptr %.4907.i702, i64 1 ; 3 uses
  %i.ekv = load i8, ptr %i.eku, align 1, !tbaa !100
  %i.ekw = add i8 %i.ekv, -48
  %i.ekx = icmp ult i8 %i.ekw, 10
  br i1 %i.ekx, label %.preheader5096, label %.split4341, !llvm.loop !7

.split4341:                                       ; preds = %.preheader5096, %.thread8235
  %.5908.i701 = phi ptr [ %.3906.i7008238, %.thread8235 ], [ %i.eku, %.preheader5096 ]
  store i64 20, ptr %i.efi, align 8, !tbaa !99
  %i.eky = select i1 %i.efm, i64 -9223372036854775808, i64 0
  %i.ekz = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.eky, ptr %i.ekz, align 8, !tbaa !100
  store ptr %.5908.i701, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

._crit_edge5595:                                  ; preds = %bb.yn, %bb.yl
  %.0903.i647.lcssa = phi ptr [ %i.efo, %bb.yl ], [ %i.efw, %bb.yn ] ; 39 uses
  %.lcssa5413 = phi i8 [ %i.efp, %bb.yl ], [ %i.efx, %bb.yn ]
  %i.ela = zext nneg i8 %.lcssa5413 to i64        ; 2 uses
  %i.elb = add nsw i64 %i.ela, -48                ; 4 uses
  %i.elc = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 1 ; 6 uses
  %i.eld = load i8, ptr %i.elc, align 1, !tbaa !100 ; 2 uses
  %i.ele = zext i8 %i.eld to i64                  ; 2 uses
  %i.elf = add nsw i64 %i.ele, -48                ; 2 uses
  %i.elg = icmp ult i64 %i.elf, 10
  br i1 %i.elg, label %bb.zn, label %bb.aah, !prof !62

bb.zn:                                            ; preds = %._crit_edge5595
  %i.elh = mul nuw nsw i64 %i.elb, 10
  %i.eli = add nuw nsw i64 %i.elf, %i.elh         ; 5 uses
  %i.elj = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 2 ; 6 uses
  %i.elk = load i8, ptr %i.elj, align 1, !tbaa !100 ; 2 uses
  %i.ell = zext i8 %i.elk to i64                  ; 2 uses
  %i.elm = add nsw i64 %i.ell, -48                ; 2 uses
  %i.eln = icmp ult i64 %i.elm, 10
  br i1 %i.eln, label %bb.zo, label %bb.aaj, !prof !62

bb.zo:                                            ; preds = %bb.zn
  %i.elo = mul nuw nsw i64 %i.eli, 10
  %i.elp = add nuw nsw i64 %i.elm, %i.elo         ; 5 uses
  %i.elq = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 3 ; 6 uses
  %i.elr = load i8, ptr %i.elq, align 1, !tbaa !100 ; 2 uses
  %i.els = zext i8 %i.elr to i64                  ; 2 uses
  %i.elt = add nsw i64 %i.els, -48                ; 2 uses
  %i.elu = icmp ult i64 %i.elt, 10
  br i1 %i.elu, label %bb.zp, label %bb.aal, !prof !62

bb.zp:                                            ; preds = %bb.zo
  %i.elv = mul nuw nsw i64 %i.elp, 10
  %i.elw = add nuw nsw i64 %i.elt, %i.elv         ; 5 uses
  %i.elx = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 4 ; 6 uses
  %i.ely = load i8, ptr %i.elx, align 1, !tbaa !100 ; 2 uses
  %i.elz = zext i8 %i.ely to i64                  ; 2 uses
  %i.ema = add nsw i64 %i.elz, -48                ; 2 uses
  %i.emb = icmp ult i64 %i.ema, 10
  br i1 %i.emb, label %bb.zq, label %bb.aan, !prof !62

bb.zq:                                            ; preds = %bb.zp
  %i.emc = mul nuw nsw i64 %i.elw, 10
  %i.emd = add nuw nsw i64 %i.ema, %i.emc         ; 5 uses
  %i.eme = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 5 ; 6 uses
  %i.emf = load i8, ptr %i.eme, align 1, !tbaa !100 ; 2 uses
  %i.emg = zext i8 %i.emf to i64                  ; 2 uses
  %i.emh = add nsw i64 %i.emg, -48                ; 2 uses
  %i.emi = icmp ult i64 %i.emh, 10
  br i1 %i.emi, label %bb.zr, label %bb.aap, !prof !62

bb.zr:                                            ; preds = %bb.zq
  %i.emj = mul nuw nsw i64 %i.emd, 10
  %i.emk = add nuw nsw i64 %i.emh, %i.emj         ; 5 uses
  %i.eml = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 6 ; 6 uses
  %i.emm = load i8, ptr %i.eml, align 1, !tbaa !100 ; 2 uses
  %i.emn = zext i8 %i.emm to i64                  ; 2 uses
  %i.emo = add nsw i64 %i.emn, -48                ; 2 uses
  %i.emp = icmp ult i64 %i.emo, 10
  br i1 %i.emp, label %bb.zs, label %bb.aar, !prof !62

bb.zs:                                            ; preds = %bb.zr
  %i.emq = mul nuw nsw i64 %i.emk, 10
  %i.emr = add nuw nsw i64 %i.emo, %i.emq         ; 5 uses
  %i.ems = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 7 ; 6 uses
  %i.emt = load i8, ptr %i.ems, align 1, !tbaa !100 ; 2 uses
  %i.emu = zext i8 %i.emt to i64                  ; 2 uses
  %i.emv = add nsw i64 %i.emu, -48                ; 2 uses
  %i.emw = icmp ult i64 %i.emv, 10
  br i1 %i.emw, label %bb.zt, label %bb.aat, !prof !62

bb.zt:                                            ; preds = %bb.zs
  %i.emx = mul nuw nsw i64 %i.emr, 10
  %i.emy = add nuw nsw i64 %i.emv, %i.emx         ; 5 uses
  %i.emz = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 8 ; 6 uses
  %i.ena = load i8, ptr %i.emz, align 1, !tbaa !100 ; 2 uses
  %i.enb = zext i8 %i.ena to i64                  ; 2 uses
  %i.enc = add nsw i64 %i.enb, -48                ; 2 uses
  %i.end = icmp ult i64 %i.enc, 10
  br i1 %i.end, label %bb.zu, label %bb.aaw, !prof !62

bb.zu:                                            ; preds = %bb.zt
  %i.ene = mul nuw nsw i64 %i.emy, 10
  %i.enf = add nuw nsw i64 %i.enc, %i.ene         ; 5 uses
  %i.eng = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 9 ; 6 uses
  %i.enh = load i8, ptr %i.eng, align 1, !tbaa !100 ; 2 uses
  %i.eni = zext i8 %i.enh to i64                  ; 2 uses
  %i.enj = add nsw i64 %i.eni, -48                ; 2 uses
  %i.enk = icmp ult i64 %i.enj, 10
  br i1 %i.enk, label %bb.zv, label %bb.aaz, !prof !62

bb.zv:                                            ; preds = %bb.zu
  %i.enl = mul nuw nsw i64 %i.enf, 10
  %i.enm = add nuw nsw i64 %i.enj, %i.enl         ; 5 uses
  %i.enn = getelementptr inbounds nuw i8, ptr %.0903.i647.lcssa, i64 10 ; 6 uses
  %i.eno = load i8, ptr %i.enn, align 1, !tbaa !100 ; 2 uses
  %i.enp = zext i8 %i.eno to i64                  ; 2 uses
  %i.enq = add nsw i64 %i.enp, -48                ; 2 uses
  %i.enr = icmp ult i64 %i.enq, 10
  br i1 %i.enr, label %bb.zw, label %bb.abc, !prof !62

bb.zw:                                            ; preds = %bb.zv
  %i.ens = mul nuw nsw i64 %i.enm, 10
  %i.ent = add nuw nsw i64 %i.enq, %i.ens         ; 5 uses
end_hunk_1
begin_hunk_2_@yyjson_read_opts:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bre

bb.ajm:                                           ; preds = %._crit_edge7538, %bb.ae
  %.sroa.02176.0.copyload2177 = phi ptr [ %.sroa.02176.0.copyload2177.pre, %._crit_edge7538 ], [ %.sroa.02176.0.copyload2177.pre7539, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.52178.0..sroa_idx2179 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.52178.0.copyload2180 = load ptr, ptr %.sroa.52178.0..sroa_idx2179, align 8 ; 13 uses
  %.sroa.172192.0..sroa_idx2193 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.172192.0.copyload2194 = load ptr, ptr %.sroa.172192.0..sroa_idx2193, align 8 ; 15 uses
  %.sroa.312208.0..sroa_idx2209 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.312208.0.copyload2210 = load ptr, ptr %.sroa.312208.0..sroa_idx2209, align 8 ; 28 uses
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  store ptr %i.g, ptr %i.h, align 8, !tbaa !107
  %i.grr = and i32 %2, 2
  %.not4638 = icmp eq i32 %i.grr, 0               ; 2 uses
  %i.grs = ptrtoint ptr %.0 to i64
  %i.grt = ptrtoint ptr %i.bc to i64
  %i.gru = sub i64 %i.grs, %i.grt
  %i.grv = udiv i64 %i.gru, 6
  %i.grw = call i64 @llvm.umin.i64(i64 %i.grv, i64 1152921504606846967)
  %i.grx = add nuw nsw i64 %i.grw, 8
  %i.gry = select i1 %.not4638, i64 %i.grx, i64 50, !prof !62 ; 4 uses
  %i.grz = shl nuw i64 %i.gry, 4
  %i.gsa = call ptr %.sroa.02176.0.copyload2177(ptr noundef %.sroa.312208.0.copyload2210, i64 noundef %i.grz) #33, !inline_history !225 ; 6 uses
  %.not.i116 = icmp eq ptr %i.gsa, null
  br i1 %.not.i116, label %bb.bqz, label %bb.ajn, !prof !45

bb.ajn:                                           ; preds = %bb.ajm
  %i.gsb = getelementptr [16 x i8], ptr %i.gsa, i64 %i.gry
  %i.gsc = getelementptr i8, ptr %i.gsb, i64 -32  ; 2 uses
  %i.gsd = getelementptr inbounds nuw i8, ptr %i.gsa, i64 64 ; 6 uses
  %i.gse = load ptr, ptr %i.e, align 8, !tbaa !107 ; 2 uses
  %i.gsf = getelementptr inbounds nuw i8, ptr %i.gse, i64 1 ; 3 uses
  store ptr %i.gsf, ptr %i.e, align 8, !tbaa !107
  %i.gsg = load i8, ptr %i.gse, align 1, !tbaa !100
  %i.gsh = icmp eq i8 %i.gsg, 123
  %i.gsi = getelementptr inbounds nuw i8, ptr %i.gsa, i64 72 ; 2 uses
  br i1 %i.gsh, label %bb.ajo, label %bb.ajp

bb.ajo:                                           ; preds = %bb.ajn
  store i64 7, ptr %i.gsd, align 8, !tbaa !99
  store i64 0, ptr %i.gsi, align 8, !tbaa !100
  br label %.preheader5033

bb.ajp:                                           ; preds = %bb.ajn
  store i64 6, ptr %i.gsd, align 8, !tbaa !99
  store i64 0, ptr %i.gsi, align 8, !tbaa !100
  br label %.preheader4973

.loopexit4975:                                    ; preds = %bb.bop, %.backedge4976
  %.pn.i123 = phi ptr [ %.promoted6294, %.backedge4976 ], [ %i.lqn, %bb.bop ]
  %.0769.i124 = phi i64 [ %.2771.i117.ph, %.backedge4976 ], [ %.18787.i222.ph, %bb.bop ] ; 4 uses
  %.0760.i125 = phi i64 [ %.1761.i118.ph, %.backedge4976 ], [ %.6766.i223.ph, %bb.bop ]
  %.0726.i126 = phi ptr [ %.3729.i119.ph, %.backedge4976 ], [ %.30756.i224.ph, %bb.bop ] ; 4 uses
  %.0693.i127 = phi ptr [ %.3696.i120.ph, %.backedge4976 ], [ %.30723.i225.ph, %bb.bop ] ; 2 uses
  %.0660.i128 = phi ptr [ %.3663.i121.ph, %.backedge4976 ], [ %.30690.i226.ph, %bb.bop ]
  %.0648.i129 = phi ptr [ %.3651.i122.ph, %.backedge4976 ], [ %.30.i227.ph, %bb.bop ] ; 4 uses
  %storemerge.i130 = getelementptr inbounds nuw i8, ptr %.pn.i123, i64 1 ; 2 uses
  store ptr %storemerge.i130, ptr %i.e, align 8, !tbaa !107
  %i.gsj = shl i64 %.0760.i125, 8
  %i.gsk = add i64 %i.gsj, 256
  %i.gsl = load i64, ptr %.0648.i129, align 8, !tbaa !99
  %i.gsm = and i64 %i.gsl, 255
  %i.gsn = or disjoint i64 %i.gsm, %i.gsk
  store i64 %i.gsn, ptr %.0648.i129, align 8, !tbaa !99
  %i.gso = getelementptr inbounds nuw i8, ptr %.0660.i128, i64 16 ; 3 uses
  %.not873.i131 = icmp ult ptr %i.gso, %.0693.i127
  br i1 %.not873.i131, label %bb.ajr, label %bb.ajq, !prof !62

bb.ajq:                                           ; preds = %.loopexit4975
  %i.gsp = lshr i64 %.0769.i124, 1
  %i.gsq = add i64 %i.gsp, %.0769.i124            ; 3 uses
  %i.gsr = shl i64 %.0769.i124, 4
  %i.gss = shl i64 %i.gsq, 4
  %i.gst = call ptr %.sroa.52178.0.copyload2180(ptr noundef %.sroa.312208.0.copyload2210, ptr noundef %.0726.i126, i64 noundef %i.gsr, i64 noundef %i.gss) #33, !inline_history !225 ; 5 uses
  %.not874.i132 = icmp eq ptr %i.gst, null
  br i1 %.not874.i132, label %bb.bqz, label %.thread4356

.thread4356:                                      ; preds = %bb.ajq
  %i.gsu = ptrtoint ptr %.0648.i129 to i64
  %i.gsv = ptrtoint ptr %.0726.i126 to i64        ; 2 uses
  %i.gsw = sub i64 %i.gsu, %i.gsv
  %i.gsx = ptrtoint ptr %i.gso to i64
  %i.gsy = sub i64 %i.gsx, %i.gsv
  %i.gsz = getelementptr inbounds nuw i8, ptr %i.gst, i64 %i.gsy
  %i.gta = getelementptr inbounds nuw i8, ptr %i.gst, i64 %i.gsw
  %i.gtb = getelementptr [16 x i8], ptr %i.gst, i64 %i.gsq
  %i.gtc = getelementptr i8, ptr %i.gtb, i64 -32
  %.pre7575.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !107
  br label %bb.ajr

bb.ajr:                                           ; preds = %.thread4356, %.loopexit4975
  %.pre7575.pre = phi ptr [ %.pre7575.pre.pre, %.thread4356 ], [ %storemerge.i130, %.loopexit4975 ]
  %.1770.i141 = phi i64 [ %i.gsq, %.thread4356 ], [ %.0769.i124, %.loopexit4975 ]
  %.2728.i142 = phi ptr [ %i.gst, %.thread4356 ], [ %.0726.i126, %.loopexit4975 ]
  %.2695.i143 = phi ptr [ %i.gtc, %.thread4356 ], [ %.0693.i127, %.loopexit4975 ]
  %.2662.i144 = phi ptr [ %i.gsz, %.thread4356 ], [ %i.gso, %.loopexit4975 ] ; 5 uses
  %.2650.i145 = phi ptr [ %i.gta, %.thread4356 ], [ %.0648.i129, %.loopexit4975 ]
  store i64 6, ptr %.2662.i144, align 8, !tbaa !99
  %i.gtd = ptrtoint ptr %.2662.i144 to i64
  %i.gte = ptrtoint ptr %.2650.i145 to i64
  %i.gtf = sub i64 %i.gtd, %i.gte
  %i.gtg = getelementptr inbounds nuw i8, ptr %.2662.i144, i64 8
  store i64 %i.gtf, ptr %i.gtg, align 8, !tbaa !100
  br label %.preheader4973

.preheader4973:                                   ; preds = %bb.ajp, %bb.ajr, %bb.axu
  %.pre7575.a = phi ptr [ %i.gsf, %bb.ajp ], [ %.pre7575.pre, %bb.ajr ], [ %i.jya, %bb.axu ]
  %.2771.i117.ph = phi i64 [ %i.gry, %bb.ajp ], [ %.1770.i141, %bb.ajr ], [ %.10779.i181.ph, %bb.axu ] ; 32 uses
  %.1761.i118.ph = phi i64 [ 0, %bb.ajp ], [ 0, %bb.ajr ], [ %.2762.i182.ph, %bb.axu ] ; 11 uses
  %.3729.i119.ph = phi ptr [ %i.gsa, %bb.ajp ], [ %.2728.i142, %bb.ajr ], [ %.18744.i183.ph, %bb.axu ] ; 38 uses
  %.3696.i120.ph = phi ptr [ %i.gsc, %bb.ajp ], [ %.2695.i143, %bb.ajr ], [ %.18711.i184.ph, %bb.axu ] ; 18 uses
  %.3663.i121.ph = phi ptr [ %i.gsd, %bb.ajp ], [ %.2662.i144, %bb.ajr ], [ %.18678.i185.ph, %bb.axu ] ; 11 uses
  %.3651.i122.ph = phi ptr [ %i.gsd, %bb.ajp ], [ %.2662.i144, %bb.ajr ], [ %.18.i186.ph, %bb.axu ] ; 18 uses
  %i.gth = and i32 %2, 16
  %.not4722 = icmp eq i32 %i.gth, 0               ; 7 uses
  %i.gti = and i32 %2, 4096
  %.not4726 = icmp eq i32 %i.gti, 0
  %i.gtj = and i32 %2, 2056
  %.not4727 = icmp eq i32 %i.gtj, 0
  br label %.backedge4976

.backedge4976:                                    ; preds = %.backedge4976.backedge, %.preheader4973
  %.promoted6294 = phi ptr [ %.pre7575.a, %.preheader4973 ], [ %.promoted6294.be, %.backedge4976.backedge ] ; 13 uses
  %i.gtk = load i8, ptr %.promoted6294, align 1, !tbaa !100 ; 6 uses
  switch i8 %i.gtk, label %bb.ajs [
    i8 123, label %.loopexit4974
    i8 91, label %.loopexit4975
  ]

bb.ajs:                                           ; preds = %.backedge4976
  %i.gtl = zext i8 %i.gtk to i64
  %i.gtm = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.gtl
  %i.gtn = load i8, ptr %i.gtm, align 1, !tbaa !100 ; 3 uses
  %i.gto = and i8 %i.gtn, 16
  %.not4711 = icmp eq i8 %i.gto, 0
  br i1 %.not4711, label %bb.ase, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  %i.gtp = getelementptr inbounds nuw i8, ptr %.3663.i121.ph, i64 16 ; 3 uses
  %.not870.i337 = icmp ult ptr %i.gtp, %.3696.i120.ph
  br i1 %.not870.i337, label %bb.ajv, label %bb.aju, !prof !62

bb.aju:                                           ; preds = %bb.ajt
  %i.gtq = lshr i64 %.2771.i117.ph, 1
  %i.gtr = add i64 %i.gtq, %.2771.i117.ph         ; 3 uses
  %i.gts = shl i64 %.2771.i117.ph, 4
  %i.gtt = shl i64 %i.gtr, 4
  %i.gtu = call ptr %.sroa.52178.0.copyload2180(ptr noundef %.sroa.312208.0.copyload2210, ptr noundef %.3729.i119.ph, i64 noundef %i.gts, i64 noundef %i.gtt) #33, !inline_history !225 ; 5 uses
  %.not871.i338 = icmp eq ptr %i.gtu, null
  br i1 %.not871.i338, label %bb.bqz, label %.thread4362

.thread4362:                                      ; preds = %bb.aju
  %i.gtv = ptrtoint ptr %.3651.i122.ph to i64
  %i.gtw = ptrtoint ptr %.3729.i119.ph to i64     ; 2 uses
  %i.gtx = sub i64 %i.gtv, %i.gtw
  %i.gty = ptrtoint ptr %i.gtp to i64
  %i.gtz = sub i64 %i.gty, %i.gtw
  %i.gua = getelementptr inbounds nuw i8, ptr %i.gtu, i64 %i.gtz
  %i.gub = getelementptr inbounds nuw i8, ptr %i.gtu, i64 %i.gtx
  %i.guc = getelementptr [16 x i8], ptr %i.gtu, i64 %i.gtr
  %i.gud = getelementptr i8, ptr %i.guc, i64 -32
  %.pre7576.a = load ptr, ptr %i.e, align 8, !tbaa !107
  br label %bb.ajv

bb.ajv:                                           ; preds = %.thread4362, %bb.ajt
  %i.gue = phi ptr [ %.pre7576.a, %.thread4362 ], [ %.promoted6294, %bb.ajt ] ; 21 uses
  %.3772.i344 = phi i64 [ %i.gtr, %.thread4362 ], [ %.2771.i117.ph, %bb.ajt ] ; 34 uses
  %.5731.i345 = phi ptr [ %i.gtu, %.thread4362 ], [ %.3729.i119.ph, %bb.ajt ] ; 38 uses
  %.5698.i346 = phi ptr [ %i.gud, %.thread4362 ], [ %.3696.i120.ph, %bb.ajt ] ; 34 uses
  %.5665.i347 = phi ptr [ %i.gua, %.thread4362 ], [ %i.gtp, %bb.ajt ] ; 126 uses
  %.5653.i348 = phi ptr [ %i.gub, %.thread4362 ], [ %.3651.i122.ph, %bb.ajt ] ; 34 uses
  %i.guf = add i64 %.1761.i118.ph, 1              ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 0, ptr %i.d, align 4, !tbaa !119
  %i.gug = and i32 %2, 32
  %.not4730 = icmp eq i32 %i.gug, 0
  br i1 %.not4730, label %bb.ajw, label %.split4389, !prof !62

.split4389:                                       ; preds = %bb.ajv
  %i.guh = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, i32 noundef %2, ptr noundef %.5665.i347, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br i1 %i.guh, label %.preheader4979, label %bb.bqv, !prof !137

bb.ajw:                                           ; preds = %bb.ajv
  %i.gui = load i8, ptr %i.gue, align 1, !tbaa !100 ; 3 uses
  %i.guj = icmp eq i8 %i.gui, 45                  ; 57 uses
  %i.guk = zext i1 %i.guj to i64
  %i.gul = getelementptr inbounds nuw i8, ptr %i.gue, i64 %i.guk ; 6 uses
  %i.gum = load i8, ptr %i.gul, align 1, !tbaa !100 ; 4 uses
  %i.gun = add i8 %i.gum, -49
  %i.guo = icmp ult i8 %i.gun, 9
  br i1 %i.guo, label %._crit_edge6298, label %.lr.ph6297, !prof !120

.lr.ph6297:                                       ; preds = %bb.ajw
  %i.gup = and i32 %2, 512
  %.not6522 = icmp ne i32 %i.gup, 0               ; 3 uses
  br i1 %.not6522, label %.lr.ph6297.split.us, label %.lr.ph6297.split, !prof !45

.lr.ph6297.split.us:                              ; preds = %.lr.ph6297, %bb.ajy
  %i.guq = phi i8 [ %i.guu, %bb.ajy ], [ %i.gum, %.lr.ph6297 ] ; 3 uses
  %.0903.i6295.us = phi ptr [ %i.gut, %bb.ajy ], [ %i.gul, %.lr.ph6297 ] ; 9 uses
  %.not.i349.us = icmp eq i8 %i.guq, 48
  br i1 %.not.i349.us, label %.split6302.us, label %bb.ajx, !prof !62

bb.ajx:                                           ; preds = %.lr.ph6297.split.us
  %i.gur = icmp eq i8 %i.guq, 43
  %i.gus = icmp eq ptr %.0903.i6295.us, %i.gue
  %or.cond990.i.us = select i1 %i.gur, i1 %i.gus, i1 false
  br i1 %or.cond990.i.us, label %bb.ajy, label %.split6305.us

bb.ajy:                                           ; preds = %bb.ajx
  %i.gut = getelementptr inbounds nuw i8, ptr %.0903.i6295.us, i64 1 ; 3 uses
  %i.guu = load i8, ptr %i.gut, align 1, !tbaa !100 ; 3 uses
  %i.guv = add i8 %i.guu, -49
  %i.guw = icmp ult i8 %i.guv, 9
  br i1 %i.guw, label %._crit_edge6298, label %.lr.ph6297.split.us, !prof !121, !llvm.loop !5

.lr.ph6297.split:                                 ; preds = %.lr.ph6297
  %.not.i349 = icmp eq i8 %i.gum, 48
  br i1 %.not.i349, label %.split6302.us.thread, label %.loopexit4970, !prof !62

.split6305.us:                                    ; preds = %bb.ajx
  %i.gux = icmp eq i8 %i.guq, 46
  br i1 %i.gux, label %bb.ajz, label %.loopexit4970

bb.ajz:                                           ; preds = %.split6305.us
  %i.guy = getelementptr inbounds nuw i8, ptr %.0903.i6295.us, i64 1
  %i.guz = load i8, ptr %i.guy, align 1, !tbaa !100 ; 2 uses
  %i.gva = add i8 %i.guz, -48
  %i.gvb = icmp ult i8 %i.gva, 10
  br i1 %i.gvb, label %.thread8269, label %.loopexit4970

.thread8269:                                      ; preds = %bb.ajz
  %i.gvc = getelementptr inbounds nuw i8, ptr %.0903.i6295.us, i64 1
  br label %.preheader4969

.loopexit4970:                                    ; preds = %.lr.ph6297.split, %bb.ajz, %.split6305.us
  %.0903.i5170 = phi ptr [ %.0903.i6295.us, %.split6305.us ], [ %.0903.i6295.us, %bb.ajz ], [ %i.gul, %.lr.ph6297.split ]
  br i1 %.not4722, label %read_inf_or_nan.exit847.thread, label %bb.aka, !prof !62

bb.aka:                                           ; preds = %.loopexit4970
  %i.gvd = icmp ne i8 %i.gui, 43
  %brmerge4604 = or i1 %.not6522, %i.gvd
  br i1 %brmerge4604, label %bb.akb, label %read_inf_or_nan.exit847.thread, !prof !122

bb.akb:                                           ; preds = %bb.aka
  %i.gve = zext i8 %i.gui to i64
  %i.gvf = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.gve
  %i.gvg = load i8, ptr %i.gvf, align 1, !tbaa !100 ; 2 uses
  %i.gvh = and i8 %i.gvg, 1
  %i.gvi = zext nneg i8 %i.gvh to i64
  %i.gvj = getelementptr inbounds nuw i8, ptr %i.gue, i64 %i.gvi ; 9 uses
  %i.gvk = load i8, ptr %i.gvj, align 1, !tbaa !100
  %i.gvl = and i8 %i.gvk, -33
  %i.gvm = icmp eq i8 %i.gvl, 73
  br i1 %i.gvm, label %bb.akc, label %._crit_edge7581

bb.akc:                                           ; preds = %bb.akb
  %i.gvn = getelementptr inbounds nuw i8, ptr %i.gvj, i64 1
  %i.gvo = load i8, ptr %i.gvn, align 1, !tbaa !100
  %i.gvp = and i8 %i.gvo, -33
  %i.gvq = icmp eq i8 %i.gvp, 78
  br i1 %i.gvq, label %bb.akd, label %._crit_edge7581

bb.akd:                                           ; preds = %bb.akc
  %i.gvr = getelementptr inbounds nuw i8, ptr %i.gvj, i64 2
  %i.gvs = load i8, ptr %i.gvr, align 1, !tbaa !100
  %i.gvt = and i8 %i.gvs, -33
  %i.gvu = icmp eq i8 %i.gvt, 70
  br i1 %i.gvu, label %bb.ake, label %._crit_edge7581

bb.ake:                                           ; preds = %bb.akd
  %i.gvv = getelementptr inbounds nuw i8, ptr %i.gvj, i64 3 ; 2 uses
  %i.gvw = load i8, ptr %i.gvv, align 1, !tbaa !100
  %i.gvx = and i8 %i.gvw, -33
  %i.gvy = icmp eq i8 %i.gvx, 73
  br i1 %i.gvy, label %bb.akf, label %read_inf.exit1474

bb.akf:                                           ; preds = %bb.ake
  %i.gvz = getelementptr inbounds nuw i8, ptr %i.gvj, i64 4
  %i.gwa = load i8, ptr %i.gvz, align 1, !tbaa !100
  %i.gwb = and i8 %i.gwa, -33
  %i.gwc = icmp eq i8 %i.gwb, 78
  br i1 %i.gwc, label %bb.akg, label %._crit_edge7581

bb.akg:                                           ; preds = %bb.akf
  %i.gwd = getelementptr inbounds nuw i8, ptr %i.gvj, i64 5
  %i.gwe = load i8, ptr %i.gwd, align 1, !tbaa !100
  %i.gwf = and i8 %i.gwe, -33
  %i.gwg = icmp eq i8 %i.gwf, 73
  br i1 %i.gwg, label %bb.akh, label %._crit_edge7581

bb.akh:                                           ; preds = %bb.akg
  %i.gwh = getelementptr inbounds nuw i8, ptr %i.gvj, i64 6
  %i.gwi = load i8, ptr %i.gwh, align 1, !tbaa !100
  %i.gwj = and i8 %i.gwi, -33
  %i.gwk = icmp eq i8 %i.gwj, 84
  br i1 %i.gwk, label %bb.aki, label %._crit_edge7581

bb.aki:                                           ; preds = %bb.akh
  %i.gwl = getelementptr inbounds nuw i8, ptr %i.gvj, i64 7
  %i.gwm = load i8, ptr %i.gwl, align 1, !tbaa !100
  %i.gwn = and i8 %i.gwm, -33
  %i.gwo = icmp eq i8 %i.gwn, 89
  br i1 %i.gwo, label %bb.akj, label %._crit_edge7581

bb.akj:                                           ; preds = %bb.aki
  %i.gwp = getelementptr inbounds nuw i8, ptr %i.gvj, i64 8
  br label %read_inf.exit1474

read_inf.exit1474:                                ; preds = %bb.akj, %bb.ake
  %.0.i1473 = phi ptr [ %i.gwp, %bb.akj ], [ %i.gvv, %bb.ake ]
  store ptr %.0.i1473, ptr %i.e, align 8, !tbaa !107
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.gwq = select i1 %i.guj, i64 -4503599627370496, i64 9218868437227405312
  %i.gwr = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.gwq, ptr %i.gwr, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

._crit_edge7581:                                  ; preds = %bb.akf, %bb.akb, %bb.aki, %bb.akh, %bb.akg, %bb.akd, %bb.akc
  %i.gws = and i8 %i.gvg, 1
  %i.gwt = zext nneg i8 %i.gws to i64
  %i.gwu = getelementptr inbounds nuw i8, ptr %i.gue, i64 %i.gwt ; 4 uses
  %i.gwv = load i8, ptr %i.gwu, align 1, !tbaa !100
  %i.gww = and i8 %i.gwv, -33
  %i.gwx = icmp eq i8 %i.gww, 78
  br i1 %i.gwx, label %bb.akk, label %read_inf_or_nan.exit847.thread

bb.akk:                                           ; preds = %._crit_edge7581
  %i.gwy = getelementptr inbounds nuw i8, ptr %i.gwu, i64 1
  %i.gwz = load i8, ptr %i.gwy, align 1, !tbaa !100
  %i.gxa = and i8 %i.gwz, -33
  %i.gxb = icmp eq i8 %i.gxa, 65
  br i1 %i.gxb, label %bb.akl, label %read_inf_or_nan.exit847.thread

bb.akl:                                           ; preds = %bb.akk
  %i.gxc = getelementptr inbounds nuw i8, ptr %i.gwu, i64 2
  %i.gxd = load i8, ptr %i.gxc, align 1, !tbaa !100
  %i.gxe = and i8 %i.gxd, -33
  %i.gxf = icmp eq i8 %i.gxe, 78
  br i1 %i.gxf, label %.split4407, label %read_inf_or_nan.exit847.thread

.split4407:                                       ; preds = %bb.akl
  %i.gxg = getelementptr inbounds nuw i8, ptr %i.gwu, i64 3
  store ptr %i.gxg, ptr %i.e, align 8, !tbaa !107
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.gxh = select i1 %i.guj, i64 -2251799813685248, i64 9221120237041090560
  %i.gxi = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.gxh, ptr %i.gxi, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

read_inf_or_nan.exit847.thread:                   ; preds = %bb.aka, %._crit_edge7581, %bb.akk, %bb.akl, %.loopexit4970
  store ptr @.str.89, ptr %i.f, align 8, !tbaa !107
  store ptr %.0903.i5170, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread

.split6302.us:                                    ; preds = %.lr.ph6297.split.us
  %i.gxj = getelementptr inbounds nuw i8, ptr %.0903.i6295.us, i64 1 ; 3 uses
  %i.gxk = load i8, ptr %i.gxj, align 1, !tbaa !100 ; 3 uses
  %i.gxl = zext i8 %i.gxk to i64
  %i.gxm = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.gxl
  %i.gxn = load i8, ptr %i.gxm, align 1, !tbaa !100
  %i.gxo = and i8 %i.gxn, 26
  %.not4732 = icmp eq i8 %i.gxo, 0
  br i1 %.not4732, label %bb.akm, label %bb.akn, !prof !62

.split6302.us.thread:                             ; preds = %.lr.ph6297.split
  %i.gxp = getelementptr inbounds nuw i8, ptr %i.gul, i64 1 ; 3 uses
  %i.gxq = load i8, ptr %i.gxp, align 1, !tbaa !100 ; 2 uses
  %i.gxr = zext i8 %i.gxq to i64
  %i.gxs = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.gxr
  %i.gxt = load i8, ptr %i.gxs, align 1, !tbaa !100
  %i.gxu = and i8 %i.gxt, 26
  %.not47328265 = icmp eq i8 %i.gxu, 0
  br i1 %.not47328265, label %.split4405, label %bb.akn, !prof !62

bb.akm:                                           ; preds = %.split6302.us
  %i.gxv = and i8 %i.gxk, -33
  %i.gxw = icmp eq i8 %i.gxv, 88
  br i1 %i.gxw, label %.split4406, label %.split4405, !prof !138

.split4406:                                       ; preds = %bb.akm
  %i.gxx = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, i32 noundef %2, ptr noundef %.5665.i347, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br i1 %i.gxx, label %.preheader4979, label %bb.bqv, !prof !137

.split4405:                                       ; preds = %.split6302.us.thread, %bb.akm
  %i.gxy = phi ptr [ %i.gxj, %bb.akm ], [ %i.gxp, %.split6302.us.thread ]
  %i.gxz = select i1 %i.guj, i64 12, i64 4
  store i64 %i.gxz, ptr %.5665.i347, align 8, !tbaa !99
  %i.gya = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 0, ptr %i.gya, align 8, !tbaa !100
  store ptr %i.gxy, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

bb.akn:                                           ; preds = %.split6302.us.thread, %.split6302.us
  %i.gyb = phi i8 [ %i.gxq, %.split6302.us.thread ], [ %i.gxk, %.split6302.us ] ; 3 uses
  %i.gyc = phi ptr [ %i.gxp, %.split6302.us.thread ], [ %i.gxj, %.split6302.us ] ; 5 uses
  %.us-phi63038266 = phi ptr [ %i.gul, %.split6302.us.thread ], [ %.0903.i6295.us, %.split6302.us ]
  %i.gyd = icmp eq i8 %i.gyb, 46
  br i1 %i.gyd, label %bb.ako, label %bb.aks, !prof !62

bb.ako:                                           ; preds = %bb.akn
  %.phi.trans.insert7583 = getelementptr inbounds nuw i8, ptr %.us-phi63038266, i64 2
  %.pre7584 = load i8, ptr %.phi.trans.insert7583, align 1, !tbaa !100 ; 3 uses
  %.pre7612 = add i8 %.pre7584, -48
  %i.gye = icmp ult i8 %.pre7612, 10
  %i.gyf = getelementptr inbounds nuw i8, ptr %i.gyc, i64 1 ; 4 uses
  br i1 %i.gye, label %.preheader4969, label %bb.akp, !prof !262

.preheader4969:                                   ; preds = %.thread8269, %bb.ako
  %i.gyg = phi ptr [ %i.gvc, %.thread8269 ], [ %i.gyf, %bb.ako ] ; 2 uses
  %.1904.i8272 = phi ptr [ %.0903.i6295.us, %.thread8269 ], [ %i.gyc, %bb.ako ]
  %i.gyh = phi i8 [ %i.guz, %.thread8269 ], [ %.pre7584, %bb.ako ] ; 2 uses
  %i.gyi = icmp eq i8 %i.gyh, 48
  br i1 %i.gyi, label %.lr.ph6312, label %._crit_edge6313.thread, !prof !123

bb.akp:                                           ; preds = %bb.ako
  br i1 %.not6522, label %bb.akq, label %bb.akr, !prof !45

bb.akq:                                           ; preds = %bb.akp
  %i.gyj = and i8 %.pre7584, -33
  %i.gyk = icmp eq i8 %i.gyj, 69
  br i1 %i.gyk, label %bb.apo, label %.split4417

.split4417:                                       ; preds = %bb.akq
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.gyl = select i1 %i.guj, i64 -9223372036854775808, i64 0
  %i.gym = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.gyl, ptr %i.gym, align 8, !tbaa !100
  store ptr %i.gyf, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

bb.akr:                                           ; preds = %bb.akp
  store ptr @.str.90, ptr %i.f, align 8, !tbaa !107
  store ptr %i.gyf, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread

.lr.ph6312:                                       ; preds = %.preheader4969, %.lr.ph6312
  %.2905.i6311 = phi ptr [ %i.gyn, %.lr.ph6312 ], [ %i.gyg, %.preheader4969 ]
  %i.gyn = getelementptr inbounds nuw i8, ptr %.2905.i6311, i64 1 ; 4 uses
  %.pr4372 = load i8, ptr %i.gyn, align 1, !tbaa !100 ; 4 uses
  %i.gyo = icmp eq i8 %.pr4372, 48
  br i1 %i.gyo, label %.lr.ph6312, label %._crit_edge6313, !prof !124, !llvm.loop !6

._crit_edge6313:                                  ; preds = %.lr.ph6312
  %.pre7614.a = add i8 %.pr4372, -48
  %i.gyp = icmp ult i8 %.pre7614.a, 10
  br i1 %i.gyp, label %._crit_edge6313.thread, label %.thread8278, !prof !125

._crit_edge6313.thread:                           ; preds = %.preheader4969, %._crit_edge6313
  %.2905.i.lcssa8277 = phi ptr [ %i.gyn, %._crit_edge6313 ], [ %i.gyg, %.preheader4969 ]
  %.lcssa51628276 = phi i8 [ %.pr4372, %._crit_edge6313 ], [ %i.gyh, %.preheader4969 ]
  %i.gyq = zext nneg i8 %.lcssa51628276 to i64
  %i.gyr = add nsw i64 %i.gyq, -48
  %i.gys = getelementptr inbounds i8, ptr %.2905.i.lcssa8277, i64 -1
  br label %bb.and

bb.aks:                                           ; preds = %bb.akn
  %.pre7658.a = add i8 %i.gyb, -48
  %i.gyt = icmp ult i8 %.pre7658.a, 10
  br i1 %i.gyt, label %bb.akt, label %.thread8278, !prof !125

bb.akt:                                           ; preds = %bb.aks
  store ptr @.str.91, ptr %i.f, align 8, !tbaa !107
  %i.gyu = getelementptr inbounds i8, ptr %i.gyc, i64 -1
  store ptr %i.gyu, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread

.thread8278:                                      ; preds = %._crit_edge6313, %bb.aks
  %.3906.i8281 = phi ptr [ %i.gyc, %bb.aks ], [ %i.gyn, %._crit_edge6313 ] ; 3 uses
  %i.gyv = phi i8 [ %i.gyb, %bb.aks ], [ %.pr4372, %._crit_edge6313 ]
  %i.gyw = and i8 %i.gyv, -33
  %i.gyx = icmp eq i8 %i.gyw, 69
  br i1 %i.gyx, label %bb.aku, label %.split4409, !prof !45

bb.aku:                                           ; preds = %.thread8278
  %i.gyy = getelementptr inbounds nuw i8, ptr %.3906.i8281, i64 1
  %i.gyz = load i8, ptr %i.gyy, align 1, !tbaa !100
  %i.gza = zext i8 %i.gyz to i64
  %i.gzb = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.gza
  %i.gzc = load i8, ptr %i.gzb, align 1, !tbaa !100
  %i.gzd = trunc i8 %i.gzc to i1
  %i.gze = select i1 %i.gzd, i64 2, i64 1
  %i.gzf = getelementptr inbounds nuw i8, ptr %.3906.i8281, i64 %i.gze ; 3 uses
  %i.gzg = load i8, ptr %i.gzf, align 1, !tbaa !100
  %i.gzh = add i8 %i.gzg, -48
  %i.gzi = icmp ult i8 %i.gzh, 10
  br i1 %i.gzi, label %.preheader4968, label %bb.akv, !prof !62

bb.akv:                                           ; preds = %bb.aku
  store ptr @.str.92, ptr %i.f, align 8, !tbaa !107
  store ptr %i.gzf, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread

.preheader4968:                                   ; preds = %bb.aku, %.preheader4968
  %.4907.i = phi ptr [ %i.gzj, %.preheader4968 ], [ %i.gzf, %bb.aku ]
  %i.gzj = getelementptr inbounds nuw i8, ptr %.4907.i, i64 1 ; 3 uses
  %i.gzk = load i8, ptr %i.gzj, align 1, !tbaa !100
  %i.gzl = add i8 %i.gzk, -48
  %i.gzm = icmp ult i8 %i.gzl, 10
  br i1 %i.gzm, label %.preheader4968, label %.split4409, !llvm.loop !7

.split4409:                                       ; preds = %.preheader4968, %.thread8278
  %.5908.i = phi ptr [ %.3906.i8281, %.thread8278 ], [ %i.gzj, %.preheader4968 ]
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.gzn = select i1 %i.guj, i64 -9223372036854775808, i64 0
  %i.gzo = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.gzn, ptr %i.gzo, align 8, !tbaa !100
  store ptr %.5908.i, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

._crit_edge6298:                                  ; preds = %bb.ajy, %bb.ajw
  %.0903.i.lcssa = phi ptr [ %i.gul, %bb.ajw ], [ %i.gut, %bb.ajy ] ; 39 uses
  %.lcssa5163 = phi i8 [ %i.gum, %bb.ajw ], [ %i.guu, %bb.ajy ]
  %i.gzp = zext nneg i8 %.lcssa5163 to i64        ; 2 uses
  %i.gzq = add nsw i64 %i.gzp, -48                ; 4 uses
  %i.gzr = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 1 ; 6 uses
  %i.gzs = load i8, ptr %i.gzr, align 1, !tbaa !100 ; 2 uses
  %i.gzt = zext i8 %i.gzs to i64                  ; 2 uses
  %i.gzu = add nsw i64 %i.gzt, -48                ; 2 uses
  %i.gzv = icmp ult i64 %i.gzu, 10
  br i1 %i.gzv, label %bb.akw, label %bb.alq, !prof !62

bb.akw:                                           ; preds = %._crit_edge6298
  %i.gzw = mul nuw nsw i64 %i.gzq, 10
  %i.gzx = add nuw nsw i64 %i.gzu, %i.gzw         ; 5 uses
  %i.gzy = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 2 ; 6 uses
  %i.gzz = load i8, ptr %i.gzy, align 1, !tbaa !100 ; 2 uses
  %i.haa = zext i8 %i.gzz to i64                  ; 2 uses
  %i.hab = add nsw i64 %i.haa, -48                ; 2 uses
  %i.hac = icmp ult i64 %i.hab, 10
  br i1 %i.hac, label %bb.akx, label %bb.als, !prof !62

bb.akx:                                           ; preds = %bb.akw
  %i.had = mul nuw nsw i64 %i.gzx, 10
  %i.hae = add nuw nsw i64 %i.hab, %i.had         ; 5 uses
  %i.haf = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 3 ; 6 uses
  %i.hag = load i8, ptr %i.haf, align 1, !tbaa !100 ; 2 uses
  %i.hah = zext i8 %i.hag to i64                  ; 2 uses
  %i.hai = add nsw i64 %i.hah, -48                ; 2 uses
  %i.haj = icmp ult i64 %i.hai, 10
  br i1 %i.haj, label %bb.aky, label %bb.alu, !prof !62

bb.aky:                                           ; preds = %bb.akx
  %i.hak = mul nuw nsw i64 %i.hae, 10
  %i.hal = add nuw nsw i64 %i.hai, %i.hak         ; 5 uses
  %i.ham = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 4 ; 6 uses
  %i.han = load i8, ptr %i.ham, align 1, !tbaa !100 ; 2 uses
  %i.hao = zext i8 %i.han to i64                  ; 2 uses
  %i.hap = add nsw i64 %i.hao, -48                ; 2 uses
  %i.haq = icmp ult i64 %i.hap, 10
  br i1 %i.haq, label %bb.akz, label %bb.alw, !prof !62

bb.akz:                                           ; preds = %bb.aky
  %i.har = mul nuw nsw i64 %i.hal, 10
  %i.has = add nuw nsw i64 %i.hap, %i.har         ; 5 uses
  %i.hat = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 5 ; 6 uses
  %i.hau = load i8, ptr %i.hat, align 1, !tbaa !100 ; 2 uses
  %i.hav = zext i8 %i.hau to i64                  ; 2 uses
  %i.haw = add nsw i64 %i.hav, -48                ; 2 uses
  %i.hax = icmp ult i64 %i.haw, 10
  br i1 %i.hax, label %bb.ala, label %bb.aly, !prof !62

bb.ala:                                           ; preds = %bb.akz
  %i.hay = mul nuw nsw i64 %i.has, 10
  %i.haz = add nuw nsw i64 %i.haw, %i.hay         ; 5 uses
  %i.hba = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 6 ; 6 uses
  %i.hbb = load i8, ptr %i.hba, align 1, !tbaa !100 ; 2 uses
  %i.hbc = zext i8 %i.hbb to i64                  ; 2 uses
  %i.hbd = add nsw i64 %i.hbc, -48                ; 2 uses
  %i.hbe = icmp ult i64 %i.hbd, 10
  br i1 %i.hbe, label %bb.alb, label %bb.ama, !prof !62

bb.alb:                                           ; preds = %bb.ala
  %i.hbf = mul nuw nsw i64 %i.haz, 10
  %i.hbg = add nuw nsw i64 %i.hbd, %i.hbf         ; 5 uses
  %i.hbh = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 7 ; 6 uses
  %i.hbi = load i8, ptr %i.hbh, align 1, !tbaa !100 ; 2 uses
  %i.hbj = zext i8 %i.hbi to i64                  ; 2 uses
  %i.hbk = add nsw i64 %i.hbj, -48                ; 2 uses
  %i.hbl = icmp ult i64 %i.hbk, 10
  br i1 %i.hbl, label %bb.alc, label %bb.amc, !prof !62

bb.alc:                                           ; preds = %bb.alb
  %i.hbm = mul nuw nsw i64 %i.hbg, 10
  %i.hbn = add nuw nsw i64 %i.hbk, %i.hbm         ; 5 uses
  %i.hbo = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 8 ; 6 uses
  %i.hbp = load i8, ptr %i.hbo, align 1, !tbaa !100 ; 2 uses
  %i.hbq = zext i8 %i.hbp to i64                  ; 2 uses
  %i.hbr = add nsw i64 %i.hbq, -48                ; 2 uses
  %i.hbs = icmp ult i64 %i.hbr, 10
  br i1 %i.hbs, label %bb.ald, label %bb.amf, !prof !62

bb.ald:                                           ; preds = %bb.alc
  %i.hbt = mul nuw nsw i64 %i.hbn, 10
  %i.hbu = add nuw nsw i64 %i.hbr, %i.hbt         ; 5 uses
  %i.hbv = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 9 ; 6 uses
  %i.hbw = load i8, ptr %i.hbv, align 1, !tbaa !100 ; 2 uses
  %i.hbx = zext i8 %i.hbw to i64                  ; 2 uses
  %i.hby = add nsw i64 %i.hbx, -48                ; 2 uses
  %i.hbz = icmp ult i64 %i.hby, 10
  br i1 %i.hbz, label %bb.ale, label %bb.ami, !prof !62

bb.ale:                                           ; preds = %bb.ald
  %i.hca = mul nuw nsw i64 %i.hbu, 10
  %i.hcb = add nuw nsw i64 %i.hby, %i.hca         ; 5 uses
  %i.hcc = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 10 ; 6 uses
  %i.hcd = load i8, ptr %i.hcc, align 1, !tbaa !100 ; 2 uses
  %i.hce = zext i8 %i.hcd to i64                  ; 2 uses
  %i.hcf = add nsw i64 %i.hce, -48                ; 2 uses
  %i.hcg = icmp ult i64 %i.hcf, 10
  br i1 %i.hcg, label %bb.alf, label %bb.aml, !prof !62

bb.alf:                                           ; preds = %bb.ale
  %i.hch = mul nuw nsw i64 %i.hcb, 10
  %i.hci = add nuw nsw i64 %i.hcf, %i.hch         ; 5 uses
end_hunk_2
begin_hunk_3_@yyjson_read_opts:bb.a
  %i.loj = getelementptr inbounds nuw i8, ptr %.24094, i64 12
  %.0.copyload.i1446 = load i16, ptr %i.lml, align 1
  store i16 %.0.copyload.i1446, ptr %i.loj, align 1
  %i.lok = getelementptr inbounds nuw i8, ptr %.24094, i64 14
  br label %byte_move_forward.exit1119thread-pre-split

bb.bga:                                           ; preds = %bb.bfq
  %i.lol = getelementptr inbounds nuw i8, ptr %.24094, i64 15
  br label %byte_move_forward.exit1119thread-pre-split

byte_move_forward.exit1119thread-pre-split:       ; preds = %bb.bfs, %bb.bft, %byte_move_forward.exit1112, %byte_move_forward.exit1109, %bb.bfu, %bb.bfv, %byte_move_forward.exit1102, %byte_move_forward.exit1099, %bb.bfw, %bb.bfx, %byte_move_forward.exit1092, %byte_move_forward.exit1089, %bb.bfy, %bb.bfz, %bb.bga
  %.94111.ph = phi ptr [ %i.lkd, %bb.bft ], [ %i.lkj, %byte_move_forward.exit1112 ], [ %i.lkp, %byte_move_forward.exit1109 ], [ %i.lkv, %bb.bfu ], [ %i.llb, %bb.bfv ], [ %i.llh, %byte_move_forward.exit1102 ], [ %i.lln, %byte_move_forward.exit1099 ], [ %i.llt, %bb.bfw ], [ %i.llz, %bb.bfx ], [ %i.lmf, %byte_move_forward.exit1092 ], [ %i.lml, %byte_move_forward.exit1089 ], [ %i.lmr, %bb.bfy ], [ %i.lmx, %bb.bfz ], [ %i.lnn, %bb.bfs ], [ %i.lnd, %bb.bga ] ; 2 uses
  %.34095.ph = phi ptr [ %i.lno, %bb.bft ], [ %i.lnp, %byte_move_forward.exit1112 ], [ %i.lnq, %byte_move_forward.exit1109 ], [ %i.lns, %bb.bfu ], [ %i.lnu, %bb.bfv ], [ %i.lnv, %byte_move_forward.exit1102 ], [ %i.lnw, %byte_move_forward.exit1099 ], [ %i.lny, %bb.bfw ], [ %i.loa, %bb.bfx ], [ %i.loc, %byte_move_forward.exit1092 ], [ %i.loe, %byte_move_forward.exit1089 ], [ %i.loh, %bb.bfy ], [ %i.lok, %bb.bfz ], [ %i.lnm, %bb.bfs ], [ %i.lol, %bb.bga ]
  %.pr8339 = load i8, ptr %.94111.ph, align 1, !tbaa !100
  br label %byte_move_forward.exit1119

byte_move_forward.exit1119:                       ; preds = %byte_move_forward.exit1119thread-pre-split, %read_uni_esc.exit1002
  %i.lom = phi i8 [ %.pr8339, %byte_move_forward.exit1119thread-pre-split ], [ %i.ljs, %read_uni_esc.exit1002 ] ; 2 uses
  %.94111 = phi ptr [ %.94111.ph, %byte_move_forward.exit1119thread-pre-split ], [ %.84110, %read_uni_esc.exit1002 ] ; 5 uses
  %.34095 = phi ptr [ %.34095.ph, %byte_move_forward.exit1119thread-pre-split ], [ %.24094, %read_uni_esc.exit1002 ] ; 3 uses
  %.not117.i921 = icmp sgt i8 %i.lom, -1
  br i1 %.not117.i921, label %.loopexit4990, label %.preheader4989

.preheader4989:                                   ; preds = %byte_move_forward.exit1119
  %storemerge119.i9226252 = load i32, ptr %.94111, align 1 ; 4 uses
  %i.lon = and i32 %storemerge119.i9226252, 12632304
  %i.loo = icmp eq i32 %i.lon, 8421600
  %i.lop = trunc i32 %storemerge119.i9226252 to i16 ; 2 uses
  br i1 %i.loo, label %.lr.ph6256, label %.critedge4.i923

.lr.ph6256:                                       ; preds = %.preheader4989, %bb.bgb
  %.0.copyload.i14337569.a = phi i16 [ %i.lov, %bb.bgb ], [ %i.lop, %.preheader4989 ] ; 2 uses
  %storemerge119.i9226255 = phi i32 [ %storemerge119.i922, %bb.bgb ], [ %storemerge119.i9226252, %.preheader4989 ] ; 4 uses
  %.440966254 = phi ptr [ %i.lor, %bb.bgb ], [ %.34095, %.preheader4989 ] ; 4 uses
  %.1041126253 = phi ptr [ %i.los, %bb.bgb ], [ %.94111, %.preheader4989 ] ; 3 uses
  %i.loq = and i32 %storemerge119.i9226255, 8207
  switch i32 %i.loq, label %bb.bgb [
    i32 8205, label %.critedge4.i923
    i32 0, label %.critedge4.i923
  ]

bb.bgb:                                           ; preds = %.lr.ph6256
  store i32 %storemerge119.i9226255, ptr %.440966254, align 1
  %i.lor = getelementptr inbounds nuw i8, ptr %.440966254, i64 3 ; 2 uses
  %i.los = getelementptr inbounds nuw i8, ptr %.1041126253, i64 3 ; 3 uses
  %storemerge119.i922 = load i32, ptr %i.los, align 1 ; 4 uses
  %i.lot = and i32 %storemerge119.i922, 12632304
  %i.lou = icmp eq i32 %i.lot, 8421600
  %i.lov = trunc i32 %storemerge119.i922 to i16   ; 2 uses
  br i1 %i.lou, label %.lr.ph6256, label %.critedge4.i923, !llvm.loop !20

.critedge4.i923:                                  ; preds = %bb.bgb, %.lr.ph6256, %.lr.ph6256, %.preheader4989
  %.0.copyload.i14337567.a = phi i16 [ %i.lop, %.preheader4989 ], [ %.0.copyload.i14337569.a, %.lr.ph6256 ], [ %.0.copyload.i14337569.a, %.lr.ph6256 ], [ %i.lov, %bb.bgb ]
  %.104112.lcssa = phi ptr [ %.94111, %.preheader4989 ], [ %.1041126253, %.lr.ph6256 ], [ %.1041126253, %.lr.ph6256 ], [ %i.los, %bb.bgb ] ; 3 uses
  %.44096.lcssa = phi ptr [ %.34095, %.preheader4989 ], [ %.440966254, %.lr.ph6256 ], [ %.440966254, %.lr.ph6256 ], [ %i.lor, %bb.bgb ] ; 3 uses
  %storemerge119.i922.lcssa = phi i32 [ %storemerge119.i9226252, %.preheader4989 ], [ %storemerge119.i9226255, %.lr.ph6256 ], [ %storemerge119.i9226255, %.lr.ph6256 ], [ %storemerge119.i922, %bb.bgb ] ; 5 uses
  %i.low = and i32 %storemerge119.i922.lcssa, 128
  %i.lox = icmp eq i32 %i.low, 0
  br i1 %i.lox, label %read_uni_esc.exit1002.backedge, label %.preheader4988

.preheader4988:                                   ; preds = %.critedge4.i923
  %i.loy = and i32 %storemerge119.i922.lcssa, 49376
  %i.loz = icmp eq i32 %i.loy, 32960
  %i.lpa = and i32 %storemerge119.i922.lcssa, 30
  %i.lpb = icmp ne i32 %i.lpa, 0
  %i.lpc = and i1 %i.loz, %i.lpb
  br i1 %i.lpc, label %.lr.ph6272, label %.preheader4987

.preheader4987.loopexit:                          ; preds = %.lr.ph6272
  %i.lpd = trunc i32 %.sroa.0.0.copyload.i952 to i16
  br label %.preheader4987

.preheader4987:                                   ; preds = %.preheader4987.loopexit, %.preheader4988
  %.0.copyload.i14337566 = phi i16 [ %.0.copyload.i14337567.a, %.preheader4988 ], [ %i.lpd, %.preheader4987.loopexit ] ; 2 uses
  %.114113.lcssa = phi ptr [ %.104112.lcssa, %.preheader4988 ], [ %i.lpn, %.preheader4987.loopexit ] ; 3 uses
  %.54097.lcssa = phi ptr [ %.44096.lcssa, %.preheader4988 ], [ %i.lpm, %.preheader4987.loopexit ] ; 3 uses
  %.sroa.173400.2.in.lcssa = phi i32 [ %storemerge119.i922.lcssa, %.preheader4988 ], [ %.sroa.0.0.copyload.i952, %.preheader4987.loopexit ] ; 5 uses
  %i.lpe = and i32 %.sroa.173400.2.in.lcssa, -1061109512
  %i.lpf = icmp ne i32 %i.lpe, -2139062032
  %i.lpg = and i32 %.sroa.173400.2.in.lcssa, 12295
  %.not120.i9246280 = icmp eq i32 %i.lpg, 0
  %or.cond121.i9256281 = or i1 %.not120.i9246280, %i.lpf
  br i1 %or.cond121.i9256281, label %.critedge6.i926, label %.lr.ph6286.preheader

.lr.ph6286.preheader:                             ; preds = %.preheader4987
  %i.lph = and i32 %.sroa.173400.2.in.lcssa, 4
  %i.lpi = icmp eq i32 %i.lph, 0
  %i.lpj = and i32 %.sroa.173400.2.in.lcssa, 12291
  %i.lpk = icmp eq i32 %i.lpj, 0
  %i.lpl = or i1 %i.lpi, %i.lpk
  br i1 %i.lpl, label %.lr.ph9985, label %.critedge6.i926

.lr.ph6272:                                       ; preds = %.preheader4988, %.lr.ph6272
  %.sroa.03365.26271.in = phi i32 [ %.sroa.0.0.copyload.i952, %.lr.ph6272 ], [ %storemerge119.i922.lcssa, %.preheader4988 ]
  %.540976270 = phi ptr [ %i.lpm, %.lr.ph6272 ], [ %.44096.lcssa, %.preheader4988 ] ; 2 uses
  %.1141136269 = phi ptr [ %i.lpn, %.lr.ph6272 ], [ %.104112.lcssa, %.preheader4988 ]
  %.sroa.03365.26271 = trunc i32 %.sroa.03365.26271.in to i16
  store i16 %.sroa.03365.26271, ptr %.540976270, align 1
  %i.lpm = getelementptr inbounds nuw i8, ptr %.540976270, i64 2 ; 2 uses
  %i.lpn = getelementptr inbounds nuw i8, ptr %.1141136269, i64 2 ; 3 uses
  %.sroa.0.0.copyload.i952 = load i32, ptr %i.lpn, align 1 ; 5 uses
  %i.lpo = and i32 %.sroa.0.0.copyload.i952, 49376
  %i.lpp = icmp eq i32 %i.lpo, 32960
  %i.lpq = and i32 %.sroa.0.0.copyload.i952, 30
  %i.lpr = icmp ne i32 %i.lpq, 0
  %i.lps = and i1 %i.lpp, %i.lpr
  br i1 %i.lps, label %.lr.ph6272, label %.preheader4987.loopexit, !llvm.loop !21

.lr.ph6286:                                       ; preds = %.lr.ph9985
  %i.lpt = and i32 %.sroa.0.0.copyload.i953, 4
  %i.lpu = icmp eq i32 %i.lpt, 0
  %i.lpv = and i32 %.sroa.0.0.copyload.i953, 12291
  %i.lpw = icmp eq i32 %i.lpv, 0
  %i.lpx = or i1 %i.lpu, %i.lpw
  br i1 %i.lpx, label %.lr.ph9985, label %.critedge6.i926.loopexit, !llvm.loop !22

.lr.ph9985:                                       ; preds = %.lr.ph6286.preheader, %.lr.ph6286
  %.12411462829984 = phi ptr [ %i.lpz, %.lr.ph6286 ], [ %.114113.lcssa, %.lr.ph6286.preheader ]
  %.6409862839983 = phi ptr [ %i.lpy, %.lr.ph6286 ], [ %.54097.lcssa, %.lr.ph6286.preheader ] ; 2 uses
  %.sroa.03365.0.insert.insert338962859982 = phi i32 [ %.sroa.0.0.copyload.i953, %.lr.ph6286 ], [ %.sroa.173400.2.in.lcssa, %.lr.ph6286.preheader ]
  store i32 %.sroa.03365.0.insert.insert338962859982, ptr %.6409862839983, align 1
  %i.lpy = getelementptr inbounds nuw i8, ptr %.6409862839983, i64 4 ; 3 uses
  %i.lpz = getelementptr inbounds nuw i8, ptr %.12411462829984, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i953 = load i32, ptr %i.lpz, align 1 ; 7 uses
  %i.lqa = and i32 %.sroa.0.0.copyload.i953, -1061109512
  %i.lqb = icmp ne i32 %i.lqa, -2139062032
  %i.lqc = and i32 %.sroa.0.0.copyload.i953, 12295
  %.not120.i924 = icmp eq i32 %i.lqc, 0
  %or.cond121.i925 = or i1 %.not120.i924, %i.lqb
  br i1 %or.cond121.i925, label %..critedge6.i926.loopexit_crit_edge, label %.lr.ph6286, !llvm.loop !22

..critedge6.i926.loopexit_crit_edge:              ; preds = %.lr.ph9985
  %i.lqd = trunc i32 %.sroa.0.0.copyload.i953 to i16
  br label %.critedge6.i926, !llvm.loop !22

.critedge6.i926.loopexit:                         ; preds = %.lr.ph6286
  %i.lqe = trunc i32 %.sroa.0.0.copyload.i953 to i16
  br label %.critedge6.i926

.critedge6.i926:                                  ; preds = %.critedge6.i926.loopexit, %.lr.ph6286.preheader, %..critedge6.i926.loopexit_crit_edge, %.preheader4987
  %.0.copyload.i14337564 = phi i16 [ %.0.copyload.i14337566, %.preheader4987 ], [ %i.lqd, %..critedge6.i926.loopexit_crit_edge ], [ %.0.copyload.i14337566, %.lr.ph6286.preheader ], [ %i.lqe, %.critedge6.i926.loopexit ]
  %.124114.lcssa = phi ptr [ %.114113.lcssa, %.preheader4987 ], [ %i.lpz, %..critedge6.i926.loopexit_crit_edge ], [ %.114113.lcssa, %.lr.ph6286.preheader ], [ %i.lpz, %.critedge6.i926.loopexit ] ; 4 uses
  %.64098.lcssa = phi ptr [ %.54097.lcssa, %.preheader4987 ], [ %i.lpy, %..critedge6.i926.loopexit_crit_edge ], [ %.54097.lcssa, %.lr.ph6286.preheader ], [ %i.lpy, %.critedge6.i926.loopexit ] ; 2 uses
  %i.lqf = icmp eq ptr %.94111, %.124114.lcssa
  br i1 %i.lqf, label %bb.bgc, label %read_uni_esc.exit1002.backedge, !prof !45

bb.bgc:                                           ; preds = %.critedge6.i926
  br i1 %.not4706, label %read_str_opt.exit942.thread.sink.split, label %bb.bfs, !prof !62

read_str_opt.exit927:                             ; preds = %bb.bdg, %.loopexit4990
  %.14103.lcssa.sink9161 = phi ptr [ %.04092, %.loopexit4990 ], [ %.14103, %bb.bdg ] ; 2 uses
  %.sink9157 = phi i64 [ 5, %.loopexit4990 ], [ 13, %bb.bdg ]
  %.64108.pn = phi ptr [ %.64108, %.loopexit4990 ], [ %.14103, %bb.bdg ]
  %i.lqg = ptrtoint ptr %.14103.lcssa.sink9161 to i64
  %i.lqh = ptrtoint ptr %i.kxi to i64
  %i.lqi = sub i64 %i.lqg, %i.lqh
  %i.lqj = shl i64 %i.lqi, 8
  %i.lqk = or disjoint i64 %i.lqj, %.sink9157
  store i64 %i.lqk, ptr %i.kxg, align 8, !tbaa !99
  %i.lql = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store ptr %i.kxi, ptr %i.lql, align 8, !tbaa !100
  store i8 0, ptr %.14103.lcssa.sink9161, align 1, !tbaa !100
  %storemerge4707 = getelementptr inbounds nuw i8, ptr %.64108.pn, i64 1
  store ptr %storemerge4707, ptr %i.e, align 8, !tbaa !107
  br label %.preheader4984

bb.bgd:                                           ; preds = %.lr.ph6094, %.backedge5014
  %i.lqm = phi i8 [ %i.kwl, %.lr.ph6094 ], [ %i.nxf, %.backedge5014 ] ; 6 uses
  %i.lqn = phi ptr [ %i.kwk, %.lr.ph6094 ], [ %i.nxg, %.backedge5014 ] ; 55 uses
  %i.lqo = zext i8 %i.lqm to i64                  ; 3 uses
  %i.lqp = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.lqo
  %i.lqq = load i8, ptr %i.lqp, align 1, !tbaa !100 ; 3 uses
  %i.lqr = and i8 %i.lqq, 16
  %.not4654 = icmp eq i8 %i.lqr, 0
  br i1 %.not4654, label %bb.bop, label %bb.bge

bb.bge:                                           ; preds = %bb.bgd
  %i.lqs = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 16 ; 81 uses
  %i.lqt = add i64 %.5765.i167.ph, 2              ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4, !tbaa !119
  %i.lqu = and i32 %2, 32
  %.not4666 = icmp eq i32 %i.lqu, 0
  br i1 %.not4666, label %bb.bgf, label %.split4538, !prof !62

.split4538:                                       ; preds = %bb.bge
  %i.lqv = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, i32 noundef %2, ptr noundef nonnull %i.lqs, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br i1 %i.lqv, label %.preheader4984, label %bb.bqv, !prof !137

bb.bgf:                                           ; preds = %bb.bge
  %i.lqw = icmp eq i8 %i.lqm, 45                  ; 56 uses
  %i.lqx = zext i1 %i.lqw to i64
  %i.lqy = getelementptr inbounds nuw i8, ptr %i.lqn, i64 %i.lqx ; 6 uses
  %i.lqz = load i8, ptr %i.lqy, align 1, !tbaa !100 ; 4 uses
  %i.lra = add i8 %i.lqz, -49
  %i.lrb = icmp ult i8 %i.lra, 9
  br i1 %i.lrb, label %._crit_edge6100, label %.lr.ph6099, !prof !120

.lr.ph6099:                                       ; preds = %bb.bgf
  %i.lrc = and i32 %2, 512
  %.not6514 = icmp ne i32 %i.lrc, 0               ; 4 uses
  br i1 %.not6514, label %.lr.ph6099.split.us, label %.lr.ph6099.split, !prof !45

.lr.ph6099.split.us:                              ; preds = %.lr.ph6099, %bb.bgh
  %i.lrd = phi i8 [ %i.lrh, %bb.bgh ], [ %i.lqz, %.lr.ph6099 ] ; 3 uses
  %.0903.i3856097.us = phi ptr [ %i.lrg, %bb.bgh ], [ %i.lqy, %.lr.ph6099 ] ; 9 uses
  %.not.i386.us = icmp eq i8 %i.lrd, 48
  br i1 %.not.i386.us, label %.split6104.us, label %bb.bgg, !prof !62

bb.bgg:                                           ; preds = %.lr.ph6099.split.us
  %i.lre = icmp eq i8 %i.lrd, 43
  %i.lrf = icmp eq ptr %.0903.i3856097.us, %i.lqn
  %or.cond990.i388.us = and i1 %i.lrf, %i.lre
  br i1 %or.cond990.i388.us, label %bb.bgh, label %.split6107.us

bb.bgh:                                           ; preds = %bb.bgg
  %i.lrg = getelementptr inbounds nuw i8, ptr %.0903.i3856097.us, i64 1 ; 3 uses
  %i.lrh = load i8, ptr %i.lrg, align 1, !tbaa !100 ; 3 uses
  %i.lri = add i8 %i.lrh, -49
  %i.lrj = icmp ult i8 %i.lri, 9
  br i1 %i.lrj, label %._crit_edge6100, label %.lr.ph6099.split.us, !prof !121, !llvm.loop !5

.lr.ph6099.split:                                 ; preds = %.lr.ph6099
  %.not.i386 = icmp eq i8 %i.lqz, 48
  br i1 %.not.i386, label %.split6104.us.thread, label %.loopexit5008, !prof !62

.split6107.us:                                    ; preds = %bb.bgg
  %i.lrk = icmp eq i8 %i.lrd, 46
  br i1 %i.lrk, label %bb.bgi, label %.loopexit5008

bb.bgi:                                           ; preds = %.split6107.us
  %i.lrl = getelementptr inbounds nuw i8, ptr %.0903.i3856097.us, i64 1
  %i.lrm = load i8, ptr %i.lrl, align 1, !tbaa !100 ; 2 uses
  %i.lrn = add i8 %i.lrm, -48
  %i.lro = icmp ult i8 %i.lrn, 10
  br i1 %i.lro, label %.thread8345, label %.loopexit5008

.thread8345:                                      ; preds = %bb.bgi
  %i.lrp = getelementptr inbounds nuw i8, ptr %.0903.i3856097.us, i64 1
  br label %.preheader5007

.loopexit5008:                                    ; preds = %.lr.ph6099.split, %bb.bgi, %.split6107.us
  %.0903.i3855235 = phi ptr [ %.0903.i3856097.us, %.split6107.us ], [ %.0903.i3856097.us, %bb.bgi ], [ %i.lqy, %.lr.ph6099.split ]
  br i1 %.not4658, label %read_inf_or_nan.exit843.thread, label %bb.bgj, !prof !62

bb.bgj:                                           ; preds = %.loopexit5008
  %i.lrq = icmp ne i8 %i.lqm, 43
  %brmerge4619 = or i1 %.not6514, %i.lrq
  br i1 %brmerge4619, label %bb.bgk, label %.thread4518, !prof !122

bb.bgk:                                           ; preds = %bb.bgj
  %i.lrr = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.lqo
  %i.lrs = load i8, ptr %i.lrr, align 1, !tbaa !100
  %i.lrt = and i8 %i.lrs, 1
  %i.lru = zext nneg i8 %i.lrt to i64
  %i.lrv = getelementptr inbounds nuw i8, ptr %i.lqn, i64 %i.lru ; 9 uses
  %i.lrw = load i8, ptr %i.lrv, align 1, !tbaa !100
  %i.lrx = and i8 %i.lrw, -33
  %i.lry = icmp eq i8 %i.lrx, 73
  br i1 %i.lry, label %bb.bgl, label %bb.bgt

bb.bgl:                                           ; preds = %bb.bgk
  %i.lrz = getelementptr inbounds nuw i8, ptr %i.lrv, i64 1
  %i.lsa = load i8, ptr %i.lrz, align 1, !tbaa !100
  %i.lsb = and i8 %i.lsa, -33
  %i.lsc = icmp eq i8 %i.lsb, 78
  br i1 %i.lsc, label %bb.bgm, label %bb.bgt

bb.bgm:                                           ; preds = %bb.bgl
  %i.lsd = getelementptr inbounds nuw i8, ptr %i.lrv, i64 2
  %i.lse = load i8, ptr %i.lsd, align 1, !tbaa !100
  %i.lsf = and i8 %i.lse, -33
  %i.lsg = icmp eq i8 %i.lsf, 70
  br i1 %i.lsg, label %bb.bgn, label %bb.bgt

bb.bgn:                                           ; preds = %bb.bgm
  %i.lsh = getelementptr inbounds nuw i8, ptr %i.lrv, i64 3 ; 2 uses
  %i.lsi = load i8, ptr %i.lsh, align 1, !tbaa !100
  %i.lsj = and i8 %i.lsi, -33
  %i.lsk = icmp eq i8 %i.lsj, 73
  br i1 %i.lsk, label %bb.bgo, label %read_inf.exit1477

bb.bgo:                                           ; preds = %bb.bgn
  %i.lsl = getelementptr inbounds nuw i8, ptr %i.lrv, i64 4
  %i.lsm = load i8, ptr %i.lsl, align 1, !tbaa !100
  %i.lsn = and i8 %i.lsm, -33
  %i.lso = icmp eq i8 %i.lsn, 78
  br i1 %i.lso, label %bb.bgp, label %bb.bgt

bb.bgp:                                           ; preds = %bb.bgo
  %i.lsp = getelementptr inbounds nuw i8, ptr %i.lrv, i64 5
  %i.lsq = load i8, ptr %i.lsp, align 1, !tbaa !100
  %i.lsr = and i8 %i.lsq, -33
  %i.lss = icmp eq i8 %i.lsr, 73
  br i1 %i.lss, label %bb.bgq, label %bb.bgt

bb.bgq:                                           ; preds = %bb.bgp
  %i.lst = getelementptr inbounds nuw i8, ptr %i.lrv, i64 6
  %i.lsu = load i8, ptr %i.lst, align 1, !tbaa !100
  %i.lsv = and i8 %i.lsu, -33
  %i.lsw = icmp eq i8 %i.lsv, 84
  br i1 %i.lsw, label %bb.bgr, label %bb.bgt

bb.bgr:                                           ; preds = %bb.bgq
  %i.lsx = getelementptr inbounds nuw i8, ptr %i.lrv, i64 7
  %i.lsy = load i8, ptr %i.lsx, align 1, !tbaa !100
  %i.lsz = and i8 %i.lsy, -33
  %i.lta = icmp eq i8 %i.lsz, 89
  br i1 %i.lta, label %bb.bgs, label %bb.bgt

bb.bgs:                                           ; preds = %bb.bgr
  %i.ltb = getelementptr inbounds nuw i8, ptr %i.lrv, i64 8
  br label %read_inf.exit1477

read_inf.exit1477:                                ; preds = %bb.bgs, %bb.bgn
  %.0.i1476 = phi ptr [ %i.ltb, %bb.bgs ], [ %i.lsh, %bb.bgn ]
  store ptr %.0.i1476, ptr %i.e, align 8, !tbaa !107
  store i64 20, ptr %i.lqs, align 8, !tbaa !99
  %i.ltc = select i1 %i.lqw, i64 -4503599627370496, i64 9218868437227405312
  %i.ltd = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.ltc, ptr %i.ltd, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

bb.bgt:                                           ; preds = %bb.bgo, %bb.bgk, %bb.bgr, %bb.bgq, %bb.bgp, %bb.bgm, %bb.bgl
  %i.lte = load i8, ptr %i.lqn, align 1, !tbaa !100 ; 2 uses
  %i.ltf = icmp ne i8 %i.lte, 43
  %brmerge4621 = or i1 %.not6514, %i.ltf
  br i1 %brmerge4621, label %bb.bgu, label %read_inf_or_nan.exit843.thread, !prof !264

.thread4518:                                      ; preds = %bb.bgj
  %i.ltg = load i8, ptr %i.lqn, align 1, !tbaa !100 ; 2 uses
  %i.lth = icmp eq i8 %i.ltg, 43
  br i1 %i.lth, label %read_inf_or_nan.exit843.thread, label %bb.bgu

bb.bgu:                                           ; preds = %bb.bgt, %.thread4518
  %i.lti = phi i8 [ %i.ltg, %.thread4518 ], [ %i.lte, %bb.bgt ] ; 2 uses
  %i.ltj = icmp eq i8 %i.lti, 45
  %i.ltk = zext i8 %i.lti to i64
  %i.ltl = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.ltk
  %i.ltm = load i8, ptr %i.ltl, align 1, !tbaa !100
  %i.ltn = and i8 %i.ltm, 1
  %i.lto = zext nneg i8 %i.ltn to i64
  %i.ltp = getelementptr inbounds nuw i8, ptr %i.lqn, i64 %i.lto ; 4 uses
  %i.ltq = load i8, ptr %i.ltp, align 1, !tbaa !100
  %i.ltr = and i8 %i.ltq, -33
  %i.lts = icmp eq i8 %i.ltr, 78
  br i1 %i.lts, label %bb.bgv, label %read_inf_or_nan.exit843.thread

bb.bgv:                                           ; preds = %bb.bgu
  %i.ltt = getelementptr inbounds nuw i8, ptr %i.ltp, i64 1
  %i.ltu = load i8, ptr %i.ltt, align 1, !tbaa !100
  %i.ltv = and i8 %i.ltu, -33
  %i.ltw = icmp eq i8 %i.ltv, 65
  br i1 %i.ltw, label %bb.bgw, label %read_inf_or_nan.exit843.thread

bb.bgw:                                           ; preds = %bb.bgv
  %i.ltx = getelementptr inbounds nuw i8, ptr %i.ltp, i64 2
  %i.lty = load i8, ptr %i.ltx, align 1, !tbaa !100
  %i.ltz = and i8 %i.lty, -33
  %i.lua = icmp eq i8 %i.ltz, 78
  br i1 %i.lua, label %.split4556, label %read_inf_or_nan.exit843.thread

.split4556:                                       ; preds = %bb.bgw
  %i.lub = getelementptr inbounds nuw i8, ptr %i.ltp, i64 3
  store ptr %i.lub, ptr %i.e, align 8, !tbaa !107
  store i64 20, ptr %i.lqs, align 8, !tbaa !99
  %i.luc = select i1 %i.ltj, i64 -2251799813685248, i64 9221120237041090560
  %i.lud = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.luc, ptr %i.lud, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

read_inf_or_nan.exit843.thread:                   ; preds = %bb.bgt, %.thread4518, %bb.bgu, %bb.bgv, %bb.bgw, %.loopexit5008
  store ptr @.str.89, ptr %i.f, align 8, !tbaa !107
  store ptr %.0903.i3855235, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit515.thread

.split6104.us:                                    ; preds = %.lr.ph6099.split.us
  %i.lue = getelementptr inbounds nuw i8, ptr %.0903.i3856097.us, i64 1 ; 3 uses
  %i.luf = load i8, ptr %i.lue, align 1, !tbaa !100 ; 3 uses
  %i.lug = zext i8 %i.luf to i64
  %i.luh = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.lug
  %i.lui = load i8, ptr %i.luh, align 1, !tbaa !100
  %i.luj = and i8 %i.lui, 26
  %.not4668 = icmp eq i8 %i.luj, 0
  br i1 %.not4668, label %bb.bgx, label %bb.bgy, !prof !62

.split6104.us.thread:                             ; preds = %.lr.ph6099.split
  %i.luk = getelementptr inbounds nuw i8, ptr %i.lqy, i64 1 ; 3 uses
  %i.lul = load i8, ptr %i.luk, align 1, !tbaa !100 ; 2 uses
  %i.lum = zext i8 %i.lul to i64
  %i.lun = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.lum
  %i.luo = load i8, ptr %i.lun, align 1, !tbaa !100
  %i.lup = and i8 %i.luo, 26
  %.not46688341 = icmp eq i8 %i.lup, 0
  br i1 %.not46688341, label %.split4554, label %bb.bgy, !prof !62

bb.bgx:                                           ; preds = %.split6104.us
  %i.luq = and i8 %i.luf, -33
  %i.lur = icmp eq i8 %i.luq, 88
  br i1 %i.lur, label %.split4555, label %.split4554, !prof !138

.split4555:                                       ; preds = %bb.bgx
  %i.lus = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, i32 noundef %2, ptr noundef nonnull %i.lqs, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br i1 %i.lus, label %.preheader4984, label %bb.bqv, !prof !137

.split4554:                                       ; preds = %.split6104.us.thread, %bb.bgx
  %i.lut = phi ptr [ %i.lue, %bb.bgx ], [ %i.luk, %.split6104.us.thread ]
  %i.luu = select i1 %i.lqw, i64 12, i64 4
  store i64 %i.luu, ptr %i.lqs, align 8, !tbaa !99
  %i.luv = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 0, ptr %i.luv, align 8, !tbaa !100
  store ptr %i.lut, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

bb.bgy:                                           ; preds = %.split6104.us.thread, %.split6104.us
  %i.luw = phi i8 [ %i.lul, %.split6104.us.thread ], [ %i.luf, %.split6104.us ] ; 3 uses
  %i.lux = phi ptr [ %i.luk, %.split6104.us.thread ], [ %i.lue, %.split6104.us ] ; 5 uses
  %.us-phi61058342 = phi ptr [ %i.lqy, %.split6104.us.thread ], [ %.0903.i3856097.us, %.split6104.us ]
  %i.luy = icmp eq i8 %i.luw, 46
  br i1 %i.luy, label %bb.bgz, label %bb.bhd, !prof !62

bb.bgz:                                           ; preds = %bb.bgy
  %.phi.trans.insert7557 = getelementptr inbounds nuw i8, ptr %.us-phi61058342, i64 2
  %.pre7558 = load i8, ptr %.phi.trans.insert7557, align 1, !tbaa !100 ; 3 uses
  %.pre7618 = add i8 %.pre7558, -48
  %i.luz = icmp ult i8 %.pre7618, 10
  %i.lva = getelementptr inbounds nuw i8, ptr %i.lux, i64 1 ; 4 uses
  br i1 %i.luz, label %.preheader5007, label %bb.bha, !prof !265

.preheader5007:                                   ; preds = %.thread8345, %bb.bgz
  %i.lvb = phi ptr [ %i.lrp, %.thread8345 ], [ %i.lva, %bb.bgz ] ; 2 uses
  %.1904.i3898348 = phi ptr [ %.0903.i3856097.us, %.thread8345 ], [ %i.lux, %bb.bgz ]
  %i.lvc = phi i8 [ %i.lrm, %.thread8345 ], [ %.pre7558, %bb.bgz ] ; 2 uses
  %i.lvd = icmp eq i8 %i.lvc, 48
  br i1 %i.lvd, label %.lr.ph6114, label %._crit_edge6115.thread, !prof !123

bb.bha:                                           ; preds = %bb.bgz
  br i1 %.not6514, label %bb.bhb, label %bb.bhc, !prof !45

bb.bhb:                                           ; preds = %bb.bha
  %i.lve = and i8 %.pre7558, -33
  %i.lvf = icmp eq i8 %i.lve, 69
  br i1 %i.lvf, label %bb.blz, label %.split4566

.split4566:                                       ; preds = %bb.bhb
  store i64 20, ptr %i.lqs, align 8, !tbaa !99
  %i.lvg = select i1 %i.lqw, i64 -9223372036854775808, i64 0
  %i.lvh = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.lvg, ptr %i.lvh, align 8, !tbaa !100
  store ptr %i.lva, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

bb.bhc:                                           ; preds = %bb.bha
  store ptr @.str.90, ptr %i.f, align 8, !tbaa !107
  store ptr %i.lva, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit515.thread

.lr.ph6114:                                       ; preds = %.preheader5007, %.lr.ph6114
  %.2905.i4376113 = phi ptr [ %i.lvi, %.lr.ph6114 ], [ %i.lvb, %.preheader5007 ]
  %i.lvi = getelementptr inbounds nuw i8, ptr %.2905.i4376113, i64 1 ; 4 uses
  %.pr4521 = load i8, ptr %i.lvi, align 1, !tbaa !100 ; 4 uses
  %i.lvj = icmp eq i8 %.pr4521, 48
  br i1 %i.lvj, label %.lr.ph6114, label %._crit_edge6115, !prof !124, !llvm.loop !6

._crit_edge6115:                                  ; preds = %.lr.ph6114
  %.pre7620.a = add i8 %.pr4521, -48
  %i.lvk = icmp ult i8 %.pre7620.a, 10
  br i1 %i.lvk, label %._crit_edge6115.thread, label %.thread8354, !prof !266

._crit_edge6115.thread:                           ; preds = %.preheader5007, %._crit_edge6115
  %.2905.i437.lcssa8353 = phi ptr [ %i.lvi, %._crit_edge6115 ], [ %i.lvb, %.preheader5007 ]
  %.lcssa52278352 = phi i8 [ %.pr4521, %._crit_edge6115 ], [ %i.lvc, %.preheader5007 ]
  %i.lvl = zext nneg i8 %.lcssa52278352 to i64
  %i.lvm = add nsw i64 %i.lvl, -48
  %i.lvn = getelementptr inbounds i8, ptr %.2905.i437.lcssa8353, i64 -1
  br label %bb.bjo

bb.bhd:                                           ; preds = %bb.bgy
  %.pre7680.a = add i8 %i.luw, -48
  %i.lvo = icmp ult i8 %.pre7680.a, 10
  br i1 %i.lvo, label %bb.bhe, label %.thread8354, !prof !125

bb.bhe:                                           ; preds = %bb.bhd
  store ptr @.str.91, ptr %i.f, align 8, !tbaa !107
  %i.lvp = getelementptr inbounds i8, ptr %i.lux, i64 -1
  store ptr %i.lvp, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit515.thread

.thread8354:                                      ; preds = %._crit_edge6115, %bb.bhd
  %.3906.i4388357 = phi ptr [ %i.lux, %bb.bhd ], [ %i.lvi, %._crit_edge6115 ] ; 3 uses
  %i.lvq = phi i8 [ %i.luw, %bb.bhd ], [ %.pr4521, %._crit_edge6115 ]
  %i.lvr = and i8 %i.lvq, -33
  %i.lvs = icmp eq i8 %i.lvr, 69
  br i1 %i.lvs, label %bb.bhf, label %.split4558, !prof !45

bb.bhf:                                           ; preds = %.thread8354
  %i.lvt = getelementptr inbounds nuw i8, ptr %.3906.i4388357, i64 1
  %i.lvu = load i8, ptr %i.lvt, align 1, !tbaa !100
  %i.lvv = zext i8 %i.lvu to i64
  %i.lvw = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.lvv
  %i.lvx = load i8, ptr %i.lvw, align 1, !tbaa !100
  %i.lvy = trunc i8 %i.lvx to i1
  %i.lvz = select i1 %i.lvy, i64 2, i64 1
  %i.lwa = getelementptr inbounds nuw i8, ptr %.3906.i4388357, i64 %i.lvz ; 3 uses
  %i.lwb = load i8, ptr %i.lwa, align 1, !tbaa !100
  %i.lwc = add i8 %i.lwb, -48
  %i.lwd = icmp ult i8 %i.lwc, 10
  br i1 %i.lwd, label %.preheader5006, label %bb.bhg, !prof !62

bb.bhg:                                           ; preds = %bb.bhf
  store ptr @.str.92, ptr %i.f, align 8, !tbaa !107
  store ptr %i.lwa, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit515.thread

.preheader5006:                                   ; preds = %bb.bhf, %.preheader5006
  %.4907.i440 = phi ptr [ %i.lwe, %.preheader5006 ], [ %i.lwa, %bb.bhf ]
  %i.lwe = getelementptr inbounds nuw i8, ptr %.4907.i440, i64 1 ; 3 uses
  %i.lwf = load i8, ptr %i.lwe, align 1, !tbaa !100
  %i.lwg = add i8 %i.lwf, -48
  %i.lwh = icmp ult i8 %i.lwg, 10
  br i1 %i.lwh, label %.preheader5006, label %.split4558, !llvm.loop !7

.split4558:                                       ; preds = %.preheader5006, %.thread8354
  %.5908.i439 = phi ptr [ %.3906.i4388357, %.thread8354 ], [ %i.lwe, %.preheader5006 ]
  store i64 20, ptr %i.lqs, align 8, !tbaa !99
  %i.lwi = select i1 %i.lqw, i64 -9223372036854775808, i64 0
  %i.lwj = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.lwi, ptr %i.lwj, align 8, !tbaa !100
  store ptr %.5908.i439, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

._crit_edge6100:                                  ; preds = %bb.bgh, %bb.bgf
  %.0903.i385.lcssa = phi ptr [ %i.lqy, %bb.bgf ], [ %i.lrg, %bb.bgh ] ; 39 uses
  %.lcssa5228 = phi i8 [ %i.lqz, %bb.bgf ], [ %i.lrh, %bb.bgh ]
  %i.lwk = zext nneg i8 %.lcssa5228 to i64        ; 2 uses
  %i.lwl = add nsw i64 %i.lwk, -48                ; 4 uses
  %i.lwm = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 1 ; 6 uses
  %i.lwn = load i8, ptr %i.lwm, align 1, !tbaa !100 ; 2 uses
  %i.lwo = zext i8 %i.lwn to i64                  ; 2 uses
  %i.lwp = add nsw i64 %i.lwo, -48                ; 2 uses
  %i.lwq = icmp ult i64 %i.lwp, 10
  br i1 %i.lwq, label %bb.bhh, label %bb.bib, !prof !62

bb.bhh:                                           ; preds = %._crit_edge6100
  %i.lwr = mul nuw nsw i64 %i.lwl, 10
  %i.lws = add nuw nsw i64 %i.lwp, %i.lwr         ; 5 uses
  %i.lwt = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 2 ; 6 uses
  %i.lwu = load i8, ptr %i.lwt, align 1, !tbaa !100 ; 2 uses
  %i.lwv = zext i8 %i.lwu to i64                  ; 2 uses
  %i.lww = add nsw i64 %i.lwv, -48                ; 2 uses
  %i.lwx = icmp ult i64 %i.lww, 10
  br i1 %i.lwx, label %bb.bhi, label %bb.bid, !prof !62

bb.bhi:                                           ; preds = %bb.bhh
  %i.lwy = mul nuw nsw i64 %i.lws, 10
  %i.lwz = add nuw nsw i64 %i.lww, %i.lwy         ; 5 uses
  %i.lxa = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 3 ; 6 uses
  %i.lxb = load i8, ptr %i.lxa, align 1, !tbaa !100 ; 2 uses
  %i.lxc = zext i8 %i.lxb to i64                  ; 2 uses
  %i.lxd = add nsw i64 %i.lxc, -48                ; 2 uses
  %i.lxe = icmp ult i64 %i.lxd, 10
  br i1 %i.lxe, label %bb.bhj, label %bb.bif, !prof !62

bb.bhj:                                           ; preds = %bb.bhi
  %i.lxf = mul nuw nsw i64 %i.lwz, 10
  %i.lxg = add nuw nsw i64 %i.lxd, %i.lxf         ; 5 uses
  %i.lxh = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 4 ; 6 uses
  %i.lxi = load i8, ptr %i.lxh, align 1, !tbaa !100 ; 2 uses
  %i.lxj = zext i8 %i.lxi to i64                  ; 2 uses
  %i.lxk = add nsw i64 %i.lxj, -48                ; 2 uses
  %i.lxl = icmp ult i64 %i.lxk, 10
  br i1 %i.lxl, label %bb.bhk, label %bb.bih, !prof !62

bb.bhk:                                           ; preds = %bb.bhj
  %i.lxm = mul nuw nsw i64 %i.lxg, 10
  %i.lxn = add nuw nsw i64 %i.lxk, %i.lxm         ; 5 uses
  %i.lxo = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 5 ; 6 uses
  %i.lxp = load i8, ptr %i.lxo, align 1, !tbaa !100 ; 2 uses
  %i.lxq = zext i8 %i.lxp to i64                  ; 2 uses
  %i.lxr = add nsw i64 %i.lxq, -48                ; 2 uses
  %i.lxs = icmp ult i64 %i.lxr, 10
  br i1 %i.lxs, label %bb.bhl, label %bb.bij, !prof !62

bb.bhl:                                           ; preds = %bb.bhk
  %i.lxt = mul nuw nsw i64 %i.lxn, 10
  %i.lxu = add nuw nsw i64 %i.lxr, %i.lxt         ; 5 uses
  %i.lxv = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 6 ; 6 uses
  %i.lxw = load i8, ptr %i.lxv, align 1, !tbaa !100 ; 2 uses
  %i.lxx = zext i8 %i.lxw to i64                  ; 2 uses
  %i.lxy = add nsw i64 %i.lxx, -48                ; 2 uses
  %i.lxz = icmp ult i64 %i.lxy, 10
  br i1 %i.lxz, label %bb.bhm, label %bb.bil, !prof !62

bb.bhm:                                           ; preds = %bb.bhl
  %i.lya = mul nuw nsw i64 %i.lxu, 10
  %i.lyb = add nuw nsw i64 %i.lxy, %i.lya         ; 5 uses
  %i.lyc = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 7 ; 6 uses
  %i.lyd = load i8, ptr %i.lyc, align 1, !tbaa !100 ; 2 uses
  %i.lye = zext i8 %i.lyd to i64                  ; 2 uses
  %i.lyf = add nsw i64 %i.lye, -48                ; 2 uses
  %i.lyg = icmp ult i64 %i.lyf, 10
  br i1 %i.lyg, label %bb.bhn, label %bb.bin, !prof !62

bb.bhn:                                           ; preds = %bb.bhm
  %i.lyh = mul nuw nsw i64 %i.lyb, 10
  %i.lyi = add nuw nsw i64 %i.lyf, %i.lyh         ; 5 uses
  %i.lyj = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 8 ; 6 uses
  %i.lyk = load i8, ptr %i.lyj, align 1, !tbaa !100 ; 2 uses
  %i.lyl = zext i8 %i.lyk to i64                  ; 2 uses
  %i.lym = add nsw i64 %i.lyl, -48                ; 2 uses
  %i.lyn = icmp ult i64 %i.lym, 10
  br i1 %i.lyn, label %bb.bho, label %bb.biq, !prof !62

bb.bho:                                           ; preds = %bb.bhn
  %i.lyo = mul nuw nsw i64 %i.lyi, 10
  %i.lyp = add nuw nsw i64 %i.lym, %i.lyo         ; 5 uses
  %i.lyq = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 9 ; 6 uses
  %i.lyr = load i8, ptr %i.lyq, align 1, !tbaa !100 ; 2 uses
  %i.lys = zext i8 %i.lyr to i64                  ; 2 uses
  %i.lyt = add nsw i64 %i.lys, -48                ; 2 uses
  %i.lyu = icmp ult i64 %i.lyt, 10
  br i1 %i.lyu, label %bb.bhp, label %bb.bit, !prof !62

bb.bhp:                                           ; preds = %bb.bho
  %i.lyv = mul nuw nsw i64 %i.lyp, 10
  %i.lyw = add nuw nsw i64 %i.lyt, %i.lyv         ; 5 uses
  %i.lyx = getelementptr inbounds nuw i8, ptr %.0903.i385.lcssa, i64 10 ; 6 uses
  %i.lyy = load i8, ptr %i.lyx, align 1, !tbaa !100 ; 2 uses
  %i.lyz = zext i8 %i.lyy to i64                  ; 2 uses
  %i.lza = add nsw i64 %i.lyz, -48                ; 2 uses
  %i.lzb = icmp ult i64 %i.lza, 10
  br i1 %i.lzb, label %bb.bhq, label %bb.biw, !prof !62

bb.bhq:                                           ; preds = %bb.bhp
  %i.lzc = mul nuw nsw i64 %i.lyw, 10
  %i.lzd = add nuw nsw i64 %i.lza, %i.lzc         ; 5 uses
end_hunk_3
begin_hunk_4_@skip_trivia:bb.a

ext_space_len.exit:                               ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.g, %.lr.ph, %bb.h, %bb.i, %bb.i, %bb.i
  %.1.i = phi i64 [ 3, %bb.j ], [ 1, %.lr.ph ], [ 2, %bb.g ], [ 3, %bb.h ], [ 3, %bb.i ], [ 3, %bb.i ], [ 3, %bb.i ], [ 3, %bb.j ], [ 3, %bb.j ], [ 3, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %.279, i64 %.1.i ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !100 ; 3 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !100
  %i.ba = and i8 %i.az, 8
  %.not69 = icmp eq i8 %i.ba, 0
  br i1 %.not69, label %ext_space_len.exit.thread, label %.lr.ph, !llvm.loop !268

ext_space_len.exit.thread.loopexit.split.loop.exit: ; preds = %bb.j
  %i.bb = trunc i16 %.sroa.0.0.copyload.i56 to i8
  br label %ext_space_len.exit.thread

ext_space_len.exit.thread:                        ; preds = %ext_space_len.exit, %ext_space_len.exit.thread.loopexit.split.loop.exit, %.preheader75, %bb.f
  %i.bc = phi i8 [ %i.ai, %bb.f ], [ %i.ai, %.preheader75 ], [ %i.bb, %ext_space_len.exit.thread.loopexit.split.loop.exit ], [ %i.aw, %ext_space_len.exit ]
  %.3 = phi ptr [ %.1, %bb.f ], [ %.1, %.preheader75 ], [ %.279, %ext_space_len.exit.thread.loopexit.split.loop.exit ], [ %i.av, %ext_space_len.exit ] ; 8 uses
  %.399 = ptrtoaddr ptr %.3 to i64                ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 47
  br i1 %i.bd, label %bb.k, label %.critedge

bb.k:                                             ; preds = %ext_space_len.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !100
  switch i8 %i.bf, label %.critedge [
    i8 47, label %bb.l
    i8 42, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 5 uses
  %i.bh = icmp ult ptr %i.bg, %1                  ; 2 uses
  br i1 %.not68, label %.preheader, label %.preheader73, !prof !62

.preheader73:                                     ; preds = %bb.l
  br i1 %i.bh, label %.lr.ph85.preheader, label %.critedge

.lr.ph85.preheader:                               ; preds = %.preheader73
  %scevgep = getelementptr i8, ptr %.3, i64 %i.a
  %i.bi = sub i64 0, %.399
  %scevgep100 = getelementptr i8, ptr %scevgep, i64 %i.bi ; 2 uses
  br label %.lr.ph85

.preheader:                                       ; preds = %bb.l
  br i1 %i.bh, label %.lr.ph88.preheader, label %.critedge

.lr.ph88.preheader:                               ; preds = %.preheader
  %scevgep101 = getelementptr i8, ptr %.3, i64 %i.a
  %i.bj = sub i64 0, %.399
  %scevgep102 = getelementptr i8, ptr %scevgep101, i64 %i.bj ; 2 uses
  br label %.lr.ph88

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %ext_eol_len.exit
  %.484 = phi ptr [ %i.bx, %ext_eol_len.exit ], [ %i.bg, %.lr.ph85.preheader ] ; 5 uses
  %i.bk = load i8, ptr %.484, align 1, !tbaa !100 ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @char_table2, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !100
  %i.bo = and i8 %i.bn, 2
  %.not72 = icmp eq i8 %i.bo, 0
  br i1 %.not72, label %ext_eol_len.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph85
  %i.bp = icmp sgt i8 %i.bk, -1
  br i1 %i.bp, label %ext_eol_len.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.484, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !100
  %i.bs = icmp eq i8 %i.br, -128
  br i1 %i.bs, label %bb.o, label %ext_eol_len.exit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.484, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !100
  %i.bv = and i8 %i.bu, -2
  %switch.i = icmp eq i8 %i.bv, -88
  br i1 %switch.i, label %ext_eol_len.exit.thread, label %ext_eol_len.exit

ext_eol_len.exit.thread:                          ; preds = %bb.m, %bb.o
  %.0.i55.ph = phi i64 [ 3, %bb.o ], [ 1, %bb.m ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.484, i64 %.0.i55.ph
  br label %.critedge

ext_eol_len.exit:                                 ; preds = %bb.o, %bb.n, %.lr.ph85
  %i.bx = getelementptr inbounds nuw i8, ptr %.484, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.bx, %scevgep100
  br i1 %exitcond.not, label %.critedge, label %.lr.ph85, !llvm.loop !269

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %bb.p
  %.687 = phi ptr [ %i.cd, %bb.p ], [ %i.bg, %.lr.ph88.preheader ] ; 3 uses
  %i.by = load i8, ptr %.687, align 1, !tbaa !100
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @char_table2, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !100
  %i.cc = trunc i8 %i.cb to i1
  br i1 %i.cc, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.lr.ph88
  %i.cd = getelementptr inbounds nuw i8, ptr %.687, i64 1 ; 2 uses
  %exitcond103.not = icmp eq ptr %i.cd, %scevgep102
  br i1 %exitcond103.not, label %.critedge, label %.lr.ph88, !llvm.loop !270

bb.q:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.7 = phi ptr [ %i.ce, %bb.q ], [ %i.ch, %bb.r ] ; 5 uses
  %.sroa.01.0.copyload.i = load i16, ptr %.7, align 1
  %i.cf = icmp eq i16 %.sroa.01.0.copyload.i, 12074
  %i.cg = icmp uge ptr %.7, %1
  %.not53 = or i1 %i.cg, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br i1 %.not53, label %bb.s, label %bb.r, !llvm.loop !271

bb.s:                                             ; preds = %bb.r
  %i.ci = icmp eq ptr %.7, %1
  br i1 %i.ci, label %.thread62, label %bb.t

.thread62:                                        ; preds = %bb.s
  store ptr %1, ptr %0, align 8, !tbaa !107
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.7, i64 2
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %ext_eol_len.exit, %bb.p, %.lr.ph88, %.preheader73, %.preheader, %ext_eol_len.exit.thread, %bb.k, %bb.t, %ext_space_len.exit.thread
  %.8 = phi ptr [ %i.bw, %ext_eol_len.exit.thread ], [ %.3, %bb.k ], [ %.3, %ext_space_len.exit.thread ], [ %i.bg, %.preheader73 ], [ %i.cj, %bb.t ], [ %i.bg, %.preheader ], [ %scevgep100, %ext_eol_len.exit ], [ %.687, %.lr.ph88 ], [ %scevgep102, %bb.p ], [ %.279, %bb.i ] ; 3 uses
  %i.ck = icmp eq ptr %.8, %.046
  br i1 %i.ck, label %.thread65, label %.split

.thread65:                                        ; preds = %.split, %.critedge, %ext_space_len.exit.thread.loopexit.us, %.split.us.split, %ext_space_len.exit.thread.us.us, %.split.us.split.us
  %.us-phi = phi ptr [ %.046.us, %ext_space_len.exit.thread.loopexit.us ], [ %.046.us.us, %ext_space_len.exit.thread.us.us ], [ %.046.us.us, %.split.us.split.us ], [ %.046.us, %.split.us.split ], [ %.046, %.split ], [ %.8, %.critedge ] ; 2 uses
  store ptr %.us-phi, ptr %0, align 8, !tbaa !107
  %i.cl = icmp ugt ptr %.us-phi, %i.b
  br label %bb.u

bb.u:                                             ; preds = %.thread62, %.thread65
  %.249 = phi i1 [ false, %.thread62 ], [ %i.cl, %.thread65 ]
  ret i1 %.249
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @read_root_single(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.yyjson_alc) align 8 captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %6 = alloca %struct.bigint, align 8             ; 29 uses
  %7 = alloca %struct.bigint, align 8             ; 20 uses
  %i.b = alloca ptr, align 8                      ; 76 uses
  %i.c = alloca ptr, align 8                      ; 28 uses
  %i.d = alloca [1 x i8], align 1                 ; 12 uses
  %i.e = alloca ptr, align 8                      ; 17 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.d, ptr %i.e, align 8, !tbaa !107
  %i.f = load ptr, ptr %3, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 5 uses
  %i.i = call ptr %i.f(ptr noundef %i.h, i64 noundef 80) #33 ; 69 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.nz, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 60 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !100     ; 7 uses
  %i.l = zext i8 %i.k to i64                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !100
  %i.o = and i8 %i.n, 16
  %.not658 = icmp eq i8 %i.o, 0
  br i1 %.not658, label %bb.im, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !119
  %i.p = and i32 %4, 32
  %.not670 = icmp eq i32 %i.p, 0
  br i1 %.not670, label %bb.d, label %.split, !prof !62

.split:                                           ; preds = %bb.c
  %i.q = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.q, label %read_str_opt.exit, label %bb.ny, !prof !137

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i8 %i.k, 45                      ; 58 uses
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 7 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !100   ; 6 uses
  %i.v = add i8 %i.u, -49
  %i.w = icmp ult i8 %i.v, 9
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !prof !120

.lr.ph:                                           ; preds = %bb.d
  %i.x = and i32 %4, 512
  %.not974 = icmp ne i32 %i.x, 0                  ; 3 uses
  br i1 %.not974, label %.lr.ph.split.us.preheader, label %.lr.ph.split, !prof !45

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %.not.i.us.peel = icmp eq i8 %i.u, 48
  br i1 %.not.i.us.peel, label %.split787.us, label %bb.e, !prof !62

bb.e:                                             ; preds = %.lr.ph.split.us.preheader
  %i.z = icmp ne i8 %i.u, 43
  %or.cond990.i.us.peel.not = or i1 %i.z, %i.r
  br i1 %or.cond990.i.us.peel.not, label %.split789.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !100  ; 4 uses
  %i.ab = add i8 %i.aa, -49
  %i.ac = icmp ult i8 %i.ab, 9
  br i1 %i.ac, label %._crit_edge, label %.lr.ph.split.us.preheader.peel.newph, !prof !121

.lr.ph.split.us.preheader.peel.newph:             ; preds = %bb.f
  %.not.i.us = icmp eq i8 %i.aa, 48
  br i1 %.not.i.us, label %.split787.us, label %.split789.us, !prof !62

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i8 %i.u, 48
  br i1 %.not.i, label %.split787.us.thread, label %.loopexit738, !prof !62

.split789.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %bb.e
  %.lcssa1584 = phi i8 [ %i.u, %bb.e ], [ %i.aa, %.lr.ph.split.us.preheader.peel.newph ]
  %.0903.i784.us.lcssa1581 = phi ptr [ %i.t, %bb.e ], [ %i.y, %.lr.ph.split.us.preheader.peel.newph ] ; 5 uses
  %i.ad = icmp eq i8 %.lcssa1584, 46
  br i1 %i.ad, label %bb.g, label %.loopexit738

bb.g:                                             ; preds = %.split789.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0903.i784.us.lcssa1581, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !100 ; 2 uses
  %i.ag = add i8 %i.af, -48
  %i.ah = icmp ult i8 %i.ag, 10
  br i1 %i.ah, label %.thread1244, label %.loopexit738

.thread1244:                                      ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0903.i784.us.lcssa1581, i64 1
  br label %.preheader737

.loopexit738:                                     ; preds = %.lr.ph.split, %bb.g, %.split789.us
  %.0903.i781 = phi ptr [ %.0903.i784.us.lcssa1581, %.split789.us ], [ %.0903.i784.us.lcssa1581, %bb.g ], [ %i.t, %.lr.ph.split ]
  %i.aj = and i32 %4, 16
  %.not671 = icmp eq i32 %i.aj, 0
  br i1 %.not671, label %read_inf_or_nan.exit.thread, label %bb.h, !prof !62

bb.h:                                             ; preds = %.loopexit738
  %i.ak = icmp ne i8 %i.k, 43
  %brmerge = or i1 %.not974, %i.ak
  br i1 %brmerge, label %bb.i, label %read_inf_or_nan.exit.thread, !prof !122

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.l
  %i.am = load i8, ptr %i.al, align 1, !tbaa !100 ; 2 uses
  %i.an = and i8 %i.am, 1
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 9 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !100
  %i.ar = and i8 %i.aq, -33
  %i.as = icmp eq i8 %i.ar, 73
  br i1 %i.as, label %bb.j, label %._crit_edge1115

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !100
  %i.av = and i8 %i.au, -33
  %i.aw = icmp eq i8 %i.av, 78
  br i1 %i.aw, label %bb.k, label %._crit_edge1115

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !100
  %i.az = and i8 %i.ay, -33
  %i.ba = icmp eq i8 %i.az, 70
  br i1 %i.ba, label %bb.l, label %._crit_edge1115

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 3 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !100
  %i.bd = and i8 %i.bc, -33
  %i.be = icmp eq i8 %i.bd, 73
  br i1 %i.be, label %bb.m, label %read_inf.exit251

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !100
  %i.bh = and i8 %i.bg, -33
  %i.bi = icmp eq i8 %i.bh, 78
  br i1 %i.bi, label %bb.n, label %._crit_edge1115

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !100
  %i.bl = and i8 %i.bk, -33
  %i.bm = icmp eq i8 %i.bl, 73
  br i1 %i.bm, label %bb.o, label %._crit_edge1115

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !100
  %i.bp = and i8 %i.bo, -33
  %i.bq = icmp eq i8 %i.bp, 84
  br i1 %i.bq, label %bb.p, label %._crit_edge1115

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !100
  %i.bt = and i8 %i.bs, -33
  %i.bu = icmp eq i8 %i.bt, 89
  br i1 %i.bu, label %bb.q, label %._crit_edge1115

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %read_inf.exit251

read_inf.exit251:                                 ; preds = %bb.q, %bb.l
  %.0.i250 = phi ptr [ %i.bv, %bb.q ], [ %i.bb, %bb.l ]
  store ptr %.0.i250, ptr %i.b, align 8, !tbaa !107
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.bw = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !100
  br label %read_num.exit.thread

._crit_edge1115:                                  ; preds = %bb.m, %bb.i, %bb.p, %bb.o, %bb.n, %bb.k, %bb.j
  %i.by = and i8 %i.am, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz ; 4 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !100
  %i.cc = and i8 %i.cb, -33
  %i.cd = icmp eq i8 %i.cc, 78
  br i1 %i.cd, label %bb.r, label %read_inf_or_nan.exit.thread

bb.r:                                             ; preds = %._crit_edge1115
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !100
  %i.cg = and i8 %i.cf, -33
  %i.ch = icmp eq i8 %i.cg, 65
  br i1 %i.ch, label %bb.s, label %read_inf_or_nan.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !100
  %i.ck = and i8 %i.cj, -33
  %i.cl = icmp eq i8 %i.ck, 78
  br i1 %i.cl, label %bb.t, label %read_inf_or_nan.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  store ptr %i.cm, ptr %i.b, align 8, !tbaa !107
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.cn = select i1 %i.r, i64 -2251799813685248, i64 9221120237041090560
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !100
  br label %read_num.exit.thread

read_inf_or_nan.exit.thread:                      ; preds = %bb.h, %._crit_edge1115, %bb.r, %bb.s, %.loopexit738
  store ptr @.str.89, ptr %i.c, align 8, !tbaa !107
  store ptr %.0903.i781, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split

.split787.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %.lr.ph.split.us.preheader
  %.0903.i784.us.lcssa = phi ptr [ %i.t, %.lr.ph.split.us.preheader ], [ %i.y, %.lr.ph.split.us.preheader.peel.newph ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0903.i784.us.lcssa, i64 1 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !100 ; 3 uses
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !100
  %i.cu = and i8 %i.ct, 26
  %.not672 = icmp eq i8 %i.cu, 0
  br i1 %.not672, label %bb.u, label %bb.v, !prof !62

.split787.us.thread:                              ; preds = %.lr.ph.split
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !100 ; 2 uses
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !100
  %i.da = and i8 %i.cz, 26
  %.not6721241 = icmp eq i8 %i.da, 0
  br i1 %.not6721241, label %.thread, label %bb.v, !prof !62

bb.u:                                             ; preds = %.split787.us
  %i.db = and i8 %i.cq, -33
  %i.dc = icmp eq i8 %i.db, 88
  br i1 %i.dc, label %.split630, label %.thread, !prof !138

.split630:                                        ; preds = %bb.u
  %i.dd = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.dd, label %read_str_opt.exit, label %bb.ny, !prof !137

.thread:                                          ; preds = %.split787.us.thread, %bb.u
  %i.de = phi ptr [ %i.cp, %bb.u ], [ %i.cv, %.split787.us.thread ]
  %i.df = select i1 %i.r, i64 12, i64 4
  store i64 %i.df, ptr %i.j, align 8, !tbaa !99
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 0, ptr %i.dg, align 8, !tbaa !100
  store ptr %i.de, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.v:                                             ; preds = %.split787.us.thread, %.split787.us
  %i.dh = phi i8 [ %i.cw, %.split787.us.thread ], [ %i.cq, %.split787.us ] ; 3 uses
  %i.di = phi ptr [ %i.cv, %.split787.us.thread ], [ %i.cp, %.split787.us ] ; 5 uses
  %.us-phi1242 = phi ptr [ %i.t, %.split787.us.thread ], [ %.0903.i784.us.lcssa, %.split787.us ]
  %i.dj = icmp eq i8 %i.dh, 46
  br i1 %i.dj, label %bb.w, label %bb.ab, !prof !62

bb.w:                                             ; preds = %bb.v
  %.phi.trans.insert1117 = getelementptr inbounds nuw i8, ptr %.us-phi1242, i64 2
  %.pre1118 = load i8, ptr %.phi.trans.insert1117, align 1, !tbaa !100 ; 3 uses
  %.pre1131.a = add i8 %.pre1118, -48
  %i.dk = icmp ult i8 %.pre1131.a, 10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 4 uses
  br i1 %i.dk, label %.preheader737, label %bb.x, !prof !283

.preheader737:                                    ; preds = %.thread1244, %bb.w
  %i.dm = phi ptr [ %i.ai, %.thread1244 ], [ %i.dl, %bb.w ] ; 2 uses
  %.1904.i1247 = phi ptr [ %.0903.i784.us.lcssa1581, %.thread1244 ], [ %i.di, %bb.w ]
  %i.dn = phi i8 [ %i.af, %.thread1244 ], [ %.pre1118, %bb.w ] ; 2 uses
  %i.do = icmp eq i8 %i.dn, 48
  br i1 %i.do, label %.lr.ph796, label %._crit_edge797.thread, !prof !123

bb.x:                                             ; preds = %bb.w
  br i1 %.not974, label %bb.y, label %bb.aa, !prof !45

bb.y:                                             ; preds = %bb.x
  %i.dp = and i8 %.pre1118, -33
  %i.dq = icmp eq i8 %i.dp, 69
  br i1 %i.dq, label %bb.fu, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.dr = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !100
  store ptr %i.dl, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.aa:                                            ; preds = %bb.x
  store ptr @.str.90, ptr %i.c, align 8, !tbaa !107
  store ptr %i.dl, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split

.lr.ph796:                                        ; preds = %.preheader737, %.lr.ph796
  %.2905.i795 = phi ptr [ %i.dt, %.lr.ph796 ], [ %i.dm, %.preheader737 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.2905.i795, i64 1 ; 4 uses
  %.pr = load i8, ptr %i.dt, align 1, !tbaa !100  ; 4 uses
  %i.du = icmp eq i8 %.pr, 48
  br i1 %i.du, label %.lr.ph796, label %._crit_edge797, !prof !124, !llvm.loop !6

._crit_edge797:                                   ; preds = %.lr.ph796
  %.pre1133 = add i8 %.pr, -48
  %i.dv = icmp ult i8 %.pre1133, 10
  br i1 %i.dv, label %._crit_edge797.thread, label %.thread1253, !prof !284

._crit_edge797.thread:                            ; preds = %.preheader737, %._crit_edge797
  %.2905.i.lcssa1252 = phi ptr [ %i.dt, %._crit_edge797 ], [ %i.dm, %.preheader737 ]
  %.lcssa7731251 = phi i8 [ %.pr, %._crit_edge797 ], [ %i.dn, %.preheader737 ]
  %i.dw = zext nneg i8 %.lcssa7731251 to i64
  %i.dx = add nsw i64 %i.dw, -48
  %i.dy = getelementptr inbounds i8, ptr %.2905.i.lcssa1252, i64 -1
  br label %bb.de

bb.ab:                                            ; preds = %bb.v
  %.pre1156 = add i8 %i.dh, -48
  %i.dz = icmp ult i8 %.pre1156, 10
  br i1 %i.dz, label %bb.ac, label %.thread1253, !prof !285

bb.ac:                                            ; preds = %bb.ab
  store ptr @.str.91, ptr %i.c, align 8, !tbaa !107
  %i.ea = getelementptr inbounds i8, ptr %i.di, i64 -1
  store ptr %i.ea, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split

.thread1253:                                      ; preds = %._crit_edge797, %bb.ab
  %.3906.i1256 = phi ptr [ %i.di, %bb.ab ], [ %i.dt, %._crit_edge797 ] ; 3 uses
  %i.eb = phi i8 [ %i.dh, %bb.ab ], [ %.pr, %._crit_edge797 ]
  %i.ec = and i8 %i.eb, -33
  %i.ed = icmp eq i8 %i.ec, 69
  br i1 %i.ed, label %bb.ad, label %.loopexit736, !prof !45

bb.ad:                                            ; preds = %.thread1253
  %i.ee = getelementptr inbounds nuw i8, ptr %.3906.i1256, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !100
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !100
  %i.ej = trunc i8 %i.ei to i1
  %i.ek = select i1 %i.ej, i64 2, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %.3906.i1256, i64 %i.ek ; 3 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !100
  %i.en = add i8 %i.em, -48
  %i.eo = icmp ult i8 %i.en, 10
  br i1 %i.eo, label %.preheader735, label %bb.ae, !prof !62

bb.ae:                                            ; preds = %bb.ad
  store ptr @.str.92, ptr %i.c, align 8, !tbaa !107
  store ptr %i.el, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split

.preheader735:                                    ; preds = %bb.ad, %.preheader735
  %.4907.i = phi ptr [ %i.ep, %.preheader735 ], [ %i.el, %bb.ad ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.4907.i, i64 1 ; 3 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !100
  %i.er = add i8 %i.eq, -48
  %i.es = icmp ult i8 %i.er, 10
  br i1 %i.es, label %.preheader735, label %.loopexit736, !llvm.loop !7

.loopexit736:                                     ; preds = %.preheader735, %.thread1253
  %.5908.i = phi ptr [ %.3906.i1256, %.thread1253 ], [ %i.ep, %.preheader735 ]
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.et = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.eu = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !100
  store ptr %.5908.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.0903.i.lcssa = phi ptr [ %i.t, %bb.d ], [ %i.y, %bb.f ] ; 39 uses
  %.lcssa774 = phi i8 [ %i.u, %bb.d ], [ %i.aa, %bb.f ]
  %i.ev = zext nneg i8 %.lcssa774 to i64          ; 2 uses
  %i.ew = add nsw i64 %i.ev, -48                  ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 1 ; 6 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !100 ; 2 uses
  %i.ez = zext i8 %i.ey to i64                    ; 2 uses
  %i.fa = add nsw i64 %i.ez, -48                  ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 10
  br i1 %i.fb, label %bb.af, label %bb.bc, !prof !62

bb.af:                                            ; preds = %._crit_edge
  %i.fc = mul nuw nsw i64 %i.ew, 10
  %i.fd = add nuw nsw i64 %i.fa, %i.fc            ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 2 ; 6 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !100 ; 2 uses
  %i.fg = zext i8 %i.ff to i64                    ; 2 uses
  %i.fh = add nsw i64 %i.fg, -48                  ; 2 uses
  %i.fi = icmp ult i64 %i.fh, 10
  br i1 %i.fi, label %bb.ag, label %bb.bf, !prof !62

bb.ag:                                            ; preds = %bb.af
  %i.fj = mul nuw nsw i64 %i.fd, 10
  %i.fk = add nuw nsw i64 %i.fh, %i.fj            ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 3 ; 6 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !100 ; 2 uses
  %i.fn = zext i8 %i.fm to i64                    ; 2 uses
  %i.fo = add nsw i64 %i.fn, -48                  ; 2 uses
  %i.fp = icmp ult i64 %i.fo, 10
  br i1 %i.fp, label %bb.ah, label %bb.bi, !prof !62

bb.ah:                                            ; preds = %bb.ag
  %i.fq = mul nuw nsw i64 %i.fk, 10
  %i.fr = add nuw nsw i64 %i.fo, %i.fq            ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 4 ; 6 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !100 ; 2 uses
  %i.fu = zext i8 %i.ft to i64                    ; 2 uses
  %i.fv = add nsw i64 %i.fu, -48                  ; 2 uses
  %i.fw = icmp ult i64 %i.fv, 10
  br i1 %i.fw, label %bb.ai, label %bb.bl, !prof !62

bb.ai:                                            ; preds = %bb.ah
  %i.fx = mul nuw nsw i64 %i.fr, 10
  %i.fy = add nuw nsw i64 %i.fv, %i.fx            ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 5 ; 6 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !100 ; 2 uses
  %i.gb = zext i8 %i.ga to i64                    ; 2 uses
  %i.gc = add nsw i64 %i.gb, -48                  ; 2 uses
  %i.gd = icmp ult i64 %i.gc, 10
  br i1 %i.gd, label %bb.aj, label %bb.bo, !prof !62

bb.aj:                                            ; preds = %bb.ai
  %i.ge = mul nuw nsw i64 %i.fy, 10
  %i.gf = add nuw nsw i64 %i.gc, %i.ge            ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 6 ; 6 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !100 ; 2 uses
  %i.gi = zext i8 %i.gh to i64                    ; 2 uses
  %i.gj = add nsw i64 %i.gi, -48                  ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 10
  br i1 %i.gk, label %bb.ak, label %bb.br, !prof !62

bb.ak:                                            ; preds = %bb.aj
  %i.gl = mul nuw nsw i64 %i.gf, 10
  %i.gm = add nuw nsw i64 %i.gj, %i.gl            ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 7 ; 6 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !100 ; 2 uses
  %i.gp = zext i8 %i.go to i64                    ; 2 uses
  %i.gq = add nsw i64 %i.gp, -48                  ; 2 uses
  %i.gr = icmp ult i64 %i.gq, 10
  br i1 %i.gr, label %bb.al, label %bb.bu, !prof !62

bb.al:                                            ; preds = %bb.ak
  %i.gs = mul nuw nsw i64 %i.gm, 10
  %i.gt = add nuw nsw i64 %i.gq, %i.gs            ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 8 ; 6 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !100 ; 2 uses
  %i.gw = zext i8 %i.gv to i64                    ; 2 uses
  %i.gx = add nsw i64 %i.gw, -48                  ; 2 uses
  %i.gy = icmp ult i64 %i.gx, 10
  br i1 %i.gy, label %bb.am, label %bb.bx, !prof !62

bb.am:                                            ; preds = %bb.al
  %i.gz = mul nuw nsw i64 %i.gt, 10
  %i.ha = add nuw nsw i64 %i.gx, %i.gz            ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 9 ; 6 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !100 ; 2 uses
  %i.hd = zext i8 %i.hc to i64                    ; 2 uses
  %i.he = add nsw i64 %i.hd, -48                  ; 2 uses
  %i.hf = icmp ult i64 %i.he, 10
  br i1 %i.hf, label %bb.an, label %bb.ca, !prof !62

bb.an:                                            ; preds = %bb.am
  %i.hg = mul nuw nsw i64 %i.ha, 10
  %i.hh = add nuw nsw i64 %i.he, %i.hg            ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 10 ; 6 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !100 ; 2 uses
  %i.hk = zext i8 %i.hj to i64                    ; 2 uses
  %i.hl = add nsw i64 %i.hk, -48                  ; 2 uses
  %i.hm = icmp ult i64 %i.hl, 10
  br i1 %i.hm, label %bb.ao, label %bb.cd, !prof !62

bb.ao:                                            ; preds = %bb.an
  %i.hn = mul nuw nsw i64 %i.hh, 10
  %i.ho = add nuw nsw i64 %i.hl, %i.hn            ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 11 ; 6 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !100 ; 2 uses
end_hunk_4
begin_hunk_5_@yyjson_read_fp:bb.a
bb.l:                                             ; preds = %bb.j
  %i.t = tail call i64 @fread(ptr noundef nonnull %i.r, i64 noundef 1, i64 noundef %spec.select125, ptr noundef nonnull %0)
  %.not122 = icmp eq i64 %i.t, %spec.select125
  br i1 %.not122, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.9, ptr %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 13, ptr %spec.store.select, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  tail call void %i.v(ptr noundef %i.q, ptr noundef nonnull %i.r) #33
  br label %.critedge

bb.n:                                             ; preds = %bb.u
  %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  tail call void %i.x(ptr noundef %i.l, ptr noundef nonnull %.196) #33
  br label %.critedge

bb.o:                                             ; preds = %.preheader, %bb.u
  %i.y = phi i64 [ 68, %.preheader ], [ %i.ak, %bb.u ] ; 6 uses
  %.0167 = phi i64 [ 64, %.preheader ], [ %spec.select124, %bb.u ] ; 4 uses
  %.094166 = phi i64 [ 4, %.preheader ], [ %i.y, %bb.u ]
  %.095165 = phi ptr [ null, %.preheader ], [ %.196, %bb.u ] ; 3 uses
  %.3100164 = phi i64 [ %.299205, %.preheader ], [ %i.ai, %bb.u ]
  %.not117 = icmp eq ptr %.095165, null
  br i1 %.not117, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.z = tail call ptr %i.m(ptr noundef %i.l, i64 noundef %i.y) #33 ; 2 uses
  %.not118 = icmp eq ptr %i.z, null
  br i1 %.not118, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  %i.aa = tail call ptr %i.j(ptr noundef %i.l, ptr noundef nonnull %.095165, i64 noundef %.094166, i64 noundef %i.y) #33 ; 2 uses
  %.not119 = icmp eq ptr %i.aa, null
  br i1 %.not119, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60
  tail call void %i.ac(ptr noundef %i.l, ptr noundef nonnull %.095165) #33
  br label %.critedge

bb.t:                                             ; preds = %bb.r, %bb.p
  %.196 = phi ptr [ %i.z, %bb.p ], [ %i.aa, %bb.r ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.196, i64 %i.y
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.af = sub nsw i64 0, %.0167
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = tail call i64 @fread(ptr noundef nonnull %i.ag, i64 noundef 1, i64 noundef %.0167, ptr noundef nonnull %0) ; 2 uses
  %i.ai = add nsw i64 %i.ah, %.3100164            ; 2 uses
  %.not120 = icmp eq i64 %i.ah, %.0167
  br i1 %.not120, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.aj = shl nuw nsw i64 %.0167, 1
  %spec.select124 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 536870912) ; 2 uses
  %i.ak = add i64 %spec.select124, %i.y           ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.y
  br i1 %i.al, label %bb.n, label %bb.o

.loopexit:                                        ; preds = %bb.t, %bb.l
  %.5 = phi i64 [ %spec.select125, %bb.l ], [ %i.ai, %bb.t ] ; 2 uses
  %.3 = phi ptr [ %i.r, %bb.l ], [ %.196, %bb.t ] ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %.3, i64 %.5
  store i32 0, ptr %i.am, align 1
  %i.an = or i32 %1, 1
  %i.ao = call ptr @yyjson_read_opts(ptr noundef nonnull %.3, i64 noundef %.5, i32 noundef %i.an, ptr noundef nonnull %5, ptr noundef nonnull %spec.store.select) ; 3 uses
  %.not123 = icmp eq ptr %i.ao, null
  br i1 %.not123, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store ptr %.3, ptr %i.ap, align 8, !tbaa !109
  br label %.critedge

bb.w:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !61
  call void %i.ar(ptr noundef %i.at, ptr noundef nonnull %.3) #33
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.s, %bb.n, %bb.w, %bb.v, %bb.m, %bb.k, %bb.e
  %.1102 = phi ptr [ null, %bb.e ], [ null, %bb.k ], [ null, %bb.m ], [ %i.ao, %bb.v ], [ null, %bb.w ], [ null, %bb.n ], [ null, %bb.s ], [ null, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret ptr %.1102
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @yyjson_read_number(ptr noundef %0, ptr nofree noundef writeonly %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %5 = alloca %struct.bigint, align 8             ; 29 uses
  %6 = alloca %struct.bigint, align 8             ; 19 uses
  %i.b = alloca ptr, align 8                      ; 49 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 16 uses
  %i.f = ptrtoint ptr %0 to i64                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %0, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.c, ptr %i.d, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %.not = icmp eq ptr %4, null                    ; 3 uses
  %.not23 = icmp eq ptr %0, null
  br i1 %.not23, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %.cont.cont.cont, label %.cont.cont.else

.cont.cont.else:                                  ; preds = %bb.b
  %.sroa.gep80 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.gep80, align 8, !tbaa !113
  %.sroa.gep83 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %.sroa.gep83, align 8, !tbaa !114
  store i32 1, ptr %4, align 8, !tbaa !115
  br label %.cont.cont.cont

bb.c:                                             ; preds = %bb.a
  %.not24 = icmp eq ptr %1, null
  br i1 %.not24, label %bb.d, label %bb.e, !prof !45

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %.cont.cont.cont, label %.cont86.cont.else

.cont86.cont.else:                                ; preds = %bb.d
  %.sroa.gep74 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.gep74, align 8, !tbaa !113
  %.sroa.gep77 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.11, ptr %.sroa.gep77, align 8, !tbaa !114
  store i32 1, ptr %4, align 8, !tbaa !115
  br label %.cont.cont.cont

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !119
  %i.g = and i32 %2, 32
  %.not150 = icmp eq i32 %i.g, 0
  br i1 %.not150, label %bb.f, label %.split, !prof !62

.split:                                           ; preds = %bb.e
  %i.h = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.h, label %bb.in, label %bb.im

bb.f:                                             ; preds = %bb.e
  %i.i = load i8, ptr %0, align 1, !tbaa !100     ; 3 uses
  %i.j = icmp eq i8 %i.i, 45                      ; 58 uses
  %i.k = zext i1 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 7 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !100   ; 6 uses
  %i.n = add i8 %i.m, -49
  %i.o = icmp ult i8 %i.n, 9
  br i1 %i.o, label %._crit_edge, label %.lr.ph, !prof !120

.lr.ph:                                           ; preds = %bb.f
  %i.p = and i32 %2, 512
  %.not342 = icmp ne i32 %i.p, 0                  ; 3 uses
  br i1 %.not342, label %.lr.ph.split.us.preheader, label %.lr.ph.split, !prof !45

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not.i.us.peel = icmp eq i8 %i.m, 48
  br i1 %.not.i.us.peel, label %.split221.us, label %bb.g, !prof !62

bb.g:                                             ; preds = %.lr.ph.split.us.preheader
  %i.r = icmp ne i8 %i.m, 43
  %or.cond990.i.us.peel.not = or i1 %i.r, %i.j
  br i1 %or.cond990.i.us.peel.not, label %.split223.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.q, align 1, !tbaa !100   ; 4 uses
  %i.t = add i8 %i.s, -49
  %i.u = icmp ult i8 %i.t, 9
  br i1 %i.u, label %._crit_edge, label %.lr.ph.split.us.preheader.peel.newph, !prof !121

.lr.ph.split.us.preheader.peel.newph:             ; preds = %bb.h
  %.not.i.us = icmp eq i8 %i.s, 48
  br i1 %.not.i.us, label %.split221.us, label %.split223.us, !prof !62

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i8 %i.m, 48
  br i1 %.not.i, label %.split221.us.thread, label %.loopexit204, !prof !62

.split223.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %bb.g
  %.lcssa741 = phi i8 [ %i.m, %bb.g ], [ %i.s, %.lr.ph.split.us.preheader.peel.newph ]
  %.0903.i218.us.lcssa738 = phi ptr [ %i.l, %bb.g ], [ %i.q, %.lr.ph.split.us.preheader.peel.newph ] ; 5 uses
  %i.v = icmp eq i8 %.lcssa741, 46
  br i1 %i.v, label %bb.i, label %.loopexit204

bb.i:                                             ; preds = %.split223.us
  %i.w = getelementptr inbounds nuw i8, ptr %.0903.i218.us.lcssa738, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !100   ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %.thread539, label %.loopexit204

.thread539:                                       ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0903.i218.us.lcssa738, i64 1
  br label %.preheader203

.loopexit204:                                     ; preds = %.lr.ph.split, %bb.i, %.split223.us
  %.0903.i215 = phi ptr [ %.0903.i218.us.lcssa738, %.split223.us ], [ %.0903.i218.us.lcssa738, %bb.i ], [ %i.l, %.lr.ph.split ]
  %i.ab = and i32 %2, 16
  %.not151 = icmp eq i32 %i.ab, 0
  br i1 %.not151, label %read_inf_or_nan.exit.thread, label %bb.j, !prof !62

bb.j:                                             ; preds = %.loopexit204
  %i.ac = icmp ne i8 %i.i, 43
  %brmerge = or i1 %.not342, %i.ac
  br i1 %brmerge, label %bb.k, label %read_inf_or_nan.exit.thread, !prof !122

bb.k:                                             ; preds = %bb.j
  %i.ad = zext i8 %i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !100 ; 2 uses
  %i.ag = and i8 %i.af, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 9 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !100
  %i.ak = and i8 %i.aj, -33
  %i.al = icmp eq i8 %i.ak, 73
  br i1 %i.al, label %bb.l, label %._crit_edge431

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !100
  %i.ao = and i8 %i.an, -33
  %i.ap = icmp eq i8 %i.ao, 78
  br i1 %i.ap, label %bb.m, label %._crit_edge431

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !100
  %i.as = and i8 %i.ar, -33
  %i.at = icmp eq i8 %i.as, 70
  br i1 %i.at, label %bb.n, label %._crit_edge431

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 3 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !100
  %i.aw = and i8 %i.av, -33
  %i.ax = icmp eq i8 %i.aw, 73
  br i1 %i.ax, label %bb.o, label %read_inf.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !100
  %i.ba = and i8 %i.az, -33
  %i.bb = icmp eq i8 %i.ba, 78
  br i1 %i.bb, label %bb.p, label %._crit_edge431

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !100
  %i.be = and i8 %i.bd, -33
  %i.bf = icmp eq i8 %i.be, 73
  br i1 %i.bf, label %bb.q, label %._crit_edge431

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !100
  %i.bi = and i8 %i.bh, -33
  %i.bj = icmp eq i8 %i.bi, 84
  br i1 %i.bj, label %bb.r, label %._crit_edge431

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !100
  %i.bm = and i8 %i.bl, -33
  %i.bn = icmp eq i8 %i.bm, 89
  br i1 %i.bn, label %bb.s, label %._crit_edge431

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %read_inf.exit

read_inf.exit:                                    ; preds = %bb.s, %bb.n
  %.0.i25 = phi ptr [ %i.bo, %bb.s ], [ %i.au, %bb.n ]
  store ptr %.0.i25, ptr %i.b, align 8, !tbaa !107
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.bp = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !100
  br label %.sink.split618

._crit_edge431:                                   ; preds = %bb.o, %bb.k, %bb.r, %bb.q, %bb.p, %bb.m, %bb.l
  %i.br = and i8 %i.af, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs ; 4 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !100
  %i.bv = and i8 %i.bu, -33
  %i.bw = icmp eq i8 %i.bv, 78
  br i1 %i.bw, label %bb.t, label %read_inf_or_nan.exit.thread

bb.t:                                             ; preds = %._crit_edge431
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !100
  %i.bz = and i8 %i.by, -33
  %i.ca = icmp eq i8 %i.bz, 65
  br i1 %i.ca, label %bb.u, label %read_inf_or_nan.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !100
  %i.cd = and i8 %i.cc, -33
  %i.ce = icmp eq i8 %i.cd, 78
  br i1 %i.ce, label %bb.v, label %read_inf_or_nan.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  store ptr %i.cf, ptr %i.b, align 8, !tbaa !107
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.cg = select i1 %i.j, i64 -2251799813685248, i64 9221120237041090560
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !100
  br label %.sink.split618

read_inf_or_nan.exit.thread:                      ; preds = %bb.j, %._crit_edge431, %bb.t, %bb.u, %.loopexit204
  store ptr @.str.89, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread138

.split221.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %.lr.ph.split.us.preheader
  %.0903.i218.us.lcssa = phi ptr [ %i.l, %.lr.ph.split.us.preheader ], [ %i.q, %.lr.ph.split.us.preheader.peel.newph ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0903.i218.us.lcssa, i64 1 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !100 ; 3 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !100
  %i.cn = and i8 %i.cm, 26
  %.not152 = icmp eq i8 %i.cn, 0
  br i1 %.not152, label %bb.w, label %bb.x, !prof !62

.split221.us.thread:                              ; preds = %.lr.ph.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !100 ; 2 uses
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !100
  %i.ct = and i8 %i.cs, 26
  %.not152536 = icmp eq i8 %i.ct, 0
  br i1 %.not152536, label %.thread, label %bb.x, !prof !62

bb.w:                                             ; preds = %.split221.us
  %i.cu = and i8 %i.cj, -33
  %i.cv = icmp eq i8 %i.cu, 88
  br i1 %i.cv, label %.split140, label %.thread, !prof !297

.split140:                                        ; preds = %bb.w
  %i.cw = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.cw, label %bb.in, label %bb.im

.thread:                                          ; preds = %.split221.us.thread, %bb.w
  %i.cx = phi ptr [ %i.ci, %bb.w ], [ %i.co, %.split221.us.thread ]
  %i.cy = select i1 %i.j, i64 12, i64 4
  store i64 %i.cy, ptr %1, align 8, !tbaa !99
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !100
  store ptr %i.cx, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

bb.x:                                             ; preds = %.split221.us.thread, %.split221.us
  %i.da = phi i8 [ %i.cp, %.split221.us.thread ], [ %i.cj, %.split221.us ] ; 3 uses
  %i.db = phi ptr [ %i.co, %.split221.us.thread ], [ %i.ci, %.split221.us ] ; 5 uses
  %.us-phi537 = phi ptr [ %i.l, %.split221.us.thread ], [ %.0903.i218.us.lcssa, %.split221.us ]
  %i.dc = icmp eq i8 %i.da, 46
  br i1 %i.dc, label %bb.y, label %bb.ad, !prof !62

bb.y:                                             ; preds = %bb.x
  %.phi.trans.insert433 = getelementptr inbounds nuw i8, ptr %.us-phi537, i64 2
  %.pre434 = load i8, ptr %.phi.trans.insert433, align 1, !tbaa !100 ; 3 uses
  %.pre437 = add i8 %.pre434, -48
  %i.dd = icmp ult i8 %.pre437, 10
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 4 uses
  br i1 %i.dd, label %.preheader203, label %bb.z, !prof !298

.preheader203:                                    ; preds = %.thread539, %bb.y
  %i.df = phi ptr [ %i.aa, %.thread539 ], [ %i.de, %bb.y ] ; 2 uses
  %.1904.i542 = phi ptr [ %.0903.i218.us.lcssa738, %.thread539 ], [ %i.db, %bb.y ]
  %i.dg = phi i8 [ %i.x, %.thread539 ], [ %.pre434, %bb.y ] ; 2 uses
  %i.dh = icmp eq i8 %i.dg, 48
  br i1 %i.dh, label %.lr.ph230, label %._crit_edge231.thread, !prof !123

bb.z:                                             ; preds = %bb.y
  br i1 %.not342, label %bb.aa, label %bb.ac, !prof !45

bb.aa:                                            ; preds = %bb.z
  %i.di = and i8 %.pre434, -33
  %i.dj = icmp eq i8 %i.di, 69
  br i1 %i.dj, label %bb.fw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.dk = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !100
  store ptr %i.de, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

bb.ac:                                            ; preds = %bb.z
  store ptr @.str.90, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread138

.lr.ph230:                                        ; preds = %.preheader203, %.lr.ph230
  %.2905.i229 = phi ptr [ %i.dm, %.lr.ph230 ], [ %i.df, %.preheader203 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2905.i229, i64 1 ; 4 uses
  %.pr = load i8, ptr %i.dm, align 1, !tbaa !100  ; 4 uses
  %i.dn = icmp eq i8 %.pr, 48
  br i1 %i.dn, label %.lr.ph230, label %._crit_edge231, !prof !124, !llvm.loop !6

._crit_edge231:                                   ; preds = %.lr.ph230
  %.pre439 = add i8 %.pr, -48
  %i.do = icmp ult i8 %.pre439, 10
  br i1 %i.do, label %._crit_edge231.thread, label %.thread548, !prof !299

._crit_edge231.thread:                            ; preds = %.preheader203, %._crit_edge231
  %.2905.i.lcssa547 = phi ptr [ %i.dm, %._crit_edge231 ], [ %i.df, %.preheader203 ]
  %.lcssa207546 = phi i8 [ %.pr, %._crit_edge231 ], [ %i.dg, %.preheader203 ]
  %i.dp = zext nneg i8 %.lcssa207546 to i64
  %i.dq = add nsw i64 %i.dp, -48
  %i.dr = getelementptr inbounds i8, ptr %.2905.i.lcssa547, i64 -1
  br label %bb.dg

bb.ad:                                            ; preds = %bb.x
  %.pre462 = add i8 %i.da, -48
  %i.ds = icmp ult i8 %.pre462, 10
  br i1 %i.ds, label %bb.ae, label %.thread548, !prof !300

bb.ae:                                            ; preds = %bb.ad
  store ptr @.str.91, ptr %i.e, align 8, !tbaa !107
  %i.dt = getelementptr inbounds i8, ptr %i.db, i64 -1
  br label %read_num.exit.thread138

.thread548:                                       ; preds = %._crit_edge231, %bb.ad
  %.3906.i551 = phi ptr [ %i.db, %bb.ad ], [ %i.dm, %._crit_edge231 ] ; 3 uses
  %i.du = phi i8 [ %i.da, %bb.ad ], [ %.pr, %._crit_edge231 ]
  %i.dv = and i8 %i.du, -33
  %i.dw = icmp eq i8 %i.dv, 69
  br i1 %i.dw, label %bb.af, label %.loopexit202, !prof !45

bb.af:                                            ; preds = %.thread548
  %i.dx = getelementptr inbounds nuw i8, ptr %.3906.i551, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !100
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !100
  %i.ec = trunc i8 %i.eb to i1
  %i.ed = select i1 %i.ec, i64 2, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.3906.i551, i64 %i.ed ; 3 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !100
  %i.eg = add i8 %i.ef, -48
  %i.eh = icmp ult i8 %i.eg, 10
  br i1 %i.eh, label %.preheader201, label %bb.ag, !prof !62

bb.ag:                                            ; preds = %bb.af
  store ptr @.str.92, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread138

.preheader201:                                    ; preds = %bb.af, %.preheader201
  %.4907.i = phi ptr [ %i.ei, %.preheader201 ], [ %i.ee, %bb.af ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.4907.i, i64 1 ; 3 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !100
  %i.ek = add i8 %i.ej, -48
  %i.el = icmp ult i8 %i.ek, 10
  br i1 %i.el, label %.preheader201, label %.loopexit202, !llvm.loop !7

.loopexit202:                                     ; preds = %.preheader201, %.thread548
  %.5908.i = phi ptr [ %.3906.i551, %.thread548 ], [ %i.ei, %.preheader201 ]
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.em = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !100
  store ptr %.5908.i, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

._crit_edge:                                      ; preds = %bb.h, %bb.f
  %.0903.i.lcssa = phi ptr [ %i.l, %bb.f ], [ %i.q, %bb.h ] ; 39 uses
  %.lcssa208 = phi i8 [ %i.m, %bb.f ], [ %i.s, %bb.h ]
  %i.eo = zext nneg i8 %.lcssa208 to i64          ; 2 uses
  %i.ep = add nsw i64 %i.eo, -48                  ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 1 ; 6 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !100 ; 2 uses
  %i.es = zext i8 %i.er to i64                    ; 2 uses
  %i.et = add nsw i64 %i.es, -48                  ; 2 uses
  %i.eu = icmp ult i64 %i.et, 10
  br i1 %i.eu, label %bb.ah, label %bb.be, !prof !62

bb.ah:                                            ; preds = %._crit_edge
  %i.ev = mul nuw nsw i64 %i.ep, 10
  %i.ew = add nuw nsw i64 %i.et, %i.ev            ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 2 ; 6 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !100 ; 2 uses
  %i.ez = zext i8 %i.ey to i64                    ; 2 uses
  %i.fa = add nsw i64 %i.ez, -48                  ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 10
  br i1 %i.fb, label %bb.ai, label %bb.bh, !prof !62

bb.ai:                                            ; preds = %bb.ah
  %i.fc = mul nuw nsw i64 %i.ew, 10
  %i.fd = add nuw nsw i64 %i.fa, %i.fc            ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 3 ; 6 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !100 ; 2 uses
  %i.fg = zext i8 %i.ff to i64                    ; 2 uses
  %i.fh = add nsw i64 %i.fg, -48                  ; 2 uses
  %i.fi = icmp ult i64 %i.fh, 10
  br i1 %i.fi, label %bb.aj, label %bb.bk, !prof !62

bb.aj:                                            ; preds = %bb.ai
  %i.fj = mul nuw nsw i64 %i.fd, 10
  %i.fk = add nuw nsw i64 %i.fh, %i.fj            ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 4 ; 6 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !100 ; 2 uses
  %i.fn = zext i8 %i.fm to i64                    ; 2 uses
  %i.fo = add nsw i64 %i.fn, -48                  ; 2 uses
  %i.fp = icmp ult i64 %i.fo, 10
  br i1 %i.fp, label %bb.ak, label %bb.bn, !prof !62

bb.ak:                                            ; preds = %bb.aj
  %i.fq = mul nuw nsw i64 %i.fk, 10
  %i.fr = add nuw nsw i64 %i.fo, %i.fq            ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 5 ; 6 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !100 ; 2 uses
  %i.fu = zext i8 %i.ft to i64                    ; 2 uses
  %i.fv = add nsw i64 %i.fu, -48                  ; 2 uses
  %i.fw = icmp ult i64 %i.fv, 10
  br i1 %i.fw, label %bb.al, label %bb.bq, !prof !62

bb.al:                                            ; preds = %bb.ak
  %i.fx = mul nuw nsw i64 %i.fr, 10
  %i.fy = add nuw nsw i64 %i.fv, %i.fx            ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 6 ; 6 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !100 ; 2 uses
  %i.gb = zext i8 %i.ga to i64                    ; 2 uses
  %i.gc = add nsw i64 %i.gb, -48                  ; 2 uses
  %i.gd = icmp ult i64 %i.gc, 10
  br i1 %i.gd, label %bb.am, label %bb.bt, !prof !62

bb.am:                                            ; preds = %bb.al
  %i.ge = mul nuw nsw i64 %i.fy, 10
  %i.gf = add nuw nsw i64 %i.gc, %i.ge            ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 7 ; 6 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !100 ; 2 uses
  %i.gi = zext i8 %i.gh to i64                    ; 2 uses
  %i.gj = add nsw i64 %i.gi, -48                  ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 10
  br i1 %i.gk, label %bb.an, label %bb.bw, !prof !62

bb.an:                                            ; preds = %bb.am
  %i.gl = mul nuw nsw i64 %i.gf, 10
  %i.gm = add nuw nsw i64 %i.gj, %i.gl            ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 8 ; 6 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !100 ; 2 uses
  %i.gp = zext i8 %i.go to i64                    ; 2 uses
  %i.gq = add nsw i64 %i.gp, -48                  ; 2 uses
  %i.gr = icmp ult i64 %i.gq, 10
  br i1 %i.gr, label %bb.ao, label %bb.bz, !prof !62

bb.ao:                                            ; preds = %bb.an
  %i.gs = mul nuw nsw i64 %i.gm, 10
  %i.gt = add nuw nsw i64 %i.gq, %i.gs            ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 9 ; 6 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !100 ; 2 uses
  %i.gw = zext i8 %i.gv to i64                    ; 2 uses
  %i.gx = add nsw i64 %i.gw, -48                  ; 2 uses
  %i.gy = icmp ult i64 %i.gx, 10
  br i1 %i.gy, label %bb.ap, label %bb.cc, !prof !62

bb.ap:                                            ; preds = %bb.ao
  %i.gz = mul nuw nsw i64 %i.gt, 10
  %i.ha = add nuw nsw i64 %i.gx, %i.gz            ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 10 ; 6 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !100 ; 2 uses
  %i.hd = zext i8 %i.hc to i64                    ; 2 uses
  %i.he = add nsw i64 %i.hd, -48                  ; 2 uses
  %i.hf = icmp ult i64 %i.he, 10
  br i1 %i.hf, label %bb.aq, label %bb.cf, !prof !62

bb.aq:                                            ; preds = %bb.ap
  %i.hg = mul nuw nsw i64 %i.ha, 10
  %i.hh = add nuw nsw i64 %i.he, %i.hg            ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 11 ; 6 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !100 ; 2 uses
  %i.hk = zext i8 %i.hj to i64                    ; 2 uses
  %i.hl = add nsw i64 %i.hk, -48                  ; 2 uses
  %i.hm = icmp ult i64 %i.hl, 10
end_hunk_5
begin_hunk_6_@yyjson_incr_read:bb.a
  %.sroa.13338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.13338.0.copyload = load ptr, ptr %.sroa.13338.0..sroa_idx, align 8, !tbaa !47 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !342  ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !343  ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !344  ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 25 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !345 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !146 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !346 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !347 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.ai = load i8, ptr %i.m, align 1, !tbaa !100
  store i8 0, ptr %i.m, align 1, !tbaa !100
  %i.aj = load i32, ptr %0, align 8, !tbaa !145
  switch i32 %i.aj, label %bb.h [
    i32 0, label %bb.i
    i32 1, label %bb.nj
    i32 2, label %..preheader3575_crit_edge
    i32 3, label %bb.abl
    i32 4, label %..preheader3613_crit_edge
    i32 5, label %._crit_edge4904
    i32 6, label %..preheader3579_crit_edge
    i32 7, label %read_str_opt.exit
  ]

..preheader3575_crit_edge:                        ; preds = %bb.g
  %.promoted4033.pre = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %.preheader3575

..preheader3579_crit_edge:                        ; preds = %bb.g
  %.promoted4026.pre = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %.preheader3579

._crit_edge4904:                                  ; preds = %bb.g
  %.pre4905 = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %bb.afi

..preheader3613_crit_edge:                        ; preds = %bb.g
  %.promoted3817.pre = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %.preheader3613

bb.h:                                             ; preds = %bb.g
  %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.14, ptr %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.atv

bb.i:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !107 ; 4 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !100 ; 4 uses
  %i.am = and i8 %i.al, -33
  %i.an = icmp eq i8 %i.am, 91
  br i1 %i.an, label %bb.j, label %.preheader3630, !prof !62

.preheader3630:                                   ; preds = %bb.i
  %i.ao = zext i8 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !100
  %i.ar = and i8 %i.aq, 4
  %.not33513744 = icmp eq i8 %i.ar, 0
  br i1 %.not33513744, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader3630, %.lr.ph
  %i.as = phi ptr [ %i.at, %.lr.ph ], [ %i.ak, %.preheader3630 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 4 uses
  store ptr %i.at, ptr %i.d, align 8, !tbaa !107
  %i.au = load i8, ptr %i.at, align 1, !tbaa !100 ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !100
  %i.ay = and i8 %i.ax, 4
  %.not3351 = icmp eq i8 %i.ay, 0
  br i1 %.not3351, label %._crit_edge, label %.lr.ph, !llvm.loop !302

._crit_edge:                                      ; preds = %.lr.ph, %.preheader3630
  %i.az = phi i8 [ %i.al, %.preheader3630 ], [ %i.au, %.lr.ph ]
  %.lcssa3743 = phi ptr [ %i.ak, %.preheader3630 ], [ %i.at, %.lr.ph ] ; 2 uses
  %.not814 = icmp ult ptr %.lcssa3743, %i.m
  br i1 %.not814, label %bb.j, label %.loopexit3576, !prof !62

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ba = phi i8 [ %i.az, %._crit_edge ], [ %i.al, %bb.i ] ; 2 uses
  %i.bb = phi ptr [ %.lcssa3743, %._crit_edge ], [ %i.ak, %bb.i ]
  %.not815 = icmp eq ptr %i.ac, null
  br i1 %.not815, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bc = and i8 %i.ba, -33
  %i.bd = icmp eq i8 %i.bc, 91
  br i1 %i.bd, label %bb.l, label %bb.n, !prof !62

bb.l:                                             ; preds = %bb.k
  %i.be = and i32 %.fr, 2
  %.not3352 = icmp eq i32 %i.be, 0
  br i1 %.not3352, label %bb.m, label %bb.n, !prof !62

bb.m:                                             ; preds = %bb.l
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !142
  %i.bg = udiv i64 %i.bf, 6
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846967)
  %i.bi = add nuw nsw i64 %i.bh, 8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.0722 = phi i64 [ 50, %bb.l ], [ %i.bi, %bb.m ], [ 5, %bb.k ] ; 5 uses
  %i.bj = shl nuw i64 %.0722, 4
  %i.bk = call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.13338.0.copyload, i64 noundef %i.bj) #33 ; 5 uses
  %.not816 = icmp eq ptr %i.bk, null
  br i1 %.not816, label %bb.ate, label %bb.o, !prof !45

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr [16 x i8], ptr %i.bk, i64 %.0722
  %i.bm = getelementptr i8, ptr %i.bl, i64 -32    ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 64 ; 4 uses
  store ptr %i.bk, ptr %i.ab, align 8, !tbaa !146
  store ptr %i.bm, ptr %i.ad, align 8, !tbaa !346
  store i32 0, ptr %0, align 8, !tbaa !145
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !107 ; 4 uses
  store ptr %i.bo, ptr %i.n, align 8, !tbaa !144
  store ptr %i.bn, ptr %i.z, align 8, !tbaa !345
  store i64 0, ptr %i.t, align 8, !tbaa !342
  store i64 4, ptr %i.v, align 8, !tbaa !343
  %.not817 = icmp ult ptr %i.bo, %i.m
  br i1 %.not817, label %._crit_edge4890, label %.loopexit3576, !prof !62

._crit_edge4890:                                  ; preds = %bb.o
  %.pre = load i8, ptr %i.bo, align 1, !tbaa !100
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge4890, %bb.j
  %i.bp = phi i8 [ %i.ba, %bb.j ], [ %.pre, %._crit_edge4890 ] ; 5 uses
  %i.bq = phi ptr [ %i.bb, %bb.j ], [ %i.bo, %._crit_edge4890 ] ; 37 uses
  %.0752 = phi i64 [ %i.w, %bb.j ], [ 4, %._crit_edge4890 ] ; 11 uses
  %.1723 = phi i64 [ %i.y, %bb.j ], [ %.0722, %._crit_edge4890 ] ; 40 uses
  %.0710 = phi i64 [ %i.u, %bb.j ], [ 0, %._crit_edge4890 ] ; 11 uses
  %.0682 = phi ptr [ %i.ac, %bb.j ], [ %i.bk, %._crit_edge4890 ] ; 11 uses
  %.0645 = phi ptr [ %i.ae, %bb.j ], [ %i.bm, %._crit_edge4890 ] ; 40 uses
  %.0617 = phi ptr [ %i.aa, %bb.j ], [ %i.bn, %._crit_edge4890 ] ; 110 uses
  %.0609 = phi ptr [ %i.ag, %bb.j ], [ %i.bn, %._crit_edge4890 ] ; 44 uses
  switch i8 %i.bp, label %bb.s [
    i8 123, label %bb.q
    i8 91, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.d, align 8, !tbaa !107
  store i64 7, ptr %.0609, align 8, !tbaa !99
  %i.bs = getelementptr inbounds nuw i8, ptr %.0609, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !100
  br label %bb.abl

bb.r:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !107
  store i64 6, ptr %.0609, align 8, !tbaa !99
  %i.bu = getelementptr inbounds nuw i8, ptr %.0609, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !100
  br label %bb.nj

bb.s:                                             ; preds = %bb.p
  %i.bv = zext i8 %i.bp to i64                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !100
  %i.by = and i8 %i.bx, 16
  %.not3459 = icmp eq i8 %i.by, 0
  br i1 %.not3459, label %bb.jf, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !119
  %i.bz = and i32 %.fr, 32
  %.not3464 = icmp eq i32 %i.bz, 0
  br i1 %.not3464, label %bb.u, label %.split, !prof !62

.split:                                           ; preds = %bb.t
  %i.ca = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %.fr, ptr noundef %.0617, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.ca, label %read_str_opt.exit, label %bb.atc, !prof !137

bb.u:                                             ; preds = %bb.t
  %i.cb = icmp eq i8 %i.bp, 45                    ; 56 uses
  %i.cc = zext i1 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cc ; 6 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !100 ; 4 uses
  %i.cf = add i8 %i.ce, -49
  %i.cg = icmp ult i8 %i.cf, 9
  br i1 %i.cg, label %._crit_edge4245, label %.lr.ph4244, !prof !120

.lr.ph4244:                                       ; preds = %bb.u
  %i.ch = and i32 %.fr, 512
  %.not4460 = icmp ne i32 %i.ch, 0                ; 4 uses
  br i1 %.not4460, label %.lr.ph4244.split.us, label %.lr.ph4244.split, !prof !45

.lr.ph4244.split.us:                              ; preds = %.lr.ph4244, %bb.w
  %i.ci = phi i8 [ %i.cm, %bb.w ], [ %i.ce, %.lr.ph4244 ] ; 3 uses
  %.0903.i9874242.us = phi ptr [ %i.cl, %bb.w ], [ %i.cd, %.lr.ph4244 ] ; 9 uses
  %.not.i988.us = icmp eq i8 %i.ci, 48
  br i1 %.not.i988.us, label %.split4249.us, label %bb.v, !prof !62

bb.v:                                             ; preds = %.lr.ph4244.split.us
  %i.cj = icmp eq i8 %i.ci, 43
  %i.ck = icmp eq ptr %.0903.i9874242.us, %i.bq
  %or.cond990.i990.us = and i1 %i.ck, %i.cj
  br i1 %or.cond990.i990.us, label %bb.w, label %.split4252.us

bb.w:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %.0903.i9874242.us, i64 1 ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !100 ; 3 uses
  %i.cn = add i8 %i.cm, -49
  %i.co = icmp ult i8 %i.cn, 9
  br i1 %i.co, label %._crit_edge4245, label %.lr.ph4244.split.us, !prof !121, !llvm.loop !5

.lr.ph4244.split:                                 ; preds = %.lr.ph4244
  %.not.i988 = icmp eq i8 %i.ce, 48
  br i1 %.not.i988, label %.split4249.us.thread, label %.loopexit3540, !prof !62

.split4252.us:                                    ; preds = %bb.v
  %i.cp = icmp eq i8 %i.ci, 46
  br i1 %i.cp, label %bb.x, label %.loopexit3540

bb.x:                                             ; preds = %.split4252.us
  %i.cq = getelementptr inbounds nuw i8, ptr %.0903.i9874242.us, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !100 ; 2 uses
  %i.cs = add i8 %i.cr, -48
  %i.ct = icmp ult i8 %i.cs, 10
  br i1 %i.ct, label %.thread5337, label %.loopexit3540

.thread5337:                                      ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %.0903.i9874242.us, i64 1
  br label %.preheader3539

.loopexit3540:                                    ; preds = %.lr.ph4244.split, %bb.x, %.split4252.us
  %.0903.i9873648 = phi ptr [ %.0903.i9874242.us, %.split4252.us ], [ %.0903.i9874242.us, %bb.x ], [ %i.cd, %.lr.ph4244.split ]
  %i.cv = and i32 %.fr, 16
  %.not3465 = icmp eq i32 %i.cv, 0
  br i1 %.not3465, label %read_inf_or_nan.exit.thread, label %bb.y, !prof !62

bb.y:                                             ; preds = %.loopexit3540
  %i.cw = icmp ne i8 %i.bp, 43
  %brmerge = or i1 %.not4460, %i.cw
  br i1 %brmerge, label %bb.z, label %.thread, !prof !122

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.bv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !100
  %i.cz = and i8 %i.cy, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.da ; 9 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !100
  %i.dd = and i8 %i.dc, -33
  %i.de = icmp eq i8 %i.dd, 73
  br i1 %i.de, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !100
  %i.dh = and i8 %i.dg, -33
  %i.di = icmp eq i8 %i.dh, 78
  br i1 %i.di, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !100
  %i.dl = and i8 %i.dk, -33
  %i.dm = icmp eq i8 %i.dl, 70
  br i1 %i.dm, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 3 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !100
  %i.dp = and i8 %i.do, -33
  %i.dq = icmp eq i8 %i.dp, 73
  br i1 %i.dq, label %bb.ad, label %read_inf.exit1482

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !100
  %i.dt = and i8 %i.ds, -33
  %i.du = icmp eq i8 %i.dt, 78
  br i1 %i.du, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 5
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !100
  %i.dx = and i8 %i.dw, -33
  %i.dy = icmp eq i8 %i.dx, 73
  br i1 %i.dy, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 6
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !100
  %i.eb = and i8 %i.ea, -33
  %i.ec = icmp eq i8 %i.eb, 84
  br i1 %i.ec, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %i.db, i64 7
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !100
  %i.ef = and i8 %i.ee, -33
  %i.eg = icmp eq i8 %i.ef, 89
  br i1 %i.eg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  br label %read_inf.exit1482

read_inf.exit1482:                                ; preds = %bb.ah, %bb.ac
  %.0.i1481 = phi ptr [ %i.eh, %bb.ah ], [ %i.dn, %bb.ac ]
  store ptr %.0.i1481, ptr %i.d, align 8, !tbaa !107
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.ei = select i1 %i.cb, i64 -4503599627370496, i64 9218868437227405312
  %i.ej = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !100
  br label %read_num.exit1117.thread

bb.ai:                                            ; preds = %bb.ad, %bb.z, %bb.ag, %bb.af, %bb.ae, %bb.ab, %bb.aa
  %i.ek = load i8, ptr %i.bq, align 1, !tbaa !100 ; 2 uses
  %i.el = icmp ne i8 %i.ek, 43
  %brmerge3330 = or i1 %.not4460, %i.el
  br i1 %brmerge3330, label %bb.aj, label %read_inf_or_nan.exit.thread, !prof !138

.thread:                                          ; preds = %bb.y
  %i.em = load i8, ptr %i.bq, align 1, !tbaa !100 ; 2 uses
  %i.en = icmp eq i8 %i.em, 43
  br i1 %i.en, label %read_inf_or_nan.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread
  %i.eo = phi i8 [ %i.em, %.thread ], [ %i.ek, %bb.ai ] ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 45
  %i.eq = zext i8 %i.eo to i64
  %i.er = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !100
  %i.et = and i8 %i.es, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.eu ; 4 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !100
  %i.ex = and i8 %i.ew, -33
  %i.ey = icmp eq i8 %i.ex, 78
  br i1 %i.ey, label %bb.ak, label %read_inf_or_nan.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !100
  %i.fb = and i8 %i.fa, -33
  %i.fc = icmp eq i8 %i.fb, 65
  br i1 %i.fc, label %bb.al, label %read_inf_or_nan.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !100
  %i.ff = and i8 %i.fe, -33
  %i.fg = icmp eq i8 %i.ff, 78
  br i1 %i.fg, label %bb.am, label %read_inf_or_nan.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 3
  store ptr %i.fh, ptr %i.d, align 8, !tbaa !107
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.fi = select i1 %i.ep, i64 -2251799813685248, i64 9221120237041090560
  %i.fj = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !100
  br label %read_num.exit1117.thread

read_inf_or_nan.exit.thread:                      ; preds = %bb.ai, %.thread, %bb.aj, %bb.ak, %bb.al, %.loopexit3540
  store ptr @.str.89, ptr %i.e, align 8, !tbaa !107
  store ptr %.0903.i9873648, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread3167

.split4249.us:                                    ; preds = %.lr.ph4244.split.us
  %i.fk = getelementptr inbounds nuw i8, ptr %.0903.i9874242.us, i64 1 ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !100 ; 3 uses
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !100
  %i.fp = and i8 %i.fo, 26
  %.not3466 = icmp eq i8 %i.fp, 0
  br i1 %.not3466, label %bb.an, label %bb.ao, !prof !62

.split4249.us.thread:                             ; preds = %.lr.ph4244.split
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 3 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !100 ; 2 uses
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !100
  %i.fv = and i8 %i.fu, 26
  %.not34665333 = icmp eq i8 %i.fv, 0
  br i1 %.not34665333, label %.thread5335, label %bb.ao, !prof !62

bb.an:                                            ; preds = %.split4249.us
  %i.fw = and i8 %i.fl, -33
  %i.fx = icmp eq i8 %i.fw, 88
  br i1 %i.fx, label %.split3169, label %.thread5335, !prof !348

.split3169:                                       ; preds = %bb.an
  %i.fy = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %.fr, ptr noundef %.0617, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.fy, label %read_str_opt.exit, label %bb.atc, !prof !137

.thread5335:                                      ; preds = %.split4249.us.thread, %bb.an
  %i.fz = phi ptr [ %i.fk, %bb.an ], [ %i.fq, %.split4249.us.thread ]
  %i.ga = select i1 %i.cb, i64 12, i64 4
  store i64 %i.ga, ptr %.0617, align 8, !tbaa !99
  %i.gb = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 0, ptr %i.gb, align 8, !tbaa !100
  store ptr %i.fz, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

bb.ao:                                            ; preds = %.split4249.us.thread, %.split4249.us
  %i.gc = phi i8 [ %i.fr, %.split4249.us.thread ], [ %i.fl, %.split4249.us ] ; 3 uses
  %i.gd = phi ptr [ %i.fq, %.split4249.us.thread ], [ %i.fk, %.split4249.us ] ; 5 uses
  %.us-phi42505334 = phi ptr [ %i.cd, %.split4249.us.thread ], [ %.0903.i9874242.us, %.split4249.us ]
  %i.ge = icmp eq i8 %i.gc, 46
  br i1 %i.ge, label %bb.ap, label %bb.au, !prof !62

bb.ap:                                            ; preds = %bb.ao
  %.phi.trans.insert4946 = getelementptr inbounds nuw i8, ptr %.us-phi42505334, i64 2
  %.pre4947 = load i8, ptr %.phi.trans.insert4946, align 1, !tbaa !100 ; 3 uses
  %.pre4962.a = add i8 %.pre4947, -48
  %i.gf = icmp ult i8 %.pre4962.a, 10
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 4 uses
  br i1 %i.gf, label %.preheader3539, label %bb.aq, !prof !349

.preheader3539:                                   ; preds = %.thread5337, %bb.ap
  %i.gh = phi ptr [ %i.cu, %.thread5337 ], [ %i.gg, %bb.ap ] ; 2 uses
  %.1904.i9915340 = phi ptr [ %.0903.i9874242.us, %.thread5337 ], [ %i.gd, %bb.ap ]
  %i.gi = phi i8 [ %i.cr, %.thread5337 ], [ %.pre4947, %bb.ap ] ; 2 uses
  %i.gj = icmp eq i8 %i.gi, 48
  br i1 %i.gj, label %.lr.ph4260, label %._crit_edge4261.thread, !prof !123

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not4460, label %bb.ar, label %bb.at, !prof !45

bb.ar:                                            ; preds = %bb.aq
  %i.gk = and i8 %.pre4947, -33
  %i.gl = icmp eq i8 %i.gk, 69
  br i1 %i.gl, label %bb.gn, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.gm = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.gn = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !100
  store ptr %i.gg, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

bb.at:                                            ; preds = %bb.aq
  store ptr @.str.90, ptr %i.e, align 8, !tbaa !107
  store ptr %i.gg, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread3167

.lr.ph4260:                                       ; preds = %.preheader3539, %.lr.ph4260
  %.2905.i10394259 = phi ptr [ %i.go, %.lr.ph4260 ], [ %i.gh, %.preheader3539 ]
  %i.go = getelementptr inbounds nuw i8, ptr %.2905.i10394259, i64 1 ; 4 uses
  %.pr = load i8, ptr %i.go, align 1, !tbaa !100  ; 4 uses
  %i.gp = icmp eq i8 %.pr, 48
  br i1 %i.gp, label %.lr.ph4260, label %._crit_edge4261, !prof !124, !llvm.loop !6

._crit_edge4261:                                  ; preds = %.lr.ph4260
  %.pre4964 = add i8 %.pr, -48
  %i.gq = icmp ult i8 %.pre4964, 10
  br i1 %i.gq, label %._crit_edge4261.thread, label %.thread5346, !prof !125

._crit_edge4261.thread:                           ; preds = %.preheader3539, %._crit_edge4261
  %.2905.i1039.lcssa5345 = phi ptr [ %i.go, %._crit_edge4261 ], [ %i.gh, %.preheader3539 ]
  %.lcssa36405344 = phi i8 [ %.pr, %._crit_edge4261 ], [ %i.gi, %.preheader3539 ]
  %i.gr = zext nneg i8 %.lcssa36405344 to i64
  %i.gs = add nsw i64 %i.gr, -48
  %i.gt = getelementptr inbounds i8, ptr %.2905.i1039.lcssa5345, i64 -1
  br label %bb.dx

bb.au:                                            ; preds = %bb.ao
  %.pre5001 = add i8 %i.gc, -48
  %i.gu = icmp ult i8 %.pre5001, 10
  br i1 %i.gu, label %bb.av, label %.thread5346, !prof !125

bb.av:                                            ; preds = %bb.au
  store ptr @.str.91, ptr %i.e, align 8, !tbaa !107
  %i.gv = getelementptr inbounds i8, ptr %i.gd, i64 -1
  store ptr %i.gv, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread3167

.thread5346:                                      ; preds = %._crit_edge4261, %bb.au
  %.3906.i10405349 = phi ptr [ %i.gd, %bb.au ], [ %i.go, %._crit_edge4261 ] ; 3 uses
  %i.gw = phi i8 [ %i.gc, %bb.au ], [ %.pr, %._crit_edge4261 ]
  %i.gx = and i8 %i.gw, -33
  %i.gy = icmp eq i8 %i.gx, 69
  br i1 %i.gy, label %bb.aw, label %.loopexit3538, !prof !45

bb.aw:                                            ; preds = %.thread5346
  %i.gz = getelementptr inbounds nuw i8, ptr %.3906.i10405349, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !100
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !100
  %i.he = trunc i8 %i.hd to i1
  %i.hf = select i1 %i.he, i64 2, i64 1
  %i.hg = getelementptr inbounds nuw i8, ptr %.3906.i10405349, i64 %i.hf ; 3 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !100
  %i.hi = add i8 %i.hh, -48
  %i.hj = icmp ult i8 %i.hi, 10
  br i1 %i.hj, label %.preheader3537, label %bb.ax, !prof !62

bb.ax:                                            ; preds = %bb.aw
  store ptr @.str.92, ptr %i.e, align 8, !tbaa !107
  store ptr %i.hg, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread3167

.preheader3537:                                   ; preds = %bb.aw, %.preheader3537
  %.4907.i1042 = phi ptr [ %i.hk, %.preheader3537 ], [ %i.hg, %bb.aw ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.4907.i1042, i64 1 ; 3 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !100
  %i.hm = add i8 %i.hl, -48
  %i.hn = icmp ult i8 %i.hm, 10
  br i1 %i.hn, label %.preheader3537, label %.loopexit3538, !llvm.loop !7

.loopexit3538:                                    ; preds = %.preheader3537, %.thread5346
  %.5908.i1041 = phi ptr [ %.3906.i10405349, %.thread5346 ], [ %i.hk, %.preheader3537 ]
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.ho = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.hp = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !100
  store ptr %.5908.i1041, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

._crit_edge4245:                                  ; preds = %bb.w, %bb.u
  %.0903.i987.lcssa = phi ptr [ %i.cd, %bb.u ], [ %i.cl, %bb.w ] ; 39 uses
  %.lcssa3641 = phi i8 [ %i.ce, %bb.u ], [ %i.cm, %bb.w ]
  %i.hq = zext nneg i8 %.lcssa3641 to i64         ; 2 uses
  %i.hr = add nsw i64 %i.hq, -48                  ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 1 ; 6 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !100 ; 2 uses
  %i.hu = zext i8 %i.ht to i64                    ; 2 uses
  %i.hv = add nsw i64 %i.hu, -48                  ; 2 uses
  %i.hw = icmp ult i64 %i.hv, 10
  br i1 %i.hw, label %bb.ay, label %bb.bv, !prof !62

bb.ay:                                            ; preds = %._crit_edge4245
  %i.hx = mul nuw nsw i64 %i.hr, 10
  %i.hy = add nuw nsw i64 %i.hv, %i.hx            ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 2 ; 6 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !100 ; 2 uses
  %i.ib = zext i8 %i.ia to i64                    ; 2 uses
  %i.ic = add nsw i64 %i.ib, -48                  ; 2 uses
  %i.id = icmp ult i64 %i.ic, 10
  br i1 %i.id, label %bb.az, label %bb.by, !prof !62

bb.az:                                            ; preds = %bb.ay
  %i.ie = mul nuw nsw i64 %i.hy, 10
  %i.if = add nuw nsw i64 %i.ic, %i.ie            ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 3 ; 6 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !100 ; 2 uses
  %i.ii = zext i8 %i.ih to i64                    ; 2 uses
  %i.ij = add nsw i64 %i.ii, -48                  ; 2 uses
  %i.ik = icmp ult i64 %i.ij, 10
  br i1 %i.ik, label %bb.ba, label %bb.cb, !prof !62

bb.ba:                                            ; preds = %bb.az
  %i.il = mul nuw nsw i64 %i.if, 10
  %i.im = add nuw nsw i64 %i.ij, %i.il            ; 5 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 4 ; 6 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !100 ; 2 uses
  %i.ip = zext i8 %i.io to i64                    ; 2 uses
  %i.iq = add nsw i64 %i.ip, -48                  ; 2 uses
  %i.ir = icmp ult i64 %i.iq, 10
  br i1 %i.ir, label %bb.bb, label %bb.ce, !prof !62

bb.bb:                                            ; preds = %bb.ba
  %i.is = mul nuw nsw i64 %i.im, 10
  %i.it = add nuw nsw i64 %i.iq, %i.is            ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 5 ; 6 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !100 ; 2 uses
  %i.iw = zext i8 %i.iv to i64                    ; 2 uses
  %i.ix = add nsw i64 %i.iw, -48                  ; 2 uses
  %i.iy = icmp ult i64 %i.ix, 10
  br i1 %i.iy, label %bb.bc, label %bb.ch, !prof !62

bb.bc:                                            ; preds = %bb.bb
  %i.iz = mul nuw nsw i64 %i.it, 10
  %i.ja = add nuw nsw i64 %i.ix, %i.iz            ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 6 ; 6 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !100 ; 2 uses
  %i.jd = zext i8 %i.jc to i64                    ; 2 uses
  %i.je = add nsw i64 %i.jd, -48                  ; 2 uses
  %i.jf = icmp ult i64 %i.je, 10
  br i1 %i.jf, label %bb.bd, label %bb.ck, !prof !62

bb.bd:                                            ; preds = %bb.bc
  %i.jg = mul nuw nsw i64 %i.ja, 10
  %i.jh = add nuw nsw i64 %i.je, %i.jg            ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 7 ; 6 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !100 ; 2 uses
  %i.jk = zext i8 %i.jj to i64                    ; 2 uses
  %i.jl = add nsw i64 %i.jk, -48                  ; 2 uses
  %i.jm = icmp ult i64 %i.jl, 10
  br i1 %i.jm, label %bb.be, label %bb.cn, !prof !62

bb.be:                                            ; preds = %bb.bd
  %i.jn = mul nuw nsw i64 %i.jh, 10
  %i.jo = add nuw nsw i64 %i.jl, %i.jn            ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 8 ; 6 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !100 ; 2 uses
  %i.jr = zext i8 %i.jq to i64                    ; 2 uses
  %i.js = add nsw i64 %i.jr, -48                  ; 2 uses
  %i.jt = icmp ult i64 %i.js, 10
  br i1 %i.jt, label %bb.bf, label %bb.cq, !prof !62

bb.bf:                                            ; preds = %bb.be
  %i.ju = mul nuw nsw i64 %i.jo, 10
  %i.jv = add nuw nsw i64 %i.js, %i.ju            ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 9 ; 6 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !100 ; 2 uses
  %i.jy = zext i8 %i.jx to i64                    ; 2 uses
  %i.jz = add nsw i64 %i.jy, -48                  ; 2 uses
  %i.ka = icmp ult i64 %i.jz, 10
  br i1 %i.ka, label %bb.bg, label %bb.ct, !prof !62

bb.bg:                                            ; preds = %bb.bf
  %i.kb = mul nuw nsw i64 %i.jv, 10
  %i.kc = add nuw nsw i64 %i.jz, %i.kb            ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 10 ; 6 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !100 ; 2 uses
  %i.kf = zext i8 %i.ke to i64                    ; 2 uses
  %i.kg = add nsw i64 %i.kf, -48                  ; 2 uses
  %i.kh = icmp ult i64 %i.kg, 10
  br i1 %i.kh, label %bb.bh, label %bb.cw, !prof !62

bb.bh:                                            ; preds = %bb.bg
  %i.ki = mul nuw nsw i64 %i.kc, 10
  %i.kj = add nuw nsw i64 %i.kg, %i.ki            ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.0903.i987.lcssa, i64 11 ; 6 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !100 ; 2 uses
end_hunk_6
begin_hunk_7_@yyjson_incr_read:bb.a

bb.ne:                                            ; preds = %bb.nc
  %.not818 = icmp eq i64 %1, 1
  br i1 %.not818, label %bb.nf, label %.thread3184

.thread3184:                                      ; preds = %bb.nd, %bb.ne
  switch i16 %.sroa.0.0.copyload.i, label %bb.nf [
    i16 -2, label %.sink.split
    i16 -257, label %.sink.split
  ]

.sink.split:                                      ; preds = %.thread3184, %.thread3184, %bb.nd, %bb.nd, %bb.nb
  %.str.6.sink = phi ptr [ @.str.5, %bb.nb ], [ @.str.6, %bb.nd ], [ @.str.6, %bb.nd ], [ @.str.7, %.thread3184 ], [ @.str.7, %.thread3184 ] ; 2 uses
  store ptr %.str.6.sink, ptr %i.e, align 8, !tbaa !107
  br label %bb.nf

bb.nf:                                            ; preds = %.sink.split, %.thread3184, %bb.na, %bb.ne
  %i.bxw = phi ptr [ @.str.15, %.thread3184 ], [ @.str.15, %bb.na ], [ @.str.15, %bb.ne ], [ %.str.6.sink, %.sink.split ]
  %i.bxx = call fastcc zeroext i1 @is_truncated_end(ptr noundef nonnull %i.l, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.m, i32 noundef 6, i32 noundef %.fr)
  br i1 %i.bxx, label %.loopexit3576, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.bxy = ptrtoint ptr %i.bq to i64
  %i.bxz = ptrtoint ptr %i.l to i64
  %i.bya = sub i64 %i.bxy, %i.bxz
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.bya, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  store i32 6, ptr %spec.store.select, align 8, !tbaa !115
  %spec.store.select.sroa.sel1669.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1669.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1669.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %i.bxw, ptr %spec.store.select.sroa.sel1669.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  br label %bb.atv

.loopexit3571:                                    ; preds = %bb.asj, %bb.nk
  %.pn = phi ptr [ %i.bze, %bb.nk ], [ %i.gqy, %bb.asj ]
  %.1753 = phi i64 [ %.2754, %bb.nk ], [ %.8760, %bb.asj ]
  %.2724 = phi i64 [ %.4726, %bb.nk ], [ %.17739, %bb.asj ] ; 4 uses
  %.1711 = phi i64 [ %.2712, %bb.nk ], [ %.8718, %bb.asj ]
  %.1683 = phi ptr [ %.4686, %bb.nk ], [ %.24706, %bb.asj ] ; 3 uses
  %.1646 = phi ptr [ %.4649, %bb.nk ], [ %.24669, %bb.asj ] ; 3 uses
  %.1618 = phi ptr [ %.4621, %bb.nk ], [ %.24641, %bb.asj ]
  %.1610 = phi ptr [ %.4613, %bb.nk ], [ %.24, %bb.asj ] ; 5 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !107
  %i.byb = shl i64 %.1711, 8
  %i.byc = add i64 %i.byb, 256
  %i.byd = load i64, ptr %.1610, align 8, !tbaa !99
  %i.bye = and i64 %i.byd, 255
  %i.byf = or disjoint i64 %i.bye, %i.byc
  store i64 %i.byf, ptr %.1610, align 8, !tbaa !99
  %i.byg = getelementptr inbounds nuw i8, ptr %.1618, i64 16 ; 3 uses
  %.not842 = icmp ult ptr %i.byg, %.1646
  br i1 %.not842, label %bb.ni, label %bb.nh, !prof !62

bb.nh:                                            ; preds = %.loopexit3571
  %i.byh = lshr i64 %.2724, 1
  %i.byi = add i64 %i.byh, %.2724                 ; 4 uses
  %i.byj = shl i64 %.2724, 4
  %i.byk = shl i64 %i.byi, 4
  %i.byl = call ptr %.sroa.5.0.copyload(ptr noundef %.sroa.13338.0.copyload, ptr noundef %.1683, i64 noundef %i.byj, i64 noundef %i.byk) #33 ; 7 uses
  %.not843 = icmp eq ptr %i.byl, null
  br i1 %.not843, label %bb.ate, label %.thread3186

.thread3186:                                      ; preds = %bb.nh
  %i.bym = ptrtoint ptr %i.byg to i64
  %i.byn = ptrtoint ptr %.1683 to i64             ; 3 uses
  %i.byo = sub i64 %i.bym, %i.byn
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byl, i64 %i.byo
  %i.byq = ptrtoint ptr %.1610 to i64
  %i.byr = sub i64 %i.byq, %i.byn
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byl, i64 %i.byr
  %i.byt = load ptr, ptr %i.z, align 8, !tbaa !345
  %i.byu = ptrtoint ptr %i.byt to i64
  %i.byv = sub i64 %i.byu, %i.byn
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byl, i64 %i.byv
  store ptr %i.byw, ptr %i.z, align 8, !tbaa !345
  store ptr %i.byl, ptr %i.ab, align 8, !tbaa !146
  %i.byx = getelementptr [16 x i8], ptr %i.byl, i64 %i.byi
  %i.byy = getelementptr i8, ptr %i.byx, i64 -32  ; 2 uses
  store ptr %i.byy, ptr %i.ad, align 8, !tbaa !346
  br label %bb.ni

bb.ni:                                            ; preds = %.thread3186, %.loopexit3571
  %.3725 = phi i64 [ %i.byi, %.thread3186 ], [ %.2724, %.loopexit3571 ]
  %.3685 = phi ptr [ %i.byl, %.thread3186 ], [ %.1683, %.loopexit3571 ]
  %.3648 = phi ptr [ %i.byy, %.thread3186 ], [ %.1646, %.loopexit3571 ]
  %.3620 = phi ptr [ %i.byp, %.thread3186 ], [ %i.byg, %.loopexit3571 ] ; 5 uses
  %.3612 = phi ptr [ %i.bys, %.thread3186 ], [ %.1610, %.loopexit3571 ]
  store i64 6, ptr %.3620, align 8, !tbaa !99
  %i.byz = ptrtoint ptr %.3620 to i64
  %i.bza = ptrtoint ptr %.3612 to i64
  %i.bzb = sub i64 %i.byz, %i.bza
  %i.bzc = getelementptr inbounds nuw i8, ptr %.3620, i64 8
  store i64 %i.bzb, ptr %i.bzc, align 8, !tbaa !100
  br label %bb.nj

bb.nj:                                            ; preds = %bb.g, %bb.abe, %bb.ni, %bb.r
  %.2754 = phi i64 [ %.3755.ph, %bb.abe ], [ %.1753, %bb.ni ], [ %.0752, %bb.r ], [ %i.w, %bb.g ] ; 9 uses
  %.4726 = phi i64 [ %.10732.ph, %bb.abe ], [ %.3725, %bb.ni ], [ %.1723, %bb.r ], [ %i.y, %bb.g ] ; 27 uses
  %.2712 = phi i64 [ %.3713.ph, %bb.abe ], [ 0, %bb.ni ], [ %.0710, %bb.r ], [ %i.u, %bb.g ] ; 9 uses
  %.4686 = phi ptr [ %.15697.ph, %bb.abe ], [ %.3685, %bb.ni ], [ %.0682, %bb.r ], [ %i.ac, %bb.g ] ; 18 uses
  %.4649 = phi ptr [ %.15660.ph, %bb.abe ], [ %.3648, %bb.ni ], [ %.0645, %bb.r ], [ %i.ae, %bb.g ] ; 22 uses
  %.4621 = phi ptr [ %.15632.ph, %bb.abe ], [ %.3620, %bb.ni ], [ %.0617, %bb.r ], [ %i.aa, %bb.g ] ; 9 uses
  %.4613 = phi ptr [ %.15.ph, %bb.abe ], [ %.3620, %bb.ni ], [ %.0609, %bb.r ], [ %i.ag, %bb.g ] ; 22 uses
  store i32 1, ptr %0, align 8, !tbaa !145
  %i.bzd = load ptr, ptr %i.d, align 8, !tbaa !107 ; 4 uses
  store ptr %i.bzd, ptr %i.n, align 8, !tbaa !144
  store ptr %.4621, ptr %i.z, align 8, !tbaa !345
  store i64 %.2712, ptr %i.t, align 8, !tbaa !342
  store i64 %.2754, ptr %i.v, align 8, !tbaa !343
  %.not829 = icmp ult ptr %i.bzd, %i.m
  br i1 %.not829, label %.preheader3569, label %.loopexit3576, !prof !62

.preheader3569:                                   ; preds = %bb.nj
  %.pre4923 = load i8, ptr %i.bzd, align 1, !tbaa !100
  br label %bb.nk

.loopexit3568:                                    ; preds = %.preheader3567
  br label %bb.nk, !llvm.loop !313

bb.nk:                                            ; preds = %.preheader3569, %.loopexit3568
  %i.bze = phi ptr [ %i.bzd, %.preheader3569 ], [ %i.ezd, %.loopexit3568 ] ; 10 uses
  %i.bzf = phi i8 [ %.pre4923, %.preheader3569 ], [ %i.eze, %.loopexit3568 ] ; 3 uses
  switch i8 %i.bzf, label %bb.nl [
    i8 123, label %.loopexit3570
    i8 91, label %.loopexit3571
  ]

bb.nl:                                            ; preds = %bb.nk
  %i.bzg = zext i8 %i.bzf to i64
  %i.bzh = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bzg
  %i.bzi = load i8, ptr %i.bzh, align 1, !tbaa !100 ; 2 uses
  %i.bzj = and i8 %i.bzi, 16
  %.not3406 = icmp eq i8 %i.bzj, 0
  br i1 %.not3406, label %bb.wy, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.bzk = getelementptr inbounds nuw i8, ptr %.4621, i64 16 ; 3 uses
  %.not839 = icmp ult ptr %i.bzk, %.4649
  br i1 %.not839, label %bb.no, label %bb.nn, !prof !62

bb.nn:                                            ; preds = %bb.nm
  %i.bzl = lshr i64 %.4726, 1
  %i.bzm = add i64 %i.bzl, %.4726                 ; 4 uses
  %i.bzn = shl i64 %.4726, 4
  %i.bzo = shl i64 %i.bzm, 4
  %i.bzp = call ptr %.sroa.5.0.copyload(ptr noundef %.sroa.13338.0.copyload, ptr noundef %.4686, i64 noundef %i.bzn, i64 noundef %i.bzo) #33 ; 7 uses
  %.not840 = icmp eq ptr %i.bzp, null
  br i1 %.not840, label %bb.ate, label %.thread3192

.thread3192:                                      ; preds = %bb.nn
  %i.bzq = ptrtoint ptr %i.bzk to i64
  %i.bzr = ptrtoint ptr %.4686 to i64             ; 3 uses
  %i.bzs = sub i64 %i.bzq, %i.bzr
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzp, i64 %i.bzs
  %i.bzu = ptrtoint ptr %.4613 to i64
  %i.bzv = sub i64 %i.bzu, %i.bzr
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzp, i64 %i.bzv
  %i.bzx = load ptr, ptr %i.z, align 8, !tbaa !345
  %i.bzy = ptrtoint ptr %i.bzx to i64
  %i.bzz = sub i64 %i.bzy, %i.bzr
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzp, i64 %i.bzz
  store ptr %i.caa, ptr %i.z, align 8, !tbaa !345
  store ptr %i.bzp, ptr %i.ab, align 8, !tbaa !146
  %i.cab = getelementptr [16 x i8], ptr %i.bzp, i64 %i.bzm
  %i.cac = getelementptr i8, ptr %i.cab, i64 -32  ; 2 uses
  store ptr %i.cac, ptr %i.ad, align 8, !tbaa !346
  %.pre4924 = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %bb.no

bb.no:                                            ; preds = %.thread3192, %bb.nm
  %i.cad = phi ptr [ %.pre4924, %.thread3192 ], [ %i.bze, %bb.nm ] ; 21 uses
  %.5727 = phi i64 [ %i.bzm, %.thread3192 ], [ %.4726, %bb.nm ] ; 7 uses
  %.6688 = phi ptr [ %i.bzp, %.thread3192 ], [ %.4686, %bb.nm ]
  %.6651 = phi ptr [ %i.cac, %.thread3192 ], [ %.4649, %bb.nm ] ; 7 uses
  %.6623 = phi ptr [ %i.bzt, %.thread3192 ], [ %i.bzk, %bb.nm ] ; 93 uses
  %.6615 = phi ptr [ %i.bzw, %.thread3192 ], [ %.4613, %bb.nm ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !119
  %i.cae = and i32 %.fr, 32
  %.not3413 = icmp eq i32 %i.cae, 0
  br i1 %.not3413, label %bb.np, label %.split3222, !prof !62

.split3222:                                       ; preds = %bb.no
  %i.caf = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %.fr, ptr noundef %.6623, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br i1 %i.caf, label %bb.abb, label %bb.atc, !prof !137

bb.np:                                            ; preds = %bb.no
  %i.cag = load i8, ptr %i.cad, align 1, !tbaa !100 ; 3 uses
  %i.cah = icmp eq i8 %i.cag, 45                  ; 57 uses
  %i.cai = zext i1 %i.cah to i64
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cad, i64 %i.cai ; 6 uses
  %i.cak = load i8, ptr %i.caj, align 1, !tbaa !100 ; 4 uses
  %i.cal = add i8 %i.cak, -49
  %i.cam = icmp ult i8 %i.cal, 9
  br i1 %i.cam, label %._crit_edge4046, label %.lr.ph4045, !prof !120

.lr.ph4045:                                       ; preds = %bb.np
  %i.can = and i32 %.fr, 512
  %.not4452 = icmp ne i32 %i.can, 0               ; 3 uses
  br i1 %.not4452, label %.lr.ph4045.split.us, label %.lr.ph4045.split, !prof !45

.lr.ph4045.split.us:                              ; preds = %.lr.ph4045, %bb.nr
  %i.cao = phi i8 [ %i.cas, %bb.nr ], [ %i.cak, %.lr.ph4045 ] ; 3 uses
  %.0903.i8564043.us = phi ptr [ %i.car, %bb.nr ], [ %i.caj, %.lr.ph4045 ] ; 9 uses
  %.not.i857.us = icmp eq i8 %i.cao, 48
  br i1 %.not.i857.us, label %.split4050.us, label %bb.nq, !prof !62

bb.nq:                                            ; preds = %.lr.ph4045.split.us
  %i.cap = icmp eq i8 %i.cao, 43
  %i.caq = icmp eq ptr %.0903.i8564043.us, %i.cad
  %or.cond990.i859.us = select i1 %i.cap, i1 %i.caq, i1 false
  br i1 %or.cond990.i859.us, label %bb.nr, label %.split4053.us

bb.nr:                                            ; preds = %bb.nq
  %i.car = getelementptr inbounds nuw i8, ptr %.0903.i8564043.us, i64 1 ; 3 uses
  %i.cas = load i8, ptr %i.car, align 1, !tbaa !100 ; 3 uses
  %i.cat = add i8 %i.cas, -49
  %i.cau = icmp ult i8 %i.cat, 9
  br i1 %i.cau, label %._crit_edge4046, label %.lr.ph4045.split.us, !prof !121, !llvm.loop !5

.lr.ph4045.split:                                 ; preds = %.lr.ph4045
  %.not.i857 = icmp eq i8 %i.cak, 48
  br i1 %.not.i857, label %.split4050.us.thread, label %.loopexit3566, !prof !62

.split4053.us:                                    ; preds = %bb.nq
  %i.cav = icmp eq i8 %i.cao, 46
  br i1 %i.cav, label %bb.ns, label %.loopexit3566

bb.ns:                                            ; preds = %.split4053.us
  %i.caw = getelementptr inbounds nuw i8, ptr %.0903.i8564043.us, i64 1
  %i.cax = load i8, ptr %i.caw, align 1, !tbaa !100 ; 2 uses
  %i.cay = add i8 %i.cax, -48
  %i.caz = icmp ult i8 %i.cay, 10
  br i1 %i.caz, label %.thread5379.a, label %.loopexit3566

.thread5379.a:                                    ; preds = %bb.ns
  %i.cba = getelementptr inbounds nuw i8, ptr %.0903.i8564043.us, i64 1
  br label %.preheader3565

.loopexit3566:                                    ; preds = %.lr.ph4045.split, %bb.ns, %.split4053.us
  %.0903.i8563668 = phi ptr [ %.0903.i8564043.us, %.split4053.us ], [ %.0903.i8564043.us, %bb.ns ], [ %i.caj, %.lr.ph4045.split ]
  %i.cbb = and i32 %.fr, 16
  %.not3414 = icmp eq i32 %i.cbb, 0
  br i1 %.not3414, label %read_inf_or_nan.exit1129.thread, label %bb.nt, !prof !62

bb.nt:                                            ; preds = %.loopexit3566
  %i.cbc = icmp ne i8 %i.cag, 43
  %brmerge3334 = or i1 %.not4452, %i.cbc
  br i1 %brmerge3334, label %bb.nu, label %read_inf_or_nan.exit1129.thread, !prof !122

bb.nu:                                            ; preds = %bb.nt
  %i.cbd = zext i8 %i.cag to i64
  %i.cbe = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cbd
  %i.cbf = load i8, ptr %i.cbe, align 1, !tbaa !100 ; 2 uses
  %i.cbg = and i8 %i.cbf, 1
  %i.cbh = zext nneg i8 %i.cbg to i64
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cad, i64 %i.cbh ; 9 uses
  %i.cbj = load i8, ptr %i.cbi, align 1, !tbaa !100
  %i.cbk = and i8 %i.cbj, -33
  %i.cbl = icmp eq i8 %i.cbk, 73
  br i1 %i.cbl, label %bb.nv, label %._crit_edge4928

bb.nv:                                            ; preds = %bb.nu
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbi, i64 1
  %i.cbn = load i8, ptr %i.cbm, align 1, !tbaa !100
  %i.cbo = and i8 %i.cbn, -33
  %i.cbp = icmp eq i8 %i.cbo, 78
  br i1 %i.cbp, label %bb.nw, label %._crit_edge4928

bb.nw:                                            ; preds = %bb.nv
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbi, i64 2
  %i.cbr = load i8, ptr %i.cbq, align 1, !tbaa !100
  %i.cbs = and i8 %i.cbr, -33
  %i.cbt = icmp eq i8 %i.cbs, 70
  br i1 %i.cbt, label %bb.nx, label %._crit_edge4928

bb.nx:                                            ; preds = %bb.nw
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbi, i64 3 ; 2 uses
  %i.cbv = load i8, ptr %i.cbu, align 1, !tbaa !100
  %i.cbw = and i8 %i.cbv, -33
  %i.cbx = icmp eq i8 %i.cbw, 73
  br i1 %i.cbx, label %bb.ny, label %read_inf.exit1479

bb.ny:                                            ; preds = %bb.nx
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbi, i64 4
  %i.cbz = load i8, ptr %i.cby, align 1, !tbaa !100
  %i.cca = and i8 %i.cbz, -33
  %i.ccb = icmp eq i8 %i.cca, 78
  br i1 %i.ccb, label %bb.nz, label %._crit_edge4928

bb.nz:                                            ; preds = %bb.ny
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cbi, i64 5
  %i.ccd = load i8, ptr %i.ccc, align 1, !tbaa !100
  %i.cce = and i8 %i.ccd, -33
  %i.ccf = icmp eq i8 %i.cce, 73
  br i1 %i.ccf, label %bb.oa, label %._crit_edge4928

bb.oa:                                            ; preds = %bb.nz
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.cbi, i64 6
  %i.cch = load i8, ptr %i.ccg, align 1, !tbaa !100
  %i.cci = and i8 %i.cch, -33
  %i.ccj = icmp eq i8 %i.cci, 84
  br i1 %i.ccj, label %bb.ob, label %._crit_edge4928

bb.ob:                                            ; preds = %bb.oa
  %i.cck = getelementptr inbounds nuw i8, ptr %i.cbi, i64 7
  %i.ccl = load i8, ptr %i.cck, align 1, !tbaa !100
  %i.ccm = and i8 %i.ccl, -33
  %i.ccn = icmp eq i8 %i.ccm, 89
  br i1 %i.ccn, label %bb.oc, label %._crit_edge4928

bb.oc:                                            ; preds = %bb.ob
  %i.cco = getelementptr inbounds nuw i8, ptr %i.cbi, i64 8
  br label %read_inf.exit1479

read_inf.exit1479:                                ; preds = %bb.oc, %bb.nx
  %.0.i1478 = phi ptr [ %i.cco, %bb.oc ], [ %i.cbu, %bb.nx ]
  store ptr %.0.i1478, ptr %i.d, align 8, !tbaa !107
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.ccp = select i1 %i.cah, i64 -4503599627370496, i64 9218868437227405312
  %i.ccq = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.ccp, ptr %i.ccq, align 8, !tbaa !100
  br label %.sink.split5703

._crit_edge4928:                                  ; preds = %bb.ny, %bb.nu, %bb.ob, %bb.oa, %bb.nz, %bb.nw, %bb.nv
  %i.ccr = and i8 %i.cbf, 1
  %i.ccs = zext nneg i8 %i.ccr to i64
  %i.cct = getelementptr inbounds nuw i8, ptr %i.cad, i64 %i.ccs ; 4 uses
  %i.ccu = load i8, ptr %i.cct, align 1, !tbaa !100
  %i.ccv = and i8 %i.ccu, -33
  %i.ccw = icmp eq i8 %i.ccv, 78
  br i1 %i.ccw, label %bb.od, label %read_inf_or_nan.exit1129.thread

bb.od:                                            ; preds = %._crit_edge4928
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cct, i64 1
  %i.ccy = load i8, ptr %i.ccx, align 1, !tbaa !100
  %i.ccz = and i8 %i.ccy, -33
  %i.cda = icmp eq i8 %i.ccz, 65
  br i1 %i.cda, label %bb.oe, label %read_inf_or_nan.exit1129.thread

bb.oe:                                            ; preds = %bb.od
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.cct, i64 2
  %i.cdc = load i8, ptr %i.cdb, align 1, !tbaa !100
  %i.cdd = and i8 %i.cdc, -33
  %i.cde = icmp eq i8 %i.cdd, 78
  br i1 %i.cde, label %bb.of, label %read_inf_or_nan.exit1129.thread

bb.of:                                            ; preds = %bb.oe
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cct, i64 3
  store ptr %i.cdf, ptr %i.d, align 8, !tbaa !107
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.cdg = select i1 %i.cah, i64 -2251799813685248, i64 9221120237041090560
  %i.cdh = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.cdg, ptr %i.cdh, align 8, !tbaa !100
  br label %.sink.split5703

read_inf_or_nan.exit1129.thread:                  ; preds = %bb.nt, %._crit_edge4928, %bb.od, %bb.oe, %.loopexit3566
  store ptr @.str.89, ptr %i.e, align 8, !tbaa !107
  store ptr %.0903.i8563668, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit986.thread3220

.split4050.us:                                    ; preds = %.lr.ph4045.split.us
  %i.cdi = getelementptr inbounds nuw i8, ptr %.0903.i8564043.us, i64 1 ; 3 uses
  %i.cdj = load i8, ptr %i.cdi, align 1, !tbaa !100 ; 3 uses
  %i.cdk = zext i8 %i.cdj to i64
  %i.cdl = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cdk
  %i.cdm = load i8, ptr %i.cdl, align 1, !tbaa !100
  %i.cdn = and i8 %i.cdm, 26
  %.not3415 = icmp eq i8 %i.cdn, 0
  br i1 %.not3415, label %bb.og, label %bb.oh, !prof !62

.split4050.us.thread:                             ; preds = %.lr.ph4045.split
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.caj, i64 1 ; 3 uses
  %i.cdp = load i8, ptr %i.cdo, align 1, !tbaa !100 ; 2 uses
  %i.cdq = zext i8 %i.cdp to i64
  %i.cdr = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cdq
  %i.cds = load i8, ptr %i.cdr, align 1, !tbaa !100
  %i.cdt = and i8 %i.cds, 26
  %.not34155375 = icmp eq i8 %i.cdt, 0
  br i1 %.not34155375, label %.thread5377, label %bb.oh, !prof !62

bb.og:                                            ; preds = %.split4050.us
  %i.cdu = and i8 %i.cdj, -33
  %i.cdv = icmp eq i8 %i.cdu, 88
  br i1 %i.cdv, label %.split3223, label %.thread5377

.split3223:                                       ; preds = %bb.og
  %i.cdw = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %.fr, ptr noundef %.6623, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br i1 %i.cdw, label %bb.abb, label %bb.atc, !prof !137

.thread5377:                                      ; preds = %.split4050.us.thread, %bb.og
  %i.cdx = phi ptr [ %i.cdo, %.split4050.us.thread ], [ %i.cdi, %bb.og ]
  %i.cdy = select i1 %i.cah, i64 12, i64 4
  store i64 %i.cdy, ptr %.6623, align 8, !tbaa !99
  %i.cdz = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 0, ptr %i.cdz, align 8, !tbaa !100
  store ptr %i.cdx, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

bb.oh:                                            ; preds = %.split4050.us.thread, %.split4050.us
  %i.cea = phi i8 [ %i.cdp, %.split4050.us.thread ], [ %i.cdj, %.split4050.us ] ; 3 uses
  %i.ceb = phi ptr [ %i.cdo, %.split4050.us.thread ], [ %i.cdi, %.split4050.us ] ; 5 uses
  %.us-phi40515376 = phi ptr [ %i.caj, %.split4050.us.thread ], [ %.0903.i8564043.us, %.split4050.us ]
  %i.cec = icmp eq i8 %i.cea, 46
  br i1 %i.cec, label %bb.oi, label %bb.on, !prof !62

bb.oi:                                            ; preds = %bb.oh
  %.phi.trans.insert4930 = getelementptr inbounds nuw i8, ptr %.us-phi40515376, i64 2
  %.pre4931 = load i8, ptr %.phi.trans.insert4930, align 1, !tbaa !100 ; 3 uses
  %.pre4968 = add i8 %.pre4931, -48
  %i.ced = icmp ult i8 %.pre4968, 10
  %i.cee = getelementptr inbounds nuw i8, ptr %i.ceb, i64 1 ; 4 uses
  br i1 %i.ced, label %.preheader3565, label %bb.oj, !prof !350

.preheader3565:                                   ; preds = %.thread5379.a, %bb.oi
  %i.cef = phi ptr [ %i.cba, %.thread5379.a ], [ %i.cee, %bb.oi ] ; 2 uses
  %.1904.i8605382 = phi ptr [ %.0903.i8564043.us, %.thread5379.a ], [ %i.ceb, %bb.oi ]
  %i.ceg = phi i8 [ %i.cax, %.thread5379.a ], [ %.pre4931, %bb.oi ] ; 2 uses
  %i.ceh = icmp eq i8 %i.ceg, 48
  br i1 %i.ceh, label %.lr.ph4061, label %._crit_edge4062.thread, !prof !123

bb.oj:                                            ; preds = %bb.oi
  br i1 %.not4452, label %bb.ok, label %bb.om, !prof !45

bb.ok:                                            ; preds = %bb.oj
  %i.cei = and i8 %.pre4931, -33
  %i.cej = icmp eq i8 %i.cei, 69
  br i1 %i.cej, label %bb.ug, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.cek = select i1 %i.cah, i64 -9223372036854775808, i64 0
  %i.cel = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.cek, ptr %i.cel, align 8, !tbaa !100
  store ptr %i.cee, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

bb.om:                                            ; preds = %bb.oj
  store ptr @.str.90, ptr %i.e, align 8, !tbaa !107
  store ptr %i.cee, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit986.thread3220

.lr.ph4061:                                       ; preds = %.preheader3565, %.lr.ph4061
  %.2905.i9084060 = phi ptr [ %i.cem, %.lr.ph4061 ], [ %i.cef, %.preheader3565 ]
  %i.cem = getelementptr inbounds nuw i8, ptr %.2905.i9084060, i64 1 ; 4 uses
  %.pr3202 = load i8, ptr %i.cem, align 1, !tbaa !100 ; 4 uses
  %i.cen = icmp eq i8 %.pr3202, 48
  br i1 %i.cen, label %.lr.ph4061, label %._crit_edge4062, !prof !124, !llvm.loop !6

._crit_edge4062:                                  ; preds = %.lr.ph4061
  %.pre4970 = add i8 %.pr3202, -48
  %i.ceo = icmp ult i8 %.pre4970, 10
  br i1 %i.ceo, label %._crit_edge4062.thread, label %.thread5388, !prof !351

._crit_edge4062.thread:                           ; preds = %.preheader3565, %._crit_edge4062
  %.2905.i908.lcssa5387 = phi ptr [ %i.cem, %._crit_edge4062 ], [ %i.cef, %.preheader3565 ]
  %.lcssa36605386 = phi i8 [ %.pr3202, %._crit_edge4062 ], [ %i.ceg, %.preheader3565 ]
  %i.cep = zext nneg i8 %.lcssa36605386 to i64
  %i.ceq = add nsw i64 %i.cep, -48
  %i.cer = getelementptr inbounds i8, ptr %.2905.i908.lcssa5387, i64 -1
  br label %bb.rq

bb.on:                                            ; preds = %bb.oh
  %.pre5023 = add i8 %i.cea, -48
  %i.ces = icmp ult i8 %.pre5023, 10
  br i1 %i.ces, label %bb.oo, label %.thread5388, !prof !125

bb.oo:                                            ; preds = %bb.on
  store ptr @.str.91, ptr %i.e, align 8, !tbaa !107
  %i.cet = getelementptr inbounds i8, ptr %i.ceb, i64 -1
  store ptr %i.cet, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit986.thread3220

.thread5388:                                      ; preds = %._crit_edge4062, %bb.on
  %.3906.i9095391 = phi ptr [ %i.ceb, %bb.on ], [ %i.cem, %._crit_edge4062 ] ; 3 uses
  %i.ceu = phi i8 [ %i.cea, %bb.on ], [ %.pr3202, %._crit_edge4062 ]
  %i.cev = and i8 %i.ceu, -33
  %i.cew = icmp eq i8 %i.cev, 69
  br i1 %i.cew, label %bb.op, label %.loopexit3564, !prof !45

bb.op:                                            ; preds = %.thread5388
  %i.cex = getelementptr inbounds nuw i8, ptr %.3906.i9095391, i64 1
  %i.cey = load i8, ptr %i.cex, align 1, !tbaa !100
  %i.cez = zext i8 %i.cey to i64
  %i.cfa = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cez
  %i.cfb = load i8, ptr %i.cfa, align 1, !tbaa !100
  %i.cfc = trunc i8 %i.cfb to i1
  %i.cfd = select i1 %i.cfc, i64 2, i64 1
  %i.cfe = getelementptr inbounds nuw i8, ptr %.3906.i9095391, i64 %i.cfd ; 3 uses
  %i.cff = load i8, ptr %i.cfe, align 1, !tbaa !100
  %i.cfg = add i8 %i.cff, -48
  %i.cfh = icmp ult i8 %i.cfg, 10
  br i1 %i.cfh, label %.preheader3563, label %bb.oq, !prof !62

bb.oq:                                            ; preds = %bb.op
  store ptr @.str.92, ptr %i.e, align 8, !tbaa !107
  store ptr %i.cfe, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit986.thread3220

.preheader3563:                                   ; preds = %bb.op, %.preheader3563
  %.4907.i911 = phi ptr [ %i.cfi, %.preheader3563 ], [ %i.cfe, %bb.op ]
  %i.cfi = getelementptr inbounds nuw i8, ptr %.4907.i911, i64 1 ; 3 uses
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !100
  %i.cfk = add i8 %i.cfj, -48
  %i.cfl = icmp ult i8 %i.cfk, 10
  br i1 %i.cfl, label %.preheader3563, label %.loopexit3564, !llvm.loop !7

.loopexit3564:                                    ; preds = %.preheader3563, %.thread5388
  %.5908.i910 = phi ptr [ %.3906.i9095391, %.thread5388 ], [ %i.cfi, %.preheader3563 ]
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.cfm = select i1 %i.cah, i64 -9223372036854775808, i64 0
  %i.cfn = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.cfm, ptr %i.cfn, align 8, !tbaa !100
  store ptr %.5908.i910, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

._crit_edge4046:                                  ; preds = %bb.nr, %bb.np
  %.0903.i856.lcssa = phi ptr [ %i.caj, %bb.np ], [ %i.car, %bb.nr ] ; 39 uses
  %.lcssa3661 = phi i8 [ %i.cak, %bb.np ], [ %i.cas, %bb.nr ]
  %i.cfo = zext nneg i8 %.lcssa3661 to i64        ; 2 uses
  %i.cfp = add nsw i64 %i.cfo, -48                ; 4 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 1 ; 6 uses
  %i.cfr = load i8, ptr %i.cfq, align 1, !tbaa !100 ; 2 uses
  %i.cfs = zext i8 %i.cfr to i64                  ; 2 uses
  %i.cft = add nsw i64 %i.cfs, -48                ; 2 uses
  %i.cfu = icmp ult i64 %i.cft, 10
  br i1 %i.cfu, label %bb.or, label %bb.po, !prof !62

bb.or:                                            ; preds = %._crit_edge4046
  %i.cfv = mul nuw nsw i64 %i.cfp, 10
  %i.cfw = add nuw nsw i64 %i.cft, %i.cfv         ; 5 uses
  %i.cfx = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 2 ; 6 uses
  %i.cfy = load i8, ptr %i.cfx, align 1, !tbaa !100 ; 2 uses
  %i.cfz = zext i8 %i.cfy to i64                  ; 2 uses
  %i.cga = add nsw i64 %i.cfz, -48                ; 2 uses
  %i.cgb = icmp ult i64 %i.cga, 10
  br i1 %i.cgb, label %bb.os, label %bb.pr, !prof !62

bb.os:                                            ; preds = %bb.or
  %i.cgc = mul nuw nsw i64 %i.cfw, 10
  %i.cgd = add nuw nsw i64 %i.cga, %i.cgc         ; 5 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 3 ; 6 uses
  %i.cgf = load i8, ptr %i.cge, align 1, !tbaa !100 ; 2 uses
  %i.cgg = zext i8 %i.cgf to i64                  ; 2 uses
  %i.cgh = add nsw i64 %i.cgg, -48                ; 2 uses
  %i.cgi = icmp ult i64 %i.cgh, 10
  br i1 %i.cgi, label %bb.ot, label %bb.pu, !prof !62

bb.ot:                                            ; preds = %bb.os
  %i.cgj = mul nuw nsw i64 %i.cgd, 10
  %i.cgk = add nuw nsw i64 %i.cgh, %i.cgj         ; 5 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 4 ; 6 uses
  %i.cgm = load i8, ptr %i.cgl, align 1, !tbaa !100 ; 2 uses
  %i.cgn = zext i8 %i.cgm to i64                  ; 2 uses
  %i.cgo = add nsw i64 %i.cgn, -48                ; 2 uses
  %i.cgp = icmp ult i64 %i.cgo, 10
  br i1 %i.cgp, label %bb.ou, label %bb.px, !prof !62

bb.ou:                                            ; preds = %bb.ot
  %i.cgq = mul nuw nsw i64 %i.cgk, 10
  %i.cgr = add nuw nsw i64 %i.cgo, %i.cgq         ; 5 uses
  %i.cgs = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 5 ; 6 uses
  %i.cgt = load i8, ptr %i.cgs, align 1, !tbaa !100 ; 2 uses
  %i.cgu = zext i8 %i.cgt to i64                  ; 2 uses
  %i.cgv = add nsw i64 %i.cgu, -48                ; 2 uses
  %i.cgw = icmp ult i64 %i.cgv, 10
  br i1 %i.cgw, label %bb.ov, label %bb.qa, !prof !62

bb.ov:                                            ; preds = %bb.ou
  %i.cgx = mul nuw nsw i64 %i.cgr, 10
  %i.cgy = add nuw nsw i64 %i.cgv, %i.cgx         ; 5 uses
  %i.cgz = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 6 ; 6 uses
  %i.cha = load i8, ptr %i.cgz, align 1, !tbaa !100 ; 2 uses
  %i.chb = zext i8 %i.cha to i64                  ; 2 uses
  %i.chc = add nsw i64 %i.chb, -48                ; 2 uses
  %i.chd = icmp ult i64 %i.chc, 10
  br i1 %i.chd, label %bb.ow, label %bb.qd, !prof !62

bb.ow:                                            ; preds = %bb.ov
  %i.che = mul nuw nsw i64 %i.cgy, 10
  %i.chf = add nuw nsw i64 %i.chc, %i.che         ; 5 uses
  %i.chg = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 7 ; 6 uses
  %i.chh = load i8, ptr %i.chg, align 1, !tbaa !100 ; 2 uses
  %i.chi = zext i8 %i.chh to i64                  ; 2 uses
  %i.chj = add nsw i64 %i.chi, -48                ; 2 uses
  %i.chk = icmp ult i64 %i.chj, 10
  br i1 %i.chk, label %bb.ox, label %bb.qg, !prof !62

bb.ox:                                            ; preds = %bb.ow
  %i.chl = mul nuw nsw i64 %i.chf, 10
  %i.chm = add nuw nsw i64 %i.chj, %i.chl         ; 5 uses
  %i.chn = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 8 ; 6 uses
  %i.cho = load i8, ptr %i.chn, align 1, !tbaa !100 ; 2 uses
  %i.chp = zext i8 %i.cho to i64                  ; 2 uses
  %i.chq = add nsw i64 %i.chp, -48                ; 2 uses
  %i.chr = icmp ult i64 %i.chq, 10
  br i1 %i.chr, label %bb.oy, label %bb.qj, !prof !62

bb.oy:                                            ; preds = %bb.ox
  %i.chs = mul nuw nsw i64 %i.chm, 10
  %i.cht = add nuw nsw i64 %i.chq, %i.chs         ; 5 uses
  %i.chu = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 9 ; 6 uses
  %i.chv = load i8, ptr %i.chu, align 1, !tbaa !100 ; 2 uses
  %i.chw = zext i8 %i.chv to i64                  ; 2 uses
  %i.chx = add nsw i64 %i.chw, -48                ; 2 uses
  %i.chy = icmp ult i64 %i.chx, 10
  br i1 %i.chy, label %bb.oz, label %bb.qm, !prof !62

bb.oz:                                            ; preds = %bb.oy
  %i.chz = mul nuw nsw i64 %i.cht, 10
  %i.cia = add nuw nsw i64 %i.chx, %i.chz         ; 5 uses
  %i.cib = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 10 ; 6 uses
  %i.cic = load i8, ptr %i.cib, align 1, !tbaa !100 ; 2 uses
  %i.cid = zext i8 %i.cic to i64                  ; 2 uses
  %i.cie = add nsw i64 %i.cid, -48                ; 2 uses
  %i.cif = icmp ult i64 %i.cie, 10
  br i1 %i.cif, label %bb.pa, label %bb.qp, !prof !62

bb.pa:                                            ; preds = %bb.oz
  %i.cig = mul nuw nsw i64 %i.cia, 10
  %i.cih = add nuw nsw i64 %i.cie, %i.cig         ; 5 uses
  %i.cii = getelementptr inbounds nuw i8, ptr %.0903.i856.lcssa, i64 11 ; 6 uses
  %i.cij = load i8, ptr %i.cii, align 1, !tbaa !100 ; 2 uses
end_hunk_7
begin_hunk_8_@yyjson_incr_read:bb.a
  %.0.copyload.i1475 = load i16, ptr %i.gmu, align 1
  store i16 %.0.copyload.i1475, ptr %i.gos, align 1
  %i.got = getelementptr inbounds nuw i8, ptr %.03120, i64 14
  br label %byte_move_forward.exit1279thread-pre-split

bb.aiu:                                           ; preds = %bb.aik
  %i.gou = getelementptr inbounds nuw i8, ptr %.03120, i64 15
  br label %byte_move_forward.exit1279thread-pre-split

byte_move_forward.exit1279thread-pre-split:       ; preds = %bb.aim, %bb.ain, %byte_move_forward.exit1275, %byte_move_forward.exit1273, %bb.aio, %bb.aip, %byte_move_forward.exit1269, %byte_move_forward.exit1267, %bb.aiq, %bb.air, %byte_move_forward.exit1263, %byte_move_forward.exit, %bb.ais, %bb.ait, %bb.aiu
  %.13132.ph = phi ptr [ %i.gkm, %bb.ain ], [ %i.gks, %byte_move_forward.exit1275 ], [ %i.gky, %byte_move_forward.exit1273 ], [ %i.gle, %bb.aio ], [ %i.glk, %bb.aip ], [ %i.glq, %byte_move_forward.exit1269 ], [ %i.glw, %byte_move_forward.exit1267 ], [ %i.gmc, %bb.aiq ], [ %i.gmi, %bb.air ], [ %i.gmo, %byte_move_forward.exit1263 ], [ %i.gmu, %byte_move_forward.exit ], [ %i.gna, %bb.ais ], [ %i.gng, %bb.ait ], [ %i.gnw, %bb.aim ], [ %i.gnm, %bb.aiu ] ; 2 uses
  %.13121.ph = phi ptr [ %i.gnx, %bb.ain ], [ %i.gny, %byte_move_forward.exit1275 ], [ %i.gnz, %byte_move_forward.exit1273 ], [ %i.gob, %bb.aio ], [ %i.god, %bb.aip ], [ %i.goe, %byte_move_forward.exit1269 ], [ %i.gof, %byte_move_forward.exit1267 ], [ %i.goh, %bb.aiq ], [ %i.goj, %bb.air ], [ %i.gol, %byte_move_forward.exit1263 ], [ %i.gon, %byte_move_forward.exit ], [ %i.goq, %bb.ais ], [ %i.got, %bb.ait ], [ %i.gnv, %bb.aim ], [ %i.gou, %bb.aiu ]
  %.pr5418 = load i8, ptr %.13132.ph, align 1, !tbaa !100
  br label %byte_move_forward.exit1279

byte_move_forward.exit1279:                       ; preds = %byte_move_forward.exit1279thread-pre-split, %.backedge3586
  %i.gov = phi i8 [ %.pr5418, %byte_move_forward.exit1279thread-pre-split ], [ %i.gkb, %.backedge3586 ] ; 2 uses
  %.13132 = phi ptr [ %.13132.ph, %byte_move_forward.exit1279thread-pre-split ], [ %.03131, %.backedge3586 ] ; 5 uses
  %.13121 = phi ptr [ %.13121.ph, %byte_move_forward.exit1279thread-pre-split ], [ %.03120, %.backedge3586 ] ; 3 uses
  %.not117.i1178 = icmp sgt i8 %i.gov, -1
  br i1 %.not117.i1178, label %.loopexit3585, label %.preheader3583

.preheader3583:                                   ; preds = %byte_move_forward.exit1279
  %storemerge119.i11793985 = load i32, ptr %.13132, align 1 ; 4 uses
  %i.gow = and i32 %storemerge119.i11793985, 12632304
  %i.gox = icmp eq i32 %i.gow, 8421600
  %i.goy = trunc i32 %storemerge119.i11793985 to i16 ; 2 uses
  br i1 %i.gox, label %.lr.ph3989, label %.critedge4.i1180

.lr.ph3989:                                       ; preds = %.preheader3583, %bb.aiv
  %.0.copyload.i14624916 = phi i16 [ %i.gpe, %bb.aiv ], [ %i.goy, %.preheader3583 ] ; 2 uses
  %storemerge119.i11793988 = phi i32 [ %storemerge119.i1179, %bb.aiv ], [ %storemerge119.i11793985, %.preheader3583 ] ; 4 uses
  %.231223987 = phi ptr [ %i.gpa, %bb.aiv ], [ %.13121, %.preheader3583 ] ; 4 uses
  %.231333986 = phi ptr [ %i.gpb, %bb.aiv ], [ %.13132, %.preheader3583 ] ; 3 uses
  %i.goz = and i32 %storemerge119.i11793988, 8207
  switch i32 %i.goz, label %bb.aiv [
    i32 8205, label %.critedge4.i1180
    i32 0, label %.critedge4.i1180
  ]

bb.aiv:                                           ; preds = %.lr.ph3989
  store i32 %storemerge119.i11793988, ptr %.231223987, align 1
  %i.gpa = getelementptr inbounds nuw i8, ptr %.231223987, i64 3 ; 2 uses
  %i.gpb = getelementptr inbounds nuw i8, ptr %.231333986, i64 3 ; 3 uses
  %storemerge119.i1179 = load i32, ptr %i.gpb, align 1 ; 4 uses
  %i.gpc = and i32 %storemerge119.i1179, 12632304
  %i.gpd = icmp eq i32 %i.gpc, 8421600
  %i.gpe = trunc i32 %storemerge119.i1179 to i16  ; 2 uses
  br i1 %i.gpd, label %.lr.ph3989, label %.critedge4.i1180, !llvm.loop !20

.critedge4.i1180:                                 ; preds = %bb.aiv, %.lr.ph3989, %.lr.ph3989, %.preheader3583
  %.0.copyload.i14624914.a = phi i16 [ %i.goy, %.preheader3583 ], [ %.0.copyload.i14624916, %.lr.ph3989 ], [ %.0.copyload.i14624916, %.lr.ph3989 ], [ %i.gpe, %bb.aiv ]
  %.23133.lcssa = phi ptr [ %.13132, %.preheader3583 ], [ %.231333986, %.lr.ph3989 ], [ %.231333986, %.lr.ph3989 ], [ %i.gpb, %bb.aiv ] ; 3 uses
  %.23122.lcssa = phi ptr [ %.13121, %.preheader3583 ], [ %.231223987, %.lr.ph3989 ], [ %.231223987, %.lr.ph3989 ], [ %i.gpa, %bb.aiv ] ; 3 uses
  %storemerge119.i1179.lcssa = phi i32 [ %storemerge119.i11793985, %.preheader3583 ], [ %storemerge119.i11793988, %.lr.ph3989 ], [ %storemerge119.i11793988, %.lr.ph3989 ], [ %storemerge119.i1179, %bb.aiv ] ; 5 uses
  %i.gpf = and i32 %storemerge119.i1179.lcssa, 128
  %i.gpg = icmp eq i32 %i.gpf, 0
  br i1 %i.gpg, label %.backedge3586.backedge, label %.preheader3582

.preheader3582:                                   ; preds = %.critedge4.i1180
  %i.gph = and i32 %storemerge119.i1179.lcssa, 49376
  %i.gpi = icmp eq i32 %i.gph, 32960
  %i.gpj = and i32 %storemerge119.i1179.lcssa, 30
  %i.gpk = icmp ne i32 %i.gpj, 0
  %i.gpl = and i1 %i.gpi, %i.gpk
  br i1 %i.gpl, label %.lr.ph4005, label %.preheader3581

.preheader3581.loopexit:                          ; preds = %.lr.ph4005
  %i.gpm = trunc i32 %.sroa.0.0.copyload.i1198 to i16
  br label %.preheader3581

.preheader3581:                                   ; preds = %.preheader3581.loopexit, %.preheader3582
  %.0.copyload.i14624913 = phi i16 [ %.0.copyload.i14624914.a, %.preheader3582 ], [ %i.gpm, %.preheader3581.loopexit ] ; 2 uses
  %.33134.lcssa = phi ptr [ %.23133.lcssa, %.preheader3582 ], [ %i.gpw, %.preheader3581.loopexit ] ; 3 uses
  %.33123.lcssa = phi ptr [ %.23122.lcssa, %.preheader3582 ], [ %i.gpv, %.preheader3581.loopexit ] ; 3 uses
  %.sroa.172714.0.in.lcssa = phi i32 [ %storemerge119.i1179.lcssa, %.preheader3582 ], [ %.sroa.0.0.copyload.i1198, %.preheader3581.loopexit ] ; 5 uses
  %i.gpn = and i32 %.sroa.172714.0.in.lcssa, -1061109512
  %i.gpo = icmp ne i32 %i.gpn, -2139062032
  %i.gpp = and i32 %.sroa.172714.0.in.lcssa, 12295
  %.not120.i11814013 = icmp eq i32 %i.gpp, 0
  %or.cond121.i11824014 = or i1 %.not120.i11814013, %i.gpo
  br i1 %or.cond121.i11824014, label %.critedge6.i1183, label %.lr.ph4019.preheader

.lr.ph4019.preheader:                             ; preds = %.preheader3581
  %i.gpq = and i32 %.sroa.172714.0.in.lcssa, 4
  %i.gpr = icmp eq i32 %i.gpq, 0
  %i.gps = and i32 %.sroa.172714.0.in.lcssa, 12291
  %i.gpt = icmp eq i32 %i.gps, 0
  %i.gpu = or i1 %i.gpr, %i.gpt
  br i1 %i.gpu, label %.lr.ph5979, label %.critedge6.i1183

.lr.ph4005:                                       ; preds = %.preheader3582, %.lr.ph4005
  %.sroa.02679.04004.in = phi i32 [ %.sroa.0.0.copyload.i1198, %.lr.ph4005 ], [ %storemerge119.i1179.lcssa, %.preheader3582 ]
  %.331234003 = phi ptr [ %i.gpv, %.lr.ph4005 ], [ %.23122.lcssa, %.preheader3582 ] ; 2 uses
  %.331344002 = phi ptr [ %i.gpw, %.lr.ph4005 ], [ %.23133.lcssa, %.preheader3582 ]
  %.sroa.02679.04004 = trunc i32 %.sroa.02679.04004.in to i16
  store i16 %.sroa.02679.04004, ptr %.331234003, align 1
  %i.gpv = getelementptr inbounds nuw i8, ptr %.331234003, i64 2 ; 2 uses
  %i.gpw = getelementptr inbounds nuw i8, ptr %.331344002, i64 2 ; 3 uses
  %.sroa.0.0.copyload.i1198 = load i32, ptr %i.gpw, align 1 ; 5 uses
  %i.gpx = and i32 %.sroa.0.0.copyload.i1198, 49376
  %i.gpy = icmp eq i32 %i.gpx, 32960
  %i.gpz = and i32 %.sroa.0.0.copyload.i1198, 30
  %i.gqa = icmp ne i32 %i.gpz, 0
  %i.gqb = and i1 %i.gpy, %i.gqa
  br i1 %i.gqb, label %.lr.ph4005, label %.preheader3581.loopexit, !llvm.loop !21

.lr.ph4019:                                       ; preds = %.lr.ph5979
  %i.gqc = and i32 %.sroa.0.0.copyload.i1199, 4
  %i.gqd = icmp eq i32 %i.gqc, 0
  %i.gqe = and i32 %.sroa.0.0.copyload.i1199, 12291
  %i.gqf = icmp eq i32 %i.gqe, 0
  %i.gqg = or i1 %i.gqd, %i.gqf
  br i1 %i.gqg, label %.lr.ph5979, label %.critedge6.i1183.loopexit, !llvm.loop !22

.lr.ph5979:                                       ; preds = %.lr.ph4019.preheader, %.lr.ph4019
  %.4313540155978 = phi ptr [ %i.gqi, %.lr.ph4019 ], [ %.33134.lcssa, %.lr.ph4019.preheader ]
  %.4312440165977 = phi ptr [ %i.gqh, %.lr.ph4019 ], [ %.33123.lcssa, %.lr.ph4019.preheader ] ; 2 uses
  %.sroa.02679.0.insert.insert268840185976 = phi i32 [ %.sroa.0.0.copyload.i1199, %.lr.ph4019 ], [ %.sroa.172714.0.in.lcssa, %.lr.ph4019.preheader ]
  store i32 %.sroa.02679.0.insert.insert268840185976, ptr %.4312440165977, align 1
  %i.gqh = getelementptr inbounds nuw i8, ptr %.4312440165977, i64 4 ; 3 uses
  %i.gqi = getelementptr inbounds nuw i8, ptr %.4313540155978, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i1199 = load i32, ptr %i.gqi, align 1 ; 7 uses
  %i.gqj = and i32 %.sroa.0.0.copyload.i1199, -1061109512
  %i.gqk = icmp ne i32 %i.gqj, -2139062032
  %i.gql = and i32 %.sroa.0.0.copyload.i1199, 12295
  %.not120.i1181 = icmp eq i32 %i.gql, 0
  %or.cond121.i1182 = or i1 %.not120.i1181, %i.gqk
  br i1 %or.cond121.i1182, label %..critedge6.i1183.loopexit_crit_edge, label %.lr.ph4019, !llvm.loop !22

..critedge6.i1183.loopexit_crit_edge:             ; preds = %.lr.ph5979
  %i.gqm = trunc i32 %.sroa.0.0.copyload.i1199 to i16
  br label %.critedge6.i1183, !llvm.loop !22

.critedge6.i1183.loopexit:                        ; preds = %.lr.ph4019
  %i.gqn = trunc i32 %.sroa.0.0.copyload.i1199 to i16
  br label %.critedge6.i1183

.critedge6.i1183:                                 ; preds = %.critedge6.i1183.loopexit, %.lr.ph4019.preheader, %..critedge6.i1183.loopexit_crit_edge, %.preheader3581
  %.0.copyload.i14624911 = phi i16 [ %.0.copyload.i14624913, %.preheader3581 ], [ %i.gqm, %..critedge6.i1183.loopexit_crit_edge ], [ %.0.copyload.i14624913, %.lr.ph4019.preheader ], [ %i.gqn, %.critedge6.i1183.loopexit ]
  %.43135.lcssa = phi ptr [ %.33134.lcssa, %.preheader3581 ], [ %i.gqi, %..critedge6.i1183.loopexit_crit_edge ], [ %.33134.lcssa, %.lr.ph4019.preheader ], [ %i.gqi, %.critedge6.i1183.loopexit ] ; 4 uses
  %.43124.lcssa = phi ptr [ %.33123.lcssa, %.preheader3581 ], [ %i.gqh, %..critedge6.i1183.loopexit_crit_edge ], [ %.33123.lcssa, %.lr.ph4019.preheader ], [ %i.gqh, %.critedge6.i1183.loopexit ] ; 3 uses
  %i.gqo = icmp eq ptr %.13132, %.43135.lcssa
  br i1 %i.gqo, label %bb.aiw, label %.backedge3586.backedge, !prof !45

bb.aiw:                                           ; preds = %.critedge6.i1183
  br i1 %.not3405, label %read_str_opt.exit.thread, label %bb.aim, !prof !62

read_str_opt.exit1192:                            ; preds = %bb.agb, %.loopexit3585
  %.113142.lcssa.sink5727 = phi ptr [ %.63126, %.loopexit3585 ], [ %.113142, %bb.agb ] ; 2 uses
  %.sink5723 = phi i64 [ 5, %.loopexit3585 ], [ 13, %bb.agb ]
  %.113142.lcssa.sink = phi ptr [ %.63137, %.loopexit3585 ], [ %.113142, %bb.agb ]
  %i.gqp = ptrtoint ptr %.113142.lcssa.sink5727 to i64
  %i.gqq = ptrtoint ptr %i.fxm to i64
  %i.gqr = sub i64 %i.gqp, %i.gqq
  %i.gqs = shl i64 %i.gqr, 8
  %i.gqt = or disjoint i64 %i.gqs, %.sink5723
  store i64 %i.gqt, ptr %i.fxk, align 8, !tbaa !99
  %i.gqu = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store ptr %i.fxm, ptr %i.gqu, align 8, !tbaa !100
  store i8 0, ptr %.113142.lcssa.sink5727, align 1, !tbaa !100
  %i.gqv = getelementptr inbounds nuw i8, ptr %.113142.lcssa.sink, i64 1 ; 2 uses
  store ptr %i.gqv, ptr %i.d, align 8, !tbaa !107
  %i.gqw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.gqw, align 8, !tbaa !107
  store ptr null, ptr %i.ah, align 8, !tbaa !107
  br label %.preheader3579

.lr.ph3828:                                       ; preds = %.lr.ph3828.preheader, %.loopexit3606
  %i.gqx = phi i8 [ %i.itw, %.loopexit3606 ], [ %.pre4959, %.lr.ph3828.preheader ] ; 2 uses
  %i.gqy = phi ptr [ %i.its, %.loopexit3606 ], [ %.promoted3824, %.lr.ph3828.preheader ] ; 35 uses
  %i.gqz = phi i8 [ %i.itt, %.loopexit3606 ], [ %i.fxh, %.lr.ph3828.preheader ] ; 4 uses
  %i.gra = and i8 %i.gqx, 16
  %.not3359 = icmp eq i8 %i.gra, 0
  br i1 %.not3359, label %bb.asj, label %bb.aix

bb.aix:                                           ; preds = %.lr.ph3828
  %i.grb = zext i8 %i.gqz to i64
  %i.grc = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4, !tbaa !119
  %i.grd = and i32 %.fr, 32
  %.not3362 = icmp eq i32 %i.grd, 0
  br i1 %.not3362, label %bb.aiy, label %.split3323, !prof !62

.split3323:                                       ; preds = %bb.aix
  %i.gre = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %.fr, ptr noundef nonnull %i.grc, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br i1 %i.gre, label %bb.aso, label %bb.atc, !prof !137

bb.aiy:                                           ; preds = %bb.aix
  %i.grf = icmp eq i8 %i.gqz, 45                  ; 56 uses
  %i.grg = zext i1 %i.grf to i64
  %i.grh = getelementptr inbounds nuw i8, ptr %i.gqy, i64 %i.grg ; 6 uses
  %i.gri = load i8, ptr %i.grh, align 1, !tbaa !100 ; 4 uses
  %i.grj = add i8 %i.gri, -49
  %i.grk = icmp ult i8 %i.grj, 9
  br i1 %i.grk, label %._crit_edge3834, label %.lr.ph3833, !prof !120

.lr.ph3833:                                       ; preds = %bb.aiy
  %i.grl = and i32 %.fr, 512
  %.not4445 = icmp ne i32 %i.grl, 0               ; 4 uses
  br i1 %.not4445, label %.lr.ph3833.split.us, label %.lr.ph3833.split, !prof !45

.lr.ph3833.split.us:                              ; preds = %.lr.ph3833, %bb.aja
  %i.grm = phi i8 [ %i.grq, %bb.aja ], [ %i.gri, %.lr.ph3833 ] ; 3 uses
  %.0903.i3831.us = phi ptr [ %i.grp, %bb.aja ], [ %i.grh, %.lr.ph3833 ] ; 9 uses
  %.not.i.us = icmp eq i8 %i.grm, 48
  br i1 %.not.i.us, label %.split3838.us, label %bb.aiz, !prof !62

bb.aiz:                                           ; preds = %.lr.ph3833.split.us
  %i.grn = icmp eq i8 %i.grm, 43
  %i.gro = icmp eq ptr %.0903.i3831.us, %i.gqy
  %or.cond990.i.us = and i1 %i.gro, %i.grn
  br i1 %or.cond990.i.us, label %bb.aja, label %.split3840.us

bb.aja:                                           ; preds = %bb.aiz
  %i.grp = getelementptr inbounds nuw i8, ptr %.0903.i3831.us, i64 1 ; 3 uses
  %i.grq = load i8, ptr %i.grp, align 1, !tbaa !100 ; 3 uses
  %i.grr = add i8 %i.grq, -49
  %i.grs = icmp ult i8 %i.grr, 9
  br i1 %i.grs, label %._crit_edge3834, label %.lr.ph3833.split.us, !prof !121, !llvm.loop !5

.lr.ph3833.split:                                 ; preds = %.lr.ph3833
  %.not.i = icmp eq i8 %i.gri, 48
  br i1 %.not.i, label %.split3838.us.thread, label %.loopexit3604, !prof !62

.split3840.us:                                    ; preds = %bb.aiz
  %i.grt = icmp eq i8 %i.grm, 46
  br i1 %i.grt, label %bb.ajb, label %.loopexit3604

bb.ajb:                                           ; preds = %.split3840.us
  %i.gru = getelementptr inbounds nuw i8, ptr %.0903.i3831.us, i64 1
  %i.grv = load i8, ptr %i.gru, align 1, !tbaa !100 ; 2 uses
  %i.grw = add i8 %i.grv, -48
  %i.grx = icmp ult i8 %i.grw, 10
  br i1 %i.grx, label %.thread5424, label %.loopexit3604

.thread5424:                                      ; preds = %bb.ajb
  %i.gry = getelementptr inbounds nuw i8, ptr %.0903.i3831.us, i64 1
  br label %.preheader3603

.loopexit3604:                                    ; preds = %.lr.ph3833.split, %bb.ajb, %.split3840.us
  %.0903.i3705 = phi ptr [ %.0903.i3831.us, %.split3840.us ], [ %.0903.i3831.us, %bb.ajb ], [ %i.grh, %.lr.ph3833.split ]
  %i.grz = and i32 %.fr, 16
  %.not3363 = icmp eq i32 %i.grz, 0
  br i1 %.not3363, label %read_inf_or_nan.exit1133.thread, label %bb.ajc, !prof !62

bb.ajc:                                           ; preds = %.loopexit3604
  %i.gsa = icmp ne i8 %i.gqz, 43
  %brmerge3343 = or i1 %.not4445, %i.gsa
  br i1 %brmerge3343, label %bb.ajd, label %.thread3300, !prof !122

bb.ajd:                                           ; preds = %bb.ajc
  %i.gsb = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.grb
  %i.gsc = load i8, ptr %i.gsb, align 1, !tbaa !100
  %i.gsd = and i8 %i.gsc, 1
  %i.gse = zext nneg i8 %i.gsd to i64
  %i.gsf = getelementptr inbounds nuw i8, ptr %i.gqy, i64 %i.gse ; 9 uses
  %i.gsg = load i8, ptr %i.gsf, align 1, !tbaa !100
  %i.gsh = and i8 %i.gsg, -33
  %i.gsi = icmp eq i8 %i.gsh, 73
  br i1 %i.gsi, label %bb.aje, label %bb.ajm

bb.aje:                                           ; preds = %bb.ajd
  %i.gsj = getelementptr inbounds nuw i8, ptr %i.gsf, i64 1
  %i.gsk = load i8, ptr %i.gsj, align 1, !tbaa !100
  %i.gsl = and i8 %i.gsk, -33
  %i.gsm = icmp eq i8 %i.gsl, 78
  br i1 %i.gsm, label %bb.ajf, label %bb.ajm

bb.ajf:                                           ; preds = %bb.aje
  %i.gsn = getelementptr inbounds nuw i8, ptr %i.gsf, i64 2
  %i.gso = load i8, ptr %i.gsn, align 1, !tbaa !100
  %i.gsp = and i8 %i.gso, -33
  %i.gsq = icmp eq i8 %i.gsp, 70
  br i1 %i.gsq, label %bb.ajg, label %bb.ajm

bb.ajg:                                           ; preds = %bb.ajf
  %i.gsr = getelementptr inbounds nuw i8, ptr %i.gsf, i64 3 ; 2 uses
  %i.gss = load i8, ptr %i.gsr, align 1, !tbaa !100
  %i.gst = and i8 %i.gss, -33
  %i.gsu = icmp eq i8 %i.gst, 73
  br i1 %i.gsu, label %bb.ajh, label %read_inf.exit

bb.ajh:                                           ; preds = %bb.ajg
  %i.gsv = getelementptr inbounds nuw i8, ptr %i.gsf, i64 4
  %i.gsw = load i8, ptr %i.gsv, align 1, !tbaa !100
  %i.gsx = and i8 %i.gsw, -33
  %i.gsy = icmp eq i8 %i.gsx, 78
  br i1 %i.gsy, label %bb.aji, label %bb.ajm

bb.aji:                                           ; preds = %bb.ajh
  %i.gsz = getelementptr inbounds nuw i8, ptr %i.gsf, i64 5
  %i.gta = load i8, ptr %i.gsz, align 1, !tbaa !100
  %i.gtb = and i8 %i.gta, -33
  %i.gtc = icmp eq i8 %i.gtb, 73
  br i1 %i.gtc, label %bb.ajj, label %bb.ajm

bb.ajj:                                           ; preds = %bb.aji
  %i.gtd = getelementptr inbounds nuw i8, ptr %i.gsf, i64 6
  %i.gte = load i8, ptr %i.gtd, align 1, !tbaa !100
  %i.gtf = and i8 %i.gte, -33
  %i.gtg = icmp eq i8 %i.gtf, 84
  br i1 %i.gtg, label %bb.ajk, label %bb.ajm

bb.ajk:                                           ; preds = %bb.ajj
  %i.gth = getelementptr inbounds nuw i8, ptr %i.gsf, i64 7
  %i.gti = load i8, ptr %i.gth, align 1, !tbaa !100
  %i.gtj = and i8 %i.gti, -33
  %i.gtk = icmp eq i8 %i.gtj, 89
  br i1 %i.gtk, label %bb.ajl, label %bb.ajm

bb.ajl:                                           ; preds = %bb.ajk
  %i.gtl = getelementptr inbounds nuw i8, ptr %i.gsf, i64 8
  br label %read_inf.exit

read_inf.exit:                                    ; preds = %bb.ajl, %bb.ajg
  %.0.i1476 = phi ptr [ %i.gtl, %bb.ajl ], [ %i.gsr, %bb.ajg ]
  store ptr %.0.i1476, ptr %i.d, align 8, !tbaa !107
  store i64 20, ptr %i.grc, align 8, !tbaa !99
  %i.gtm = select i1 %i.grf, i64 -4503599627370496, i64 9218868437227405312
  %i.gtn = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.gtm, ptr %i.gtn, align 8, !tbaa !100
  br label %.sink.split5742

bb.ajm:                                           ; preds = %bb.ajh, %bb.ajd, %bb.ajk, %bb.ajj, %bb.aji, %bb.ajf, %bb.aje
  %i.gto = load i8, ptr %i.gqy, align 1, !tbaa !100 ; 2 uses
  %i.gtp = icmp ne i8 %i.gto, 43
  %brmerge3345 = or i1 %.not4445, %i.gtp
  br i1 %brmerge3345, label %bb.ajn, label %read_inf_or_nan.exit1133.thread, !prof !352

.thread3300:                                      ; preds = %bb.ajc
  %i.gtq = load i8, ptr %i.gqy, align 1, !tbaa !100 ; 2 uses
  %i.gtr = icmp eq i8 %i.gtq, 43
  br i1 %i.gtr, label %read_inf_or_nan.exit1133.thread, label %bb.ajn

bb.ajn:                                           ; preds = %bb.ajm, %.thread3300
  %i.gts = phi i8 [ %i.gtq, %.thread3300 ], [ %i.gto, %bb.ajm ] ; 2 uses
  %i.gtt = icmp eq i8 %i.gts, 45
  %i.gtu = zext i8 %i.gts to i64
  %i.gtv = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.gtu
  %i.gtw = load i8, ptr %i.gtv, align 1, !tbaa !100
  %i.gtx = and i8 %i.gtw, 1
  %i.gty = zext nneg i8 %i.gtx to i64
  %i.gtz = getelementptr inbounds nuw i8, ptr %i.gqy, i64 %i.gty ; 4 uses
  %i.gua = load i8, ptr %i.gtz, align 1, !tbaa !100
  %i.gub = and i8 %i.gua, -33
  %i.guc = icmp eq i8 %i.gub, 78
  br i1 %i.guc, label %bb.ajo, label %read_inf_or_nan.exit1133.thread

bb.ajo:                                           ; preds = %bb.ajn
  %i.gud = getelementptr inbounds nuw i8, ptr %i.gtz, i64 1
  %i.gue = load i8, ptr %i.gud, align 1, !tbaa !100
  %i.guf = and i8 %i.gue, -33
  %i.gug = icmp eq i8 %i.guf, 65
  br i1 %i.gug, label %bb.ajp, label %read_inf_or_nan.exit1133.thread

bb.ajp:                                           ; preds = %bb.ajo
  %i.guh = getelementptr inbounds nuw i8, ptr %i.gtz, i64 2
  %i.gui = load i8, ptr %i.guh, align 1, !tbaa !100
  %i.guj = and i8 %i.gui, -33
  %i.guk = icmp eq i8 %i.guj, 78
  br i1 %i.guk, label %bb.ajq, label %read_inf_or_nan.exit1133.thread

bb.ajq:                                           ; preds = %bb.ajp
  %i.gul = getelementptr inbounds nuw i8, ptr %i.gtz, i64 3
  store ptr %i.gul, ptr %i.d, align 8, !tbaa !107
  store i64 20, ptr %i.grc, align 8, !tbaa !99
  %i.gum = select i1 %i.gtt, i64 -2251799813685248, i64 9221120237041090560
  %i.gun = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.gum, ptr %i.gun, align 8, !tbaa !100
  br label %.sink.split5742

read_inf_or_nan.exit1133.thread:                  ; preds = %bb.ajm, %.thread3300, %bb.ajn, %bb.ajo, %bb.ajp, %.loopexit3604
  store ptr @.str.89, ptr %i.e, align 8, !tbaa !107
  store ptr %.0903.i3705, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit.thread3321

.split3838.us:                                    ; preds = %.lr.ph3833.split.us
  %i.guo = getelementptr inbounds nuw i8, ptr %.0903.i3831.us, i64 1 ; 3 uses
  %i.gup = load i8, ptr %i.guo, align 1, !tbaa !100 ; 3 uses
  %i.guq = zext i8 %i.gup to i64
  %i.gur = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.guq
  %i.gus = load i8, ptr %i.gur, align 1, !tbaa !100
  %i.gut = and i8 %i.gus, 26
  %.not3364 = icmp eq i8 %i.gut, 0
  br i1 %.not3364, label %bb.ajr, label %bb.ajs, !prof !62

.split3838.us.thread:                             ; preds = %.lr.ph3833.split
  %i.guu = getelementptr inbounds nuw i8, ptr %i.grh, i64 1 ; 3 uses
  %i.guv = load i8, ptr %i.guu, align 1, !tbaa !100 ; 2 uses
  %i.guw = zext i8 %i.guv to i64
  %i.gux = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.guw
  %i.guy = load i8, ptr %i.gux, align 1, !tbaa !100
  %i.guz = and i8 %i.guy, 26
  %.not33645420 = icmp eq i8 %i.guz, 0
  br i1 %.not33645420, label %.thread5422, label %bb.ajs, !prof !62

bb.ajr:                                           ; preds = %.split3838.us
  %i.gva = and i8 %i.gup, -33
  %i.gvb = icmp eq i8 %i.gva, 88
  br i1 %i.gvb, label %.split3324, label %.thread5422, !prof !138

.split3324:                                       ; preds = %bb.ajr
  %i.gvc = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %.fr, ptr noundef nonnull %i.grc, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br i1 %i.gvc, label %bb.aso, label %bb.atc, !prof !137

.thread5422:                                      ; preds = %.split3838.us.thread, %bb.ajr
  %i.gvd = phi ptr [ %i.guo, %bb.ajr ], [ %i.guu, %.split3838.us.thread ]
  %i.gve = select i1 %i.grf, i64 12, i64 4
  store i64 %i.gve, ptr %i.grc, align 8, !tbaa !99
  %i.gvf = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 0, ptr %i.gvf, align 8, !tbaa !100
  store ptr %i.gvd, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

bb.ajs:                                           ; preds = %.split3838.us.thread, %.split3838.us
  %i.gvg = phi i8 [ %i.guv, %.split3838.us.thread ], [ %i.gup, %.split3838.us ] ; 3 uses
  %i.gvh = phi ptr [ %i.guu, %.split3838.us.thread ], [ %i.guo, %.split3838.us ] ; 5 uses
  %.us-phi5421 = phi ptr [ %i.grh, %.split3838.us.thread ], [ %.0903.i3831.us, %.split3838.us ]
  %i.gvi = icmp eq i8 %i.gvg, 46
  br i1 %i.gvi, label %bb.ajt, label %bb.ajy, !prof !62

bb.ajt:                                           ; preds = %bb.ajs
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.us-phi5421, i64 2
  %.pre4907 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !100 ; 3 uses
  %.pre4974 = add i8 %.pre4907, -48
  %i.gvj = icmp ult i8 %.pre4974, 10
  %i.gvk = getelementptr inbounds nuw i8, ptr %i.gvh, i64 1 ; 4 uses
  br i1 %i.gvj, label %.preheader3603, label %bb.aju, !prof !353

.preheader3603:                                   ; preds = %.thread5424, %bb.ajt
  %i.gvl = phi ptr [ %i.gry, %.thread5424 ], [ %i.gvk, %bb.ajt ] ; 2 uses
  %.1904.i5427 = phi ptr [ %.0903.i3831.us, %.thread5424 ], [ %i.gvh, %bb.ajt ]
  %i.gvm = phi i8 [ %i.grv, %.thread5424 ], [ %.pre4907, %bb.ajt ] ; 2 uses
  %i.gvn = icmp eq i8 %i.gvm, 48
  br i1 %i.gvn, label %.lr.ph3847, label %._crit_edge3848.thread, !prof !123

bb.aju:                                           ; preds = %bb.ajt
  br i1 %.not4445, label %bb.ajv, label %bb.ajx, !prof !45

bb.ajv:                                           ; preds = %bb.aju
  %i.gvo = and i8 %.pre4907, -33
  %i.gvp = icmp eq i8 %i.gvo, 69
  br i1 %i.gvp, label %bb.apr, label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv
  store i64 20, ptr %i.grc, align 8, !tbaa !99
  %i.gvq = select i1 %i.grf, i64 -9223372036854775808, i64 0
  %i.gvr = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.gvq, ptr %i.gvr, align 8, !tbaa !100
  store ptr %i.gvk, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

bb.ajx:                                           ; preds = %bb.aju
  store ptr @.str.90, ptr %i.e, align 8, !tbaa !107
  store ptr %i.gvk, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit.thread3321

.lr.ph3847:                                       ; preds = %.preheader3603, %.lr.ph3847
  %.2905.i3846 = phi ptr [ %i.gvs, %.lr.ph3847 ], [ %i.gvl, %.preheader3603 ]
  %i.gvs = getelementptr inbounds nuw i8, ptr %.2905.i3846, i64 1 ; 4 uses
  %.pr3303 = load i8, ptr %i.gvs, align 1, !tbaa !100 ; 4 uses
  %i.gvt = icmp eq i8 %.pr3303, 48
  br i1 %i.gvt, label %.lr.ph3847, label %._crit_edge3848, !prof !124, !llvm.loop !6

._crit_edge3848:                                  ; preds = %.lr.ph3847
  %.pre4976 = add i8 %.pr3303, -48
  %i.gvu = icmp ult i8 %.pre4976, 10
  br i1 %i.gvu, label %._crit_edge3848.thread, label %.thread5433, !prof !354

._crit_edge3848.thread:                           ; preds = %.preheader3603, %._crit_edge3848
  %.2905.i.lcssa5432 = phi ptr [ %i.gvs, %._crit_edge3848 ], [ %i.gvl, %.preheader3603 ]
  %.lcssa36975431 = phi i8 [ %.pr3303, %._crit_edge3848 ], [ %i.gvm, %.preheader3603 ]
  %i.gvv = zext nneg i8 %.lcssa36975431 to i64
  %i.gvw = add nsw i64 %i.gvv, -48
  %i.gvx = getelementptr inbounds i8, ptr %.2905.i.lcssa5432, i64 -1
  br label %bb.anb

bb.ajy:                                           ; preds = %bb.ajs
  %.pre5045 = add i8 %i.gvg, -48
  %i.gvy = icmp ult i8 %.pre5045, 10
  br i1 %i.gvy, label %bb.ajz, label %.thread5433, !prof !125

bb.ajz:                                           ; preds = %bb.ajy
  store ptr @.str.91, ptr %i.e, align 8, !tbaa !107
  %i.gvz = getelementptr inbounds i8, ptr %i.gvh, i64 -1
  store ptr %i.gvz, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit.thread3321

.thread5433:                                      ; preds = %._crit_edge3848, %bb.ajy
  %.3906.i5436 = phi ptr [ %i.gvh, %bb.ajy ], [ %i.gvs, %._crit_edge3848 ] ; 3 uses
  %i.gwa = phi i8 [ %i.gvg, %bb.ajy ], [ %.pr3303, %._crit_edge3848 ]
  %i.gwb = and i8 %i.gwa, -33
  %i.gwc = icmp eq i8 %i.gwb, 69
  br i1 %i.gwc, label %bb.aka, label %.loopexit3602, !prof !45

bb.aka:                                           ; preds = %.thread5433
  %i.gwd = getelementptr inbounds nuw i8, ptr %.3906.i5436, i64 1
  %i.gwe = load i8, ptr %i.gwd, align 1, !tbaa !100
  %i.gwf = zext i8 %i.gwe to i64
  %i.gwg = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.gwf
  %i.gwh = load i8, ptr %i.gwg, align 1, !tbaa !100
  %i.gwi = trunc i8 %i.gwh to i1
  %i.gwj = select i1 %i.gwi, i64 2, i64 1
  %i.gwk = getelementptr inbounds nuw i8, ptr %.3906.i5436, i64 %i.gwj ; 3 uses
  %i.gwl = load i8, ptr %i.gwk, align 1, !tbaa !100
  %i.gwm = add i8 %i.gwl, -48
  %i.gwn = icmp ult i8 %i.gwm, 10
  br i1 %i.gwn, label %.preheader3601, label %bb.akb, !prof !62

bb.akb:                                           ; preds = %bb.aka
  store ptr @.str.92, ptr %i.e, align 8, !tbaa !107
  store ptr %i.gwk, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit.thread3321

.preheader3601:                                   ; preds = %bb.aka, %.preheader3601
  %.4907.i = phi ptr [ %i.gwo, %.preheader3601 ], [ %i.gwk, %bb.aka ]
  %i.gwo = getelementptr inbounds nuw i8, ptr %.4907.i, i64 1 ; 3 uses
  %i.gwp = load i8, ptr %i.gwo, align 1, !tbaa !100
  %i.gwq = add i8 %i.gwp, -48
  %i.gwr = icmp ult i8 %i.gwq, 10
  br i1 %i.gwr, label %.preheader3601, label %.loopexit3602, !llvm.loop !7

.loopexit3602:                                    ; preds = %.preheader3601, %.thread5433
  %.5908.i = phi ptr [ %.3906.i5436, %.thread5433 ], [ %i.gwo, %.preheader3601 ]
  store i64 20, ptr %i.grc, align 8, !tbaa !99
  %i.gws = select i1 %i.grf, i64 -9223372036854775808, i64 0
  %i.gwt = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.gws, ptr %i.gwt, align 8, !tbaa !100
  store ptr %.5908.i, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

._crit_edge3834:                                  ; preds = %bb.aja, %bb.aiy
  %.0903.i.lcssa = phi ptr [ %i.grh, %bb.aiy ], [ %i.grp, %bb.aja ] ; 39 uses
  %.lcssa3698 = phi i8 [ %i.gri, %bb.aiy ], [ %i.grq, %bb.aja ]
  %i.gwu = zext nneg i8 %.lcssa3698 to i64        ; 2 uses
  %i.gwv = add nsw i64 %i.gwu, -48                ; 4 uses
  %i.gww = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 1 ; 6 uses
  %i.gwx = load i8, ptr %i.gww, align 1, !tbaa !100 ; 2 uses
  %i.gwy = zext i8 %i.gwx to i64                  ; 2 uses
  %i.gwz = add nsw i64 %i.gwy, -48                ; 2 uses
  %i.gxa = icmp ult i64 %i.gwz, 10
  br i1 %i.gxa, label %bb.akc, label %bb.akz, !prof !62

bb.akc:                                           ; preds = %._crit_edge3834
  %i.gxb = mul nuw nsw i64 %i.gwv, 10
  %i.gxc = add nuw nsw i64 %i.gwz, %i.gxb         ; 5 uses
  %i.gxd = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 2 ; 6 uses
  %i.gxe = load i8, ptr %i.gxd, align 1, !tbaa !100 ; 2 uses
  %i.gxf = zext i8 %i.gxe to i64                  ; 2 uses
  %i.gxg = add nsw i64 %i.gxf, -48                ; 2 uses
  %i.gxh = icmp ult i64 %i.gxg, 10
  br i1 %i.gxh, label %bb.akd, label %bb.alc, !prof !62

bb.akd:                                           ; preds = %bb.akc
  %i.gxi = mul nuw nsw i64 %i.gxc, 10
  %i.gxj = add nuw nsw i64 %i.gxg, %i.gxi         ; 5 uses
  %i.gxk = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 3 ; 6 uses
  %i.gxl = load i8, ptr %i.gxk, align 1, !tbaa !100 ; 2 uses
  %i.gxm = zext i8 %i.gxl to i64                  ; 2 uses
  %i.gxn = add nsw i64 %i.gxm, -48                ; 2 uses
  %i.gxo = icmp ult i64 %i.gxn, 10
  br i1 %i.gxo, label %bb.ake, label %bb.alf, !prof !62

bb.ake:                                           ; preds = %bb.akd
  %i.gxp = mul nuw nsw i64 %i.gxj, 10
  %i.gxq = add nuw nsw i64 %i.gxn, %i.gxp         ; 5 uses
  %i.gxr = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 4 ; 6 uses
  %i.gxs = load i8, ptr %i.gxr, align 1, !tbaa !100 ; 2 uses
  %i.gxt = zext i8 %i.gxs to i64                  ; 2 uses
  %i.gxu = add nsw i64 %i.gxt, -48                ; 2 uses
  %i.gxv = icmp ult i64 %i.gxu, 10
  br i1 %i.gxv, label %bb.akf, label %bb.ali, !prof !62

bb.akf:                                           ; preds = %bb.ake
  %i.gxw = mul nuw nsw i64 %i.gxq, 10
  %i.gxx = add nuw nsw i64 %i.gxu, %i.gxw         ; 5 uses
  %i.gxy = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 5 ; 6 uses
  %i.gxz = load i8, ptr %i.gxy, align 1, !tbaa !100 ; 2 uses
  %i.gya = zext i8 %i.gxz to i64                  ; 2 uses
  %i.gyb = add nsw i64 %i.gya, -48                ; 2 uses
  %i.gyc = icmp ult i64 %i.gyb, 10
  br i1 %i.gyc, label %bb.akg, label %bb.all, !prof !62

bb.akg:                                           ; preds = %bb.akf
  %i.gyd = mul nuw nsw i64 %i.gxx, 10
  %i.gye = add nuw nsw i64 %i.gyb, %i.gyd         ; 5 uses
  %i.gyf = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 6 ; 6 uses
  %i.gyg = load i8, ptr %i.gyf, align 1, !tbaa !100 ; 2 uses
  %i.gyh = zext i8 %i.gyg to i64                  ; 2 uses
  %i.gyi = add nsw i64 %i.gyh, -48                ; 2 uses
  %i.gyj = icmp ult i64 %i.gyi, 10
  br i1 %i.gyj, label %bb.akh, label %bb.alo, !prof !62

bb.akh:                                           ; preds = %bb.akg
  %i.gyk = mul nuw nsw i64 %i.gye, 10
  %i.gyl = add nuw nsw i64 %i.gyi, %i.gyk         ; 5 uses
  %i.gym = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 7 ; 6 uses
  %i.gyn = load i8, ptr %i.gym, align 1, !tbaa !100 ; 2 uses
  %i.gyo = zext i8 %i.gyn to i64                  ; 2 uses
  %i.gyp = add nsw i64 %i.gyo, -48                ; 2 uses
  %i.gyq = icmp ult i64 %i.gyp, 10
  br i1 %i.gyq, label %bb.aki, label %bb.alr, !prof !62

bb.aki:                                           ; preds = %bb.akh
  %i.gyr = mul nuw nsw i64 %i.gyl, 10
  %i.gys = add nuw nsw i64 %i.gyp, %i.gyr         ; 5 uses
  %i.gyt = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 8 ; 6 uses
  %i.gyu = load i8, ptr %i.gyt, align 1, !tbaa !100 ; 2 uses
  %i.gyv = zext i8 %i.gyu to i64                  ; 2 uses
  %i.gyw = add nsw i64 %i.gyv, -48                ; 2 uses
  %i.gyx = icmp ult i64 %i.gyw, 10
  br i1 %i.gyx, label %bb.akj, label %bb.alu, !prof !62

bb.akj:                                           ; preds = %bb.aki
  %i.gyy = mul nuw nsw i64 %i.gys, 10
  %i.gyz = add nuw nsw i64 %i.gyw, %i.gyy         ; 5 uses
  %i.gza = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 9 ; 6 uses
  %i.gzb = load i8, ptr %i.gza, align 1, !tbaa !100 ; 2 uses
  %i.gzc = zext i8 %i.gzb to i64                  ; 2 uses
  %i.gzd = add nsw i64 %i.gzc, -48                ; 2 uses
  %i.gze = icmp ult i64 %i.gzd, 10
  br i1 %i.gze, label %bb.akk, label %bb.alx, !prof !62

bb.akk:                                           ; preds = %bb.akj
  %i.gzf = mul nuw nsw i64 %i.gyz, 10
  %i.gzg = add nuw nsw i64 %i.gzd, %i.gzf         ; 5 uses
  %i.gzh = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 10 ; 6 uses
  %i.gzi = load i8, ptr %i.gzh, align 1, !tbaa !100 ; 2 uses
  %i.gzj = zext i8 %i.gzi to i64                  ; 2 uses
  %i.gzk = add nsw i64 %i.gzj, -48                ; 2 uses
  %i.gzl = icmp ult i64 %i.gzk, 10
  br i1 %i.gzl, label %bb.akl, label %bb.ama, !prof !62

bb.akl:                                           ; preds = %bb.akk
  %i.gzm = mul nuw nsw i64 %i.gzg, 10
  %i.gzn = add nuw nsw i64 %i.gzk, %i.gzm         ; 5 uses
  %i.gzo = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 11 ; 6 uses
  %i.gzp = load i8, ptr %i.gzo, align 1, !tbaa !100 ; 2 uses
end_hunk_8
begin_hunk_9_@write_f32_raw:bb.a
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i105 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = shl nsw i32 %i.ck, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2
  store i16 %i.cy, ptr %i.cu, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.da = shl nuw nsw i32 %i.cj, 1
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2
  store i16 %i.dd, ptr %i.cz, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 6
  %i.df = shl i32 %i.cl, 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2
  store i16 %i.di, ptr %i.de, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %write_u32_len_1_to_8.exit113

write_u32_len_1_to_8.exit113:                     ; preds = %bb.n, %bb.p, %bb.r, %bb.s
  %.0.i106 = phi ptr [ %i.ai, %bb.n ], [ %i.ba, %bb.p ], [ %i.cb, %bb.r ], [ %i.dj, %bb.s ] ; 2 uses
  store i16 12334, ptr %.0.i106, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i106, i64 2
  br label %write_inf_or_nan.exit

bb.t:                                             ; preds = %bb.l, %bb.k
  %.not.i116 = icmp eq i32 %i.d, 0                ; 2 uses
  %.pre = mul nsw i32 %i.u, 315653                ; 2 uses
  br i1 %.not.i116, label %._crit_edge, label %bb.u, !prof !45

bb.u:                                             ; preds = %bb.t
  %i.dl = ashr i32 %.pre, 20                      ; 3 uses
  %i.dm = mul nsw i32 %i.dl, -217707
  %i.dn = ashr i32 %i.dm, 16
  %i.do = add nsw i32 %i.dn, %i.u                 ; 2 uses
  %i.dp = shl nsw i32 %i.dl, 1
  %i.dq = sub nsw i32 686, %i.dp
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @pow10_sig_table, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 16, !tbaa !106 ; 2 uses
  %i.du = add nsw i32 %i.do, 1
  %i.dv = shl i32 %i.t, %i.du
  %i.dw = zext i32 %i.dv to i128
  %i.dx = zext i64 %i.dt to i128
  %i.dy = mul nuw nsw i128 %i.dx, %i.dw           ; 2 uses
  %i.dz = lshr i128 %i.dy, 64
  %i.ea = trunc i128 %i.dy to i64                 ; 2 uses
  %i.eb = trunc nuw i128 %i.dz to i32             ; 2 uses
  %i.ec = lshr i64 %i.ea, 32                      ; 2 uses
  %i.ed = trunc nuw i64 %i.ec to i32
  %i.ee = urem i32 %i.eb, 10                      ; 3 uses
  %i.ef = sub i32 %i.eb, %i.ee
  %i.eg = tail call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ed, i32 28) ; 3 uses
  %i.eh = sub nsw i32 36, %i.do
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = lshr i64 %i.dt, %i.ei
  %i.ek = trunc i64 %i.ej to i32                  ; 3 uses
  %i.el = icmp eq i64 %i.ec, 2147483648
  br i1 %i.el, label %._crit_edge, label %bb.v, !prof !45

bb.v:                                             ; preds = %bb.u
  %.not97.i117 = icmp ugt i32 %i.eg, %i.ek
  %i.em = icmp eq i32 %i.eg, %i.ek
  br i1 %i.em, label %._crit_edge, label %bb.w, !prof !45

bb.w:                                             ; preds = %bb.v
  %i.en = add i32 %i.eg, %i.ek                    ; 2 uses
  %i.eo = add i32 %i.en, 1610612737
  %i.ep = icmp ult i32 %i.eo, 2
  br i1 %i.ep, label %._crit_edge, label %.critedge.i118, !prof !45

.critedge.i118:                                   ; preds = %bb.w
  %i.eq = icmp ugt i32 %i.en, -1610612737
  %.lobit.i119 = lshr i64 %i.ea, 63
  %i.er = trunc nuw nsw i64 %.lobit.i119 to i32
  %i.es = add nuw nsw i32 %i.ee, %i.er
  %i.et = select i1 %.not97.i117, i32 %i.es, i32 0
  %i.eu = select i1 %i.eq, i32 10, i32 %i.et
  %i.ev = add i32 %i.ef, %i.eu
  br label %f32_bin_to_dec.exit123

._crit_edge:                                      ; preds = %bb.t, %bb.w, %bb.v, %bb.u
  %i.ew = icmp ne i32 %i.f, 1
  %i.ex = and i1 %.not.i116, %i.ew                ; 2 uses
  %i.ey = shl nuw nsw i32 %i.t, 2                 ; 3 uses
  %i.ez = add nsw i32 %i.ey, -2
  %i.fa = zext i1 %i.ex to i32
  %i.fb = or disjoint i32 %i.ez, %i.fa
  %i.fc = or disjoint i32 %i.ey, 2
  %.neg.i120 = select i1 %i.ex, i32 -131237, i32 0
  %i.fd = add nsw i32 %.neg.i120, %.pre
  %i.fe = ashr i32 %i.fd, 20                      ; 4 uses
  %i.ff = mul nsw i32 %i.fe, -217707
  %i.fg = ashr i32 %i.ff, 16
  %i.fh = add nsw i32 %i.f, -149
  %i.fi = add nsw i32 %i.fh, %i.fg                ; 3 uses
  %i.fj = shl nsw i32 %i.fe, 1
  %i.fk = sub nsw i32 686, %i.fj
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr @pow10_sig_table, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 16, !tbaa !106
  %i.fo = add i64 %i.fn, 1
  %i.fp = shl i32 %i.fb, %i.fi
  %i.fq = zext i32 %i.fp to i128
  %i.fr = zext i64 %i.fo to i128                  ; 3 uses
  %i.fs = mul nuw nsw i128 %i.fr, %i.fq           ; 2 uses
  %i.ft = lshr i128 %i.fs, 64
  %i.fu = trunc nuw i128 %i.ft to i32
  %i.fv = and i128 %i.fs, 18446744065119617024
  %i.fw = icmp ne i128 %i.fv, 0
  %i.fx = zext i1 %i.fw to i32
  %i.fy = or i32 %i.fx, %i.fu
  %i.fz = shl i32 %i.ey, %i.fi
  %i.ga = zext i32 %i.fz to i128
  %i.gb = mul nuw nsw i128 %i.fr, %i.ga           ; 2 uses
  %i.gc = lshr i128 %i.gb, 64
  %i.gd = trunc nuw i128 %i.gc to i32             ; 5 uses
  %i.ge = and i128 %i.gb, 18446744065119617024
  %i.gf = icmp ne i128 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %i.gh = or i32 %i.gg, %i.gd                     ; 2 uses
  %i.gi = shl i32 %i.fc, %i.fi
  %i.gj = zext i32 %i.gi to i128
  %i.gk = mul nuw nsw i128 %i.fr, %i.gj           ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = trunc nuw i128 %i.gl to i32
  %i.gn = and i128 %i.gk, 18446744065119617024
  %i.go = icmp ne i128 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = or i32 %i.gp, %i.gm
  %i.gr = and i32 %i.c, 1                         ; 2 uses
  %i.gs = add i32 %i.fy, %i.gr                    ; 2 uses
  %i.gt = sub i32 %i.gq, %i.gr                    ; 2 uses
  %i.gu = lshr i32 %i.gd, 2                       ; 2 uses
  %i.gv = icmp ugt i32 %i.gd, 39
  br i1 %i.gv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %._crit_edge
  %i.gw = udiv i32 %i.gd, 40                      ; 2 uses
  %i.gx = mul nuw i32 %i.gw, 40                   ; 2 uses
  %i.gy = add i32 %i.gx, 40
  %i.gz = icmp uge i32 %i.gt, %i.gy               ; 2 uses
  %i.ha = icmp ugt i32 %i.gs, %i.gx
  %.not98.i122 = xor i1 %i.ha, %i.gz
  br i1 %.not98.i122, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = mul nuw nsw i32 %i.gw, 10
  %i.hc = select i1 %i.gz, i32 10, i32 0
  %i.hd = add nuw nsw i32 %i.hc, %i.hb
  br label %f32_bin_to_dec.exit123

bb.z:                                             ; preds = %bb.x, %._crit_edge
  %i.he = and i32 %i.gd, -4                       ; 3 uses
  %i.hf = add i32 %i.he, 4
  %i.hg = icmp uge i32 %i.gt, %i.hf               ; 2 uses
  %i.hh = or disjoint i32 %i.he, 2                ; 2 uses
  %i.hi = icmp ugt i32 %i.gh, %i.hh
  %i.hj = icmp eq i32 %i.gh, %i.hh
  %i.hk = trunc i32 %i.gu to i1
  %i.hl = and i1 %i.hj, %i.hk
  %narrow = or i1 %i.hi, %i.hl
  %i.hm = icmp ugt i32 %i.gs, %i.he
  %.not99.i121 = xor i1 %i.hm, %i.hg
  %.v = select i1 %.not99.i121, i1 %narrow, i1 %i.hg
  %i.hn = zext i1 %.v to i32
  %i.ho = add nuw nsw i32 %i.gu, %i.hn
  br label %f32_bin_to_dec.exit123

f32_bin_to_dec.exit123:                           ; preds = %.critedge.i118, %bb.y, %bb.z
  %.1175 = phi i32 [ %i.ho, %bb.z ], [ %i.hd, %bb.y ], [ %i.ev, %.critedge.i118 ] ; 6 uses
  %.1 = phi i32 [ %i.fe, %bb.z ], [ %i.fe, %bb.y ], [ %i.dl, %.critedge.i118 ]
  %i.hp = icmp ugt i32 %.1175, 9999999
  %i.hq = select i1 %i.hp, i32 8, i32 7
  %i.hr = icmp ugt i32 %.1175, 99999999
  %i.hs = zext i1 %i.hr to i32
  %i.ht = add nuw nsw i32 %i.hq, %i.hs
  %i.hu = add nsw i32 %i.ht, %.1                  ; 8 uses
  %i.hv = add nsw i32 %i.hu, 5
  %or.cond3 = icmp ult i32 %i.hv, 27
  br i1 %or.cond3, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %f32_bin_to_dec.exit123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.q, i8 48, i64 32, i1 false)
  %i.hw = icmp sgt i32 %i.hu, 0                   ; 2 uses
  %i.hx = sub nsw i32 2, %i.hu
  %i.hy = select i1 %i.hw, i32 0, i32 %i.hx
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %i.q, i64 %i.hz ; 3 uses
  %i.ib = udiv i32 %.1175, 10000                  ; 3 uses
  %.neg.i127 = mul i32 %i.ib, -10000
  %i.ic = add i32 %.neg.i127, %.1175              ; 3 uses
  %i.id = zext nneg i32 %i.ib to i64
  %i.ie = mul nuw nsw i64 %i.id, 167773
  %i.if = lshr i64 %i.ie, 24
  %i.ig = trunc nuw nsw i64 %i.if to i32          ; 3 uses
  %i.ih = mul nuw nsw i32 %i.ig, 41
  %i.ii = lshr i32 %i.ih, 12                      ; 3 uses
  %.neg48.i128 = mul nsw i32 %i.ii, -100
  %i.ij = add nsw i32 %.neg48.i128, %i.ig         ; 3 uses
  %.neg49.i129 = mul nsw i32 %i.ig, -100
  %i.ik = add nsw i32 %.neg49.i129, %i.ib         ; 3 uses
  %i.il = trunc nuw nsw i32 %i.ii to i8
  %i.im = add nuw nsw i8 %i.il, 48
  store i8 %i.im, ptr %i.ia, align 1, !tbaa !100
  %i.in = icmp ne i32 %i.ii, 0                    ; 2 uses
  %i.io = zext i1 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.io ; 2 uses
  %i.iq = icmp ult i32 %i.ij, 10
  %.not198 = xor i1 %i.in, true
  %i.ir = and i1 %i.iq, %.not198                  ; 2 uses
  %i.is = shl nsw i32 %i.ij, 1
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.it
  %.neg50.i130 = sext i1 %i.ir to i64
  %i.iv = zext i1 %i.ir to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 1
  store i16 %i.ix, ptr %i.ip, align 1
  %i.iy = getelementptr inbounds i8, ptr %i.ip, i64 %.neg50.i130 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  %i.ja = shl nsw i32 %i.ik, 1
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.jb
  %i.jd = load i16, ptr %i.jc, align 2
  store i16 %i.jd, ptr %i.iz, align 1
  %.not.i131 = icmp eq i32 %i.ic, 0
  br i1 %.not.i131, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.je = mul i32 %i.ic, 5243
  %i.jf = lshr i32 %i.je, 19                      ; 3 uses
  %.neg52.i132 = mul nsw i32 %i.jf, -100
  %i.jg = add i32 %.neg52.i132, %i.ic             ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ji = shl nuw nsw i32 %i.jf, 1
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2
  store i16 %i.jl, ptr %i.jh, align 1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iy, i64 6
  %i.jn = shl nuw i32 %i.jg, 1
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.jo
  %i.jq = load i16, ptr %i.jp, align 2
  store i16 %i.jq, ptr %i.jm, align 1
  %i.jr = zext nneg i32 %i.jf to i64
  %i.js = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !100
  %i.ju = zext i8 %i.jt to i64
  %i.jv = zext i32 %i.jg to i64
  %i.jw = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !100
  %i.jy = zext i8 %i.jx to i64
  %.not53.i133 = icmp eq i32 %i.jg, 0
  %i.jz = add nuw nsw i64 %i.ju, 2
  %i.ka = select i1 %.not53.i133, i64 %i.jz, i64 %i.jy
  %i.kb = sub nsw i64 8, %i.ka
  br label %write_u32_len_7_to_9_trim.exit138

bb.ac:                                            ; preds = %bb.aa
  %i.kc = zext i32 %i.ij to i64
  %i.kd = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !100
  %i.kf = zext i8 %i.ke to i64
  %i.kg = zext i32 %i.ik to i64
  %i.kh = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !100
  %i.kj = zext i8 %i.ki to i64
  %.not51.i137 = icmp eq i32 %i.ik, 0
  %i.kk = select i1 %.not51.i137, i64 %i.kf, i64 0
  %i.kl = add nuw nsw i64 %i.kk, %i.kj
  %i.km = sub nsw i64 4, %i.kl
  br label %write_u32_len_7_to_9_trim.exit138

write_u32_len_7_to_9_trim.exit138:                ; preds = %bb.ab, %bb.ac
  %.pn.in.i134 = phi i64 [ %i.kb, %bb.ab ], [ %i.km, %bb.ac ]
  %.pn.i135 = and i64 %.pn.in.i134, 4294967295
  %.0.i136 = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.pn.i135
  %i.kn = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 0)
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ko ; 2 uses
  %i.kq = zext i1 %i.hw to i64                    ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kq
  %.0.copyload.i = load i64, ptr %i.kp, align 1
  store i64 %.0.copyload.i, ptr %i.kr, align 1
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i136, i64 %i.kq ; 2 uses
  %i.kt = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 1)
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ku
  store i8 46, ptr %i.kv, align 1, !tbaa !100
  %i.kw = sext i32 %i.hu to i64
  %i.kx = getelementptr inbounds i8, ptr %i.q, i64 %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 2 ; 2 uses
  %i.kz = icmp ugt ptr %i.ky, %i.ks
  %i.la = select i1 %i.kz, ptr %i.ky, ptr %i.ks
  br label %write_inf_or_nan.exit

bb.ad:                                            ; preds = %f32_bin_to_dec.exit123
  %.ptr = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  %i.lb = udiv i32 %.1175, 10000                  ; 3 uses
  %.neg.i124 = mul i32 %i.lb, -10000
  %i.lc = add i32 %.neg.i124, %.1175              ; 3 uses
  %i.ld = zext nneg i32 %i.lb to i64
  %i.le = mul nuw nsw i64 %i.ld, 167773
  %i.lf = lshr i64 %i.le, 24
  %i.lg = trunc nuw nsw i64 %i.lf to i32          ; 3 uses
  %i.lh = mul nuw nsw i32 %i.lg, 41
  %i.li = lshr i32 %i.lh, 12                      ; 3 uses
  %.neg48.i = mul nsw i32 %i.li, -100
  %i.lj = add nsw i32 %.neg48.i, %i.lg            ; 3 uses
  %.neg49.i = mul nsw i32 %i.lg, -100
  %i.lk = add nsw i32 %.neg49.i, %i.lb            ; 3 uses
  %i.ll = trunc nuw nsw i32 %i.li to i8
  %i.lm = add nuw nsw i8 %i.ll, 48
  store i8 %i.lm, ptr %.ptr, align 1, !tbaa !100
  %.not182 = icmp eq i32 %i.li, 0                 ; 2 uses
  %.add = select i1 %.not182, i64 1, i64 2        ; 2 uses
  %.ptr180 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.add
  %i.ln = icmp ult i32 %i.lj, 10
  %i.lo = and i1 %.not182, %i.ln                  ; 2 uses
  %i.lp = shl nsw i32 %i.lj, 1
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.lq
  %.neg50.i = sext i1 %i.lo to i64
  %i.ls = zext i1 %i.lo to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 1
  store i16 %i.lu, ptr %.ptr180, align 1
  %.add178 = add nsw i64 %.add, %.neg50.i         ; 2 uses
  %.ptr181 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.add178 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.ptr181, i64 2
  %i.lw = shl nsw i32 %i.lk, 1
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2
  store i16 %i.lz, ptr %i.lv, align 1
  %.not.i125 = icmp eq i32 %i.lc, 0
  br i1 %.not.i125, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ma = mul i32 %i.lc, 5243
  %i.mb = lshr i32 %i.ma, 19                      ; 3 uses
  %.neg52.i = mul nsw i32 %i.mb, -100
  %i.mc = add i32 %.neg52.i, %i.lc                ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.ptr181, i64 4
  %i.me = shl nuw nsw i32 %i.mb, 1
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.mf
  %i.mh = load i16, ptr %i.mg, align 2
  store i16 %i.mh, ptr %i.md, align 1
  %i.mi = getelementptr inbounds nuw i8, ptr %.ptr181, i64 6
  %i.mj = shl nuw i32 %i.mc, 1
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.mk
  %i.mm = load i16, ptr %i.ml, align 2
  store i16 %i.mm, ptr %i.mi, align 1
  %i.mn = zext nneg i32 %i.mb to i64
  %i.mo = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !100
  %i.mq = zext i8 %i.mp to i64
  %i.mr = zext i32 %i.mc to i64
  %i.ms = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !100
  %i.mu = zext i8 %i.mt to i64
  %.not53.i = icmp eq i32 %i.mc, 0
  %i.mv = add nuw nsw i64 %i.mq, 2
  %i.mw = select i1 %.not53.i, i64 %i.mv, i64 %i.mu
  %i.mx = sub nsw i64 8, %i.mw
  br label %write_u32_len_7_to_9_trim.exit

bb.af:                                            ; preds = %bb.ad
  %i.my = zext i32 %i.lj to i64
  %i.mz = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !100
  %i.nb = zext i8 %i.na to i64
  %i.nc = zext i32 %i.lk to i64
  %i.nd = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !100
  %i.nf = zext i8 %i.ne to i64
  %.not51.i = icmp eq i32 %i.lk, 0
  %i.ng = select i1 %.not51.i, i64 %i.nb, i64 0
  %i.nh = add nuw nsw i64 %i.ng, %i.nf
  %i.ni = sub nsw i64 4, %i.nh
  br label %write_u32_len_7_to_9_trim.exit

write_u32_len_7_to_9_trim.exit:                   ; preds = %bb.ae, %bb.af
  %.pn.in.i = phi i64 [ %i.mx, %bb.ae ], [ %i.ni, %bb.af ]
  %.pn.i = and i64 %.pn.in.i, 4294967295
  %.add179 = add nuw nsw i64 %.pn.i, %.add178     ; 2 uses
  %.0.i126.ptr = getelementptr inbounds nuw i8, ptr %i.q, i64 %.add179
  %i.nj = icmp eq i64 %.add179, 2
  %.neg101 = sext i1 %i.nj to i64
  %i.nk = getelementptr inbounds i8, ptr %.0.i126.ptr, i64 %.neg101 ; 2 uses
  %i.nl = add nsw i32 %i.hu, -1
  %i.nm = load i8, ptr %.ptr, align 1, !tbaa !100
  store i8 %i.nm, ptr %i.q, align 1, !tbaa !100
  store i8 46, ptr %.ptr, align 1, !tbaa !100
  store i16 11621, ptr %i.nk, align 1
  %i.nn = icmp sgt i32 %i.hu, 0
  %i.no = select i1 %i.nn, i64 1, i64 2
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.no ; 2 uses
  %i.nq = tail call i32 @llvm.abs.i32(i32 %i.nl, i1 true) ; 2 uses
  %i.nr = icmp samesign ult i32 %i.nq, 10         ; 2 uses
  %i.ns = shl nuw nsw i32 %i.nq, 1
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.nt
  %.neg.i140 = sext i1 %i.nr to i64
  %i.nv = zext i1 %i.nr to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nv
  %i.nx = load i16, ptr %i.nw, align 1
end_hunk_9
