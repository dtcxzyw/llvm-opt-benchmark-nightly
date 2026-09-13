Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/j2kenc?download=true
inline.NumInlined: 83
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@encode_frame:bb.a

.preheader.us.1.i.i.i:                            ; preds = %.preheader.us.preheader.i123.i.i
  %i.azq = getelementptr [4 x i8], ptr %4, i64 %i.avp
  %i.azr = getelementptr [4 x i8], ptr %i.azq, i64 %indvars.iv.i116.i.i
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !39
  %i.azt = and i32 %i.azs, %i.aoa
  %.not164.us.1.i.i.i = icmp eq i32 %i.azt, 0
  br i1 %.not164.us.1.i.i.i, label %.preheader.us.2.i.i.i, label %.lr.ph181.us.preheader.i.i.i

.preheader.us.2.i.i.i:                            ; preds = %.preheader.us.1.i.i.i
  %i.azu = getelementptr [4 x i8], ptr %4, i64 %i.avv
  %i.azv = getelementptr [4 x i8], ptr %i.azu, i64 %indvars.iv.i116.i.i
  %i.azw = load i32, ptr %i.azv, align 4, !tbaa !39
  %i.azx = and i32 %i.azw, %i.aoa
  %.not164.us.2.i.i.i = icmp eq i32 %i.azx, 0
  br i1 %.not164.us.2.i.i.i, label %.preheader.us.3.i.i.i, label %.lr.ph181.us.preheader.i.i.i

.preheader.us.3.i.i.i:                            ; preds = %.preheader.us.2.i.i.i
  %i.azy = getelementptr [4 x i8], ptr %4, i64 %i.awb
  %i.azz = getelementptr [4 x i8], ptr %i.azy, i64 %indvars.iv.i116.i.i
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !39
  %i.bab = and i32 %i.baa, %i.aoa
  %.not164.us.3.i.i.i = icmp eq i32 %i.bab, 0
  br i1 %.not164.us.3.i.i.i, label %bb.bu, label %.lr.ph181.us.preheader.i.i.i

bb.bu:                                            ; preds = %.preheader.us.3.i.i.i
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adm, i32 noundef 0) #11
  br label %.loopexit.us.i.i.i

.lr.ph181.us.preheader.i.i.i:                     ; preds = %.preheader.us.3.i.i.i, %.preheader.us.2.i.i.i, %.preheader.us.1.i.i.i, %.preheader.us.preheader.i123.i.i
  %.0157.lcssa.us.ph.i.i.i = phi i32 [ 2, %.preheader.us.2.i.i.i ], [ 3, %.preheader.us.3.i.i.i ], [ 1, %.preheader.us.1.i.i.i ], [ 0, %.preheader.us.preheader.i123.i.i ] ; 3 uses
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adm, i32 noundef 1) #11
  %i.bac = lshr i32 %.0157.lcssa.us.ph.i.i.i, 1
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adn, i32 noundef %i.bac) #11
  %i.bad = and i32 %.0157.lcssa.us.ph.i.i.i, 1
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adn, i32 noundef %i.bad) #11
  %i.bae = or disjoint i32 %.0157.lcssa.us.ph.i.i.i, %indvars34.i.i
  %.pre197.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !214
  %i.baf = getelementptr [2 x i8], ptr %i.adj, i64 %indvars.iv.i116.i.i ; 4 uses
  %i.bag = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i116.i.i ; 2 uses
  %i.bah = trunc nuw nsw i64 %indvars.iv.i116.i.i to i32
  %i.bai = sext i32 %i.bae to i64                 ; 2 uses
  br label %.lr.ph181.us.i.i.i

