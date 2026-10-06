Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dvbsubdec?download=true
inline.NumInlined: 54
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dvbsub_decode:bb.a
  %i.fu = load i8, ptr %i.fi, align 1, !tbaa !42
  %i.fv = zext i8 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %.0126.i, i64 20
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !75
  %i.fx = icmp eq i8 %i.fl, 3
  br i1 %i.fx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fy = getelementptr inbounds nuw i8, ptr %.0112346, i64 14
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !42
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %.0112346, i64 15 ; 2 uses
  %i.gb = icmp eq i8 %i.fl, 2
  br i1 %i.gb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %.thread163.i
  %i.gc = phi ptr [ %i.ft, %.thread163.i ], [ %i.ga, %bb.ae ]
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !42
  %i.ge = lshr i8 %i.gd, 4
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.gf = load i8, ptr %i.ga, align 1, !tbaa !42
  %i.gg = lshr i8 %i.gf, 2
  %i.gh = and i8 %i.gg, 3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.sink186.i = phi i8 [ %i.fz, %bb.ad ], [ %i.gh, %bb.ag ], [ %i.ge, %bb.af ] ; 2 uses
  %i.gi = zext i8 %.sink186.i to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %.0126.i, i64 24
  store i32 %i.gi, ptr %i.gj, align 8, !tbaa !114
  %.0128.i = getelementptr inbounds nuw i8, ptr %.0112346, i64 16
  %.not144.i = icmp eq i32 %.0124.i, 0
  br i1 %.not144.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %.0126.i, i64 1056
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !72
  %i.gm = load i32, ptr %i.ey, align 8, !tbaa !71
  %i.gn = sext i32 %i.gm to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.gl, i8 %.sink186.i, i64 %i.gn, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call fastcc void @delete_region_display_list(ptr noundef %i.dp, ptr noundef nonnull %.0126.i)
  %i.go = icmp ugt i16 %i.ah, 15
  br i1 %i.go, label %.lr.ph.i133, label %dvbsub_parse_clut_segment.exit

.lr.ph.i133:                                      ; preds = %bb.aj
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dp, i64 263232 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0126.i, i64 1072 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.at, %.lr.ph.i133
  %.1170.i = phi ptr [ %.0128.i, %.lr.ph.i133 ], [ %.2.i, %bb.at ] ; 6 uses
  %i.gr = load i16, ptr %.1170.i, align 1, !tbaa !42
  %i.gs = call i16 @llvm.bswap.i16(i16 %i.gr)
  %i.gt = zext i16 %i.gs to i32                   ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1170.i, i64 2 ; 2 uses
  %.06.i150.i = load ptr, ptr %i.gp, align 8, !tbaa !56 ; 2 uses
  %.not7.i151.i = icmp eq ptr %.06.i150.i, null
  br i1 %.not7.i151.i, label %.loopexit.i, label %.lr.ph.i152.i

.lr.ph.i152.i:                                    ; preds = %bb.ak, %bb.al
  %.08.i153.i = phi ptr [ %.0.i155.i, %bb.al ], [ %.06.i150.i, %bb.ak ] ; 3 uses
  %i.gv = load i32, ptr %.08.i153.i, align 8, !tbaa !76
  %.not5.i154.i = icmp eq i32 %i.gv, %i.gt
  br i1 %.not5.i154.i, label %get_object.exit.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i152.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.08.i153.i, i64 24
  %.0.i155.i = load ptr, ptr %i.gw, align 8, !tbaa !56 ; 2 uses
  %.not.i156.i = icmp eq ptr %.0.i155.i, null
  br i1 %.not.i156.i, label %.loopexit.i, label %.lr.ph.i152.i, !llvm.loop !4

.loopexit.i:                                      ; preds = %bb.al, %bb.ak
  %i.gx = call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 5 uses
  %.not146.i = icmp eq ptr %i.gx, null
  br i1 %.not146.i, label %dvbsub_display_end_segment.exit156, label %bb.am

bb.am:                                            ; preds = %.loopexit.i
  store i32 %i.gt, ptr %i.gx, align 8, !tbaa !76
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !55
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !58
  store ptr %i.gx, ptr %i.gp, align 8, !tbaa !55
  br label %get_object.exit.i

