inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@processCommand:bb.a
._crit_edge392:                                   ; preds = %bb.z
  %.pre387.pre = load ptr, ptr %i.g, align 8, !tbaa !527
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !536
  %i.dc = icmp eq ptr %i.db, @debugCommand        ; 2 uses
  %i.dd = select i1 %i.dc, ptr @.str.189, ptr @.str.14
  %i.de = select i1 %i.dc, ptr @.str.190, ptr @.str.191
  call void (ptr, ptr, ...) @rejectCommandFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.188, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.de)
  br label %.thread363

.thread363:                                       ; preds = %bb.aa, %.thread.i, %bb.r, %bb.v, %.thread.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %rejectCommand.exit

bb.ab:                                            ; preds = %._crit_edge392, %bb.y, %commandCheckArity.exit
  %.pre387 = phi ptr [ %.pre387.pre, %._crit_edge392 ], [ %i.cv, %bb.y ], [ %i.bs, %commandCheckArity.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %.thread347

.thread347:                                       ; preds = %.thread, %bb.ab
  %i.df = phi ptr [ %i.h, %.thread ], [ %.pre387, %bb.ab ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !496 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !536 ; 6 uses
  %i.dk = icmp eq ptr %i.dj, @fcallCommand
  %i.dl = icmp eq ptr %i.dj, @fcallroCommand
  %or.cond.i = or i1 %i.dk, %i.dl
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread347
  %i.dm = call i64 @fcallGetCommandFlags(ptr noundef nonnull %0, i64 noundef %i.dh) #39
  br label %getCommandFlags.exit

bb.ad:                                            ; preds = %.thread347
  %i.dn = icmp eq ptr %i.dj, @evalCommand
  %i.do = icmp eq ptr %i.dj, @evalRoCommand
  %or.cond12.i = or i1 %i.dn, %i.do
  %i.dp = icmp eq ptr %i.dj, @evalShaCommand
  %or.cond13.i = or i1 %i.dp, %or.cond12.i
  %i.dq = icmp eq ptr %i.dj, @evalShaRoCommand
  %or.cond14.i335 = or i1 %i.dq, %or.cond13.i
  br i1 %or.cond14.i335, label %bb.ae, label %getCommandFlags.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dr = call i64 @evalGetCommandFlags(ptr noundef nonnull %0, i64 noundef %i.dh) #39
  br label %getCommandFlags.exit

getCommandFlags.exit:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  %.0.i336 = phi i64 [ %i.dm, %bb.ac ], [ %i.dr, %bb.ae ], [ %i.dh, %bb.ad ] ; 9 uses
  %i.ds = and i64 %.0.i336, 2
  %.not251 = icmp eq i64 %i.ds, 0
  br i1 %.not251, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %getCommandFlags.exit
  %i.dt = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !536
  %i.dw = icmp eq ptr %i.dv, @execCommand
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !564
  %i.dz = and i32 %i.dy, 2
  %i.ea = icmp ne i32 %i.dz, 0
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %getCommandFlags.exit
  %i.eb = phi i1 [ true, %getCommandFlags.exit ], [ false, %bb.af ], [ %i.ea, %bb.ag ]
  %i.ec = and i64 %.0.i336, 1
  %.not252 = icmp eq i64 %i.ec, 0
  br i1 %.not252, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ed = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !536
  %i.eg = icmp eq ptr %i.ef, @execCommand
  br i1 %i.eg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !564
  %i.ej = trunc i32 %i.ei to i1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %i.ek = phi i1 [ true, %bb.ah ], [ false, %bb.ai ], [ %i.ej, %bb.aj ] ; 5 uses
  %i.el = and i64 %.0.i336, 4
  %.not253 = icmp eq i64 %i.el, 0
  br i1 %.not253, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 96
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !536
  %i.ep = icmp eq ptr %i.eo, @execCommand
  br i1 %i.ep, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !564
  %i.es = and i32 %i.er, 4
  %i.et = icmp ne i32 %i.es, 0
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.ak
  %i.eu = phi i1 [ true, %bb.ak ], [ false, %bb.al ], [ %i.et, %bb.am ]
  %i.ev = and i64 %.0.i336, 1024
  %.not254 = icmp eq i64 %i.ev, 0
  br i1 %.not254, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !536
  %i.ez = icmp eq ptr %i.ey, @execCommand
  br i1 %i.ez, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !565
  %i.fc = and i32 %i.fb, 1024
  %i.fd = icmp ne i32 %i.fc, 0
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %i.fe = phi i1 [ true, %bb.an ], [ false, %bb.ao ], [ %i.fd, %bb.ap ]
  %i.ff = and i64 %.0.i336, 512
  %.not255 = icmp eq i64 %i.ff, 0
  br i1 %.not255, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fg = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !536
  %i.fj = icmp eq ptr %i.fi, @execCommand
  br i1 %i.fj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !565
  %i.fm = and i32 %i.fl, 512
  %i.fn = icmp ne i32 %i.fm, 0
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %i.fo = phi i1 [ true, %bb.aq ], [ false, %bb.ar ], [ %i.fn, %bb.as ]
  %i.fp = and i64 %.0.i336, 65537
  %.not256 = icmp eq i64 %i.fp, 0
  br i1 %.not256, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 96
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !536
  %i.ft = icmp eq ptr %i.fs, @execCommand
  br i1 %i.ft, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !564
  %i.fw = and i32 %i.fv, 65537
  %i.fx = icmp ne i32 %i.fw, 0
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.at
  %i.fy = phi i1 [ true, %bb.at ], [ false, %bb.au ], [ %i.fx, %bb.av ] ; 2 uses
  %i.fz = and i64 %.0.i336, 8388608
  %.not257 = icmp eq i64 %i.fz, 0
  br i1 %.not257, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !536
  %i.gd = icmp eq ptr %i.gc, @execCommand
  br i1 %i.gd, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !564
  %i.gg = and i32 %i.gf, 8388608
  %i.gh = icmp ne i32 %i.gg, 0
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  %i.gi = phi i1 [ true, %bb.aw ], [ false, %bb.ax ], [ %i.gh, %bb.ay ]
  %i.gj = load i64, ptr %0, align 8, !tbaa !68
  %i.gk = icmp eq i64 %i.gj, -1
  br i1 %i.gk, label %mustObeyClient.exit337, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !111
  %1 = trunc i64 %i.gm to i32
  %2 = lshr i32 %1, 1
  %3 = and i32 %2, 1
  br label %mustObeyClient.exit337

mustObeyClient.exit337:                           ; preds = %bb.az, %bb.ba
  %4 = phi i32 [ 1, %bb.az ], [ %3, %bb.ba ]      ; 2 uses
  %i.gn = call i32 @authRequired(ptr noundef nonnull %0) #39
  %.not258 = icmp eq i32 %i.gn, 0
  br i1 %.not258, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %mustObeyClient.exit337
  %i.go = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 112
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !496
  %i.gr = and i64 %i.gq, 32768
  %.not259 = icmp eq i64 %i.gr, 0
  br i1 %.not259, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 312), align 8, !tbaa !275 ; 2 uses
  call void @flagTransaction(ptr noundef nonnull %0) #39
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.gt, align 8, !tbaa !537
  %i.gu = load ptr, ptr %i.g, align 8, !tbaa !527 ; 3 uses
  %.not.i338 = icmp eq ptr %i.gu, null
  br i1 %.not.i338, label %.thread.i339, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 192 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !548
  %i.gx = add nsw i64 %i.gw, 1
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !548
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !536
  %i.ha = icmp eq ptr %i.gz, @execCommand
  br i1 %i.ha, label %bb.be, label %.thread.i339

bb.be:                                            ; preds = %bb.bd
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !65
  call void @execCommandAbort(ptr noundef nonnull %0, ptr noundef %i.hc) #39
  br label %rejectCommand.exit

.thread.i339:                                     ; preds = %bb.bd, %bb.bc
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.gs) #39
  br label %rejectCommand.exit