.lr.ph181.us.i.i.i:                               ; preds = %bb.bz, %.lr.ph181.us.preheader.i.i.i
  %indvars.iv31.i.i = phi i64 [ %indvars.iv.next32.i.i, %bb.bz ], [ %i.bai, %.lr.ph181.us.preheader.i.i.i ] ; 5 uses
  %.22.i.i = phi i32 [ %.23.i.i, %bb.bz ], [ %.19.i.i, %.lr.ph181.us.preheader.i.i.i ] ; 3 uses
  %i.baj = phi i32 [ %i.bcu, %bb.bz ], [ %.pre197.i.i.i, %.lr.ph181.us.preheader.i.i.i ] ; 3 uses
  %indvars.iv.next32.i.i = add nuw nsw i64 %indvars.iv31.i.i, 1 ; 6 uses
  %i.bak = sext i32 %i.baj to i64                 ; 4 uses
  %i.bal = mul nsw i64 %indvars.iv.next32.i.i, %i.bak
  %i.bam = getelementptr [2 x i8], ptr %i.baf, i64 %i.bal
  %i.ban = getelementptr i8, ptr %i.bam, i64 2
  %i.bao = load i16, ptr %i.ban, align 2, !tbaa !57
  %i.bap = zext i16 %i.bao to i32                 ; 2 uses
  %i.baq = and i32 %i.bap, 12288
  %.not165.us.i.i.i = icmp eq i32 %i.baq, 0
  br i1 %.not165.us.i.i.i, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %.lr.ph181.us.i.i.i
  %i.bar = icmp samesign ugt i64 %indvars.iv31.i.i, %i.bai
  br i1 %i.bar, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.bas = and i32 %i.bap, 255
  %i.bat = zext nneg i32 %i.bas to i64
  %gep183.us.i.i.i = getelementptr [4 x i8], ptr %gep.i, i64 %i.bat
  %i.bau = load i8, ptr %gep183.us.i.i.i, align 1, !tbaa !52
  %i.bav = zext i8 %i.bau to i64
  %i.baw = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.bav
  %i.bax = mul nsw i64 %indvars.iv31.i.i, %i.bak
  %i.bay = getelementptr [4 x i8], ptr %i.bag, i64 %i.bax
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !39
  %i.bba = and i32 %i.baz, %i.aoa
  %.not166.us.i.i.i = icmp ne i32 %i.bba, 0
  %i.bbb = zext i1 %.not166.us.i.i.i to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.baw, i32 noundef %i.bbb) #11
  %.pre198.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !214 ; 2 uses
  %.pre45.i.i = sext i32 %.pre198.i.i.i to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pre-phi46.i.i = phi i64 [ %.pre45.i.i, %bb.bw ], [ %i.bak, %bb.bv ] ; 3 uses
  %i.bbc = phi i32 [ %.pre198.i.i.i, %bb.bw ], [ %i.baj, %bb.bv ]
  %i.bbd = mul nsw i64 %.pre-phi46.i.i, %indvars.iv31.i.i
  %i.bbe = getelementptr [4 x i8], ptr %i.bag, i64 %i.bbd
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !39 ; 3 uses
  %i.bbg = and i32 %i.bbf, %i.aoa
  %.not167.us.i.i.i = icmp eq i32 %i.bbg, 0
  br i1 %.not167.us.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.bbh = mul nsw i64 %.pre-phi46.i.i, %indvars.iv.next32.i.i
  %i.bbi = getelementptr [2 x i8], ptr %i.baf, i64 %i.bbh
  %i.bbj = getelementptr i8, ptr %i.bbi, i64 2
  %i.bbk = load i16, ptr %i.bbj, align 2, !tbaa !57 ; 2 uses
  %i.bbl = zext i16 %i.bbk to i32                 ; 2 uses
  %i.bbm = and i32 %i.bbl, 15
  %i.bbn = zext nneg i32 %i.bbm to i64            ; 2 uses
  %i.bbo = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_xorbit_lut, i64 %i.bbn
  %i.bbp = lshr i32 %i.bbl, 8
  %i.bbq = and i32 %i.bbp, 15
  %i.bbr = zext nneg i32 %i.bbq to i64            ; 2 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %i.bbr
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !52
  %i.bbu = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_sgnctxno_lut, i64 %i.bbn
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %i.bbr
  %i.bbw = load i8, ptr %i.bbv, align 1, !tbaa !52
  %i.bbx = ashr i32 %i.bbf, %.09320.i.i
  %i.bby = and i32 %i.bbx, 127
  %i.bbz = zext nneg i32 %i.bby to i64
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig, i64 %i.bbz
  %i.bcb = and i32 %i.bbf, 127
  %i.bcc = zext nneg i32 %i.bcb to i64
  %i.bcd = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig0, i64 %i.bcc
  %.0.in.i.us.i124.i.i = select i1 %.not174.i.i.i, ptr %i.bcd, ptr %i.bca
  %.0.i.us.i125.i.i = load i32, ptr %.0.in.i.us.i124.i.i, align 4, !tbaa !39
  %i.bce = add nsw i32 %.0.i.us.i125.i.i, %.22.i.i
  %i.bcf = zext i8 %i.bbw to i64
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.bcf
  %i.bch = lshr i16 %i.bbk, 15
  %i.bci = zext i8 %i.bbt to i16
  %i.bcj = xor i16 %i.bch, %i.bci
  %i.bck = zext nneg i16 %i.bcj to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.bcg, i32 noundef %i.bck) #11
  %i.bcl = load i32, ptr %i.adi, align 8, !tbaa !214
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = mul nsw i64 %indvars.iv.next32.i.i, %i.bcm
  %i.bco = getelementptr [2 x i8], ptr %i.baf, i64 %i.bcn
  %i.bcp = getelementptr i8, ptr %i.bco, i64 2
  %i.bcq = load i16, ptr %i.bcp, align 2, !tbaa !57
  %i.bcr = lshr i16 %i.bcq, 15
  %i.bcs = zext nneg i16 %i.bcr to i32
  %i.bct = trunc nsw i64 %indvars.iv31.i.i to i32
  call void @ff_jpeg2000_set_significance(ptr noundef nonnull %4, i32 noundef %i.bah, i32 noundef %i.bct, i32 noundef %i.bcs) #11
  %.pre199.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !214 ; 2 uses
  %.pre47.i.i = sext i32 %.pre199.i.i.i to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %.lr.ph181.us.i.i.i
  %.pre-phi48.i.i = phi i64 [ %.pre47.i.i, %bb.by ], [ %.pre-phi46.i.i, %bb.bx ], [ %i.bak, %.lr.ph181.us.i.i.i ]
  %.23.i.i = phi i32 [ %i.bce, %bb.by ], [ %.22.i.i, %bb.bx ], [ %.22.i.i, %.lr.ph181.us.i.i.i ] ; 2 uses
  %i.bcu = phi i32 [ %.pre199.i.i.i, %bb.by ], [ %i.bbc, %bb.bx ], [ %i.baj, %.lr.ph181.us.i.i.i ]
  %i.bcv = mul nsw i64 %.pre-phi48.i.i, %indvars.iv.next32.i.i
  %i.bcw = getelementptr [2 x i8], ptr %i.baf, i64 %i.bcv
  %i.bcx = getelementptr i8, ptr %i.bcw, i64 2    ; 2 uses
  %i.bcy = load i16, ptr %i.bcx, align 2, !tbaa !57
  %i.bcz = and i16 %i.bcy, -4097
  store i16 %i.bcz, ptr %i.bcx, align 2, !tbaa !57
  %i.bda = icmp samesign ugt i64 %indvars.iv.next194.i.i.i, %indvars.iv.next32.i.i
  br i1 %i.bda, label %.lr.ph181.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !173

