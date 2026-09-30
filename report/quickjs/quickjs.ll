Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_Date_parse:bb.a
  %i.xp = add i32 %i.xo, -48
  %i.xq = add i32 %i.xp, %i.xk
  %indvars.iv.next.i123.i.1 = add nsw i64 %indvars.iv.i122.i, 2 ; 2 uses
  %i.xr = trunc i64 %indvars.iv.next.i123.i.1 to i32
  %i.xs = icmp eq i32 %i.wx, %i.xr
  br i1 %i.xs, label %string_skip_until.exit.i, label %bb.ai, !llvm.loop !167

.split.loop.exit.i.i:                             ; preds = %bb.ak, %bb.ai
  %indvars.iv.i122.i.lcssa = phi i64 [ %indvars.iv.i122.i, %bb.ai ], [ %indvars.iv.next.i123.i, %bb.ak ]
  %.019.i.i.lcssa = phi i32 [ %.019.i.i, %bb.ai ], [ %i.xh, %bb.ak ] ; 3 uses
  %i.xt = trunc nsw i64 %indvars.iv.i122.i.lcssa to i32 ; 3 uses
  %.not206.i = icmp slt i32 %i.wx, %i.xt
  br i1 %.not206.i, label %bb.an, label %string_skip_until.exit.i

bb.an:                                            ; preds = %.split.loop.exit.i.i
  store i32 %i.xt, ptr %i.a, align 4, !tbaa !191
  br i1 %i.wu, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.xu = icmp eq i32 %.019.i.i.lcssa, 0
  br i1 %i.xu, label %js_date_parse_otherstring.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.xv = sub nsw i32 0, %.019.i.i.lcssa
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %.1194.i = phi i32 [ %i.xv, %bb.ap ], [ %.019.i.i.lcssa, %bb.an ]
  store i32 %.1194.i, ptr %i.d, align 16, !tbaa !191
  br label %string_skip_until.exit.i

.preheader223.i:                                  ; preds = %bb.af, %bb.at
  %indvars.iv.i124.i = phi i64 [ %indvars.iv.next.i131.i.1, %bb.at ], [ %i.ws, %bb.af ] ; 4 uses
  %.019.i125.i = phi i32 [ %i.yn, %bb.at ], [ 0, %bb.af ] ; 3 uses
  %i.xw = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i124.i
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !218 ; 3 uses
  %i.xy = zext nneg i8 %i.xx to i32
  %i.xz = add i8 %i.xx, -48
  %i.ya = icmp ult i8 %i.xz, 10
  br i1 %i.ya, label %bb.ar, label %.split.loop.exit.i127.i

bb.ar:                                            ; preds = %.preheader223.i
  %i.yb = icmp sgt i32 %.019.i125.i, 99999999
  br i1 %i.yb, label %.loopexit.i, label %.preheader223.i.1

.preheader223.i.1:                                ; preds = %bb.ar
  %i.yc = mul nsw i32 %.019.i125.i, 10
  %i.yd = add i32 %i.yc, -48
  %i.ye = add i32 %i.yd, %i.xy                    ; 3 uses
  %indvars.iv.next.i131.i = add nsw i64 %indvars.iv.i124.i, 1 ; 2 uses
  %i.yf = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i131.i
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !218 ; 3 uses
  %i.yh = zext nneg i8 %i.yg to i32
  %i.yi = add i8 %i.yg, -48
  %i.yj = icmp ult i8 %i.yi, 10
  br i1 %i.yj, label %bb.as, label %.split.loop.exit.i127.i

bb.as:                                            ; preds = %.preheader223.i.1
  %i.yk = icmp sgt i32 %i.ye, 99999999
  br i1 %i.yk, label %.loopexit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.yl = mul nsw i32 %i.ye, 10
  %i.ym = add i32 %i.yl, -48
  %i.yn = add i32 %i.ym, %i.yh
  %indvars.iv.next.i131.i.1 = add nsw i64 %indvars.iv.i124.i, 2 ; 2 uses
  %i.yo = trunc i64 %indvars.iv.next.i131.i.1 to i32
  %i.yp = icmp eq i32 %.promoted.i177.i, %i.yo
  br i1 %i.yp, label %.loopexit.i, label %.preheader223.i, !llvm.loop !167

.split.loop.exit.i127.i:                          ; preds = %.preheader223.i.1, %.preheader223.i
  %indvars.iv.i124.i.lcssa = phi i64 [ %indvars.iv.i124.i, %.preheader223.i ], [ %indvars.iv.next.i131.i, %.preheader223.i.1 ]
  %.019.i125.i.lcssa = phi i32 [ %.019.i125.i, %.preheader223.i ], [ %i.ye, %.preheader223.i.1 ] ; 7 uses
  %.lcssa424 = phi i8 [ %i.xx, %.preheader223.i ], [ %i.yg, %.preheader223.i.1 ]
  %i.yq = trunc nsw i64 %indvars.iv.i124.i.lcssa to i32 ; 8 uses
  %.not207.i = icmp slt i32 %.promoted.i177.i, %i.yq
  br i1 %.not207.i, label %bb.au, label %.loopexit.i

bb.au:                                            ; preds = %.split.loop.exit.i127.i
  store i32 %i.wh, ptr %i.of, align 4
  store i32 %i.wg, ptr %i.oj, align 16
  store i32 %i.yq, ptr %i.a, align 4, !tbaa !191
  %i.yr = icmp eq i8 %.lcssa424, 58
  br i1 %i.yr, label %bb.av, label %string_skip_char.exit.i44

bb.av:                                            ; preds = %bb.au
  %i.ys = add nsw i32 %i.yq, 1                    ; 2 uses
  store i32 %.019.i125.i.lcssa, ptr %i.of, align 4, !tbaa !191
  %i.yt = sext i32 %i.ys to i64                   ; 3 uses
  %i.yu = add i32 %i.yq, 3
  %i.yv = getelementptr inbounds i8, ptr %i.f, i64 %i.yt
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !218 ; 2 uses
  %i.yx = add i8 %i.yw, -48
  %i.yy = icmp ult i8 %i.yx, 10
  br i1 %i.yy, label %bb.aw, label %.split.loop.exit24.i135.i

