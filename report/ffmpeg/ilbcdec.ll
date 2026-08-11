inline.NumInlined: 150
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0_@ilbc_decode_frame:bb.a
  %i.blb = load i16, ptr %i.c, align 16, !tbaa !46
  store i16 %i.blb, ptr %i.bla, align 2, !tbaa !46
  %i.blc = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.bld = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !46
  %i.ble = sext <8 x i16> %i.bld to <8 x i32>
  %i.blf = mul nsw <8 x i32> %i.ble, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.blg = add nsw <8 x i32> %i.blf, splat (i32 16384)
  %i.blh = lshr <8 x i32> %i.blg, splat (i32 15)
  %i.bli = trunc <8 x i32> %i.blh to <8 x i16>
  store <8 x i16> %i.bli, ptr %i.blc, align 4, !tbaa !46
  %i.blj = load i16, ptr %i.bkj, align 2, !tbaa !46
  %i.blk = sext i16 %i.blj to i32
  %i.bll = mul nsw i32 %i.blk, 13016
  %i.blm = add nsw i32 %i.bll, 16384
  %i.bln = lshr i32 %i.blm, 15
  %i.blo = trunc i32 %i.bln to i16
  %i.blp = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  store i16 %i.blo, ptr %i.blp, align 4, !tbaa !46
  %i.blq = load i16, ptr %i.bkr, align 4, !tbaa !46
  %i.blr = sext i16 %i.blq to i32
  %i.bls = mul nsw i32 %i.blr, 11747
  %i.blt = add nsw i32 %i.bls, 16384
  %i.blu = lshr i32 %i.blt, 15
  %i.blv = trunc i32 %i.blu to i16
  %i.blw = getelementptr inbounds nuw i8, ptr %i.e, i64 386
  store i16 %i.blv, ptr %i.blw, align 2, !tbaa !46
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull readonly %i.bcr, ptr noundef nonnull readonly %i.bjo, i32 noundef 10923)
  %i.blx = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.blx, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bly = getelementptr inbounds nuw i8, ptr %i.e, i64 388
  %i.blz = load i16, ptr %i.c, align 16, !tbaa !46
  store i16 %i.blz, ptr %i.bly, align 4, !tbaa !46
  %i.bma = getelementptr inbounds nuw i8, ptr %i.e, i64 390
  %i.bmb = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !46
  %i.bmc = sext <8 x i16> %i.bmb to <8 x i32>
  %i.bmd = mul nsw <8 x i32> %i.bmc, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.bme = add nsw <8 x i32> %i.bmd, splat (i32 16384)
  %i.bmf = lshr <8 x i32> %i.bme, splat (i32 15)
  %i.bmg = trunc <8 x i32> %i.bmf to <8 x i16>
  store <8 x i16> %i.bmg, ptr %i.bma, align 2, !tbaa !46
  %i.bmh = load i16, ptr %i.bkj, align 2, !tbaa !46
  %i.bmi = sext i16 %i.bmh to i32
  %i.bmj = mul nsw i32 %i.bmi, 13016
  %i.bmk = add nsw i32 %i.bmj, 16384
  %i.bml = lshr i32 %i.bmk, 15
  %i.bmm = trunc i32 %i.bml to i16
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.e, i64 406
  store i16 %i.bmm, ptr %i.bmn, align 2, !tbaa !46
  %i.bmo = load i16, ptr %i.bkr, align 4, !tbaa !46
  %i.bmp = sext i16 %i.bmo to i32
  %i.bmq = mul nsw i32 %i.bmp, 11747
  %i.bmr = add nsw i32 %i.bmq, 16384
  %i.bms = lshr i32 %i.bmr, 15
  %i.bmt = trunc i32 %i.bms to i16
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  store i16 %i.bmt, ptr %i.bmu, align 4, !tbaa !46
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull readonly %i.bcr, ptr noundef nonnull readonly %i.bjo, i32 noundef 5461)
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.e, i64 542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bmv, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.e, i64 410
  %i.bmx = load i16, ptr %i.c, align 16, !tbaa !46
  store i16 %i.bmx, ptr %i.bmw, align 2, !tbaa !46
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.e, i64 412
  %i.bmz = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !46
  %i.bna = sext <8 x i16> %i.bmz to <8 x i32>
  %i.bnb = mul nsw <8 x i32> %i.bna, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.bnc = add nsw <8 x i32> %i.bnb, splat (i32 16384)
  %i.bnd = lshr <8 x i32> %i.bnc, splat (i32 15)
  %i.bne = trunc <8 x i32> %i.bnd to <8 x i16>
  store <8 x i16> %i.bne, ptr %i.bmy, align 4, !tbaa !46
  %i.bnf = load i16, ptr %i.bkj, align 2, !tbaa !46
  %i.bng = sext i16 %i.bnf to i32
  %i.bnh = mul nsw i32 %i.bng, 13016
  %i.bni = add nsw i32 %i.bnh, 16384
  %i.bnj = lshr i32 %i.bni, 15
  %i.bnk = trunc i32 %i.bnj to i16
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.e, i64 428
  store i16 %i.bnk, ptr %i.bnl, align 4, !tbaa !46
  %i.bnm = load i16, ptr %i.bkr, align 4, !tbaa !46
  %i.bnn = sext i16 %i.bnm to i32
  %i.bno = mul nsw i32 %i.bnn, 11747
  %i.bnp = add nsw i32 %i.bno, 16384
  %i.bnq = lshr i32 %i.bnp, 15
  %i.bnr = trunc i32 %i.bnq to i16
  %i.bns = getelementptr inbounds nuw i8, ptr %i.e, i64 430
  store i16 %i.bnr, ptr %i.bns, align 2, !tbaa !46
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull readonly %i.bcr, ptr noundef nonnull readonly %i.bjo, i32 noundef 0)
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.e, i64 564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bnt, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %i.bnv = load i16, ptr %i.c, align 16, !tbaa !46
  store i16 %i.bnv, ptr %i.bnu, align 4, !tbaa !46
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.e, i64 434
  %i.bnx = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !46
  %i.bny = sext <8 x i16> %i.bnx to <8 x i32>
  %i.bnz = mul nsw <8 x i32> %i.bny, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.boa = add nsw <8 x i32> %i.bnz, splat (i32 16384)
  %i.bob = lshr <8 x i32> %i.boa, splat (i32 15)
  %i.boc = trunc <8 x i32> %i.bob to <8 x i16>
  store <8 x i16> %i.boc, ptr %i.bnw, align 2, !tbaa !46
  %i.bod = load i16, ptr %i.bkj, align 2, !tbaa !46
  %i.boe = sext i16 %i.bod to i32
  %i.bof = mul nsw i32 %i.boe, 13016
  %i.bog = add nsw i32 %i.bof, 16384
  %i.boh = lshr i32 %i.bog, 15
  %i.boi = trunc i32 %i.boh to i16
  %i.boj = getelementptr inbounds nuw i8, ptr %i.e, i64 450
  store i16 %i.boi, ptr %i.boj, align 2, !tbaa !46
  %i.bok = load i16, ptr %i.bkr, align 4, !tbaa !46
  %i.bol = sext i16 %i.bok to i32
  %i.bom = mul nsw i32 %i.bol, 11747
  %i.bon = add nsw i32 %i.bom, 16384
  %i.boo = lshr i32 %i.bon, 15
  %i.bop = trunc i32 %i.boo to i16
  %i.boq = getelementptr inbounds nuw i8, ptr %i.e, i64 452
  store i16 %i.bop, ptr %i.boq, align 4, !tbaa !46
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull readonly %i.bcr, ptr noundef nonnull readonly %i.bjo, i32 noundef 0)
  %i.bor = getelementptr inbounds nuw i8, ptr %i.e, i64 586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bor, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bos = getelementptr inbounds nuw i8, ptr %i.e, i64 454
  %i.bot = load i16, ptr %i.c, align 16, !tbaa !46
  store i16 %i.bot, ptr %i.bos, align 2, !tbaa !46
  %i.bou = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  %i.bov = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !46
  %i.bow = sext <8 x i16> %i.bov to <8 x i32>
  %i.box = mul nsw <8 x i32> %i.bow, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.boy = add nsw <8 x i32> %i.box, splat (i32 16384)
  %i.boz = lshr <8 x i32> %i.boy, splat (i32 15)
  %i.bpa = trunc <8 x i32> %i.boz to <8 x i16>
  store <8 x i16> %i.bpa, ptr %i.bou, align 4, !tbaa !46
  %i.bpb = load i16, ptr %i.bkj, align 2, !tbaa !46
  %i.bpc = sext i16 %i.bpb to i32
  %i.bpd = mul nsw i32 %i.bpc, 13016
  %i.bpe = add nsw i32 %i.bpd, 16384
  %i.bpf = lshr i32 %i.bpe, 15
  %i.bpg = trunc i32 %i.bpf to i16
  %i.bph = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  store i16 %i.bpg, ptr %i.bph, align 4, !tbaa !46
  %i.bpi = load i16, ptr %i.bkr, align 4, !tbaa !46
  %i.bpj = sext i16 %i.bpi to i32
  %i.bpk = mul nsw i32 %i.bpj, 11747
  %i.bpl = add nsw i32 %i.bpk, 16384
  %i.bpm = lshr i32 %i.bpl, 15
  %i.bpn = trunc i32 %i.bpm to i16
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.e, i64 474
  store i16 %i.bpn, ptr %i.bpo, align 2, !tbaa !46
  br label %lsp_interpolate.exit

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next56.i, %bb.ae ] ; 3 uses
  %indvars.iv.i103 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i104, %bb.ae ] ; 2 uses
  %i.bpp = getelementptr inbounds nuw [2 x i8], ptr @lsf_weight_20ms, i64 %indvars.iv.i103
  %i.bpq = load i16, ptr %i.bpp, align 2, !tbaa !46
  %i.bpr = sext i16 %i.bpq to i32
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull %i.bju, ptr noundef nonnull readonly %i.bcr, i32 noundef %i.bpr)
  %i.bps = getelementptr inbounds nuw [2 x i8], ptr %i.bjm, i64 %indvars.iv55.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bps, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bpt = getelementptr inbounds nuw [2 x i8], ptr %i.bjn, i64 %indvars.iv55.i ; 4 uses
  %i.bpu = load i16, ptr %i.c, align 16, !tbaa !46
  store i16 %i.bpu, ptr %i.bpt, align 2, !tbaa !46
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpt, i64 2
  %i.bpw = load <8 x i16>, ptr %i.bjv, align 2, !tbaa !46
  %i.bpx = sext <8 x i16> %i.bpw to <8 x i32>
  %i.bpy = mul nsw <8 x i32> %i.bpx, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.bpz = add nsw <8 x i32> %i.bpy, splat (i32 16384)
  %i.bqa = lshr <8 x i32> %i.bpz, splat (i32 15)
  %i.bqb = trunc <8 x i32> %i.bqa to <8 x i16>
  store <8 x i16> %i.bqb, ptr %i.bpv, align 2, !tbaa !46
  %i.bqc = load i16, ptr %i.bjw, align 2, !tbaa !46
  %i.bqd = sext i16 %i.bqc to i32
  %i.bqe = mul nsw i32 %i.bqd, 13016
  %i.bqf = add nsw i32 %i.bqe, 16384
  %i.bqg = lshr i32 %i.bqf, 15
  %i.bqh = trunc i32 %i.bqg to i16
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bpt, i64 18
  store i16 %i.bqh, ptr %i.bqi, align 2, !tbaa !46
  %i.bqj = load i16, ptr %i.bjx, align 4, !tbaa !46
  %i.bqk = sext i16 %i.bqj to i32
  %i.bql = mul nsw i32 %i.bqk, 11747
  %i.bqm = add nsw i32 %i.bql, 16384
  %i.bqn = lshr i32 %i.bqm, 15
  %i.bqo = trunc i32 %i.bqn to i16
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bpt, i64 20
  store i16 %i.bqo, ptr %i.bqp, align 2, !tbaa !46
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 11
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %i.bqq = icmp samesign ult i64 %indvars.iv.next.i104, %i.bjy
  br i1 %i.bqq, label %bb.ae, label %lsp_interpolate.exit, !llvm.loop !61

