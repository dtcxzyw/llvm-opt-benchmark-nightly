inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZL13stbi__do_zlibP10stbi__zbufPciii:bb.a
  %.val.i.i.i.i48.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i.i49.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i.i50.i = icmp ult ptr %.val.i.i.i.i48.i, %.val2.i.i.i.i49.i
  br i1 %.not3.i.i.i.i50.i, label %bb.aj, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i51.i

bb.aj:                                            ; preds = %bb.ai
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 1
  store ptr %i.gp, ptr %0, align 8
  %i.gq = load i8, ptr %.val.i.i.i.i48.i, align 1
  %i.gr = zext i8 %i.gq to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i51.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i51.i:     ; preds = %bb.aj, %bb.ai
  %i.gs = phi i32 [ %i.gr, %bb.aj ], [ 0, %bb.ai ]
  %i.gt = shl i32 %i.gs, %i.gm
  %i.gu = or i32 %i.gt, %i.gn                     ; 3 uses
  store i32 %i.gu, ptr %i.z, align 8
  %i.gv = add nsw i32 %i.gm, 8                    ; 3 uses
  store i32 %i.gv, ptr %i.y, align 8
  %i.gw = icmp slt i32 %i.gm, 17
  br i1 %i.gw, label %.preheader194.i.a, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i37.i, !llvm.loop !44

_ZL14stbi__zreceiveP10stbi__zbufi.exit.i37.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i51.i, %bb.ah, %bb.ag
  %i.gx = phi i32 [ %i.cf, %bb.ag ], [ %i.gm, %bb.ah ], [ %i.gv, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i51.i ] ; 2 uses
  %i.gy = phi i32 [ %i.ce, %bb.ag ], [ %i.gn, %bb.ah ], [ %i.gu, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i51.i ] ; 2 uses
  %i.gz = and i32 %i.gy, 31
  %i.ha = lshr i32 %i.gy, 5                       ; 3 uses
  store i32 %i.ha, ptr %i.z, align 8
  %i.hb = add nsw i32 %i.gx, -5                   ; 3 uses
  store i32 %i.hb, ptr %i.y, align 8
  %i.hc = add nuw nsw i32 %i.gz, 257              ; 3 uses
  %i.hd = icmp slt i32 %i.gx, 10
  br i1 %i.hd, label %.preheader193.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i

.preheader193.i:                                  ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i37.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i67.i.i
  %i.he = phi i32 [ %i.hn, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i67.i.i ], [ %i.hb, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i37.i ] ; 5 uses
  %i.hf = phi i32 [ %i.hm, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i67.i.i ], [ %i.ha, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i37.i ] ; 3 uses
  %.highbits.i.i62.i.i = lshr i32 %i.hf, %i.he
  %.not.i.i63.i.i = icmp eq i32 %.highbits.i.i62.i.i, 0
  br i1 %.not.i.i63.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader193.i
  %i.hg = load ptr, ptr %i.ab, align 8
  store ptr %i.hg, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i

bb.al:                                            ; preds = %.preheader193.i
  %.val.i.i.i64.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i65.i.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i66.i.i = icmp ult ptr %.val.i.i.i64.i.i, %.val2.i.i.i65.i.i
  br i1 %.not3.i.i.i66.i.i, label %bb.am, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i67.i.i

bb.am:                                            ; preds = %bb.al
  %i.hh = getelementptr inbounds nuw i8, ptr %.val.i.i.i64.i.i, i64 1
  store ptr %i.hh, ptr %0, align 8
  %i.hi = load i8, ptr %.val.i.i.i64.i.i, align 1
  %i.hj = zext i8 %i.hi to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i67.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i67.i.i:     ; preds = %bb.am, %bb.al
  %i.hk = phi i32 [ %i.hj, %bb.am ], [ 0, %bb.al ]
  %i.hl = shl i32 %i.hk, %i.he
  %i.hm = or i32 %i.hl, %i.hf                     ; 3 uses
  store i32 %i.hm, ptr %i.z, align 8
  %i.hn = add nsw i32 %i.he, 8                    ; 3 uses
  store i32 %i.hn, ptr %i.y, align 8
  %i.ho = icmp slt i32 %i.he, 17
  br i1 %i.ho, label %.preheader193.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i, !llvm.loop !44

_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i67.i.i, %bb.ak, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i37.i
  %i.hp = phi i32 [ %i.hb, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i37.i ], [ %i.he, %bb.ak ], [ %i.hn, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i67.i.i ] ; 2 uses
  %i.hq = phi i32 [ %i.ha, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i37.i ], [ %i.hf, %bb.ak ], [ %i.hm, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i67.i.i ] ; 2 uses
  %i.hr = and i32 %i.hq, 31
  %i.hs = lshr i32 %i.hq, 5                       ; 3 uses
  store i32 %i.hs, ptr %i.z, align 8
  %i.ht = add nsw i32 %i.hp, -5                   ; 3 uses
  store i32 %i.ht, ptr %i.y, align 8
  %i.hu = add nuw nsw i32 %i.hr, 1                ; 2 uses
  %i.hv = icmp slt i32 %i.hp, 9
  br i1 %i.hv, label %.preheader192.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit76.i.i

.preheader192.i:                                  ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i75.i.i
  %i.hw = phi i32 [ %i.if, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i75.i.i ], [ %i.ht, %_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i ] ; 5 uses
  %i.hx = phi i32 [ %i.ie, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i75.i.i ], [ %i.hs, %_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i ] ; 3 uses
  %.highbits.i.i70.i.i = lshr i32 %i.hx, %i.hw
  %.not.i.i71.i.i = icmp eq i32 %.highbits.i.i70.i.i, 0
  br i1 %.not.i.i71.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader192.i
  %i.hy = load ptr, ptr %i.ab, align 8
  store ptr %i.hy, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit76.i.i

bb.ao:                                            ; preds = %.preheader192.i
  %.val.i.i.i72.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i73.i.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i74.i.i = icmp ult ptr %.val.i.i.i72.i.i, %.val2.i.i.i73.i.i
  br i1 %.not3.i.i.i74.i.i, label %bb.ap, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i75.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hz = getelementptr inbounds nuw i8, ptr %.val.i.i.i72.i.i, i64 1
  store ptr %i.hz, ptr %0, align 8
  %i.ia = load i8, ptr %.val.i.i.i72.i.i, align 1
  %i.ib = zext i8 %i.ia to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i75.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i75.i.i:     ; preds = %bb.ap, %bb.ao
  %i.ic = phi i32 [ %i.ib, %bb.ap ], [ 0, %bb.ao ]
  %i.id = shl i32 %i.ic, %i.hw
  %i.ie = or i32 %i.id, %i.hx                     ; 3 uses
  store i32 %i.ie, ptr %i.z, align 8
  %i.if = add nsw i32 %i.hw, 8                    ; 3 uses
  store i32 %i.if, ptr %i.y, align 8
  %i.ig = icmp slt i32 %i.hw, 17
  br i1 %i.ig, label %.preheader192.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit76.i.i, !llvm.loop !44

_ZL14stbi__zreceiveP10stbi__zbufi.exit76.i.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i75.i.i, %bb.an, %_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i
  %i.ih = phi i32 [ %i.ht, %_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i ], [ %i.hw, %bb.an ], [ %i.if, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i75.i.i ]
  %i.ii = phi i32 [ %i.hs, %_ZL14stbi__zreceiveP10stbi__zbufi.exit68.i.i ], [ %i.hx, %bb.an ], [ %i.ie, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i75.i.i ] ; 2 uses
  %i.ij = and i32 %i.ii, 15
  %i.ik = lshr i32 %i.ii, 4                       ; 2 uses
  store i32 %i.ik, ptr %i.z, align 8
  %i.il = add nsw i32 %i.ih, -4                   ; 2 uses
  store i32 %i.il, ptr %i.y, align 8
  %i.im = add nuw nsw i32 %i.ij, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.b, i8 0, i64 19, i1 false)
  %wide.trip.count.i.i = zext nneg i32 %i.im to i64
  br label %bb.aq

bb.aq:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit84.i.i, %_ZL14stbi__zreceiveP10stbi__zbufi.exit76.i.i
  %indvars.iv.i38.i = phi i64 [ 0, %_ZL14stbi__zreceiveP10stbi__zbufi.exit76.i.i ], [ %indvars.iv.next.i39.i, %_ZL14stbi__zreceiveP10stbi__zbufi.exit84.i.i ] ; 2 uses
  %i.in = phi i32 [ %i.il, %_ZL14stbi__zreceiveP10stbi__zbufi.exit76.i.i ], [ %i.je, %_ZL14stbi__zreceiveP10stbi__zbufi.exit84.i.i ] ; 3 uses
  %i.io = phi i32 [ %i.ik, %_ZL14stbi__zreceiveP10stbi__zbufi.exit76.i.i ], [ %i.jd, %_ZL14stbi__zreceiveP10stbi__zbufi.exit84.i.i ] ; 2 uses
  %i.ip = icmp slt i32 %i.in, 3
  br i1 %i.ip, label %.preheader176.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit84.i.i

.preheader176.i.i:                                ; preds = %bb.aq, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i83.i.i
  %i.iq = phi i32 [ %i.iz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i83.i.i ], [ %i.in, %bb.aq ] ; 5 uses
  %i.ir = phi i32 [ %i.iy, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i83.i.i ], [ %i.io, %bb.aq ] ; 3 uses
  %.highbits.i.i78.i.i = lshr i32 %i.ir, %i.iq
  %.not.i.i79.i.i = icmp eq i32 %.highbits.i.i78.i.i, 0
  br i1 %.not.i.i79.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.preheader176.i.i
  %i.is = load ptr, ptr %i.ab, align 8
  store ptr %i.is, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit84.i.i

bb.as:                                            ; preds = %.preheader176.i.i
  %.val.i.i.i80.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i81.i.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i82.i.i = icmp ult ptr %.val.i.i.i80.i.i, %.val2.i.i.i81.i.i
  br i1 %.not3.i.i.i82.i.i, label %bb.at, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i83.i.i

