Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/htmlnorm?download=true
inline.NumInlined: 109
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_html_normalise:bb.a
  %.21131 = phi i32 [ %.111302386, %bb.hl ], [ 2, %bb.ep ], [ %.111302386, %bb.fa ], [ 0, %html_output_c.exit1560 ], [ 0, %bb.fk ], [ %.111302386, %bb.fp ], [ 1, %html_output_c.exit1569 ], [ 1, %bb.fz ], [ %.111302386, %bb.ge ], [ 2, %bb.gh ], [ 2, %bb.gl ], [ %.111302386, %bb.et ], [ %.111302386, %bb.em ], [ 2, %bb.ew ], [ %.111302386, %bb.ey ], [ %.111302386, %bb.er ]
  %.31120 = phi ptr [ %i.vt, %bb.hl ], [ %.211192391, %bb.ep ], [ %i.qa, %bb.fa ], [ %i.qj, %html_output_c.exit1560 ], [ %i.qx, %bb.fk ], [ %i.ri, %bb.fp ], [ %i.rr, %html_output_c.exit1569 ], [ %i.sf, %bb.fz ], [ %i.sq, %bb.ge ], [ %.211192391, %bb.gh ], [ %i.tq, %bb.gl ], [ %.211192391, %bb.et ], [ %.211192391, %bb.em ], [ %.211192391, %bb.ew ], [ %.211192391, %bb.ey ], [ %.211192391, %bb.er ] ; 2 uses
  %.21100 = phi i32 [ %.110992397, %bb.hl ], [ 9, %bb.ep ], [ 10, %bb.fa ], [ %.110992397, %html_output_c.exit1560 ], [ 9, %bb.fk ], [ %.110992397, %bb.fp ], [ %.110992397, %html_output_c.exit1569 ], [ 9, %bb.fz ], [ %.110992397, %bb.ge ], [ 9, %bb.gh ], [ 10, %bb.gl ], [ 9, %bb.et ], [ 9, %bb.em ], [ 9, %bb.ew ], [ 9, %bb.ey ], [ 9, %bb.er ]
  %.31085 = phi i32 [ 10, %bb.hl ], [ 19, %bb.ep ], [ 4, %bb.fa ], [ 10, %html_output_c.exit1560 ], [ 6, %bb.fk ], [ 10, %bb.fp ], [ 10, %html_output_c.exit1569 ], [ 6, %bb.fz ], [ 10, %bb.ge ], [ 6, %bb.gh ], [ 6, %bb.gl ], [ 19, %bb.et ], [ 19, %bb.em ], [ 19, %bb.ew ], [ 19, %bb.ey ], [ 19, %bb.er ]
  %.16 = phi i64 [ %.15, %bb.hl ], [ 0, %bb.ep ], [ %.110502412, %bb.fa ], [ 1, %html_output_c.exit1560 ], [ %.31052, %bb.fk ], [ %.41053, %bb.fp ], [ 1, %html_output_c.exit1569 ], [ %.61055, %bb.fz ], [ %.7, %bb.ge ], [ %.110502412, %bb.gh ], [ %.8, %bb.gl ], [ 0, %bb.et ], [ 0, %bb.em ], [ 0, %bb.ew ], [ 0, %bb.ey ], [ 0, %bb.er ]
  %.31032 = phi i32 [ %.110302426, %bb.hl ], [ %.110302426, %bb.ep ], [ %.110302426, %bb.fa ], [ %.110302426, %html_output_c.exit1560 ], [ 0, %bb.fk ], [ %.110302426, %bb.fp ], [ %.110302426, %html_output_c.exit1569 ], [ 0, %bb.fz ], [ %.110302426, %bb.ge ], [ 0, %bb.gh ], [ %.110302426, %bb.gl ], [ %.110302426, %bb.et ], [ %.110302426, %bb.em ], [ %.110302426, %bb.ew ], [ %.110302426, %bb.ey ], [ %.110302426, %bb.er ]
  %i.vu = load i8, ptr %.31120, align 1, !tbaa !19
  %i.vv = icmp eq i8 %i.vu, 92
  %. = zext i1 %i.vv to i8
  br label %.backedge

bb.hm:                                            ; preds = %bb.v
  %.not1420 = icmp eq i32 %.110752400, 0
  br i1 %.not1420, label %html_output_c.exit1587, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.vw = tail call ptr @__ctype_b_loc() #19
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !34
  %i.vy = zext i8 %i.bc to i64                    ; 2 uses
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.vx, i64 %i.vy
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !36
  %i.wb = and i16 %i.wa, 8192
  %.not1421 = icmp eq i16 %i.wb, 0
  br i1 %.not1421, label %bb.ho, label %html_output_c.exit1587

bb.ho:                                            ; preds = %bb.hn
  %i.wc = tail call ptr @__ctype_tolower_loc() #19
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !38
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %i.vy
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !39 ; 2 uses
  %i.wg = trunc i32 %i.wf to i8
  %i.wh = and i32 %i.wf, 255
  %i.wi = icmp eq i32 %i.wh, 39
  %spec.store.select = select i1 %i.wi, i8 34, i8 %i.wg
  br i1 %.not.i1712, label %html_output_c.exit1587, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.wj = load i64, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.wk = icmp eq i64 %i.wj, 8192
  br i1 %i.wk, label %html_output_flush.exit.i1586, label %bb.hq

html_output_flush.exit.i1586:                     ; preds = %bb.hp
  %i.wl = load i32, ptr %.01138, align 8, !tbaa !31
  %i.wm = call i64 @cli_writen(i32 noundef %i.wl, ptr noundef nonnull %i.ah, i64 noundef 8192) #16 ; 0 uses
  br label %bb.hq

bb.hq:                                            ; preds = %html_output_flush.exit.i1586, %bb.hp
  %i.wn = phi i64 [ 0, %html_output_flush.exit.i1586 ], [ %i.wj, %bb.hp ] ; 2 uses
  %i.wo = add i64 %i.wn, 1
  store i64 %i.wo, ptr %i.ag, align 8, !tbaa !32
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.wn
  store i8 %spec.store.select, ptr %i.wp, align 1, !tbaa !19
  %.pre2606 = load i8, ptr %.211192391, align 1, !tbaa !19
  br label %html_output_c.exit1587

html_output_c.exit1587:                           ; preds = %bb.hq, %bb.ho, %bb.hn, %bb.hm
  %i.wq = phi i8 [ %.pre2606, %bb.hq ], [ %i.bc, %bb.ho ], [ %i.bc, %bb.hn ], [ %i.bc, %bb.hm ]
  %i.wr = icmp eq i8 %i.wq, 62                    ; 2 uses
  %spec.select1463 = select i1 %i.wr, i32 1, i32 %.110992397
  %spec.select1464 = select i1 %i.wr, i32 6, i32 3
  %i.ws = getelementptr inbounds nuw i8, ptr %.211192391, i64 1
  br label %.backedge

bb.hr:                                            ; preds = %bb.v
  %i.wt = load i8, ptr %i.b, align 16, !tbaa !19
  %i.wu = icmp eq i8 %i.wt, 47
  br i1 %i.wu, label %bb.hs, label %bb.in

bb.hs:                                            ; preds = %bb.hr
  %lhsv1410 = load i64, ptr %i.b, align 16
  %.not1412 = icmp eq i64 %lhsv1410, 32774695491433263
  br i1 %.not1412, label %bb.ht, label %bb.hz

bb.ht:                                            ; preds = %bb.hs
  %.not1415 = icmp eq ptr %.112262349, null
  br i1 %.not1415, label %bb.if, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %.not.i1588 = icmp eq ptr %.112202352, null
  %spec.select.i = select i1 %.not.i1588, ptr %.011152480, ptr %.112202352 ; 4 uses
  %i.wv = icmp ugt ptr %.211192391, %spec.select.i
  br i1 %i.wv, label %bb.hv, label %js_process.exit

bb.hv:                                            ; preds = %bb.hu
  %i.ww = ptrtoint ptr %spec.select.i to i64      ; 3 uses
  %.not40.i = icmp ult ptr %spec.select.i, %.011152480
  br i1 %.not40.i, label %js_process.exit, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.wx = add i64 %i.ww, 1                        ; 2 uses
  %.not41.i = icmp ule i64 %i.wx, %i.bb
  %i.wy = icmp ugt i64 %i.wx, %i.ba
  %or.cond.i1589 = and i1 %.not41.i, %i.wy
  %i.wz = icmp ugt i64 %i.bb, %i.ww
  %or.cond44.i = and i1 %i.wz, %or.cond.i1589
  br i1 %or.cond44.i, label %bb.hx, label %js_process.exit

bb.hx:                                            ; preds = %bb.hw
  %i.xa = ptrtoint ptr %.211192391 to i64         ; 3 uses
  %i.xb = add i64 %i.xa, 1                        ; 2 uses
  %.not43.i = icmp ule i64 %i.xb, %i.bb
  %i.xc = icmp ugt i64 %i.xb, %i.ba
  %or.cond45.i = and i1 %.not43.i, %i.xc
  %i.xd = icmp ugt i64 %i.bb, %i.xa
  %or.cond46.i = and i1 %i.xd, %or.cond45.i
  br i1 %or.cond46.i, label %bb.hy, label %js_process.exit

bb.hy:                                            ; preds = %bb.hx
  %i.xe = sub i64 %i.xa, %i.ww
  call void @cli_js_process_buffer(ptr noundef nonnull %.112262349, ptr noundef nonnull %spec.select.i, i64 noundef %i.xe) #16
  br label %js_process.exit

js_process.exit:                                  ; preds = %bb.hu, %bb.hv, %bb.hw, %bb.hx, %bb.hy
  call void @cli_js_parse_done(ptr noundef nonnull %.112262349) #16
  call void @cli_js_output(ptr noundef nonnull %.112262349, ptr noundef %2) #16
  call void @cli_js_destroy(ptr noundef nonnull %.112262349) #16
  br label %bb.if

