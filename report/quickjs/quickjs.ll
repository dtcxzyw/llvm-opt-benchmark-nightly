Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 181
begin_hunk_0_@js_Date_parse:bb.a
  %i.xo = mul nsw i32 %i.xh, 10
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
  %5 = icmp slt i32 %.019.i125.i.lcssa, 50
  %6 = select i1 %5, i32 2000, i32 1900
  %i.aak = select i1 %i.aaj, i32 %6, i32 0
  %i.aal = add nsw i32 %i.aak, %.019.i125.i.lcssa
  store i32 %i.aal, ptr %i.d, align 16, !tbaa !191
  br label %string_skip_until.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.aam = icmp eq i32 %.092.ph.i, 3
  br i1 %i.aam, label %js_date_parse_otherstring.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aan = add nsw i32 %.092.ph.i, 1
  %i.aao = sext i32 %.092.ph.i to i64
  %i.aap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aao
  store i32 %.019.i125.i.lcssa, ptr %i.aap, align 4, !tbaa !191
  br label %string_skip_until.exit.i

.loopexit.i:                                      ; preds = %bb.ar, %bb.as, %bb.at, %.split.loop.exit.i127.i
  %i.aaq = add i8 %i.wr, -97
  %or.cond.i3.i.i.i = icmp ult i8 %i.aaq, 26
  %i.aar = add nsw i8 %i.wr, -32
  %i.aas = select i1 %or.cond.i3.i.i.i, i8 %i.aar, i8 %i.wr ; 2 uses
  %i.aat = getelementptr i8, ptr %i.wt, i64 1     ; 3 uses
  %i.aau = getelementptr i8, ptr %i.wt, i64 2
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.loopexit.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aav = mul nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.aaw = getelementptr inbounds nuw i8, ptr @month_names, i64 %i.aav ; 3 uses
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !218 ; 3 uses
  %i.aay = add i8 %i.aax, -97
  %or.cond.i144.i.i.i = icmp ult i8 %i.aay, 26
  %i.aaz = add nsw i8 %i.aax, -32
  %i.aba = select i1 %or.cond.i144.i.i.i, i8 %i.aaz, i8 %i.aax
  %.not5.i.i.i = icmp eq i8 %i.aas, %i.aba
  br i1 %.not5.i.i.i, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.abb = load i8, ptr %i.aat, align 1, !tbaa !218 ; 3 uses
  %i.abc = add i8 %i.abb, -97
  %or.cond.i.i.i.i = icmp ult i8 %i.abc, 26
  %i.abd = add nsw i8 %i.abb, -32
  %i.abe = select i1 %or.cond.i.i.i.i, i8 %i.abd, i8 %i.abb
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !218 ; 3 uses
  %i.abh = add i8 %i.abg, -97
  %or.cond.i14.i.i.i = icmp ult i8 %i.abh, 26
  %i.abi = add nsw i8 %i.abg, -32
  %i.abj = select i1 %or.cond.i14.i.i.i, i8 %i.abi, i8 %i.abg
  %.not.i.i.i = icmp eq i8 %i.abe, %i.abj
  br i1 %.not.i.i.i, label %.lr.ph.1.i.i.i, label %._crit_edge.i.i.i

.lr.ph.1.i.i.i:                                   ; preds = %.lr.ph.preheader.i.i.i
  %i.abk = load i8, ptr %i.aau, align 1, !tbaa !218 ; 3 uses
  %i.abl = add i8 %i.abk, -97
  %or.cond.i.1.i.i.i = icmp ult i8 %i.abl, 26
  %i.abm = add nsw i8 %i.abk, -32
  %i.abn = select i1 %or.cond.i.1.i.i.i, i8 %i.abm, i8 %i.abk
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aaw, i64 2
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !218 ; 3 uses
  %i.abq = add i8 %i.abp, -97
  %or.cond.i14.1.i.i.i = icmp ult i8 %i.abq, 26
  %i.abr = add nsw i8 %i.abp, -32
  %i.abs = select i1 %or.cond.i14.1.i.i.i, i8 %i.abr, i8 %i.abp
  %.not.1.i.i.i = icmp eq i8 %i.abn, %i.abs
  br i1 %.not.1.i.i.i, label %bb.bg, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.1.i.i.i, %.lr.ph.preheader.i.i.i, %.preheader.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 12
  br i1 %exitcond.not.i.i.i, label %string_get_month.exit.i, label %.preheader.i.i.i, !llvm.loop !1970