lsp_interpolate.exit:                             ; preds = %bb.ae, %lsp_interpolate.exit.loopexit, %.preheader.i102
  %..i = phi ptr [ %i.bcr, %.preheader.i102 ], [ %i.bjo, %lsp_interpolate.exit.loopexit ], [ %i.bcr, %bb.ae ]
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bqr, ptr noundef nonnull align 2 dereferenceable(20) %..i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.e, i64 2522 ; 9 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.e, i64 740 ; 5 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.e, i64 2050 ; 8 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  %i.bqw = load i32, ptr %i.bqv, align 8, !tbaa !42 ; 11 uses
  %i.bqx = trunc i32 %i.bqw to i16                ; 6 uses
  %i.bqy = sub i16 80, %i.bqx                     ; 5 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.e, i64 90 ; 2 uses
  %i.bra = load i16, ptr %i.bqz, align 2, !tbaa !48 ; 2 uses
  %i.brb = icmp eq i16 %i.bra, 1
  %i.brc = mul nuw nsw i16 %i.bcc, 40             ; 2 uses
  %i.brd = add nsw i16 %i.brc, -40
  %reass.sub = sub i16 %i.brc, %i.bqx
  %i.bre = add i16 %reass.sub, 40
  %.0.i106 = select i1 %i.brb, i16 %i.brd, i16 %i.bre ; 2 uses
  %i.brf = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.brg = load i16, ptr %i.brf, align 8, !tbaa !49 ; 3 uses
  %narrow = mul nuw nsw i16 %i.bcc, 22
  %.idx.i107 = zext nneg i16 %narrow to i64
  %i.brh = getelementptr i8, ptr %i.bjm, i64 %.idx.i107 ; 4 uses
  %i.bri = getelementptr i8, ptr %i.brh, i64 -22
  %i.brj = sext i16 %.0.i106 to i64
  %i.brk = getelementptr [2 x i8], ptr %i.bqs, i64 %i.brj ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.brl = getelementptr i8, ptr %i.brh, i64 -16
  %i.brm = load <8 x i16>, ptr %i.brl, align 2, !tbaa !46 ; 9 uses
  %i.brn = getelementptr i8, ptr %i.brh, i64 -18
  %i.bro = load i16, ptr %i.brn, align 2, !tbaa !46 ; 2 uses
  %i.brp = getelementptr i8, ptr %i.brh, i64 -20
  %i.brq = load i16, ptr %i.brp, align 2, !tbaa !46 ; 2 uses
  %i.brr = load i16, ptr %i.bri, align 2, !tbaa !46 ; 2 uses
  %i.brs = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 12 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.bru = sext i16 %i.brg to i64
  %i.brv = getelementptr inbounds [2 x i8], ptr @frg_quant_mod, i64 %i.bru
  %i.brw = load i16, ptr %i.brv, align 2, !tbaa !46 ; 3 uses
  %sext132.i = shl i32 %i.bqw, 16                 ; 5 uses
  %i.brx = ashr exact i32 %sext132.i, 16          ; 12 uses
  %i.bry = add nsw i32 %i.brx, -1                 ; 3 uses
  %i.brz = sext i32 %i.bry to i64                 ; 2 uses
  %i.bsa = getelementptr inbounds [2 x i8], ptr %i.jp, i64 %i.brz ; 6 uses
  %i.bsb = icmp slt i16 %i.brg, 37
  br i1 %i.bsb, label %.preheader.i.i, label %bb.ag

