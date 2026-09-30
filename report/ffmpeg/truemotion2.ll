Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/truemotion2?download=true
inline.NumInlined: 58
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@decode_frame:bb.a
  br label %GET_TOK.exit52.3.i.us.i

GET_TOK.exit52.3.i.us.i:                          ; preds = %bb.gp, %bb.go, %bb.gm
  %.0.i51.3.i.us.i = phi i32 [ 0, %bb.gm ], [ 0, %bb.gp ], [ %i.bha, %bb.go ] ; 2 uses
  store i32 %.0.i51.3.i.us.i, ptr %i.kw, align 4, !tbaa !43
  %i.bhc = shl nuw nsw i64 %indvars.iv.i74, 2     ; 3 uses
  %i.bhd = mul nsw i32 %i.bcg, %i.ky
  %i.bhe = sext i32 %i.bhd to i64                 ; 2 uses
  %i.bhf = getelementptr inbounds [4 x i8], ptr %i.bcj, i64 %i.bhe
  %i.bhg = shl nuw nsw i64 %indvars.iv.i74, 1     ; 2 uses
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %i.bhg ; 3 uses
  %i.bhi = getelementptr inbounds [4 x i8], ptr %i.bck, i64 %i.bhe
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bhi, i64 %i.bhg ; 3 uses
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bcm, i64 %i.bhc ; 7 uses
  %i.bhl = sext i32 %i.bcg to i64                 ; 2 uses
  %i.bhm = load i32, ptr %i.iv, align 8, !tbaa !43
  %i.bhn = add i32 %i.bhm, %i.bdb                 ; 2 uses
  store i32 %i.bhn, ptr %i.iv, align 8, !tbaa !43
  %i.bho = load i32, ptr %i.bhk, align 4, !tbaa !43
  %i.bhp = add i32 %i.bho, %i.bhn                 ; 2 uses
  store i32 %i.bhp, ptr %i.bhk, align 4, !tbaa !43
  store i32 %i.bhp, ptr %i.bhj, align 4, !tbaa !43
  %i.bhq = load i32, ptr %i.iv, align 8, !tbaa !43
  %i.bhr = add i32 %i.bhq, %i.bef                 ; 2 uses
  store i32 %i.bhr, ptr %i.iv, align 8, !tbaa !43
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhk, i64 4 ; 4 uses
  %i.bht = load i32, ptr %i.bhs, align 4, !tbaa !43
  %i.bhu = add i32 %i.bht, %i.bhr                 ; 2 uses
  store i32 %i.bhu, ptr %i.bhs, align 4, !tbaa !43
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhj, i64 4
  store i32 %i.bhu, ptr %i.bhv, align 4, !tbaa !43
  %i.bhw = getelementptr inbounds [4 x i8], ptr %i.bhj, i64 %i.bhl ; 2 uses
  %i.bhx = load i32, ptr %i.jm, align 4, !tbaa !43
  %i.bhy = add i32 %i.bhx, %i.bfj                 ; 2 uses
  store i32 %i.bhy, ptr %i.jm, align 4, !tbaa !43
  %i.bhz = load i32, ptr %i.bhk, align 4, !tbaa !43
  %i.bia = add i32 %i.bhz, %i.bhy                 ; 2 uses
  store i32 %i.bia, ptr %i.bhk, align 4, !tbaa !43
  store i32 %i.bia, ptr %i.bhw, align 4, !tbaa !43
  %i.bib = load i32, ptr %i.jm, align 4, !tbaa !43
  %i.bic = add i32 %i.bib, %i.bgn                 ; 2 uses
  store i32 %i.bic, ptr %i.jm, align 4, !tbaa !43
  %i.bid = load i32, ptr %i.bhs, align 4, !tbaa !43
  %i.bie = add i32 %i.bid, %i.bic                 ; 2 uses
  store i32 %i.bie, ptr %i.bhs, align 4, !tbaa !43
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bhw, i64 4
  store i32 %i.bie, ptr %i.bif, align 4, !tbaa !43
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhk, i64 8 ; 4 uses
  %i.bih = load i32, ptr %i.jn, align 8, !tbaa !43
  %i.bii = add i32 %i.bih, %i.bdq                 ; 2 uses
  store i32 %i.bii, ptr %i.jn, align 8, !tbaa !43
  %i.bij = load i32, ptr %i.big, align 4, !tbaa !43
  %i.bik = add i32 %i.bij, %i.bii                 ; 2 uses
  store i32 %i.bik, ptr %i.big, align 4, !tbaa !43
  store i32 %i.bik, ptr %i.bhh, align 4, !tbaa !43
  %i.bil = load i32, ptr %i.jn, align 8, !tbaa !43
  %i.bim = add i32 %i.bil, %i.beu                 ; 2 uses
  store i32 %i.bim, ptr %i.jn, align 8, !tbaa !43
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bhk, i64 12 ; 4 uses
  %i.bio = load i32, ptr %i.bin, align 4, !tbaa !43
  %i.bip = add i32 %i.bio, %i.bim                 ; 2 uses
  store i32 %i.bip, ptr %i.bin, align 4, !tbaa !43
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bhh, i64 4
  store i32 %i.bip, ptr %i.biq, align 4, !tbaa !43
  %i.bir = getelementptr inbounds [4 x i8], ptr %i.bhh, i64 %i.bhl ; 2 uses
  %i.bis = load i32, ptr %i.jo, align 4, !tbaa !43
  %i.bit = add i32 %i.bis, %i.bfy                 ; 2 uses
  store i32 %i.bit, ptr %i.jo, align 4, !tbaa !43
  %i.biu = load i32, ptr %i.big, align 4, !tbaa !43
  %i.biv = add i32 %i.biu, %i.bit                 ; 2 uses
  store i32 %i.biv, ptr %i.big, align 4, !tbaa !43
  store i32 %i.biv, ptr %i.bir, align 4, !tbaa !43
  %i.biw = load i32, ptr %i.jo, align 4, !tbaa !43
  %i.bix = add i32 %i.biw, %.0.i51.3.i.us.i       ; 2 uses
  store i32 %i.bix, ptr %i.jo, align 4, !tbaa !43
  %i.biy = load i32, ptr %i.bin, align 4, !tbaa !43
  %i.biz = add i32 %i.biy, %i.bix                 ; 2 uses
  store i32 %i.biz, ptr %i.bin, align 4, !tbaa !43
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bir, i64 4
  store i32 %i.biz, ptr %i.bja, align 4, !tbaa !43
  br label %bb.gq

