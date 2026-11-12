Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.06?download=true
inline.NumInlined: 2075
inline.NumDeleted: 841
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvNtCslFlrwjHoTci_14polars_compute7decimal13str_to_dec128:bb.a
  %.sroa.18.sroa.16.0.extract.shift1325 = lshr i128 %i.blw, 64, !dbg !30505
  %.sroa.18.sroa.16.0.extract.trunc1326 = trunc nuw i128 %.sroa.18.sroa.16.0.extract.shift1325 to i64, !dbg !30505
  br label %bb.hn, !dbg !30506

bb.hd:                                            ; preds = %bb.gz
  %i.blz = icmp ugt i128 %i.bky, 17014118346046923173168730371588, !dbg !30507
  %i.bma = icmp ugt i64 %i.blk, 17633967486271487, !dbg !30507
  %or.cond2.i.i = or i1 %i.blz, %i.bma, !dbg !30507
  br i1 %or.cond2.i.i, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd5short15parse_short_posKyffffffffffffffff_ECslFlrwjHoTci_14polars_compute.exit1252, label %.preheader21.i1224.preheader, !dbg !30507

bb.he:                                            ; preds = %bb.gy
  switch i32 %i.bcg, label %bb.hg [
    i32 0, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd5short15parse_short_posKyffffffffffffffff_ECslFlrwjHoTci_14polars_compute.exit1252
    i32 16, label %bb.hf
  ], !dbg !30508

bb.hf:                                            ; preds = %bb.he
  %i.bmb = add nuw nsw i32 %.sroa.221351.0.ph2151, 16, !dbg !30509
  %i.bmc = icmp eq i32 %.sroa.221351.0.ph2151, 16, !dbg !30510
  %i.bmd = select i1 %i.bmc, i32 %.sroa.08.0.i245, i32 0, !dbg !30510
  %spec.select.i.i = add nuw nsw i32 %i.bmb, %i.bmd, !dbg !30510
  br label %bb.hg, !dbg !30510

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.sroa.026.0.i.i = phi i32 [ %spec.select.i.i, %bb.hf ], [ %i.bcg, %bb.he ], !dbg !30511 ; 2 uses
  %i.bme = add i32 %.sroa.026.0.i.i, %.sroa.017.0.i.i, !dbg !30512
  %i.bmf = zext nneg i32 %.sroa.026.0.i.i to i64, !dbg !30513 ; 2 uses
  %i.bmg = sub nuw nsw i64 %.sroa.9.0.i.i, %i.bmf, !dbg !30514
  %i.bmh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.bmf, !dbg !30515
  br label %.preheader2249, !dbg !30424

bb.hh:                                            ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit713
  %i.bmi = and i128 %i.bcb, 20016609818878733144904388672456953615
  %i.bmj = mul i128 %i.bmi, 2561
  %i.bmk = lshr i128 %i.bmj, 8
  %i.bml = and i128 %i.bmk, 1324055902416102970674609367438786815
  %i.bmm = mul i128 %i.bml, 6553601
  %i.bmn = lshr i128 %i.bmm, 16
  %i.bmo = and i128 %i.bmn, 5192217631581220737344928932233215
  %i.bmp = mul i128 %i.bmo, 42949672960001
  %i.bmq = lshr i128 %i.bmp, 32
  %i.bmr = and i128 %i.bmq, 79228162495817593524129366015
  %i.bms = mul i128 %i.bmr, 1844674407370955161600000001
  %i.bmt = lshr i128 %i.bms, 64
  %i.bmu = mul i128 %i.bhk, %i.bmt
  %i.bmv = zext i64 %.sroa.101347.0.ph2155 to i128
  %i.bmw = add i128 %i.bmu, %i.bmv                ; 2 uses
  %i.bmx = add i32 %.sroa.017.0.i.i, 32, !dbg !30516
  %.sroa.18.sroa.0.0.extract.trunc1319 = trunc i128 %i.bmw to i64, !dbg !30517
  %.sroa.18.sroa.16.0.extract.shift1323 = lshr i128 %i.bmw, 64, !dbg !30517
  %.sroa.18.sroa.16.0.extract.trunc1324 = trunc nuw i128 %.sroa.18.sroa.16.0.extract.shift1323 to i64, !dbg !30517
  br label %bb.hn, !dbg !30489

