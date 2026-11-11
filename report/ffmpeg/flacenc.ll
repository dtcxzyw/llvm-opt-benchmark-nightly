Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flacenc?download=true
inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@flac_encode_frame:bb.a

.lr.ph95.i.sink.split:                            ; preds = %.lr.ph.i89, %.lr.ph116.i, %.lr.ph119.i, %.lr.ph122.i, %.lr.ph125.i, %.lr.ph128.i, %middle.block469, %middle.block481, %middle.block495, %middle.block509, %middle.block521, %middle.block535, %.preheader103.i, %.preheader105.i, %.preheader104.i, %.preheader.i93, %.preheader102.i, %.preheader101.i
  %.sink349 = phi i64 [ 853304, %.preheader105.i ], [ 853304, %.preheader104.i ], [ 112, %.preheader.i93 ], [ 853304, %.preheader102.i ], [ 853304, %.preheader101.i ], [ 853304, %middle.block481 ], [ 112, %middle.block535 ], [ 112, %.preheader103.i ], [ 853304, %middle.block509 ], [ 112, %middle.block495 ], [ 853304, %middle.block521 ], [ 853304, %middle.block469 ], [ 853304, %.lr.ph116.i ], [ 112, %.lr.ph128.i ], [ 853304, %.lr.ph125.i ], [ 853304, %.lr.ph122.i ], [ 112, %.lr.ph119.i ], [ 853304, %.lr.ph.i89 ]
  %i.yw = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink349 ; 2 uses
  %i.yx = load i32, ptr %i.yw, align 8, !tbaa !71
  %i.yy = add nsw i32 %i.yx, 1
  store i32 %i.yy, ptr %i.yw, align 8, !tbaa !71
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.sink.split, %bb.ai, %channel_decorrelation.exit
  %wide.trip.count.i94 = zext nneg i32 %i.ef to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.aq, %.lr.ph95.i
  %indvars.iv112.i = phi i64 [ 0, %.lr.ph95.i ], [ %indvars.iv.next113.i, %bb.aq ] ; 2 uses
  %i.yz = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv112.i ; 5 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8 ; 2 uses
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !71 ; 2 uses
  %i.zc = icmp sgt i32 %i.zb, 32
  br i1 %i.zc, label %.preheader.i102, label %.preheader74.i

.preheader74.i:                                   ; preds = %bb.am
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 328864 ; 2 uses
  %i.ze = load i32, ptr %i.cb, align 16, !tbaa !66 ; 2 uses
  %i.zf = icmp sgt i32 %i.ze, 0
  br i1 %i.zf, label %.lr.ph.preheader.i95, label %remove_wasted_bits.exit

.lr.ph.preheader.i95:                             ; preds = %.preheader74.i
  %i.zg = zext nneg i32 %i.ze to i64
  br label %.lr.ph.i96

.preheader.i102:                                  ; preds = %bb.am
  %i.zh = load i32, ptr %i.cb, align 16, !tbaa !66 ; 2 uses
  %i.zi = icmp sgt i32 %i.zh, 0
  br i1 %i.zi, label %.lr.ph85.preheader.i, label %remove_wasted_bits.exit

.lr.ph85.preheader.i:                             ; preds = %.preheader.i102
  %i.zj = zext nneg i32 %i.zh to i64
  br label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.lr.ph85.i, %.lr.ph85.preheader.i
  %indvars.iv106.i = phi i64 [ 0, %.lr.ph85.preheader.i ], [ %indvars.iv.next107.i, %.lr.ph85.i ] ; 2 uses
  %.05484.i = phi i64 [ 0, %.lr.ph85.preheader.i ], [ %i.zm, %.lr.ph85.i ]
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv106.i
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !77
  %i.zm = or i64 %i.zl, %.05484.i                 ; 4 uses
  %i.zn = and i64 %i.zm, 1
  %.not66.i = icmp eq i64 %i.zn, 0                ; 2 uses
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %i.zo = icmp samesign ult i64 %indvars.iv.next107.i, %i.zj
  %or.cond98.i = select i1 %.not66.i, i1 %i.zo, i1 false
  br i1 %or.cond98.i, label %.lr.ph85.i, label %._crit_edge86.i, !llvm.loop !117