bb.hz:                                            ; preds = %bb.hs
  %i.xf = load i32, ptr %i.b, align 16
  %i.xg = xor i32 %i.xf, 2037674799
  %i.xh = getelementptr i8, ptr %i.b, i64 3
  %i.xi = load i32, ptr %i.xh, align 1
  %i.xj = xor i32 %i.xi, 6646905
  %i.xk = or i32 %i.xg, %i.xj
  %i.xl = icmp ne i32 %i.xk, 0
  %i.xm = zext i1 %i.xl to i32
  %i.xn = icmp eq i32 %i.xm, 0
  %i.xo = icmp eq i32 %.110752400, 2
  %or.cond49 = select i1 %i.xn, i1 %i.xo, i1 false
  br i1 %or.cond49, label %bb.ia, label %bb.if

bb.ia:                                            ; preds = %bb.hz
  %i.xp = getelementptr inbounds i8, ptr %.211192391, i64 -8 ; 2 uses
  %i.xq = icmp ult ptr %i.xp, %.111842361
  br i1 %i.xq, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #16
  br label %.thread1854

bb.ic:                                            ; preds = %bb.ia
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = ptrtoint ptr %.111842361 to i64
  %i.xt = sub i64 %i.xr, %i.xs                    ; 4 uses
  %i.xu = icmp eq ptr %.111992355, null
  br i1 %i.xu, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.xv = add i64 %i.xt, 1
  %i.xw = call ptr @cli_max_malloc(i64 noundef %i.xv) #16 ; 2 uses
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %.thread1854, label %.thread1860

bb.ie:                                            ; preds = %bb.ic
  %i.xy = add i64 %.111912358, 1
  %i.xz = add i64 %i.xy, %i.xt
  %i.ya = call ptr @cli_max_realloc(ptr noundef nonnull %.111992355, i64 noundef %i.xz) #16 ; 2 uses
  %.not1414 = icmp eq ptr %i.ya, null
  br i1 %.not1414, label %.thread1854, label %.thread1860

.thread1860:                                      ; preds = %bb.id, %bb.ie
  %.31201 = phi ptr [ %i.xw, %bb.id ], [ %i.ya, %bb.ie ] ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.31201, i64 %.111912358
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yb, ptr align 1 %.111842361, i64 %i.xt, i1 false)
  %i.yc = add i64 %i.xt, %.111912358              ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.31201, i64 %i.yc
  store i8 0, ptr %i.yd, align 1, !tbaa !19
  br label %bb.if

bb.if:                                            ; preds = %.thread1860, %bb.hz, %bb.ht, %js_process.exit
  %.21227 = phi ptr [ null, %js_process.exit ], [ null, %bb.ht ], [ %.112262349, %.thread1860 ], [ %.112262349, %bb.hz ] ; 3 uses
  %.21221 = phi ptr [ null, %js_process.exit ], [ %.112202352, %bb.ht ], [ %.112202352, %.thread1860 ], [ %.112202352, %bb.hz ] ; 3 uses
  %.51203 = phi ptr [ %.111992355, %js_process.exit ], [ %.111992355, %bb.ht ], [ %.31201, %.thread1860 ], [ %.111992355, %bb.hz ] ; 3 uses
  %.31193 = phi i64 [ %.111912358, %js_process.exit ], [ %.111912358, %bb.ht ], [ %i.yc, %.thread1860 ], [ %.111912358, %bb.hz ] ; 3 uses
  %.31186 = phi ptr [ %.111842361, %js_process.exit ], [ %.111842361, %bb.ht ], [ null, %.thread1860 ], [ %.111842361, %bb.hz ] ; 3 uses
  %.31077 = phi i32 [ 0, %js_process.exit ], [ 0, %bb.ht ], [ 0, %.thread1860 ], [ %.110752400, %bb.hz ] ; 3 uses
  br i1 %.not1362, label %html_tag_contents_done.exit, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.ye = load i32, ptr %i.ak, align 4, !tbaa !15
  %i.yf = icmp ne i32 %i.ye, 0
  %i.yg = icmp ne i32 %.111492374, 0
  %or.cond51 = select i1 %i.yf, i1 %i.yg, i1 false
  br i1 %or.cond51, label %bb.ih, label %html_tag_contents_done.exit

bb.ih:                                            ; preds = %bb.ig
  %i.yh = load i16, ptr %i.b, align 16
  %i.yi = xor i16 %i.yh, 24879
  %i.yj = getelementptr i8, ptr %i.b, i64 2
  %i.yk = load i8, ptr %i.yj, align 2
  %i.yl = zext i8 %i.yk to i16
  %i.ym = or i16 %i.yi, %i.yl
  %i.yn = icmp ne i16 %i.ym, 0
  %i.yo = zext i1 %i.yn to i32
  %i.yp = icmp eq i32 %i.yo, 0
  br i1 %i.yp, label %bb.ii, label %html_tag_contents_done.exit

bb.ii:                                            ; preds = %bb.ih
  %i.yq = load i64, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.yr = add nsw i64 %i.yq, 1                    ; 3 uses
  store i64 %i.yr, ptr %9, align 8, !tbaa !29
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.yq
  store i8 0, ptr %i.ys, align 1, !tbaa !19
  %i.yt = call ptr @cli_max_malloc(i64 noundef %i.yr) #16 ; 3 uses
  %.not.i1590 = icmp eq ptr %i.yt, null
  br i1 %.not.i1590, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.52) #16
  br label %html_tag_contents_done.exit

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yt, ptr nonnull align 8 %i.ap, i64 %i.yr, i1 false)
  %i.yu = load ptr, ptr %i.am, align 8, !tbaa !16
  %i.yv = sext i32 %.111492374 to i64
  %i.yw = getelementptr [8 x i8], ptr %i.yu, i64 %i.yv
  %i.yx = getelementptr i8, ptr %i.yw, i64 -8
  store ptr %i.yt, ptr %i.yx, align 8, !tbaa !18
  store i64 0, ptr %9, align 8, !tbaa !29
  br label %html_tag_contents_done.exit

html_tag_contents_done.exit:                      ; preds = %bb.ik, %bb.ij, %bb.ih, %bb.ig, %bb.if
  %.41161 = phi ptr [ %.211592371, %bb.if ], [ %.211592371, %bb.ig ], [ %.211192391, %bb.ih ], [ %.211192391, %bb.ij ], [ %.211192391, %bb.ik ] ; 3 uses
  %.31151 = phi i32 [ %.111492374, %bb.if ], [ %.111492374, %bb.ig ], [ %.111492374, %bb.ih ], [ 0, %bb.ij ], [ 0, %bb.ik ] ; 3 uses
  %i.yy = load i32, ptr %i.b, align 16
  %i.yz = xor i32 %i.yy, 1919903279
  %i.za = getelementptr i8, ptr %i.b, i64 4
  %i.zb = load i16, ptr %i.za, align 4
  %i.zc = zext i16 %i.zb to i32
  %i.zd = xor i32 %i.zc, 109
  %i.ze = or i32 %i.yz, %i.zd
  %i.zf = icmp ne i32 %i.ze, 0
  %i.zg = zext i1 %i.zf to i32
  %i.zh = icmp eq i32 %i.zg, 0
  br i1 %i.zh, label %bb.il, label %html_output_c.exit1657

bb.il:                                            ; preds = %html_tag_contents_done.exit
  %.not1419 = icmp eq ptr %.112362342, null
  br i1 %.not1419, label %html_output_c.exit1657, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @free(ptr noundef nonnull %.112362342) #16
  br label %html_output_c.exit1657

bb.in:                                            ; preds = %bb.hr
  %i.zi = load i32, ptr %i.b, align 16
  %i.zj = xor i32 %i.zi, 1769104243
  %i.zk = getelementptr i8, ptr %i.b, i64 3
  %i.zl = load i32, ptr %i.zk, align 1
  %i.zm = xor i32 %i.zl, 7630953
  %i.zn = or i32 %i.zj, %i.zm
  %i.zo = icmp ne i32 %i.zn, 0
  %i.zp = zext i1 %i.zo to i32
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %bb.io, label %bb.ix

bb.io:                                            ; preds = %bb.in
  %i.zr = load i32, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.zs = icmp sgt i32 %i.zr, 0
  br i1 %i.zs, label %.lr.ph.i1591, label %.critedge1467

.lr.ph.i1591:                                     ; preds = %bb.io
  %i.zt = load ptr, ptr %i.q, align 8, !tbaa !13  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.zr to i64 ; 3 uses
  br label %bb.iq

bb.ip:                                            ; preds = %bb.iq
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge1467, label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %.lr.ph.i1591
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i1591 ], [ %indvars.iv.next.i, %bb.ip ] ; 3 uses
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv.i
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !18
  %i.zw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.zv, ptr noundef nonnull dereferenceable(9) @.str.22) #17
  %i.zx = icmp eq i32 %i.zw, 0
  br i1 %i.zx, label %html_tag_arg_value.exit, label %bb.ip

html_tag_arg_value.exit:                          ; preds = %bb.iq
  %i.zy = load ptr, ptr %i.r, align 8, !tbaa !14  ; 2 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zy, i64 %indvars.iv.i
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !18 ; 3 uses
  %.not1408 = icmp eq ptr %i.aaa, null
  br i1 %.not1408, label %.critedge1467, label %bb.ir

bb.ir:                                            ; preds = %html_tag_arg_value.exit
  %i.aab = call i32 @strcasecmp(ptr noundef nonnull %i.aaa, ptr noundef nonnull @.str.23) #17
  %i.aac = icmp eq i32 %i.aab, 0
  br i1 %i.aac, label %.lr.ph.i1592, label %bb.it

bb.is:                                            ; preds = %.lr.ph.i1592
  %indvars.iv.next.i1595 = add nuw nsw i64 %indvars.iv.i1594, 1 ; 2 uses
  %exitcond.not.i1596 = icmp eq i64 %indvars.iv.next.i1595, %wide.trip.count.i
  br i1 %exitcond.not.i1596, label %.critedge1467.sink.split, label %.lr.ph.i1592

.lr.ph.i1592:                                     ; preds = %bb.ir, %bb.is
  %indvars.iv.i1594 = phi i64 [ %indvars.iv.next.i1595, %bb.is ], [ 0, %bb.ir ] ; 3 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv.i1594
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !18
  %i.aaf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aae, ptr noundef nonnull dereferenceable(9) @.str.22) #17
  %i.aag = icmp eq i32 %i.aaf, 0
  br i1 %i.aag, label %.critedge1467.sink.split.sink.split, label %bb.is

