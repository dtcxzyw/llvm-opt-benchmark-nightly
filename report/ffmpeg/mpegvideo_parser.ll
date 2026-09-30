Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_parser?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@mpegvideo_parse:bb.a
bb.y:                                             ; preds = %bb.x
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !23
  %i.db = and i8 %i.da, 7
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 13
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.df = load i8, ptr %i.de, align 1, !tbaa !23
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 5
  %i.di = or disjoint i32 %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !23
  %i.dl = lshr i8 %i.dk, 3
  %i.dm = zext nneg i8 %i.dl to i32
  %i.dn = or disjoint i32 %i.di, %i.dm
  br label %bb.bd

bb.z:                                             ; preds = %bb.v
  %i.do = icmp sgt i32 %i.cr, 6
  br i1 %i.do, label %bb.aa, label %bb.bd

bb.aa:                                            ; preds = %bb.z
  %i.dp = load i8, ptr %i.co, align 1, !tbaa !23
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !23
  %i.du = lshr i8 %i.dt, 4
  %i.dv = zext nneg i8 %i.du to i32
  %i.dw = or disjoint i32 %i.dr, %i.dv            ; 2 uses
  store i32 %i.dw, ptr %i.cc, align 4, !tbaa !27
  %i.dx = load i8, ptr %i.ds, align 1, !tbaa !23
  %i.dy = and i8 %i.dx, 15
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !23
  %i.ed = zext i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.ea, %i.ed            ; 2 uses
  store i32 %i.ee, ptr %i.cd, align 8, !tbaa !28
  %i.ef = load i32, ptr %i.cj, align 8, !tbaa !44
  %.not177.i = icmp eq i32 %i.ef, 0
  br i1 %.not177.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load i32, ptr %i.ck, align 4, !tbaa !45
  %.not178.i = icmp eq i32 %i.eg, 0
  br i1 %.not178.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = load i32, ptr %i.cl, align 8, !tbaa !46
  %.not179.i = icmp eq i32 %i.eh, 0
  br i1 %.not179.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = load i32, ptr %i.cm, align 4, !tbaa !47
  %.not180.i = icmp eq i32 %i.ei, 0
  br i1 %.not180.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.ej = call i32 @ff_set_dimensions(ptr noundef nonnull %1, i32 noundef %i.dw, i32 noundef %i.ee) #4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1163.i = phi i32 [ %.0162217.i, %bb.ad ], [ 1, %bb.ae ]
  %.1158.i = phi i32 [ %.0157218.i, %bb.ad ], [ %i.ej, %bb.ae ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !23
  %i.em = and i8 %i.el, 15
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @ff_mpeg12_frame_rate_tab, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 4, !tbaa !17 ; 2 uses
  store i64 %i.ep, ptr %i.cf, align 4, !tbaa !17
  store i64 %i.ep, ptr %i.ce, align 8, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !23
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.co, i64 5
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !23
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 2
  %i.ey = or disjoint i32 %i.ex, %i.et
  %i.ez = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !23
  %i.fb = lshr i8 %i.fa, 6
  %i.fc = zext nneg i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.ey, %i.fc
  store i32 1, ptr %i.ci, align 8, !tbaa !48
  br label %bb.bd

bb.ag:                                            ; preds = %bb.v
  %i.fe = icmp sgt i32 %i.cr, 0
  br i1 %i.fe, label %bb.ah, label %bb.bd

bb.ah:                                            ; preds = %bb.ag
  %i.ff = load i8, ptr %i.co, align 1, !tbaa !23
  %i.fg = lshr i8 %i.ff, 4
  switch i8 %i.fg, label %bb.bd [
    i8 1, label %bb.ai
    i8 8, label %bb.aq
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fh = icmp samesign ugt i32 %i.cr, 5
  br i1 %i.fh, label %bb.aj, label %bb.bd

bb.aj:                                            ; preds = %bb.ai
  %i.fi = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !23
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = shl nuw nsw i32 %i.fk, 1
  %i.fm = and i32 %i.fl, 2
  %i.fn = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !23
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = lshr i32 %i.fp, 7
  %i.fr = or disjoint i32 %i.fm, %i.fq
  %i.fs = shl nuw nsw i32 %i.fp, 7                ; 2 uses
  %i.ft = and i32 %i.fs, 3968
  %i.fu = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !23
  %i.fw = lshr i8 %i.fv, 1
  %i.fx = zext nneg i8 %i.fw to i32
  %i.fy = or disjoint i32 %i.ft, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.co, i64 5 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !23
  %i.gb = zext i8 %i.ga to i32                    ; 2 uses
  %i.gc = lshr i32 %i.gb, 5
  %i.gd = and i32 %i.gc, 3
  %i.ge = and i32 %i.gb, 31
  %i.gf = and i32 %i.fk, 8
  store i32 %i.gf, ptr %i.by, align 8, !tbaa !49
  %i.gg = load i8, ptr %i.fz, align 1, !tbaa !23
  %.not175.i = icmp sgt i8 %i.gg, -1
  %i.gh = zext i1 %.not175.i to i32
  store i32 %i.gh, ptr %i.cb, align 4, !tbaa !50
  %i.gi = load i8, ptr %i.fi, align 1, !tbaa !23
  %i.gj = lshr i8 %i.gi, 1
  %i.gk = and i8 %i.gj, 3
  switch i8 %i.gk, label %default.unreachable [
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 0, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  br label %bb.an

default.unreachable:                              ; preds = %bb.aj
  unreachable

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.1145.i = phi i32 [ 0, %bb.ak ], [ 4, %bb.al ], [ 5, %bb.am ], [ %.0144221.i, %bb.aj ]
  %i.gl = load i32, ptr %i.cc, align 4, !tbaa !27
  %i.gm = and i32 %i.gl, 4095
  %i.gn = shl nuw nsw i32 %i.fr, 12
  %i.go = or disjoint i32 %i.gm, %i.gn            ; 2 uses
  store i32 %i.go, ptr %i.cc, align 4, !tbaa !27
  %i.gp = load i32, ptr %i.cd, align 8, !tbaa !28
  %i.gq = and i32 %i.gp, 4095
  %i.gr = and i32 %i.fs, 12288
  %i.gs = or disjoint i32 %i.gq, %i.gr            ; 2 uses
  store i32 %i.gs, ptr %i.cd, align 8, !tbaa !28
  %i.gt = and i32 %.0153219.i, 262143
  %i.gu = shl nuw nsw i32 %i.fy, 18
  %i.gv = or disjoint i32 %i.gu, %i.gt
  %.not176.i = icmp eq i32 %.0162217.i, 0
  br i1 %.not176.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gw = call i32 @ff_set_dimensions(ptr noundef nonnull %1, i32 noundef %i.go, i32 noundef %i.gs) #4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.2159.i = phi i32 [ %i.gw, %bb.ao ], [ %.0157218.i, %bb.an ]
  %i.gx = load i32, ptr %i.ce, align 8, !tbaa !51
  %i.gy = add nuw nsw i32 %i.gd, 1
  %i.gz = mul nsw i32 %i.gx, %i.gy
  store i32 %i.gz, ptr %i.cf, align 4, !tbaa !52
  %i.ha = load i32, ptr %i.cg, align 4, !tbaa !53
  %i.hb = add nuw nsw i32 %i.ge, 1
  %i.hc = mul nsw i32 %i.ha, %i.hb
  store i32 %i.hc, ptr %i.ch, align 4, !tbaa !54
  store i32 2, ptr %i.ci, align 8, !tbaa !48
  br label %bb.bd

bb.aq:                                            ; preds = %bb.ah
  %i.hd = icmp samesign ugt i32 %i.cr, 4
  br i1 %i.hd, label %bb.ar, label %bb.bd

bb.ar:                                            ; preds = %bb.aq
  %i.he = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !23
  %i.hg = zext i8 %i.hf to i32                    ; 2 uses
  %6 = and i32 %i.hg, 128                         ; 2 uses
  %i.hh = and i32 %i.hg, 2
  %i.hi = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !23
  %i.hk = and i8 %i.hj, -128                      ; 2 uses
  store i32 1, ptr %i.bx, align 4, !tbaa !55
  %.not.i19 = icmp eq i32 %i.hh, 0
  %.pre.i20 = load i32, ptr %i.by, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i19, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not170.i = icmp eq i32 %.pre.i20, 0
  br i1 %.not170.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not172.i = icmp eq i32 %6, 0
  %..i = select i1 %.not172.i, i32 3, i32 5
  br label %.sink.split.i21

bb.au:                                            ; preds = %bb.as
  %.not171.i = icmp eq i8 %i.hk, 0
  br i1 %.not171.i, label %bb.av, label %.sink.split.i21

bb.av:                                            ; preds = %bb.au, %bb.ar
  %i.hl = icmp ne i32 %.pre.i20, 0
  %i.hm = icmp ne i8 %i.hk, 0
  %or.cond.i23 = select i1 %i.hl, i1 true, i1 %i.hm
  br i1 %or.cond.i23, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not173.i = icmp eq i32 %6, 0
  %.271.i = select i1 %.not173.i, i32 3, i32 2
  br label %bb.ax

.sink.split.i21:                                  ; preds = %bb.au, %bb.at
  %.sink.i22 = phi i32 [ %..i, %bb.at ], [ 2, %bb.au ]
  store i32 %.sink.i22, ptr %i.bx, align 4, !tbaa !55
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split.i21, %bb.aw, %bb.av
  %.sink270.i = phi i32 [ %.271.i, %bb.aw ], [ 1, %.sink.split.i21 ], [ 1, %bb.av ]
  store i32 %.sink270.i, ptr %i.bz, align 4, !tbaa !56
  %i.hn = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !23
  %i.hp = and i8 %i.ho, 3                         ; 2 uses
  %i.hq = zext nneg i8 %i.hp to i32
  store i32 %i.hq, ptr %i.ca, align 8, !tbaa !57
  %.not174.i = icmp eq i32 %.0140222.i, 0
  br i1 %.not174.i, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  switch i8 %i.hp, label %bb.bb [
    i8 2, label %bb.az
    i8 1, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %.1.i = phi i32 [ %.0139223.i, %bb.ax ], [ %.0139223.i, %bb.ay ], [ 3, %bb.az ], [ 2, %bb.ba ]
  %i.hr = add nsw i32 %.0140222.i, 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.v
  %i.hs = add i32 %i.cs, -257
  %or.cond3.i24 = icmp ult i32 %i.hs, 175
  br i1 %or.cond3.i24, label %.thread187.i, label %bb.bd

.thread187.i:                                     ; preds = %bb.bc, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.aq, %bb.ap, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.z, %bb.y, %bb.x, %bb.w
  %.3165.i = phi i32 [ %.0162217.i, %bb.ag ], [ %.0162217.i, %bb.bc ], [ %.0162217.i, %bb.y ], [ %.0162217.i, %bb.x ], [ %.0162217.i, %bb.w ], [ %.1163.i, %bb.af ], [ %.0162217.i, %bb.z ], [ %.0162217.i, %bb.ah ], [ %.0162217.i, %bb.ap ], [ %.0162217.i, %bb.ai ], [ %.0162217.i, %bb.bb ], [ %.0162217.i, %bb.aq ]
  %.4161.i = phi i32 [ %.0157218.i, %bb.ag ], [ %.0157218.i, %bb.bc ], [ %.0157218.i, %bb.y ], [ %.0157218.i, %bb.x ], [ %.0157218.i, %bb.w ], [ %.1158.i, %bb.af ], [ %.0157218.i, %bb.z ], [ %.0157218.i, %bb.ah ], [ %.2159.i, %bb.ap ], [ %.0157218.i, %bb.ai ], [ %.0157218.i, %bb.bb ], [ %.0157218.i, %bb.aq ] ; 2 uses
  %.2155.i = phi i32 [ %.0153219.i, %bb.ag ], [ %.0153219.i, %bb.bc ], [ %.0153219.i, %bb.y ], [ %.0153219.i, %bb.x ], [ %.0153219.i, %bb.w ], [ %i.fd, %bb.af ], [ %.0153219.i, %bb.z ], [ %.0153219.i, %bb.ah ], [ %i.gv, %bb.ap ], [ %.0153219.i, %bb.ai ], [ %.0153219.i, %bb.bb ], [ %.0153219.i, %bb.aq ] ; 2 uses
  %.2151.i = phi i32 [ %.0149220.i, %bb.ag ], [ %.0149220.i, %bb.bc ], [ %i.dn, %bb.y ], [ %.0149220.i, %bb.x ], [ %.0149220.i, %bb.w ], [ %.0149220.i, %bb.af ], [ %.0149220.i, %bb.z ], [ %.0149220.i, %bb.ah ], [ %.0149220.i, %bb.ap ], [ %.0149220.i, %bb.ai ], [ %.0149220.i, %bb.bb ], [ %.0149220.i, %bb.aq ] ; 2 uses
  %.3147.i = phi i32 [ %.0144221.i, %bb.ag ], [ %.0144221.i, %bb.bc ], [ %.0144221.i, %bb.y ], [ %.0144221.i, %bb.x ], [ %.0144221.i, %bb.w ], [ 0, %bb.af ], [ %.0144221.i, %bb.z ], [ %.0144221.i, %bb.ah ], [ %.1145.i, %bb.ap ], [ %.0144221.i, %bb.ai ], [ %.0144221.i, %bb.bb ], [ %.0144221.i, %bb.aq ] ; 2 uses
  %.2142.i = phi i32 [ %.0140222.i, %bb.ag ], [ %.0140222.i, %bb.bc ], [ %.0140222.i, %bb.y ], [ %.0140222.i, %bb.x ], [ %.0140222.i, %bb.w ], [ %.0140222.i, %bb.af ], [ %.0140222.i, %bb.z ], [ %.0140222.i, %bb.ah ], [ %.0140222.i, %bb.ap ], [ %.0140222.i, %bb.ai ], [ %i.hr, %bb.bb ], [ %.0140222.i, %bb.aq ] ; 2 uses
  %.3.i = phi i32 [ %.0139223.i, %bb.ag ], [ %.0139223.i, %bb.bc ], [ %.0139223.i, %bb.y ], [ %.0139223.i, %bb.x ], [ %.0139223.i, %bb.w ], [ %.0139223.i, %bb.af ], [ %.0139223.i, %bb.z ], [ %.0139223.i, %bb.ah ], [ %.0139223.i, %bb.ap ], [ %.0139223.i, %bb.ai ], [ %.1.i, %bb.bb ], [ %.0139223.i, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.ht = icmp ult ptr %i.co, %i.bu
  br i1 %i.ht, label %bb.v, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bd, %.thread187.i
  %.0157215.i = phi i32 [ %.0157218.i, %.thread187.i ], [ %.4161.i, %bb.bd ]
  %.0153211.i = phi i32 [ %.0153219.i, %.thread187.i ], [ %.2155.i, %bb.bd ] ; 2 uses
  %.0149208.i = phi i32 [ %.0149220.i, %.thread187.i ], [ %.2151.i, %bb.bd ] ; 2 uses
  %.0144205.i = phi i32 [ %.0144221.i, %.thread187.i ], [ %.3147.i, %bb.bd ] ; 2 uses
  %.0140202.i = phi i32 [ %.0140222.i, %.thread187.i ], [ %.2142.i, %bb.bd ] ; 2 uses
  %.0139199.i = phi i32 [ %.0139223.i, %.thread187.i ], [ %.3.i, %bb.bd ] ; 2 uses
  %i.hu = icmp slt i32 %.0157215.i, 0
  br i1 %i.hu, label %bb.be, label %.loopexit.thread.i

bb.be:                                            ; preds = %.loopexit.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str) #4
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %bb.be, %.loopexit.i, %bb.u
  %.0139199257.i = phi i32 [ %.0139199.i, %.loopexit.i ], [ %.0139199.i, %bb.be ], [ 0, %bb.u ]
  %.0140202256.i = phi i32 [ %.0140202.i, %.loopexit.i ], [ %.0140202.i, %bb.be ], [ 0, %bb.u ]
  %.0144205255.i = phi i32 [ %.0144205.i, %.loopexit.i ], [ %.0144205.i, %bb.be ], [ -1, %bb.u ] ; 2 uses
  %.0149208254.i = phi i32 [ %.0149208.i, %.loopexit.i ], [ %.0149208.i, %bb.be ], [ 0, %bb.u ]
  %.0153211252.i = phi i32 [ %.0153211.i, %.loopexit.i ], [ %.0153211.i, %bb.be ], [ 0, %bb.u ] ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !48
  %.fr.i = freeze i32 %i.hw                       ; 3 uses
  %i.hx = icmp eq i32 %.fr.i, 2
  %.not196.i = icmp eq i32 %.0153211252.i, 0
  %i.hy = icmp ne i32 %.0153211252.i, 262143
  br i1 %i.hx, label %switch.early.test.i, label %bb.bg

switch.early.test.i:                              ; preds = %.loopexit.thread.i
  switch i32 %.0153211252.i, label %bb.bf [
    i32 0, label %bb.bj
    i32 262143, label %bb.bh
  ]

bb.bf:                                            ; preds = %switch.early.test.i
  %i.hz = zext nneg i32 %.0153211252.i to i64
  %i.ia = mul nuw nsw i64 %i.hz, 400
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !58
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.loopexit.thread.i
  br i1 %.not196.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %switch.early.test.i
  %i.ic = icmp eq i32 %.fr.i, 1
  %or.cond9.i15 = select i1 %i.ic, i1 %i.hy, i1 false
  %i.id = icmp ne i32 %.0149208254.i, 65535
  %or.cond11.i16 = select i1 %or.cond9.i15, i1 true, i1 %i.id
  br i1 %or.cond11.i16, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ie = zext nneg i32 %.0153211252.i to i64
  %i.if = mul nuw nsw i64 %i.ie, 400
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !59
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %switch.early.test.i
  %.not181.i = icmp eq i32 %.0144205255.i, -1
  br i1 %.not181.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %.0144205255.i, ptr %i.ih, align 8, !tbaa !60
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bs, i64 60
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ik = load <2 x i32>, ptr %i.ii, align 4, !tbaa !17
  %i.il = shufflevector <2 x i32> %i.ik, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.im = add nsw <4 x i32> %i.il, <i32 0, i32 0, i32 15, i32 15>
  %i.in = and <4 x i32> %i.im, <i32 -1, i32 -1, i32 -16, i32 -16>
  store <4 x i32> %i.in, ptr %i.ij, align 8, !tbaa !17
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.io = icmp eq i32 %.fr.i, 1
  %i.ip = icmp sgt i32 %.0140202256.i, 1          ; 2 uses
  %or.cond13.i17 = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %or.cond13.i17, label %bb.bm, label %mpegvideo_extract_headers.exit

bb.bm:                                            ; preds = %bb.bl
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.iq, align 4, !tbaa !55
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 3, ptr %i.ir, align 8, !tbaa !57
  %i.is = select i1 %i.ip, i32 %.0139199257.i, i32 1
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 %i.is, ptr %i.it, align 4, !tbaa !56
  br label %mpegvideo_extract_headers.exit

mpegvideo_extract_headers.exit:                   ; preds = %bb.bl, %bb.bm
  %i.iu = load ptr, ptr %i.c, align 8, !tbaa !16
  store ptr %i.iu, ptr %2, align 8, !tbaa !16
  %i.iv = load i32, ptr %i.d, align 4, !tbaa !17
  store i32 %i.iv, ptr %3, align 4, !tbaa !17
  br label %bb.bn

bb.bn:                                            ; preds = %mpegvideo_extract_headers.exit, %bb.t
  %.014 = phi i32 [ %.0, %mpegvideo_extract_headers.exit ], [ %i.bp, %bb.t ]
  ret i32 %.014
}

declare void @ff_parse_close(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ff_combine_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @avpriv_find_start_code(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_fetch_timestamp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!10 = !{!"p1 _ZTS13AVCodecParser", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"AVCodecParserContext", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !6, i64 80, !6, i64 84, !5, i64 88, !5, i64 120, !5, i64 152, !6, i64 184, !11, i64 192, !5, i64 200, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !5, i64 248, !11, i64 280, !11, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328}
!13 = !{!12, !6, i64 40}
end_hunk_0