bb.at:                                            ; preds = %bb.as
  %i.it = getelementptr inbounds nuw i8, ptr %.val.i.i.i80.i.i, i64 1
  store ptr %i.it, ptr %0, align 8
  %i.iu = load i8, ptr %.val.i.i.i80.i.i, align 1
  %i.iv = zext i8 %i.iu to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i83.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i83.i.i:     ; preds = %bb.at, %bb.as
  %i.iw = phi i32 [ %i.iv, %bb.at ], [ 0, %bb.as ]
  %i.ix = shl i32 %i.iw, %i.iq
  %i.iy = or i32 %i.ix, %i.ir                     ; 3 uses
  store i32 %i.iy, ptr %i.z, align 8
  %i.iz = add nsw i32 %i.iq, 8                    ; 3 uses
  store i32 %i.iz, ptr %i.y, align 8
  %i.ja = icmp slt i32 %i.iq, 17
  br i1 %i.ja, label %.preheader176.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit84.i.i, !llvm.loop !44

_ZL14stbi__zreceiveP10stbi__zbufi.exit84.i.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i83.i.i, %bb.ar, %bb.aq
  %i.jb = phi i32 [ %i.in, %bb.aq ], [ %i.iq, %bb.ar ], [ %i.iz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i83.i.i ]
  %i.jc = phi i32 [ %i.io, %bb.aq ], [ %i.ir, %bb.ar ], [ %i.iy, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i83.i.i ] ; 2 uses
  %i.jd = lshr i32 %i.jc, 3                       ; 2 uses
  store i32 %i.jd, ptr %i.z, align 8
  %i.je = add nsw i32 %i.jb, -3                   ; 2 uses
  store i32 %i.je, ptr %i.y, align 8
  %i.jf = trunc i32 %i.jc to i8
  %i.jg = and i8 %i.jf, 7
  %i.jh = getelementptr inbounds nuw i8, ptr @_ZZL27stbi__compute_huffman_codesP10stbi__zbufE15length_dezigzag, i64 %indvars.iv.i38.i
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jj
  store i8 %i.jg, ptr %i.jk, align 1
  %indvars.iv.next.i39.i = add nuw nsw i64 %indvars.iv.i38.i, 1 ; 2 uses
  %exitcond.not.i40.i = icmp eq i64 %indvars.iv.next.i39.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i40.i, label %bb.au, label %bb.aq, !llvm.loop !50

bb.au:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit84.i.i
  %i.jl = add nuw nsw i32 %i.hu, %i.hc            ; 3 uses
  %i.jm = call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %5, ptr noundef nonnull %i.b, i32 noundef 19)
  %.not.i41.i = icmp eq i32 %i.jm, 0
  br i1 %.not.i41.i, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i, label %.preheader.i42.i

.preheader.i42.i:                                 ; preds = %bb.au
  %.promoted171.i.i = load i32, ptr %i.y, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.cd, %.preheader.i42.i
  %.051172.i.i = phi i32 [ 0, %.preheader.i42.i ], [ %.046.pn.i.i, %bb.cd ] ; 7 uses
  %i.jn = phi i32 [ %.promoted171.i.i, %.preheader.i42.i ], [ %i.oe, %bb.cd ] ; 4 uses
  %i.jo = icmp slt i32 %i.jn, 16
  br i1 %i.jo, label %bb.aw, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %.val.i.i45.i = load ptr, ptr %0, align 8       ; 2 uses
  %.val20.i.i.i = load ptr, ptr %i.ab, align 8    ; 3 uses
  %.not22.i.i.i = icmp ult ptr %.val.i.i45.i, %.val20.i.i.i
  br i1 %.not22.i.i.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jp = load i32, ptr %i.aa, align 4
  %.not18.i.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not18.i.i.i, label %bb.ay, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i

bb.ay:                                            ; preds = %bb.ax
  store i32 1, ptr %i.aa, align 4
  %i.jq = add nsw i32 %i.jn, 16                   ; 2 uses
  store i32 %i.jq, ptr %i.y, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i

bb.az:                                            ; preds = %bb.aw
  %.promoted.i.i85.i.i = load i32, ptr %i.z, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i90.i.i, %bb.az
  %.val.i.i.i86.i.i = phi ptr [ %.val.i.i23.i.i.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i90.i.i ], [ %.val.i.i45.i, %bb.az ] ; 4 uses
  %i.jr = phi i32 [ %i.jz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i90.i.i ], [ %i.jn, %bb.az ] ; 5 uses
  %i.js = phi i32 [ %i.jy, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i90.i.i ], [ %.promoted.i.i85.i.i, %bb.az ] ; 2 uses
  %.highbits.i.i87.i.i = lshr i32 %i.js, %i.jr
  %.not.i.i88.i.i = icmp eq i32 %.highbits.i.i87.i.i, 0
  br i1 %.not.i.i88.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store ptr %.val20.i.i.i, ptr %0, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %.not3.i.i.i89.i.i = icmp ult ptr %.val.i.i.i86.i.i, %.val20.i.i.i
  br i1 %.not3.i.i.i89.i.i, label %bb.bd, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i90.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.jt = getelementptr inbounds nuw i8, ptr %.val.i.i.i86.i.i, i64 1 ; 2 uses
  store ptr %i.jt, ptr %0, align 8
  %i.ju = load i8, ptr %.val.i.i.i86.i.i, align 1
  %i.jv = zext i8 %i.ju to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i90.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i90.i.i:     ; preds = %bb.bd, %bb.bc
  %.val.i.i23.i.i.i = phi ptr [ %i.jt, %bb.bd ], [ %.val.i.i.i86.i.i, %bb.bc ]
  %i.jw = phi i32 [ %i.jv, %bb.bd ], [ 0, %bb.bc ]
  %i.jx = shl i32 %i.jw, %i.jr
  %i.jy = or i32 %i.jx, %i.js                     ; 2 uses
  store i32 %i.jy, ptr %i.z, align 8
  %i.jz = add nsw i32 %i.jr, 8                    ; 3 uses
  store i32 %i.jz, ptr %i.y, align 8
  %i.ka = icmp slt i32 %i.jr, 17
  br i1 %i.ka, label %bb.ba, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i, !llvm.loop !44

_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i90.i.i, %bb.bb, %bb.ay, %bb.av
  %i.kb = phi i32 [ %i.jn, %bb.av ], [ %i.jr, %bb.bb ], [ %i.jq, %bb.ay ], [ %i.jz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i90.i.i ] ; 2 uses
  %i.kc = load i32, ptr %i.z, align 8             ; 4 uses
  %i.kd = and i32 %i.kc, 511
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2            ; 2 uses
  %.not19.i.i.i = icmp eq i16 %i.kg, 0
  br i1 %.not19.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i
  %i.kh = zext i16 %i.kg to i32                   ; 2 uses
  %i.ki = lshr i32 %i.kh, 9                       ; 2 uses
  %i.kj = lshr i32 %i.kc, %i.ki                   ; 2 uses
  store i32 %i.kj, ptr %i.z, align 8
  %i.kk = sub nsw i32 %i.kb, %i.ki                ; 2 uses
  store i32 %i.kk, ptr %i.y, align 8
  %i.kl = and i32 %i.kh, 511
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i

bb.bf:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i
  %trunc.i.i.i.i.i.i = trunc i32 %i.kc to i16
  %rev.i.i.i.i.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i.i.i)
  %i.km = zext i16 %rev.i.i.i.i.i.i to i32        ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.bg ], [ 10, %bb.bf ] ; 7 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i.i
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = icmp sgt i32 %i.ko, %i.km
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.kp, label %bb.bh, label %bb.bg, !llvm.loop !51

bb.bh:                                            ; preds = %bb.bg
  %i.kq = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32 ; 3 uses
  %i.kr = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 15
  br i1 %i.kr, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ks = sub nuw nsw i32 16, %i.kq
  %i.kt = lshr i32 %i.km, %i.ks
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.i
  %i.kv = load i16, ptr %i.ku, align 2
  %i.kw = zext i16 %i.kv to i32
  %i.kx = sub nsw i32 %i.kt, %i.kw
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i.i
  %i.kz = load i16, ptr %i.ky, align 2
  %i.la = zext i16 %i.kz to i32
  %i.lb = add nsw i32 %i.kx, %i.la                ; 2 uses
  %i.lc = icmp sgt i32 %i.lb, 287
  br i1 %i.lc, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ld = sext i32 %i.lb to i64                   ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %i.af, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1
  %i.lg = zext i8 %i.lf to i64
  %.not.i21.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.lg
  br i1 %.not.i21.i.i.i, label %bb.bk, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i

bb.bk:                                            ; preds = %bb.bj
  %i.lh = lshr i32 %i.kc, %i.kq                   ; 2 uses
  store i32 %i.lh, ptr %i.z, align 8
  %i.li = sub nsw i32 %i.kb, %i.kq                ; 2 uses
  store i32 %i.li, ptr %i.y, align 8
  %i.lj = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.ld
  %i.lk = load i16, ptr %i.lj, align 2
  %i.ll = zext i16 %i.lk to i32
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i

_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i: ; preds = %bb.bk, %bb.be
  %.promoted.i.i109.i.i = phi i32 [ %i.lh, %bb.bk ], [ %i.kj, %bb.be ] ; 6 uses
  %i.lm = phi i32 [ %i.li, %bb.bk ], [ %i.kk, %bb.be ] ; 10 uses
  %.0.i.i.i = phi i32 [ %i.ll, %bb.bk ], [ %i.kl, %bb.be ] ; 4 uses
  %or.cond.i.i = icmp samesign ugt i32 %.0.i.i.i, 18
  br i1 %or.cond.i.i, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i, label %bb.bl

bb.bl:                                            ; preds = %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i
  %i.ln = icmp samesign ult i32 %.0.i.i.i, 16
  br i1 %i.ln, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.lo = trunc nuw nsw i32 %.0.i.i.i to i8
  %6 = add nsw i32 %.051172.i.i, 1
  %i.lp = sext i32 %.051172.i.i to i64
  %i.lq = getelementptr inbounds i8, ptr %i.a, i64 %i.lp
  store i8 %i.lo, ptr %i.lq, align 1
  br label %bb.cd