bb.it:                                            ; preds = %bb.ir
  %i.aah = call i32 @strcasecmp(ptr noundef nonnull %i.aaa, ptr noundef nonnull @.str.25) #17
  %i.aai = icmp eq i32 %i.aah, 0
  br i1 %i.aai, label %.lr.ph.i1597, label %.critedge1467

bb.iu:                                            ; preds = %.lr.ph.i1597
  %indvars.iv.next.i1600 = add nuw nsw i64 %indvars.iv.i1599, 1 ; 2 uses
  %exitcond.not.i1601 = icmp eq i64 %indvars.iv.next.i1600, %wide.trip.count.i
  br i1 %exitcond.not.i1601, label %.critedge1467.sink.split, label %.lr.ph.i1597

.lr.ph.i1597:                                     ; preds = %bb.it, %bb.iu
  %indvars.iv.i1599 = phi i64 [ %indvars.iv.next.i1600, %bb.iu ], [ 0, %bb.it ] ; 3 uses
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv.i1599
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !18
  %i.aal = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aak, ptr noundef nonnull dereferenceable(9) @.str.22) #17
  %i.aam = icmp eq i32 %i.aal, 0
  br i1 %i.aam, label %.critedge1467.sink.split.sink.split, label %bb.iu

.critedge1467.sink.split.sink.split:              ; preds = %.lr.ph.i1597, %.lr.ph.i1592
  %indvars.iv.i1599.lcssa.sink = phi i64 [ %indvars.iv.i1594, %.lr.ph.i1592 ], [ %indvars.iv.i1599, %.lr.ph.i1597 ]
  %.str.26.sink = phi ptr [ @.str.24, %.lr.ph.i1592 ], [ @.str.26, %.lr.ph.i1597 ]
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.zy, i64 %indvars.iv.i1599.lcssa.sink ; 2 uses
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !18
  call void @free(ptr noundef %i.aao) #16
  %i.aap = call ptr @cli_safer_strdup(ptr noundef nonnull %.str.26.sink) #16
  store ptr %i.aap, ptr %i.aan, align 8, !tbaa !18
  br label %.critedge1467.sink.split

.critedge1467.sink.split:                         ; preds = %bb.iu, %bb.is, %.critedge1467.sink.split.sink.split
  call fastcc void @html_output_tag(ptr noundef %.01138, ptr noundef %i.b, ptr noundef %6)
  br label %.critedge1467

.critedge1467:                                    ; preds = %bb.ip, %.critedge1467.sink.split, %bb.io, %html_tag_arg_value.exit, %bb.it
  %.41102 = phi i32 [ 1, %bb.io ], [ 15, %.critedge1467.sink.split ], [ 1, %bb.it ], [ 1, %html_tag_arg_value.exit ], [ 1, %bb.ip ] ; 3 uses
  %i.aaq = icmp ne ptr %.112262349, null
  %or.cond53 = select i1 %i.o, i1 true, i1 %i.aaq
  br i1 %or.cond53, label %html_output_c.exit1657, label %bb.iv

bb.iv:                                            ; preds = %.critedge1467
  %i.aar = call ptr @cli_js_init() #16            ; 2 uses
  %.not1409 = icmp eq ptr %i.aar, null
  br i1 %.not1409, label %bb.iw, label %html_output_c.exit1657

bb.iw:                                            ; preds = %bb.iv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #16
  br label %html_output_c.exit1657

bb.ix:                                            ; preds = %bb.in
  %i.aas = load i32, ptr %i.b, align 16
  %i.aat = xor i32 %i.aas, 1819898995
  %i.aau = getelementptr i8, ptr %i.b, i64 4
  %i.aav = load i16, ptr %i.aau, align 4
  %i.aaw = zext i16 %i.aav to i32
  %i.aax = xor i32 %i.aaw, 101
  %i.aay = or i32 %i.aat, %i.aax
  %i.aaz = icmp ne i32 %i.aay, 0
  %i.aba = zext i1 %i.aaz to i32
  %i.abb = icmp eq i32 %i.aba, 0
  br i1 %i.abb, label %html_output_c.exit1657, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.abc = load i16, ptr %i.b, align 16
  %i.abd = xor i16 %i.abc, 16421
  %i.abe = getelementptr i8, ptr %i.b, i64 2
  %i.abf = load i8, ptr %i.abe, align 2
  %i.abg = zext i8 %i.abf to i16
  %i.abh = or i16 %i.abd, %i.abg
  %i.abi = icmp ne i16 %i.abh, 0
  %i.abj = zext i1 %i.abi to i32
  %i.abk = icmp eq i32 %i.abj, 0
  br i1 %i.abk, label %bb.iz, label %bb.jf

bb.iz:                                            ; preds = %bb.iy
  %i.abl = load i32, ptr %6, align 8, !tbaa !12   ; 2 uses
  %i.abm = icmp sgt i32 %i.abl, 0
  br i1 %i.abm, label %.lr.ph.i1604, label %html_output_c.exit1657

.lr.ph.i1604:                                     ; preds = %bb.iz
  %i.abn = load ptr, ptr %i.q, align 8, !tbaa !13
  %wide.trip.count.i1605 = zext nneg i32 %i.abl to i64
  br label %bb.jb

bb.ja:                                            ; preds = %bb.jb
  %indvars.iv.next.i1607 = add nuw nsw i64 %indvars.iv.i1606, 1 ; 2 uses
  %exitcond.not.i1608 = icmp eq i64 %indvars.iv.next.i1607, %wide.trip.count.i1605
  br i1 %exitcond.not.i1608, label %html_output_c.exit1657, label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %.lr.ph.i1604
  %indvars.iv.i1606 = phi i64 [ 0, %.lr.ph.i1604 ], [ %indvars.iv.next.i1607, %bb.ja ] ; 3 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %indvars.iv.i1606
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !18
  %i.abq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.abp, ptr noundef nonnull dereferenceable(9) @.str.22) #17
  %i.abr = icmp eq i32 %i.abq, 0
  br i1 %i.abr, label %html_tag_arg_value.exit1609, label %bb.ja

html_tag_arg_value.exit1609:                      ; preds = %bb.jb
  %i.abs = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i1606
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !18 ; 3 uses
  %.not1407 = icmp eq ptr %i.abu, null
  br i1 %.not1407, label %html_output_c.exit1657, label %bb.jc

bb.jc:                                            ; preds = %html_tag_arg_value.exit1609
  %i.abv = call i32 @strcasecmp(ptr noundef nonnull %i.abu, ptr noundef nonnull @.str.23) #17
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.abx = call i32 @strcasecmp(ptr noundef nonnull %i.abu, ptr noundef nonnull @.str.25) #17
end_hunk_0
begin_hunk_1_@cli_html_normalise:bb.a
  store i8 %.2894, ptr %i.awr, align 1, !tbaa !19
  br label %bb.qa

bb.qa:                                            ; preds = %.sink.split2889, %bb.pz
  %.31 = phi i64 [ %.110502412, %bb.pz ], [ %i.awq, %.sink.split2889 ]
  %i.aws = getelementptr inbounds nuw i8, ptr %.211192391, i64 1
  br label %bb.qg

bb.qb:                                            ; preds = %bb.px
  %i.awt = icmp eq i8 %i.bc, 44
  br i1 %i.awt, label %bb.qc, label %bb.qd

bb.qc:                                            ; preds = %bb.qb
  %i.awu = getelementptr inbounds i8, ptr %i.d, i64 %.110502412
  store i8 0, ptr %i.awu, align 1, !tbaa !19
  %i.awv = getelementptr inbounds nuw i8, ptr %.211192391, i64 1
  br label %bb.qg

bb.qd:                                            ; preds = %bb.qb
  %i.aww = icmp slt i64 %.110502412, 1024
  br i1 %i.aww, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.awx = tail call ptr @__ctype_tolower_loc() #19
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !38
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.awy, i64 %i.awj
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !39
  %i.axb = trunc i32 %i.axa to i8
  %i.axc = add nsw i64 %.110502412, 1
  %i.axd = getelementptr inbounds i8, ptr %i.d, i64 %.110502412
  store i8 %i.axb, ptr %i.axd, align 1, !tbaa !19
  br label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %bb.qd
  %.32 = phi i64 [ %i.axc, %bb.qe ], [ %.110502412, %bb.qd ]
  %i.axe = getelementptr inbounds nuw i8, ptr %.211192391, i64 1
  br label %bb.qg

bb.qg:                                            ; preds = %bb.py, %bb.pw, %bb.pt, %bb.qc, %bb.qf, %bb.qa, %bb.po, %bb.pr
  %.31132 = phi i32 [ 0, %bb.po ], [ %.111302386, %bb.pr ], [ 1, %bb.pt ], [ %.111302386, %bb.pw ], [ %.111302386, %bb.qf ], [ 2, %bb.qa ], [ %.111302386, %bb.qc ], [ 2, %bb.py ]
  %.51122 = phi ptr [ %i.avv, %bb.po ], [ %i.avz, %bb.pr ], [ %i.awc, %bb.pt ], [ %i.awg, %bb.pw ], [ %i.axe, %bb.qf ], [ %i.aws, %bb.qa ], [ %i.awv, %bb.qc ], [ %.211192391, %bb.py ] ; 2 uses
  %.71105 = phi i32 [ 9, %bb.po ], [ %.110992397, %bb.pr ], [ 9, %bb.pt ], [ %.110992397, %bb.pw ], [ %.110992397, %bb.qf ], [ 19, %bb.qa ], [ 0, %bb.qc ], [ 9, %bb.py ]
  %.81090 = phi i32 [ 6, %bb.po ], [ 19, %bb.pr ], [ 6, %bb.pt ], [ 19, %bb.pw ], [ 19, %bb.qf ], [ 6, %bb.qa ], [ 20, %bb.qc ], [ 6, %bb.py ]
  %.33 = phi i64 [ %.110502412, %bb.po ], [ %.29, %bb.pr ], [ %.110502412, %bb.pt ], [ %.30, %bb.pw ], [ %.32, %bb.qf ], [ %.31, %bb.qa ], [ %.110502412, %bb.qc ], [ %.110502412, %bb.py ]
  %.4 = phi i32 [ 0, %bb.po ], [ %.110302426, %bb.pr ], [ 0, %bb.pt ], [ %.110302426, %bb.pw ], [ %.110302426, %bb.qf ], [ %.110302426, %bb.qa ], [ %.110302426, %bb.qc ], [ 0, %bb.py ]
  %i.axf = load i8, ptr %.51122, align 1, !tbaa !19
  %i.axg = icmp eq i8 %i.axf, 92
  %.1474 = zext i1 %i.axg to i8
  br label %.backedge