bb.aw:                                            ; preds = %bb.av
  %i.yz = zext nneg i8 %i.yw to i32
  %i.za = add nsw i32 %i.yz, -48                  ; 2 uses
  %indvars.iv.next.i140.i = add nsw i64 %i.yt, 1  ; 2 uses
  %i.zb = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i140.i
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !218 ; 2 uses
  %i.zd = add i8 %i.zc, -48
  %i.ze = icmp ult i8 %i.zd, 10
  br i1 %i.ze, label %.split.loop.exit.i136.loopexit.i, label %.split.loop.exit24.i135.i

.split.loop.exit.i136.loopexit.i:                 ; preds = %bb.aw
  %i.zf = zext nneg i8 %i.zc to i32
  %i.zg = mul nuw nsw i32 %i.za, 10
  %i.zh = add nsw i32 %i.zg, -48
  %i.zi = add nsw i32 %i.zh, %i.zf
  br label %.split.loop.exit.i136.i

.split.loop.exit24.i135.i:                        ; preds = %bb.aw, %bb.av
  %indvars.iv.i133.lcssa.i = phi i64 [ %i.yt, %bb.av ], [ %indvars.iv.next.i140.i, %bb.aw ]
  %.019.i134.lcssa.i = phi i32 [ 0, %bb.av ], [ %i.za, %bb.aw ]
  %i.zj = trunc nsw i64 %indvars.iv.i133.lcssa.i to i32
  br label %.split.loop.exit.i136.i

.split.loop.exit.i136.i:                          ; preds = %.split.loop.exit24.i135.i, %.split.loop.exit.i136.loopexit.i
  %.120.i137.i = phi i32 [ %.019.i134.lcssa.i, %.split.loop.exit24.i135.i ], [ %i.zi, %.split.loop.exit.i136.loopexit.i ]
  %i.zk = phi i32 [ %i.zj, %.split.loop.exit24.i135.i ], [ %i.yu, %.split.loop.exit.i136.loopexit.i ] ; 7 uses
  %.not208.i = icmp sgt i32 %i.zk, %i.ys
  br i1 %.not208.i, label %bb.ax, label %js_date_parse_otherstring.exit.thread