.preheader.i.i:                                   ; preds = %lsp_interpolate.exit
  %i.bsc = icmp sgt i16 %i.bqx, 0
  br i1 %i.bsc, label %.lr.ph116.i.i, label %.loopexit.i.i

.lr.ph116.i.i:                                    ; preds = %.preheader.i.i
  %i.bsd = sext i16 %i.brw to i32                 ; 3 uses
  %xtraiter311 = and i32 %i.bqw, 1                ; 2 uses
  %i.bse = icmp eq i32 %i.bry, 0
  br i1 %i.bse, label %.epil.preheader310, label %.lr.ph116.i.i.new

.lr.ph116.i.i.new:                                ; preds = %.lr.ph116.i.i
  %unroll_iter314 = sub nsw i32 %i.brx, %xtraiter311
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph116.i.i.new
  %.061114.i.i = phi ptr [ %i.brs, %.lr.ph116.i.i.new ], [ %i.bsz, %bb.af ] ; 3 uses
  %.066113.i.i = phi ptr [ %i.bsa, %.lr.ph116.i.i.new ], [ %i.bta, %bb.af ] ; 3 uses
  %niter315 = phi i32 [ 0, %.lr.ph116.i.i.new ], [ %niter315.next.1, %bb.af ]
  %i.bsf = load i16, ptr %.066113.i.i, align 2, !tbaa !46
  %i.bsg = sext i16 %i.bsf to i64
  %i.bsh = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bsg
  %i.bsi = load i16, ptr %i.bsh, align 2, !tbaa !46
  %i.bsj = sext i16 %i.bsi to i32
  %i.bsk = mul nsw i32 %i.bsj, %i.bsd
  %i.bsl = add nsw i32 %i.bsk, 2097152
  %i.bsm = ashr i32 %i.bsl, 22
  %i.bsn = trunc nsw i32 %i.bsm to i16
  store i16 %i.bsn, ptr %.061114.i.i, align 2, !tbaa !46
  %i.bso = getelementptr inbounds nuw i8, ptr %.061114.i.i, i64 2
  %i.bsp = getelementptr inbounds i8, ptr %.066113.i.i, i64 -2
  %i.bsq = load i16, ptr %i.bsp, align 2, !tbaa !46
  %i.bsr = sext i16 %i.bsq to i64
  %i.bss = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bsr
  %i.bst = load i16, ptr %i.bss, align 2, !tbaa !46
  %i.bsu = sext i16 %i.bst to i32
  %i.bsv = mul nsw i32 %i.bsu, %i.bsd
  %i.bsw = add nsw i32 %i.bsv, 2097152
  %i.bsx = ashr i32 %i.bsw, 22
  %i.bsy = trunc nsw i32 %i.bsx to i16
  store i16 %i.bsy, ptr %i.bso, align 2, !tbaa !46
  %i.bsz = getelementptr inbounds nuw i8, ptr %.061114.i.i, i64 4 ; 2 uses
  %i.bta = getelementptr inbounds i8, ptr %.066113.i.i, i64 -4 ; 2 uses
  %niter315.next.1 = add i32 %niter315, 2         ; 2 uses
  %niter315.ncmp.1 = icmp eq i32 %niter315.next.1, %unroll_iter314
  br i1 %niter315.ncmp.1, label %.loopexit.i.i.loopexit.unr-lcssa, label %bb.af, !llvm.loop !62

bb.ag:                                            ; preds = %lsp_interpolate.exit
  %i.btb = icmp samesign ult i16 %i.brg, 59
  %i.btc = icmp sgt i16 %i.bqx, 0                 ; 2 uses
  br i1 %i.btb, label %.preheader101.i.i, label %.preheader103.i.i

.preheader103.i.i:                                ; preds = %bb.ag
  br i1 %i.btc, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader103.i.i
  %i.btd = sext i16 %i.brw to i32                 ; 3 uses
  %xtraiter = and i32 %i.bqw, 1                   ; 2 uses
  %i.bte = icmp eq i32 %sext132.i, 65536
  br i1 %i.bte, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = sub nsw i32 %i.brx, %xtraiter
  br label %bb.ai

.preheader101.i.i:                                ; preds = %bb.ag
  br i1 %i.btc, label %.lr.ph112.i.i, label %.loopexit.i.i

.lr.ph112.i.i:                                    ; preds = %.preheader101.i.i
  %i.btf = sext i16 %i.brw to i32                 ; 3 uses
  %xtraiter305 = and i32 %i.bqw, 1                ; 2 uses
  %i.btg = icmp eq i32 %i.bry, 0
  br i1 %i.btg, label %.epil.preheader304, label %.lr.ph112.i.i.new

.lr.ph112.i.i.new:                                ; preds = %.lr.ph112.i.i
  %unroll_iter308 = sub nsw i32 %i.brx, %xtraiter305
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph112.i.i.new
  %.162110.i.i = phi ptr [ %i.brs, %.lr.ph112.i.i.new ], [ %i.bub, %bb.ah ] ; 3 uses
  %.167109.i.i = phi ptr [ %i.bsa, %.lr.ph112.i.i.new ], [ %i.buc, %bb.ah ] ; 3 uses
  %niter309 = phi i32 [ 0, %.lr.ph112.i.i.new ], [ %niter309.next.1, %bb.ah ]
  %i.bth = load i16, ptr %.167109.i.i, align 2, !tbaa !46
  %i.bti = sext i16 %i.bth to i64
  %i.btj = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bti
  %i.btk = load i16, ptr %i.btj, align 2, !tbaa !46
  %i.btl = sext i16 %i.btk to i32
  %i.btm = mul nsw i32 %i.btl, %i.btf
  %i.btn = add nsw i32 %i.btm, 262144
  %i.bto = ashr i32 %i.btn, 19
  %i.btp = trunc nsw i32 %i.bto to i16
  store i16 %i.btp, ptr %.162110.i.i, align 2, !tbaa !46
  %i.btq = getelementptr inbounds nuw i8, ptr %.162110.i.i, i64 2
  %i.btr = getelementptr inbounds i8, ptr %.167109.i.i, i64 -2
  %i.bts = load i16, ptr %i.btr, align 2, !tbaa !46
  %i.btt = sext i16 %i.bts to i64
  %i.btu = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.btt
  %i.btv = load i16, ptr %i.btu, align 2, !tbaa !46
  %i.btw = sext i16 %i.btv to i32
  %i.btx = mul nsw i32 %i.btw, %i.btf
  %i.bty = add nsw i32 %i.btx, 262144
  %i.btz = ashr i32 %i.bty, 19
  %i.bua = trunc nsw i32 %i.btz to i16
  store i16 %i.bua, ptr %i.btq, align 2, !tbaa !46
  %i.bub = getelementptr inbounds nuw i8, ptr %.162110.i.i, i64 4 ; 2 uses
  %i.buc = getelementptr inbounds i8, ptr %.167109.i.i, i64 -4 ; 2 uses
  %niter309.next.1 = add i32 %niter309, 2         ; 2 uses
  %niter309.ncmp.1 = icmp eq i32 %niter309.next.1, %unroll_iter308
  br i1 %niter309.ncmp.1, label %.loopexit.i.i.loopexit299.unr-lcssa, label %bb.ah, !llvm.loop !63

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i.new
  %.263107.i.i = phi ptr [ %i.brs, %.lr.ph.i.i.new ], [ %i.bux, %bb.ai ] ; 3 uses
  %.268106.i.i = phi ptr [ %i.bsa, %.lr.ph.i.i.new ], [ %i.buy, %bb.ai ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.ai ]
  %i.bud = load i16, ptr %.268106.i.i, align 2, !tbaa !46
  %i.bue = sext i16 %i.bud to i64
  %i.buf = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bue
  %i.bug = load i16, ptr %i.buf, align 2, !tbaa !46
  %i.buh = sext i16 %i.bug to i32
  %i.bui = mul nsw i32 %i.buh, %i.btd
  %i.buj = add nsw i32 %i.bui, 65536
  %i.buk = ashr i32 %i.buj, 17
  %i.bul = trunc nsw i32 %i.buk to i16
  store i16 %i.bul, ptr %.263107.i.i, align 2, !tbaa !46
  %i.bum = getelementptr inbounds nuw i8, ptr %.263107.i.i, i64 2
  %i.bun = getelementptr inbounds i8, ptr %.268106.i.i, i64 -2
  %i.buo = load i16, ptr %i.bun, align 2, !tbaa !46
  %i.bup = sext i16 %i.buo to i64
  %i.buq = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bup
  %i.bur = load i16, ptr %i.buq, align 2, !tbaa !46
  %i.bus = sext i16 %i.bur to i32
  %i.but = mul nsw i32 %i.bus, %i.btd
  %i.buu = add nsw i32 %i.but, 65536
  %i.buv = ashr i32 %i.buu, 17
  %i.buw = trunc nsw i32 %i.buv to i16
  store i16 %i.buw, ptr %i.bum, align 2, !tbaa !46
  %i.bux = getelementptr inbounds nuw i8, ptr %.263107.i.i, i64 4 ; 2 uses
  %i.buy = getelementptr inbounds i8, ptr %.268106.i.i, i64 -4 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.loopexit300.unr-lcssa, label %bb.ai, !llvm.loop !64

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %bb.af
  %lcmp.mod312.not = icmp eq i32 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.loopexit.i.i, label %.epil.preheader310