bb.hi:                                            ; preds = %bb.fx
  %i.bmy = load i8, ptr %.sroa.072.1, align 1, !dbg !30518, !alias.scope !28986, !noalias !28987, !noundef !1573 ; 2 uses
  %i.bmz = add i8 %i.bmy, -48, !dbg !30518
  %or.cond.i1241 = icmp ult i8 %i.bmz, 10, !dbg !30518
  br i1 %or.cond.i1241, label %bb.hj, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd5short15parse_short_posKyffffffffffffffff_ECslFlrwjHoTci_14polars_compute.exit1252, !dbg !30518

bb.hj:                                            ; preds = %bb.hi
  %i.bna = and i8 %i.bmy, 15, !dbg !30519
  %i.bnb = zext nneg i8 %i.bna to i64, !dbg !30520 ; 3 uses
  %.not.i1243 = icmp eq i64 %.sroa.22.1, 1, !dbg !30521
  br i1 %.not.i1243, label %.loopexit2248, label %.lr.ph.i1244, !dbg !30521

.lr.ph.i1244:                                     ; preds = %bb.hj
  %i.bnc = getelementptr inbounds nuw i8, ptr %.sroa.072.1, i64 1, !dbg !30522
  %i.bnd = load i8, ptr %i.bnc, align 1, !dbg !30523, !alias.scope !28986, !noalias !28987, !noundef !1573 ; 2 uses
  %i.bne = add i8 %i.bnd, -48, !dbg !30523
  %or.cond16.i1247 = icmp ult i8 %i.bne, 10, !dbg !30523
  br i1 %or.cond16.i1247, label %bb.hk, label %.loopexit2248, !dbg !30523

bb.hk:                                            ; preds = %.lr.ph.i1244
  %i.bnf = and i8 %i.bnd, 15, !dbg !30524
  %i.bng = zext nneg i8 %i.bnf to i64, !dbg !30525
  %i.bnh = mul nuw nsw i64 %i.bnb, 10, !dbg !30526
  %i.bni = add nuw nsw i64 %i.bnh, %i.bng, !dbg !30527 ; 3 uses
  %exitcond.not.i1251 = icmp eq i64 %.sroa.22.1, 2, !dbg !30521
  br i1 %exitcond.not.i1251, label %.loopexit2248.thread, label %.lr.ph.i1244.1, !dbg !30521

.lr.ph.i1244.1:                                   ; preds = %bb.hk
  %i.bnj = getelementptr inbounds nuw i8, ptr %.sroa.072.1, i64 2, !dbg !30522
  %i.bnk = load i8, ptr %i.bnj, align 1, !dbg !30523, !alias.scope !28986, !noalias !28987, !noundef !1573 ; 2 uses
  %i.bnl = add i8 %i.bnk, -48, !dbg !30523
  %or.cond16.i1247.1 = icmp ult i8 %i.bnl, 10, !dbg !30523
  br i1 %or.cond16.i1247.1, label %bb.hl, label %.loopexit2248, !dbg !30523

bb.hl:                                            ; preds = %.lr.ph.i1244.1
  %i.bnm = and i8 %i.bnk, 15, !dbg !30524
  %i.bnn = zext nneg i8 %i.bnm to i64, !dbg !30525
  %i.bno = mul nuw nsw i64 %i.bni, 10, !dbg !30526
  %i.bnp = add nuw nsw i64 %i.bno, %i.bnn, !dbg !30527 ; 3 uses
  %exitcond.not.i1251.1 = icmp eq i64 %.sroa.22.1, 3, !dbg !30521
  br i1 %exitcond.not.i1251.1, label %.loopexit2248.thread, label %.lr.ph.i1244.2, !dbg !30521

.lr.ph.i1244.2:                                   ; preds = %bb.hl
  %i.bnq = getelementptr inbounds nuw i8, ptr %.sroa.072.1, i64 3, !dbg !30522
  %i.bnr = load i8, ptr %i.bnq, align 1, !dbg !30523, !alias.scope !28986, !noalias !28987, !noundef !1573 ; 2 uses
  %i.bns = add i8 %i.bnr, -48, !dbg !30523
  %or.cond16.i1247.2 = icmp ult i8 %i.bns, 10, !dbg !30523
  br i1 %or.cond16.i1247.2, label %bb.hm, label %.loopexit2248, !dbg !30523