bb.ax:                                            ; preds = %.split.loop.exit.i136.i
  store i32 %.120.i137.i, ptr %i.og, align 16, !tbaa !191
  store i32 %i.zk, ptr %i.a, align 4, !tbaa !191
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr inbounds i8, ptr %i.f, i64 %i.zl
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !218
  switch i8 %i.zn, label %js_date_parse_otherstring.exit.thread [
    i8 58, label %bb.ay
    i8 0, label %string_skip_until.exit.i
    i8 32, label %string_skip_until.exit.i
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.zo = add nsw i32 %i.zk, 1                    ; 2 uses
  %i.zp = sext i32 %i.zo to i64                   ; 3 uses
  %i.zq = add i32 %i.zk, 3
  %i.zr = getelementptr inbounds i8, ptr %i.f, i64 %i.zp
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !218 ; 2 uses
  %i.zt = add i8 %i.zs, -48
  %i.zu = icmp ult i8 %i.zt, 10
  br i1 %i.zu, label %bb.az, label %.split.loop.exit24.i145.i

bb.az:                                            ; preds = %bb.ay
  %i.zv = zext nneg i8 %i.zs to i32
  %i.zw = add nsw i32 %i.zv, -48                  ; 2 uses
  %indvars.iv.next.i150.i = add nsw i64 %i.zp, 1  ; 2 uses
  %i.zx = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i150.i
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !218 ; 2 uses
  %i.zz = add i8 %i.zy, -48
  %i.aaa = icmp ult i8 %i.zz, 10
  br i1 %i.aaa, label %.split.loop.exit.i146.loopexit.i, label %.split.loop.exit24.i145.i

.split.loop.exit.i146.loopexit.i:                 ; preds = %bb.az
  %i.aab = zext nneg i8 %i.zy to i32
  %i.aac = mul nuw nsw i32 %i.zw, 10
  %i.aad = add nsw i32 %i.aac, -48
  %i.aae = add nsw i32 %i.aad, %i.aab
  br label %.split.loop.exit.i146.i

.split.loop.exit24.i145.i:                        ; preds = %bb.az, %bb.ay
  %indvars.iv.i143.lcssa.i = phi i64 [ %i.zp, %bb.ay ], [ %indvars.iv.next.i150.i, %bb.az ]
  %.019.i144.lcssa.i = phi i32 [ 0, %bb.ay ], [ %i.zw, %bb.az ]
  %i.aaf = trunc nsw i64 %indvars.iv.i143.lcssa.i to i32
  br label %.split.loop.exit.i146.i

.split.loop.exit.i146.i:                          ; preds = %.split.loop.exit24.i145.i, %.split.loop.exit.i146.loopexit.i
  %.120.i147.i = phi i32 [ %.019.i144.lcssa.i, %.split.loop.exit24.i145.i ], [ %i.aae, %.split.loop.exit.i146.loopexit.i ]
  %.1.i148.i = phi i32 [ %i.aaf, %.split.loop.exit24.i145.i ], [ %i.zq, %.split.loop.exit.i146.loopexit.i ] ; 2 uses
  %.not209.i = icmp sgt i32 %.1.i148.i, %i.zo
  br i1 %.not209.i, label %bb.ba, label %js_date_parse_otherstring.exit.thread

bb.ba:                                            ; preds = %.split.loop.exit.i146.i
  store i32 %.120.i147.i, ptr %i.oh, align 4, !tbaa !191
  store i32 %.1.i148.i, ptr %i.a, align 4, !tbaa !191
  call fastcc void @string_get_milliseconds(ptr noundef nonnull readonly %i.f, ptr noundef %i.a, ptr noundef %i.oi)
  %.promoted.i185.i.pre = load i32, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_until.exit.i

string_skip_char.exit.i44:                        ; preds = %bb.au
  %i.aag = sub nsw i32 %i.yq, %.promoted.i177.i
  %i.aah = icmp sgt i32 %i.aag, 2
  br i1 %i.aah, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %string_skip_char.exit.i44
  store i32 %.019.i125.i.lcssa, ptr %i.d, align 16, !tbaa !191
  br label %string_skip_until.exit.i

bb.bc:                                            ; preds = %string_skip_char.exit.i44
  %i.aai = add i32 %.019.i125.i.lcssa, -32
  %or.cond3.i = icmp ult i32 %i.aai, -31
  br i1 %or.cond3.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.aaj = icmp slt i32 %.019.i125.i.lcssa, 100
  %i.aak = select i1 %i.aaj, i32 1900, i32 0
  %5 = add nsw i32 %i.aak, %.019.i125.i.lcssa
  %i.aal = icmp slt i32 %.019.i125.i.lcssa, 50
  %i.aam = select i1 %i.aal, i32 100, i32 0
  %i.aan = add nsw i32 %5, %i.aam
  store i32 %i.aan, ptr %i.d, align 16, !tbaa !191
  br label %string_skip_until.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.aao = icmp eq i32 %.092.ph.i, 3
  br i1 %i.aao, label %js_date_parse_otherstring.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aap = add nsw i32 %.092.ph.i, 1
  %i.aaq = sext i32 %.092.ph.i to i64
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aaq
  store i32 %.019.i125.i.lcssa, ptr %i.aar, align 4, !tbaa !191
  br label %string_skip_until.exit.i

.loopexit.i:                                      ; preds = %bb.ar, %bb.as, %bb.at, %.split.loop.exit.i127.i
  %i.aas = add i8 %i.wr, -97
  %or.cond.i3.i.i.i = icmp ult i8 %i.aas, 26
  %i.aat = add nsw i8 %i.wr, -32
  %i.aau = select i1 %or.cond.i3.i.i.i, i8 %i.aat, i8 %i.wr ; 2 uses
  %i.aav = getelementptr i8, ptr %i.wt, i64 1     ; 3 uses
  %i.aaw = getelementptr i8, ptr %i.wt, i64 2
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.loopexit.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aax = mul nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.aay = getelementptr inbounds nuw i8, ptr @month_names, i64 %i.aax ; 3 uses
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !218 ; 3 uses
  %i.aba = add i8 %i.aaz, -97
  %or.cond.i144.i.i.i = icmp ult i8 %i.aba, 26
  %i.abb = add nsw i8 %i.aaz, -32
  %i.abc = select i1 %or.cond.i144.i.i.i, i8 %i.abb, i8 %i.aaz
  %.not5.i.i.i = icmp eq i8 %i.aau, %i.abc
  br i1 %.not5.i.i.i, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.abd = load i8, ptr %i.aav, align 1, !tbaa !218 ; 3 uses
  %i.abe = add i8 %i.abd, -97
  %or.cond.i.i.i.i = icmp ult i8 %i.abe, 26
  %i.abf = add nsw i8 %i.abd, -32
  %i.abg = select i1 %or.cond.i.i.i.i, i8 %i.abf, i8 %i.abd
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aay, i64 1
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !218 ; 3 uses
  %i.abj = add i8 %i.abi, -97
  %or.cond.i14.i.i.i = icmp ult i8 %i.abj, 26
  %i.abk = add nsw i8 %i.abi, -32
  %i.abl = select i1 %or.cond.i14.i.i.i, i8 %i.abk, i8 %i.abi
  %.not.i.i.i = icmp eq i8 %i.abg, %i.abl
  br i1 %.not.i.i.i, label %.lr.ph.1.i.i.i, label %._crit_edge.i.i.i

.lr.ph.1.i.i.i:                                   ; preds = %.lr.ph.preheader.i.i.i
  %i.abm = load i8, ptr %i.aaw, align 1, !tbaa !218 ; 3 uses
  %i.abn = add i8 %i.abm, -97
  %or.cond.i.1.i.i.i = icmp ult i8 %i.abn, 26
  %i.abo = add nsw i8 %i.abm, -32
  %i.abp = select i1 %or.cond.i.1.i.i.i, i8 %i.abo, i8 %i.abm
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aay, i64 2
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !218 ; 3 uses
  %i.abs = add i8 %i.abr, -97
  %or.cond.i14.1.i.i.i = icmp ult i8 %i.abs, 26
  %i.abt = add nsw i8 %i.abr, -32
  %i.abu = select i1 %or.cond.i14.1.i.i.i, i8 %i.abt, i8 %i.abr
  %.not.1.i.i.i = icmp eq i8 %i.abp, %i.abu
  br i1 %.not.1.i.i.i, label %bb.bg, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.1.i.i.i, %.lr.ph.preheader.i.i.i, %.preheader.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 12
  br i1 %exitcond.not.i.i.i, label %string_get_month.exit.i, label %.preheader.i.i.i, !llvm.loop !1969

bb.bg:                                            ; preds = %.lr.ph.1.i.i.i
  store i32 %i.wh, ptr %i.of, align 4
  store i32 %i.wg, ptr %i.oj, align 16
  %i.abv = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.abw = add nuw nsw i32 %i.abv, 1
  store i32 %i.abw, ptr %i.od, align 4, !tbaa !191
  %i.abx = add nsw i32 %.promoted.i177.i, 3       ; 3 uses
  store i32 %i.abx, ptr %i.a, align 4, !tbaa !191
  %i.aby = sext i32 %i.abx to i64                 ; 2 uses
  %i.abz = getelementptr inbounds i8, ptr %i.f, i64 %i.aby
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !218 ; 2 uses
  %i.acb = zext nneg i8 %i.aca to i64
  %memchr.bounds214.i = icmp ugt i8 %i.aca, 63
  %i.acc = shl nuw i64 1, %i.acb
  %i.acd = and i64 %i.acc, 288125926842040321
  %memchr.bits215.i = icmp eq i64 %i.acd, 0
  %memchr216.not.i = select i1 %memchr.bounds214.i, i1 true, i1 %memchr.bits215.i
  br i1 %memchr216.not.i, label %.lr.ph.i154.i, label %string_skip_until.exit.i

.lr.ph.i154.i:                                    ; preds = %bb.bg, %.lr.ph.i154.i
  %indvars.iv.i155.i = phi i64 [ %indvars.iv.next.i156.i, %.lr.ph.i154.i ], [ %i.aby, %bb.bg ]
  %indvars.iv.next.i156.i = add nsw i64 %indvars.iv.i155.i, 1 ; 3 uses
  %i.ace = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i156.i
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !218 ; 2 uses
  %i.acg = zext nneg i8 %i.acf to i64
  %memchr.bounds217.i = icmp ugt i8 %i.acf, 63
  %i.ach = shl nuw i64 1, %i.acg
  %i.aci = and i64 %i.ach, 288125926842040321
  %memchr.bits218.i = icmp eq i64 %i.aci, 0
  %memchr219.not.i = select i1 %memchr.bounds217.i, i1 true, i1 %memchr.bits218.i
  br i1 %memchr219.not.i, label %.lr.ph.i154.i, label %string_skip_until.exit.loopexit.i, !llvm.loop !1970

string_get_month.exit.i:                          ; preds = %._crit_edge.i.i.i
  br i1 %i.wf, label %.lr.ph.i157.i, label %.lr.ph.preheader.i.i172.i.preheader

.lr.ph.preheader.i.i172.i.preheader:              ; preds = %.lr.ph.i161.1.i, %.lr.ph.i157.1.i, %.lr.ph.i157.i, %string_get_month.exit.i
  br label %.lr.ph.preheader.i.i172.i

.lr.ph.i157.i:                                    ; preds = %string_get_month.exit.i
  %i.acj = add nsw i64 %i.ws, 2                   ; 2 uses
  switch i8 %i.aau, label %.lr.ph.preheader.i.i172.i.preheader [
    i8 80, label %.lr.ph.i157.1.i
    i8 65, label %.lr.ph.i161.1.i
  ]

.lr.ph.i157.1.i:                                  ; preds = %.lr.ph.i157.i
  %i.ack = load i8, ptr %i.aav, align 1, !tbaa !218 ; 3 uses
  %i.acl = add i8 %i.ack, -97
  %or.cond.i.i.1.i = icmp ult i8 %i.acl, 26
  %i.acm = add nsw i8 %i.ack, -32
  %i.acn = select i1 %or.cond.i.i.1.i, i8 %i.acm, i8 %i.ack
  %.not10.i.1.i = icmp eq i8 %i.acn, 77
  br i1 %.not10.i.1.i, label %bb.bh, label %.lr.ph.preheader.i.i172.i.preheader

bb.bh:                                            ; preds = %.lr.ph.i157.1.i
  %.not119.i = icmp eq i32 %i.wh, 12
  %i.aco = add nsw i32 %i.wh, 12
  %spec.select133 = select i1 %.not119.i, i32 12, i32 %i.aco
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.bj, %bb.bh, %bb.bl
  %i.acp = phi i32 [ %i.ado, %bb.bl ], [ %i.wg, %bb.bh ], [ %i.wg, %bb.bj ]
  %i.acq = phi i32 [ %i.wh, %bb.bl ], [ %spec.select133, %bb.bh ], [ %spec.select134, %bb.bj ]
  %.6 = phi i8 [ 0, %bb.bl ], [ %.4, %bb.bh ], [ %.4, %bb.bj ]
  %.in.i = phi i64 [ %indvars.iv.next.i.i175.i, %bb.bl ], [ %i.acj, %bb.bh ], [ %i.acj, %bb.bj ]
  %i.acr = trunc i64 %.in.i to i32
  br label %bb.ae, !llvm.loop !1971

.lr.ph.i161.1.i:                                  ; preds = %.lr.ph.i157.i
  %i.acs = load i8, ptr %i.aav, align 1, !tbaa !218 ; 3 uses
  %i.act = add i8 %i.acs, -97
  %or.cond.i.i164.1.i = icmp ult i8 %i.act, 26
  %i.acu = add nsw i8 %i.acs, -32
  %i.acv = select i1 %or.cond.i.i164.1.i, i8 %i.acu, i8 %i.acs
  %.not10.i166.1.i = icmp eq i8 %i.acv, 77
  br i1 %.not10.i166.1.i, label %bb.bi, label %.lr.ph.preheader.i.i172.i.preheader

bb.bi:                                            ; preds = %.lr.ph.i161.1.i
  %i.acw = icmp sgt i32 %i.wh, 12
  br i1 %i.acw, label %js_date_parse_otherstring.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.acx = icmp eq i32 %i.wh, 12
  %spec.select134 = select i1 %i.acx, i32 0, i32 %i.wh
  br label %.backedge.i

.lr.ph.preheader.i.i172.i:                        ; preds = %.lr.ph.preheader.i.i172.i.preheader, %string_match.exit.i.i
  %.011.i.i = phi i64 [ %i.adl, %string_match.exit.i.i ], [ 0, %.lr.ph.preheader.i.i172.i.preheader ] ; 2 uses
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr @js_tzabbr, i64 %.011.i.i ; 3 uses
  %i.acz = load i8, ptr %i.acy, align 8, !tbaa !218
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bk, %.lr.ph.preheader.i.i172.i
  %indvars.iv.i.i173.i = phi i64 [ %i.ws, %.lr.ph.preheader.i.i172.i ], [ %indvars.iv.next.i.i175.i, %bb.bk ] ; 2 uses
  %i.ada = phi i8 [ %i.acz, %.lr.ph.preheader.i.i172.i ], [ %i.adk, %bb.bk ] ; 3 uses
  %.0816.i.i.i = phi ptr [ %i.acy, %.lr.ph.preheader.i.i172.i ], [ %i.adj, %bb.bk ]
  %i.adb = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i.i173.i
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !218 ; 3 uses
  %i.add = add i8 %i.adc, -97
  %or.cond.i.i.i174.i = icmp ult i8 %i.add, 26
  %i.ade = add nsw i8 %i.adc, -32
  %i.adf = select i1 %or.cond.i.i.i174.i, i8 %i.ade, i8 %i.adc
  %i.adg = add i8 %i.ada, -97
  %or.cond.i11.i.i.i = icmp ult i8 %i.adg, 26
  %i.adh = add nsw i8 %i.ada, -32
  %i.adi = select i1 %or.cond.i11.i.i.i, i8 %i.adh, i8 %i.ada
  %.not10.i.i.i = icmp eq i8 %i.adf, %i.adi
  br i1 %.not10.i.i.i, label %bb.bk, label %string_match.exit.i.i

bb.bk:                                            ; preds = %.lr.ph.i.i.i
  %i.adj = getelementptr inbounds nuw i8, ptr %.0816.i.i.i, i64 1 ; 2 uses
  %indvars.iv.next.i.i175.i = add nsw i64 %indvars.iv.i.i173.i, 1 ; 2 uses
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !218 ; 2 uses
  %.not.i.i176.i = icmp eq i8 %i.adk, 0
  br i1 %.not.i.i176.i, label %bb.bl, label %.lr.ph.i.i.i, !llvm.loop !1972

string_match.exit.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.adl = add nuw nsw i64 %.011.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.adl, 18
  br i1 %exitcond.not.i.i, label %string_get_tzabbr.exit.i, label %.lr.ph.preheader.i.i172.i, !llvm.loop !1973

bb.bl:                                            ; preds = %bb.bk
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acy, i64 6
  %i.adn = load i16, ptr %i.adm, align 2, !tbaa !1977
  %i.ado = sext i16 %i.adn to i32
  br label %.backedge.i

string_get_tzabbr.exit.i:                         ; preds = %string_match.exit.i.i
  store i32 %i.wh, ptr %i.of, align 4
  store i32 %i.wg, ptr %i.oj, align 16
  store i32 %.promoted.i177.i, ptr %i.a, align 4
  switch i8 %i.wr, label %bb.bo [
    i8 40, label %.preheader.i
    i8 41, label %js_date_parse_otherstring.exit.thread
  ]

.preheader.i:                                     ; preds = %string_get_tzabbr.exit.i, %bb.bm
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bm ], [ %i.ws, %string_get_tzabbr.exit.i ] ; 3 uses
  %.0.i = phi i32 [ %i.adv, %bb.bm ], [ 0, %string_get_tzabbr.exit.i ] ; 2 uses
  %i.adp = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !218 ; 3 uses
  %.not117.i = icmp eq i8 %i.adq, 0
  br i1 %.not117.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.adr = icmp eq i8 %i.adq, 40
  %i.ads = zext i1 %i.adr to i32
  %i.adt = add nsw i32 %.0.i, %i.ads
  %i.adu = icmp eq i8 %i.adq, 41
  %.neg.i = sext i1 %i.adu to i32
  %i.adv = add i32 %i.adt, %.neg.i                ; 2 uses
  %.not118.i = icmp eq i32 %i.adv, 0
  br i1 %.not118.i, label %string_skip_until.exit.loopexit221.i, label %.preheader.i, !llvm.loop !1974