.epil.preheader310:                               ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph116.i.i
  %.061114.i.i.epil.init = phi ptr [ %i.brs, %.lr.ph116.i.i ], [ %i.bsz, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.066113.i.i.epil.init = phi ptr [ %i.bsa, %.lr.ph116.i.i ], [ %i.bta, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod313 = trunc i32 %i.bqw to i1
  tail call void @llvm.assume(i1 %lcmp.mod313)
  %i.buz = load i16, ptr %.066113.i.i.epil.init, align 2, !tbaa !46
  %i.bva = sext i16 %i.buz to i64
  %i.bvb = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bva
  %i.bvc = load i16, ptr %i.bvb, align 2, !tbaa !46
  %i.bvd = sext i16 %i.bvc to i32
  %i.bve = mul nsw i32 %i.bvd, %i.bsd
  %i.bvf = add nsw i32 %i.bve, 2097152
  %i.bvg = ashr i32 %i.bvf, 22
  %i.bvh = trunc nsw i32 %i.bvg to i16
  store i16 %i.bvh, ptr %.061114.i.i.epil.init, align 2, !tbaa !46
  br label %.loopexit.i.i

end_hunk_0
begin_hunk_1_@ilbc_decode_frame:bb.a
  %wide.load266 = load <8 x i16>, ptr %i.ccd, align 2, !tbaa !46
  %i.cce = getelementptr i8, ptr %next.gep264, i64 -16
  %i.ccf = getelementptr i8, ptr %next.gep264, i64 -32
  %wide.load267 = load <8 x i16>, ptr %i.cce, align 4, !tbaa !46
  %wide.load268 = load <8 x i16>, ptr %i.ccf, align 4, !tbaa !46
  %i.ccg = add <8 x i16> %wide.load267, %wide.load265
  %i.cch = add <8 x i16> %wide.load268, %wide.load266
  %reverse = shufflevector <8 x i16> %i.ccg, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse269 = shufflevector <8 x i16> %i.cch, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cci = getelementptr i8, ptr %next.gep263, i64 16
  store <8 x i16> %reverse, ptr %next.gep263, align 2, !tbaa !46
  store <8 x i16> %reverse269, ptr %i.cci, align 2, !tbaa !46
  %index.next270 = add nuw i64 %index262, 16      ; 2 uses
  %i.ccj = icmp eq i64 %index.next270, %n.vec260
  br i1 %i.ccj, label %middle.block271, label %vector.body261, !llvm.loop !70

middle.block271:                                  ; preds = %vector.body261
  %cmp.n272 = icmp eq i64 %n.vec260, %i.cbs
  br i1 %cmp.n272, label %state_construct.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block271
  %min.epilog.iters.check = icmp eq i64 %i.cbt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph121.i.i.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec260, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec277 = and i64 %i.cbs, 32764               ; 5 uses
  %i.cck = trunc nuw nsw i64 %n.vec277 to i32
  %i.ccl = mul nsw i64 %n.vec277, -2              ; 2 uses
  %i.ccm = getelementptr i8, ptr %i.cbr, i64 %i.ccl
  %i.ccn = shl nuw nsw i64 %n.vec277, 1
  %i.cco = getelementptr i8, ptr %i.brk, i64 %i.ccn
  %i.ccp = getelementptr i8, ptr %i.cbq, i64 %i.ccl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index278 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next285, %vec.epilog.vector.body ] ; 3 uses
  %i.ccq = mul i64 %index278, -2                  ; 2 uses
  %next.gep279 = getelementptr i8, ptr %i.cbr, i64 %i.ccq
  %i.ccr = shl i64 %index278, 1
  %next.gep280 = getelementptr i8, ptr %i.brk, i64 %i.ccr
  %next.gep281 = getelementptr i8, ptr %i.cbq, i64 %i.ccq
  %i.ccs = getelementptr i8, ptr %next.gep279, i64 -6
  %wide.load282 = load <4 x i16>, ptr %i.ccs, align 2, !tbaa !46
  %i.cct = getelementptr i8, ptr %next.gep281, i64 -8
  %wide.load283 = load <4 x i16>, ptr %i.cct, align 4, !tbaa !46
  %i.ccu = add <4 x i16> %wide.load283, %wide.load282
  %reverse284 = shufflevector <4 x i16> %i.ccu, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse284, ptr %next.gep280, align 2, !tbaa !46
  %index.next285 = add nuw i64 %index278, 4       ; 2 uses
  %i.ccv = icmp eq i64 %index.next285, %n.vec277
  br i1 %i.ccv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n286 = icmp eq i64 %n.vec277, %i.cbs
  br i1 %cmp.n286, label %state_construct.exit.loopexit.i, label %.lr.ph121.i.i.preheader

.lr.ph121.i.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4120.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.cbu, %vec.epilog.iter.check ], [ %i.cck, %vec.epilog.middle.block ]
  %.364119.i.i.ph = phi ptr [ %i.cbr, %iter.check ], [ %i.cbw, %vec.epilog.iter.check ], [ %i.ccm, %vec.epilog.middle.block ]
  %.065118.i.i.ph = phi ptr [ %i.brk, %iter.check ], [ %i.cby, %vec.epilog.iter.check ], [ %i.cco, %vec.epilog.middle.block ]
  %.pn117.i.i.ph = phi ptr [ %i.cbq, %iter.check ], [ %i.cbz, %vec.epilog.iter.check ], [ %i.ccp, %vec.epilog.middle.block ]
  br label %.lr.ph121.i.i

.lr.ph121.i.i:                                    ; preds = %.lr.ph121.i.i.preheader, %.lr.ph121.i.i
  %.4120.i.i = phi i32 [ %i.cdb, %.lr.ph121.i.i ], [ %.4120.i.i.ph, %.lr.ph121.i.i.preheader ]
  %.364119.i.i = phi ptr [ %i.ccz, %.lr.ph121.i.i ], [ %.364119.i.i.ph, %.lr.ph121.i.i.preheader ] ; 2 uses
  %.065118.i.i = phi ptr [ %i.cda, %.lr.ph121.i.i ], [ %.065118.i.i.ph, %.lr.ph121.i.i.preheader ] ; 2 uses
  %.pn117.i.i = phi ptr [ %.369.i.i, %.lr.ph121.i.i ], [ %.pn117.i.i.ph, %.lr.ph121.i.i.preheader ]
  %.369.i.i = getelementptr i8, ptr %.pn117.i.i, i64 -2 ; 2 uses
  %i.ccw = load i16, ptr %.364119.i.i, align 2, !tbaa !46
  %i.ccx = load i16, ptr %.369.i.i, align 2, !tbaa !46
  %i.ccy = add i16 %i.ccx, %i.ccw
  store i16 %i.ccy, ptr %.065118.i.i, align 2, !tbaa !46
  %i.ccz = getelementptr inbounds i8, ptr %.364119.i.i, i64 -2
  %i.cda = getelementptr inbounds nuw i8, ptr %.065118.i.i, i64 2
  %i.cdb = add nuw nsw i32 %.4120.i.i, 1          ; 2 uses
  %exitcond127.not.i.i = icmp eq i32 %i.cdb, %i.brx
  br i1 %exitcond127.not.i.i, label %state_construct.exit.loopexit.i, label %.lr.ph121.i.i, !llvm.loop !73