bb.hm:                                            ; preds = %.lr.ph.i1244.2
  %i.bnt = and i8 %i.bnr, 15, !dbg !30524
  %i.bnu = zext nneg i8 %i.bnt to i64, !dbg !30525
  %i.bnv = mul nuw nsw i64 %i.bnp, 10, !dbg !30526
  %i.bnw = add nuw nsw i64 %i.bnv, %i.bnu, !dbg !30527
  br label %.loopexit2248.thread, !dbg !30521

bb.hn:                                            ; preds = %bb.gn, %.loopexit2251, %bb.hh, %_RNvMs8_NtCscgRAwXFJnXP_4core3numo3pow.exit1240, %bb.gt, %bb.go
  %.sroa.18.sroa.16.1.ph = phi i64 [ 0, %bb.go ], [ %extract.t2203.le, %.loopexit2251 ], [ 0, %bb.gt ], [ %.sroa.18.sroa.16.0.extract.trunc1326, %_RNvMs8_NtCscgRAwXFJnXP_4core3numo3pow.exit1240 ], [ %.sroa.18.sroa.16.0.extract.trunc1324, %bb.hh ], [ 0, %bb.gn ]
  %.sroa.18.sroa.0.1.ph = phi i64 [ %.sroa.10.0.ph.ph, %bb.go ], [ %extract.t2198.le, %.loopexit2251 ], [ %i.bib, %bb.gt ], [ %.sroa.18.sroa.0.0.extract.trunc1320, %_RNvMs8_NtCscgRAwXFJnXP_4core3numo3pow.exit1240 ], [ %.sroa.18.sroa.0.0.extract.trunc1319, %bb.hh ], [ 0, %bb.gn ]
  %.sroa.30.1.ph.in = phi i32 [ %i.bhe, %bb.go ], [ %i.bki, %.loopexit2251 ], [ %i.bic, %bb.gt ], [ %i.bly, %_RNvMs8_NtCscgRAwXFJnXP_4core3numo3pow.exit1240 ], [ %i.bmx, %bb.hh ], [ %.sroa.017.0.i.i, %bb.gn ]
  %.sroa.30.1.ph = zext i32 %.sroa.30.1.ph.in to i64, !dbg !30511
  %i.bnx = icmp eq i64 %.sroa.22.1, %.sroa.30.1.ph, !dbg !30528
  br label %.loopexit2248, !dbg !30529

.loopexit2248:                                    ; preds = %.lr.ph.i1244, %.lr.ph.i1244.1, %.lr.ph.i1244.2, %bb.hj, %bb.hn
  %.sroa.083.0.i.off0 = phi i64 [ %.sroa.18.sroa.0.1.ph, %bb.hn ], [ %i.bnb, %bb.hj ], [ %i.bnb, %.lr.ph.i1244 ], [ %i.bni, %.lr.ph.i1244.1 ], [ %i.bnp, %.lr.ph.i1244.2 ]
  %.sroa.083.0.i.off64 = phi i64 [ %.sroa.18.sroa.16.1.ph, %bb.hn ], [ 0, %bb.hj ], [ 0, %.lr.ph.i1244.2 ], [ 0, %.lr.ph.i1244.1 ], [ 0, %.lr.ph.i1244 ]
  %.sroa.085.0.i = phi i1 [ %i.bnx, %bb.hn ], [ true, %bb.hj ], [ false, %.lr.ph.i1244.2 ], [ false, %.lr.ph.i1244.1 ], [ false, %.lr.ph.i1244 ], !dbg !30530
  br i1 %.sroa.085.0.i, label %.loopexit2248.thread, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd5short15parse_short_posKyffffffffffffffff_ECslFlrwjHoTci_14polars_compute.exit1252, !dbg !30528

