inline.NumInlined: 93
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@debugCommand:bb.a
  %i.xp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !99
  %i.xq = load i64, ptr %i.o, align 8, !tbaa !19
  %i.xr = getelementptr inbounds [96 x i8], ptr %i.xp, i64 %i.xq
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !100
  call void @kvstoreGetStats(ptr noundef %i.xs, ptr noundef nonnull %i.p, i64 noundef 4096, i32 noundef %.0532) #24
  %i.xt = call ptr @sdscat(ptr noundef %i.xo, ptr noundef nonnull %i.p) #24
  %i.xu = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.xt, ptr noundef nonnull @.str.238) #24
  %i.xv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !99
  %i.xw = load i64, ptr %i.o, align 8, !tbaa !19
  %i.xx = getelementptr inbounds [96 x i8], ptr %i.xv, i64 %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !157
  call void @kvstoreGetStats(ptr noundef %i.xz, ptr noundef nonnull %i.p, i64 noundef 4096, i32 noundef %.0532) #24
  %i.ya = call ptr @sdscat(ptr noundef %i.xu, ptr noundef nonnull %i.p) #24 ; 3 uses
  %i.yb = call fastcc i64 @sdslen(ptr noundef %i.ya)
  call void @addReplyVerbatim(ptr noundef nonnull %0, ptr noundef %i.ya, i64 noundef %i.yb, ptr noundef nonnull @.str.210) #24
  call void @sdsfree(ptr noundef %i.ya) #24
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.ft, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  br label %.loopexit

bb.fy:                                            ; preds = %bb.fp
  %i.yc = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.239) #25
  %.not648 = icmp eq i32 %i.yc, 0
  %or.cond739 = and i1 %i.vv, %.not648
  br i1 %or.cond739, label %bb.fz, label %bb.gh

bb.fz:                                            ; preds = %bb.fy
  br i1 %i.ay, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.yd = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !103
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !14
  %i.yh = tail call i32 @strcasecmp(ptr noundef %i.yg, ptr noundef nonnull @.str.236) #25
  %.not650 = icmp eq i32 %i.yh, 0
  %spec.select686 = zext i1 %.not650 to i32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.0530 = phi i32 [ %spec.select686, %bb.ga ], [ 0, %bb.fz ]
  %i.yi = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !103
  %i.yk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  %i.yl = tail call ptr @kvobjCommandLookupOrReply(ptr noundef nonnull %0, ptr noundef %i.yj, ptr noundef %i.yk) #24 ; 4 uses
  %i.ym = icmp eq ptr %i.yl, null
  br i1 %i.ym, label %.loopexit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.yn = load i64, ptr %i.yl, align 8
  %i.yo = trunc i64 %i.yn to i32
  %i.yp = lshr i32 %i.yo, 4
  %i.yq = and i32 %i.yp, 15
  switch i32 %i.yq, label %.thread703 [
    i32 7, label %bb.gd
    i32 2, label %bb.ge
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !14
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.0531.in = phi ptr [ %i.yt, %bb.ge ], [ %i.ys, %bb.gd ]
  %.0531 = load ptr, ptr %.0531.in, align 8, !tbaa !158 ; 2 uses
  %i.yu = icmp eq ptr %.0531, null
  br i1 %i.yu, label %.thread703, label %bb.gg

.thread703:                                       ; preds = %bb.gc, %bb.gf
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.240) #24
  br label %.loopexit

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #24
  call void @dictGetStats(ptr noundef nonnull %i.q, i64 noundef 4096, ptr noundef nonnull %.0531, i32 noundef %.0530) #24
  %i.yv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #25
  call void @addReplyVerbatim(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i64 noundef %i.yv, ptr noundef nonnull @.str.210) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  br label %.loopexit

bb.gh:                                            ; preds = %bb.fy
  %i.yw = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.241) #25
  %.not651 = icmp eq i32 %i.yw, 0
  br i1 %.not651, label %bb.gi, label %bb.gm

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.t, label %.thread707, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.yx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.yy = icmp sgt i32 %i.yx, 2
  br i1 %i.yy, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.242) #24
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  tail call void @changeReplicationId() #24
  tail call void @clearReplicationId2() #24
  %i.yz = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.yz) #24
  br label %.loopexit