bb.gq:                                            ; preds = %GET_TOK.exit55.i.us.i, %GET_TOK.exit52.3.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %GET_TOK.exit52.3.i.us.i ], [ %indvars.iv.next.i.us.i, %GET_TOK.exit55.i.us.i ] ; 2 uses
  %i.bjb = load i32, ptr %i.kl, align 4, !tbaa !43 ; 4 uses
  %i.bjc = load i32, ptr %i.km, align 8, !tbaa !43 ; 2 uses
  %.not.i53.i.us.i = icmp slt i32 %i.bjb, %i.bjc
  br i1 %.not.i53.i.us.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.bjd = load ptr, ptr %i.f, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bjd, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef %i.bjb, i32 noundef %i.bjc) #8
  store i32 1, ptr %i.n, align 8, !tbaa !85
  br label %GET_TOK.exit55.i.us.i

bb.gs:                                            ; preds = %bb.gq
  %i.bje = load ptr, ptr %i.kn, align 8, !tbaa !92
  %i.bjf = sext i32 %i.bjb to i64
  %i.bjg = getelementptr inbounds [4 x i8], ptr %i.bje, i64 %i.bjf ; 2 uses
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !43 ; 2 uses
  %i.bji = icmp sgt i32 %i.bjh, 63
  br i1 %i.bji, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.bjj = add nsw i32 %i.bjb, 1
  store i32 %i.bjj, ptr %i.kl, align 4, !tbaa !43
  %i.bjk = load i32, ptr %i.bjg, align 4, !tbaa !43
  %i.bjl = sext i32 %i.bjk to i64
  %i.bjm = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.bjl
  %i.bjn = load i32, ptr %i.bjm, align 4, !tbaa !43
  br label %GET_TOK.exit55.i.us.i