bb.ho:                                            ; preds = %bb.fw, %.loopexit2248.thread
  %.sroa.0139.0 = phi i128 [ %.sroa.111279.sroa.0.0.insert.insert, %.loopexit2248.thread ], [ 0, %bb.fw ], !dbg !30531 ; 5 uses
  %i.bny = icmp ult i8 %.sroa.069.0, 54, !dbg !30532
  %i.bnz = icmp ne i8 %.sroa.069.0, 53            ; 2 uses
  %or.cond2 = or i1 %i.bnz, %.sroa.019.0.shrunk
  %or.cond171 = and i1 %i.bny, %or.cond2, !dbg !30532
  br i1 %or.cond171, label %bb.hq, label %bb.hp, !dbg !30532

_RINvNtCs7TFy6xBzIN2_9atoi_simd5short15parse_short_posKyffffffffffffffff_ECslFlrwjHoTci_14polars_compute.exit1252: ; preds = %bb.he, %bb.hd, %.loopexit2248, %bb.hi, %bb.gn
  store i128 0, ptr %0, align 16, !dbg !30533
  br label %bb.il, !dbg !30534

.loopexit2248.thread:                             ; preds = %bb.hk, %bb.hl, %bb.hm, %.loopexit2248
  %.sroa.083.0.i.off643798 = phi i64 [ %.sroa.083.0.i.off64, %.loopexit2248 ], [ 0, %bb.hm ], [ 0, %bb.hl ], [ 0, %bb.hk ]
  %.sroa.083.0.i.off03797 = phi i64 [ %.sroa.083.0.i.off0, %.loopexit2248 ], [ %i.bni, %bb.hk ], [ %i.bnp, %bb.hl ], [ %i.bnw, %bb.hm ]
  %.sroa.111279.sroa.8.0.insert.ext = zext i64 %.sroa.083.0.i.off643798 to i128, !dbg !30535
  %.sroa.111279.sroa.8.0.insert.shift = shl nuw i128 %.sroa.111279.sroa.8.0.insert.ext, 64, !dbg !30535
  %.sroa.111279.sroa.0.0.insert.ext = zext i64 %.sroa.083.0.i.off03797 to i128, !dbg !30535
  %.sroa.111279.sroa.0.0.insert.insert = or disjoint i128 %.sroa.111279.sroa.8.0.insert.shift, %.sroa.111279.sroa.0.0.insert.ext, !dbg !30535
  br label %bb.ho, !dbg !30536

bb.hp:                                            ; preds = %bb.ho
  %i.boa = add i128 %.sroa.0139.0, 1, !dbg !30537
  br label %bb.hu, !dbg !30538

bb.hq:                                            ; preds = %bb.ho
  br i1 %i.bnz, label %bb.hu, label %bb.hr, !dbg !30539

bb.hr:                                            ; preds = %bb.hq
  %i.bob = icmp slt i32 %i.ahl, 1, !dbg !30540
  br i1 %i.bob, label %bb.ht, label %bb.hs, !dbg !30540

bb.hs:                                            ; preds = %bb.hr
  %i.boc = srem i128 %.sroa.0139.0, 2, !dbg !30541
  %i.bod = add i128 %i.boc, %.sroa.0139.0, !dbg !30542
  br label %bb.hu, !dbg !30543

bb.ht:                                            ; preds = %bb.hr
  %i.boe = srem i128 %.sroa.0130.0, 2, !dbg !30544
  %i.bof = add i128 %i.boe, %.sroa.0130.0, !dbg !30545
  br label %bb.hu, !dbg !30543

bb.hu:                                            ; preds = %bb.hq, %bb.ht, %bb.hs, %bb.hp
  %.sroa.0130.1 = phi i128 [ %.sroa.0130.0, %bb.hp ], [ %i.bof, %bb.ht ], [ %.sroa.0130.0, %bb.hs ], [ %.sroa.0130.0, %bb.hq ], !dbg !30188 ; 3 uses
  %.sroa.0139.1 = phi i128 [ %i.boa, %bb.hp ], [ %.sroa.0139.0, %bb.ht ], [ %i.bod, %bb.hs ], [ %.sroa.0139.0, %bb.hq ], !dbg !30531 ; 3 uses
  %i.bog = icmp sgt i128 %.sroa.0130.1, 0, !dbg !30546
  br i1 %i.bog, label %bb.hv, label %bb.hw, !dbg !30546