bb.bn:                                            ; preds = %.preheader.i
  %i.adw = trunc nsw i64 %indvars.iv.i to i32     ; 2 uses
  store i32 %i.adw, ptr %i.a, align 4
  %i.adx = icmp slt i32 %.0.i, 1
  br i1 %i.adx, label %string_skip_until.exit.i, label %js_date_parse_otherstring.exit.thread

bb.bo:                                            ; preds = %string_get_tzabbr.exit.i
  %narrow.i = add nuw nsw i8 %.096.ph.i, %.098.ph.i
  %narrow115.i = add nuw nsw i8 %narrow.i, %.094.ph.i
  %i.ady = zext nneg i8 %narrow115.i to i32
  %i.adz = sub nsw i32 0, %i.ady
  %.not116.i = icmp eq i32 %.092.ph.i, %i.adz
  br i1 %.not116.i, label %bb.bp, label %js_date_parse_otherstring.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.aea = zext nneg i8 %i.wr to i64
  %memchr.bounds.i = icmp ugt i8 %i.wr, 63
  %i.aeb = shl nuw i64 1, %i.aea
  %i.aec = and i64 %i.aeb, 177025667039233
  %memchr.bits.i = icmp eq i64 %i.aec, 0
  %memchr210.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr210.not.i, label %.lr.ph.i180.i, label %string_skip_until.exit.i