._crit_edge86.i:                                  ; preds = %.lr.ph85.i
  %.not67.i = icmp ne i64 %i.zm, 0
  %or.cond.i = and i1 %.not67.i, %.not66.i
  br i1 %or.cond.i, label %.lr.ph92.i, label %remove_wasted_bits.exit

.lr.ph92.i:                                       ; preds = %._crit_edge86.i
  %i.zp = tail call range(i64 1, 65) i64 @llvm.cttz.i64(i64 %i.zm, i1 true) ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yz, i64 328864
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph92.i
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph92.i ], [ %indvars.iv.next110.i, %bb.an ] ; 3 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv109.i
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !77
  %i.zt = ashr i64 %i.zs, %i.zp
  %i.zu = trunc i64 %i.zt to i32
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %indvars.iv109.i
  store i32 %i.zu, ptr %i.zv, align 4, !tbaa !47
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.zw = load i32, ptr %i.cb, align 16, !tbaa !66
  %i.zx = sext i32 %i.zw to i64
  %i.zy = icmp slt i64 %indvars.iv.next110.i, %i.zx
  br i1 %i.zy, label %bb.an, label %.loopexit.i.loopexit, !llvm.loop !118

.lr.ph.i96:                                       ; preds = %.lr.ph.i96, %.lr.ph.preheader.i95
  %indvars.iv.i97 = phi i64 [ 0, %.lr.ph.preheader.i95 ], [ %indvars.iv.next.i99, %.lr.ph.i96 ] ; 2 uses
  %.077.i = phi i32 [ 0, %.lr.ph.preheader.i95 ], [ %i.aab, %.lr.ph.i96 ]
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %indvars.iv.i97
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !47
  %i.aab = or i32 %i.aaa, %.077.i                 ; 4 uses
  %i.aac = and i32 %i.aab, 1
  %.not.i98 = icmp eq i32 %i.aac, 0               ; 2 uses
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %i.aad = icmp samesign ult i64 %indvars.iv.next.i99, %i.zg
  %or.cond99.i = select i1 %.not.i98, i1 %i.aad, i1 false
  br i1 %or.cond99.i, label %.lr.ph.i96, label %._crit_edge.i100, !llvm.loop !119

._crit_edge.i100:                                 ; preds = %.lr.ph.i96
  %.not64.i = icmp ne i32 %i.aab, 0
  %or.cond69.i = and i1 %.not64.i, %.not.i98
  br i1 %or.cond69.i, label %.lr.ph82.i, label %remove_wasted_bits.exit

.lr.ph82.i:                                       ; preds = %._crit_edge.i100
  %i.aae = tail call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.aab, i1 true) ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph82.i
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph82.i ], [ %indvars.iv.next104.i, %bb.ao ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %indvars.iv103.i ; 2 uses
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !47
  %i.aah = ashr i32 %i.aag, %i.aae
  store i32 %i.aah, ptr %i.aaf, align 4, !tbaa !47
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %i.aai = load i32, ptr %i.cb, align 16, !tbaa !66
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = icmp slt i64 %indvars.iv.next104.i, %i.aaj
  br i1 %i.aak, label %bb.ao, label %.loopexit.i, !llvm.loop !120

.loopexit.i.loopexit:                             ; preds = %bb.an
  %i.aal = trunc nuw nsw i64 %i.zp to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ao, %.loopexit.i.loopexit
  %.3.i = phi i32 [ %i.aal, %.loopexit.i.loopexit ], [ %i.aae, %bb.ao ] ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.yz, i64 12
  store i32 %.3.i, ptr %i.aam, align 4, !tbaa !70
  %i.aan = sub nsw i32 %i.zb, %.3.i               ; 2 uses
  store i32 %i.aan, ptr %i.za, align 8, !tbaa !71
  %i.aao = icmp slt i32 %i.aan, 18
  br i1 %i.aao, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit.i
  %i.aap = getelementptr inbounds nuw i8, ptr %i.yz, i64 152
  store i32 4, ptr %i.aap, align 8, !tbaa !72
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit.i
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next113.i, %wide.trip.count.i94
  br i1 %exitcond.not.i101, label %remove_wasted_bits.exit, label %bb.am, !llvm.loop !121

remove_wasted_bits.exit:                          ; preds = %.preheader74.i, %.preheader.i102, %._crit_edge86.i, %._crit_edge.i100, %bb.aq, %channel_decorrelation.exit
  %i.aaq = tail call fastcc i32 @encode_frame(ptr noundef nonnull %i.c) ; 3 uses
  %i.aar = icmp slt i32 %i.aaq, 0
  br i1 %i.aar, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %remove_wasted_bits.exit
  %i.aas = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !58
  %i.aau = icmp sgt i32 %i.aaq, %i.aat
  br i1 %i.aau, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar, %remove_wasted_bits.exit
  store i32 1, ptr %i.ga, align 4, !tbaa !152
  %i.aav = tail call fastcc i32 @encode_frame(ptr noundef nonnull %i.c) ; 3 uses
  %i.aaw = icmp slt i32 %i.aav, 0
  br i1 %i.aaw, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.81) #13
  br label %.critedge