bb.bg:                                            ; preds = %.lr.ph.1.i.i.i
  store i32 %i.wh, ptr %i.of, align 4
  store i32 %i.wg, ptr %i.oj, align 16
  %i.abt = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.abu = add nuw nsw i32 %i.abt, 1
  store i32 %i.abu, ptr %i.od, align 4, !tbaa !191
  %i.abv = add nsw i32 %.promoted.i177.i, 3       ; 3 uses
  store i32 %i.abv, ptr %i.a, align 4, !tbaa !191
  %i.abw = sext i32 %i.abv to i64                 ; 2 uses
  %i.abx = getelementptr inbounds i8, ptr %i.f, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !218 ; 2 uses
  %i.abz = zext nneg i8 %i.aby to i64
  %memchr.bounds214.i = icmp ugt i8 %i.aby, 63
  %i.aca = shl nuw i64 1, %i.abz
  %i.acb = and i64 %i.aca, 288125926842040321
  %memchr.bits215.i = icmp eq i64 %i.acb, 0
  %memchr216.not.i = select i1 %memchr.bounds214.i, i1 true, i1 %memchr.bits215.i
  br i1 %memchr216.not.i, label %.lr.ph.i154.i, label %string_skip_until.exit.i

.lr.ph.i154.i:                                    ; preds = %bb.bg, %.lr.ph.i154.i
  %indvars.iv.i155.i = phi i64 [ %indvars.iv.next.i156.i, %.lr.ph.i154.i ], [ %i.abw, %bb.bg ]
  %indvars.iv.next.i156.i = add nsw i64 %indvars.iv.i155.i, 1 ; 3 uses
  %i.acc = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i156.i
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !218 ; 2 uses
  %i.ace = zext nneg i8 %i.acd to i64
  %memchr.bounds217.i = icmp ugt i8 %i.acd, 63
  %i.acf = shl nuw i64 1, %i.ace
  %i.acg = and i64 %i.acf, 288125926842040321
  %memchr.bits218.i = icmp eq i64 %i.acg, 0
  %memchr219.not.i = select i1 %memchr.bounds217.i, i1 true, i1 %memchr.bits218.i
  br i1 %memchr219.not.i, label %.lr.ph.i154.i, label %string_skip_until.exit.loopexit.i, !llvm.loop !1971

string_get_month.exit.i:                          ; preds = %._crit_edge.i.i.i
  br i1 %i.wf, label %.lr.ph.i157.i, label %.lr.ph.preheader.i.i172.i.preheader

.lr.ph.preheader.i.i172.i.preheader:              ; preds = %.lr.ph.i161.1.i, %.lr.ph.i157.1.i, %.lr.ph.i157.i, %string_get_month.exit.i
  br label %.lr.ph.preheader.i.i172.i

.lr.ph.i157.i:                                    ; preds = %string_get_month.exit.i
  %i.ach = add nsw i64 %i.ws, 2                   ; 2 uses
  switch i8 %i.aas, label %.lr.ph.preheader.i.i172.i.preheader [
    i8 80, label %.lr.ph.i157.1.i
    i8 65, label %.lr.ph.i161.1.i
  ]

.lr.ph.i157.1.i:                                  ; preds = %.lr.ph.i157.i
  %i.aci = load i8, ptr %i.aat, align 1, !tbaa !218 ; 3 uses
  %i.acj = add i8 %i.aci, -97
  %or.cond.i.i.1.i = icmp ult i8 %i.acj, 26
  %i.ack = add nsw i8 %i.aci, -32
  %i.acl = select i1 %or.cond.i.i.1.i, i8 %i.ack, i8 %i.aci
  %.not10.i.1.i = icmp eq i8 %i.acl, 77
  br i1 %.not10.i.1.i, label %bb.bh, label %.lr.ph.preheader.i.i172.i.preheader