bb.bf:                                            ; preds = %bb.bb, %mustObeyClient.exit337
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !111
  %i.hf = and i64 %i.he, 8
  %.not260 = icmp eq i64 %i.hf, 0
  br i1 %.not260, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hg = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 112
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !496
  %i.hj = and i64 %i.hi, 16777216
  %.not261 = icmp eq i64 %i.hj, 0
  br i1 %.not261, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, ptr, ...) @rejectCommandFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.192)
  br label %rejectCommand.exit

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.hk = call i32 @ACLCheckAllPerm(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #39 ; 3 uses
  %.not262 = icmp eq i32 %i.hk, 0
  br i1 %.not262, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hl = load i64, ptr %i.hd, align 8, !tbaa !111
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = lshr i32 %i.hm, 2
  %i.ho = and i32 %i.hn, 2
  %i.hp = load i32, ptr %i.b, align 4, !tbaa !9
  call void @addACLLogEntry(ptr noundef nonnull %0, i32 noundef %i.hk, i32 noundef %i.ho, i32 noundef %i.hp, ptr noundef null, ptr noundef null) #39
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !566
  %i.hs = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !125
  %i.hv = load i32, ptr %i.b, align 4, !tbaa !9
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !227
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !65
  %i.ib = call ptr @getAclErrorMessage(i32 noundef %i.hk, ptr noundef %i.hr, ptr noundef %i.hs, ptr noundef %i.ia, i32 noundef 0) #39 ; 2 uses
  call void (ptr, ptr, ...) @rejectCommandFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.193, ptr noundef %i.ib)
  call void @sdsfree(ptr noundef %i.ib) #39
  br label %.thread369