bb.bn:                                            ; preds = %bb.bl
  switch i32 %.0.i.i.i, label %bb.bx [
    i32 16, label %bb.bo
    i32 17, label %bb.bt
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.lr = icmp slt i32 %i.lm, 2
  br i1 %i.lr, label %.preheader174.i.i.a, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit99.i.i

.preheader174.i.i.a:                              ; preds = %bb.bo, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i98.i.i
  %i.ls = phi i32 [ %i.mb, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i98.i.i ], [ %i.lm, %bb.bo ] ; 5 uses
  %i.lt = phi i32 [ %i.ma, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i98.i.i ], [ %.promoted.i.i109.i.i, %bb.bo ] ; 3 uses
  %.highbits.i.i93.i.i = lshr i32 %i.lt, %i.ls
  %.not.i.i94.i.i = icmp eq i32 %.highbits.i.i93.i.i, 0
  br i1 %.not.i.i94.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.preheader174.i.i.a
  %i.lu = load ptr, ptr %i.ab, align 8
  store ptr %i.lu, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit99.i.i

bb.bq:                                            ; preds = %.preheader174.i.i.a
  %.val.i.i.i95.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i96.i.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i97.i.i = icmp ult ptr %.val.i.i.i95.i.i, %.val2.i.i.i96.i.i
  br i1 %.not3.i.i.i97.i.i, label %bb.br, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i98.i.i

bb.br:                                            ; preds = %bb.bq
  %i.lv = getelementptr inbounds nuw i8, ptr %.val.i.i.i95.i.i, i64 1
  store ptr %i.lv, ptr %0, align 8
  %i.lw = load i8, ptr %.val.i.i.i95.i.i, align 1
  %i.lx = zext i8 %i.lw to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i98.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i98.i.i:     ; preds = %bb.br, %bb.bq
  %i.ly = phi i32 [ %i.lx, %bb.br ], [ 0, %bb.bq ]
  %i.lz = shl i32 %i.ly, %i.ls
  %i.ma = or i32 %i.lz, %i.lt                     ; 3 uses
  store i32 %i.ma, ptr %i.z, align 8
  %i.mb = add nsw i32 %i.ls, 8                    ; 3 uses
  store i32 %i.mb, ptr %i.y, align 8
  %i.mc = icmp slt i32 %i.ls, 17
  br i1 %i.mc, label %.preheader174.i.i.a, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit99.i.i, !llvm.loop !44

_ZL14stbi__zreceiveP10stbi__zbufi.exit99.i.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i98.i.i, %bb.bp, %bb.bo
  %i.md = phi i32 [ %i.lm, %bb.bo ], [ %i.ls, %bb.bp ], [ %i.mb, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i98.i.i ]
  %i.me = phi i32 [ %.promoted.i.i109.i.i, %bb.bo ], [ %i.lt, %bb.bp ], [ %i.ma, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i98.i.i ] ; 2 uses
  %i.mf = lshr i32 %i.me, 2
  store i32 %i.mf, ptr %i.z, align 8
  %i.mg = add nsw i32 %i.md, -2                   ; 2 uses
  store i32 %i.mg, ptr %i.y, align 8
  %i.mh = icmp eq i32 %.051172.i.i, 0
  br i1 %i.mh, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i, label %bb.bs

bb.bs:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit99.i.i
  %i.mi = and i32 %i.me, 3
  %i.mj = add nuw nsw i32 %i.mi, 3
  %i.mk = sext i32 %.051172.i.i to i64
  %i.ml = getelementptr i8, ptr %i.a, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 -1
  %i.mn = load i8, ptr %i.mm, align 1
  br label %bb.cb

bb.bt:                                            ; preds = %bb.bn
  %i.mo = icmp slt i32 %i.lm, 3
  br i1 %i.mo, label %.preheader175.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit108.i.i

.preheader175.i.i:                                ; preds = %bb.bt, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i107.i.i
  %i.mp = phi i32 [ %i.my, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i107.i.i ], [ %i.lm, %bb.bt ] ; 5 uses
  %i.mq = phi i32 [ %i.mx, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i107.i.i ], [ %.promoted.i.i109.i.i, %bb.bt ] ; 3 uses
  %.highbits.i.i102.i.i = lshr i32 %i.mq, %i.mp
  %.not.i.i103.i.i = icmp eq i32 %.highbits.i.i102.i.i, 0
  br i1 %.not.i.i103.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.preheader175.i.i
  %i.mr = load ptr, ptr %i.ab, align 8
  store ptr %i.mr, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit108.i.i

bb.bv:                                            ; preds = %.preheader175.i.i
  %.val.i.i.i104.i.i = load ptr, ptr %0, align 8  ; 3 uses
  %.val2.i.i.i105.i.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i106.i.i = icmp ult ptr %.val.i.i.i104.i.i, %.val2.i.i.i105.i.i
  br i1 %.not3.i.i.i106.i.i, label %bb.bw, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i107.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.ms = getelementptr inbounds nuw i8, ptr %.val.i.i.i104.i.i, i64 1
  store ptr %i.ms, ptr %0, align 8
  %i.mt = load i8, ptr %.val.i.i.i104.i.i, align 1
  %i.mu = zext i8 %i.mt to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i107.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i107.i.i:    ; preds = %bb.bw, %bb.bv
  %i.mv = phi i32 [ %i.mu, %bb.bw ], [ 0, %bb.bv ]
  %i.mw = shl i32 %i.mv, %i.mp
  %i.mx = or i32 %i.mw, %i.mq                     ; 3 uses
  store i32 %i.mx, ptr %i.z, align 8
  %i.my = add nsw i32 %i.mp, 8                    ; 3 uses
  store i32 %i.my, ptr %i.y, align 8
  %i.mz = icmp slt i32 %i.mp, 17
  br i1 %i.mz, label %.preheader175.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit108.i.i, !llvm.loop !44

_ZL14stbi__zreceiveP10stbi__zbufi.exit108.i.i:    ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i107.i.i, %bb.bu, %bb.bt
  %i.na = phi i32 [ %i.lm, %bb.bt ], [ %i.mp, %bb.bu ], [ %i.my, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i107.i.i ]
  %i.nb = phi i32 [ %.promoted.i.i109.i.i, %bb.bt ], [ %i.mq, %bb.bu ], [ %i.mx, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i107.i.i ] ; 2 uses
  %i.nc = and i32 %i.nb, 7
  %i.nd = lshr i32 %i.nb, 3
  store i32 %i.nd, ptr %i.z, align 8
  %i.ne = add nsw i32 %i.na, -3                   ; 2 uses
  store i32 %i.ne, ptr %i.y, align 8
  %i.nf = add nuw nsw i32 %i.nc, 3
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bn
  %i.ng = icmp slt i32 %i.lm, 7
  br i1 %i.ng, label %.preheader173.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit117.i.i

.preheader173.i.i:                                ; preds = %bb.bx, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i116.i.i
  %i.nh = phi i32 [ %i.nq, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i116.i.i ], [ %i.lm, %bb.bx ] ; 5 uses
  %i.ni = phi i32 [ %i.np, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i116.i.i ], [ %.promoted.i.i109.i.i, %bb.bx ] ; 3 uses
  %.highbits.i.i111.i.i = lshr i32 %i.ni, %i.nh
  %.not.i.i112.i.i = icmp eq i32 %.highbits.i.i111.i.i, 0
  br i1 %.not.i.i112.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.preheader173.i.i
  %i.nj = load ptr, ptr %i.ab, align 8
  store ptr %i.nj, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit117.i.i

bb.bz:                                            ; preds = %.preheader173.i.i
  %.val.i.i.i113.i.i = load ptr, ptr %0, align 8  ; 3 uses
  %.val2.i.i.i114.i.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i115.i.i = icmp ult ptr %.val.i.i.i113.i.i, %.val2.i.i.i114.i.i
  br i1 %.not3.i.i.i115.i.i, label %bb.ca, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i116.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.nk = getelementptr inbounds nuw i8, ptr %.val.i.i.i113.i.i, i64 1
  store ptr %i.nk, ptr %0, align 8
  %i.nl = load i8, ptr %.val.i.i.i113.i.i, align 1
  %i.nm = zext i8 %i.nl to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i116.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i116.i.i:    ; preds = %bb.ca, %bb.bz
  %i.nn = phi i32 [ %i.nm, %bb.ca ], [ 0, %bb.bz ]
  %i.no = shl i32 %i.nn, %i.nh
  %i.np = or i32 %i.no, %i.ni                     ; 3 uses
  store i32 %i.np, ptr %i.z, align 8
  %i.nq = add nsw i32 %i.nh, 8                    ; 3 uses
  store i32 %i.nq, ptr %i.y, align 8
  %i.nr = icmp slt i32 %i.nh, 17
  br i1 %i.nr, label %.preheader173.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit117.i.i, !llvm.loop !44

_ZL14stbi__zreceiveP10stbi__zbufi.exit117.i.i:    ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i116.i.i, %bb.by, %bb.bx
  %i.ns = phi i32 [ %i.lm, %bb.bx ], [ %i.nh, %bb.by ], [ %i.nq, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i116.i.i ]
  %i.nt = phi i32 [ %.promoted.i.i109.i.i, %bb.bx ], [ %i.ni, %bb.by ], [ %i.np, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i116.i.i ] ; 2 uses
  %i.nu = and i32 %i.nt, 127
  %i.nv = lshr i32 %i.nt, 7
  store i32 %i.nv, ptr %i.z, align 8
  %i.nw = add nsw i32 %i.ns, -7                   ; 2 uses
  store i32 %i.nw, ptr %i.y, align 8
  %i.nx = add nuw nsw i32 %i.nu, 11
  br label %bb.cb

bb.cb:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit117.i.i, %_ZL14stbi__zreceiveP10stbi__zbufi.exit108.i.i, %bb.bs
  %i.ny = phi i32 [ %i.mg, %bb.bs ], [ %i.ne, %_ZL14stbi__zreceiveP10stbi__zbufi.exit108.i.i ], [ %i.nw, %_ZL14stbi__zreceiveP10stbi__zbufi.exit117.i.i ]
  %.046.i.i = phi i32 [ %i.mj, %bb.bs ], [ %i.nf, %_ZL14stbi__zreceiveP10stbi__zbufi.exit108.i.i ], [ %i.nx, %_ZL14stbi__zreceiveP10stbi__zbufi.exit117.i.i ] ; 3 uses
  %.0.i43.i = phi i8 [ %i.mn, %bb.bs ], [ 0, %_ZL14stbi__zreceiveP10stbi__zbufi.exit108.i.i ], [ 0, %_ZL14stbi__zreceiveP10stbi__zbufi.exit117.i.i ]
  %i.nz = sub nsw i32 %i.jl, %.051172.i.i
  %i.oa = icmp slt i32 %i.nz, %.046.i.i
  br i1 %i.oa, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ob = sext i32 %.051172.i.i to i64
  %i.oc = getelementptr inbounds i8, ptr %i.a, i64 %i.ob
  %i.od = zext nneg i32 %.046.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.oc, i8 %.0.i43.i, i64 %i.od, i1 false)
  %7 = add nsw i32 %.046.i.i, %.051172.i.i
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bm
  %i.oe = phi i32 [ %i.lm, %bb.bm ], [ %i.ny, %bb.cc ]
  %.046.pn.i.i = phi i32 [ %6, %bb.bm ], [ %7, %bb.cc ] ; 3 uses
  %i.of = icmp slt i32 %.046.pn.i.i, %i.jl
  br i1 %i.of, label %bb.av, label %bb.ce, !llvm.loop !52