bb.qh:                                            ; preds = %bb.v
  br i1 %.not13121835, label %.backedge, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %.not1336 = icmp eq ptr %.111432378, null
  br i1 %.not1336, label %bb.qn, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.axh = load i32, ptr %.111432378, align 8, !tbaa !31 ; 3 uses
  %.not1337 = icmp eq i32 %i.axh, -1
  br i1 %.not1337, label %bb.qm, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.axi = getelementptr inbounds nuw i8, ptr %.111432378, i64 8200 ; 2 uses
  %i.axj = load i64, ptr %i.axi, align 8, !tbaa !32 ; 2 uses
  %.not.i1715 = icmp eq i64 %i.axj, 0
  br i1 %.not.i1715, label %html_output_flush.exit, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.axk = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.axl = call i64 @cli_writen(i32 noundef %i.axh, ptr noundef nonnull %i.axk, i64 noundef %i.axj) #16 ; 0 uses
  store i64 0, ptr %i.axi, align 8, !tbaa !32
  %.pre2604 = load i32, ptr %.111432378, align 8, !tbaa !31
  br label %html_output_flush.exit

html_output_flush.exit:                           ; preds = %bb.qk, %bb.ql
  %i.axm = phi i32 [ %i.axh, %bb.qk ], [ %.pre2604, %bb.ql ]
  %i.axn = call i32 @close(i32 noundef %i.axm) #16 ; 0 uses
  br label %bb.qm

bb.qm:                                            ; preds = %html_output_flush.exit, %bb.qj
  call void @free(ptr noundef nonnull %.111432378) #16
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %bb.qi
  %i.axo = call noalias dereferenceable_or_null(8208) ptr @malloc(i64 noundef 8208) #18 ; 14 uses
  %.not1338 = icmp eq ptr %i.axo, null
  br i1 %.not1338, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.41) #16
  br label %.thread1889

bb.qp:                                            ; preds = %bb.qn
  store i32 -1, ptr %i.axo, align 8, !tbaa !31
  %i.axp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.42, ptr noundef nonnull %2) #16 ; 0 uses
  %i.axq = call i32 @lstat(ptr noundef nonnull %i.a, ptr noundef nonnull %10) #16
  %i.axr = icmp eq i32 %i.axq, -1
  br i1 %i.axr, label %bb.qq, label %bb.qt

bb.qq:                                            ; preds = %bb.qp
  %i.axs = call i32 @mkdir(ptr noundef nonnull %i.a, i32 noundef 448) #16
  %.not1339 = icmp eq i32 %i.axs, 0
  br i1 %.not1339, label %bb.qt, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.axt = tail call ptr @__errno_location() #19
  %i.axu = load i32, ptr %i.axt, align 4, !tbaa !39
  %.not1340 = icmp eq i32 %i.axu, 17
  br i1 %.not1340, label %bb.qt, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.43, ptr noundef nonnull %2) #16
  br label %.thread1889

bb.qt:                                            ; preds = %bb.qq, %bb.qr, %bb.qp
  %i.axv = call ptr @cli_gentemp(ptr noundef nonnull %i.a) #16 ; 4 uses
  %.not1341 = icmp eq ptr %i.axv, null
  br i1 %.not1341, label %.thread1889, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44, ptr noundef nonnull %i.axv) #16
  %i.axw = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.axv, i32 noundef 577, i32 noundef 384) #16
  store i32 %i.axw, ptr %i.axo, align 8, !tbaa !31
  call void @free(ptr noundef nonnull %i.axv) #16
  %i.axx = load i32, ptr %i.axo, align 8, !tbaa !31 ; 3 uses
  %i.axy = icmp slt i32 %i.axx, 0
  br i1 %i.axy, label %bb.qv, label %html_output_str.exit1727

bb.qv:                                            ; preds = %bb.qu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #16
  br label %.thread1889

html_output_str.exit1727:                         ; preds = %bb.qu
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axo, i64 8200 ; 13 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axo, i64 4 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aya, ptr noundef nonnull align 1 dereferenceable(20) @.str.45, i64 20, i1 false)
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axo, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ayb, ptr noundef nonnull align 1 dereferenceable(14) @.str.46, i64 14, i1 false)
  store i64 34, ptr %i.axz, align 8, !tbaa !32
  %i.ayc = icmp eq i64 %.110502412, 0
  %i.ayd = load i8, ptr %i.d, align 16
  %i.aye = icmp eq i8 %i.ayd, 59
  %or.cond110 = select i1 %i.ayc, i1 %i.aye, i1 false
  br i1 %or.cond110, label %.thread1882, label %bb.qw

bb.qw:                                            ; preds = %html_output_str.exit1727
  %i.ayf = add i64 %.110502412, 34
  %i.ayg = icmp ult i64 %i.ayf, 8192
  br i1 %i.ayg, label %html_output_flush.exit.i1739, label %html_output_flush.exit.thread.i1737

.thread1882:                                      ; preds = %html_output_str.exit1727
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axo, i64 38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(11) %i.ayh, ptr noundef nonnull align 1 dereferenceable(11) @.str.47, i64 11, i1 false)
  store i64 45, ptr %i.axz, align 8, !tbaa !32
  br label %html_output_flush.exit.i1739.thread

html_output_flush.exit.i1739:                     ; preds = %bb.qw
  %i.ayi = icmp ugt i64 %.110502412, 8191
  br i1 %i.ayi, label %bb.qx, label %html_output_flush.exit.i1739.thread

html_output_flush.exit.thread.i1737:              ; preds = %bb.qw
  %i.ayj = call i64 @cli_writen(i32 noundef %i.axx, ptr noundef nonnull %i.aya, i64 noundef 34) #16 ; 0 uses
  store i64 0, ptr %i.axz, align 8, !tbaa !32
  %i.ayk = icmp ugt i64 %.110502412, 8191
  br i1 %i.ayk, label %html_output_flush.exit16.i1738, label %html_output_flush.exit.i1739.thread

bb.qx:                                            ; preds = %html_output_flush.exit.i1739
  %i.ayl = call i64 @cli_writen(i32 noundef %i.axx, ptr noundef nonnull %i.aya, i64 noundef 34) #16 ; 0 uses
  store i64 0, ptr %i.axz, align 8, !tbaa !32
  br label %html_output_flush.exit16.i1738

html_output_flush.exit16.i1738:                   ; preds = %bb.qx, %html_output_flush.exit.thread.i1737
  %i.aym = load i32, ptr %i.axo, align 8, !tbaa !31
  %i.ayn = call i64 @cli_writen(i32 noundef %i.aym, ptr noundef nonnull %i.d, i64 noundef %.110502412) #16 ; 0 uses
  %.pr = load i64, ptr %i.axz, align 8, !tbaa !32
  br label %html_output_str.exit1741

html_output_flush.exit.i1739.thread:              ; preds = %.thread1882, %html_output_flush.exit.thread.i1737, %html_output_flush.exit.i1739
  %i.ayo = phi i64 [ 0, %html_output_flush.exit.thread.i1737 ], [ 34, %html_output_flush.exit.i1739 ], [ 45, %.thread1882 ]
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.ayo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ayp, ptr nonnull align 16 %i.d, i64 %.110502412, i1 false)
  %i.ayq = load i64, ptr %i.axz, align 8, !tbaa !32
  %i.ayr = add i64 %i.ayq, %.110502412            ; 2 uses
  store i64 %i.ayr, ptr %i.axz, align 8, !tbaa !32
  br label %html_output_str.exit1741

html_output_str.exit1741:                         ; preds = %html_output_flush.exit.i1739.thread, %html_output_flush.exit16.i1738
  %i.ays = phi i64 [ %i.ayr, %html_output_flush.exit.i1739.thread ], [ %.pr, %html_output_flush.exit16.i1738 ] ; 2 uses
  %i.ayt = icmp eq i64 %i.ays, 8192
  br i1 %i.ayt, label %html_output_flush.exit.i1743, label %html_output_c.exit1744

html_output_flush.exit.i1743:                     ; preds = %html_output_str.exit1741
  %i.ayu = load i32, ptr %i.axo, align 8, !tbaa !31
  %i.ayv = call i64 @cli_writen(i32 noundef %i.ayu, ptr noundef nonnull %i.aya, i64 noundef 8192) #16 ; 0 uses
  br label %html_output_c.exit1744

html_output_c.exit1744:                           ; preds = %html_output_str.exit1741, %html_output_flush.exit.i1743
  %i.ayw = phi i64 [ 0, %html_output_flush.exit.i1743 ], [ %i.ays, %html_output_str.exit1741 ] ; 2 uses
  %i.ayx = add nsw i64 %i.ayw, 1
  store i64 %i.ayx, ptr %i.axz, align 8, !tbaa !32
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.ayw
  store i8 10, ptr %i.ayy, align 1, !tbaa !19
  %i.ayz = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.48) #17
  %.not1342 = icmp eq ptr %i.ayz, null
  %.pr1887 = load i64, ptr %i.axz, align 8, !tbaa !32 ; 4 uses
  br i1 %.not1342, label %thread-pre-split, label %bb.qy

bb.qy:                                            ; preds = %html_output_c.exit1744
  %i.aza = add i64 %.pr1887, 34
  %i.azb = icmp ult i64 %i.aza, 8192
  br i1 %i.azb, label %html_output_str.exit1750, label %html_output_flush.exit.thread.i1748

html_output_flush.exit.thread.i1748:              ; preds = %bb.qy
  %i.azc = load i32, ptr %i.axo, align 8, !tbaa !31
  %i.azd = call i64 @cli_writen(i32 noundef %i.azc, ptr noundef nonnull %i.aya, i64 noundef %.pr1887) #16 ; 0 uses
  store i64 0, ptr %i.axz, align 8, !tbaa !32
  br label %html_output_str.exit1750