bb.bk:                                            ; preds = %bb.bi
  %i.ic = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !92
  %.not263 = icmp eq i32 %i.ic, 0
  br i1 %.not263, label %mustObeyClient.exit340.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.id = load i64, ptr %0, align 8, !tbaa !68
  %i.ie = icmp eq i64 %i.id, -1
  br i1 %i.ie, label %mustObeyClient.exit340.thread.thread, label %mustObeyClient.exit340

mustObeyClient.exit340:                           ; preds = %bb.bl
  %i.if = load i64, ptr %i.hd, align 8, !tbaa !111
  %i.ig = and i64 %i.if, 2
  %.not264 = icmp eq i64 %i.ig, 0
  br i1 %.not264, label %bb.bm, label %mustObeyClient.exit340.thread.thread

bb.bm:                                            ; preds = %mustObeyClient.exit340
  %i.ih = load ptr, ptr %i.g, align 8, !tbaa !527 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 112
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !496
  %i.ik = and i64 %i.ij, 33554432
  %.not265 = icmp eq i64 %i.ik, 0
  br i1 %.not265, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 136
  %i.im = load i32, ptr %i.il, align 8, !tbaa !497
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 96
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !536
  %.not266 = icmp eq ptr %i.ip, @execCommand
  br i1 %.not266, label %bb.bp, label %mustObeyClient.exit340.thread.thread

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !125
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.it = load i32, ptr %i.is, align 8, !tbaa !542
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.iv = call ptr @getClientCachedKeyResult(ptr noundef nonnull %0) #39
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !567
  %i.iy = call ptr @getNodeByQuery(ptr noundef nonnull %0, ptr noundef nonnull %i.ih, ptr noundef %i.ir, i32 noundef %i.it, ptr noundef nonnull %i.iu, ptr noundef %i.iv, i8 noundef zeroext %i.ix, i64 noundef %.0.i336, ptr noundef nonnull %i.c) #39 ; 3 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ja = call i32 @clusterNodeIsMyself(ptr noundef nonnull %i.iy) #39
  %.not267 = icmp eq i32 %i.ja, 0
  br i1 %.not267, label %bb.br, label %.thread365

.thread365:                                       ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %.pre388 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8
  %i.jb = icmp ne i32 %.pre388, 0
  br label %mustObeyClient.exit340.thread

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.jc = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !536
  %i.jf = icmp eq ptr %i.je, @execCommand
  br i1 %i.jf, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @discardTransaction(ptr noundef nonnull %0) #39
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  call void @flagTransaction(ptr noundef nonnull %0) #39
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.jg = load i32, ptr %i.iu, align 8, !tbaa !568
  %i.jh = load i32, ptr %i.c, align 4, !tbaa !9
  call void @clusterRedirectClient(ptr noundef nonnull %0, ptr noundef %i.iy, i32 noundef %i.jg, i32 noundef %i.jh) #39
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.ji, align 8, !tbaa !537
  %i.jj = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 192 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !548
  %i.jm = add nsw i64 %i.jl, 1
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  br label %.thread369