bb.bh:                                            ; preds = %.lr.ph.i157.1.i
  %.not119.i = icmp eq i32 %i.wh, 12
  %i.acm = add nsw i32 %i.wh, 12
  %spec.select133 = select i1 %.not119.i, i32 12, i32 %i.acm
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.bj, %bb.bh, %bb.bl
  %i.acn = phi i32 [ %i.adm, %bb.bl ], [ %i.wg, %bb.bh ], [ %i.wg, %bb.bj ]
  %i.aco = phi i32 [ %i.wh, %bb.bl ], [ %spec.select133, %bb.bh ], [ %spec.select134, %bb.bj ]
  %.6 = phi i8 [ 0, %bb.bl ], [ %.4, %bb.bh ], [ %.4, %bb.bj ]
  %.in.i = phi i64 [ %indvars.iv.next.i.i175.i, %bb.bl ], [ %i.ach, %bb.bh ], [ %i.ach, %bb.bj ]
  %i.acp = trunc i64 %.in.i to i32
  br label %bb.ae, !llvm.loop !1972

.lr.ph.i161.1.i:                                  ; preds = %.lr.ph.i157.i
  %i.acq = load i8, ptr %i.aat, align 1, !tbaa !218 ; 3 uses
  %i.acr = add i8 %i.acq, -97
  %or.cond.i.i164.1.i = icmp ult i8 %i.acr, 26
  %i.acs = add nsw i8 %i.acq, -32
  %i.act = select i1 %or.cond.i.i164.1.i, i8 %i.acs, i8 %i.acq
  %.not10.i166.1.i = icmp eq i8 %i.act, 77
  br i1 %.not10.i166.1.i, label %bb.bi, label %.lr.ph.preheader.i.i172.i.preheader

bb.bi:                                            ; preds = %.lr.ph.i161.1.i
  %i.acu = icmp sgt i32 %i.wh, 12
  br i1 %i.acu, label %js_date_parse_otherstring.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.acv = icmp eq i32 %i.wh, 12
  %spec.select134 = select i1 %i.acv, i32 0, i32 %i.wh
  br label %.backedge.i

.lr.ph.preheader.i.i172.i:                        ; preds = %.lr.ph.preheader.i.i172.i.preheader, %string_match.exit.i.i
  %.011.i.i = phi i64 [ %i.adj, %string_match.exit.i.i ], [ 0, %.lr.ph.preheader.i.i172.i.preheader ] ; 2 uses
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr @js_tzabbr, i64 %.011.i.i ; 3 uses
  %i.acx = load i8, ptr %i.acw, align 8, !tbaa !218
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bk, %.lr.ph.preheader.i.i172.i
  %indvars.iv.i.i173.i = phi i64 [ %i.ws, %.lr.ph.preheader.i.i172.i ], [ %indvars.iv.next.i.i175.i, %bb.bk ] ; 2 uses
  %i.acy = phi i8 [ %i.acx, %.lr.ph.preheader.i.i172.i ], [ %i.adi, %bb.bk ] ; 3 uses
  %.0816.i.i.i = phi ptr [ %i.acw, %.lr.ph.preheader.i.i172.i ], [ %i.adh, %bb.bk ]
  %i.acz = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i.i173.i
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !218 ; 3 uses
  %i.adb = add i8 %i.ada, -97
  %or.cond.i.i.i174.i = icmp ult i8 %i.adb, 26
  %i.adc = add nsw i8 %i.ada, -32
  %i.add = select i1 %or.cond.i.i.i174.i, i8 %i.adc, i8 %i.ada
  %i.ade = add i8 %i.acy, -97
  %or.cond.i11.i.i.i = icmp ult i8 %i.ade, 26
  %i.adf = add nsw i8 %i.acy, -32
  %i.adg = select i1 %or.cond.i11.i.i.i, i8 %i.adf, i8 %i.acy
  %.not10.i.i.i = icmp eq i8 %i.add, %i.adg
  br i1 %.not10.i.i.i, label %bb.bk, label %string_match.exit.i.i

bb.bk:                                            ; preds = %.lr.ph.i.i.i
  %i.adh = getelementptr inbounds nuw i8, ptr %.0816.i.i.i, i64 1 ; 2 uses
  %indvars.iv.next.i.i175.i = add nsw i64 %indvars.iv.i.i173.i, 1 ; 2 uses
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !218 ; 2 uses
  %.not.i.i176.i = icmp eq i8 %i.adi, 0
  br i1 %.not.i.i176.i, label %bb.bl, label %.lr.ph.i.i.i, !llvm.loop !1973

string_match.exit.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.adj = add nuw nsw i64 %.011.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.adj, 18
  br i1 %exitcond.not.i.i, label %string_get_tzabbr.exit.i, label %.lr.ph.preheader.i.i172.i, !llvm.loop !1974