bb.hv:                                            ; preds = %bb.hu
  %i.boh = icmp samesign ugt i64 %.sroa.051.0, 38, !dbg !30547
  br i1 %i.boh, label %bb.hx, label %bb.hy, !dbg !30547

bb.hw:                                            ; preds = %bb.hu, %bb.hz
  %.sroa.0130.2 = phi i128 [ %i.bon, %bb.hz ], [ %.sroa.0130.1, %bb.hu ], !dbg !30188
  %i.boi = icmp sgt i128 %.sroa.0139.1, 0, !dbg !30548
  br i1 %i.boi, label %bb.ib, label %bb.ic, !dbg !30548

bb.hx:                                            ; preds = %bb.hv
  store i128 0, ptr %0, align 16, !dbg !30549
  br label %bb.il, !dbg !30550

bb.hy:                                            ; preds = %bb.hv
  %i.boj = getelementptr inbounds nuw [16 x i8], ptr @121, i64 %.sroa.051.0, !dbg !30551
  %i.bok = load i128, ptr %i.boj, align 16, !dbg !30551, !noundef !1573
  %i.bol = call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.sroa.0130.1, i128 %i.bok), !dbg !30552 ; 2 uses
  %i.bom = extractvalue { i128, i1 } %i.bol, 1, !dbg !30552
  br i1 %i.bom, label %bb.ia, label %bb.hz, !dbg !30553, !prof !1652

bb.hz:                                            ; preds = %bb.hy
  %i.bon = extractvalue { i128, i1 } %i.bol, 0, !dbg !30552
  br label %bb.hw, !dbg !30554

bb.ia:                                            ; preds = %bb.hy
  store i128 0, ptr %0, align 16, !dbg !30555
  br label %bb.il, !dbg !30550

bb.ib:                                            ; preds = %bb.hw
  %i.boo = icmp ugt i64 %.sroa.0107.0, 38, !dbg !30556
  br i1 %i.boo, label %bb.id, label %bb.ie, !dbg !30556

bb.ic:                                            ; preds = %bb.hw, %bb.if
  %.sroa.0139.2 = phi i128 [ %i.bov, %bb.if ], [ %.sroa.0139.1, %bb.hw ], !dbg !30557
  %i.bop = add i128 %.sroa.0139.2, %.sroa.0130.2, !dbg !30558 ; 4 uses
  %i.boq = icmp ult i64 %3, 39, !dbg !30559
  br i1 %i.boq, label %bb.ih, label %bb.ii, !dbg !30559

bb.id:                                            ; preds = %bb.ib
  store i128 0, ptr %0, align 16, !dbg !30560
  br label %bb.il, !dbg !30550

bb.ie:                                            ; preds = %bb.ib
  %i.bor = getelementptr inbounds nuw [16 x i8], ptr @121, i64 %.sroa.0107.0, !dbg !30561
  %i.bos = load i128, ptr %i.bor, align 16, !dbg !30561, !noundef !1573
  %i.bot = call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.sroa.0139.1, i128 %i.bos), !dbg !30562 ; 2 uses
  %i.bou = extractvalue { i128, i1 } %i.bot, 1, !dbg !30562
  br i1 %i.bou, label %bb.ig, label %bb.if, !dbg !30563, !prof !1652

bb.if:                                            ; preds = %bb.ie
  %i.bov = extractvalue { i128, i1 } %i.bot, 0, !dbg !30562
  br label %bb.ic, !dbg !30564

bb.ig:                                            ; preds = %bb.ie
  store i128 0, ptr %0, align 16, !dbg !30565
  br label %bb.il, !dbg !30550

bb.ih:                                            ; preds = %bb.ic
  %i.bow = getelementptr inbounds nuw [16 x i8], ptr @121, i64 %3, !dbg !30559
  %i.box = load i128, ptr %i.bow, align 16, !dbg !30559, !noundef !1573 ; 2 uses
  %i.boy = sub i128 0, %i.box, !dbg !30566
  %i.boz = icmp sgt i128 %i.bop, %i.boy, !dbg !30567
  %i.bpa = icmp slt i128 %i.bop, %i.box, !dbg !30568
  %i.bpb = and i1 %i.boz, %i.bpa, !dbg !30567
  br i1 %i.bpb, label %bb.ik, label %bb.ij, !dbg !28998