bb.gm:                                            ; preds = %bb.gh
  %i.za = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.243) #25
  %.not652 = icmp ne i32 %i.za, 0
  %brmerge741 = or i1 %i.t, %.not652
  br i1 %brmerge741, label %.thread707, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.zb = tail call i32 @stringmatchlen_fuzz_test() #24 ; 0 uses
  tail call void @addReplyStatus(ptr noundef nonnull %0, ptr noundef nonnull @.str.244) #24
  br label %.loopexit

.thread707:                                       ; preds = %bb.gm, %bb.gi
  %i.zc = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.245) #25
  %.not653 = icmp eq i32 %i.zc, 0
  %or.cond742 = and i1 %i.ay, %.not653
  br i1 %or.cond742, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.thread707
  %i.zd = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !103
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !14
  %i.zh = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.zg, ptr noundef null, i32 noundef 10) #24, !inline_history !141
  %i.zi = trunc i64 %i.zh to i32
  store i32 %i.zi, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8348), align 4, !tbaa !159
  %i.zj = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.zj) #24
  br label %.loopexit

bb.gp:                                            ; preds = %.thread707
  %i.zk = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.246) #25
  %.not654 = icmp eq i32 %i.zk, 0
  br i1 %.not654, label %bb.gq, label %bb.gu

bb.gq:                                            ; preds = %bb.gp
  br i1 %i.t, label %.thread710, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.zl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !160
  %i.zm = tail call i32 @rewriteConfig(ptr noundef %i.zl, i32 noundef 1) #24
  %i.zn = icmp eq i32 %i.zm, -1
  br i1 %i.zn, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.zo = tail call ptr @__errno_location() #28
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !9
  %i.zq = tail call ptr @strerror(i32 noundef %i.zp) #24
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.247, ptr noundef %i.zq) #24
  br label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.zr = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.zr) #24
  br label %.loopexit

bb.gu:                                            ; preds = %bb.gp
  %i.zs = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.248) #25
  %.not655 = icmp ne i32 %i.zs, 0
  %brmerge744 = or i1 %i.t, %.not655
  br i1 %brmerge744, label %.thread710, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.zt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !161
  %.not656 = icmp eq ptr %i.zt, null
  br i1 %.not656, label %bb.gw, label %.peel.next

bb.gw:                                            ; preds = %bb.gv
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.249) #24
  br label %.loopexit

.peel.next:                                       ; preds = %bb.gv
  %i.zu = tail call ptr @sdsempty() #24
  %i.zv = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zu, ptr noundef nonnull @.str.250) #24
  %i.zw = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zv, ptr noundef nonnull @.str.253, i64 noundef 32767) #24
  %.pre836 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !161 ; 2 uses
  %.pre839 = load ptr, ptr %.pre836, align 8, !tbaa !162
  %.phi.trans.insert840 = getelementptr inbounds nuw i8, ptr %.pre839, i64 40
  %.pre841 = load i64, ptr %.phi.trans.insert840, align 8, !tbaa !164
  %.phi.trans.insert837 = getelementptr inbounds nuw i8, ptr %.pre836, i64 8
  %.pre838 = load i64, ptr %.phi.trans.insert837, align 8, !tbaa !166
  %i.zx = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zw, ptr noundef nonnull @.str.254, i64 noundef %.pre838, i64 noundef %.pre841) #24
  br label %bb.gx

.loopexit806.peel.begin:                          ; preds = %bb.gx
  %i.zy = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.aau, ptr noundef nonnull @.str.251, i64 noundef 4294967296) #24
  %i.zz = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zy, ptr noundef nonnull @.str.252) #24
  %i.aaa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !161
  %i.aab = getelementptr inbounds nuw [16 x i8], ptr %i.aaa, i64 %indvars.iv.next ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !166
  %i.aae = load ptr, ptr %i.aab, align 8, !tbaa !162
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 40
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !164
  %i.aah = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zz, ptr noundef nonnull @.str.254, i64 noundef %i.aad, i64 noundef %i.aag) #24 ; 3 uses
  %i.aai = tail call fastcc i64 @sdslen(ptr noundef %i.aah)
  tail call void @addReplyVerbatim(ptr noundef %0, ptr noundef %i.aah, i64 noundef %i.aai, ptr noundef nonnull @.str.210) #24
  tail call void @sdsfree(ptr noundef %i.aah) #24
  br label %.loopexit