.lr.ph.i180.i:                                    ; preds = %bb.bp, %.lr.ph.i180.i
  %indvars.iv.i181.i = phi i64 [ %indvars.iv.next.i182.i, %.lr.ph.i180.i ], [ %i.ws, %bb.bp ]
  %indvars.iv.next.i182.i = add nsw i64 %indvars.iv.i181.i, 1 ; 3 uses
  %i.aed = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i182.i
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !218 ; 2 uses
  %i.aef = zext nneg i8 %i.aee to i64
  %memchr.bounds211.i = icmp ugt i8 %i.aee, 63
  %i.aeg = shl nuw i64 1, %i.aef
  %i.aeh = and i64 %i.aeg, 177025667039233
  %memchr.bits212.i = icmp eq i64 %i.aeh, 0
  %memchr213.not.i = select i1 %memchr.bounds211.i, i1 true, i1 %memchr.bits212.i
  br i1 %memchr213.not.i, label %.lr.ph.i180.i, label %string_skip_until.exit.loopexit220.i, !llvm.loop !1970

string_skip_until.exit.loopexit.i:                ; preds = %.lr.ph.i154.i
  %i.aei = trunc nsw i64 %indvars.iv.next.i156.i to i32 ; 2 uses
  store i32 %i.aei, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_until.exit.i

string_skip_until.exit.loopexit220.i:             ; preds = %.lr.ph.i180.i
  %i.aej = trunc nsw i64 %indvars.iv.next.i182.i to i32 ; 2 uses
  store i32 %i.aej, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_until.exit.i

string_skip_until.exit.loopexit221.i:             ; preds = %bb.bm
  %i.aek = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.aek, ptr %i.a, align 4
  br label %string_skip_until.exit.i