html_output_str.exit1750:                         ; preds = %html_output_flush.exit.thread.i1748, %bb.qy
  %i.aze = phi i64 [ 0, %html_output_flush.exit.thread.i1748 ], [ %.pr1887, %bb.qy ]
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.aze
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.azf, ptr noundef nonnull align 1 dereferenceable(34) @.str.49, i64 34, i1 false)
  %i.azg = load i64, ptr %i.axz, align 8, !tbaa !32
  %i.azh = add i64 %i.azg, 34                     ; 2 uses
  store i64 %i.azh, ptr %i.axz, align 8, !tbaa !32
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %html_output_c.exit1744, %html_output_str.exit1750
  %i.azi = phi i64 [ %i.azh, %html_output_str.exit1750 ], [ %.pr1887, %html_output_c.exit1744 ] ; 2 uses
  %i.azj = icmp eq i64 %i.azi, 8192
  br i1 %i.azj, label %html_output_flush.exit.i1752, label %bb.qz

html_output_flush.exit.i1752:                     ; preds = %thread-pre-split
  %i.azk = load i32, ptr %i.axo, align 8, !tbaa !31
  %i.azl = call i64 @cli_writen(i32 noundef %i.azk, ptr noundef nonnull %i.aya, i64 noundef 8192) #16 ; 0 uses
  br label %bb.qz

.thread1889:                                      ; preds = %bb.qt, %bb.qs, %bb.qv, %bb.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.thread1854

bb.qz:                                            ; preds = %html_output_flush.exit.i1752, %thread-pre-split
  %i.azm = phi i64 [ 0, %html_output_flush.exit.i1752 ], [ %i.azi, %thread-pre-split ] ; 2 uses
  %i.azn = add nsw i64 %i.azm, 1
  store i64 %i.azn, ptr %i.axz, align 8, !tbaa !32
  %i.azo = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.azm
  store i8 10, ptr %i.azo, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.backedge

bb.ra:                                            ; preds = %bb.v
  switch i8 %i.bc, label %bb.rk [
    i8 38, label %html_output_c.exit1756
    i8 37, label %bb.rb
    i8 39, label %bb.rc
    i8 34, label %bb.rg
  ]

bb.rb:                                            ; preds = %bb.ra
  br label %html_output_c.exit1756

bb.rc:                                            ; preds = %bb.ra
  %i.azp = trunc nuw i8 %.110382422 to i1
  %i.azq = icmp ne i32 %.111302386, 0
  %or.cond114.not = select i1 %i.azp, i1 true, i1 %i.azq
  br i1 %or.cond114.not, label %bb.rd, label %html_output_c.exit1756

bb.rd:                                            ; preds = %bb.rc
  %.not.i1754 = icmp eq ptr %.111432378, null
  br i1 %.not.i1754, label %html_output_c.exit1756, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.azr = getelementptr inbounds nuw i8, ptr %.111432378, i64 8200 ; 2 uses
  %i.azs = load i64, ptr %i.azr, align 8, !tbaa !32 ; 2 uses
  %i.azt = icmp eq i64 %i.azs, 8192
  br i1 %i.azt, label %html_output_flush.exit.i1755, label %bb.rf

html_output_flush.exit.i1755:                     ; preds = %bb.re
  %i.azu = load i32, ptr %.111432378, align 8, !tbaa !31
  %i.azv = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.azw = call i64 @cli_writen(i32 noundef %i.azu, ptr noundef nonnull %i.azv, i64 noundef 8192) #16 ; 0 uses
  br label %bb.rf

bb.rf:                                            ; preds = %html_output_flush.exit.i1755, %bb.re
  %i.azx = phi i64 [ 0, %html_output_flush.exit.i1755 ], [ %i.azs, %bb.re ] ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.azz = add i64 %i.azx, 1
  store i64 %i.azz, ptr %i.azr, align 8, !tbaa !32
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azy, i64 %i.azx
  store i8 39, ptr %i.baa, align 1, !tbaa !19
  br label %html_output_c.exit1756

bb.rg:                                            ; preds = %bb.ra
  %i.bab = trunc nuw i8 %.110382422 to i1
  %i.bac = icmp ne i32 %.111302386, 1
  %or.cond118.not = select i1 %i.bab, i1 true, i1 %i.bac
  br i1 %or.cond118.not, label %bb.rh, label %html_output_c.exit1756

bb.rh:                                            ; preds = %bb.rg
  %.not.i1757 = icmp eq ptr %.111432378, null
  br i1 %.not.i1757, label %html_output_c.exit1756, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bad = getelementptr inbounds nuw i8, ptr %.111432378, i64 8200 ; 2 uses
  %i.bae = load i64, ptr %i.bad, align 8, !tbaa !32 ; 2 uses
  %i.baf = icmp eq i64 %i.bae, 8192
  br i1 %i.baf, label %html_output_flush.exit.i1758, label %bb.rj

html_output_flush.exit.i1758:                     ; preds = %bb.ri
  %i.bag = load i32, ptr %.111432378, align 8, !tbaa !31
  %i.bah = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.bai = call i64 @cli_writen(i32 noundef %i.bag, ptr noundef nonnull %i.bah, i64 noundef 8192) #16 ; 0 uses
  br label %bb.rj

bb.rj:                                            ; preds = %html_output_flush.exit.i1758, %bb.ri
  %i.baj = phi i64 [ 0, %html_output_flush.exit.i1758 ], [ %i.bae, %bb.ri ] ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.bal = add i64 %i.baj, 1
  store i64 %i.bal, ptr %i.bad, align 8, !tbaa !32
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bak, i64 %i.baj
  store i8 34, ptr %i.bam, align 1, !tbaa !19
  br label %html_output_c.exit1756

bb.rk:                                            ; preds = %bb.ra
  %i.ban = tail call ptr @__ctype_b_loc() #19
  %i.bao = load ptr, ptr %i.ban, align 8, !tbaa !34
  %i.bap = zext i8 %i.bc to i64
  %i.baq = getelementptr inbounds nuw [2 x i8], ptr %i.bao, i64 %i.bap
  %i.bar = load i16, ptr %i.baq, align 2, !tbaa !36
  %i.bas = and i16 %i.bar, 8192
  %.not1333 = icmp ne i16 %i.bas, 0
  %i.bat = icmp eq i8 %i.bc, 62
  %or.cond1476 = or i1 %i.bat, %.not1333
  br i1 %or.cond1476, label %bb.rl, label %bb.rp

bb.rl:                                            ; preds = %bb.rk
  %i.bau = icmp eq i32 %.111302386, 2
  br i1 %i.bau, label %html_output_c.exit1756, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %.not.i1760 = icmp eq ptr %.111432378, null
  br i1 %.not.i1760, label %html_output_c.exit1756, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.bav = getelementptr inbounds nuw i8, ptr %.111432378, i64 8200 ; 2 uses
  %i.baw = load i64, ptr %i.bav, align 8, !tbaa !32 ; 2 uses
  %i.bax = icmp eq i64 %i.baw, 8192
  br i1 %i.bax, label %html_output_flush.exit.i1761, label %bb.ro

html_output_flush.exit.i1761:                     ; preds = %bb.rn
  %i.bay = load i32, ptr %.111432378, align 8, !tbaa !31
  %i.baz = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.bba = call i64 @cli_writen(i32 noundef %i.bay, ptr noundef nonnull %i.baz, i64 noundef 8192) #16 ; 0 uses
  br label %bb.ro

bb.ro:                                            ; preds = %html_output_flush.exit.i1761, %bb.rn
  %i.bbb = phi i64 [ 0, %html_output_flush.exit.i1761 ], [ %i.baw, %bb.rn ] ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.bbd = add i64 %i.bbb, 1
  store i64 %i.bbd, ptr %i.bav, align 8, !tbaa !32
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbc, i64 %i.bbb
  store i8 %i.bc, ptr %i.bbe, align 1, !tbaa !19
  br label %html_output_c.exit1756

bb.rp:                                            ; preds = %bb.rk
  %.not.i1763 = icmp eq ptr %.111432378, null
  br i1 %.not.i1763, label %html_output_c.exit1756, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.bbf = getelementptr inbounds nuw i8, ptr %.111432378, i64 8200 ; 2 uses
  %i.bbg = load i64, ptr %i.bbf, align 8, !tbaa !32 ; 2 uses
  %i.bbh = icmp eq i64 %i.bbg, 8192
  br i1 %i.bbh, label %html_output_flush.exit.i1764, label %bb.rr

html_output_flush.exit.i1764:                     ; preds = %bb.rq
  %i.bbi = load i32, ptr %.111432378, align 8, !tbaa !31
  %i.bbj = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.bbk = call i64 @cli_writen(i32 noundef %i.bbi, ptr noundef nonnull %i.bbj, i64 noundef 8192) #16 ; 0 uses
  br label %bb.rr

bb.rr:                                            ; preds = %html_output_flush.exit.i1764, %bb.rq
  %i.bbl = phi i64 [ 0, %html_output_flush.exit.i1764 ], [ %i.bbg, %bb.rq ] ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.bbn = add i64 %i.bbl, 1
  store i64 %i.bbn, ptr %i.bbf, align 8, !tbaa !32
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbm, i64 %i.bbl
  store i8 %i.bc, ptr %i.bbo, align 1, !tbaa !19
  br label %html_output_c.exit1756