bb.gu:                                            ; preds = %bb.gs
  %i.bjo = load ptr, ptr %i.f, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bjo, i32 noundef 16, ptr noundef nonnull @.str.25, i32 noundef %i.bjh) #8
  br label %GET_TOK.exit55.i.us.i

GET_TOK.exit55.i.us.i:                            ; preds = %bb.gu, %bb.gt, %bb.gr
  %.0.i54.i.us.i = phi i32 [ 0, %bb.gr ], [ 0, %bb.gu ], [ %i.bjn, %bb.gt ]
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.us.i
  store i32 %.0.i54.i.us.i, ptr %i.bjp, align 4, !tbaa !43
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, 16
  br i1 %exitcond.not.i.us.i, label %tm2_hi_res_block.exit.us.i, label %bb.gq, !llvm.loop !78

tm2_hi_res_block.exit.us.i:                       ; preds = %GET_TOK.exit55.i.us.i
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %i.bcl, i64 %i.bhc
  %i.bjr = mul nsw i32 %i.bcf, %i.kx
  %i.bjs = sext i32 %i.bjr to i64
  %i.bjt = getelementptr inbounds [4 x i8], ptr %i.bci, i64 %i.bjs
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.bjt, i64 %i.bhc
  call fastcc void @tm2_apply_deltas(ptr noundef nonnull %i.f, ptr noundef %i.bju, i32 noundef %i.bcf, ptr noundef %i.d, ptr noundef %i.bjq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %tm2_update_block.exit.us.i

bb.gv:                                            ; preds = %GET_TOK.exit.us.i
  %i.bjv = load ptr, ptr %i.f, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bjv, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %i.lh) #8
  br label %tm2_update_block.exit.us.i

tm2_update_block.exit.us.i:                       ; preds = %GET_TOK.exit159.3.i.us.i, %bb.gv, %tm2_hi_res_block.exit.us.i, %tm2_med_res_block.exit.us.i, %tm2_low_res_block.exit.us.i, %tm2_null_res_block.exit.us.i, %bb.bn, %bb.bm, %.preheader1.i.us.i
  %.2218.us.i = phi i32 [ %.1217305.us.i, %bb.gv ], [ %.1217305.us.i, %tm2_hi_res_block.exit.us.i ], [ %.1217305.us.i, %tm2_med_res_block.exit.us.i ], [ %.1217305.us.i, %tm2_low_res_block.exit.us.i ], [ %.1217305.us.i, %tm2_null_res_block.exit.us.i ], [ 0, %.preheader1.i.us.i ], [ 0, %bb.bn ], [ 0, %bb.bm ], [ 0, %GET_TOK.exit159.3.i.us.i ] ; 3 uses
  %i.bjw = load i32, ptr %i.n, align 8, !tbaa !85
  %.not228.us.i = icmp eq i32 %i.bjw, 0
  br i1 %.not228.us.i, label %bb.ba, label %tm2_decode_blocks.exit.thread

._crit_edge.us.i:                                 ; preds = %bb.ba
  %i.bjx = add nuw nsw i32 %.0208308.us.i, 1      ; 2 uses
  %exitcond325.not.i = icmp eq i32 %i.bjx, %i.ig
  br i1 %exitcond325.not.i, label %._crit_edge311.i, label %.lr.ph.us.i, !llvm.loop !79

._crit_edge311.thread.i:                          ; preds = %.lr.ph310.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, i8 0, i64 32, i1 false)
  br label %.preheader.lr.ph.i