state_construct.exit.loopexit.i:                  ; preds = %.lr.ph121.i.i, %vec.epilog.middle.block, %middle.block271
  %.pre.i114 = load i16, ptr %i.bqz, align 2, !tbaa !48
  br label %state_construct.exit.i

state_construct.exit.i:                           ; preds = %state_construct.exit.loopexit.i, %filter_mafq12.exit.i.i
  %i.cdc = phi i16 [ %.pre.i114, %state_construct.exit.loopexit.i ], [ %i.bra, %filter_mafq12.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not.i = icmp eq i16 %i.cdc, 0
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %state_construct.exit.i
  %sext109.i = sub i32 9633792, %sext132.i
  %i.cdd = ashr exact i32 %sext109.i, 15
  %i.cde = sext i32 %i.cdd to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bqu, i8 0, i64 %i.cde, i1 false)
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.e, i64 2344
  %i.cdg = sext i32 %i.bqw to i64
  %i.cdh = sub nsw i64 0, %i.cdg
  %i.cdi = getelementptr inbounds [2 x i8], ptr %i.cdf, i64 %i.cdh
  %i.cdj = sext i16 %.0.i106 to i32
  %i.cdk = shl nsw i32 %i.bqw, 1
  %i.cdl = sext i32 %i.cdk to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cdi, ptr align 2 %i.brk, i64 %i.cdl, i1 false)
  %i.cdm = load i32, ptr %i.bqv, align 8, !tbaa !42
  %i.cdn = add nsw i32 %i.cdm, %i.cdj
  %i.cdo = sext i32 %i.cdn to i64
  %i.cdp = getelementptr inbounds [2 x i8], ptr %i.bqs, i64 %i.cdo
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cds = getelementptr inbounds nuw i8, ptr %i.e, i64 2174
  tail call fastcc void @construct_vector(ptr noundef nonnull %i.cdp, ptr noundef nonnull readonly %i.cdq, ptr noundef nonnull readonly %i.cdr, ptr noundef nonnull %i.cds, i16 noundef signext 85, i16 noundef signext %i.bqy)
  br label %reverse_memcpy.exit119.i

bb.ak:                                            ; preds = %state_construct.exit.i
  %i.cdt = icmp sgt i32 %i.brx, 0
  br i1 %i.cdt, label %.lr.ph.i112.preheader.i, label %reverse_memcpy.exit.i

.lr.ph.i112.preheader.i:                          ; preds = %bb.ak
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.e, i64 2342 ; 2 uses
  %xtraiter316 = and i32 %i.bqw, 7                ; 4 uses
  %i.cdv = icmp ult i32 %i.brx, 8
  br i1 %i.cdv, label %.lr.ph.i112.i.epil.preheader, label %.lr.ph.i112.preheader.i.new

.lr.ph.i112.preheader.i.new:                      ; preds = %.lr.ph.i112.preheader.i
  %unroll_iter319 = sub nuw nsw i32 %i.brx, %xtraiter316
  br label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %.lr.ph.i112.i, %.lr.ph.i112.preheader.i.new
  %.069.i.i = phi ptr [ %i.brk, %.lr.ph.i112.preheader.i.new ], [ %i.cer, %.lr.ph.i112.i ] ; 9 uses
  %.078.i.i = phi ptr [ %i.cdu, %.lr.ph.i112.preheader.i.new ], [ %i.cet, %.lr.ph.i112.i ] ; 9 uses
  %niter320 = phi i32 [ 0, %.lr.ph.i112.preheader.i.new ], [ %niter320.next.7, %.lr.ph.i112.i ]
  %i.cdw = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 2
  %i.cdx = load i16, ptr %.069.i.i, align 2, !tbaa !46
  %i.cdy = getelementptr inbounds i8, ptr %.078.i.i, i64 -2
  store i16 %i.cdx, ptr %.078.i.i, align 2, !tbaa !46
  %i.cdz = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 4
  %i.cea = load i16, ptr %i.cdw, align 2, !tbaa !46
  %i.ceb = getelementptr inbounds i8, ptr %.078.i.i, i64 -4
  store i16 %i.cea, ptr %i.cdy, align 2, !tbaa !46
  %i.cec = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 6
  %i.ced = load i16, ptr %i.cdz, align 2, !tbaa !46
  %i.cee = getelementptr inbounds i8, ptr %.078.i.i, i64 -6
  store i16 %i.ced, ptr %i.ceb, align 2, !tbaa !46
  %i.cef = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 8
  %i.ceg = load i16, ptr %i.cec, align 2, !tbaa !46
  %i.ceh = getelementptr inbounds i8, ptr %.078.i.i, i64 -8
  store i16 %i.ceg, ptr %i.cee, align 2, !tbaa !46
  %i.cei = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 10
  %i.cej = load i16, ptr %i.cef, align 2, !tbaa !46
  %i.cek = getelementptr inbounds i8, ptr %.078.i.i, i64 -10
  store i16 %i.cej, ptr %i.ceh, align 2, !tbaa !46
  %i.cel = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 12
  %i.cem = load i16, ptr %i.cei, align 2, !tbaa !46
  %i.cen = getelementptr inbounds i8, ptr %.078.i.i, i64 -12
  store i16 %i.cem, ptr %i.cek, align 2, !tbaa !46
  %i.ceo = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 14
  %i.cep = load i16, ptr %i.cel, align 2, !tbaa !46
  %i.ceq = getelementptr inbounds i8, ptr %.078.i.i, i64 -14
  store i16 %i.cep, ptr %i.cen, align 2, !tbaa !46
  %i.cer = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 16 ; 2 uses
  %i.ces = load i16, ptr %i.ceo, align 2, !tbaa !46
  %i.cet = getelementptr inbounds i8, ptr %.078.i.i, i64 -16 ; 2 uses
  store i16 %i.ces, ptr %i.ceq, align 2, !tbaa !46
  %niter320.next.7 = add i32 %niter320, 8         ; 2 uses
  %niter320.ncmp.7 = icmp eq i32 %niter320.next.7, %unroll_iter319
  br i1 %niter320.ncmp.7, label %reverse_memcpy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i112.i, !llvm.loop !74

reverse_memcpy.exit.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i112.i
  %lcmp.mod317.not = icmp eq i32 %xtraiter316, 0
  br i1 %lcmp.mod317.not, label %reverse_memcpy.exit.i, label %.lr.ph.i112.i.epil.preheader