.loopexit.us.i.i.i:                               ; preds = %bb.bt, %bb.bz, %bb.bu
  %.24.i.i = phi i32 [ %.19.i.i, %bb.bu ], [ %.23.i.i, %bb.bz ], [ %.21.i.i, %bb.bt ] ; 3 uses
  %indvars.iv.next.i118.i.i = add nuw nsw i64 %indvars.iv.i116.i.i, 1 ; 2 uses
  %exitcond.not.i119.i.i = icmp eq i64 %indvars.iv.next.i118.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i119.i.i, label %._crit_edge.us.i120.i.i, label %bb.bm, !llvm.loop !174

._crit_edge.us.i120.i.i:                          ; preds = %.loopexit.us.i.i.i
  %i.bdb = icmp samesign ult i64 %indvars.iv.next194.i.i.i, %i.aip
  br i1 %i.bdb, label %.preheader177.us.i.i.i, label %encode_sigpass.exit.i.i, !llvm.loop !175

default.unreachable.i.i:                          ; preds = %bb.ax
  unreachable

encode_sigpass.exit.i.i:                          ; preds = %._crit_edge.us.i120.i.i, %._crit_edge46.split.us.i.i.i, %._crit_edge46.split.us.us.i.i.i, %._crit_edge72.split.us.i.i.i, %.preheader177.lr.ph.i.i.i, %bb.bl, %bb.be, %.preheader69.lr.ph.i.i.i, %bb.ay
  %.26.i.i = phi i32 [ 0, %bb.be ], [ 0, %bb.ay ], [ 0, %bb.bl ], [ 0, %.preheader69.lr.ph.i.i.i ], [ 0, %.preheader177.lr.ph.i.i.i ], [ %.11.i.i, %._crit_edge46.split.us.us.i.i.i ], [ %.5.i.i, %._crit_edge72.split.us.i.i.i ], [ %.16.i.i, %._crit_edge46.split.us.i.i.i ], [ %.24.i.i, %._crit_edge.us.i120.i.i ]
  %i.bdc = load ptr, ptr %i.amj, align 8, !tbaa !98
  %i.bdd = getelementptr inbounds nuw [24 x i8], ptr %i.bdc, i64 %indvars.iv.i.i ; 2 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 16
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdd, i64 20
  %i.bdg = call i32 @ff_mqc_flush_to(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.bde, ptr noundef nonnull %i.bdf) #11
  %i.bdh = load ptr, ptr %i.amj, align 8, !tbaa !98 ; 2 uses
  %i.bdi = getelementptr inbounds nuw [24 x i8], ptr %i.bdh, i64 %indvars.iv.i.i ; 3 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 20
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !103
  %i.bdl = sub i32 %i.bdg, %i.bdk
  %i.bdm = trunc i32 %i.bdl to i16
  store i16 %i.bdm, ptr %i.bdi, align 8, !tbaa !104
  %i.bdn = sext i32 %.26.i.i to i64
  %i.bdo = shl nuw nsw i32 %.09320.i.i, 1
  %i.bdp = zext nneg i32 %i.bdo to i64
  %i.bdq = shl i64 %i.bdn, %i.bdp
  %i.bdr = add nsw i64 %i.bdq, %.021.i.i          ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  store i64 %i.bdr, ptr %i.bds, align 8, !tbaa !105
  %i.bdt = add nuw nsw i32 %.09918.i.i, 1         ; 2 uses
  %i.bdu = icmp eq i32 %i.bdt, 3                  ; 2 uses
  %spec.select.i.i = select i1 %i.bdu, i32 0, i32 %i.bdt
  %i.bdv = sext i1 %i.bdu to i32
  %spec.select104.i.i = add nsw i32 %.09320.i.i, %i.bdv ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bdw = icmp sgt i32 %spec.select104.i.i, -1
  br i1 %i.bdw, label %bb.ax, label %._crit_edge.i.i, !llvm.loop !176