._crit_edge311.i:                                 ; preds = %._crit_edge.us.i, %bb.az
  %.0216.lcssa.i = phi i32 [ 1, %bb.az ], [ %.2218.us.i, %._crit_edge.us.i ] ; 2 uses
  %i.bjy = icmp sgt i32 %i.id, 0
  br i1 %i.bjy, label %.preheader.lr.ph.i, label %tm2_decode_blocks.exit

.preheader.lr.ph.i:                               ; preds = %._crit_edge311.i, %._crit_edge311.thread.i
  %.0216.lcssa472.i = phi i32 [ 1, %._crit_edge311.thread.i ], [ %.0216.lcssa.i, %._crit_edge311.i ]
  %i.bjz = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.bka = getelementptr inbounds nuw i8, ptr %i.f, i64 2104
  %i.bkb = load i32, ptr %i.bka, align 8, !tbaa !95
  %.not.i70 = icmp eq i32 %i.bkb, 0               ; 3 uses
  %.in226.v.i = select i1 %.not.i70, i64 2064, i64 2088
  %.in226.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.in226.v.i
  %i.bkc = load ptr, ptr %.in226.i, align 8, !tbaa !92
  %.in224.v.i = select i1 %.not.i70, i64 2056, i64 2080
  %.in224.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.in224.v.i
  %i.bkd = load ptr, ptr %.in224.i, align 8, !tbaa !92
  %.in.v.i = select i1 %.not.i70, i64 2048, i64 2072
  %.in.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.in.v.i
  %i.bke = load ptr, ptr %.in.i, align 8, !tbaa !92
  %i.bkf = icmp sgt i32 %i.ib, 0
  %i.bkg = sext i32 %i.ib to i64
  %i.bkh = add nsw i32 %i.id, -1
  %i.bki = getelementptr inbounds nuw i8, ptr %i.f, i64 2096 ; 10 uses
  %i.bkj = add nsw i32 %i.ih, -1
  %i.bkk = sext i32 %i.bkj to i64                 ; 2 uses
  %i.bkl = sext i32 %i.ih to i64                  ; 2 uses
  %i.bkm = add nsw i32 %i.ih, 1
  %i.bkn = sext i32 %i.bkm to i64                 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.f, i64 2100 ; 9 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %wide.trip.count329.i = zext nneg i32 %i.ib to i64
  br label %.preheader.i71

.preheader.i71:                                   ; preds = %bb.he, %.preheader.lr.ph.i
  %.1209318.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.bpo, %bb.he ] ; 5 uses
  %.0210317.i = phi ptr [ %i.bjz, %.preheader.lr.ph.i ], [ %i.bpn, %bb.he ] ; 2 uses
  %.0211316.i = phi ptr [ %i.bkc, %.preheader.lr.ph.i ], [ %.1212.i, %bb.he ] ; 10 uses
  %.0213315.i = phi ptr [ %i.bkd, %.preheader.lr.ph.i ], [ %.1214.i, %bb.he ] ; 10 uses
  %.0215314.i = phi ptr [ %i.bke, %.preheader.lr.ph.i ], [ %i.bpk, %bb.he ] ; 5 uses
  br i1 %i.bkf, label %.lr.ph.i73, label %._crit_edge.i