bb.gx:                                            ; preds = %bb.gx, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.gx ] ; 4 uses
  %.0527765 = phi ptr [ %i.zx, %.peel.next ], [ %i.aau, %bb.gx ]
  %i.aaj = shl nuw nsw i64 16384, %indvars.iv
  %i.aak = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0527765, ptr noundef nonnull @.str.251, i64 noundef %i.aaj) #24
  %notmask = shl nsw i64 -32768, %indvars.iv
  %i.aal = xor i64 %notmask, -1
  %i.aam = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.aak, ptr noundef nonnull @.str.253, i64 noundef %i.aal) #24
  %i.aan = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !161
  %i.aao = getelementptr inbounds nuw [16 x i8], ptr %i.aan, i64 %indvars.iv ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !166
  %i.aar = load ptr, ptr %i.aao, align 8, !tbaa !162
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 40
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !164
  %i.aau = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.aam, ptr noundef nonnull @.str.254, i64 noundef %i.aaq, i64 noundef %i.aat) #24 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %.loopexit806.peel.begin, label %bb.gx, !llvm.loop !167

.thread710:                                       ; preds = %bb.gu, %bb.gq
  %i.aav = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.255) #25
  %.not657 = icmp eq i32 %i.aav, 0
  %or.cond745 = and i1 %i.vv, %.not657
  br i1 %or.cond745, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %.thread710
  %i.aaw = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aax = add nsw i32 %i.s, -2
  tail call void @mallctl_int(ptr noundef nonnull %0, ptr noundef nonnull %i.aaw, i32 noundef %i.aax)
  br label %.loopexit

bb.gz:                                            ; preds = %.thread710
  %i.aay = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.256) #25
  %.not658 = icmp eq i32 %i.aay, 0
  %or.cond746 = and i1 %i.vv, %.not658
  br i1 %or.cond746, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aaz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aba = add nsw i32 %i.s, -2
  tail call void @mallctl_string(ptr noundef nonnull %0, ptr noundef nonnull %i.aaz, i32 noundef %i.aba)
  br label %.loopexit

bb.hb:                                            ; preds = %bb.gz
  %i.abb = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.257) #25
  %.not659 = icmp eq i32 %i.abb, 0
  %or.cond747 = and i1 %i.ay, %.not659
  br i1 %or.cond747, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.abc = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !103
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !14
  %i.abg = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.abf, ptr noundef null, i32 noundef 10) #24, !inline_history !141
  %i.abh = trunc i64 %i.abg to i32
  store i32 %i.abh, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6616), align 8, !tbaa !169
  %i.abi = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.abi) #24
  br label %.loopexit

bb.hd:                                            ; preds = %bb.hb
  %i.abj = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.258) #25
  %.not660 = icmp eq i32 %i.abj, 0
  %i.abk = icmp eq i32 %i.s, 4                    ; 3 uses
  %or.cond748 = and i1 %i.abk, %.not660
  br i1 %or.cond748, label %bb.he, label %bb.ho

bb.he:                                            ; preds = %bb.hd
  %i.abl = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !103
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !14 ; 2 uses
  %i.abp = tail call i32 @strcasecmp(ptr noundef %i.abo, ptr noundef nonnull @.str.259) #25
  %.not661 = icmp eq i32 %i.abp, 0
  br i1 %.not661, label %bb.hf, label %bb.hk

bb.hf:                                            ; preds = %bb.he
  %i.abq = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !103 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !14 ; 2 uses
  %i.abu = tail call i32 @strcasecmp(ptr noundef %i.abt, ptr noundef nonnull @.str.260) #25
  %.not662 = icmp eq i32 %i.abu, 0
  br i1 %.not662, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8704), align 8, !tbaa !170
  br label %bb.hn

bb.hh:                                            ; preds = %bb.hf
  %i.abv = tail call i32 @strcasecmp(ptr noundef %i.abt, ptr noundef nonnull @.str.261) #25
  %.not663 = icmp eq i32 %i.abv, 0
  br i1 %.not663, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  store i64 5000, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8704), align 8, !tbaa !170
  br label %bb.hn