bb.ii:                                            ; preds = %bb.ic
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #43, !dbg !30559
  unreachable, !dbg !30559

bb.ij:                                            ; preds = %bb.ih
  store i128 0, ptr %0, align 16, !dbg !30569
  br label %bb.il, !dbg !30550

bb.ik:                                            ; preds = %bb.ih
  %i.bpc = sub nsw i128 0, %i.bop
  %spec.select = select i1 %.sroa.011.01962, i128 %i.bpc, i128 %i.bop, !dbg !30570
  %i.bpd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30571
  store i128 %spec.select, ptr %i.bpd, align 16, !dbg !30571
  store i128 1, ptr %0, align 16, !dbg !30571
  br label %bb.il, !dbg !30572

bb.il:                                            ; preds = %_RNvNtCslFlrwjHoTci_14polars_compute7decimal14i128_to_dec128.exit, %.loopexit2242, %bb.dd, %bb.ec, %bb.dz, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCslFlrwjHoTci_14polars_compute7decimal13str_to_dec128s2_0EB1H_.exit, %bb.hx, %bb.ia, %bb.id, %bb.ig, %_RINvNtCs7TFy6xBzIN2_9atoi_simd5short15parse_short_posKyffffffffffffffff_ECslFlrwjHoTci_14polars_compute.exit1252, %bb.ij, %_RINvNtCs7TFy6xBzIN2_9atoi_simd5short15parse_short_posKyffffffffffffffff_ECslFlrwjHoTci_14polars_compute.exit1206, %_RINvNtCs7TFy6xBzIN2_9atoi_simd5short15parse_short_posKy7fffffff_ECslFlrwjHoTci_14polars_compute.exit, %bb.ik
  ret void, !dbg !30572
}

; Function Attrs: mustprogress nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCslFlrwjHoTci_14polars_compute7decimal14divrem_256_128(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 16)) %0, i128 noundef %1, i128 noundef %2, i128 noundef %3) unnamed_addr #8 !dbg !30573 !guid !30617 {
bb.a:
  %.not = icmp ult i128 %2, %3
  br i1 %.not, label %bb.b, label %bb.e, !dbg !30648

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i128 %2, 0, !dbg !30649
  br i1 %i.a, label %bb.c, label %bb.d, !dbg !30649

bb.c:                                             ; preds = %bb.b
  %i.b = udiv i128 %1, %3, !dbg !30650            ; 2 uses
  %i.c = mul i128 %i.b, %3, !dbg !30651
  %.decomposed = sub i128 %1, %i.c, !dbg !30651
  br label %.sink.split, !dbg !30652

bb.d:                                             ; preds = %bb.b
  %i.d = icmp ult i128 %3, 18446744073709551616, !dbg !30653
  br i1 %i.d, label %bb.g, label %bb.f, !dbg !30653