.lr.ph.i73:                                       ; preds = %.preheader.i71, %.lr.ph.i73
  %indvars.iv326.i = phi i64 [ %indvars.iv.next327.i, %.lr.ph.i73 ], [ 0, %.preheader.i71 ] ; 4 uses
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %.0215314.i, i64 %indvars.iv326.i
  %i.bkr = load i32, ptr %i.bkq, align 4, !tbaa !43 ; 3 uses
  %i.bks = lshr i64 %indvars.iv326.i, 1
  %i.bkt = and i64 %i.bks, 2147483647             ; 2 uses
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %.0213315.i, i64 %i.bkt
  %i.bkv = load i32, ptr %i.bku, align 4, !tbaa !43
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %.0211316.i, i64 %i.bkt
  %i.bkx = load i32, ptr %i.bkw, align 4, !tbaa !43
  %i.bky = add i32 %i.bkx, %i.bkr
  %6 = call i32 @llvm.smax.i32(i32 %i.bky, i32 0)
  %.0.i234280.i = call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.bkz = trunc nuw i32 %.0.i234280.i to i8
  %i.bla = mul nuw nsw i64 %indvars.iv326.i, 3
  %i.blb = getelementptr inbounds nuw i8, ptr %.0210317.i, i64 %i.bla ; 3 uses
  store i8 %i.bkz, ptr %i.blb, align 1, !tbaa !42
  %7 = call i32 @llvm.smax.i32(i32 %i.bkr, i32 0)
  %.0.i231281.i = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %i.blc = trunc nuw i32 %.0.i231281.i to i8
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blb, i64 1
  store i8 %i.blc, ptr %i.bld, align 1, !tbaa !42
  %i.ble = add i32 %i.bkv, %i.bkr
  %8 = call i32 @llvm.smax.i32(i32 %i.ble, i32 0)
  %.0.i282.i = call i32 @llvm.umin.i32(i32 %8, i32 255)
  %i.blf = trunc nuw i32 %.0.i282.i to i8
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blb, i64 2
  store i8 %i.blf, ptr %i.blg, align 1, !tbaa !42
  %indvars.iv.next327.i = add nuw nsw i64 %indvars.iv326.i, 1 ; 2 uses
  %exitcond330.not.i = icmp eq i64 %indvars.iv.next327.i, %wide.trip.count329.i
  br i1 %exitcond330.not.i, label %._crit_edge.i, label %.lr.ph.i73, !llvm.loop !80

._crit_edge.i:                                    ; preds = %.lr.ph.i73, %.preheader.i71
  %i.blh = load i32, ptr %.0215314.i, align 4, !tbaa !43
  %i.bli = getelementptr inbounds i8, ptr %.0215314.i, i64 -16 ; 17 uses
  %i.blj = insertelement <4 x i32> poison, i32 %i.blh, i64 0
  %i.blk = shufflevector <4 x i32> %i.blj, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.blk, ptr %i.bli, align 4, !tbaa !43
  %i.bll = getelementptr [4 x i8], ptr %.0215314.i, i64 %i.bkg ; 2 uses
  %i.blm = getelementptr i8, ptr %i.bll, i64 -4
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !43
  %i.blo = insertelement <4 x i32> poison, i32 %i.bln, i64 0
  %i.blp = shufflevector <4 x i32> %i.blo, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.blp, ptr %i.bll, align 4, !tbaa !43
  %i.blq = icmp eq i32 %.1209318.i, 0
  br i1 %i.blq, label %.thread.i72, label %bb.gw

.thread.i72:                                      ; preds = %._crit_edge.i
  %i.blr = load i32, ptr %i.bki, align 8, !tbaa !40
  %i.bls = sext i32 %i.blr to i64                 ; 2 uses
  %i.blt = sub nsw i64 0, %i.bls
  %i.blu = getelementptr inbounds [4 x i8], ptr %i.bli, i64 %i.blt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.blu, ptr nonnull align 4 %i.bli, i64 %i.bls, i1 false)
  %i.blv = load i32, ptr %i.bki, align 8, !tbaa !40 ; 2 uses
  %i.blw = shl nsw i32 %i.blv, 1
  %i.blx = sext i32 %i.blw to i64
  %i.bly = sub nsw i64 0, %i.blx
  %i.blz = getelementptr inbounds [4 x i8], ptr %i.bli, i64 %i.bly
  %i.bma = sext i32 %i.blv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.blz, ptr nonnull align 4 %i.bli, i64 %i.bma, i1 false)
  %i.bmb = load i32, ptr %i.bki, align 8, !tbaa !40 ; 2 uses
  %i.bmc = mul nsw i32 %i.bmb, 3
  %i.bmd = sext i32 %i.bmc to i64
  %i.bme = sub nsw i64 0, %i.bmd
  %i.bmf = getelementptr inbounds [4 x i8], ptr %i.bli, i64 %i.bme
  %i.bmg = sext i32 %i.bmb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bmf, ptr nonnull align 4 %i.bli, i64 %i.bmg, i1 false)
  %i.bmh = load i32, ptr %i.bki, align 8, !tbaa !40 ; 2 uses
  %i.bmi = shl nsw i32 %i.bmh, 2
  %i.bmj = sext i32 %i.bmi to i64
  %i.bmk = sub nsw i64 0, %i.bmj
  %i.bml = getelementptr inbounds [4 x i8], ptr %i.bli, i64 %i.bmk
  %i.bmm = sext i32 %i.bmh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bml, ptr nonnull align 4 %i.bli, i64 %i.bmm, i1 false)
  %i.bmn = load i32, ptr %i.bki, align 8, !tbaa !40
  br label %bb.he