bb.au:                                            ; preds = %bb.as, %bb.ar
  %.069 = phi i32 [ %i.aav, %bb.as ], [ %i.aaq, %bb.ar ]
  %i.aax = zext nneg i32 %.069 to i64
  %i.aay = tail call i32 @ff_get_encode_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %i.aax, i32 noundef 0) #13 ; 2 uses
  %i.aaz = icmp slt i32 %i.aay, 0
  br i1 %i.aaz, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aba = getelementptr i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.aba, align 8, !tbaa !153 ; 2 uses
  %i.abb = getelementptr i8, ptr %1, i64 32
  %.val83 = load i32, ptr %i.abb, align 8, !tbaa !154 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 43 uses
  %i.abd = icmp slt i32 %.val83, 0
  %spec.select.i.i103 = select i1 %i.abd, ptr null, ptr %.val ; 3 uses
  %spec.select11.i.i = tail call i32 @llvm.smax.i32(i32 %.val83, i32 0)
  %i.abe = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store ptr %spec.select.i.i103, ptr %i.abe, align 16, !tbaa !155
  %i.abf = zext nneg i32 %spec.select11.i.i to i64
  %i.abg = getelementptr inbounds nuw i8, ptr %spec.select.i.i103, i64 %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 36 uses
  store ptr %i.abg, ptr %i.abh, align 16, !tbaa !156
  %i.abi = getelementptr i8, ptr %i.c, i64 24     ; 106 uses
  store ptr %spec.select.i.i103, ptr %i.abi, align 8, !tbaa !157
  %i.abj = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 42 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.c, i64 7349924 ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !47
  %i.abm = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 16, !tbaa !47
  %i.abo = getelementptr inbounds nuw i8, ptr %i.c, i64 7349936
  %i.abp = load i32, ptr %i.abo, align 16, !tbaa !151 ; 2 uses
  %i.abq = icmp eq i32 %i.abp, 0
  br i1 %i.abq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.abr = load i32, ptr %i.ee, align 8, !tbaa !46
  %i.abs = add nsw i32 %i.abr, -1
  br label %put_bits.exit46.i.i

bb.ax:                                            ; preds = %bb.av
  %i.abt = add nsw i32 %i.abp, 7
  br label %put_bits.exit46.i.i

put_bits.exit46.i.i:                              ; preds = %bb.ax, %bb.aw
  %.sink.i104 = phi i32 [ %i.abt, %bb.ax ], [ %i.abs, %bb.aw ]
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = shl i32 %i.abl, 11
  %7 = shl i32 %i.abn, 7
  %8 = or i32 %6, %7
  %9 = or i32 %8, 2147221504
  %i.abu = shl i32 %.sink.i104, 3
  %i.abv = or i32 %i.abu, %9
  %i.abw = or i32 %i.abv, %5                      ; 2 uses
  store i32 %i.abw, ptr %i.abc, align 8, !tbaa !158
  store i32 1, ptr %i.abj, align 4, !tbaa !159
  %i.abx = icmp sgt i32 %.val83, 3
  br i1 %i.abx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %put_bits.exit46.i.i
  %i.aby = shl i32 %i.abw, 1
  %i.abz = tail call i32 @llvm.bswap.i32(i32 %i.aby)
  store i32 %i.abz, ptr %.val, align 1, !tbaa !64
  %i.aca = load ptr, ptr %i.abi, align 8, !tbaa !157
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 4
  store ptr %i.acb, ptr %i.abi, align 8, !tbaa !157
  br label %put_bits.exit58.i.i