string_skip_until.exit.i:                         ; preds = %bb.aj, %bb.al, %bb.am, %bb.ah, %string_skip_until.exit.loopexit221.i, %string_skip_until.exit.loopexit220.i, %string_skip_until.exit.loopexit.i, %bb.bp, %bb.bn, %bb.bg, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.ax, %bb.ax, %bb.aq, %.split.loop.exit.i.i
  %.promoted.i185.i = phi i32 [ %i.aei, %string_skip_until.exit.loopexit.i ], [ %i.abx, %bb.bg ], [ %i.aej, %string_skip_until.exit.loopexit220.i ], [ %.promoted.i177.i, %bb.bp ], [ %i.adw, %bb.bn ], [ %i.aek, %string_skip_until.exit.loopexit221.i ], [ %.promoted.i185.i.pre, %bb.ba ], [ %i.zk, %bb.ax ], [ %i.zk, %bb.ax ], [ %i.yq, %bb.bb ], [ %i.yq, %bb.bd ], [ %i.yq, %bb.bf ], [ %i.wx, %.split.loop.exit.i.i ], [ %i.xt, %bb.aq ], [ %.promoted.i185.i.pre234, %bb.ah ], [ %i.wx, %bb.am ], [ %i.wx, %bb.al ], [ %i.wx, %bb.aj ] ; 2 uses
  %.5 = phi i8 [ %.4, %string_skip_until.exit.loopexit.i ], [ %.4, %bb.bg ], [ %.4, %string_skip_until.exit.loopexit220.i ], [ %.4, %bb.bp ], [ %.4, %bb.bn ], [ %.4, %string_skip_until.exit.loopexit221.i ], [ %.4, %bb.ba ], [ %.4, %bb.ax ], [ %.4, %bb.ax ], [ %.4, %bb.bb ], [ %.4, %bb.bd ], [ %.4, %bb.bf ], [ %.4, %.split.loop.exit.i.i ], [ %.4, %bb.aq ], [ 0, %bb.ah ], [ %.4, %bb.am ], [ %.4, %bb.al ], [ %.4, %bb.aj ]
  %.199.i = phi i8 [ %.098.ph.i, %string_skip_until.exit.loopexit.i ], [ %.098.ph.i, %bb.bg ], [ %.098.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.098.ph.i, %bb.bp ], [ %.098.ph.i, %bb.bn ], [ %.098.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.098.ph.i, %bb.ba ], [ %.098.ph.i, %bb.ax ], [ %.098.ph.i, %bb.ax ], [ 1, %bb.bb ], [ 1, %bb.bd ], [ %.098.ph.i, %bb.bf ], [ %.098.ph.i, %.split.loop.exit.i.i ], [ 1, %bb.aq ], [ %.098.ph.i, %bb.ah ], [ %.098.ph.i, %bb.am ], [ %.098.ph.i, %bb.al ], [ %.098.ph.i, %bb.aj ]
  %.197.i = phi i8 [ 1, %string_skip_until.exit.loopexit.i ], [ 1, %bb.bg ], [ %.096.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.096.ph.i, %bb.bp ], [ %.096.ph.i, %bb.bn ], [ %.096.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.096.ph.i, %bb.ba ], [ %.096.ph.i, %bb.ax ], [ %.096.ph.i, %bb.ax ], [ %.096.ph.i, %bb.bb ], [ %.096.ph.i, %bb.bd ], [ %.096.ph.i, %bb.bf ], [ %.096.ph.i, %.split.loop.exit.i.i ], [ %.096.ph.i, %bb.aq ], [ %.096.ph.i, %bb.ah ], [ %.096.ph.i, %bb.am ], [ %.096.ph.i, %bb.al ], [ %.096.ph.i, %bb.aj ]
  %.195.i = phi i8 [ %.094.ph.i, %string_skip_until.exit.loopexit.i ], [ %.094.ph.i, %bb.bg ], [ %.094.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.094.ph.i, %bb.bp ], [ %.094.ph.i, %bb.bn ], [ %.094.ph.i, %string_skip_until.exit.loopexit221.i ], [ 1, %bb.ba ], [ 1, %bb.ax ], [ 1, %bb.ax ], [ %.094.ph.i, %bb.bb ], [ %.094.ph.i, %bb.bd ], [ %.094.ph.i, %bb.bf ], [ %.094.ph.i, %.split.loop.exit.i.i ], [ %.094.ph.i, %bb.aq ], [ 1, %bb.ah ], [ %.094.ph.i, %bb.am ], [ %.094.ph.i, %bb.al ], [ %.094.ph.i, %bb.aj ]
  %.193.i = phi i32 [ %.092.ph.i, %string_skip_until.exit.loopexit.i ], [ %.092.ph.i, %bb.bg ], [ %.092.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.092.ph.i, %bb.bp ], [ %.092.ph.i, %bb.bn ], [ %.092.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.092.ph.i, %bb.ba ], [ %.092.ph.i, %bb.ax ], [ %.092.ph.i, %bb.ax ], [ %.092.ph.i, %bb.bb ], [ %.092.ph.i, %bb.bd ], [ %i.aap, %bb.bf ], [ %.092.ph.i, %.split.loop.exit.i.i ], [ %.092.ph.i, %bb.aq ], [ %.092.ph.i, %bb.ah ], [ %.092.ph.i, %bb.am ], [ %.092.ph.i, %bb.al ], [ %.092.ph.i, %bb.aj ]
  %i.ael = sext i32 %.promoted.i185.i to i64      ; 2 uses
  %i.aem = getelementptr inbounds i8, ptr %i.f, i64 %i.ael
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !218
  %i.aeo = and i8 %i.aen, -4
  %i.aep = icmp eq i8 %i.aeo, 44
  br i1 %i.aep, label %.critedge.i.i, label %string_skip_separators.exit.i

.critedge.i.i:                                    ; preds = %string_skip_until.exit.i, %.critedge.i.i
  %indvars.iv.i187.i = phi i64 [ %indvars.iv.next.i188.i, %.critedge.i.i ], [ %i.ael, %string_skip_until.exit.i ]
  %indvars.iv.next.i188.i = add nsw i64 %indvars.iv.i187.i, 1 ; 3 uses
  %i.aeq = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i188.i
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !218
  %i.aes = and i8 %i.aer, -4
  %i.aet = icmp eq i8 %i.aes, 44
  br i1 %i.aet, label %.critedge.i.i, label %string_skip_separators.exit.loopexit.i, !llvm.loop !1975

string_skip_separators.exit.loopexit.i:           ; preds = %.critedge.i.i
  %i.aeu = trunc nsw i64 %indvars.iv.next.i188.i to i32 ; 2 uses
  store i32 %i.aeu, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_separators.exit.i

string_skip_separators.exit.i:                    ; preds = %string_skip_separators.exit.loopexit.i, %string_skip_until.exit.i
  %.promoted353.i = phi i32 [ %i.aeu, %string_skip_separators.exit.loopexit.i ], [ %.promoted.i185.i, %string_skip_until.exit.i ]
  %.promoted.pre = load i32, ptr %i.of, align 4
  %.promoted123.pre = load i32, ptr %i.oj, align 16
  br label %.outer.i, !llvm.loop !1971

bb.bq:                                            ; preds = %string_skip_spaces.exit.i
  store i32 %i.wh, ptr %i.of, align 4
  store i32 %i.wg, ptr %i.oj, align 16
  %i.aev = trunc nuw i8 %.098.ph.i to i1          ; 2 uses
  %i.aew = zext nneg i8 %.098.ph.i to i32
  %i.aex = trunc nuw i8 %.096.ph.i to i1          ; 2 uses
  %i.aey = zext nneg i8 %.096.ph.i to i32
  %i.aez = add nuw nsw i32 %i.aey, %i.aew
  %i.afa = add i32 %i.aez, %.092.ph.i
  %i.afb = icmp sgt i32 %i.afa, 3
  br i1 %i.afb, label %js_date_parse_otherstring.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  switch i32 %.092.ph.i, label %js_date_parse_otherstring.exit.thread [
    i32 0, label %bb.bs
    i32 1, label %bb.bt
    i32 2, label %bb.bu
    i32 3, label %bb.bz
  ]