bb.bl:                                            ; preds = %bb.bk
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acw, i64 6
  %i.adl = load i16, ptr %i.adk, align 2, !tbaa !1978
  %i.adm = sext i16 %i.adl to i32
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
  %.0.i = phi i32 [ %i.adt, %bb.bm ], [ 0, %string_get_tzabbr.exit.i ] ; 2 uses
  %i.adn = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !218 ; 3 uses
  %.not117.i = icmp eq i8 %i.ado, 0
  br i1 %.not117.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.adp = icmp eq i8 %i.ado, 40
  %i.adq = zext i1 %i.adp to i32
  %i.adr = add nsw i32 %.0.i, %i.adq
  %i.ads = icmp eq i8 %i.ado, 41
  %.neg.i = sext i1 %i.ads to i32
  %i.adt = add i32 %i.adr, %.neg.i                ; 2 uses
  %.not118.i = icmp eq i32 %i.adt, 0
  br i1 %.not118.i, label %string_skip_until.exit.loopexit221.i, label %.preheader.i, !llvm.loop !1975

bb.bn:                                            ; preds = %.preheader.i
  %i.adu = trunc nsw i64 %indvars.iv.i to i32     ; 2 uses
  store i32 %i.adu, ptr %i.a, align 4
  %i.adv = icmp slt i32 %.0.i, 1
  br i1 %i.adv, label %string_skip_until.exit.i, label %js_date_parse_otherstring.exit.thread

bb.bo:                                            ; preds = %string_get_tzabbr.exit.i
  %narrow.i = add nuw nsw i8 %.096.ph.i, %.098.ph.i
  %narrow115.i = add nuw nsw i8 %narrow.i, %.094.ph.i
  %i.adw = zext nneg i8 %narrow115.i to i32
  %i.adx = sub nsw i32 0, %i.adw
  %.not116.i = icmp eq i32 %.092.ph.i, %i.adx
  br i1 %.not116.i, label %bb.bp, label %js_date_parse_otherstring.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.ady = zext nneg i8 %i.wr to i64
  %memchr.bounds.i = icmp ugt i8 %i.wr, 63
  %i.adz = shl nuw i64 1, %i.ady
  %i.aea = and i64 %i.adz, 177025667039233
  %memchr.bits.i = icmp eq i64 %i.aea, 0
  %memchr210.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr210.not.i, label %.lr.ph.i180.i, label %string_skip_until.exit.i

.lr.ph.i180.i:                                    ; preds = %bb.bp, %.lr.ph.i180.i
  %indvars.iv.i181.i = phi i64 [ %indvars.iv.next.i182.i, %.lr.ph.i180.i ], [ %i.ws, %bb.bp ]
  %indvars.iv.next.i182.i = add nsw i64 %indvars.iv.i181.i, 1 ; 3 uses
  %i.aeb = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i182.i
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !218 ; 2 uses
  %i.aed = zext nneg i8 %i.aec to i64
  %memchr.bounds211.i = icmp ugt i8 %i.aec, 63
  %i.aee = shl nuw i64 1, %i.aed
  %i.aef = and i64 %i.aee, 177025667039233
  %memchr.bits212.i = icmp eq i64 %i.aef, 0
  %memchr213.not.i = select i1 %memchr.bounds211.i, i1 true, i1 %memchr.bits212.i
  br i1 %memchr213.not.i, label %.lr.ph.i180.i, label %string_skip_until.exit.loopexit220.i, !llvm.loop !1971

string_skip_until.exit.loopexit.i:                ; preds = %.lr.ph.i154.i
  %i.aeg = trunc nsw i64 %indvars.iv.next.i156.i to i32 ; 2 uses
  store i32 %i.aeg, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_until.exit.i

string_skip_until.exit.loopexit220.i:             ; preds = %.lr.ph.i180.i
  %i.aeh = trunc nsw i64 %indvars.iv.next.i182.i to i32 ; 2 uses
  store i32 %i.aeh, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_until.exit.i

string_skip_until.exit.loopexit221.i:             ; preds = %bb.bm
  %i.aei = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.aei, ptr %i.a, align 4
  br label %string_skip_until.exit.i