mustObeyClient.exit340.thread:                    ; preds = %.thread365, %bb.bk
  %i.jn = phi i1 [ false, %bb.bk ], [ %i.jb, %.thread365 ]
  %i.jo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6656), align 8, !tbaa !569 ; 2 uses
  %i.jp = icmp eq i32 %i.jo, 0
  %or.cond = select i1 %i.jp, i1 true, i1 %i.jn
  br i1 %or.cond, label %mustObeyClient.exit340.thread.thread, label %bb.bv

bb.bv:                                            ; preds = %mustObeyClient.exit340.thread
  %i.jq = load ptr, ptr %i.g, align 8, !tbaa !527 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 112
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !496
  %i.jt = and i64 %i.js, 33554432
  %.not268 = icmp eq i64 %i.jt, 0
  br i1 %.not268, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 136
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !497
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 96
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !536
  %.not269 = icmp eq ptr %i.jy, @execCommand
  br i1 %.not269, label %bb.by, label %mustObeyClient.exit340.thread.thread

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.jz = icmp eq i32 %i.jo, 100
  br i1 %i.jz, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ka = call i32 @rand() #39
  %i.kb = sitofp i32 %i.ka to double
  %i.kc = fdiv nnan double %i.kb, f0x41DFFFFFFFC00000
  %i.kd = fmul nnan double %i.kc, 1.000000e+02
  %i.ke = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6656), align 8, !tbaa !569
  %i.kf = sitofp i32 %i.ke to double
  %i.kg = fcmp olt double %i.kd, %i.kf
  br i1 %i.kg, label %bb.ca, label %mustObeyClient.exit340.thread.thread

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 3 uses
  store i32 -1, ptr %i.kh, align 4, !tbaa !570
  %i.ki = call i32 @areCommandKeysInSameSlot(ptr noundef nonnull %0, ptr noundef nonnull %i.kh)
  %.not270 = icmp eq i32 %i.ki, 0
  br i1 %.not270, label %bb.cb, label %mustObeyClient.exit340.thread.thread

bb.cb:                                            ; preds = %bb.ca
  %i.kj = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !571
  %i.kk = add nsw i64 %i.kj, 1
  store i64 %i.kk, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !571
  store i32 -2, ptr %i.kh, align 4, !tbaa !570
  br label %mustObeyClient.exit340.thread.thread

mustObeyClient.exit340.thread.thread:             ; preds = %mustObeyClient.exit340, %bb.bo, %bb.bl, %bb.ca, %bb.cb, %bb.bz, %bb.bx, %mustObeyClient.exit340.thread
  call void @evictClients() #39
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !238
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %.thread369, label %bb.cc

bb.cc:                                            ; preds = %mustObeyClient.exit340.thread.thread
  %i.kn = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !479
  %.not271 = icmp eq i64 %i.kn, 0
  br i1 %.not271, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ko = call i32 @scriptIsTimedout() #39
  %i.kp = icmp eq i32 %i.ko, 0
  %i.kq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 224), align 8
  %i.kr = icmp eq i32 %i.kq, 0
  %.not382 = select i1 %i.kp, i1 %i.kr, i1 false
  br i1 %.not382, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %i.ks = call i32 @performEvictions() #39
  %i.kt = icmp eq i32 %i.ks, 2                    ; 2 uses
  %i.ku = zext i1 %i.kt to i32
  call void @trackingHandlePendingKeyInvalidations() #39
  %i.kv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !238
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %.thread369, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %or.cond6 = select i1 %i.kt, i1 %i.eu, i1 false
  br i1 %or.cond6, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 336), align 8, !tbaa !276
  call void @rejectCommand(ptr noundef nonnull %0, ptr noundef %i.kx)
  br label %.thread369

bb.ch:                                            ; preds = %bb.cf
  store i32 %i.ku, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8344), align 8, !tbaa !572
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cd, %bb.cc
  %i.ky = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7888), align 8, !tbaa !207
  %.not273 = icmp eq i32 %i.ky, 0
  br i1 %.not273, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @trackingLimitUsedSlots() #39
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.kz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7012), align 4, !tbaa !573
  %i.la = icmp ne i32 %i.kz, 0
  %i.lb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6936), align 8
  %i.lc = icmp sgt i32 %i.lb, 0
  %or.cond.i341 = select i1 %i.la, i1 %i.lc, i1 false
  %i.ld = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7008), align 8
  %i.le = icmp eq i32 %i.ld, -1
  %or.cond3.i = select i1 %or.cond.i341, i1 %i.le, i1 false
  br i1 %or.cond3.i, label %bb.cp, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !202
  %.not.i342 = icmp eq i32 %i.lf, 0
  br i1 %.not.i342, label %writeCommandsDeniedByDiskError.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6832), align 8, !tbaa !472
  %i.lh = icmp eq i32 %i.lg, -1
  br i1 %i.lh, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.li = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6860) monotonic, align 4
  %i.lj = icmp eq i32 %i.li, -1
  br i1 %i.lj, label %bb.co, label %writeCommandsDeniedByDiskError.exit