.sink.split:                                      ; preds = %bb.c, %bb.g, %bb.s
  %.sink119 = phi i128 [ %i.cy, %bb.s ], [ %i.ar, %bb.g ], [ %i.b, %bb.c ]
  %.sink117 = phi i128 [ %i.dc, %bb.s ], [ %i.as, %bb.g ], [ %.decomposed, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30654
  store i128 %.sink119, ptr %i.e, align 16, !dbg !30654
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30654
  store i128 %.sink117, ptr %i.f, align 16, !dbg !30654
  br label %bb.e, !dbg !30654

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i128 [ 0, %bb.a ], [ 1, %.sink.split ]
  store i128 %.sink, ptr %0, align 16, !dbg !30654
  ret void, !dbg !30655

bb.f:                                             ; preds = %bb.d
  %i.g = lshr i128 %3, 64, !dbg !30656
  %i.h = trunc nuw i128 %i.g to i64, !dbg !30657
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 false), !dbg !30658 ; 4 uses
  %i.j = zext nneg i64 %i.i to i128, !dbg !30659  ; 5 uses
  %i.k = shl i128 %3, %i.j, !dbg !30659
  %i.l = lshr i128 %i.k, 64, !dbg !30660
  %i.m = trunc nuw i128 %i.l to i64, !dbg !30660  ; 8 uses
  %i.n = trunc i128 %3 to i64, !dbg !30661
  %i.o = shl i64 %i.n, %i.i, !dbg !30661          ; 12 uses
  %i.p = trunc i128 %1 to i64, !dbg !30662
  %i.q = shl i128 %2, %i.j, !dbg !30663
  %i.r = lshr i128 %i.q, 64, !dbg !30664
  %i.s = trunc nuw i128 %i.r to i64, !dbg !30665  ; 2 uses
  %i.t = tail call i128 @llvm.fshl.i128(i128 %2, i128 %1, i128 64), !dbg !30666
  %i.u = shl i128 %i.t, %i.j, !dbg !30667
  %i.v = lshr i128 %i.u, 64, !dbg !30668
  %i.w = trunc nuw i128 %i.v to i64, !dbg !30669  ; 3 uses
  %i.x = shl i128 %1, %i.j, !dbg !30670
  %i.y = lshr i128 %i.x, 64, !dbg !30671
  %i.z = trunc nuw i128 %i.y to i64, !dbg !30672  ; 4 uses
  %i.aa = shl i64 %i.p, %i.i, !dbg !30673         ; 4 uses
  %i.ab = icmp ult i64 %i.s, %i.m, !dbg !30674
  br i1 %i.ab, label %bb.h, label %bb.i, !dbg !30674

bb.g:                                             ; preds = %bb.d
  %i.ac = trunc nuw i128 %3 to i64, !dbg !30675   ; 2 uses
  %i.ad = tail call i128 @llvm.fshl.i128(i128 %2, i128 %1, i128 64), !dbg !30676 ; 2 uses
  %i.ae = trunc i128 %i.ad to i64, !dbg !30677
  %i.af = lshr i128 %i.ad, 64, !dbg !30678
  %i.ag = trunc nuw i128 %i.af to i64, !dbg !30678
  %i.ah = tail call { i64, i64 } asm inteldialect "div ${2:q}", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %i.ac, i64 %i.ae, i64 %i.ag) #45, !dbg !30679, !srcloc !30623 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0, !dbg !30679
  %i.aj = extractvalue { i64, i64 } %i.ah, 1, !dbg !30679
  %i.ak = trunc i128 %1 to i64, !dbg !30680
  %i.al = tail call { i64, i64 } asm inteldialect "div ${2:q}", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %i.ac, i64 %i.ak, i64 %i.aj) #45, !dbg !30681, !srcloc !30623 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !30681
  %i.an = extractvalue { i64, i64 } %i.al, 1, !dbg !30681
  %i.ao = zext i64 %i.am to i128, !dbg !30682
  %i.ap = zext i64 %i.ai to i128, !dbg !30683
  %i.aq = shl nuw i128 %i.ap, 64, !dbg !30684
  %i.ar = or disjoint i128 %i.aq, %i.ao, !dbg !30682
  %i.as = zext i64 %i.an to i128, !dbg !30685
  br label %.sink.split, !dbg !30652

bb.h:                                             ; preds = %bb.f
  %i.at = tail call { i64, i64 } asm inteldialect "div ${2:q}", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %i.m, i64 %i.w, i64 %i.s) #45, !dbg !30686, !srcloc !30623 ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0, !dbg !30686 ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.at, 1, !dbg !30686
  %i.aw = zext i64 %i.au to i128, !dbg !30687
  %i.ax = zext i64 %i.o to i128, !dbg !30688
  %i.ay = mul nuw i128 %i.aw, %i.ax, !dbg !30687  ; 2 uses
  %i.az = trunc i128 %i.ay to i64, !dbg !30689
  %i.ba = lshr i128 %i.ay, 64, !dbg !30690
  %i.bb = trunc nuw i128 %i.ba to i64, !dbg !30690
  br label %bb.i, !dbg !30691