bb.ce:                                            ; preds = %bb.cd
  %.not58.i.i = icmp eq i32 %.046.pn.i.i, %i.jl
  br i1 %.not58.i.i, label %bb.cf, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i

bb.cf:                                            ; preds = %bb.ce
  %i.og = call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.ah, ptr noundef nonnull %i.a, i32 noundef %i.hc)
  %.not59.i.i = icmp eq i32 %i.og, 0
  br i1 %.not59.i.i, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i

_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i: ; preds = %bb.ce, %bb.cb, %_ZL14stbi__zreceiveP10stbi__zbufi.exit99.i.i, %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i, %bb.bj, %bb.bi, %bb.bh, %bb.ax
  %i.oh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.39, ptr %i.oh, align 8
  br label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i

_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i: ; preds = %bb.cf, %bb.au, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i: ; preds = %bb.cf
  %i.oi = zext nneg i32 %i.hc to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.oi
  %i.ok = call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.ai, ptr noundef nonnull %i.oj, i32 noundef %i.hu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %.not18.i = icmp eq i32 %i.ok, 0
  br i1 %.not18.i, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i, %bb.af
  %i.ol = load ptr, ptr %i.e, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i.i, %bb.cg
  %.066.i.i = phi ptr [ %i.ol, %bb.cg ], [ %.9.i.i, %.loopexit.i.i ] ; 9 uses
  %i.om = load i32, ptr %i.y, align 8             ; 4 uses
  %i.on = icmp slt i32 %i.om, 16
  br i1 %i.on, label %bb.ci, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i

bb.ci:                                            ; preds = %bb.ch
  %.val.i.i71.i = load ptr, ptr %0, align 8       ; 2 uses
  %.val20.i.i72.i = load ptr, ptr %i.ab, align 8  ; 3 uses
  %.not22.i.i73.i = icmp ult ptr %.val.i.i71.i, %.val20.i.i72.i
  br i1 %.not22.i.i73.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.oo = load i32, ptr %i.aa, align 4
  %.not18.i.i74.i = icmp eq i32 %i.oo, 0
  br i1 %.not18.i.i74.i, label %bb.ck, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i

bb.ck:                                            ; preds = %bb.cj
  store i32 1, ptr %i.aa, align 4
  %i.op = add nsw i32 %i.om, 16                   ; 2 uses
  store i32 %i.op, ptr %i.y, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i

bb.cl:                                            ; preds = %bb.ci
  %.promoted.i.i.i75.i = load i32, ptr %i.z, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i80.i, %bb.cl
  %.val.i.i.i.i76.i = phi ptr [ %.val.i.i23.i.i81.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i80.i ], [ %.val.i.i71.i, %bb.cl ] ; 4 uses
  %i.oq = phi i32 [ %i.oy, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i80.i ], [ %i.om, %bb.cl ] ; 5 uses
  %i.or = phi i32 [ %i.ox, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i80.i ], [ %.promoted.i.i.i75.i, %bb.cl ] ; 2 uses
  %.highbits.i.i.i77.i = lshr i32 %i.or, %i.oq
  %.not.i.i.i78.i = icmp eq i32 %.highbits.i.i.i77.i, 0
  br i1 %.not.i.i.i78.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store ptr %.val20.i.i72.i, ptr %0, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i

bb.co:                                            ; preds = %bb.cm
  %.not3.i.i.i.i79.i = icmp ult ptr %.val.i.i.i.i76.i, %.val20.i.i72.i
  br i1 %.not3.i.i.i.i79.i, label %bb.cp, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i80.i

bb.cp:                                            ; preds = %bb.co
  %i.os = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i76.i, i64 1 ; 2 uses
  store ptr %i.os, ptr %0, align 8
  %i.ot = load i8, ptr %.val.i.i.i.i76.i, align 1
  %i.ou = zext i8 %i.ot to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i80.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i80.i:     ; preds = %bb.cp, %bb.co
  %.val.i.i23.i.i81.i = phi ptr [ %i.os, %bb.cp ], [ %.val.i.i.i.i76.i, %bb.co ]
  %i.ov = phi i32 [ %i.ou, %bb.cp ], [ 0, %bb.co ]
  %i.ow = shl i32 %i.ov, %i.oq
  %i.ox = or i32 %i.ow, %i.or                     ; 2 uses
  store i32 %i.ox, ptr %i.z, align 8
  %i.oy = add nsw i32 %i.oq, 8                    ; 3 uses
  store i32 %i.oy, ptr %i.y, align 8
  %i.oz = icmp slt i32 %i.oq, 17
  br i1 %i.oz, label %bb.cm, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i, !llvm.loop !44

_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i:   ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i80.i, %bb.cn, %bb.ck, %bb.ch
  %i.pa = phi i32 [ %i.om, %bb.ch ], [ %i.oq, %bb.cn ], [ %i.op, %bb.ck ], [ %i.oy, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i80.i ] ; 2 uses
  %i.pb = load i32, ptr %i.z, align 8             ; 4 uses
  %i.pc = and i32 %i.pb, 511
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2            ; 2 uses
  %.not19.i.i53.i = icmp eq i16 %i.pf, 0
  br i1 %.not19.i.i53.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i
  %i.pg = zext i16 %i.pf to i32                   ; 2 uses
  %i.ph = lshr i32 %i.pg, 9                       ; 2 uses
  %i.pi = lshr i32 %i.pb, %i.ph                   ; 2 uses
  store i32 %i.pi, ptr %i.z, align 8
  %i.pj = sub nsw i32 %i.pa, %i.ph                ; 2 uses
  store i32 %i.pj, ptr %i.y, align 8
  %i.pk = and i32 %i.pg, 511
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i54.i

bb.cr:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i
  %trunc.i.i.i.i.i66.i = trunc i32 %i.pb to i16
  %rev.i.i.i.i.i67.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i.i66.i)
  %i.pl = zext i16 %rev.i.i.i.i.i67.i to i32      ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %indvars.iv.i.i.i68.i = phi i64 [ %indvars.iv.next.i.i.i69.i, %bb.cs ], [ 10, %bb.cr ] ; 7 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i68.i
  %i.pn = load i32, ptr %i.pm, align 4
  %i.po = icmp sgt i32 %i.pn, %i.pl
  %indvars.iv.next.i.i.i69.i = add nuw nsw i64 %indvars.iv.i.i.i68.i, 1
  br i1 %i.po, label %bb.ct, label %bb.cs, !llvm.loop !51

bb.ct:                                            ; preds = %bb.cs
  %i.pp = trunc nuw nsw i64 %indvars.iv.i.i.i68.i to i32 ; 3 uses
  %i.pq = icmp samesign ugt i64 %indvars.iv.i.i.i68.i, 15
  br i1 %i.pq, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pr = sub nuw nsw i32 16, %i.pp
  %i.ps = lshr i32 %i.pl, %i.pr
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i68.i
  %i.pu = load i16, ptr %i.pt, align 2
  %i.pv = zext i16 %i.pu to i32
  %i.pw = sub nsw i32 %i.ps, %i.pv
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.i.i68.i
  %i.py = load i16, ptr %i.px, align 2
  %i.pz = zext i16 %i.py to i32
  %i.qa = add nsw i32 %i.pw, %i.pz                ; 2 uses
  %i.qb = icmp sgt i32 %i.qa, 287
  br i1 %i.qb, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qc = sext i32 %i.qa to i64                   ; 2 uses
  %i.qd = getelementptr inbounds i8, ptr %i.am, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1
  %i.qf = zext i8 %i.qe to i64
  %.not.i21.i.i70.i = icmp eq i64 %indvars.iv.i.i.i68.i, %i.qf
  br i1 %.not.i21.i.i70.i, label %bb.cw, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i

bb.cw:                                            ; preds = %bb.cv
  %i.qg = lshr i32 %i.pb, %i.pp                   ; 2 uses
  store i32 %i.qg, ptr %i.z, align 8
  %i.qh = sub nsw i32 %i.pa, %i.pp                ; 2 uses
  store i32 %i.qh, ptr %i.y, align 8
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.qc
  %i.qj = load i16, ptr %i.qi, align 2
  %i.qk = zext i16 %i.qj to i32
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i54.i