get_object.exit.i:                                ; preds = %.lr.ph.i152.i, %bb.am
  %.0125.i = phi ptr [ %i.gx, %bb.am ], [ %.08.i153.i, %.lr.ph.i152.i ] ; 2 uses
  %i.ha = load i8, ptr %i.gu, align 1, !tbaa !42
  %i.hb = lshr i8 %i.ha, 6
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %.0125.i, i64 8 ; 2 uses
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !115
  %i.he = call noalias ptr @av_mallocz(i64 noundef 40) #9 ; 12 uses
  %.not147.i = icmp eq ptr %i.he, null
  br i1 %.not147.i, label %dvbsub_display_end_segment.exit156, label %bb.an

bb.an:                                            ; preds = %get_object.exit.i
  store i32 %i.gt, ptr %i.he, align 8, !tbaa !78
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 %i.du, ptr %i.hf, align 4, !tbaa !79
  %i.hg = load i16, ptr %i.gu, align 1, !tbaa !42
  %i.hh = and i16 %i.hg, -241
  %i.hi = call i16 @llvm.bswap.i16(i16 %i.hh)
  %i.hj = zext nneg i16 %i.hi to i32              ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i32 %i.hj, ptr %i.hk, align 8, !tbaa !80
  %i.hl = getelementptr inbounds nuw i8, ptr %.1170.i, i64 4
  %i.hm = load i16, ptr %i.hl, align 1, !tbaa !42
  %i.hn = and i16 %i.hm, -241
  %i.ho = call i16 @llvm.bswap.i16(i16 %i.hn)
  %i.hp = zext nneg i16 %i.ho to i32              ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !81
  %i.hr = getelementptr inbounds nuw i8, ptr %.1170.i, i64 6 ; 3 uses
  %i.hs = load i32, ptr %i.ek, align 8, !tbaa !69
  %.not148.i = icmp sgt i32 %i.hs, %i.hj
  br i1 %.not148.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ht = load i32, ptr %i.ep, align 4, !tbaa !70
  %.not149.i = icmp sgt i32 %i.ht, %i.hp
  br i1 %.not149.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.22) #9
  call void @av_free(ptr noundef nonnull %i.he) #9
  br label %dvbsub_display_end_segment.exit156

bb.aq:                                            ; preds = %bb.ao
  %i.hu = load i32, ptr %i.hd, align 8, !tbaa !115
  %.off.i = add i32 %i.hu, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.hv = getelementptr inbounds nuw i8, ptr %.1170.i, i64 7 ; 2 uses
  %i.hw = icmp ult ptr %i.hv, %i.dq
  br i1 %i.hw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hx = load i8, ptr %i.hr, align 1, !tbaa !42
  %i.hy = zext i8 %i.hx to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i32 %i.hy, ptr %i.hz, align 8, !tbaa !116
  %i.ia = getelementptr inbounds nuw i8, ptr %.1170.i, i64 8
  %i.ib = load i8, ptr %i.hv, align 1, !tbaa !42
  %i.ic = zext i8 %i.ib to i32
  %i.id = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !117
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.2.i = phi ptr [ %i.ia, %bb.as ], [ %i.hr, %bb.ar ], [ %i.hr, %bb.aq ] ; 2 uses
  %i.ie = load ptr, ptr %i.gq, align 8, !tbaa !82
  %i.if = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !83
  store ptr %i.he, ptr %i.gq, align 8, !tbaa !82
  %i.ig = getelementptr inbounds nuw i8, ptr %.0125.i, i64 16 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !84
  %i.ii = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !85
  store ptr %i.he, ptr %i.ig, align 8, !tbaa !84
  %i.ij = getelementptr inbounds nuw i8, ptr %.2.i, i64 5
  %i.ik = icmp ult ptr %i.ij, %i.dq
  br i1 %i.ik, label %bb.ak, label %dvbsub_parse_clut_segment.exit, !llvm.loop !102