string_skip_until.exit.i:                         ; preds = %bb.aj, %bb.al, %bb.am, %bb.ah, %string_skip_until.exit.loopexit221.i, %string_skip_until.exit.loopexit220.i, %string_skip_until.exit.loopexit.i, %bb.bp, %bb.bn, %bb.bg, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.ax, %bb.ax, %bb.aq, %.split.loop.exit.i.i
  %.promoted.i185.i = phi i32 [ %i.aeg, %string_skip_until.exit.loopexit.i ], [ %i.abv, %bb.bg ], [ %i.aeh, %string_skip_until.exit.loopexit220.i ], [ %.promoted.i177.i, %bb.bp ], [ %i.adu, %bb.bn ], [ %i.aei, %string_skip_until.exit.loopexit221.i ], [ %.promoted.i185.i.pre, %bb.ba ], [ %i.zk, %bb.ax ], [ %i.zk, %bb.ax ], [ %i.yq, %bb.bb ], [ %i.yq, %bb.bd ], [ %i.yq, %bb.bf ], [ %i.wx, %.split.loop.exit.i.i ], [ %i.xt, %bb.aq ], [ %.promoted.i185.i.pre234, %bb.ah ], [ %i.wx, %bb.am ], [ %i.wx, %bb.al ], [ %i.wx, %bb.aj ] ; 2 uses
  %.5 = phi i8 [ %.4, %string_skip_until.exit.loopexit.i ], [ %.4, %bb.bg ], [ %.4, %string_skip_until.exit.loopexit220.i ], [ %.4, %bb.bp ], [ %.4, %bb.bn ], [ %.4, %string_skip_until.exit.loopexit221.i ], [ %.4, %bb.ba ], [ %.4, %bb.ax ], [ %.4, %bb.ax ], [ %.4, %bb.bb ], [ %.4, %bb.bd ], [ %.4, %bb.bf ], [ %.4, %.split.loop.exit.i.i ], [ %.4, %bb.aq ], [ 0, %bb.ah ], [ %.4, %bb.am ], [ %.4, %bb.al ], [ %.4, %bb.aj ]
  %.199.i = phi i8 [ %.098.ph.i, %string_skip_until.exit.loopexit.i ], [ %.098.ph.i, %bb.bg ], [ %.098.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.098.ph.i, %bb.bp ], [ %.098.ph.i, %bb.bn ], [ %.098.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.098.ph.i, %bb.ba ], [ %.098.ph.i, %bb.ax ], [ %.098.ph.i, %bb.ax ], [ 1, %bb.bb ], [ 1, %bb.bd ], [ %.098.ph.i, %bb.bf ], [ %.098.ph.i, %.split.loop.exit.i.i ], [ 1, %bb.aq ], [ %.098.ph.i, %bb.ah ], [ %.098.ph.i, %bb.am ], [ %.098.ph.i, %bb.al ], [ %.098.ph.i, %bb.aj ]
  %.197.i = phi i8 [ 1, %string_skip_until.exit.loopexit.i ], [ 1, %bb.bg ], [ %.096.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.096.ph.i, %bb.bp ], [ %.096.ph.i, %bb.bn ], [ %.096.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.096.ph.i, %bb.ba ], [ %.096.ph.i, %bb.ax ], [ %.096.ph.i, %bb.ax ], [ %.096.ph.i, %bb.bb ], [ %.096.ph.i, %bb.bd ], [ %.096.ph.i, %bb.bf ], [ %.096.ph.i, %.split.loop.exit.i.i ], [ %.096.ph.i, %bb.aq ], [ %.096.ph.i, %bb.ah ], [ %.096.ph.i, %bb.am ], [ %.096.ph.i, %bb.al ], [ %.096.ph.i, %bb.aj ]
  %.195.i = phi i8 [ %.094.ph.i, %string_skip_until.exit.loopexit.i ], [ %.094.ph.i, %bb.bg ], [ %.094.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.094.ph.i, %bb.bp ], [ %.094.ph.i, %bb.bn ], [ %.094.ph.i, %string_skip_until.exit.loopexit221.i ], [ 1, %bb.ba ], [ 1, %bb.ax ], [ 1, %bb.ax ], [ %.094.ph.i, %bb.bb ], [ %.094.ph.i, %bb.bd ], [ %.094.ph.i, %bb.bf ], [ %.094.ph.i, %.split.loop.exit.i.i ], [ %.094.ph.i, %bb.aq ], [ 1, %bb.ah ], [ %.094.ph.i, %bb.am ], [ %.094.ph.i, %bb.al ], [ %.094.ph.i, %bb.aj ]
  %.193.i = phi i32 [ %.092.ph.i, %string_skip_until.exit.loopexit.i ], [ %.092.ph.i, %bb.bg ], [ %.092.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.092.ph.i, %bb.bp ], [ %.092.ph.i, %bb.bn ], [ %.092.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.092.ph.i, %bb.ba ], [ %.092.ph.i, %bb.ax ], [ %.092.ph.i, %bb.ax ], [ %.092.ph.i, %bb.bb ], [ %.092.ph.i, %bb.bd ], [ %i.aan, %bb.bf ], [ %.092.ph.i, %.split.loop.exit.i.i ], [ %.092.ph.i, %bb.aq ], [ %.092.ph.i, %bb.ah ], [ %.092.ph.i, %bb.am ], [ %.092.ph.i, %bb.al ], [ %.092.ph.i, %bb.aj ]
  %i.aej = sext i32 %.promoted.i185.i to i64      ; 2 uses
  %i.aek = getelementptr inbounds i8, ptr %i.f, i64 %i.aej
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !218
  %i.aem = and i8 %i.ael, -4
  %i.aen = icmp eq i8 %i.aem, 44
  br i1 %i.aen, label %.critedge.i.i, label %string_skip_separators.exit.i