bb.i:                                             ; preds = %bb.f, %bb.h
  %.sroa.038.0 = phi i64 [ %i.au, %bb.h ], [ 0, %bb.f ], !dbg !30692 ; 3 uses
  %.sroa.048.0 = phi i64 [ %i.av, %bb.h ], [ %i.w, %bb.f ], !dbg !30692 ; 4 uses
  %.sroa.058.0 = phi i64 [ %i.az, %bb.h ], [ 0, %bb.f ], !dbg !30692 ; 4 uses
  %.sroa.068.0 = phi i64 [ %i.bb, %bb.h ], [ %i.o, %bb.f ], !dbg !30692 ; 4 uses
  %i.bc = icmp ugt i64 %.sroa.068.0, %.sroa.048.0, !dbg !30693
  br i1 %i.bc, label %bb.l, label %bb.j, !dbg !30693

bb.j:                                             ; preds = %bb.i
  %i.bd = icmp eq i64 %.sroa.068.0, %.sroa.048.0, !dbg !30694
  %i.be = icmp ugt i64 %.sroa.058.0, %i.z
  %or.cond = select i1 %i.bd, i1 %i.be, i1 false, !dbg !30694
  br i1 %or.cond, label %bb.l, label %bb.k, !dbg !30694

bb.k:                                             ; preds = %bb.n, %bb.l, %bb.o, %bb.j
  %.sroa.038.1 = phi i64 [ %i.bl, %bb.l ], [ %i.bu, %bb.o ], [ %.sroa.038.0, %bb.j ], [ %i.bl, %bb.n ], !dbg !30692 ; 2 uses
  %.sroa.058.1 = phi i64 [ %i.bo, %bb.l ], [ %i.bv, %bb.o ], [ %.sroa.058.0, %bb.j ], [ %i.bo, %bb.n ], !dbg !30692 ; 2 uses
  %.sroa.068.1 = phi i64 [ %i.bq, %bb.l ], [ %i.bx, %bb.o ], [ %.sroa.068.0, %bb.j ], [ %i.bq, %bb.n ], !dbg !30692
  %i.bf = mul i64 %.sroa.038.1, %i.m, !dbg !30695
  %i.bg = sub i64 %i.z, %.sroa.058.1, !dbg !30696 ; 3 uses
  %i.bh = icmp ugt i64 %.sroa.058.1, %i.z, !dbg !30696
  %.neg107 = sext i1 %i.bh to i64, !dbg !30697
  %i.bi = add i64 %i.bf, %.sroa.068.1, !dbg !30698
  %.neg102 = sub i64 %i.w, %i.bi, !dbg !30698
  %i.bj = add i64 %.neg102, %.neg107, !dbg !30698 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.m, !dbg !30699
  br i1 %i.bk, label %bb.p, label %bb.q, !dbg !30699

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bl = add i64 %.sroa.038.0, -1, !dbg !30700   ; 2 uses
  %i.bm = add i64 %.sroa.048.0, %i.m, !dbg !30701 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %.sroa.048.0, !dbg !30701
  %i.bo = sub i64 %.sroa.058.0, %i.o, !dbg !30702 ; 5 uses
  %i.bp = icmp ult i64 %.sroa.058.0, %i.o, !dbg !30702
  %.neg = sext i1 %i.bp to i64, !dbg !30703
  %i.bq = add i64 %.sroa.068.0, %.neg, !dbg !30704 ; 5 uses
  br i1 %i.bn, label %bb.k, label %bb.m, !dbg !30705

bb.m:                                             ; preds = %bb.l
  %i.br = icmp ugt i64 %i.bq, %i.bm, !dbg !30706
  br i1 %i.br, label %bb.o, label %bb.n, !dbg !30706

bb.n:                                             ; preds = %bb.m
  %i.bs = icmp eq i64 %i.bq, %i.bm, !dbg !30707
  %i.bt = icmp ugt i64 %i.bo, %i.z
  %or.cond96 = select i1 %i.bs, i1 %i.bt, i1 false, !dbg !30707
  br i1 %or.cond96, label %bb.o, label %bb.k, !dbg !30707

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = add i64 %.sroa.038.0, -2, !dbg !30708
  %i.bv = sub i64 %i.bo, %i.o, !dbg !30709
  %i.bw = icmp ult i64 %i.bo, %i.o, !dbg !30709
  %.neg93 = sext i1 %i.bw to i64, !dbg !30710
end_hunk_0