_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i54.i: ; preds = %bb.cw, %bb.cq
  %.promoted.i.i86.i.i = phi i32 [ %i.qg, %bb.cw ], [ %i.pi, %bb.cq ] ; 3 uses
  %i.ql = phi i32 [ %i.qh, %bb.cw ], [ %i.pj, %bb.cq ] ; 5 uses
  %.0.i.i55.i = phi i32 [ %i.qk, %bb.cw ], [ %i.pk, %bb.cq ] ; 6 uses
  %i.qm = icmp samesign ult i32 %.0.i.i55.i, 256
  br i1 %i.qm, label %bb.cx, label %bb.dd

bb.cx:                                            ; preds = %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i54.i
  %i.qn = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not83.i.i = icmp ult ptr %.066.i.i, %i.qn
  br i1 %.not83.i.i, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr %.066.i.i, ptr %i.e, align 8
  %i.qo = load i32, ptr %i.i, align 8
  %.not.i.i60.i = icmp eq i32 %i.qo, 0
  br i1 %.not.i.i60.i, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qp = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.qq = ptrtoint ptr %.066.i.i to i64
  %i.qr = ptrtoint ptr %i.qp to i64               ; 2 uses
  %i.qs = sub i64 %i.qq, %i.qr                    ; 2 uses
  %i.qt = trunc i64 %i.qs to i32                  ; 3 uses
  %i.qu = icmp eq i32 %i.qt, -1
  br i1 %i.qu, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %.preheader.i.i61.i

.preheader.i.i61.i:                               ; preds = %bb.cz
  %i.qv = ptrtoint ptr %i.qn to i64
  %i.qw = sub i64 %i.qv, %i.qr
  %i.qx = trunc i64 %i.qw to i32                  ; 3 uses
  %.not261.i.i = icmp ult i32 %i.qt, %i.qx
  br i1 %.not261.i.i, label %._crit_edge.i.i64.i, label %.lr.ph.i.i62.i

.lr.ph.i.i62.i:                                   ; preds = %.preheader.i.i61.i, %bb.da
  %.02528.i.i63.i = phi i32 [ %i.qz, %bb.da ], [ %i.qx, %.preheader.i.i61.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  %.pre.i344 = load ptr, ptr %i.h, align 8
  %.pre35.i = load ptr, ptr %i.i, align 8
  br label %.thread.i341

bb.ey:                                            ; preds = %bb.ex
  %i.rs = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.rt = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv                    ; 2 uses
  %i.rx = trunc i64 %i.rw to i32                  ; 2 uses
  %i.ry = icmp sgt i32 %i.gt, %i.rx
  br i1 %i.ry, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %.thread.i341

.thread.i341:                                     ; preds = %bb.ey, %..thread_crit_edge.i342
  %i.rz = phi ptr [ %.pre35.i, %..thread_crit_edge.i342 ], [ %i.rs, %bb.ey ]
  %i.sa = phi ptr [ %.pre.i344, %..thread_crit_edge.i342 ], [ %i.rt, %bb.ey ] ; 2 uses
  %i.sb = zext nneg i32 %i.gt to i64              ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sb
  %.not32.i = icmp ugt ptr %i.sc, %i.rz
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386

_ZL10stbi__getnP13stbi__contextPhi.exit.thread386: ; preds = %.thread.i341
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.sa, i64 %i.sb, i1 false)
  %i.sd = load ptr, ptr %i.h, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  store ptr %i.se, ptr %i.h, align 8
  br label %.loopexit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.ey
  %sext.i = shl i64 %i.rw, 32
  %i.sf = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.rt, i64 %i.sf, i1 false)
  %i.sg = load ptr, ptr %i.k, align 8
  %i.sh = load ptr, ptr %i.l, align 8
  %i.si = getelementptr inbounds i8, ptr %i.rq, i64 %i.sf
  %i.sj = sub nsw i32 %i.gt, %i.rx                ; 2 uses
  %i.sk = tail call noundef i32 %i.sg(ptr noundef %i.sh, ptr noundef %i.si, i32 noundef %i.sj), !inline_history !166
  %.not = icmp eq i32 %i.sk, %i.sj
  %i.sl = load ptr, ptr %i.i, align 8
  store ptr %i.sl, ptr %i.h, align 8
  br i1 %.not, label %.loopexit, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread

_ZL10stbi__getnP13stbi__contextPhi.exit.thread:   ; preds = %.thread.i341, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.sm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.27, ptr %i.sm, align 8
  br label %.thread399

bb.ez:                                            ; preds = %bb.aw
  %.not256 = icmp eq i32 %.0230, 0
  br i1 %.not256, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.sn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.18, ptr %i.sn, align 8
  br label %.thread399

bb.fb:                                            ; preds = %bb.ez
  %.not257 = icmp eq i32 %1, 0
  br i1 %.not257, label %bb.fc, label %.thread399

bb.fc:                                            ; preds = %bb.fb
  %i.so = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.sq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.sq, align 8
  br label %.thread399

bb.fe:                                            ; preds = %bb.fc
  %i.sr = load i32, ptr %i.d, align 8
  %i.ss = load i32, ptr %i.gn, align 8
  %i.st = mul i32 %i.ss, %i.sr
  %i.su = add i32 %i.st, 7
  %i.sv = lshr i32 %i.su, 3
  %i.sw = load i32, ptr %i.go, align 4            ; 2 uses
  %i.sx = load i32, ptr %i.gm, align 8
  %i.sy = mul i32 %i.sx, %i.sw
  %i.sz = mul i32 %i.sy, %i.sv
  %i.ta = add i32 %i.sz, %i.sw                    ; 2 uses
  %.not258 = icmp eq i32 %.0234, 0                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.tb = sext i32 %i.ta to i64
  %i.tc = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.tb) #50 ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.te = zext i1 %.not258 to i32
  store ptr %i.so, ptr %3, align 8
  %i.tf = sext i32 %.0212 to i64
  %i.tg = getelementptr inbounds i8, ptr %i.so, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.tg, ptr %i.th, align 8
  %i.ti = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.tc, i32 noundef %i.ta, i32 noundef 1, i32 noundef %i.te)
  %.not.i345 = icmp eq i32 %i.ti, 0
  br i1 %.not.i345, label %bb.fg, label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8
  call void @free(ptr noundef %i.tk) #47
  br label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  store ptr null, ptr %i.e, align 8
  br label %.thread399

assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.to = load ptr, ptr %i.tn, align 8            ; 3 uses
  %i.tp = ptrtoint ptr %i.tm to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = trunc i64 %i.tr to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  store ptr %i.to, ptr %i.e, align 8
  %i.tt = icmp eq ptr %i.to, null
  br i1 %i.tt, label %.thread399, label %bb.fh

bb.fh:                                            ; preds = %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.tu = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.tu) #47
  store ptr null, ptr %i.f, align 8
  %i.tv = load i32, ptr %i.gm, align 8            ; 2 uses
  %i.tw = add nsw i32 %i.tv, 1                    ; 2 uses
  %i.tx = icmp eq i32 %2, %i.tw
  %i.ty = icmp ne i32 %2, 3
  %or.cond5.not261.not266 = and i1 %i.ty, %i.tx
  %i.tz = icmp eq i8 %.0204, 0                    ; 2 uses
  %or.cond7.not263 = select i1 %or.cond5.not261.not266, i1 %i.tz, i1 false
  %i.ua = icmp ne i8 %.0209, 0                    ; 3 uses
  %or.cond9 = select i1 %or.cond7.not263, i1 true, i1 %i.ua
  %spec.select1495 = select i1 %or.cond9, i32 %i.tw, i32 %i.tv ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1495, ptr %i.ub, align 4
  %i.uc = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ud = load i32, ptr %i.gn, align 8            ; 4 uses
  %i.ue = icmp eq i32 %i.ud, 16
  %i.uf = zext i1 %i.ue to i32
  %i.ug = shl i32 %spec.select1495, %i.uf         ; 6 uses
  %.not.i349 = icmp eq i32 %.0241, 0
  %i.uh = load ptr, ptr %0, align 8               ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 8            ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uk = load i32, ptr %i.uj, align 4            ; 5 uses
  br i1 %.not.i349, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ul = or i32 %i.uk, %i.ui
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.ul, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.fj, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fj:                                            ; preds = %bb.fi
  %i.um = icmp eq i32 %i.uk, 0
  br i1 %i.um, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.fj
  %i.un = udiv i32 2147483647, %i.uk
  %.not23.i.i.i = icmp sgt i32 %i.ui, %i.un
  br i1 %.not23.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fj
  %i.uo = mul nsw i32 %i.uk, %i.ui                ; 3 uses
  %i.up = or i32 %i.uo, %i.ug
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.up, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.fk, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fk:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.uq = icmp eq i32 %i.ug, 0
  br i1 %i.uq, label %_ZL17stbi__malloc_mad3iiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i:        ; preds = %bb.fk
  %i.ur = udiv i32 2147483647, %i.ug
  %.not.i.i.i = icmp sgt i32 %i.uo, %i.ur
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL17stbi__malloc_mad3iiii.exit.i

_ZL17stbi__malloc_mad3iiii.exit.i:                ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %bb.fk
  %i.us = mul nsw i32 %i.uo, %i.ug
  %i.ut = sext i32 %i.us to i64
  %i.uu = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ut) #50 ; 4 uses
  %.not92.i = icmp eq ptr %i.uu, null
  br i1 %.not92.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader107.i

.preheader107.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.uv = sext i32 %i.ug to i64                   ; 9 uses
  br label %bb.fl

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fi
  %i.uw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.uw, align 8
  br label %.thread399

