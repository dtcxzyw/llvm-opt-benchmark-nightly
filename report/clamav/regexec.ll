Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/regexec?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cli_regexec:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr %i.as, align 8, !tbaa !33
  %i.bl = and i32 %i.bk, 1
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = getelementptr inbounds i8, ptr %.1.i, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !27
  %i.bo = sext i8 %i.bn to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.0111.i.i = phi i32 [ %i.bo, %bb.r ], [ 128, %bb.q ], [ 128, %bb.o ]
  %i.bp = load ptr, ptr %6, align 8, !tbaa !29    ; 9 uses
  %i.bq = call fastcc i64 @sstep(ptr noundef %i.bp, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.r, i64 noundef %i.s, i64 noundef %i.az, i32 noundef 132, i64 noundef %i.az) ; 3 uses
  %i.br = load ptr, ptr %i.ax, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 36 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.bv = load i32, ptr %i.as, align 8            ; 2 uses
  %i.bw = and i32 %i.bv, 1
  %.not122.i.i = icmp eq i32 %i.bw, 0
  %i.bx = and i32 %i.bv, 2
  %.not124.i.i = icmp eq i32 %i.bx, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.am, %bb.s
  %.0114.i.i = phi i64 [ %i.bq, %bb.s ], [ %i.dw, %bb.am ] ; 3 uses
  %.0113.i.i = phi ptr [ %.1.i, %bb.s ], [ %i.dx, %bb.am ] ; 5 uses
  %.1112.i.i = phi i32 [ %.0111.i.i, %bb.s ], [ %i.cb, %bb.am ] ; 7 uses
  %.0.i.i = phi ptr [ null, %bb.s ], [ %spec.select.i.i, %bb.am ]
  %i.by = icmp eq ptr %.0113.i.i, %i.br
  br i1 %i.by, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = load i8, ptr %.0113.i.i, align 1, !tbaa !27
  %i.ca = sext i8 %i.bz to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cb = phi i32 [ %i.ca, %bb.u ], [ 128, %bb.t ] ; 10 uses
  %i.cc = icmp eq i64 %.0114.i.i, %i.bq
  %spec.select.i.i = select i1 %i.cc, ptr %.0113.i.i, ptr %.0.i.i ; 5 uses
  switch i32 %.1112.i.i, label %bb.z [
    i32 10, label %bb.w
    i32 128, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.cd = load i32, ptr %i.bs, align 4, !tbaa !22
  %i.ce = and i32 %i.cd, 8
  %.not121.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not121.i.i, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  br i1 %.not122.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cf = load i32, ptr %i.bt, align 4, !tbaa !39
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.cg = phi i32 [ 131, %bb.y ], [ 130, %bb.x ], [ 130, %bb.v ], [ 130, %bb.w ]
  %.0108.i.i = phi i32 [ 129, %bb.y ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ] ; 3 uses
  %.0106.i.i = phi i32 [ %i.cf, %bb.y ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ] ; 4 uses
  switch i32 %i.cb, label %bb.ad [
    i32 10, label %bb.aa
    i32 128, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ch = load i32, ptr %i.bs, align 4, !tbaa !22
  %i.ci = and i32 %i.ch, 8
  %.not123.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not123.i.i, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  br i1 %.not124.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cj = load i32, ptr %i.bu, align 8, !tbaa !40
  %i.ck = add nsw i32 %i.cj, %.0106.i.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.1109.i.i = phi i32 [ %i.cg, %bb.ac ], [ %.0108.i.i, %bb.ab ], [ %.0108.i.i, %bb.z ], [ %.0108.i.i, %bb.aa ] ; 4 uses
  %.1107.i.i = phi i32 [ %i.ck, %bb.ac ], [ %.0106.i.i, %bb.ab ], [ %.0106.i.i, %bb.z ], [ %.0106.i.i, %bb.aa ] ; 2 uses
  %i.cl = icmp sgt i32 %.1107.i.i, 0
  br i1 %i.cl, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.ad, %.preheader.i.i
  %.1115.i.i = phi i64 [ %i.cm, %.preheader.i.i ], [ %.0114.i.i, %bb.ad ] ; 2 uses
  %.2.i.i = phi i32 [ %i.cn, %.preheader.i.i ], [ %.1107.i.i, %bb.ad ] ; 2 uses
  %i.cm = call fastcc i64 @sstep(ptr noundef %i.bp, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.r, i64 noundef %i.s, i64 noundef %.1115.i.i, i32 noundef %.1109.i.i, i64 noundef %.1115.i.i) ; 2 uses
  %i.cn = add nsw i32 %.2.i.i, -1
  %.old17.i.i = icmp samesign ugt i32 %.2.i.i, 1
  br i1 %.old17.i.i, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.ad
  %.2116.i.i = phi i64 [ %.0114.i.i, %bb.ad ], [ %i.cm, %.preheader.i.i ] ; 4 uses
  %i.co = icmp eq i32 %.1109.i.i, 129
  br i1 %i.co, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i
  %.not125.i.i = icmp eq i32 %.1112.i.i, 128
  br i1 %.not125.i.i, label %.thread.thread.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = tail call ptr @__ctype_b_loc() #15
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41 ; 3 uses
  %i.cr = and i32 %.1112.i.i, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !43
  %i.cv = and i16 %i.cu, 8                        ; 2 uses
  %i.cw = icmp eq i16 %i.cv, 0
  %i.cx = icmp ne i32 %.1112.i.i, 95
  %or.cond.not128.i.i = select i1 %i.cw, i1 %i.cx, i1 false
  %i.cy = icmp ne i32 %i.cb, 128
  %or.cond3.i.i = select i1 %or.cond.not128.i.i, i1 %i.cy, i1 false
  br i1 %or.cond3.i.i, label %bb.ah, label %.thread135.i.i

bb.ag:                                            ; preds = %.loopexit.i.i
  %.old2.not.i.i = icmp eq i32 %i.cb, 128
  br i1 %.old2.not.i.i, label %bb.ai, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ag
  %.pre147.i.i = tail call ptr @__ctype_b_loc() #15
  %.pre.i = load ptr, ptr %.pre147.i.i, align 8, !tbaa !41
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i, %bb.af
  %i.cz = phi ptr [ %.pre.i, %._crit_edge.i.i ], [ %i.cq, %bb.af ]
  %i.da = and i32 %i.cb, 255
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !43
  %i.de = and i16 %i.dd, 8
  %i.df = icmp ne i16 %i.de, 0
  %i.dg = icmp eq i32 %i.cb, 95
  %or.cond6.i.i = select i1 %i.df, i1 true, i1 %i.dg
  %spec.select132.i.i = select i1 %or.cond6.i.i, i32 133, i32 %.1109.i.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2110.i.i = phi i32 [ 129, %bb.ag ], [ %spec.select132.i.i, %bb.ah ] ; 2 uses
  %.not129.i.i = icmp eq i32 %.1112.i.i, 128
  br i1 %.not129.i.i, label %.thread.i.i, label %..thread135_crit_edge.i.i

..thread135_crit_edge.i.i:                        ; preds = %bb.ai
  %.pre.i.i = tail call ptr @__ctype_b_loc() #15
  %.pre143.i.i = and i32 %.1112.i.i, 255
  %.pre145.i.i = zext nneg i32 %.pre143.i.i to i64
  %.pre234.i = load ptr, ptr %.pre.i.i, align 8, !tbaa !41 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %.pre234.i, i64 %.pre145.i.i
  %.pre235.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !43
  %.pre240.i.a = and i16 %.pre235.i, 8
  br label %.thread135.i.i

.thread135.i.i:                                   ; preds = %..thread135_crit_edge.i.i, %bb.af
  %.pre-phi.i = phi i16 [ %.pre240.i.a, %..thread135_crit_edge.i.i ], [ %i.cv, %bb.af ]
  %i.dh = phi ptr [ %.pre234.i, %..thread135_crit_edge.i.i ], [ %i.cq, %bb.af ]
  %.2110138.i.i = phi i32 [ %.2110.i.i, %..thread135_crit_edge.i.i ], [ %.1109.i.i, %bb.af ] ; 4 uses
  %i.di = icmp ne i16 %.pre-phi.i, 0
  %i.dj = icmp eq i32 %.1112.i.i, 95
  %or.cond9.i.i = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond9.i.i, label %bb.aj, label %.thread.i.i

bb.aj:                                            ; preds = %.thread135.i.i
  %i.dk = icmp eq i32 %.2110138.i.i, 130
  br i1 %i.dk, label %.thread139.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not130.i.i = icmp eq i32 %i.cb, 128
  br i1 %.not130.i.i, label %.thread.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dl = and i32 %i.cb, 255
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !43
  %i.dp = and i16 %i.do, 8
  %i.dq = icmp ne i16 %i.dp, 0
  %i.dr = icmp eq i32 %i.cb, 95
  %or.cond12.i.i = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond12.i.i, label %.thread.i.i, label %.thread139.i.i

.thread.i.i:                                      ; preds = %bb.al, %bb.ak, %.thread135.i.i, %bb.ai
  %.3.i.i = phi i32 [ %.2110.i.i, %bb.ai ], [ %.2110138.i.i, %bb.al ], [ %.2110138.i.i, %bb.ak ], [ %.2110138.i.i, %.thread135.i.i ]
  %i.ds = icmp eq i32 %.3.i.i, 133
  br i1 %i.ds, label %.thread139.i.i, label %.thread.thread.i.i

.thread139.i.i:                                   ; preds = %.thread.i.i, %bb.al, %bb.aj
  %.3142.i.i = phi i32 [ 133, %.thread.i.i ], [ 134, %bb.aj ], [ 134, %bb.al ]
  %i.dt = call fastcc i64 @sstep(ptr noundef %i.bp, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.r, i64 noundef %i.s, i64 noundef %.2116.i.i, i32 noundef %.3142.i.i, i64 noundef %.2116.i.i)
  br label %.thread.thread.i.i

.thread.thread.i.i:                               ; preds = %.thread139.i.i, %.thread.i.i, %bb.ae
  %.3117.i.i = phi i64 [ %i.dt, %.thread139.i.i ], [ %.2116.i.i, %.thread.i.i ], [ %.2116.i.i, %bb.ae ] ; 2 uses
  %i.du = and i64 %.3117.i.i, %i.ba
  %.not131.i.i = icmp ne i64 %i.du, 0             ; 2 uses
  %i.dv = icmp eq ptr %.0113.i.i, %.0.i
  %or.cond.i.i = or i1 %i.dv, %.not131.i.i
  br i1 %or.cond.i.i, label %sfast.exit.i, label %bb.am

bb.am:                                            ; preds = %.thread.thread.i.i
  %i.dw = call fastcc i64 @sstep(ptr noundef %i.bp, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.r, i64 noundef %i.s, i64 noundef %.3117.i.i, i32 noundef %i.cb, i64 noundef %i.bq)
  %i.dx = getelementptr inbounds nuw i8, ptr %.0113.i.i, i64 1
  br label %bb.t

sfast.exit.i:                                     ; preds = %.thread.thread.i.i
  store ptr %spec.select.i.i, ptr %i.bb, align 8, !tbaa !45
  br i1 %.not131.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %sfast.exit.i
  %i.dy = load ptr, ptr %i.at, align 8, !tbaa !34
  call void @free(ptr noundef %i.dy) #13
  %i.dz = load ptr, ptr %i.au, align 8, !tbaa !35
  br label %.sink.split.i

bb.ao:                                            ; preds = %sfast.exit.i
  br i1 %i.bc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ea = load i32, ptr %i.bd, align 4, !tbaa !46
  %.not160.i = icmp eq i32 %i.ea, 0
  br i1 %.not160.i, label %.thread182.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.eb = call fastcc ptr @sslow(ptr noundef %6, ptr noundef %spec.select.i.i, ptr noundef %.0.i, i64 noundef %i.r, i64 noundef %i.s) ; 2 uses
  %.not161210.i = icmp eq ptr %i.eb, null
  br i1 %.not161210.i, label %.lr.ph212.i, label %._crit_edge213.i

.lr.ph212.i:                                      ; preds = %bb.aq, %.lr.ph212.i
  %i.ec = phi ptr [ %i.ed, %.lr.ph212.i ], [ %spec.select.i.i, %bb.aq ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 4 uses
  store ptr %i.ed, ptr %i.bb, align 8, !tbaa !45
  %i.ee = call fastcc ptr @sslow(ptr noundef %6, ptr noundef nonnull %i.ed, ptr noundef %.0.i, i64 noundef %i.r, i64 noundef %i.s) ; 2 uses
  %.not161.i = icmp eq ptr %i.ee, null
  br i1 %.not161.i, label %.lr.ph212.i, label %._crit_edge213.i

._crit_edge213.i:                                 ; preds = %.lr.ph212.i, %bb.aq
  %i.ef = phi ptr [ %spec.select.i.i, %bb.aq ], [ %i.ed, %.lr.ph212.i ]
  %.lcssa188.i = phi ptr [ %i.eb, %bb.aq ], [ %i.ee, %.lr.ph212.i ] ; 5 uses
  br i1 %i.be, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge213.i
  %i.eg = load i32, ptr %i.bd, align 4, !tbaa !46
  %.not162.i = icmp eq i32 %i.eg, 0
  br i1 %.not162.i, label %.thread178.thread.i, label %bb.as

.thread178.thread.i:                              ; preds = %bb.ar
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei
  store i64 %i.ej, ptr %3, align 8, !tbaa !23
  %i.ek = ptrtoint ptr %.lcssa188.i to i64
  %i.el = sub i64 %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.el, ptr %i.em, align 8, !tbaa !25
  br label %.thread182.i

bb.as:                                            ; preds = %bb.ar, %._crit_edge213.i
  %i.en = load ptr, ptr %i.at, align 8, !tbaa !34 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.at, label %.preheader184.i

bb.at:                                            ; preds = %bb.as
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !47
  %i.er = shl i64 %i.eq, 4
  %i.es = add i64 %i.er, 16
  %i.et = call ptr @cli_max_malloc(i64 noundef %i.es) #13 ; 3 uses
  store ptr %i.et, ptr %i.at, align 8, !tbaa !34
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.au, label %..preheader184.i_crit_edge

..preheader184.i_crit_edge:                       ; preds = %bb.at
  %.pre = load ptr, ptr %6, align 8, !tbaa !29
  br label %.preheader184.i

.preheader184.i:                                  ; preds = %..preheader184.i_crit_edge, %bb.as
  %i.ev = phi ptr [ %.pre, %..preheader184.i_crit_edge ], [ %i.bp, %bb.as ]
  %i.ew = phi ptr [ %i.et, %..preheader184.i_crit_edge ], [ %i.en, %bb.as ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 96
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !47 ; 2 uses
  %.not163215.i = icmp eq i64 %i.ey, 0
  br i1 %.not163215.i, label %._crit_edge218.i, label %.lr.ph217.preheader.i

.lr.ph217.preheader.i:                            ; preds = %.preheader184.i
  %scevgep230.i = getelementptr i8, ptr %i.ew, i64 16
  %i.ez = shl nuw i64 %i.ey, 4
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep230.i, i8 -1, i64 %i.ez, i1 false), !tbaa !48
  br label %._crit_edge218.i

bb.au:                                            ; preds = %bb.at
  %i.fa = load ptr, ptr %i.au, align 8, !tbaa !35
  br label %.sink.split.i

._crit_edge218.i:                                 ; preds = %.lr.ph217.preheader.i, %.preheader184.i
  %i.fb = load i32, ptr %i.bd, align 4, !tbaa !46
  %.not164.i = icmp eq i32 %i.fb, 0
  br i1 %.not164.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %._crit_edge218.i
  %i.fc = load i32, ptr %i.as, align 8, !tbaa !33
  %i.fd = and i32 %i.fc, 1024
  %.not165.i = icmp eq i32 %i.fd, 0
  br i1 %.not165.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fe = load ptr, ptr %i.bb, align 8, !tbaa !45
  %i.ff = call fastcc ptr @sdissect(ptr noundef %6, ptr noundef %i.fe, ptr noundef nonnull %.lcssa188.i, i64 noundef %i.r, i64 noundef %i.s)
  br label %bb.bc

bb.ax:                                            ; preds = %bb.av, %._crit_edge218.i
  %i.fg = load i64, ptr %i.bf, align 8, !tbaa !49 ; 3 uses
  %i.fh = icmp sgt i64 %i.fg, 0
  %i.fi = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  %or.cond.i = select i1 %i.fh, i1 %i.fj, i1 false
  br i1 %or.cond.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fk = shl i64 %i.fg, 3
  %i.fl = add i64 %i.fk, 8
  %i.fm = call ptr @cli_max_malloc(i64 noundef %i.fl) #13 ; 2 uses
  store ptr %i.fm, ptr %i.au, align 8, !tbaa !35
  %.pre236.i = load i64, ptr %i.bf, align 8, !tbaa !49
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fn = phi ptr [ %i.fm, %bb.ay ], [ %i.fi, %bb.ax ]
  %i.fo = phi i64 [ %.pre236.i, %bb.ay ], [ %i.fg, %bb.ax ]
  %i.fp = icmp sgt i64 %i.fo, 0
  %i.fq = icmp eq ptr %i.fn, null
  %or.cond173.i = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond173.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fr = load ptr, ptr %i.at, align 8, !tbaa !34
  br label %.sink.split.i

bb.bb:                                            ; preds = %bb.az
  %i.fs = load ptr, ptr %i.bb, align 8, !tbaa !45
  %i.ft = call fastcc ptr @sbackref(ptr noundef %6, ptr noundef %i.fs, ptr noundef %.lcssa188.i, i64 noundef %i.r, i64 noundef %i.s, i64 noundef 0, i32 noundef 0)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.aw
  %.1139.i = phi ptr [ %i.ft, %bb.bb ], [ %i.ff, %bb.aw ]
  %.not166.i = icmp eq ptr %.1139.i, null
  br i1 %.not166.i, label %.preheader183.i, label %.loopexit.i

.preheader183.i:                                  ; preds = %bb.bc, %bb.be
  %.0142219.i = phi ptr [ %i.fw, %bb.be ], [ %.lcssa188.i, %bb.bc ] ; 3 uses
  %i.fu = load ptr, ptr %i.bb, align 8, !tbaa !45 ; 5 uses
  %.not168.i = icmp ugt ptr %.0142219.i, %i.fu
  br i1 %.not168.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.preheader183.i
  %i.fv = getelementptr inbounds i8, ptr %.0142219.i, i64 -1
  %i.fw = call fastcc ptr @sslow(ptr noundef %6, ptr noundef %i.fu, ptr noundef nonnull %i.fv, i64 noundef %i.r, i64 noundef %i.s) ; 4 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fy = call fastcc ptr @sbackref(ptr noundef %6, ptr noundef %i.fu, ptr noundef %i.fw, i64 noundef %i.r, i64 noundef %i.s, i64 noundef 0, i32 noundef 0)
  %.not167.i = icmp eq ptr %i.fy, null
  br i1 %.not167.i, label %.preheader183.i, label %.loopexit.i

bb.bf:                                            ; preds = %bb.bd, %.preheader183.i
  %.1143.ph.i = phi ptr [ null, %bb.bd ], [ %.0142219.i, %.preheader183.i ]
  %i.fz = icmp eq ptr %i.fu, %.0.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  br i1 %i.fz, label %.loopexit.i, label %bb.o

.loopexit.i:                                      ; preds = %bb.bf, %bb.bc, %bb.be
  %.2144.i = phi ptr [ %i.fw, %bb.be ], [ %.1143.ph.i, %bb.bf ], [ %.lcssa188.i, %bb.bc ]
  br i1 %i.bc, label %.thread182.i, label %.thread178.i

.thread178.i:                                     ; preds = %.loopexit.i
  %.pre237.i = load ptr, ptr %i.bb, align 8, !tbaa !45
  %.pre238.i = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.gb = ptrtoint ptr %.pre237.i to i64
  %i.gc = ptrtoint ptr %.pre238.i to i64          ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc
  store i64 %i.gd, ptr %3, align 8, !tbaa !23
  %i.ge = ptrtoint ptr %.2144.i to i64
  %i.gf = sub i64 %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !25
  br i1 %i.be, label %.thread182.i, label %.preheader.i

.preheader.i:                                     ; preds = %.thread178.i
  %i.gh = load ptr, ptr %6, align 8, !tbaa !29
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 96 ; 3 uses
  %i.gj = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.gk = add i64 %spec.select.i, -1              ; 3 uses
  %xtraiter242 = and i64 %i.gk, 1
  %i.gl = icmp eq i64 %spec.select.i, 2
  br i1 %i.gl, label %.epil.preheader241, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter245 = and i64 %i.gk, -2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bm, %.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.bm ] ; 6 uses
  %niter246 = phi i64 [ 0, %.preheader.i.new ], [ %niter246.next.1, %bb.bm ]
  %i.gm = load i64, ptr %i.gi, align 8, !tbaa !47
  %.not170.i = icmp ult i64 %i.gm, %indvars.iv.i
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  br i1 %.not170.i, label %bb.bi, label %bb.bh
end_hunk_0