html_output_c.exit1756:                           ; preds = %bb.rr, %bb.rp, %bb.ro, %bb.rm, %bb.rj, %bb.rh, %bb.rf, %bb.rd, %bb.rl, %bb.rg, %bb.ra, %bb.rc, %bb.rb
  %.21136 = phi i64 [ %.111352383, %bb.ro ], [ 0, %bb.rb ], [ %.111352383, %bb.ra ], [ %.111352383, %bb.rl ], [ %.111352383, %bb.rc ], [ %.111352383, %bb.rf ], [ %.111352383, %bb.rg ], [ %.111352383, %bb.rj ], [ %.111352383, %bb.rd ], [ %.111352383, %bb.rh ], [ %.111352383, %bb.rm ], [ %.111352383, %bb.rp ], [ %.111352383, %bb.rr ]
  %.81106 = phi i32 [ %.110992397, %bb.ro ], [ 23, %bb.rb ], [ 21, %bb.ra ], [ %.110992397, %bb.rl ], [ %.110992397, %bb.rc ], [ %.110992397, %bb.rf ], [ %.110992397, %bb.rg ], [ %.110992397, %bb.rj ], [ %.110992397, %bb.rd ], [ %.110992397, %bb.rh ], [ %.110992397, %bb.rm ], [ %.110992397, %bb.rp ], [ %.110992397, %bb.rr ]
  %.91091 = phi i32 [ 21, %bb.ro ], [ 24, %bb.rb ], [ 4, %bb.ra ], [ 22, %bb.rl ], [ 22, %bb.rc ], [ 21, %bb.rf ], [ 22, %bb.rg ], [ 21, %bb.rj ], [ 21, %bb.rd ], [ 21, %bb.rh ], [ 21, %bb.rm ], [ 21, %bb.rp ], [ 21, %bb.rr ]
  %.41047 = phi i64 [ %.110442415, %bb.ro ], [ 0, %bb.rb ], [ %.110442415, %bb.ra ], [ %.110442415, %bb.rl ], [ %.110442415, %bb.rc ], [ %.110442415, %bb.rf ], [ %.110442415, %bb.rg ], [ %.110442415, %bb.rj ], [ %.110442415, %bb.rd ], [ %.110442415, %bb.rh ], [ %.110442415, %bb.rm ], [ %.110442415, %bb.rp ], [ %.110442415, %bb.rr ]
  %.61123 = getelementptr inbounds nuw i8, ptr %.211192391, i64 1 ; 2 uses
  %i.bbp = load i8, ptr %.61123, align 1, !tbaa !19
  %i.bbq = icmp eq i8 %i.bbp, 92
  %.1477 = zext i1 %i.bbq to i8
  br label %.backedge

bb.rs:                                            ; preds = %bb.v
  %.not1331 = icmp eq ptr %.111432378, null
  br i1 %.not1331, label %.backedge, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.bbr = load i32, ptr %.111432378, align 8, !tbaa !31 ; 3 uses
  %.not1332 = icmp eq i32 %i.bbr, -1
  br i1 %.not1332, label %bb.rw, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.bbs = getelementptr inbounds nuw i8, ptr %.111432378, i64 8200 ; 2 uses
  %i.bbt = load i64, ptr %i.bbs, align 8, !tbaa !32 ; 2 uses
  %.not.i1766 = icmp eq i64 %i.bbt, 0
  br i1 %.not.i1766, label %html_output_flush.exit1767, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.bbu = getelementptr inbounds nuw i8, ptr %.111432378, i64 4
  %i.bbv = call i64 @cli_writen(i32 noundef %i.bbr, ptr noundef nonnull %i.bbu, i64 noundef %i.bbt) #16 ; 0 uses
  store i64 0, ptr %i.bbs, align 8, !tbaa !32
  %.pre = load i32, ptr %.111432378, align 8, !tbaa !31
  br label %html_output_flush.exit1767

html_output_flush.exit1767:                       ; preds = %bb.ru, %bb.rv
  %i.bbw = phi i32 [ %i.bbr, %bb.ru ], [ %.pre, %bb.rv ]
  %i.bbx = call i32 @close(i32 noundef %i.bbw) #16 ; 0 uses
  br label %bb.rw

bb.rw:                                            ; preds = %html_output_flush.exit1767, %bb.rt
  call void @free(ptr noundef nonnull %.111432378) #16
  br label %.backedge

bb.rx:                                            ; preds = %bb.v
  switch i64 %.111352383, label %bb.sf [
    i64 2, label %bb.ry
    i64 1, label %bb.sb
  ]

bb.ry:                                            ; preds = %bb.rx
  %i.bby = trunc i64 %.110442415 to i8
  %.not.i1768 = icmp eq ptr %.111432378, null
  br i1 %.not.i1768, label %.backedge, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.bbz = getelementptr inbounds nuw i8, ptr %.111432378, i64 8200 ; 2 uses
end_hunk_1
begin_hunk_2_@cli_html_normalise:bb.a
  %i.bgt = add i64 %.11191.lcssa, 1
  %i.bgu = add i64 %i.bgt, %i.bgo
  %i.bgv = call ptr @cli_max_realloc(ptr noundef nonnull %.11199.lcssa, i64 noundef %i.bgu) #16 ; 2 uses
  %.not1327 = icmp eq ptr %i.bgv, null
  br i1 %.not1327, label %.thread1854, label %.thread1891

.thread1891:                                      ; preds = %bb.tl, %bb.tm
  %.91207 = phi ptr [ %i.bgr, %bb.tl ], [ %i.bgv, %bb.tm ] ; 3 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %.91207, i64 %.11191.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bgw, ptr align 1 %.11184.lcssa, i64 %i.bgo, i1 false)
  %i.bgx = add i64 %i.bgo, %.11191.lcssa          ; 2 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %.91207, i64 %i.bgx
  store i8 0, ptr %i.bgy, align 1, !tbaa !19
  br label %bb.tn

bb.tn:                                            ; preds = %js_process.exit1816.thread, %.thread1891, %js_process.exit1816
  %i.bgz = phi i1 [ true, %.thread1891 ], [ false, %js_process.exit1816 ], [ false, %js_process.exit1816.thread ]
  %.512242781 = phi ptr [ %.51224, %.thread1891 ], [ %.51224, %js_process.exit1816 ], [ null, %js_process.exit1816.thread ]
  %.512302780 = phi ptr [ %.11226.lcssa, %.thread1891 ], [ %.11226.lcssa, %js_process.exit1816 ], [ null, %js_process.exit1816.thread ] ; 4 uses
  %.111209 = phi ptr [ %.91207, %.thread1891 ], [ %.11199.lcssa, %js_process.exit1816 ], [ %.11199.lcssa, %js_process.exit1816.thread ] ; 5 uses
  %.71197 = phi i64 [ %i.bgx, %.thread1891 ], [ %.11191.lcssa, %js_process.exit1816 ], [ %.11191.lcssa, %js_process.exit1816.thread ]
  %i.bha = icmp ne ptr %.11126.lcssa, null        ; 2 uses
  %or.cond127 = select i1 %.11058.lcssa, i1 %i.bha, i1 false
  br i1 %or.cond127, label %.backedge2021, label %bb.to

bb.to:                                            ; preds = %bb.tn
  call void @free(ptr noundef %.011152480) #16
  %i.bhb = call fastcc ptr @cli_readchunk(ptr noundef %1) ; 9 uses
  %spec.select1483 = select i1 %i.bgz, ptr %i.bhb, ptr %.11184.lcssa ; 4 uses
  br i1 %.11063.lcssa, label %.backedge2021, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %.not1328 = xor i1 %i.bha, true
  %or.cond131.not = select i1 %.11058.lcssa, i1 %.not1328, i1 false
  %i.bhc = icmp ne i32 %.11083.lcssa, 14
  %or.cond134 = select i1 %or.cond131.not, i1 %i.bhc, i1 false
  br i1 %or.cond134, label %.backedge2021, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.bhd = icmp eq i32 %.11099.lcssa, %.11083.lcssa
  br i1 %i.bhd, label %bb.tr, label %.backedge2021

bb.tr:                                            ; preds = %bb.tq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50) #16
  br label %.backedge2021

.backedge2021:                                    ; preds = %bb.tq, %bb.tr, %bb.to, %bb.tp, %bb.tn
  %.01183.be = phi ptr [ %.11184.lcssa, %bb.tn ], [ %spec.select1483, %bb.tp ], [ %spec.select1483, %bb.to ], [ %spec.select1483, %bb.tr ], [ %spec.select1483, %bb.tq ]
  %.01125.be = phi ptr [ null, %bb.tn ], [ null, %bb.tp ], [ %.11126.lcssa, %bb.to ], [ %.11126.lcssa, %bb.tr ], [ %.11126.lcssa, %bb.tq ]
  %.01117.be = phi ptr [ %.11126.lcssa, %bb.tn ], [ %i.bhb, %bb.tp ], [ %i.bhb, %bb.to ], [ %i.bhb, %bb.tr ], [ %i.bhb, %bb.tq ]
  %.01115.be = phi ptr [ %.011152480, %bb.tn ], [ %i.bhb, %bb.tp ], [ %i.bhb, %bb.to ], [ %i.bhb, %bb.tr ], [ %i.bhb, %bb.tq ] ; 2 uses
  %.01110.be = phi i32 [ %.11111.lcssa, %bb.tn ], [ %.11099.lcssa, %bb.tp ], [ %.11111.lcssa, %bb.to ], [ %.11111.lcssa, %bb.tr ], [ %.11111.lcssa, %bb.tq ]
  %.01098.be = phi i32 [ 0, %bb.tn ], [ %.11083.lcssa, %bb.tp ], [ 0, %bb.to ], [ 0, %bb.tr ], [ %.11099.lcssa, %bb.tq ]
  %.01082.be = phi i32 [ 16, %bb.tn ], [ 14, %bb.tp ], [ 17, %bb.to ], [ %.11099.lcssa, %bb.tr ], [ %.11083.lcssa, %bb.tq ]
  %.01057.be = phi i1 [ true, %bb.tn ], [ true, %bb.tp ], [ %.11058.lcssa, %bb.to ], [ %.11058.lcssa, %bb.tr ], [ %.11058.lcssa, %bb.tq ]
  %.not1315 = icmp eq ptr %.01115.be, null
  br i1 %.not1315, label %._crit_edge2498, label %bb.o

._crit_edge2498:                                  ; preds = %.backedge2021
  %.not1316 = icmp eq ptr %.111209, null
  br i1 %.not1316, label %._crit_edge2498.thread, label %bb.ts

bb.ts:                                            ; preds = %._crit_edge2498
  %i.bhe = call i32 @html_style_block_handler(ptr noundef %0, ptr noundef nonnull %.111209) #16 ; 2 uses
  %.not1317 = icmp eq i32 %i.bhe, 0
  br i1 %.not1317, label %.thread1906, label %bb.tt

.thread1906:                                      ; preds = %bb.ts
  call void @free(ptr noundef nonnull %.111209) #16
  br label %._crit_edge2498.thread

bb.tt:                                            ; preds = %bb.ts
  %i.bhf = call ptr @cl_strerror(i32 noundef %i.bhe) #16
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51, ptr noundef %i.bhf) #16
  br label %.thread1910