bb.fl:                                            ; preds = %.thread.i350, %.preheader107.i
  %indvars.iv119.i = phi i64 [ 0, %.preheader107.i ], [ %indvars.iv.next120.i, %.thread.i350 ] ; 5 uses
  %.076113.i = phi ptr [ %i.uc, %.preheader107.i ], [ %.379.i, %.thread.i350 ] ; 3 uses
  %.080112.i = phi i32 [ %i.ts, %.preheader107.i ], [ %.383.i, %.thread.i350 ] ; 3 uses
  %i.ux = load ptr, ptr %0, align 8               ; 3 uses
  %i.uy = load i32, ptr %i.ux, align 8
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv119.i
  %i.va = load i32, ptr %i.uz, align 4            ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc, i64 %indvars.iv119.i
  %i.vc = load i32, ptr %i.vb, align 4            ; 4 uses
  %i.vd = xor i32 %i.va, -1
  %i.ve = add i32 %i.uy, %i.vd
  %i.vf = add i32 %i.ve, %i.vc                    ; 2 uses
  %i.vg = udiv i32 %i.vf, %i.vc                   ; 6 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.vi = load i32, ptr %i.vh, align 4
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig, i64 %indvars.iv119.i
  %i.vk = load i32, ptr %i.vj, align 4            ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc, i64 %indvars.iv119.i
  %i.vm = load i32, ptr %i.vl, align 4            ; 4 uses
  %i.vn = xor i32 %i.vk, -1
  %i.vo = add i32 %i.vi, %i.vn
  %i.vp = add i32 %i.vo, %i.vm                    ; 2 uses
  %i.vq = udiv i32 %i.vp, %i.vm                   ; 4 uses
  %i.vr = icmp ule i32 %i.vc, %i.vf
  %i.vs = icmp ule i32 %i.vm, %i.vp
  %or.cond.i = select i1 %i.vr, i1 %i.vs, i1 false
  br i1 %or.cond.i, label %bb.fm, label %.thread.i350

bb.fm:                                            ; preds = %bb.fl
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vu = load i32, ptr %i.vt, align 8
  %i.vv = mul i32 %i.vg, %i.ud
  %i.vw = mul i32 %i.vv, %i.vu
  %i.vx = add nsw i32 %i.vw, 7
  %i.vy = ashr i32 %i.vx, 3
  %i.vz = add nsw i32 %i.vy, 1
  %i.wa = mul nsw i32 %i.vz, %i.vq                ; 2 uses
  %i.wb = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef %.076113.i, i32 noundef %.080112.i, i32 noundef %spec.select1495, i32 noundef %i.vg, i32 noundef %i.vq, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0237)
  %.not93.not.i = icmp eq i32 %i.wb, 0
  br i1 %.not93.not.i, label %.thread101.i, label %.preheader106.i

.preheader106.i:                                  ; preds = %bb.fm
  %i.wc = icmp sgt i32 %i.vq, 0
  %i.wd = icmp sgt i32 %i.vg, 0
  %or.cond128.i = and i1 %i.wd, %i.wc
  %.pre = load ptr, ptr %i.g, align 8             ; 4 uses
  br i1 %or.cond128.i, label %.preheader.lr.ph.split.us.i, label %._crit_edge110.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader106.i
  %i.we = load ptr, ptr %0, align 8
  %i.wf = sext i32 %i.vc to i64                   ; 3 uses
  %i.wg = sext i32 %i.va to i64                   ; 3 uses
  %i.wh = zext nneg i32 %i.vg to i64              ; 3 uses
  %i.wi = zext nneg i32 %i.vq to i64
  %.pre.pre.i = load i32, ptr %i.we, align 8
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.ug
  %xtraiter = and i64 %i.wh, 1
  %i.wj = icmp eq i32 %i.vg, 1
  %unroll_iter = and i64 %i.wh, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2136 = trunc i32 %i.vg to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %indvars.iv116.i = phi i64 [ %indvars.iv.next117.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.split.us.i ] ; 3 uses
  %i.wk = trunc i64 %indvars.iv116.i to i32
  %i.wl = mul i32 %i.vm, %i.wk
  %i.wm = add i32 %i.wl, %i.vk
  %.reass.i = mul i32 %factor.op.mul.i, %i.wm
  %i.wn = mul nuw nsw i64 %indvars.iv116.i, %i.wh ; 3 uses
  %i.wo = zext i32 %.reass.i to i64
  %i.wp = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.wo ; 3 uses
  br i1 %i.wj, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i352 = phi i64 [ %indvars.iv.next.i353.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.wq = mul nsw i64 %indvars.iv.i352, %i.wf
  %i.wr = add nsw i64 %i.wq, %i.wg
  %i.ws = mul nsw i64 %i.wr, %i.uv
  %i.wt = getelementptr inbounds i8, ptr %i.wp, i64 %i.ws
  %i.wu = add nuw nsw i64 %indvars.iv.i352, %i.wn
  %i.wv = mul nsw i64 %i.wu, %i.uv
  %i.ww = getelementptr inbounds i8, ptr %.pre, i64 %i.wv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wt, ptr align 1 %i.ww, i64 %i.uv, i1 false)
  %indvars.iv.next.i353 = or disjoint i64 %indvars.iv.i352, 1 ; 2 uses
  %i.wx = mul nsw i64 %indvars.iv.next.i353, %i.wf
  %i.wy = add nsw i64 %i.wx, %i.wg
  %i.wz = mul nsw i64 %i.wy, %i.uv
  %i.xa = getelementptr inbounds i8, ptr %i.wp, i64 %i.wz
  %i.xb = add nuw nsw i64 %indvars.iv.next.i353, %i.wn
  %i.xc = mul nsw i64 %i.xb, %i.uv
  %i.xd = getelementptr inbounds i8, ptr %.pre, i64 %i.xc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xa, ptr align 1 %i.xd, i64 %i.uv, i1 false)
  %indvars.iv.next.i353.1 = add nuw nsw i64 %indvars.iv.i352, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !167

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i352.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i353.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2136)
  %i.xe = mul nsw i64 %indvars.iv.i352.epil.init, %i.wf
  %i.xf = add nsw i64 %i.xe, %i.wg
  %i.xg = mul nsw i64 %i.xf, %i.uv
  %i.xh = getelementptr inbounds i8, ptr %i.wp, i64 %i.xg
  %i.xi = add nuw nsw i64 %indvars.iv.i352.epil.init, %i.wn
  %i.xj = mul nsw i64 %i.xi, %i.uv
  %i.xk = getelementptr inbounds i8, ptr %.pre, i64 %i.xj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xh, ptr align 1 %i.xk, i64 %i.uv, i1 false)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1 ; 2 uses
  %i.xl = icmp samesign ult i64 %indvars.iv.next117.i, %i.wi
  br i1 %i.xl, label %.preheader.us.i, label %._crit_edge110.i, !llvm.loop !168

.thread101.i:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.uu) #47
  br label %.thread399

._crit_edge110.i:                                 ; preds = %._crit_edge.us.i, %.preheader106.i
  call void @free(ptr noundef %.pre) #47
  %i.xm = zext i32 %i.wa to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %.076113.i, i64 %i.xm
  %i.xo = sub i32 %.080112.i, %i.wa
  br label %.thread.i350

.thread.i350:                                     ; preds = %._crit_edge110.i, %bb.fl
  %.383.i = phi i32 [ %.080112.i, %bb.fl ], [ %i.xo, %._crit_edge110.i ]
  %.379.i = phi ptr [ %.076113.i, %bb.fl ], [ %i.xn, %._crit_edge110.i ]
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %exitcond.not.i351 = icmp eq i64 %indvars.iv.next120.i, 7
  br i1 %exitcond.not.i351, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, label %bb.fl, !llvm.loop !169

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393: ; preds = %.thread.i350
  store ptr %i.uu, ptr %i.g, align 8
  br label %bb.fn

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit: ; preds = %bb.fh
  %i.xp = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef readonly %i.uc, i32 noundef %i.ts, i32 noundef %spec.select1495, i32 noundef %i.ui, i32 noundef %i.uk, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0237)
  %.not267 = icmp eq i32 %i.xp, 0
  br i1 %.not267, label %.thread399, label %bb.fn

bb.fn:                                            ; preds = %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit
  br i1 %i.ua, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %i.xq = load i32, ptr %i.gn, align 8
  %i.xr = icmp eq i32 %i.xq, 16
  %i.xs = load i32, ptr %i.ub, align 4            ; 2 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.val299 = load ptr, ptr %i.g, align 8          ; 2 uses
  %.val.val = load i32, ptr %.val, align 8        ; 2 uses
  %i.xt = getelementptr i8, ptr %.val, i64 4
  %.val.val300 = load i32, ptr %i.xt, align 4     ; 2 uses
  br i1 %i.xr, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  call fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.c, i32 noundef %i.xs)
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  call fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.b, i32 noundef %i.xs)
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp, %bb.fn
  br i1 %.not258, label %bb.fv, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.xu = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL24stbi__de_iphone_flag_set)
  %i.xv = load i32, ptr %i.xu, align 4
  %.not268 = icmp eq i32 %i.xv, 0
  %i.xw = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL26stbi__de_iphone_flag_local)
  %i.xx = load i32, ptr %i.xw, align 4
  %i.xy = load i32, ptr @_ZL27stbi__de_iphone_flag_global, align 4
  %i.xz = select i1 %.not268, i32 %i.xy, i32 %i.xx
  %.not269 = icmp eq i32 %i.xz, 0
  br i1 %.not269, label %bb.fv, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ya = load i32, ptr %i.ub, align 4
  %i.yb = icmp sgt i32 %i.ya, 2
  br i1 %i.yb, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %.val304 = load ptr, ptr %0, align 8
  %.val305 = load ptr, ptr %i.g, align 8
  call fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr %.val304, ptr %.val305)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fr
  br i1 %i.tz, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.yc = zext nneg i8 %.0204 to i32              ; 2 uses
  store i32 %i.yc, ptr %i.gm, align 8
  %i.yd = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.yd, i32 %2, i32 %i.yc ; 4 uses
  store i32 %spec.select, ptr %i.ub, align 4
  %i.ye = load ptr, ptr %0, align 8               ; 2 uses
  %i.yf = load i32, ptr %i.ye, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.yh = load i32, ptr %i.yg, align 4
  %i.yi = mul i32 %i.yh, %i.yf                    ; 9 uses
  %i.yj = load ptr, ptr %i.g, align 8             ; 9 uses
  %or.cond.not.i.i.i.i354 = icmp sgt i32 %i.yi, -1
  br i1 %or.cond.not.i.i.i.i354, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.i.i.i356:       ; preds = %bb.fw
  %i.yk = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.yi, %i.yk
  br i1 %.not10.i.i.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %_ZL17stbi__malloc_mad2iii.exit.i