bb.az:                                            ; preds = %put_bits.exit46.i.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.60) #13
  br label %put_bits.exit58.i.i

put_bits.exit58.i.i:                              ; preds = %bb.az, %bb.ay
  %i.acc = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 3 uses
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !62 ; 8 uses
  %i.ace = icmp ult i32 %i.acd, 128
  br i1 %i.ace, label %put_bits.exit.i.i.i, label %put_bits.exit21.i.i.i

put_bits.exit.i.i.i:                              ; preds = %put_bits.exit58.i.i
  store i32 %i.acd, ptr %i.abc, align 8, !tbaa !158
  store i32 24, ptr %i.abj, align 4, !tbaa !159
  br label %write_utf8.exit.i.i

put_bits.exit21.i.i.i:                            ; preds = %put_bits.exit58.i.i
  %.not.i.i.i.i105 = icmp ult i32 %i.acd, 65536   ; 2 uses
  %i.acf = lshr i32 %i.acd, 16
  %spec.select.i.i.i.i106 = select i1 %.not.i.i.i.i105, i32 %i.acd, i32 %i.acf ; 3 uses
  %spec.select12.i.i.i.i107 = select i1 %.not.i.i.i.i105, i16 0, i16 16
  %.not11.i.i.i.i108 = icmp samesign ult i32 %spec.select.i.i.i.i106, 256 ; 2 uses
  %i.acg = lshr i32 %spec.select.i.i.i.i106, 8
  %.110.i.i.i.i109 = select i1 %.not11.i.i.i.i108, i32 %spec.select.i.i.i.i106, i32 %i.acg
  %i.ach = zext nneg i32 %.110.i.i.i.i109 to i64
  %i.aci = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !64
  %i.ack = zext i8 %i.acj to i16
  %i.acl = select i1 %.not11.i.i.i.i108, i16 4, i16 12
  %i.acm = or disjoint i16 %i.acl, %spec.select12.i.i.i.i107
  %.lhs.trunc.i.i.i = add nuw nsw i16 %i.acm, %i.ack ; 2 uses
  %i.acn = udiv i16 %.lhs.trunc.i.i.i, 5
  %.zext.i.i.i = zext nneg i16 %i.acn to i32      ; 2 uses
  %i.aco = mul nuw nsw i32 %.zext.i.i.i, 6
  %i.acp = add nsw i32 %i.aco, -6                 ; 2 uses
  %i.acq = lshr i32 %i.acd, %i.acp
  %i.acr = lshr i32 256, %.zext.i.i.i
  %i.acs = sub nsw i32 0, %i.acr
  %i.act = or i32 %i.acq, %i.acs
  %i.acu = and i32 %i.act, 255                    ; 3 uses
  store i32 %i.acu, ptr %i.abc, align 8, !tbaa !158
  store i32 24, ptr %i.abj, align 4, !tbaa !159
  %i.acv = icmp samesign ugt i16 %.lhs.trunc.i.i.i, 9
  br i1 %i.acv, label %.lr.ph.i.i.i, label %write_utf8.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %put_bits.exit21.i.i.i, %put_bits.exit25.i.i.i
  %i.acw = phi i32 [ %i.ads, %put_bits.exit25.i.i.i ], [ 24, %put_bits.exit21.i.i.i ] ; 4 uses
  %i.acx = phi i32 [ %.026.i.i23.i.i.i, %put_bits.exit25.i.i.i ], [ %i.acu, %put_bits.exit21.i.i.i ] ; 2 uses
  %.027.i.i.i = phi i32 [ %i.acy, %put_bits.exit25.i.i.i ], [ %i.acp, %put_bits.exit21.i.i.i ] ; 2 uses
  %i.acy = add nsw i32 %.027.i.i.i, -6            ; 2 uses
  %i.acz = lshr i32 %i.acd, %i.acy
  %i.ada = and i32 %i.acz, 63
  %i.adb = or disjoint i32 %i.ada, 128            ; 4 uses
  %i.adc = icmp sgt i32 %i.acw, 8
  br i1 %i.adc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i.i.i
  %i.add = shl i32 %i.acx, 8
  %i.ade = or disjoint i32 %i.adb, %i.add
  br label %put_bits.exit25.i.i.i