._crit_edge2498.thread:                           ; preds = %bb.n, %.thread1906, %._crit_edge2498
  %.01142.lcssa2793 = phi ptr [ %.11143.lcssa, %._crit_edge2498 ], [ %.11143.lcssa, %.thread1906 ], [ null, %bb.n ] ; 7 uses
  %.01148.lcssa2792 = phi i32 [ %.11149.lcssa, %._crit_edge2498 ], [ %.11149.lcssa, %.thread1906 ], [ 0, %bb.n ] ; 7 uses
  %.01225.lcssa2791 = phi ptr [ %.512302780, %._crit_edge2498 ], [ %.512302780, %.thread1906 ], [ null, %bb.n ] ; 7 uses
  %.01232.lcssa2790 = phi i64 [ %.11233.lcssa, %._crit_edge2498 ], [ %.11233.lcssa, %.thread1906 ], [ 0, %bb.n ] ; 3 uses
  %.01235.lcssa2789 = phi ptr [ %.11236.lcssa, %._crit_edge2498 ], [ %.11236.lcssa, %.thread1906 ], [ null, %bb.n ] ; 7 uses
  br i1 %.not13181834, label %.thread1910, label %bb.tu

bb.tu:                                            ; preds = %._crit_edge2498.thread
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01232.lcssa2790
  store i8 0, ptr %i.bhg, align 1, !tbaa !19
  %i.bhh = call ptr @entity_norm(ptr noundef nonnull %8, ptr noundef nonnull %i.e) #16 ; 4 uses
  %.not1319 = icmp eq ptr %i.bhh, null
  br i1 %.not1319, label %bb.tv, label %.preheader

.preheader:                                       ; preds = %bb.tu
  %char02514 = load i8, ptr %i.bhh, align 1
  %.not2515 = icmp eq i8 %char02514, 0
  br i1 %.not2515, label %.thread1910, label %.lr.ph2506

.lr.ph2506:                                       ; preds = %.preheader
  %.not.i1817 = icmp eq ptr %.01138, null
  %i.bhi = getelementptr inbounds nuw i8, ptr %.01138, i64 8200 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %.01138, i64 4 ; 2 uses
  br i1 %.not.i1817, label %.thread1910, label %.lr.ph2506.split

.lr.ph2506.split:                                 ; preds = %.lr.ph2506, %html_output_c.exit1819
  %.010262505 = phi i64 [ %i.bht, %html_output_c.exit1819 ], [ 0, %.lr.ph2506 ] ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhh, i64 %.010262505
  %i.bhl = load i8, ptr %i.bhk, align 1, !tbaa !19
  %i.bhm = load i64, ptr %i.bhi, align 8, !tbaa !32 ; 2 uses
  %i.bhn = icmp eq i64 %i.bhm, 8192
  br i1 %i.bhn, label %html_output_flush.exit.i1818, label %html_output_c.exit1819

html_output_flush.exit.i1818:                     ; preds = %.lr.ph2506.split
  %i.bho = load i32, ptr %.01138, align 8, !tbaa !31
  %i.bhp = call i64 @cli_writen(i32 noundef %i.bho, ptr noundef nonnull %i.bhj, i64 noundef 8192) #16 ; 0 uses
  br label %html_output_c.exit1819

html_output_c.exit1819:                           ; preds = %html_output_flush.exit.i1818, %.lr.ph2506.split
  %i.bhq = phi i64 [ 0, %html_output_flush.exit.i1818 ], [ %i.bhm, %.lr.ph2506.split ] ; 2 uses
  %i.bhr = add i64 %i.bhq, 1
  store i64 %i.bhr, ptr %i.bhi, align 8, !tbaa !32
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhj, i64 %i.bhq
  store i8 %i.bhl, ptr %i.bhs, align 1, !tbaa !19
  %i.bht = add nuw i64 %.010262505, 1             ; 2 uses
  %i.bhu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bhh) #17
  %i.bhv = icmp ult i64 %i.bht, %i.bhu
  br i1 %i.bhv, label %.lr.ph2506.split, label %.thread1910

bb.tv:                                            ; preds = %bb.tu
  %.not1320 = icmp eq i64 %.01232.lcssa2790, 0
  br i1 %.not1320, label %.thread1910, label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  call fastcc void @html_output_c(ptr noundef %.01138, i8 noundef zeroext 38)
  %i.bhw = tail call ptr @__ctype_tolower_loc() #19
  %.not.i1820 = icmp eq ptr %.01138, null
  %i.bhx = getelementptr inbounds nuw i8, ptr %.01138, i64 8200 ; 2 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %.01138, i64 4 ; 2 uses
  br i1 %.not.i1820, label %.thread1910, label %.split

.split:                                           ; preds = %bb.tw, %html_output_c.exit1822
  %.12507 = phi i64 [ %i.bin, %html_output_c.exit1822 ], [ 0, %bb.tw ] ; 2 uses
  %i.bhz = load ptr, ptr %i.bhw, align 8, !tbaa !38
  %i.bia = getelementptr inbounds nuw i8, ptr %i.e, i64 %.12507
  %i.bib = load i8, ptr %i.bia, align 1, !tbaa !19
  %i.bic = zext i8 %i.bib to i64
  %i.bid = getelementptr inbounds nuw [4 x i8], ptr %i.bhz, i64 %i.bic
  %i.bie = load i32, ptr %i.bid, align 4, !tbaa !39
  %i.bif = trunc i32 %i.bie to i8
  %i.big = load i64, ptr %i.bhx, align 8, !tbaa !32 ; 2 uses
  %i.bih = icmp eq i64 %i.big, 8192
  br i1 %i.bih, label %html_output_flush.exit.i1821, label %html_output_c.exit1822

html_output_flush.exit.i1821:                     ; preds = %.split
  %i.bii = load i32, ptr %.01138, align 8, !tbaa !31
  %i.bij = call i64 @cli_writen(i32 noundef %i.bii, ptr noundef nonnull %i.bhy, i64 noundef 8192) #16 ; 0 uses
  br label %html_output_c.exit1822

html_output_c.exit1822:                           ; preds = %html_output_flush.exit.i1821, %.split
  %i.bik = phi i64 [ 0, %html_output_flush.exit.i1821 ], [ %i.big, %.split ] ; 2 uses
  %i.bil = add i64 %i.bik, 1
  store i64 %i.bil, ptr %i.bhx, align 8, !tbaa !32
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bhy, i64 %i.bik
  store i8 %i.bif, ptr %i.bim, align 1, !tbaa !19
  %i.bin = add nuw i64 %.12507, 1                 ; 2 uses
  %exitcond2603.not = icmp eq i64 %i.bin, %.01232.lcssa2790
  br i1 %exitcond2603.not, label %.thread1910, label %.split

.thread1854:                                      ; preds = %bb.tl, %bb.tm, %bb.id, %bb.ie, %bb.x, %bb.tj, %.thread1889, %bb.ib
  %.112362255 = phi ptr [ %.112362342, %bb.ib ], [ %.11236.lcssa, %bb.tj ], [ %.112362342, %bb.x ], [ %.112362342, %bb.id ], [ %.112362342, %.thread1889 ], [ %.112362342, %bb.ie ], [ %.11236.lcssa, %bb.tm ], [ %.11236.lcssa, %bb.tl ]
  %.111492179 = phi i32 [ %.111492374, %bb.ib ], [ %.11149.lcssa, %bb.tj ], [ %.111492374, %bb.x ], [ %.111492374, %bb.id ], [ %.111492374, %.thread1889 ], [ %.111492374, %bb.ie ], [ %.11149.lcssa, %bb.tm ], [ %.11149.lcssa, %bb.tl ]
  %.61231 = phi ptr [ %.112262349, %bb.ib ], [ %.11226.lcssa, %bb.tj ], [ %.112262349, %bb.x ], [ %.112262349, %bb.id ], [ %.112262349, %.thread1889 ], [ %.112262349, %bb.ie ], [ %.11226.lcssa, %bb.tm ], [ %.11226.lcssa, %bb.tl ]
  %.141212 = phi ptr [ %.111992355, %bb.ib ], [ %.11199.lcssa, %bb.tj ], [ %.111992355, %bb.x ], [ null, %bb.id ], [ %.111992355, %.thread1889 ], [ %.111992355, %bb.ie ], [ null, %bb.tl ], [ %.11199.lcssa, %bb.tm ]
  %.51147 = phi ptr [ %.111432378, %bb.ib ], [ %.11143.lcssa, %bb.tj ], [ %.111432378, %bb.x ], [ %.111432378, %bb.id ], [ %i.axo, %.thread1889 ], [ %.111432378, %bb.ie ], [ %.11143.lcssa, %bb.tm ], [ %.11143.lcssa, %bb.tl ]
  call void @free(ptr noundef nonnull %.011152480) #16
  br label %.thread1910

.thread1999:                                      ; preds = %bb.j, %bb.f, %bb.l, %bb.h
  call void @html_tag_arg_free(ptr noundef nonnull %6)
  br label %bb.uu