bb.bs:                                            ; preds = %bb.br
  br i1 %i.aev, label %thread-pre-split.i, label %js_date_parse_otherstring.exit.thread

bb.bt:                                            ; preds = %bb.br
  %i.afc = load i32, ptr %i.b, align 4, !tbaa !191 ; 2 uses
  br i1 %i.aex, label %thread-pre-split.sink.split.i, label %bb.ca

bb.bu:                                            ; preds = %bb.br
  br i1 %i.aev, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.afd = load i32, ptr %i.b, align 4, !tbaa !191
  %i.afe = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !191
  store i32 %i.aff, ptr %i.oe, align 8, !tbaa !191
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bu
  br i1 %i.aex, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.afg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !191 ; 3 uses
  %i.afi = icmp slt i32 %i.afh, 100
  %i.afj = select i1 %i.afi, i32 1900, i32 0
  %6 = add nsw i32 %i.afj, %i.afh
  %i.afk = icmp slt i32 %i.afh, 50
  %i.afl = select i1 %i.afk, i32 100, i32 0
  %i.afm = add nsw i32 %6, %i.afl
  store i32 %i.afm, ptr %i.d, align 16, !tbaa !191
  %i.afn = load i32, ptr %i.b, align 4, !tbaa !191
  br label %thread-pre-split.sink.split.i

bb.by:                                            ; preds = %bb.bw
  %i.afo = load i32, ptr %i.b, align 4, !tbaa !191
  %i.afp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !191
  store i32 %i.afq, ptr %i.oe, align 8, !tbaa !191
  br label %bb.ca

bb.bz:                                            ; preds = %bb.br
  %i.afr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !191 ; 3 uses
  %i.aft = icmp slt i32 %i.afs, 100
  %i.afu = select i1 %i.aft, i32 1900, i32 0
  %7 = add nsw i32 %i.afu, %i.afs
  %i.afv = icmp slt i32 %i.afs, 50
  %i.afw = select i1 %i.afv, i32 100, i32 0
  %i.afx = add nsw i32 %7, %i.afw
  store i32 %i.afx, ptr %i.d, align 16, !tbaa !191
  %i.afy = load i32, ptr %i.b, align 4, !tbaa !191
  %i.afz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !191
  store i32 %i.aga, ptr %i.oe, align 8, !tbaa !191
  br label %bb.ca

thread-pre-split.sink.split.i:                    ; preds = %bb.bx, %bb.bt
  %.sink.i = phi i32 [ %i.afn, %bb.bx ], [ %i.afc, %bb.bt ]
  store i32 %.sink.i, ptr %i.oe, align 8, !tbaa !191
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.sink.split.i, %bb.bs
  %.pr.i = load i32, ptr %i.od, align 4, !tbaa !191
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bt, %thread-pre-split.i, %bb.bz, %bb.by, %bb.bv
  %i.agb = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.afd, %bb.bv ], [ %i.afo, %bb.by ], [ %i.afy, %bb.bz ], [ %i.afc, %bb.bt ] ; 2 uses
  %i.agc = icmp slt i32 %i.agb, 1
  %i.agd = load i32, ptr %i.oe, align 8
  %i.age = icmp slt i32 %i.agd, 1
  %or.cond = select i1 %i.agc, i1 true, i1 %i.age
  br i1 %or.cond, label %js_date_parse_otherstring.exit.thread, label %js_date_parse_otherstring.exit

js_date_parse_otherstring.exit.thread:            ; preds = %bb.ax, %bb.bn, %bb.ao, %bb.be, %string_get_tzabbr.exit.i, %bb.bo, %.split.loop.exit.i136.i, %.split.loop.exit.i146.i, %bb.bi, %bb.bq, %bb.ca, %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.cd

js_date_parse_otherstring.exit:                   ; preds = %bb.ca
  %i.agf = add nsw i32 %i.agb, -1
  store i32 %i.agf, ptr %i.od, align 4, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.cb

bb.cb:                                            ; preds = %js_date_parse_otherstring.exit, %js_date_parse_isostring.exit.thread50, %js_date_parse_isostring.exit
  %.045 = phi i8 [ 0, %js_date_parse_isostring.exit ], [ %.4, %js_date_parse_otherstring.exit ], [ %.246.ph, %js_date_parse_isostring.exit.thread50 ]
  %i.agg = load <2 x i32>, ptr %i.od, align 4, !tbaa !191 ; 2 uses
  %i.agh = load <2 x i32>, ptr %i.of, align 4, !tbaa !191 ; 4 uses
  %i.agi = extractelement <2 x i32> %i.agh, i64 0
  %i.agj = shufflevector <2 x i32> %i.agh, <2 x i32> %i.agg, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.agk = icmp slt <4 x i32> %i.agj, <i32 60, i32 25, i32 32, i32 12> ; 3 uses
  %.bc = bitcast <4 x i1> %i.agk to <2 x i2>
  %.extract = extractelement <2 x i2> %.bc, i64 0
  %i.agl = icmp eq i2 %.extract, -1
  %i.agm = load i32, ptr %i.oh, align 4, !tbaa !191 ; 3 uses
  %i.agn = icmp slt i32 %i.agm, 60
  %i.ago = select i1 %i.agn, i1 %i.agl, i1 false
  %i.agp = extractelement <4 x i1> %i.agk, i64 2
  %i.agq = select i1 %i.ago, i1 %i.agp, i1 false
  %i.agr = extractelement <4 x i1> %i.agk, i64 3
  %spec.select.4 = select i1 %i.agq, i1 %i.agr, i1 false ; 2 uses
  %i.ags = icmp eq i32 %i.agi, 24
  br i1 %i.ags, label %.split, label %bb.cc

.split:                                           ; preds = %bb.cb
  %i.agt = load i32, ptr %i.oi, align 8, !tbaa !191
  %i.agu = extractelement <2 x i32> %i.agh, i64 1
  %i.agv = or i32 %i.agu, %i.agt
  %i.agw = or i32 %i.agv, %i.agm
  %.not = icmp eq i32 %i.agw, 0
  %spec.select39 = select i1 %.not, i1 %spec.select.4, i1 false
  br i1 %spec.select39, label %.preheader.preheader, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  br i1 %spec.select.4, label %.preheader.preheader, label %bb.cd