bb.gw:                                            ; preds = %._crit_edge.i
  %i.bmo = icmp eq i32 %.1209318.i, %i.bkh        ; 2 uses
  br i1 %i.bmo, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.bmp = load i32, ptr %i.bki, align 8, !tbaa !40
  %i.bmq = sext i32 %i.bmp to i64                 ; 2 uses
  %i.bmr = getelementptr inbounds [4 x i8], ptr %i.bli, i64 %i.bmq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bmr, ptr nonnull align 4 %i.bli, i64 %i.bmq, i1 false)
  %i.bms = load i32, ptr %i.bki, align 8, !tbaa !40 ; 2 uses
  %i.bmt = shl nsw i32 %i.bms, 1
  %i.bmu = sext i32 %i.bmt to i64
  %i.bmv = getelementptr inbounds [4 x i8], ptr %i.bli, i64 %i.bmu
  %i.bmw = sext i32 %i.bms to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bmv, ptr nonnull align 4 %i.bli, i64 %i.bmw, i1 false)
  %i.bmx = load i32, ptr %i.bki, align 8, !tbaa !40 ; 2 uses
  %i.bmy = mul nsw i32 %i.bmx, 3
  %i.bmz = sext i32 %i.bmy to i64
  %i.bna = getelementptr inbounds [4 x i8], ptr %i.bli, i64 %i.bmz
  %i.bnb = sext i32 %i.bmx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bna, ptr nonnull align 4 %i.bli, i64 %i.bnb, i1 false)
  %i.bnc = load i32, ptr %i.bki, align 8, !tbaa !40 ; 2 uses
  %i.bnd = shl nsw i32 %i.bnc, 2
  %i.bne = sext i32 %i.bnd to i64
  %i.bnf = getelementptr inbounds [4 x i8], ptr %i.bli, i64 %i.bne
  %i.bng = sext i32 %i.bnc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bnf, ptr nonnull align 4 %i.bli, i64 %i.bng, i1 false)
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.bnh = load i32, ptr %i.bki, align 8, !tbaa !40 ; 2 uses
  %i.bni = and i32 %.1209318.i, 1
  %.not227.i = icmp eq i32 %i.bni, 0
  br i1 %.not227.i, label %bb.he, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.bnj = load i32, ptr %.0213315.i, align 4, !tbaa !43 ; 2 uses
  %i.bnk = getelementptr inbounds i8, ptr %.0213315.i, i64 -4
  store i32 %i.bnj, ptr %i.bnk, align 4, !tbaa !43
  %i.bnl = getelementptr inbounds i8, ptr %.0213315.i, i64 -8 ; 9 uses
  store i32 %i.bnj, ptr %i.bnl, align 4, !tbaa !43
  %i.bnm = load i32, ptr %.0211316.i, align 4, !tbaa !43 ; 2 uses
  %i.bnn = getelementptr inbounds i8, ptr %.0211316.i, i64 -4
  store i32 %i.bnm, ptr %i.bnn, align 4, !tbaa !43
  %i.bno = getelementptr inbounds i8, ptr %.0211316.i, i64 -8 ; 7 uses
  store i32 %i.bnm, ptr %i.bno, align 4, !tbaa !43
  %i.bnp = getelementptr inbounds [4 x i8], ptr %.0213315.i, i64 %i.bkk
  %i.bnq = load i32, ptr %i.bnp, align 4, !tbaa !43 ; 2 uses
  %i.bnr = getelementptr inbounds [4 x i8], ptr %.0213315.i, i64 %i.bkl
  store i32 %i.bnq, ptr %i.bnr, align 4, !tbaa !43
  %i.bns = getelementptr inbounds [4 x i8], ptr %.0213315.i, i64 %i.bkn
  store i32 %i.bnq, ptr %i.bns, align 4, !tbaa !43
  %i.bnt = getelementptr inbounds [4 x i8], ptr %.0211316.i, i64 %i.bkk
  %i.bnu = load i32, ptr %i.bnt, align 4, !tbaa !43 ; 2 uses
  %i.bnv = getelementptr inbounds [4 x i8], ptr %.0211316.i, i64 %i.bkl
  store i32 %i.bnu, ptr %i.bnv, align 4, !tbaa !43
  %i.bnw = getelementptr inbounds [4 x i8], ptr %.0211316.i, i64 %i.bkn
  store i32 %i.bnu, ptr %i.bnw, align 4, !tbaa !43
  %i.bnx = icmp eq i32 %.1209318.i, 1
  br i1 %i.bnx, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.bny = load i32, ptr %i.bko, align 4, !tbaa !41
  %i.bnz = sext i32 %i.bny to i64                 ; 2 uses
  %i.boa = sub nsw i64 0, %i.bnz
  %i.bob = getelementptr inbounds [4 x i8], ptr %i.bnl, i64 %i.boa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bob, ptr nonnull align 4 %i.bnl, i64 %i.bnz, i1 false)
  %i.boc = load i32, ptr %i.bko, align 4, !tbaa !41
  %i.bod = sext i32 %i.boc to i64                 ; 2 uses
  %i.boe = sub nsw i64 0, %i.bod
  %i.bof = getelementptr inbounds [4 x i8], ptr %i.bno, i64 %i.boe
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bof, ptr nonnull align 4 %i.bno, i64 %i.bod, i1 false)
  %i.bog = load i32, ptr %i.bko, align 4, !tbaa !41 ; 2 uses
  %i.boh = shl nsw i32 %i.bog, 1
  %i.boi = sext i32 %i.boh to i64
  %i.boj = sub nsw i64 0, %i.boi
  %i.bok = getelementptr inbounds [4 x i8], ptr %i.bnl, i64 %i.boj
  %i.bol = sext i32 %i.bog to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bok, ptr nonnull align 4 %i.bnl, i64 %i.bol, i1 false)
  %i.bom = load i32, ptr %i.bko, align 4, !tbaa !41 ; 2 uses
  %i.bon = shl nsw i32 %i.bom, 1
  %i.boo = sext i32 %i.bon to i64
  %i.bop = sub nsw i64 0, %i.boo
  br label %.sink.split.i