bb.au:                                            ; preds = %bb.i
  %i.il = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.im = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  %i.in = getelementptr inbounds nuw i8, ptr %.0112346, i64 7
  %i.io = load i8, ptr %i.ai, align 1, !tbaa !42
  %i.ip = zext i8 %i.io to i32                    ; 2 uses
  %i.iq = load i8, ptr %i.in, align 1, !tbaa !42
  %i.ir = lshr i8 %i.iq, 4
  %i.is = zext nneg i8 %i.ir to i32               ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0112346, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 263224 ; 3 uses
  %.06.i.i134 = load ptr, ptr %i.iu, align 8, !tbaa !60 ; 2 uses
  %.not7.i.i135 = icmp eq ptr %.06.i.i134, null
  br i1 %.not7.i.i135, label %.loopexit110.i, label %.lr.ph.i.i136

.lr.ph.i.i136:                                    ; preds = %bb.au, %bb.av
  %.08.i.i137 = phi ptr [ %.0.i.i139, %bb.av ], [ %.06.i.i134, %bb.au ] ; 4 uses
  %i.iv = load i32, ptr %.08.i.i137, align 8, !tbaa !86
  %.not5.i.i138 = icmp eq i32 %i.iv, %i.ip
  br i1 %.not5.i.i138, label %get_clut.exit.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i136
  %i.iw = getelementptr inbounds nuw i8, ptr %.08.i.i137, i64 1112
  %.0.i.i139 = load ptr, ptr %i.iw, align 8, !tbaa !60 ; 2 uses
  %.not.i.i140 = icmp eq ptr %.0.i.i139, null
  br i1 %.not.i.i140, label %.loopexit110.i, label %.lr.ph.i.i136, !llvm.loop !5

.loopexit110.i:                                   ; preds = %bb.av, %bb.au
  %i.ix = call ptr @av_memdup(ptr noundef nonnull @default_clut, i64 noundef 1120) #9 ; 5 uses
  %.not102.i = icmp eq ptr %i.ix, null
  br i1 %.not102.i, label %dvbsub_display_end_segment.exit156, label %get_clut.exit.thread.i

get_clut.exit.thread.i:                           ; preds = %.loopexit110.i
  store i32 %i.ip, ptr %i.ix, align 8, !tbaa !86
  %i.iy = load ptr, ptr %i.iu, align 8, !tbaa !59
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 1112
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !62
  store ptr %i.ix, ptr %i.iu, align 8, !tbaa !59
  br label %bb.aw

get_clut.exit.i:                                  ; preds = %.lr.ph.i.i136
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.08.i.i137, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !118
  %i.ja = icmp eq i32 %.pre.i, %i.is
  br i1 %i.ja, label %dvbsub_parse_clut_segment.exit, label %bb.aw