bb.bb:                                            ; preds = %.lr.ph.i.i.i
  %i.adf = load ptr, ptr %i.abh, align 16, !tbaa !156
  %i.adg = load ptr, ptr %i.abi, align 8, !tbaa !157 ; 2 uses
  %i.adh = ptrtoint ptr %i.adf to i64
  %i.adi = ptrtoint ptr %i.adg to i64
  %i.adj = sub i64 %i.adh, %i.adi
  %i.adk = icmp ugt i64 %i.adj, 3
  br i1 %i.adk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.adl = shl i32 %i.acx, %i.acw
  %i.adm = sub nsw i32 8, %i.acw
  %i.adn = lshr i32 %i.adb, %i.adm
  %i.ado = or i32 %i.adn, %i.adl
  %i.adp = tail call i32 @llvm.bswap.i32(i32 %i.ado)
  store i32 %i.adp, ptr %i.adg, align 1, !tbaa !64
  %i.adq = load ptr, ptr %i.abi, align 8, !tbaa !157
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 4
  store ptr %i.adr, ptr %i.abi, align 8, !tbaa !157
  br label %put_bits.exit25.i.i.i

bb.bd:                                            ; preds = %bb.bb
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.60) #13
  br label %put_bits.exit25.i.i.i

put_bits.exit25.i.i.i:                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %.sink35.i.i.i = phi i32 [ -8, %bb.ba ], [ 24, %bb.bd ], [ 24, %bb.bc ]
  %.026.i.i23.i.i.i = phi i32 [ %i.ade, %bb.ba ], [ %i.adb, %bb.bd ], [ %i.adb, %bb.bc ] ; 3 uses
  %i.ads = add nsw i32 %.sink35.i.i.i, %i.acw     ; 3 uses
  store i32 %.026.i.i23.i.i.i, ptr %i.abc, align 8, !tbaa !158
  store i32 %i.ads, ptr %i.abj, align 4, !tbaa !159
  %i.adt = icmp sgt i32 %.027.i.i.i, 11
  br i1 %i.adt, label %.lr.ph.i.i.i, label %write_utf8.exit.i.i, !llvm.loop !122

write_utf8.exit.i.i:                              ; preds = %put_bits.exit25.i.i.i, %put_bits.exit21.i.i.i, %put_bits.exit.i.i.i
  %i.adu = phi i32 [ 24, %put_bits.exit21.i.i.i ], [ 24, %put_bits.exit.i.i.i ], [ %i.ads, %put_bits.exit25.i.i.i ] ; 8 uses
  %i.adv = phi i32 [ %i.acu, %put_bits.exit21.i.i.i ], [ %i.acd, %put_bits.exit.i.i.i ], [ %.026.i.i23.i.i.i, %put_bits.exit25.i.i.i ] ; 5 uses
  %i.adw = load i32, ptr %i.abk, align 4, !tbaa !47
  switch i32 %i.adw, label %bb.bo [
    i32 6, label %bb.be
    i32 7, label %bb.bj
  ]

bb.be:                                            ; preds = %write_utf8.exit.i.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.c, i64 7349928
  %i.ady = load i32, ptr %i.adx, align 8, !tbaa !47 ; 4 uses
  %i.adz = icmp sgt i32 %i.adu, 8
  br i1 %i.adz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.aea = shl i32 %i.adv, 8
  %i.aeb = or i32 %i.ady, %i.aea
  br label %.sink.split.i.i