.critedge.i.i:                                    ; preds = %string_skip_until.exit.i, %.critedge.i.i
  %indvars.iv.i187.i = phi i64 [ %indvars.iv.next.i188.i, %.critedge.i.i ], [ %i.aej, %string_skip_until.exit.i ]
  %indvars.iv.next.i188.i = add nsw i64 %indvars.iv.i187.i, 1 ; 3 uses
  %i.aeo = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i188.i
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !218
  %i.aeq = and i8 %i.aep, -4
  %i.aer = icmp eq i8 %i.aeq, 44
  br i1 %i.aer, label %.critedge.i.i, label %string_skip_separators.exit.loopexit.i, !llvm.loop !1976

string_skip_separators.exit.loopexit.i:           ; preds = %.critedge.i.i
  %i.aes = trunc nsw i64 %indvars.iv.next.i188.i to i32 ; 2 uses
  store i32 %i.aes, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_separators.exit.i

string_skip_separators.exit.i:                    ; preds = %string_skip_separators.exit.loopexit.i, %string_skip_until.exit.i
  %.promoted353.i = phi i32 [ %i.aes, %string_skip_separators.exit.loopexit.i ], [ %.promoted.i185.i, %string_skip_until.exit.i ]
  %.promoted.pre = load i32, ptr %i.of, align 4
  %.promoted123.pre = load i32, ptr %i.oj, align 16
  br label %.outer.i, !llvm.loop !1972

bb.bq:                                            ; preds = %string_skip_spaces.exit.i
  store i32 %i.wh, ptr %i.of, align 4
  store i32 %i.wg, ptr %i.oj, align 16
  %i.aet = trunc nuw i8 %.098.ph.i to i1          ; 2 uses
  %i.aeu = zext nneg i8 %.098.ph.i to i32
  %i.aev = trunc nuw i8 %.096.ph.i to i1          ; 2 uses
  %i.aew = zext nneg i8 %.096.ph.i to i32
  %i.aex = add nuw nsw i32 %i.aew, %i.aeu
  %i.aey = add i32 %i.aex, %.092.ph.i
  %i.aez = icmp sgt i32 %i.aey, 3
  br i1 %i.aez, label %js_date_parse_otherstring.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  switch i32 %.092.ph.i, label %js_date_parse_otherstring.exit.thread [
    i32 0, label %bb.bs
    i32 1, label %bb.bt
    i32 2, label %bb.bu
    i32 3, label %bb.bz
  ]

bb.bs:                                            ; preds = %bb.br
  br i1 %i.aet, label %thread-pre-split.i, label %js_date_parse_otherstring.exit.thread

bb.bt:                                            ; preds = %bb.br
  %i.afa = load i32, ptr %i.b, align 4, !tbaa !191 ; 2 uses
  br i1 %i.aev, label %thread-pre-split.sink.split.i, label %bb.ca