._crit_edge.i.i:                                  ; preds = %encode_sigpass.exit.i.i
  %i.bdx = trunc i64 %indvars.iv.next.i.i to i8   ; 2 uses
  store i8 %i.bdx, ptr %i.amh, align 8, !tbaa !100
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.amh, i64 1
  store i8 %i.bdx, ptr %i.bdy, align 1, !tbaa !101
  %5 = and i64 %indvars.iv.i.i, 4294967295        ; 2 uses
  %i.bdz = getelementptr inbounds nuw [24 x i8], ptr %i.bdh, i64 %5 ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 16
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdz, i64 20
  %i.bec = call i32 @ff_mqc_flush_to(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.bea, ptr noundef nonnull %i.beb) #11
  %i.bed = load ptr, ptr %i.amj, align 8, !tbaa !98
  %i.bee = getelementptr inbounds nuw [24 x i8], ptr %i.bed, i64 %5 ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 20
  %i.beg = load i32, ptr %i.bef, align 4, !tbaa !103
  %i.beh = sub i32 %i.bec, %i.beg
  %i.bei = trunc i32 %i.beh to i16
  store i16 %i.bei, ptr %i.bee, align 8, !tbaa !104
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.bej = load i16, ptr %i.ahj, align 8, !tbaa !216
  %i.bek = zext nneg i16 %i.bej to i32
  %i.bel = shl nuw i32 1, %i.bek
  %i.bem = add nsw i32 %i.bel, %.0178295.i
  %i.ben = load i32, ptr %i.agr, align 4, !tbaa !39 ; 2 uses
  %i.beo = load i32, ptr %i.afz, align 8, !tbaa !39 ; 2 uses
  %i.bep = add i32 %i.ben, %.0180.i
  %i.beq = sub i32 %i.bep, %i.beo
  %..i239 = call i32 @llvm.smin.i32(i32 %i.bem, i32 %i.beq)
  %i.ber = add nuw nsw i32 %.0185289.i, 1         ; 2 uses
  %indvars.iv.next.i240 = add nsw i64 %indvars.iv.i238, 1 ; 2 uses
  %i.bes = load i32, ptr %i.agb, align 8, !tbaa !92
  %i.bet = icmp slt i32 %i.ber, %i.bes
  br i1 %i.bet, label %bb.ap, label %._crit_edge298.loopexit.i, !llvm.loop !177