bb.co:                                            ; preds = %bb.cn
  %i.lk = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6864) monotonic, align 8
  store i32 %i.lk, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6836), align 4, !tbaa !473
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.ck, %bb.cm
  %.1.i.ph = phi i32 [ 1, %bb.cm ], [ 2, %bb.ck ], [ 1, %bb.co ]
  br i1 %i.ek, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ll = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 96
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !536
  %i.lo = icmp eq ptr %i.ln, @pingCommand
  br i1 %i.lo, label %bb.cr, label %writeCommandsDeniedByDiskError.exit.thread375

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.not275 = icmp eq i32 %4, 0
  br i1 %.not275, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7628), align 4, !tbaa !574
  %.not276 = icmp eq i32 %i.lp, 0
  br i1 %.not276, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.lq = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 96
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !536
  %.not277 = icmp eq ptr %i.ls, @pingCommand
  br i1 %.not277, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.9, i32 noundef 4523, ptr noundef nonnull @.str.194) #39
  call void @abort() #41
  unreachable

bb.cv:                                            ; preds = %bb.ct, %bb.cs
  %i.lt = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !142 ; 2 uses
  %i.lu = load i64, ptr @processCommand.last_log_time_ms, align 8, !tbaa !106
  %i.lv = add nuw nsw i64 %i.lu, 10000
  %i.lw = icmp sgt i64 %i.lt, %i.lv
  br i1 %i.lw, label %bb.cw, label %writeCommandsDeniedByDiskError.exit

bb.cw:                                            ; preds = %bb.cv
  store i64 %i.lt, ptr @processCommand.last_log_time_ms, align 8, !tbaa !106
  %i.lx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.ly = icmp sgt i32 %i.lx, 3
  br i1 %i.ly, label %writeCommandsDeniedByDiskError.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.195)
  br label %writeCommandsDeniedByDiskError.exit

bb.cy:                                            ; preds = %bb.cr
  %i.lz = call ptr @writeCommandsGetDiskErrorMessage(i32 noundef %.1.i.ph) ; 3 uses
  %i.ma = call fastcc i64 @sdslen(ptr noundef %i.lz)
  %i.mb = add i64 %i.ma, -2
  call void @sdssubstr(ptr noundef %i.lz, i64 noundef 0, i64 noundef %i.mb) #39
  call void @rejectCommandSds(ptr noundef nonnull %0, ptr noundef %i.lz)
  br label %.thread369

writeCommandsDeniedByDiskError.exit:              ; preds = %bb.cn, %bb.cl, %bb.cv, %bb.cw, %bb.cx
  br i1 %i.ek, label %bb.cz, label %writeCommandsDeniedByDiskError.exit.thread375

bb.cz:                                            ; preds = %writeCommandsDeniedByDiskError.exit
  %i.mc = call i32 @checkGoodReplicasStatus() #39
  %.not278 = icmp eq i32 %i.mc, 0
  br i1 %.not278, label %bb.da, label %writeCommandsDeniedByDiskError.exit.thread375

bb.da:                                            ; preds = %bb.cz
  %i.md = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 320), align 8, !tbaa !278
  call void @rejectCommand(ptr noundef nonnull %0, ptr noundef %i.md)
  br label %.thread369

writeCommandsDeniedByDiskError.exit.thread375:    ; preds = %bb.cq, %bb.cz, %writeCommandsDeniedByDiskError.exit
  %i.me = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !57
  %5 = icmp eq ptr %i.me, null
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7572), align 4
  %6 = icmp eq i32 %i.mf, 0
  %or.cond8.not281.not286 = select i1 %5, i1 true, i1 %6
  %7 = trunc nuw i32 %4 to i1
  %or.cond10.not283 = select i1 %or.cond8.not281.not286, i1 true, i1 %7
  %or.cond10.not = xor i1 %or.cond10.not283, true
  %or.cond12 = select i1 %or.cond10.not, i1 %i.ek, i1 false
  br i1 %or.cond12, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %writeCommandsDeniedByDiskError.exit.thread375
  %i.mg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 296), align 8, !tbaa !274
  call void @rejectCommand(ptr noundef nonnull %0, ptr noundef %i.mg)
  br label %.thread369