bb.bu:                                            ; preds = %bb.br
  br i1 %i.aet, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.afb = load i32, ptr %i.b, align 4, !tbaa !191
  %i.afc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !191
  store i32 %i.afd, ptr %i.oe, align 8, !tbaa !191
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bu
  br i1 %i.aev, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.afe = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !191 ; 3 uses
  %i.afg = icmp slt i32 %i.aff, 100
  %7 = icmp slt i32 %i.aff, 50
  %8 = select i1 %7, i32 2000, i32 1900
  %i.afh = select i1 %i.afg, i32 %8, i32 0
  %i.afi = add i32 %i.afh, %i.aff
  store i32 %i.afi, ptr %i.d, align 16, !tbaa !191
  %i.afj = load i32, ptr %i.b, align 4, !tbaa !191
  br label %thread-pre-split.sink.split.i

bb.by:                                            ; preds = %bb.bw
  %i.afk = load i32, ptr %i.b, align 4, !tbaa !191
  %i.afl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !191
  store i32 %i.afm, ptr %i.oe, align 8, !tbaa !191
  br label %bb.ca

bb.bz:                                            ; preds = %bb.br
  %i.afn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !191 ; 3 uses
  %i.afp = icmp slt i32 %i.afo, 100
  %9 = icmp slt i32 %i.afo, 50
  %10 = select i1 %9, i32 2000, i32 1900
  %i.afq = select i1 %i.afp, i32 %10, i32 0
  %i.afr = add i32 %i.afq, %i.afo
  store i32 %i.afr, ptr %i.d, align 16, !tbaa !191
  %i.afs = load i32, ptr %i.b, align 4, !tbaa !191
  %i.aft = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !191
  store i32 %i.afu, ptr %i.oe, align 8, !tbaa !191
  br label %bb.ca

thread-pre-split.sink.split.i:                    ; preds = %bb.bx, %bb.bt
  %.sink.i = phi i32 [ %i.afj, %bb.bx ], [ %i.afa, %bb.bt ]
  store i32 %.sink.i, ptr %i.oe, align 8, !tbaa !191
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.sink.split.i, %bb.bs
  %.pr.i = load i32, ptr %i.od, align 4, !tbaa !191
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bt, %thread-pre-split.i, %bb.bz, %bb.by, %bb.bv
  %i.afv = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.afb, %bb.bv ], [ %i.afk, %bb.by ], [ %i.afs, %bb.bz ], [ %i.afa, %bb.bt ] ; 2 uses
  %i.afw = icmp slt i32 %i.afv, 1
  %i.afx = load i32, ptr %i.oe, align 8
  %i.afy = icmp slt i32 %i.afx, 1
  %or.cond = select i1 %i.afw, i1 true, i1 %i.afy
  br i1 %or.cond, label %js_date_parse_otherstring.exit.thread, label %js_date_parse_otherstring.exit

js_date_parse_otherstring.exit.thread:            ; preds = %bb.ax, %bb.bn, %bb.ao, %bb.be, %string_get_tzabbr.exit.i, %bb.bo, %.split.loop.exit.i136.i, %.split.loop.exit.i146.i, %bb.bi, %bb.bq, %bb.ca, %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.cd

js_date_parse_otherstring.exit:                   ; preds = %bb.ca
  %i.afz = add nsw i32 %i.afv, -1
  store i32 %i.afz, ptr %i.od, align 4, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.cb

bb.cb:                                            ; preds = %js_date_parse_otherstring.exit, %js_date_parse_isostring.exit.thread50, %js_date_parse_isostring.exit
  %.045 = phi i8 [ 0, %js_date_parse_isostring.exit ], [ %.4, %js_date_parse_otherstring.exit ], [ %.246.ph, %js_date_parse_isostring.exit.thread50 ]
  %i.aga = load <2 x i32>, ptr %i.od, align 4, !tbaa !191 ; 2 uses
  %i.agb = load <2 x i32>, ptr %i.of, align 4, !tbaa !191 ; 4 uses
  %i.agc = extractelement <2 x i32> %i.agb, i64 0
  %i.agd = shufflevector <2 x i32> %i.agb, <2 x i32> %i.aga, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.age = icmp slt <4 x i32> %i.agd, <i32 60, i32 25, i32 32, i32 12> ; 3 uses
  %.bc = bitcast <4 x i1> %i.age to <2 x i2>
  %.extract = extractelement <2 x i2> %.bc, i64 0
  %i.agf = icmp eq i2 %.extract, -1
  %i.agg = load i32, ptr %i.oh, align 4, !tbaa !191 ; 3 uses
  %i.agh = icmp slt i32 %i.agg, 60
  %i.agi = select i1 %i.agh, i1 %i.agf, i1 false
  %i.agj = extractelement <4 x i1> %i.age, i64 2
  %i.agk = select i1 %i.agi, i1 %i.agj, i1 false
  %i.agl = extractelement <4 x i1> %i.age, i64 3
  %spec.select.4 = select i1 %i.agk, i1 %i.agl, i1 false ; 2 uses
  %i.agm = icmp eq i32 %i.agc, 24
  br i1 %i.agm, label %.split, label %bb.cc