.preheader.preheader:                             ; preds = %.split, %bb.cc
  %i.agx = load i32, ptr %i.d, align 16, !tbaa !191
  %i.agy = sitofp i32 %i.agx to double
  store double %i.agy, ptr %i.e, align 16, !tbaa !504
  %i.agz = sitofp <2 x i32> %i.agg to <2 x double>
  %i.aha = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <2 x double> %i.agz, ptr %i.aha, align 8, !tbaa !504
  %i.ahb = sitofp <2 x i32> %i.agh to <2 x double>
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <2 x double> %i.ahb, ptr %i.ahc, align 8, !tbaa !504
  %i.ahd = sitofp i32 %i.agm to double
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store double %i.ahd, ptr %i.ahe, align 8, !tbaa !504
  %i.ahf = load i32, ptr %i.oi, align 8, !tbaa !191
  %i.ahg = sitofp i32 %i.ahf to double
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store double %i.ahg, ptr %i.ahh, align 16, !tbaa !504
  %i.ahi = zext nneg i8 %.045 to i32
  %i.ahj = call fastcc double @set_date_fields(ptr noundef %i.e, i32 noundef %i.ahi)
  %i.ahk = load i32, ptr %i.oj, align 16, !tbaa !191
  %i.ahl = mul nsw i32 %i.ahk, 60000
  %i.ahm = sitofp i32 %i.ahl to double
  %i.ahn = fsub double %i.ahj, %i.ahm
  %i.aho = bitcast double %i.ahn to i64
  br label %bb.cd

bb.cd:                                            ; preds = %.split, %js_date_parse_otherstring.exit.thread, %bb.cc, %.preheader.preheader
  %i.ahp = phi i64 [ 9221120237041090560, %js_date_parse_otherstring.exit.thread ], [ %i.aho, %.preheader.preheader ], [ 9221120237041090560, %bb.cc ], [ 9221120237041090560, %.split ] ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !232
  %i.ahs = trunc i64 %i.l to i32
  %i.aht = icmp ugt i32 %i.ahs, -10
  br i1 %i.aht, label %bb.ce, label %JS_FreeValue.exit

bb.ce:                                            ; preds = %bb.cd
  %i.ahu = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !191 ; 2 uses
  %i.ahw = add nsw i32 %i.ahv, -1
  store i32 %i.ahw, ptr %i.ahu, align 4, !tbaa !191
  %i.ahx = icmp slt i32 %i.ahv, 2
  br i1 %i.ahx, label %bb.cf, label %JS_FreeValue.exit

bb.cf:                                            ; preds = %bb.ce
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ahr, i64 %i.k, i64 %i.l), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.a
  %i.ahy = phi i64 [ 0, %bb.a ], [ %i.ahp, %bb.cd ], [ %i.ahp, %bb.ce ], [ %i.ahp, %bb.cf ]
  %.sroa.432.0 = phi i64 [ 6, %bb.a ], [ 8, %bb.cd ], [ 8, %bb.ce ], [ 8, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.ahy, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.432.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc double @set_date_fields(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef range(i32 0, 16) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.tm, align 8                 ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load double, ptr %0, align 8, !tbaa !504
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !504 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !504
  %i.h = fdiv double %i.e, 1.200000e+01
  %i.i = tail call double @llvm.floor.f64(double %i.h)
  %i.j = fadd double %i.c, %i.i                   ; 3 uses
  %i.k = tail call double @fmod(double noundef %i.e, double noundef 1.200000e+01) #49 ; 3 uses
  %i.l = fcmp olt double %i.j, -2.718210e+05
  %i.m = fcmp ogt double %i.j, 2.757600e+05
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %time_clip.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp olt double %i.k, 0.000000e+00
  %i.o = fadd double %i.k, 1.200000e+01
  %.048 = select i1 %i.n, double %i.o, double %i.k
  %i.p = fptosi double %i.j to i32                ; 4 uses
  %i.q = fptosi double %.048 to i32               ; 4 uses
  %i.r = sext i32 %i.p to i64                     ; 4 uses
  %i.s = mul nsw i64 %i.r, 365
  %i.t = add nsw i64 %i.s, -719050
  %i.u = add nsw i64 %i.r, -1969
  %i.v = ashr i64 %i.u, 2
  %i.w = add nsw i64 %i.t, %i.v
  %i.x = add nsw i64 %i.r, -1901                  ; 2 uses
  %i.y = srem i64 %i.x, 100                       ; 2 uses
  %isneg.i4.i = icmp slt i64 %i.y, 0
  %.neg12.i = select i1 %isneg.i4.i, i64 -100, i64 0
  %.neg8.i = sub nsw i64 %i.x, %i.y
  %i.z = add nsw i64 %.neg8.i, %.neg12.i
  %.neg.i = sdiv i64 %i.z, -100
  %i.aa = add nsw i64 %i.w, %.neg.i
  %i.ab = add nsw i64 %i.r, -1601                 ; 2 uses
  %i.ac = srem i64 %i.ab, 400                     ; 2 uses
  %isneg.i5.i = icmp slt i64 %i.ac, 0
  %.neg13.i = select i1 %isneg.i5.i, i64 -400, i64 0
  %.neg11.i = sub nsw i64 %i.ab, %i.ac
  %i.ad = add nsw i64 %.neg11.i, %.neg13.i
  %i.ae = sdiv i64 %i.ad, 400
  %i.af = add nsw i64 %i.aa, %i.ae                ; 3 uses
  %i.ag = icmp sgt i32 %i.q, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 2 uses
  %i.ah = add nsw i64 %i.af, 31
  %exitcond.peel.not = icmp eq i32 %i.q, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph
  %i.ai = and i32 %i.p, 3
  %.not.i = icmp eq i32 %i.ai, 0
  %i.aj = zext i1 %.not.i to i64
  %i.ak = srem i32 %i.p, 100
  %.not3.i = icmp eq i32 %i.ak, 0
  %.neg.i53 = sext i1 %.not3.i to i64
  %i.al = add nsw i64 %i.aj, %.neg.i53
  %i.am = srem i32 %i.p, 400
  %.not4.i = icmp eq i32 %i.am, 0
  %i.an = zext i1 %.not4.i to i64
  %i.ao = add nsw i64 %i.al, %i.an
  %i.ap = add nsw i64 %i.af, 59
  %spec.select.peel59 = add nsw i64 %i.ap, %i.ao  ; 3 uses
  %exitcond.peel61.not = icmp eq i32 %i.q, 2
  br i1 %exitcond.peel61.not, label %._crit_edge, label %.peel.next58.preheader

end_hunk_0