_ZL17stbi__malloc_mad2iii.exit.i:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i356
  %i.yl = mul nuw nsw i32 %i.yi, %spec.select
  %i.ym = zext nneg i32 %i.yl to i64
  %i.yn = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ym) #50 ; 6 uses
  %i.yo = icmp eq ptr %i.yn, null
  br i1 %i.yo, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %bb.fx

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread: ; preds = %bb.fw, %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.yp, align 8
  br label %.thread399

bb.fx:                                            ; preds = %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yq = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.yi, 0                ; 2 uses
  br i1 %i.yq, label %.preheader.i, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fx
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.yi to i64 ; 2 uses
  %xtraiter2137 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.yr = icmp ult i32 %i.yi, 4
  br i1 %i.yr, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2140 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.fx
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count62.i = zext nneg i32 %i.yi to i64 ; 2 uses
  %xtraiter2142 = and i64 %wide.trip.count62.i, 1
  %i.ys = icmp eq i32 %i.yi, 1
  br i1 %i.ys, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2146 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.yn, %.lr.ph55.preheader.i.new ], [ %i.zt, %.lr.ph55.i ] ; 7 uses
  %niter2147 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter2147.next.1, %.lr.ph55.i ]
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv59.i
  %i.yu = load i8, ptr %i.yt, align 1
  %i.yv = zext i8 %i.yu to i64
  %i.yw = shl nuw nsw i64 %i.yv, 2
  %i.yx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yw ; 3 uses
  %i.yy = load i8, ptr %i.yx, align 4
  store i8 %i.yy, ptr %.04553.i, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 1
  %i.za = load i8, ptr %i.yz, align 1
  %i.zb = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.za, ptr %i.zb, align 1
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yx, i64 2
  %i.zd = load i8, ptr %i.zc, align 2
  %i.ze = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.zd, ptr %i.ze, align 1
  %i.zf = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv59.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 1
  %i.zi = load i8, ptr %i.zh, align 1
  %i.zj = zext i8 %i.zi to i64
  %i.zk = shl nuw nsw i64 %i.zj, 2
  %i.zl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zk ; 3 uses
  %i.zm = load i8, ptr %i.zl, align 4
  store i8 %i.zm, ptr %i.zf, align 1
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 1
  %i.zo = load i8, ptr %i.zn, align 1
  %i.zp = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.zo, ptr %i.zp, align 1
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 2
  %i.zr = load i8, ptr %i.zq, align 2
  %i.zs = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.zr, ptr %i.zs, align 1
  %i.zt = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter2147.next.1 = add i64 %niter2147, 2       ; 2 uses
  %niter2147.ncmp.1 = icmp eq i64 %niter2147.next.1, %unroll_iter2146
  br i1 %niter2147.ncmp.1, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, label %.lr.ph55.i, !llvm.loop !170

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i357 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i358.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.yn, %.lr.ph.preheader.i.new ], [ %i.aay, %.lr.ph.i ] ; 5 uses
  %niter2141 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter2141.next.3, %.lr.ph.i ]
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv.i357
  %i.zv = load i8, ptr %i.zu, align 1
  %i.zw = zext i8 %i.zv to i64
  %i.zx = shl nuw nsw i64 %i.zw, 2
  %i.zy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zx
  %i.zz = load <4 x i8>, ptr %i.zy, align 4
  store <4 x i8> %i.zz, ptr %.14651.i, align 1
  %i.aaa = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.aab = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv.i357
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 1
  %i.aad = load i8, ptr %i.aac, align 1
  %i.aae = zext i8 %i.aad to i64
  %i.aaf = shl nuw nsw i64 %i.aae, 2
  %i.aag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aaf
  %i.aah = load <4 x i8>, ptr %i.aag, align 4
  store <4 x i8> %i.aah, ptr %i.aaa, align 1
  %i.aai = getelementptr inbounds nuw i8, ptr %.14651.i, i64 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv.i357
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 2
  %i.aal = load i8, ptr %i.aak, align 1
  %i.aam = zext i8 %i.aal to i64
  %i.aan = shl nuw nsw i64 %i.aam, 2
  %i.aao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aan
  %i.aap = load <4 x i8>, ptr %i.aao, align 4
  store <4 x i8> %i.aap, ptr %i.aai, align 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %.14651.i, i64 12
  %i.aar = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv.i357
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 3
  %i.aat = load i8, ptr %i.aas, align 1
  %i.aau = zext i8 %i.aat to i64
  %i.aav = shl nuw nsw i64 %i.aau, 2
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aav
  %i.aax = load <4 x i8>, ptr %i.aaw, align 4
  store <4 x i8> %i.aax, ptr %i.aaq, align 1
  %i.aay = getelementptr inbounds nuw i8, ptr %.14651.i, i64 16 ; 2 uses
  %indvars.iv.next.i358.3 = add nuw nsw i64 %indvars.iv.i357, 4 ; 2 uses
  %niter2141.next.3 = add i64 %niter2141, 4       ; 2 uses
  %niter2141.ncmp.3 = icmp eq i64 %niter2141.next.3, %unroll_iter2140
  br i1 %niter2141.ncmp.3, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, label %.lr.ph.i, !llvm.loop !171

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph55.i
  %lcmp.mod2144.not = icmp eq i64 %xtraiter2142, 0
  br i1 %lcmp.mod2144.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.i.epil.preheader

.lr.ph55.i.epil.preheader:                        ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, %.lr.ph55.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph55.preheader.i ], [ %indvars.iv.next60.i.1, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa ]
  %.04553.i.epil.init = phi ptr [ %i.yn, %.lr.ph55.preheader.i ], [ %i.zt, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2145 = trunc i32 %i.yi to i1
  call void @llvm.assume(i1 %lcmp.mod2145)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv59.i.epil.init
  %i.aba = load i8, ptr %i.aaz, align 1
  %i.abb = zext i8 %i.aba to i64
  %i.abc = shl nuw nsw i64 %i.abb, 2
  %i.abd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abc ; 3 uses
  %i.abe = load i8, ptr %i.abd, align 4
  store i8 %i.abe, ptr %.04553.i.epil.init, align 1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 1
  %i.abg = load i8, ptr %i.abf, align 1
  %i.abh = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 1
  store i8 %i.abg, ptr %i.abh, align 1
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abd, i64 2
  %i.abj = load i8, ptr %i.abi, align 2
  %i.abk = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 2
  store i8 %i.abj, ptr %i.abk, align 1
  br label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod2138.not = icmp eq i64 %xtraiter2137, 0
  br i1 %lcmp.mod2138.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i357.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i358.3, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa ]
  %.14651.i.epil.init = phi ptr [ %i.yn, %.lr.ph.preheader.i ], [ %i.aay, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa ]
  %lcmp.mod2139 = icmp ne i64 %xtraiter2137, 0
  call void @llvm.assume(i1 %lcmp.mod2139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i357.epil = phi i64 [ %indvars.iv.i357.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i358.epil, %.lr.ph.i.epil ] ; 2 uses
  %.14651.i.epil = phi ptr [ %.14651.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.abr, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.abl = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv.i357.epil
  %i.abm = load i8, ptr %i.abl, align 1
  %i.abn = zext i8 %i.abm to i64
  %i.abo = shl nuw nsw i64 %i.abn, 2
  %i.abp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abo
  %i.abq = load <4 x i8>, ptr %i.abp, align 4
  store <4 x i8> %i.abq, ptr %.14651.i.epil, align 1
  %i.abr = getelementptr inbounds nuw i8, ptr %.14651.i.epil, i64 4
  %indvars.iv.next.i358.epil = add nuw nsw i64 %indvars.iv.i357.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2137
  br i1 %epil.iter.cmp.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil, !llvm.loop !172

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit: ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, %.lr.ph.i.epil, %.lr.ph55.i.epil.preheader, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, %.preheader49.i, %.preheader.i
  call void @free(ptr noundef %i.yj) #47
  store ptr %i.yn, ptr %i.g, align 8
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fv
  br i1 %i.ua, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.abs = load i32, ptr %i.gm, align 8
  %i.abt = add nsw i32 %i.abs, 1
  store i32 %i.abt, ptr %i.gm, align 8
  br label %bb.ga

bb.ga:                                            ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, %bb.fy, %bb.fz
  %i.abu = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.abu) #47
  store ptr null, ptr %i.e, align 8
  %i.abv = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  %i.abw = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  br label %.thread399

bb.gb:                                            ; preds = %bb.aw
  %.not297 = icmp eq i32 %.0230, 0
  br i1 %.not297, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.abx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.18, ptr %i.abx, align 8
  br label %.thread399

bb.gd:                                            ; preds = %bb.gb
  %i.aby = and i32 %i.gu, 8192
  %i.abz = icmp eq i32 %i.aby, 0
  br i1 %i.abz, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.aca = lshr i32 %i.gu, 8
  %i.acb = trunc nuw i32 %i.aca to i8
  store i8 %i.acb, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, align 16
  %i.acc = trunc i32 %i.gu to i8
  store i8 %i.acc, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 1), align 1
  %i.acd = lshr i32 %i.gw, 8
  %i.ace = trunc nuw i32 %i.acd to i8
  store i8 %i.ace, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 2), align 2
  %i.acf = trunc i32 %i.gw to i8
  store i8 %i.acf, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 3), align 1
  %i.acg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, ptr %i.acg, align 8
  br label %.thread399

bb.gf:                                            ; preds = %bb.gd
  %i.ach = icmp eq i32 %i.gt, 0
  br i1 %i.ach, label %.loopexit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aci = icmp slt i32 %i.gr, 0
  br i1 %i.aci, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.acj = load ptr, ptr %i.i, align 8
  store ptr %i.acj, ptr %i.h, align 8
  br label %.loopexit

bb.gi:                                            ; preds = %bb.gg
  %i.ack = load ptr, ptr %i.k, align 8
  %.not.i360 = icmp eq ptr %i.ack, null
  br i1 %.not.i360, label %..thread_crit_edge.i362, label %bb.gj

..thread_crit_edge.i362:                          ; preds = %bb.gi
  %.pre.i364 = load ptr, ptr %i.h, align 8
  br label %.thread.i361