bb.hj:                                            ; preds = %bb.hh
  %i.abw = tail call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.abr, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 8704), ptr noundef null) #24
  %.not664 = icmp eq i32 %i.abw, 0
  br i1 %.not664, label %bb.hn, label %.loopexit

bb.hk:                                            ; preds = %bb.he
  %i.abx = tail call i32 @strcasecmp(ptr noundef %i.abo, ptr noundef nonnull @.str.262) #25
  %.not665 = icmp eq i32 %i.abx, 0
  br i1 %.not665, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.aby = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !103
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !14
  %i.acc = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.acb, ptr noundef null, i32 noundef 10) #24, !inline_history !141
  %i.acd = trunc i64 %i.acc to i32
  store i32 %i.acd, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8712), align 8, !tbaa !171
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hk
  tail call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #24
  br label %.loopexit

bb.hn:                                            ; preds = %bb.hg, %bb.hj, %bb.hi, %bb.hl
  %i.ace = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ace) #24
  br label %.loopexit

bb.ho:                                            ; preds = %bb.hd
  %i.acf = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.263) #25
  %.not666 = icmp eq i32 %i.acf, 0
  %or.cond749 = and i1 %i.ay, %.not666
  br i1 %or.cond749, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.acg = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !103
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !14
  %i.ack = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.acj, ptr noundef null, i32 noundef 10) #24, !inline_history !141
  %i.acl = trunc i64 %i.ack to i32
  store i32 %i.acl, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8716), align 4, !tbaa !172
  %i.acm = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.acm) #24
  br label %.loopexit

bb.hq:                                            ; preds = %bb.ho
  %i.acn = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.264) #25
  %.not667 = icmp eq i32 %i.acn, 0
  %or.cond750 = and i1 %i.ay, %.not667
  br i1 %or.cond750, label %bb.hr, label %bb.ia

bb.hr:                                            ; preds = %bb.hq
  %i.aco = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !103
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !14 ; 4 uses
  %i.acs = tail call i32 @strcasecmp(ptr noundef %i.acr, ptr noundef nonnull @.str.265) #25
  %.not668 = icmp eq i32 %i.acs, 0
  br i1 %.not668, label %bb.hz, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.act = tail call i32 @strcasecmp(ptr noundef %i.acr, ptr noundef nonnull @.str.266) #25
  %.not669 = icmp eq i32 %i.act, 0
  br i1 %.not669, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.acu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7392), align 8, !tbaa !173
  %i.acv = or i32 %i.acu, 2
  br label %bb.hz

bb.hu:                                            ; preds = %bb.hs
  %i.acw = tail call i32 @strcasecmp(ptr noundef %i.acr, ptr noundef nonnull @.str.267) #25
  %.not670 = icmp eq i32 %i.acw, 0
  br i1 %.not670, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.acx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7392), align 8, !tbaa !173
  %i.acy = or i32 %i.acx, 4
  br label %bb.hz

bb.hw:                                            ; preds = %bb.hu
  %i.acz = tail call i32 @strcasecmp(ptr noundef %i.acr, ptr noundef nonnull @.str.268) #25
  %.not671 = icmp eq i32 %i.acz, 0
  br i1 %.not671, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.ada = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7392), align 8, !tbaa !173
  %i.adb = or i32 %i.ada, 8
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw
  tail call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #24
  br label %.loopexit

bb.hz:                                            ; preds = %bb.hr, %bb.ht, %bb.hx, %bb.hv
  %.sink897 = phi i32 [ %i.acv, %bb.ht ], [ %i.adb, %bb.hx ], [ %i.acy, %bb.hv ], [ 1, %bb.hr ]
  store i32 %.sink897, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7392), align 8, !tbaa !173
  %i.adc = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.adc) #24
  br label %.loopexit

bb.ia:                                            ; preds = %bb.hq
  %i.add = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.269) #25
  %.not672 = icmp eq i32 %i.add, 0
  %or.cond751 = and i1 %i.ay, %.not672
  br i1 %or.cond751, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.ade = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !103
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !14
  %i.adi = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.adh, ptr noundef null, i32 noundef 10) #24, !inline_history !141
  %i.adj = trunc i64 %i.adi to i32
  store i32 %i.adj, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6620), align 4, !tbaa !174
end_hunk_0