.thread1910:                                      ; preds = %html_output_c.exit1819, %html_output_c.exit1822, %.preheader, %.lr.ph2506, %bb.tw, %._crit_edge2498.thread, %bb.tv, %bb.tt, %.thread1854
  %.010361928 = phi i1 [ false, %bb.tt ], [ false, %.thread1854 ], [ true, %._crit_edge2498.thread ], [ true, %bb.tv ], [ true, %bb.tw ], [ true, %.preheader ], [ true, %.lr.ph2506 ], [ true, %html_output_c.exit1822 ], [ true, %html_output_c.exit1819 ] ; 2 uses
  %.511471925 = phi ptr [ %.11143.lcssa, %bb.tt ], [ %.51147, %.thread1854 ], [ %.01142.lcssa2793, %._crit_edge2498.thread ], [ %.01142.lcssa2793, %bb.tv ], [ %.01142.lcssa2793, %bb.tw ], [ %.01142.lcssa2793, %.preheader ], [ %.01142.lcssa2793, %.lr.ph2506 ], [ %.01142.lcssa2793, %html_output_c.exit1822 ], [ %.01142.lcssa2793, %html_output_c.exit1819 ] ; 6 uses
  %.811561924 = phi i32 [ %.11149.lcssa, %bb.tt ], [ %.111492179, %.thread1854 ], [ %.01148.lcssa2792, %._crit_edge2498.thread ], [ %.01148.lcssa2792, %bb.tv ], [ %.01148.lcssa2792, %bb.tw ], [ %.01148.lcssa2792, %.preheader ], [ %.01148.lcssa2792, %.lr.ph2506 ], [ %.01148.lcssa2792, %html_output_c.exit1822 ], [ %.01148.lcssa2792, %html_output_c.exit1819 ] ; 2 uses
  %.1412121923 = phi ptr [ %.111209, %bb.tt ], [ %.141212, %.thread1854 ], [ null, %._crit_edge2498.thread ], [ null, %bb.tv ], [ null, %bb.tw ], [ null, %.preheader ], [ null, %.lr.ph2506 ], [ null, %html_output_c.exit1822 ], [ null, %html_output_c.exit1819 ] ; 2 uses
  %.612311922 = phi ptr [ %.512302780, %bb.tt ], [ %.61231, %.thread1854 ], [ %.01225.lcssa2791, %._crit_edge2498.thread ], [ %.01225.lcssa2791, %bb.tv ], [ %.01225.lcssa2791, %bb.tw ], [ %.01225.lcssa2791, %.preheader ], [ %.01225.lcssa2791, %.lr.ph2506 ], [ %.01225.lcssa2791, %html_output_c.exit1822 ], [ %.01225.lcssa2791, %html_output_c.exit1819 ] ; 4 uses
  %.512401921 = phi ptr [ %.11236.lcssa, %bb.tt ], [ %.112362255, %.thread1854 ], [ %.01235.lcssa2789, %._crit_edge2498.thread ], [ %.01235.lcssa2789, %bb.tv ], [ %.01235.lcssa2789, %bb.tw ], [ %.01235.lcssa2789, %.preheader ], [ %.01235.lcssa2789, %.lr.ph2506 ], [ %.01235.lcssa2789, %html_output_c.exit1822 ], [ %.01235.lcssa2789, %html_output_c.exit1819 ] ; 2 uses
  %.not1449 = icmp eq ptr %.512401921, null
  br i1 %.not1449, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %.thread1910
  call void @free(ptr noundef nonnull %.512401921) #16
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %.thread1910
  %.not1450 = icmp eq i32 %.811561924, 0
  br i1 %.not1450, label %html_tag_contents_done.exit1824, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.bio = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bip = load i64, ptr %9, align 8, !tbaa !29   ; 2 uses
  %i.biq = add nsw i64 %i.bip, 1                  ; 3 uses
  store i64 %i.biq, ptr %9, align 8, !tbaa !29
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bip
  store i8 0, ptr %i.bir, align 1, !tbaa !19
  %i.bis = call ptr @cli_max_malloc(i64 noundef %i.biq) #16 ; 3 uses
  %.not.i1823 = icmp eq ptr %i.bis, null
  br i1 %.not.i1823, label %bb.ua, label %bb.ub

bb.ua:                                            ; preds = %bb.tz
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.52) #16
  br label %html_tag_contents_done.exit1824

bb.ub:                                            ; preds = %bb.tz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bis, ptr nonnull align 8 %i.bio, i64 %i.biq, i1 false)
  %i.bit = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !16
  %i.biv = sext i32 %.811561924 to i64
  %i.biw = getelementptr [8 x i8], ptr %i.biu, i64 %i.biv
  %i.bix = getelementptr i8, ptr %i.biw, i64 -8
  store ptr %i.bis, ptr %i.bix, align 8, !tbaa !18
  store i64 0, ptr %9, align 8, !tbaa !29
  br label %html_tag_contents_done.exit1824

html_tag_contents_done.exit1824:                  ; preds = %bb.ub, %bb.ua, %bb.ty
  %.not1451 = icmp eq ptr %.612311922, null
  br i1 %.not1451, label %bb.ud, label %bb.uc

bb.uc:                                            ; preds = %html_tag_contents_done.exit1824
  call void @cli_js_parse_done(ptr noundef nonnull %.612311922) #16
  call void @cli_js_output(ptr noundef nonnull %.612311922, ptr noundef %2) #16
  call void @cli_js_destroy(ptr noundef nonnull %.612311922) #16
  br label %bb.ud

bb.ud:                                            ; preds = %bb.uc, %html_tag_contents_done.exit1824
  call void @html_tag_arg_free(ptr noundef nonnull %6)
  %.not1452 = icmp eq ptr %.01138, null
  br i1 %.not1452, label %bb.ui, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %i.biy = getelementptr inbounds nuw i8, ptr %.01138, i64 8200 ; 2 uses
  %i.biz = load i64, ptr %i.biy, align 8, !tbaa !32 ; 2 uses
  %.not.i1825 = icmp eq i64 %i.biz, 0
  br i1 %.not.i1825, label %html_output_flush.exit1826, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  %i.bja = load i32, ptr %.01138, align 8, !tbaa !31
  %i.bjb = getelementptr inbounds nuw i8, ptr %.01138, i64 4
  %i.bjc = call i64 @cli_writen(i32 noundef %i.bja, ptr noundef nonnull %i.bjb, i64 noundef %i.biz) #16 ; 0 uses
  store i64 0, ptr %i.biy, align 8, !tbaa !32
  br label %html_output_flush.exit1826

html_output_flush.exit1826:                       ; preds = %bb.ue, %bb.uf
  %i.bjd = load i32, ptr %.01138, align 8, !tbaa !31 ; 2 uses
  %.not1453 = icmp eq i32 %i.bjd, -1
  br i1 %.not1453, label %bb.uh, label %bb.ug

bb.ug:                                            ; preds = %html_output_flush.exit1826
  %i.bje = call i32 @close(i32 noundef %i.bjd) #16 ; 0 uses
  br label %bb.uh

bb.uh:                                            ; preds = %bb.ug, %html_output_flush.exit1826
  call void @free(ptr noundef nonnull %.01138) #16
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %bb.ud
  %.not1454 = icmp eq ptr %.01140, null
  br i1 %.not1454, label %bb.un, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.bjf = getelementptr inbounds nuw i8, ptr %.01140, i64 8200 ; 2 uses
  %i.bjg = load i64, ptr %i.bjf, align 8, !tbaa !32 ; 2 uses
  %.not.i1827 = icmp eq i64 %i.bjg, 0
  br i1 %.not.i1827, label %html_output_flush.exit1828, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.bjh = load i32, ptr %.01140, align 8, !tbaa !31
  %i.bji = getelementptr inbounds nuw i8, ptr %.01140, i64 4
  %i.bjj = call i64 @cli_writen(i32 noundef %i.bjh, ptr noundef nonnull %i.bji, i64 noundef %i.bjg) #16 ; 0 uses
  store i64 0, ptr %i.bjf, align 8, !tbaa !32
  br label %html_output_flush.exit1828

html_output_flush.exit1828:                       ; preds = %bb.uj, %bb.uk
  %i.bjk = load i32, ptr %.01140, align 8, !tbaa !31 ; 2 uses
  %.not1455 = icmp eq i32 %i.bjk, -1
  br i1 %.not1455, label %bb.um, label %bb.ul

bb.ul:                                            ; preds = %html_output_flush.exit1828
  %i.bjl = call i32 @close(i32 noundef %i.bjk) #16 ; 0 uses
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %html_output_flush.exit1828
  call void @free(ptr noundef nonnull %.01140) #16
  br label %bb.un

bb.un:                                            ; preds = %bb.um, %bb.ui
  %.not1456 = icmp eq ptr %.511471925, null
  br i1 %.not1456, label %bb.us, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.bjm = load i32, ptr %.511471925, align 8, !tbaa !31 ; 3 uses
  %.not1457 = icmp eq i32 %i.bjm, -1
  br i1 %.not1457, label %bb.ur, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.bjn = getelementptr inbounds nuw i8, ptr %.511471925, i64 8200 ; 2 uses
  %i.bjo = load i64, ptr %i.bjn, align 8, !tbaa !32 ; 2 uses
  %.not.i1829 = icmp eq i64 %i.bjo, 0
  br i1 %.not.i1829, label %html_output_flush.exit1830, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.bjp = getelementptr inbounds nuw i8, ptr %.511471925, i64 4
  %i.bjq = call i64 @cli_writen(i32 noundef %i.bjm, ptr noundef nonnull %i.bjp, i64 noundef %i.bjo) #16 ; 0 uses
  store i64 0, ptr %i.bjn, align 8, !tbaa !32
  %.pre2610 = load i32, ptr %.511471925, align 8, !tbaa !31
  br label %html_output_flush.exit1830

html_output_flush.exit1830:                       ; preds = %bb.up, %bb.uq
  %i.bjr = phi i32 [ %i.bjm, %bb.up ], [ %.pre2610, %bb.uq ]
  %i.bjs = call i32 @close(i32 noundef %i.bjr) #16 ; 0 uses
  br label %bb.ur

bb.ur:                                            ; preds = %html_output_flush.exit1830, %bb.uo
  call void @free(ptr noundef nonnull %.511471925) #16
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.un
  %.not1458 = icmp eq ptr %.1412121923, null
  br i1 %.not1458, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  call void @free(ptr noundef nonnull %.1412121923) #16
  br label %bb.uu

bb.uu:                                            ; preds = %.thread1999, %bb.us, %bb.ut
  %.0103619281938195919671982198919982003 = phi i1 [ false, %.thread1999 ], [ %.010361928, %bb.us ], [ %.010361928, %bb.ut ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %.0103619281938195919671982198919982003
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @html_normalise_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.m_area_tag, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.e, align 8, !tbaa !48
  %i.f = call fastcc noundef zeroext i1 @cli_html_normalise(ptr noundef %0, ptr noundef %5, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @html_normalise_map_form_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.m_area_tag, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.e, align 8, !tbaa !48
  %i.f = call fastcc zeroext i1 @cli_html_normalise(ptr noundef %0, ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @html_screnc_decode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %2 = alloca %struct.screnc_state, align 4       ; 6 uses
  %3 = alloca %struct.m_area_tag, align 8         ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.f, align 8, !tbaa !48
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str, ptr noundef %1) #16 ; 0 uses
  %i.h = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 577, i32 noundef 384) #16 ; 7 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = call fastcc ptr @cli_readchunk(ptr noundef %3) ; 2 uses
  %.not70 = icmp eq ptr %i.j, null
  br i1 %.not70, label %.critedge.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #16
  br label %bb.x
end_hunk_2