bb.gj:                                            ; preds = %bb.gi
  %i.acl = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.acm = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.acn = ptrtoint ptr %i.acl to i64
  %i.aco = ptrtoint ptr %i.acm to i64
  %i.acp = sub i64 %i.acn, %i.aco
  %i.acq = trunc i64 %i.acp to i32                ; 2 uses
  %i.acr = icmp sgt i32 %i.gt, %i.acq
  br i1 %i.acr, label %bb.gk, label %.thread.i361

bb.gk:                                            ; preds = %bb.gj
  store ptr %i.acl, ptr %i.h, align 8
  %i.acs = load ptr, ptr %i.gp, align 8
  %i.act = load ptr, ptr %i.l, align 8
  %i.acu = sub nsw i32 %i.gt, %i.acq
  tail call void %i.acs(ptr noundef %i.act, i32 noundef %i.acu), !inline_history !159
  br label %.loopexit

.thread.i361:                                     ; preds = %bb.gj, %..thread_crit_edge.i362
  %i.acv = phi ptr [ %.pre.i364, %..thread_crit_edge.i362 ], [ %i.acm, %bb.gj ]
  %i.acw = zext nneg i32 %i.gt to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.acw
  store ptr %i.acx, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL10stbi__get8P13stbi__context.exit339, %.lr.ph740, %.lr.ph742, %_ZL10stbi__get8P13stbi__context.exit333, %.preheader416, %.preheader414, %.preheader412, %.preheader, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.ax, %bb.az, %bb.bc, %.thread.i, %bb.cm, %bb.co, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386, %bb.gf, %bb.gh, %bb.gk, %.thread.i361
  %.2243 = phi i32 [ %.0241, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0241, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0241, %.thread.i ], [ %.0241, %.thread.i361 ], [ %.0241, %.preheader412 ], [ %.0241, %.preheader414 ], [ %.0241, %.preheader ], [ %.0241, %bb.ax ], [ %.0241, %bb.az ], [ %.0241, %bb.bc ], [ %i.kq, %bb.co ], [ %i.kq, %bb.cm ], [ %.0241, %bb.gf ], [ %.0241, %bb.gh ], [ %.0241, %bb.gk ], [ %.0241, %.preheader416 ], [ %.0241, %.lr.ph740 ], [ %.0241, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0241, %.lr.ph742 ], [ %.0241, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.2239 = phi i32 [ %.0237, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0237, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0237, %.thread.i ], [ %.0237, %.thread.i361 ], [ %.0237, %.preheader412 ], [ %.0237, %.preheader414 ], [ %.0237, %.preheader ], [ %.0237, %bb.ax ], [ %.0237, %bb.az ], [ %.0237, %bb.bc ], [ %i.kk, %bb.co ], [ %i.kk, %bb.cm ], [ %.0237, %bb.gf ], [ %.0237, %bb.gh ], [ %.0237, %bb.gk ], [ %.0237, %.preheader416 ], [ %.0237, %.lr.ph740 ], [ %.0237, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0237, %.lr.ph742 ], [ %.0237, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1235 = phi i32 [ %.0234, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0234, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 1, %.thread.i ], [ %.0234, %.thread.i361 ], [ %.0234, %.preheader412 ], [ %.0234, %.preheader414 ], [ %.0234, %.preheader ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.bc ], [ %.0234, %bb.co ], [ %.0234, %bb.cm ], [ %.0234, %bb.gf ], [ %.0234, %bb.gh ], [ %.0234, %bb.gk ], [ %.0234, %.preheader416 ], [ %.0234, %.lr.ph740 ], [ %.0234, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0234, %.lr.ph742 ], [ %.0234, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.2232 = phi i32 [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0230, %.thread.i ], [ 0, %.thread.i361 ], [ 0, %.preheader412 ], [ 0, %.preheader414 ], [ 0, %.preheader ], [ %.0230, %bb.ax ], [ %.0230, %bb.az ], [ %.0230, %bb.bc ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.gf ], [ 0, %bb.gh ], [ 0, %bb.gk ], [ 0, %.preheader416 ], [ 0, %.lr.ph740 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 0, %.lr.ph742 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1224 = phi i32 [ %.0223, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0223, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0223, %.thread.i ], [ %.0223, %.thread.i361 ], [ %.0223, %.preheader412 ], [ %.0223, %.preheader414 ], [ %.zext, %.preheader ], [ %.0223, %bb.ax ], [ %.0223, %bb.az ], [ %.0223, %bb.bc ], [ %.0223, %bb.co ], [ %.0223, %bb.cm ], [ %.0223, %bb.gf ], [ %.0223, %bb.gh ], [ %.0223, %bb.gk ], [ %.0223, %.preheader416 ], [ %.0223, %.lr.ph740 ], [ %.zext, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0223, %.lr.ph742 ], [ %.0223, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.4219 = phi i32 [ %.3218, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.3218, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0215, %.thread.i ], [ %.0215, %.thread.i361 ], [ %.0215, %.preheader412 ], [ %.0215, %.preheader414 ], [ %.0215, %.preheader ], [ %.0215, %bb.ax ], [ %.0215, %bb.az ], [ %.0215, %bb.bc ], [ %.0215, %bb.co ], [ %.0215, %bb.cm ], [ %.0215, %bb.gf ], [ %.0215, %bb.gh ], [ %.0215, %bb.gk ], [ %.0215, %.preheader416 ], [ %.0215, %.lr.ph740 ], [ %.0215, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0215, %.lr.ph742 ], [ %.0215, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1213 = phi i32 [ %i.rd, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %i.rd, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0212, %.thread.i ], [ %.0212, %.thread.i361 ], [ %.0212, %.preheader412 ], [ %.0212, %.preheader414 ], [ %.0212, %.preheader ], [ %.0212, %bb.ax ], [ %.0212, %bb.az ], [ %.0212, %bb.bc ], [ %.0212, %bb.co ], [ %.0212, %bb.cm ], [ %.0212, %bb.gf ], [ %.0212, %bb.gh ], [ %.0212, %bb.gk ], [ %.0212, %.preheader416 ], [ %.0212, %.lr.ph740 ], [ %.0212, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0212, %.lr.ph742 ], [ %.0212, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1210 = phi i8 [ %.0209, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0209, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0209, %.thread.i ], [ %.0209, %.thread.i361 ], [ 1, %.preheader412 ], [ 1, %.preheader414 ], [ %.0209, %.preheader ], [ %.0209, %bb.ax ], [ %.0209, %bb.az ], [ %.0209, %bb.bc ], [ %.0209, %bb.co ], [ %.0209, %bb.cm ], [ %.0209, %bb.gf ], [ %.0209, %bb.gh ], [ %.0209, %bb.gk ], [ %.0209, %.preheader416 ], [ 1, %.lr.ph740 ], [ %.0209, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 1, %.lr.ph742 ], [ %.0209, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.3207 = phi i8 [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0204, %.thread.i ], [ %.0204, %.thread.i361 ], [ 0, %.preheader412 ], [ 0, %.preheader414 ], [ %.0204, %.preheader ], [ %.0204, %bb.ax ], [ %.0204, %bb.az ], [ %.0204, %bb.bc ], [ %.1205, %bb.co ], [ 0, %bb.cm ], [ %.0204, %bb.gf ], [ %.0204, %bb.gh ], [ %.0204, %bb.gk ], [ 4, %.preheader416 ], [ 0, %.lr.ph740 ], [ %.0204, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 0, %.lr.ph742 ], [ 4, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %i.acy = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  %i.acz = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  br label %bb.aw, !llvm.loop !173

.thread399:                                       ; preds = %bb.er, %.thread101.i, %_ZL17stbi__malloc_mad3iiii.exit.thread.i, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.ga, %bb.fb, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, %bb.eo, %bb.el, %.thread382, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.ge, %bb.gc, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, %_ZL22stbi__check_png_headerP13stbi__context.exit
  %.7 = phi i32 [ 0, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread ], [ 1, %_ZL22stbi__check_png_headerP13stbi__context.exit ], [ 0, %bb.cc ], [ 0, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread ], [ 0, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit ], [ 1, %bb.ga ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread382 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %.thread101.i ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.gc ], [ 0, %bb.ge ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %_ZL17stbi__malloc_mad3iiii.exit.thread.i ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret i32 %.7
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !160 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = load i8, ptr %i.ai, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit7

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %_ZL10stbi__get8P13stbi__context.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !160 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

_ZL19stbi__refill_bufferP13stbi__context.exit.i4: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit7

_ZL10stbi__get8P13stbi__context.exit7:            ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4
  %.0.i6 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4 ], [ 0, %bb.h ]
  %i.bm = zext i8 %.0.i to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = zext i8 %.0.i6 to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo
  ret i32 %i.bp
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.0.val.0.val, i32 %.0.val.4.val, ptr captures(none) %.24.val, ptr noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #34 {
bb.a:
  %i.a = mul i32 %.0.val.4.val, %.0.val.0.val     ; 8 uses
  %i.b = icmp eq i32 %1, 2
  %.not8 = icmp eq i32 %i.a, 0                    ; 2 uses
  br i1 %i.b, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.preheader
  %i.e = zext i32 %i.a to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 13
  br i1 %min.iters.check, label %.lr.ph7.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph7.preheader
  %i.f = add i32 %i.a, -1
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = getelementptr i8, ptr %.24.val, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %scevgep2 = getelementptr i8, ptr %0, i64 2
  %bound0 = icmp ult ptr %.24.val, %scevgep2
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph7.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.e, 3                     ; 2 uses
  %i.j = icmp eq i64 %n.mod.vf, 0
  %i.k = select i1 %i.j, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.e, %i.k                 ; 3 uses
  %i.l = shl nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %.24.val, i64 %i.l
  %i.n = trunc i64 %n.vec to i32
  %i.o = load i16, ptr %0, align 2, !alias.scope !174
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %.24.val, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %.24.val, i64 %i.p
  %i.r = getelementptr i8, ptr %.24.val, i64 %i.p
end_hunk_1