bb.dc:                                            ; preds = %writeCommandsDeniedByDiskError.exit.thread375
  %i.mh = load i64, ptr %i.hd, align 8, !tbaa !111 ; 2 uses
  %i.mi = and i64 %i.mh, 2
  %i.mj = icmp ne i64 %i.mi, 0
  %or.cond14 = select i1 %i.mj, i1 %i.ek, i1 false
  %i.mk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8
  %i.ml = icmp ne i32 %i.mk, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.ml, i1 false
  br i1 %or.cond16, label %bb.dd, label %.thread376

bb.dd:                                            ; preds = %bb.dc
  %i.mm = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !125
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !542
  %i.mr = call i32 @asmGetTrimmingSlotForCommand(ptr noundef %i.mm, ptr noundef %i.mo, i32 noundef %i.mq) #39 ; 2 uses
  %.not287 = icmp eq i32 %i.mr, -1
  br i1 %.not287, label %..thread376_crit_edge, label %bb.de

..thread376_crit_edge:                            ; preds = %bb.dd
  %.pre389 = load i64, ptr %i.hd, align 8, !tbaa !111
  br label %.thread376

bb.de:                                            ; preds = %bb.dd
  %i.ms = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.mt = icmp sgt i32 %i.ms, 3
  br i1 %i.mt, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.196, i32 noundef %i.mr)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  call void @blockPostponeClientWithType(ptr noundef nonnull %0, i32 noundef 8) #39
  br label %.thread369

.thread376:                                       ; preds = %..thread376_crit_edge, %bb.dc
  %i.mu = phi i64 [ %.pre389, %..thread376_crit_edge ], [ %i.mh, %bb.dc ]
  %i.mv = and i64 %i.mu, 262144
  %.not288 = icmp eq i64 %i.mv, 0
  br i1 %.not288, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %.thread376
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !575
  %i.my = icmp eq i32 %i.mx, 2
  br i1 %i.my, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.mz = load ptr, ptr %i.g, align 8, !tbaa !527 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 96
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !536 ; 2 uses
  %i.nc = insertelement <8 x ptr> poison, ptr %i.nb, i64 0
  %i.nd = shufflevector <8 x ptr> %i.nc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ne = icmp eq <8 x ptr> %i.nd, <ptr @pingCommand, ptr @subscribeCommand, ptr @ssubscribeCommand, ptr @unsubscribeCommand, ptr @sunsubscribeCommand, ptr @psubscribeCommand, ptr @punsubscribeCommand, ptr @quitCommand>
  %.not297.a = icmp eq ptr %i.nb, @resetCommand
  %i.nf = bitcast <8 x i1> %i.ne to i8
  %i.ng = icmp ne i8 %i.nf, 0
  %op.rdx = or i1 %i.ng, %.not297.a
  br i1 %op.rdx, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 216
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !394
  call void (ptr, ptr, ...) @rejectCommandFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.197, ptr noundef %i.ni)
  br label %.thread369

bb.dk:                                            ; preds = %bb.di, %bb.dh, %.thread376
  %i.nj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !57
  %i.nk = icmp ne ptr %i.nj, null
  %i.nl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4
  %i.nm = icmp ne i32 %i.nl, 13
  %or.cond18 = select i1 %i.nk, i1 %i.nm, i1 false
  %i.nn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7568), align 8
  %i.no = icmp eq i32 %i.nn, 0
  %or.cond20 = select i1 %or.cond18, i1 %i.no, i1 false
  %or.cond22 = select i1 %or.cond20, i1 %i.fe, i1 false
  br i1 %or.cond22, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 288), align 8, !tbaa !272
  call void @rejectCommand(ptr noundef nonnull %0, ptr noundef %i.np)
  br label %.thread369