bb.aw:                                            ; preds = %get_clut.exit.i, %get_clut.exit.thread.i
  %.092126.i = phi ptr [ %i.ix, %get_clut.exit.thread.i ], [ %.08.i.i137, %get_clut.exit.i ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.092126.i, i64 4
  store i32 %i.is, ptr %i.jb, align 4, !tbaa !118
  %i.jc = icmp ugt i16 %i.ah, 6
  br i1 %i.jc, label %.lr.ph.i142, label %dvbsub_parse_clut_segment.exit

.lr.ph.i142:                                      ; preds = %bb.aw
  %i.jd = getelementptr inbounds nuw i8, ptr %.0112346, i64 12
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bg, %.lr.ph.i142
  %i.je = phi ptr [ %i.jd, %.lr.ph.i142 ], [ %i.ml, %bb.bg ] ; 2 uses
  %.095112.i = phi ptr [ %i.it, %.lr.ph.i142 ], [ %.196.i, %bb.bg ] ; 7 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.095112.i, i64 1 ; 2 uses
  %i.jg = load i8, ptr %.095112.i, align 1, !tbaa !42 ; 3 uses
  %i.jh = load i8, ptr %i.jf, align 1, !tbaa !42  ; 5 uses
  %i.ji = zext i8 %i.jh to i32                    ; 3 uses
  %i.jj = icmp ult i8 %i.jh, 32
  br i1 %i.jj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %i.ji) #9
  %.pre118.i = load i8, ptr %i.jf, align 1, !tbaa !42
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.jk = phi i8 [ %.pre118.i, %bb.ay ], [ %i.jh, %bb.ax ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.095112.i, i64 2 ; 2 uses
  %i.jm = and i8 %i.jk, 1
  %.not104.i = icmp eq i8 %i.jm, 0
  br i1 %.not104.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jn = getelementptr inbounds nuw i8, ptr %.095112.i, i64 3
  %i.jo = load i8, ptr %i.jl, align 1, !tbaa !42
  %i.jp = zext i8 %i.jo to i32
  %i.jq = load i8, ptr %i.jn, align 1, !tbaa !42
  %i.jr = zext i8 %i.jq to i32
  %i.js = getelementptr inbounds nuw i8, ptr %.095112.i, i64 5
  %i.jt = load i8, ptr %i.je, align 1, !tbaa !42
  %i.ju = zext i8 %i.jt to i32
  %i.jv = getelementptr inbounds nuw i8, ptr %.095112.i, i64 6
  %i.jw = load i8, ptr %i.js, align 1, !tbaa !42
  %i.jx = zext i8 %i.jw to i32
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.jy = load i8, ptr %i.jl, align 1, !tbaa !42
  %i.jz = zext i8 %i.jy to i32                    ; 2 uses
  %i.ka = and i32 %i.jz, 252
  %i.kb = shl nuw nsw i32 %i.jz, 2
  %i.kc = and i32 %i.kb, 12
  %i.kd = getelementptr inbounds nuw i8, ptr %.095112.i, i64 3
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !42
  %i.kf = zext i8 %i.ke to i32                    ; 3 uses
  %i.kg = lshr i32 %i.kf, 6
  %i.kh = or disjoint i32 %i.kc, %i.kg
  %i.ki = shl nuw nsw i32 %i.kh, 4
  %i.kj = shl nuw nsw i32 %i.kf, 2
  %i.kk = and i32 %i.kj, 240
  %i.kl = shl nuw nsw i32 %i.kf, 6
  %i.km = and i32 %i.kl, 192
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.196.i = phi ptr [ %i.jv, %bb.ba ], [ %i.je, %bb.bb ] ; 2 uses
  %.091.i = phi i32 [ %i.jp, %bb.ba ], [ %i.ka, %bb.bb ] ; 2 uses
  %.090.i = phi i32 [ %i.jr, %bb.ba ], [ %i.ki, %bb.bb ]
  %.089.i = phi i32 [ %i.ju, %bb.ba ], [ %i.kk, %bb.bb ]
  %.0.i = phi i32 [ %i.jx, %bb.ba ], [ %i.km, %bb.bb ]
  %i.kn = icmp eq i32 %.091.i, 0
  %i.ko = add nsw i32 %.089.i, -128               ; 2 uses
  %i.kp = add nsw i32 %.090.i, -128               ; 2 uses
  %i.kq = mul nsw i32 %i.kp, 1634
  %i.kr = mul nsw i32 %i.ko, -401
  %.neg.i = mul nsw i32 %i.kp, -832
  %i.ks = mul nsw i32 %i.ko, 2066
  %i.kt = mul nuw nsw i32 %.091.i, 1192
  %i.ku = add nsw i32 %i.kt, -18560               ; 3 uses
  %i.kv = add nsw i32 %i.kq, %i.ku
  %i.kw = ashr i32 %i.kv, 10
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !42
  %i.la = zext i8 %i.kz to i32
  %i.lb = add nsw i32 %.neg.i, %i.ku
  %i.lc = add nsw i32 %i.lb, %i.kr
  %i.ld = ashr i32 %i.lc, 10
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !42
  %i.lh = zext i8 %i.lg to i32
  %i.li = add nsw i32 %i.ks, %i.ku
  %i.lj = ashr i32 %i.li, 10
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !42
  %i.ln = zext i8 %i.lm to i32
  %i.lo = icmp slt i8 %i.jh, 0
  %.lobit.i = lshr i8 %i.jh, 7
  %i.lp = zext nneg i8 %.lobit.i to i32
  %i.lq = and i32 %i.ji, 64                       ; 2 uses
  %i.lr = icmp ne i32 %i.lq, 0
  %.lobit105.i = lshr exact i32 %i.lq, 6
  %i.ls = add nuw nsw i32 %.lobit105.i, %i.lp
  %i.lt = and i32 %i.ji, 32                       ; 2 uses
  %.not107.i = icmp ne i32 %i.lt, 0
  %.lobit106.i = lshr exact i32 %i.lt, 5
  %i.lu = add nuw nsw i32 %i.ls, %.lobit106.i
  %i.lv = icmp samesign ugt i32 %i.lu, 1
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = load i32, ptr %i.v, align 4, !tbaa !119
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %dvbsub_display_end_segment.exit156, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ly = icmp ult i8 %i.jg, 4
  %or.cond.i143 = select i1 %i.lo, i1 %i.ly, i1 false
  br i1 %or.cond.i143, label %.sink.split.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lz = icmp ult i8 %i.jg, 16
  %or.cond3.i = select i1 %i.lr, i1 %i.lz, i1 false ; 2 uses
  %brmerge.i = or i1 %.not107.i, %or.cond3.i
  %.mux.v.i = select i1 %or.cond3.i, i64 24, i64 88
  br i1 %brmerge.i, label %.sink.split.i, label %bb.bg

.sink.split.i:                                    ; preds = %bb.bf, %bb.be
  %i.ma = phi i64 [ 8, %bb.be ], [ %.mux.v.i, %bb.bf ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.092126.i, i64 %i.ma
  %i.mc = shl nuw nsw i32 %i.la, 16
  %i.md = shl nuw i32 %.0.i, 24
  %i.me = sub nuw nsw i32 -16777216, %i.md
  %reass.sub115.i = select i1 %i.kn, i32 0, i32 %i.me
  %i.mf = or disjoint i32 %reass.sub115.i, %i.mc
  %i.mg = shl nuw nsw i32 %i.lh, 8
  %i.mh = or disjoint i32 %i.mf, %i.mg
  %i.mi = or disjoint i32 %i.mh, %i.ln
  %i.mj = zext i8 %i.jg to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mj
  store i32 %i.mi, ptr %i.mk, align 4, !tbaa !41
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split.i, %bb.bf
  %i.ml = getelementptr inbounds nuw i8, ptr %.196.i, i64 4 ; 2 uses
  %i.mm = icmp ult ptr %i.ml, %i.im
  br i1 %i.mm, label %bb.ax, label %dvbsub_parse_clut_segment.exit, !llvm.loop !103

bb.bh:                                            ; preds = %bb.i
  %i.mn = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.mo = load i16, ptr %i.ai, align 1, !tbaa !42
  %i.mp = call i16 @llvm.bswap.i16(i16 %i.mo)
  %i.mq = zext i16 %i.mp to i32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 263232
  %.06.i.i144 = load ptr, ptr %i.mr, align 8, !tbaa !56 ; 2 uses
  %.not7.i.i145 = icmp eq ptr %.06.i.i144, null
  br i1 %.not7.i.i145, label %dvbsub_display_end_segment.exit156, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %bb.bh, %bb.bi
  %.08.i.i147 = phi ptr [ %.0.i.i149, %bb.bi ], [ %.06.i.i144, %bb.bh ] ; 3 uses
  %i.ms = load i32, ptr %.08.i.i147, align 8, !tbaa !76
  %.not5.i.i148 = icmp eq i32 %i.ms, %i.mq
  br i1 %.not5.i.i148, label %get_object.exit.i151, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i146
  %i.mt = getelementptr inbounds nuw i8, ptr %.08.i.i147, i64 24
  %.0.i.i149 = load ptr, ptr %i.mt, align 8, !tbaa !56 ; 2 uses
  %.not.i.i150 = icmp eq ptr %.0.i.i149, null
  br i1 %.not.i.i150, label %dvbsub_display_end_segment.exit156, label %.lr.ph.i.i146, !llvm.loop !4

get_object.exit.i151:                             ; preds = %.lr.ph.i.i146
  %i.mu = getelementptr inbounds nuw i8, ptr %.0112346, i64 8
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !42
  %i.mw = zext i8 %i.mv to i32                    ; 2 uses
  %i.mx = lshr i32 %i.mw, 2
  %i.my = and i32 %i.mx, 3
  %i.mz = lshr i32 %i.mw, 1
  %i.na = and i32 %i.mz, 1                        ; 2 uses
  switch i32 %i.my, label %default.unreachable [
    i32 0, label %bb.bj
    i32 1, label %bb.bn
    i32 2, label %bb.bo
    i32 3, label %bb.bp
  ]

end_hunk_0