._crit_edge298.loopexit.i:                        ; preds = %bb.ca
  %i.beu = trunc nsw i64 %indvars.iv.next.i240 to i32
  %.pre349.i = load i16, ptr %i.agn, align 2, !tbaa !215
  %.pre350.i = load i32, ptr %i.ago, align 4, !tbaa !39
  %.pre351.i = load i32, ptr %i.agl, align 8, !tbaa !39
  %.pre352.i = load i32, ptr %i.agv, align 4, !tbaa !91
  br label %._crit_edge298.i

._crit_edge298.i:                                 ; preds = %._crit_edge298.loopexit.i, %bb.ao
  %i.bev = phi i32 [ %i.ahm, %bb.ao ], [ %.pre352.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bew = phi i32 [ %i.ahn, %bb.ao ], [ %.pre351.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bex = phi i32 [ %i.aho, %bb.ao ], [ %.pre350.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bey = phi i16 [ %i.ahp, %bb.ao ], [ %.pre349.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bez = phi i32 [ %i.ahq, %bb.ao ], [ %i.ben, %._crit_edge298.loopexit.i ]
  %i.bfa = phi i32 [ %i.ahr, %bb.ao ], [ %i.beo, %._crit_edge298.loopexit.i ]
  %.1183.lcssa.i = phi i32 [ %.0182300.i, %bb.ao ], [ %i.beu, %._crit_edge298.loopexit.i ]
  %i.bfb = zext nneg i16 %i.bey to i32
  %i.bfc = shl nuw i32 1, %i.bfb
  %i.bfd = add nsw i32 %i.bfc, %.0176302.i
  %i.bfe = sub i32 %i.agk, %i.bew
  %i.bff = add i32 %i.bfe, %i.bex
  %.208.i = call i32 @llvm.smin.i32(i32 %i.bfd, i32 %i.bff)
  %i.bfg = add nuw nsw i32 %.0184299.i, 1         ; 2 uses
  %i.bfh = icmp slt i32 %i.bfg, %i.bev
  br i1 %i.bfh, label %bb.am, label %.loopexit263.loopexit.i, !llvm.loop !178

.loopexit263.loopexit.i:                          ; preds = %._crit_edge298.i
  %.pre353.i = load i8, ptr %i.afr, align 8, !tbaa !83
  br label %.loopexit263.i

.loopexit263.i:                                   ; preds = %.loopexit263.loopexit.i, %bb.al, %bb.ak
  %i.bfi = phi i8 [ %.pre353.i, %.loopexit263.loopexit.i ], [ %i.afx, %bb.al ], [ %i.afx, %bb.ak ] ; 2 uses
  %indvars.iv.next341.i = add nuw nsw i64 %indvars.iv340.i, 1 ; 2 uses
  %i.bfj = zext i8 %i.bfi to i64
  %i.bfk = icmp samesign ult i64 %indvars.iv.next341.i, %i.bfj
  br i1 %i.bfk, label %bb.ai, label %._crit_edge308.loopexit.i, !llvm.loop !179

._crit_edge308.loopexit.i:                        ; preds = %.loopexit263.i
  %.pre354.i = load i32, ptr %i.yg, align 8, !tbaa !55
  br label %._crit_edge308.i

._crit_edge308.i:                                 ; preds = %._crit_edge308.loopexit.i, %bb.ah
  %i.bfl = phi i32 [ %.pre354.i, %._crit_edge308.loopexit.i ], [ %i.afp, %bb.ah ] ; 2 uses
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %i.bfm = sext i32 %i.bfl to i64
  %i.bfn = icmp slt i64 %indvars.iv.next344.i, %i.bfm
  br i1 %i.bfn, label %bb.ah, label %._crit_edge312.i, !llvm.loop !180

._crit_edge312.i:                                 ; preds = %._crit_edge308.i, %bb.ag
  %i.bfo = load ptr, ptr %i.ack, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bfo, i32 noundef 48, ptr noundef nonnull @.str.52) #11
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %i.bfp = load i32, ptr %i.vf, align 4, !tbaa !51
  %i.bfq = sext i32 %i.bfp to i64
  %i.bfr = icmp slt i64 %indvars.iv.next347.i, %i.bfq
  br i1 %i.bfr, label %.lr.ph315.i, label %._crit_edge316.i, !llvm.loop !181

._crit_edge316.i:                                 ; preds = %._crit_edge312.i, %bb.af
  %i.bfs = load ptr, ptr %i.ack, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bfs, i32 noundef 48, ptr noundef nonnull @.str.53) #11
  %i.bft = load i8, ptr %i.ado, align 8, !tbaa !41
  %.not.i236 = icmp eq i8 %i.bft, 0
  %i.bfu = load i32, ptr %i.vf, align 4, !tbaa !51 ; 3 uses
  %i.bfv = icmp sgt i32 %i.bfu, 0                 ; 2 uses
  br i1 %.not.i236, label %bb.cm, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge316.i
  br i1 %i.bfv, label %.lr.ph163.i.i, label %.preheader127.i.i

.lr.ph163.i.i:                                    ; preds = %bb.cb
  %i.bfw = load ptr, ptr %i.aet, align 8, !tbaa !67
  %i.bfx = load i32, ptr %i.yg, align 8, !tbaa !55 ; 2 uses
  %i.bfy = icmp sgt i32 %i.bfx, 0
  br i1 %i.bfy, label %.lr.ph.us170.preheader.i.i, label %.preheader127.i.i

.lr.ph.us170.preheader.i.i:                       ; preds = %.lr.ph163.i.i
  %wide.trip.count210.i.i = zext nneg i32 %i.bfu to i64
  %wide.trip.count205.i.i = zext nneg i32 %i.bfx to i64
  br label %.lr.ph.us170.i.i

.lr.ph.us170.i.i:                                 ; preds = %._crit_edge.us171.i.i, %.lr.ph.us170.preheader.i.i
  %indvars.iv207.i.i = phi i64 [ 0, %.lr.ph.us170.preheader.i.i ], [ %indvars.iv.next208.i.i, %._crit_edge.us171.i.i ] ; 2 uses
  %.0106161.us.i.i = phi double [ 0.000000e+00, %.lr.ph.us170.preheader.i.i ], [ %.2108.lcssa.us.i.i, %._crit_edge.us171.i.i ]
  %.0109160.us.i.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.us170.preheader.i.i ], [ %.2111.lcssa.us.i.i, %._crit_edge.us171.i.i ]
  %i.bfz = getelementptr inbounds nuw [408 x i8], ptr %i.bfw, i64 %indvars.iv207.i.i
  %i.bga = load ptr, ptr %i.bfz, align 8, !tbaa !80
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge151.us.i.i, %.lr.ph.us170.i.i
  %indvars.iv202.i.i = phi i64 [ 0, %.lr.ph.us170.i.i ], [ %indvars.iv.next203.i.i, %._crit_edge151.us.i.i ] ; 2 uses
  %.1107157.us.i.i = phi double [ %.0106161.us.i.i, %.lr.ph.us170.i.i ], [ %.2108.lcssa.us.i.i, %._crit_edge151.us.i.i ] ; 3 uses
  %.1110156.us.i.i = phi double [ %.0109160.us.i.i, %.lr.ph.us170.i.i ], [ %.2111.lcssa.us.i.i, %._crit_edge151.us.i.i ] ; 3 uses
  %i.bgb = getelementptr inbounds nuw [40 x i8], ptr %i.bga, i64 %indvars.iv202.i.i ; 4 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 20
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !106
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgb, i64 24
  %i.bgf = load i32, ptr %i.bge, align 8, !tbaa !107
  %i.bgg = mul nsw i32 %i.bgf, %i.bgd             ; 2 uses
  %i.bgh = icmp sgt i32 %i.bgg, 0
  br i1 %i.bgh, label %.preheader128.lr.ph.us.i.i, label %._crit_edge151.us.i.i

.preheader128.lr.ph.us.i.i:                       ; preds = %bb.cc
  %i.bgi = load i8, ptr %i.bgb, align 8, !tbaa !83 ; 2 uses
  %.not181.i.i = icmp eq i8 %i.bgi, 0
  br i1 %.not181.i.i, label %._crit_edge151.us.i.i, label %.preheader128.lr.ph.split.us.us.i.i

.preheader128.lr.ph.split.us.us.i.i:              ; preds = %.preheader128.lr.ph.us.i.i
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgb, i64 32
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !84
  %wide.trip.count200.i.i = zext nneg i32 %i.bgg to i64
  %wide.trip.count195.i.i = zext i8 %i.bgi to i64
  br label %.preheader128.us.us.i.i

.preheader128.us.us.i.i:                          ; preds = %._crit_edge145.us.us.i.i, %.preheader128.lr.ph.split.us.us.i.i
  %indvars.iv197.i.i = phi i64 [ %indvars.iv.next198.i.i, %._crit_edge145.us.us.i.i ], [ 0, %.preheader128.lr.ph.split.us.us.i.i ] ; 2 uses
  %.2108150.us.us.i.i = phi double [ %.4.lcssa.us.us.i.i, %._crit_edge145.us.us.i.i ], [ %.1107157.us.i.i, %.preheader128.lr.ph.split.us.us.i.i ]
  %.2111149.us.us.i.i = phi double [ %.4113.lcssa.us.us.i.i, %._crit_edge145.us.us.i.i ], [ %.1110156.us.i.i, %.preheader128.lr.ph.split.us.us.i.i ]
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge138.us.us.i.i, %.preheader128.us.us.i.i
  %indvars.iv192.i.i = phi i64 [ %indvars.iv.next193.i.i, %._crit_edge138.us.us.i.i ], [ 0, %.preheader128.us.us.i.i ] ; 2 uses
  %.3143.us.us.i.i = phi double [ %.4.lcssa.us.us.i.i, %._crit_edge138.us.us.i.i ], [ %.2108150.us.us.i.i, %.preheader128.us.us.i.i ] ; 2 uses
  %.3112142.us.us.i.i = phi double [ %.4113.lcssa.us.us.i.i, %._crit_edge138.us.us.i.i ], [ %.2111149.us.us.i.i, %.preheader128.us.us.i.i ] ; 2 uses
  %i.bgl = getelementptr inbounds nuw [40 x i8], ptr %i.bgk, i64 %indvars.iv192.i.i
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 32
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !87
  %i.bgo = getelementptr inbounds nuw [56 x i8], ptr %i.bgn, i64 %indvars.iv197.i.i ; 3 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgo, i64 4
  %i.bgq = load i32, ptr %i.bgp, align 4, !tbaa !91
  %i.bgr = load i32, ptr %i.bgo, align 8, !tbaa !92
  %i.bgs = mul nsw i32 %i.bgr, %i.bgq             ; 2 uses
  %i.bgt = icmp sgt i32 %i.bgs, 0
  br i1 %i.bgt, label %.lr.ph137.us.us.i.i, label %._crit_edge138.us.us.i.i

.lr.ph137.us.us.i.i:                              ; preds = %bb.cd
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgo, i64 24
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !93
  %wide.trip.count190.i.i = zext nneg i32 %i.bgs to i64
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.us.us.i.i, %.lr.ph137.us.us.i.i
  %indvars.iv187.i.i = phi i64 [ %indvars.iv.next188.i.i, %._crit_edge.us.us.i.i ], [ 0, %.lr.ph137.us.us.i.i ] ; 2 uses
  %.4135.us.us.i.i = phi double [ %.5.lcssa.us.us.i.i, %._crit_edge.us.us.i.i ], [ %.3143.us.us.i.i, %.lr.ph137.us.us.i.i ] ; 4 uses
  %.4113134.us.us.i.i = phi double [ %.5114.lcssa.us.us.i.i, %._crit_edge.us.us.i.i ], [ %.3112142.us.us.i.i, %.lr.ph137.us.us.i.i ] ; 4 uses
  %i.bgw = getelementptr inbounds nuw [104 x i8], ptr %i.bgv, i64 %indvars.iv187.i.i ; 2 uses
  %i.bgx = load i8, ptr %i.bgw, align 8, !tbaa !100 ; 3 uses
  %.not182.i.i = icmp eq i8 %i.bgx, 0
  br i1 %.not182.i.i, label %._crit_edge.us.us.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgw, i64 56
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !98 ; 3 uses
  %wide.trip.count.i.i = zext i8 %i.bgx to i64
  %i.bha = load i16, ptr %i.bgz, align 8, !tbaa !104 ; 2 uses
  %i.bhb = icmp eq i16 %i.bha, 0
  br i1 %i.bhb, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgz, i64 8
  %i.bhd = load i64, ptr %i.bhc, align 8, !tbaa !105
  %.0101.us.us.peel.i.i = sitofp i64 %i.bhd to double
  %i.bhe = uitofp i16 %i.bha to double
  %i.bhf = fdiv nsz double %.0101.us.us.peel.i.i, %i.bhe ; 4 uses
  %i.bhg = fcmp nsz olt double %i.bhf, %.4113134.us.us.i.i
  %.6115.us.us.peel.i.i = select nsz i1 %i.bhg, double %i.bhf, double %.4113134.us.us.i.i
  %i.bhh = fcmp nsz ogt double %i.bhf, %.4135.us.us.i.i
  %.6.us.us.peel.i.i = select nsz i1 %i.bhh, double %i.bhf, double %.4135.us.us.i.i
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.7116.us.us.peel.i.i = phi nsz double [ %.6115.us.us.peel.i.i, %bb.cg ], [ %.4113134.us.us.i.i, %bb.cf ] ; 2 uses
  %.7.us.us.peel.i.i = phi nsz double [ %.6.us.us.peel.i.i, %bb.cg ], [ %.4135.us.us.i.i, %bb.cf ] ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i8 %i.bgx, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.us.us.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.ch, %bb.cj
  %indvars.iv.i215.i = phi i64 [ %indvars.iv.next.i216.i, %bb.cj ], [ 1, %bb.ch ] ; 2 uses
end_hunk_0