.split:                                           ; preds = %bb.cb
  %i.agn = load i32, ptr %i.oi, align 8, !tbaa !191
  %i.ago = extractelement <2 x i32> %i.agb, i64 1
  %i.agp = or i32 %i.ago, %i.agn
  %i.agq = or i32 %i.agp, %i.agg
  %.not = icmp eq i32 %i.agq, 0
  %spec.select39 = select i1 %.not, i1 %spec.select.4, i1 false
  br i1 %spec.select39, label %.preheader.preheader, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  br i1 %spec.select.4, label %.preheader.preheader, label %bb.cd

.preheader.preheader:                             ; preds = %.split, %bb.cc
  %i.agr = load i32, ptr %i.d, align 16, !tbaa !191
  %i.ags = sitofp i32 %i.agr to double
  store double %i.ags, ptr %i.e, align 16, !tbaa !505
  %i.agt = sitofp <2 x i32> %i.aga to <2 x double>
  %i.agu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <2 x double> %i.agt, ptr %i.agu, align 8, !tbaa !505
  %i.agv = sitofp <2 x i32> %i.agb to <2 x double>
  %i.agw = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <2 x double> %i.agv, ptr %i.agw, align 8, !tbaa !505
  %i.agx = sitofp i32 %i.agg to double
  %i.agy = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store double %i.agx, ptr %i.agy, align 8, !tbaa !505
  %i.agz = load i32, ptr %i.oi, align 8, !tbaa !191
  %i.aha = sitofp i32 %i.agz to double
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store double %i.aha, ptr %i.ahb, align 16, !tbaa !505
  %i.ahc = zext nneg i8 %.045 to i32
  %i.ahd = call fastcc double @set_date_fields(ptr noundef %i.e, i32 noundef %i.ahc)
  %i.ahe = load i32, ptr %i.oj, align 16, !tbaa !191
  %i.ahf = mul nsw i32 %i.ahe, 60000
  %i.ahg = sitofp i32 %i.ahf to double
  %i.ahh = fsub double %i.ahd, %i.ahg
  %i.ahi = bitcast double %i.ahh to i64
  br label %bb.cd

bb.cd:                                            ; preds = %.split, %js_date_parse_otherstring.exit.thread, %bb.cc, %.preheader.preheader
  %i.ahj = phi i64 [ 9221120237041090560, %js_date_parse_otherstring.exit.thread ], [ %i.ahi, %.preheader.preheader ], [ 9221120237041090560, %bb.cc ], [ 9221120237041090560, %.split ] ; 3 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !232
  %i.ahm = trunc i64 %i.l to i32
  %i.ahn = icmp ugt i32 %i.ahm, -10
  br i1 %i.ahn, label %bb.ce, label %JS_FreeValue.exit

bb.ce:                                            ; preds = %bb.cd
  %i.aho = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !191 ; 2 uses
  %i.ahq = add nsw i32 %i.ahp, -1
  store i32 %i.ahq, ptr %i.aho, align 4, !tbaa !191
  %i.ahr = icmp slt i32 %i.ahp, 2
  br i1 %i.ahr, label %bb.cf, label %JS_FreeValue.exit

bb.cf:                                            ; preds = %bb.ce
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ahl, i64 %i.k, i64 %i.l), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.a
  %i.ahs = phi i64 [ 0, %bb.a ], [ %i.ahj, %bb.cd ], [ %i.ahj, %bb.ce ], [ %i.ahj, %bb.cf ]
  %.sroa.432.0 = phi i64 [ 6, %bb.a ], [ 8, %bb.cd ], [ 8, %bb.ce ], [ 8, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.ahs, 0
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
  %i.c = load double, ptr %0, align 8, !tbaa !505
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !505 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !505
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