bb.bg:                                            ; preds = %bb.be
  %i.aec = load ptr, ptr %i.abh, align 16, !tbaa !156
  %i.aed = load ptr, ptr %i.abi, align 8, !tbaa !157 ; 2 uses
  %i.aee = ptrtoint ptr %i.aec to i64
  %i.aef = ptrtoint ptr %i.aed to i64
  %i.aeg = sub i64 %i.aee, %i.aef
  %i.aeh = icmp ugt i64 %i.aeg, 3
  br i1 %i.aeh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.aei = shl i32 %i.adv, %i.adu
  %i.aej = sub nsw i32 8, %i.adu
  %i.aek = lshr i32 %i.ady, %i.aej
  %i.ael = or i32 %i.aek, %i.aei
  %i.aem = tail call i32 @llvm.bswap.i32(i32 %i.ael)
  store i32 %i.aem, ptr %i.aed, align 1, !tbaa !64
  %i.aen = load ptr, ptr %i.abi, align 8, !tbaa !157
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 4
  store ptr %i.aeo, ptr %i.abi, align 8, !tbaa !157
  br label %.sink.split.i.i

bb.bi:                                            ; preds = %bb.bg
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.60) #13
  br label %.sink.split.i.i

bb.bj:                                            ; preds = %write_utf8.exit.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %i.c, i64 7349928
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !47 ; 4 uses
  %i.aer = icmp sgt i32 %i.adu, 16
  br i1 %i.aer, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aes = shl i32 %i.adv, 16
  %i.aet = or i32 %i.aeq, %i.aes
  br label %.sink.split.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.aeu = load ptr, ptr %i.abh, align 16, !tbaa !156
  %i.aev = load ptr, ptr %i.abi, align 8, !tbaa !157 ; 2 uses
  %i.aew = ptrtoint ptr %i.aeu to i64
  %i.aex = ptrtoint ptr %i.aev to i64
  %i.aey = sub i64 %i.aew, %i.aex
  %i.aez = icmp ugt i64 %i.aey, 3
  br i1 %i.aez, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.afa = shl i32 %i.adv, %i.adu
  %i.afb = sub nsw i32 16, %i.adu
  %i.afc = lshr i32 %i.aeq, %i.afb
  %i.afd = or i32 %i.afc, %i.afa
  %i.afe = tail call i32 @llvm.bswap.i32(i32 %i.afd)
  store i32 %i.afe, ptr %i.aev, align 1, !tbaa !64
  %i.aff = load ptr, ptr %i.abi, align 8, !tbaa !157
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 4
  store ptr %i.afg, ptr %i.abi, align 8, !tbaa !157
  br label %.sink.split.i.i

bb.bn:                                            ; preds = %bb.bl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.60) #13
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bn, %bb.bm, %bb.bk, %bb.bi, %bb.bh, %bb.bf
  %.sink103.sink.i.i = phi i32 [ 24, %bb.bh ], [ -8, %bb.bf ], [ 24, %bb.bi ], [ -16, %bb.bk ], [ 16, %bb.bn ], [ 16, %bb.bm ]
  %.026.i.i64.sink.i.i = phi i32 [ %i.ady, %bb.bh ], [ %i.aeb, %bb.bf ], [ %i.ady, %bb.bi ], [ %i.aet, %bb.bk ], [ %i.aeq, %bb.bn ], [ %i.aeq, %bb.bm ] ; 2 uses
  %i.afh = add nsw i32 %.sink103.sink.i.i, %i.adu ; 2 uses
  store i32 %.026.i.i64.sink.i.i, ptr %i.abc, align 8, !tbaa !158
  store i32 %i.afh, ptr %i.abj, align 4, !tbaa !159
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split.i.i, %write_utf8.exit.i.i
  %i.afi = phi i32 [ %i.adv, %write_utf8.exit.i.i ], [ %.026.i.i64.sink.i.i, %.sink.split.i.i ] ; 5 uses
  %i.afj = phi i32 [ %i.adu, %write_utf8.exit.i.i ], [ %i.afh, %.sink.split.i.i ] ; 8 uses
end_hunk_0