.lr.ph.i112.i.epil.preheader:                     ; preds = %reverse_memcpy.exit.i.loopexit.unr-lcssa, %.lr.ph.i112.preheader.i
  %.069.i.i.epil.init = phi ptr [ %i.brk, %.lr.ph.i112.preheader.i ], [ %i.cer, %reverse_memcpy.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.epil.init = phi ptr [ %i.cdu, %.lr.ph.i112.preheader.i ], [ %i.cet, %reverse_memcpy.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod318 = icmp ne i32 %xtraiter316, 0
  tail call void @llvm.assume(i1 %lcmp.mod318)
  br label %.lr.ph.i112.i.epil

.lr.ph.i112.i.epil:                               ; preds = %.lr.ph.i112.i.epil, %.lr.ph.i112.i.epil.preheader
  %.069.i.i.epil = phi ptr [ %i.ceu, %.lr.ph.i112.i.epil ], [ %.069.i.i.epil.init, %.lr.ph.i112.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi ptr [ %i.cew, %.lr.ph.i112.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i112.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i112.i.epil ], [ 0, %.lr.ph.i112.i.epil.preheader ]
  %i.ceu = getelementptr inbounds nuw i8, ptr %.069.i.i.epil, i64 2
  %i.cev = load i16, ptr %.069.i.i.epil, align 2, !tbaa !46
  %i.cew = getelementptr inbounds i8, ptr %.078.i.i.epil, i64 -2
  store i16 %i.cev, ptr %.078.i.i.epil, align 2, !tbaa !46
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter316
  br i1 %epil.iter.cmp.not, label %reverse_memcpy.exit.i, label %.lr.ph.i112.i.epil, !llvm.loop !75

reverse_memcpy.exit.i:                            ; preds = %reverse_memcpy.exit.i.loopexit.unr-lcssa, %.lr.ph.i112.i.epil, %bb.ak
  %sext108.i = sub i32 9633792, %sext132.i
  %i.cex = ashr exact i32 %sext108.i, 15
  %i.cey = sext i32 %i.cex to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bqu, i8 0, i64 %i.cey, i1 false)
  %i.cez = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.e, i64 2174
  tail call fastcc void @construct_vector(ptr noundef nonnull %i.bqt, ptr noundef nonnull readonly %i.cez, ptr noundef nonnull readonly %i.cfa, ptr noundef nonnull %i.cfb, i16 noundef signext 85, i16 noundef signext %i.bqy)
  %4 = zext i16 %i.bqy to i32                     ; 2 uses
  %i.cfc = icmp sgt i16 %i.bqy, 0
  br i1 %i.cfc, label %.lr.ph.i114.i.preheader, label %reverse_memcpy.exit119.i

.lr.ph.i114.i.preheader:                          ; preds = %reverse_memcpy.exit.i
  %xtraiter321 = and i32 %4, 7                    ; 3 uses
  %i.cfd = icmp ult i16 %i.bqy, 8
  br i1 %i.cfd, label %.lr.ph.i114.i.epil.preheader, label %.lr.ph.i114.i.preheader.new

.lr.ph.i114.i.preheader.new:                      ; preds = %.lr.ph.i114.i.preheader
  %unroll_iter325 = and i32 %4, 32760
  br label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i, %.lr.ph.i114.i.preheader.new
  %.069.i116.i = phi ptr [ %i.bqt, %.lr.ph.i114.i.preheader.new ], [ %i.cfs, %.lr.ph.i114.i ] ; 9 uses
  %.078.i117.pn.i = phi ptr [ %i.brk, %.lr.ph.i114.i.preheader.new ], [ %.078.i117.i.7, %.lr.ph.i114.i ] ; 8 uses
  %niter326 = phi i32 [ 0, %.lr.ph.i114.i.preheader.new ], [ %niter326.next.7, %.lr.ph.i114.i ]
  %.078.i117.i = getelementptr i8, ptr %.078.i117.pn.i, i64 -2
  %i.cfe = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 2
  %i.cff = load i16, ptr %.069.i116.i, align 2, !tbaa !46
  store i16 %i.cff, ptr %.078.i117.i, align 2, !tbaa !46
  %.078.i117.i.1 = getelementptr i8, ptr %.078.i117.pn.i, i64 -4
  %i.cfg = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 4
  %i.cfh = load i16, ptr %i.cfe, align 2, !tbaa !46
  store i16 %i.cfh, ptr %.078.i117.i.1, align 2, !tbaa !46
  %.078.i117.i.2 = getelementptr i8, ptr %.078.i117.pn.i, i64 -6
  %i.cfi = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 6
  %i.cfj = load i16, ptr %i.cfg, align 2, !tbaa !46
  store i16 %i.cfj, ptr %.078.i117.i.2, align 2, !tbaa !46
  %.078.i117.i.3 = getelementptr i8, ptr %.078.i117.pn.i, i64 -8
  %i.cfk = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 8
  %i.cfl = load i16, ptr %i.cfi, align 2, !tbaa !46
  store i16 %i.cfl, ptr %.078.i117.i.3, align 2, !tbaa !46
  %.078.i117.i.4 = getelementptr i8, ptr %.078.i117.pn.i, i64 -10
  %i.cfm = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 10
  %i.cfn = load i16, ptr %i.cfk, align 2, !tbaa !46
  store i16 %i.cfn, ptr %.078.i117.i.4, align 2, !tbaa !46
  %.078.i117.i.5 = getelementptr i8, ptr %.078.i117.pn.i, i64 -12
  %i.cfo = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 12
  %i.cfp = load i16, ptr %i.cfm, align 2, !tbaa !46
  store i16 %i.cfp, ptr %.078.i117.i.5, align 2, !tbaa !46
  %.078.i117.i.6 = getelementptr i8, ptr %.078.i117.pn.i, i64 -14
  %i.cfq = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 14
  %i.cfr = load i16, ptr %i.cfo, align 2, !tbaa !46
  store i16 %i.cfr, ptr %.078.i117.i.6, align 2, !tbaa !46
  %.078.i117.i.7 = getelementptr i8, ptr %.078.i117.pn.i, i64 -16 ; 3 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 16 ; 2 uses
  %i.cft = load i16, ptr %i.cfq, align 2, !tbaa !46
  store i16 %i.cft, ptr %.078.i117.i.7, align 2, !tbaa !46
  %niter326.next.7 = add i32 %niter326, 8         ; 2 uses
  %niter326.ncmp.7 = icmp eq i32 %niter326.next.7, %unroll_iter325
  br i1 %niter326.ncmp.7, label %reverse_memcpy.exit119.i.loopexit.unr-lcssa, label %.lr.ph.i114.i, !llvm.loop !74

reverse_memcpy.exit119.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i114.i
  %lcmp.mod323.not = icmp eq i32 %xtraiter321, 0
  br i1 %lcmp.mod323.not, label %reverse_memcpy.exit119.i, label %.lr.ph.i114.i.epil.preheader

.lr.ph.i114.i.epil.preheader:                     ; preds = %reverse_memcpy.exit119.i.loopexit.unr-lcssa, %.lr.ph.i114.i.preheader
  %.069.i116.i.epil.init = phi ptr [ %i.bqt, %.lr.ph.i114.i.preheader ], [ %i.cfs, %reverse_memcpy.exit119.i.loopexit.unr-lcssa ]
  %.078.i117.pn.i.epil.init = phi ptr [ %i.brk, %.lr.ph.i114.i.preheader ], [ %.078.i117.i.7, %reverse_memcpy.exit119.i.loopexit.unr-lcssa ]
  %lcmp.mod324 = icmp ne i32 %xtraiter321, 0
  tail call void @llvm.assume(i1 %lcmp.mod324)
  br label %.lr.ph.i114.i.epil

.lr.ph.i114.i.epil:                               ; preds = %.lr.ph.i114.i.epil, %.lr.ph.i114.i.epil.preheader
  %.069.i116.i.epil = phi ptr [ %i.cfu, %.lr.ph.i114.i.epil ], [ %.069.i116.i.epil.init, %.lr.ph.i114.i.epil.preheader ] ; 2 uses
  %.078.i117.pn.i.epil = phi ptr [ %.078.i117.i.epil, %.lr.ph.i114.i.epil ], [ %.078.i117.pn.i.epil.init, %.lr.ph.i114.i.epil.preheader ]
  %epil.iter322 = phi i32 [ %epil.iter322.next, %.lr.ph.i114.i.epil ], [ 0, %.lr.ph.i114.i.epil.preheader ]
  %.078.i117.i.epil = getelementptr i8, ptr %.078.i117.pn.i.epil, i64 -2 ; 2 uses
  %i.cfu = getelementptr inbounds nuw i8, ptr %.069.i116.i.epil, i64 2
  %i.cfv = load i16, ptr %.069.i116.i.epil, align 2, !tbaa !46
  store i16 %i.cfv, ptr %.078.i117.i.epil, align 2, !tbaa !46
  %epil.iter322.next = add i32 %epil.iter322, 1   ; 2 uses
  %epil.iter322.cmp.not = icmp eq i32 %epil.iter322.next, %xtraiter321
  br i1 %epil.iter322.cmp.not, label %reverse_memcpy.exit119.i, label %.lr.ph.i114.i.epil, !llvm.loop !77

reverse_memcpy.exit119.i:                         ; preds = %reverse_memcpy.exit119.i.loopexit.unr-lcssa, %.lr.ph.i114.i.epil, %reverse_memcpy.exit.i, %bb.aj
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.e, i64 234 ; 3 uses
  %i.cfx = load i16, ptr %i.cfw, align 2, !tbaa !39 ; 2 uses
  %i.cfy = load i16, ptr %i.bcb, align 2, !tbaa !47 ; 5 uses
  %i.cfz = xor i16 %i.cfy, -1
  %i.cga = add i16 %i.cfx, %i.cfz                 ; 2 uses
  %i.cgb = icmp sgt i16 %i.cga, 0
  br i1 %i.cgb, label %bb.al, label %reverse_memcpy.exit119.i..loopexit.i_crit_edge

reverse_memcpy.exit119.i..loopexit.i_crit_edge:   ; preds = %reverse_memcpy.exit119.i
  %.pre204 = sext i16 %i.cfy to i32
  br label %.loopexit.i

bb.al:                                            ; preds = %reverse_memcpy.exit119.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(134) %i.bqu, i8 0, i64 134, i1 false)
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.e, i64 2184
  %i.cgd = sext i16 %i.cfy to i64
  %.idx110.i = mul nsw i64 %i.cgd, 80
  %i.cge = getelementptr i8, ptr %i.bqs, i64 %.idx110.i
  %i.cgf = getelementptr i8, ptr %i.cge, i64 -80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(160) %i.cgc, ptr noundef nonnull align 2 dereferenceable(160) %i.cgf, i64 160, i1 false)
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.e, i64 2130
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.e, i64 2264
  %wide.trip.count.i110 = zext nneg i16 %i.cga to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %bb.al
  %i.cgk = phi i16 [ %i.cfy, %bb.al ], [ %i.cgu, %bb.am ]
  %indvars.iv151.i = phi i32 [ 0, %bb.al ], [ %i.cgm, %bb.am ]
  %indvars.iv.i111 = phi i64 [ 1, %bb.al ], [ %indvars.iv.next.i112, %bb.am ] ; 2 uses
  %i.cgl = sext i16 %i.cgk to i32
  %i.cgm = add nuw nsw i32 %indvars.iv151.i, 1    ; 4 uses
  %i.cgn = add nsw i32 %i.cgm, %i.cgl
  %i.cgo = mul nsw i32 %i.cgn, 40
  %i.cgp = sext i32 %i.cgo to i64
  %i.cgq = getelementptr inbounds [2 x i8], ptr %i.bqs, i64 %i.cgp
  %i.cgr = mul nuw nsw i64 %indvars.iv.i111, 3    ; 2 uses
  %i.cgs = getelementptr inbounds nuw [2 x i8], ptr %i.cgg, i64 %i.cgr
  %i.cgt = getelementptr inbounds nuw [2 x i8], ptr %i.cgh, i64 %i.cgr
  tail call fastcc void @construct_vector(ptr noundef nonnull %i.cgq, ptr noundef nonnull readonly %i.cgs, ptr noundef nonnull readonly %i.cgt, ptr noundef nonnull %i.bqu, i16 noundef signext 147, i16 noundef signext 40)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(214) %i.bqu, ptr noundef nonnull align 2 dereferenceable(214) %i.cgi, i64 214, i1 false)
  %i.cgu = load i16, ptr %i.bcb, align 2, !tbaa !47 ; 3 uses
  %i.cgv = sext i16 %i.cgu to i32                 ; 2 uses
  %i.cgw = add nsw i32 %i.cgm, %i.cgv
  %i.cgx = mul nsw i32 %i.cgw, 40
  %i.cgy = sext i32 %i.cgx to i64
  %i.cgz = getelementptr inbounds [2 x i8], ptr %i.bqs, i64 %i.cgy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(80) %i.cgj, ptr noundef nonnull align 2 dereferenceable(80) %i.cgz, i64 80, i1 false)
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i113 = icmp eq i32 %i.cgm, %wide.trip.count.i110
  br i1 %exitcond.not.i113, label %.loopexit.loopexit.i, label %bb.am, !llvm.loop !78