bb.hb:                                            ; preds = %bb.gz
  br i1 %i.bmo, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.boq = load i32, ptr %i.bko, align 4, !tbaa !41
  %i.bor = sext i32 %i.boq to i64                 ; 2 uses
  %i.bos = getelementptr inbounds [4 x i8], ptr %i.bnl, i64 %i.bor
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bos, ptr nonnull align 4 %i.bnl, i64 %i.bor, i1 false)
  %i.bot = load i32, ptr %i.bko, align 4, !tbaa !41
  %i.bou = sext i32 %i.bot to i64                 ; 2 uses
  %i.bov = getelementptr inbounds [4 x i8], ptr %i.bno, i64 %i.bou
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bov, ptr nonnull align 4 %i.bno, i64 %i.bou, i1 false)
  %i.bow = load i32, ptr %i.bko, align 4, !tbaa !41 ; 2 uses
  %i.box = shl nsw i32 %i.bow, 1
  %i.boy = sext i32 %i.box to i64
  %i.boz = getelementptr inbounds [4 x i8], ptr %i.bnl, i64 %i.boy
  %i.bpa = sext i32 %i.bow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.boz, ptr nonnull align 4 %i.bnl, i64 %i.bpa, i1 false)
  %i.bpb = load i32, ptr %i.bko, align 4, !tbaa !41 ; 2 uses
  %i.bpc = shl nsw i32 %i.bpb, 1
  %i.bpd = sext i32 %i.bpc to i64
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.hc, %bb.ha
  %.sink477.i = phi i64 [ %i.bpd, %bb.hc ], [ %i.bop, %bb.ha ]
  %.sink476.i = phi i32 [ %i.bpb, %bb.hc ], [ %i.bom, %bb.ha ]
  %i.bpe = getelementptr inbounds [4 x i8], ptr %i.bno, i64 %.sink477.i
  %i.bpf = sext i32 %.sink476.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bpe, ptr nonnull align 4 %i.bno, i64 %i.bpf, i1 false)
  br label %bb.hd