bb.dm:                                            ; preds = %bb.dk
  %i.nq = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !222
  %.not298.a = icmp eq i32 %i.nq, 0
  br i1 %.not298.a, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nr = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2480), align 8, !tbaa !348
  %i.ns = icmp eq i32 %i.nr, 0
  %or.cond24 = select i1 %i.ns, i1 %i.fo, i1 false
  br i1 %or.cond24, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.nt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 248), align 8, !tbaa !268
  call void @rejectCommand(ptr noundef nonnull %0, ptr noundef %i.nt)
  br label %.thread369

bb.dp:                                            ; preds = %bb.dn, %bb.dm
  %i.nu = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2480), align 8, !tbaa !348
  %i.nv = icmp ne i32 %i.nu, 0
  %or.cond26 = select i1 %i.nv, i1 %i.gi, i1 false
  br i1 %or.cond26, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.nw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 248), align 8, !tbaa !268
  call void @rejectCommand(ptr noundef nonnull %0, ptr noundef %i.nw)
  br label %.thread369

bb.dr:                                            ; preds = %bb.dp
  %i.nx = call i32 @scriptIsTimedout() #39
  %i.ny = icmp ne i32 %i.nx, 0
  %i.nz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 224), align 8
  %i.oa = icmp ne i32 %i.nz, 0                    ; 3 uses
  %i.ob = select i1 %i.ny, i1 true, i1 %i.oa
  br i1 %i.ob, label %bb.ds, label %bb.ea

bb.ds:                                            ; preds = %bb.dr
  %i.oc = load ptr, ptr %i.g, align 8, !tbaa !527
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 112
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !496
  %i.of = and i64 %i.oe, 67108864
  %.not300.a = icmp eq i64 %i.of, 0
  br i1 %.not300.a, label %bb.dt, label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  %i.og = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 232), align 8 ; 2 uses
  %i.oh = icmp ne ptr %i.og, null
  %or.cond28 = select i1 %i.oa, i1 %i.oh, i1 false
  br i1 %or.cond28, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void (ptr, ptr, ...) @rejectCommandFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.198, ptr noundef nonnull %i.og)
  br label %.thread369

bb.dv:                                            ; preds = %bb.dt
  br i1 %i.oa, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.oi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 272), align 8, !tbaa !271
  call void @rejectCommand(ptr noundef nonnull %0, ptr noundef %i.oi)
  br label %.thread369

bb.dx:                                            ; preds = %bb.dv
  %i.oj = call i32 @scriptIsEval() #39
  %.not301.a = icmp eq i32 %i.oj, 0
  br i1 %.not301.a, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ok = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 256), align 8, !tbaa !269
  call void @rejectCommand(ptr noundef nonnull %0, ptr noundef %i.ok)
  br label %.thread369

bb.dz:                                            ; preds = %bb.dx
  %i.ol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 264), align 8, !tbaa !270
  call void @rejectCommand(ptr noundef nonnull %0, ptr noundef %i.ol)
  br label %.thread369

bb.ea:                                            ; preds = %bb.ds, %bb.dr
  %i.om = load i64, ptr %i.hd, align 8, !tbaa !111 ; 3 uses
  %.not302.a = trunc i64 %i.om to i1
  %or.cond30 = select i1 %i.fy, i1 true, i1 %i.ek
  %or.cond32 = select i1 %or.cond30, i1 true, i1 %i.eb
  %or.cond324.a = select i1 %.not302.a, i1 %or.cond32, i1 false
  br i1 %or.cond324.a, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void (ptr, ptr, ...) @rejectCommandFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.199)
  br label %.thread369

bb.ec:                                            ; preds = %bb.ea
  %i.on = and i64 %i.om, 1
  %.not303.a = icmp eq i64 %i.on, 0
  br i1 %.not303.a, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.oo = call i32 @isPausedActions(i32 noundef 2) #39
  %.not304.a = icmp eq i32 %i.oo, 0
  br i1 %.not304.a, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.op = call i32 @isPausedActions(i32 noundef 1) #39
  %i.oq = icmp ne i32 %i.op, 0
  %or.cond34 = select i1 %i.oq, i1 %i.fy, i1 false
  br i1 %or.cond34, label %bb.ef, label %._crit_edge390

._crit_edge390:                                   ; preds = %bb.ee
  %.pre391 = load i64, ptr %i.hd, align 8, !tbaa !111
  br label %bb.eg

end_hunk_0