.loopexit.loopexit.i:                             ; preds = %bb.am
  %i.cha = trunc nuw i64 %indvars.iv.next.i112 to i16
  %.pre181.pre = load i16, ptr %i.cfw, align 2, !tbaa !39
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %reverse_memcpy.exit119.i..loopexit.i_crit_edge, %.loopexit.loopexit.i
  %.pre-phi205 = phi i32 [ %.pre204, %reverse_memcpy.exit119.i..loopexit.i_crit_edge ], [ %i.cgv, %.loopexit.loopexit.i ]
  %.pre181 = phi i16 [ %i.cfx, %reverse_memcpy.exit119.i..loopexit.i_crit_edge ], [ %.pre181.pre, %.loopexit.loopexit.i ] ; 2 uses
  %i.chb = phi i16 [ %i.cfy, %reverse_memcpy.exit119.i..loopexit.i_crit_edge ], [ %i.cgu, %.loopexit.loopexit.i ]
  %.1.i = phi i16 [ 1, %reverse_memcpy.exit119.i..loopexit.i_crit_edge ], [ %i.cha, %.loopexit.loopexit.i ]
  %i.chc = add nsw i32 %.pre-phi205, -1           ; 2 uses
  %sext111.i = shl i32 %i.chc, 16
  %i.chd = ashr exact i32 %sext111.i, 16          ; 3 uses
  %i.che = icmp sgt i32 %i.chd, 0
  br i1 %i.che, label %bb.an, label %decode_residual.exit

bb.an:                                            ; preds = %.loopexit.i
  %reass.sub148.i = sub i16 %.pre181, %i.chb
  %i.chf = mul i16 %reass.sub148.i, 40
  %i.chg = add i16 %i.chf, 40                     ; 3 uses
  %spec.store.select.i = tail call i16 @llvm.smin.i16(i16 %i.chg, i16 147) ; 4 uses
  %i.chh = sext i16 %spec.store.select.i to i32   ; 2 uses
  %i.chi = icmp sgt i16 %i.chg, 0
  br i1 %i.chi, label %.lr.ph.i120.preheader.i, label %.lr.ph.i108

.lr.ph.i120.preheader.i:                          ; preds = %bb.an
  %i.chj = mul nsw i32 %i.chc, 40
  %i.chk = sext i32 %i.chj to i64
  %i.chl = getelementptr inbounds [2 x i8], ptr %i.bqs, i64 %i.chk ; 2 uses
  %i.chm = getelementptr inbounds nuw i8, ptr %i.e, i64 2342 ; 2 uses
  %xtraiter327 = and i32 %i.chh, 3
  %i.chn = icmp slt i16 %i.chg, 8
  br i1 %i.chn, label %.lr.ph.i120.i.epil.preheader, label %.lr.ph.i120.preheader.i.new

.lr.ph.i120.preheader.i.new:                      ; preds = %.lr.ph.i120.preheader.i
  %unroll_iter331 = and i32 %i.chh, 248
  br label %.lr.ph.i120.i