bb.hd:                                            ; preds = %.sink.split.i, %bb.hb
  %i.bpg = load i32, ptr %i.bko, align 4, !tbaa !41
  %i.bph = sext i32 %i.bpg to i64                 ; 2 uses
  %i.bpi = getelementptr inbounds [4 x i8], ptr %.0213315.i, i64 %i.bph
  %i.bpj = getelementptr inbounds [4 x i8], ptr %.0211316.i, i64 %i.bph
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.gy, %.thread.i72
  %.pn.in.i = phi i32 [ %i.bnh, %bb.hd ], [ %i.bnh, %bb.gy ], [ %i.bmn, %.thread.i72 ]
  %.1214.i = phi ptr [ %i.bpi, %bb.hd ], [ %.0213315.i, %bb.gy ], [ %.0213315.i, %.thread.i72 ]
  %.1212.i = phi ptr [ %i.bpj, %bb.hd ], [ %.0211316.i, %bb.gy ], [ %.0211316.i, %.thread.i72 ]
  %.pn.i = sext i32 %.pn.in.i to i64
  %i.bpk = getelementptr inbounds [4 x i8], ptr %.0215314.i, i64 %.pn.i
  %i.bpl = load i32, ptr %i.bkp, align 8, !tbaa !43
  %i.bpm = sext i32 %i.bpl to i64
  %i.bpn = getelementptr inbounds i8, ptr %.0210317.i, i64 %i.bpm
  %i.bpo = add nuw nsw i32 %.1209318.i, 1         ; 2 uses
  %exitcond331.not.i = icmp eq i32 %i.bpo, %i.id
  br i1 %exitcond331.not.i, label %tm2_decode_blocks.exit, label %.preheader.i71, !llvm.loop !81

tm2_decode_blocks.exit:                           ; preds = %bb.he, %._crit_edge311.i
  %.0.i69 = phi i32 [ %.0216.lcssa.i, %._crit_edge311.i ], [ %.0216.lcssa472.i, %bb.he ]
  %.not63 = icmp eq i32 %.0.i69, 0
  br i1 %.not63, label %bb.hf, label %tm2_decode_blocks.exit.thread

tm2_decode_blocks.exit.thread:                    ; preds = %tm2_update_block.exit.us.i, %bb.ay, %tm2_decode_blocks.exit
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.m, i64 276 ; 2 uses
  %i.bpq = load i32, ptr %i.bpp, align 4, !tbaa !101
  %i.bpr = or i32 %i.bpq, 2
  store i32 %i.bpr, ptr %i.bpp, align 4, !tbaa !101
  br label %bb.hg

bb.hf:                                            ; preds = %tm2_decode_blocks.exit
  %i.bps = getelementptr inbounds nuw i8, ptr %i.m, i64 276 ; 2 uses
  %i.bpt = load i32, ptr %i.bps, align 4, !tbaa !101
end_hunk_0