.lr.ph.i120.i:                                    ; preds = %.lr.ph.i120.i, %.lr.ph.i120.preheader.i.new
  %.069.i122.i = phi ptr [ %i.chl, %.lr.ph.i120.preheader.i.new ], [ %i.cij, %.lr.ph.i120.i ] ; 9 uses
  %.078.i123.i = phi ptr [ %i.chm, %.lr.ph.i120.preheader.i.new ], [ %i.cil, %.lr.ph.i120.i ] ; 9 uses
  %niter332 = phi i32 [ 0, %.lr.ph.i120.preheader.i.new ], [ %niter332.next.7, %.lr.ph.i120.i ]
  %i.cho = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 2
  %i.chp = load i16, ptr %.069.i122.i, align 2, !tbaa !46
  %i.chq = getelementptr inbounds i8, ptr %.078.i123.i, i64 -2
  store i16 %i.chp, ptr %.078.i123.i, align 2, !tbaa !46
  %i.chr = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 4
  %i.chs = load i16, ptr %i.cho, align 2, !tbaa !46
  %i.cht = getelementptr inbounds i8, ptr %.078.i123.i, i64 -4
  store i16 %i.chs, ptr %i.chq, align 2, !tbaa !46
  %i.chu = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 6
  %i.chv = load i16, ptr %i.chr, align 2, !tbaa !46
  %i.chw = getelementptr inbounds i8, ptr %.078.i123.i, i64 -6
  store i16 %i.chv, ptr %i.cht, align 2, !tbaa !46
  %i.chx = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 8
  %i.chy = load i16, ptr %i.chu, align 2, !tbaa !46
  %i.chz = getelementptr inbounds i8, ptr %.078.i123.i, i64 -8
  store i16 %i.chy, ptr %i.chw, align 2, !tbaa !46
  %i.cia = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 10
  %i.cib = load i16, ptr %i.chx, align 2, !tbaa !46
  %i.cic = getelementptr inbounds i8, ptr %.078.i123.i, i64 -10
  store i16 %i.cib, ptr %i.chz, align 2, !tbaa !46
  %i.cid = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 12
  %i.cie = load i16, ptr %i.cia, align 2, !tbaa !46
  %i.cif = getelementptr inbounds i8, ptr %.078.i123.i, i64 -12
  store i16 %i.cie, ptr %i.cic, align 2, !tbaa !46
  %i.cig = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 14
  %i.cih = load i16, ptr %i.cid, align 2, !tbaa !46
  %i.cii = getelementptr inbounds i8, ptr %.078.i123.i, i64 -14
  store i16 %i.cih, ptr %i.cif, align 2, !tbaa !46
  %i.cij = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 16 ; 2 uses
  %i.cik = load i16, ptr %i.cig, align 2, !tbaa !46
  %i.cil = getelementptr inbounds i8, ptr %.078.i123.i, i64 -16 ; 2 uses
  store i16 %i.cik, ptr %i.cii, align 2, !tbaa !46
  %niter332.next.7 = add nuw nsw i32 %niter332, 8 ; 2 uses
  %niter332.ncmp.7 = icmp eq i32 %niter332.next.7, %unroll_iter331
  br i1 %niter332.ncmp.7, label %.lr.ph.i108.loopexit.unr-lcssa, label %.lr.ph.i120.i, !llvm.loop !74

.lr.ph.i108.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i120.i
  %i.cim = and i16 %spec.store.select.i, 3
  %lcmp.mod329.not = icmp eq i16 %i.cim, 0
  br i1 %lcmp.mod329.not, label %.lr.ph.i108, label %.lr.ph.i120.i.epil.preheader

.lr.ph.i120.i.epil.preheader:                     ; preds = %.lr.ph.i108.loopexit.unr-lcssa, %.lr.ph.i120.preheader.i
  %.069.i122.i.epil.init = phi ptr [ %i.chl, %.lr.ph.i120.preheader.i ], [ %i.cij, %.lr.ph.i108.loopexit.unr-lcssa ]
  %.078.i123.i.epil.init = phi ptr [ %i.chm, %.lr.ph.i120.preheader.i ], [ %i.cil, %.lr.ph.i108.loopexit.unr-lcssa ]
  %i.cin = and i16 %spec.store.select.i, 3
  %lcmp.mod330 = icmp ne i16 %i.cin, 0
  tail call void @llvm.assume(i1 %lcmp.mod330)
  br label %.lr.ph.i120.i.epil

.lr.ph.i120.i.epil:                               ; preds = %.lr.ph.i120.i.epil, %.lr.ph.i120.i.epil.preheader
  %.069.i122.i.epil = phi ptr [ %i.cio, %.lr.ph.i120.i.epil ], [ %.069.i122.i.epil.init, %.lr.ph.i120.i.epil.preheader ] ; 2 uses
  %.078.i123.i.epil = phi ptr [ %i.ciq, %.lr.ph.i120.i.epil ], [ %.078.i123.i.epil.init, %.lr.ph.i120.i.epil.preheader ] ; 2 uses
  %epil.iter328 = phi i32 [ %epil.iter328.next, %.lr.ph.i120.i.epil ], [ 0, %.lr.ph.i120.i.epil.preheader ]
  %i.cio = getelementptr inbounds nuw i8, ptr %.069.i122.i.epil, i64 2
  %i.cip = load i16, ptr %.069.i122.i.epil, align 2, !tbaa !46
  %i.ciq = getelementptr inbounds i8, ptr %.078.i123.i.epil, i64 -2
  store i16 %i.cip, ptr %.078.i123.i.epil, align 2, !tbaa !46
  %epil.iter328.next = add i32 %epil.iter328, 1   ; 2 uses
  %epil.iter328.cmp.not = icmp eq i32 %epil.iter328.next, %xtraiter327
  br i1 %epil.iter328.cmp.not, label %.lr.ph.i108, label %.lr.ph.i120.i.epil, !llvm.loop !79

.lr.ph.i108:                                      ; preds = %.lr.ph.i108.loopexit.unr-lcssa, %.lr.ph.i120.i.epil, %bb.an
  %i.cir = sub i16 147, %spec.store.select.i
  %i.cis = sext i16 %i.cir to i32
  %i.cit = shl nsw i32 %i.cis, 1
  %i.ciu = sext i32 %i.cit to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bqu, i8 0, i64 %i.ciu, i1 false)
  %i.civ = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cix = getelementptr inbounds nuw i8, ptr %i.e, i64 2130
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.e, i64 2264
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i108
  %i.ciz = phi i32 [ 0, %.lr.ph.i108 ], [ %i.cjj, %bb.ao ]
  %.2147.i = phi i16 [ %.1.i, %.lr.ph.i108 ], [ %i.cjh, %bb.ao ] ; 2 uses
  %.1103146.i = phi i16 [ 0, %.lr.ph.i108 ], [ %i.cji, %bb.ao ]
  %i.cja = mul nsw i32 %i.ciz, 40
  %i.cjb = sext i32 %i.cja to i64
  %i.cjc = getelementptr inbounds [2 x i8], ptr %i.bqt, i64 %i.cjb ; 2 uses
  %i.cjd = sext i16 %.2147.i to i64
  %i.cje = mul nsw i64 %i.cjd, 3                  ; 2 uses
  %i.cjf = getelementptr inbounds [2 x i8], ptr %i.civ, i64 %i.cje
  %i.cjg = getelementptr inbounds [2 x i8], ptr %i.ciw, i64 %i.cje
  tail call fastcc void @construct_vector(ptr noundef nonnull %i.cjc, ptr noundef nonnull readonly %i.cjf, ptr noundef nonnull readonly %i.cjg, ptr noundef nonnull %i.bqu, i16 noundef signext 147, i16 noundef signext 40)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(214) %i.bqu, ptr noundef nonnull align 2 dereferenceable(214) %i.cix, i64 214, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(80) %i.ciy, ptr noundef nonnull align 2 dereferenceable(80) %i.cjc, i64 80, i1 false)
  %i.cjh = add i16 %.2147.i, 1
  %i.cji = add i16 %.1103146.i, 1                 ; 2 uses
end_hunk_1
