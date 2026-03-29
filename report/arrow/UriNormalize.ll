begin_hunk_0
  store i8 %i.bw, ptr %next.gep, align 1, !tbaa !17
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bx = extractelement <16 x i1> %i.bt, i64 1
  br i1 %i.bx, label %pred.store.if430, label %pred.store.continue431

end_hunk_0
begin_hunk_1
  store i8 %i.bz, ptr %next.gep415, align 1, !tbaa !17
  br label %pred.store.continue431

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue
  %i.ca = extractelement <16 x i1> %i.bt, i64 2
  br i1 %i.ca, label %pred.store.if432, label %pred.store.continue433

end_hunk_1
begin_hunk_2
  store i8 %i.cc, ptr %next.gep416, align 1, !tbaa !17
  br label %pred.store.continue433

pred.store.continue433:                           ; preds = %pred.store.if432, %pred.store.continue431
  %i.cd = extractelement <16 x i1> %i.bt, i64 3
  br i1 %i.cd, label %pred.store.if434, label %pred.store.continue435

end_hunk_2
begin_hunk_3
  store i8 %i.cf, ptr %next.gep417, align 1, !tbaa !17
  br label %pred.store.continue435

pred.store.continue435:                           ; preds = %pred.store.if434, %pred.store.continue433
  %i.cg = extractelement <16 x i1> %i.bt, i64 4
  br i1 %i.cg, label %pred.store.if436, label %pred.store.continue437

end_hunk_3
begin_hunk_4
  store i8 %i.ci, ptr %next.gep418, align 1, !tbaa !17
  br label %pred.store.continue437

pred.store.continue437:                           ; preds = %pred.store.if436, %pred.store.continue435
  %i.cj = extractelement <16 x i1> %i.bt, i64 5
  br i1 %i.cj, label %pred.store.if438, label %pred.store.continue439

end_hunk_4
begin_hunk_5
  store i8 %i.cl, ptr %next.gep419, align 1, !tbaa !17
  br label %pred.store.continue439

pred.store.continue439:                           ; preds = %pred.store.if438, %pred.store.continue437
  %i.cm = extractelement <16 x i1> %i.bt, i64 6
  br i1 %i.cm, label %pred.store.if440, label %pred.store.continue441

end_hunk_5
begin_hunk_6
  store i8 %i.co, ptr %next.gep420, align 1, !tbaa !17
  br label %pred.store.continue441

pred.store.continue441:                           ; preds = %pred.store.if440, %pred.store.continue439
  %i.cp = extractelement <16 x i1> %i.bt, i64 7
  br i1 %i.cp, label %pred.store.if442, label %pred.store.continue443

end_hunk_6
begin_hunk_7
  store i8 %i.cr, ptr %next.gep421, align 1, !tbaa !17
  br label %pred.store.continue443

pred.store.continue443:                           ; preds = %pred.store.if442, %pred.store.continue441
  %i.cs = extractelement <16 x i1> %i.bt, i64 8
  br i1 %i.cs, label %pred.store.if444, label %pred.store.continue445

end_hunk_7
begin_hunk_8
  store i8 %i.cu, ptr %next.gep422, align 1, !tbaa !17
  br label %pred.store.continue445

pred.store.continue445:                           ; preds = %pred.store.if444, %pred.store.continue443
  %i.cv = extractelement <16 x i1> %i.bt, i64 9
  br i1 %i.cv, label %pred.store.if446, label %pred.store.continue447

end_hunk_8
begin_hunk_9
  store i8 %i.cx, ptr %next.gep423, align 1, !tbaa !17
  br label %pred.store.continue447

pred.store.continue447:                           ; preds = %pred.store.if446, %pred.store.continue445
  %i.cy = extractelement <16 x i1> %i.bt, i64 10
  br i1 %i.cy, label %pred.store.if448, label %pred.store.continue449

end_hunk_9
begin_hunk_10
  store i8 %i.da, ptr %next.gep424, align 1, !tbaa !17
  br label %pred.store.continue449

pred.store.continue449:                           ; preds = %pred.store.if448, %pred.store.continue447
  %i.db = extractelement <16 x i1> %i.bt, i64 11
  br i1 %i.db, label %pred.store.if450, label %pred.store.continue451

end_hunk_10
begin_hunk_11
  store i8 %i.dd, ptr %next.gep425, align 1, !tbaa !17
  br label %pred.store.continue451

pred.store.continue451:                           ; preds = %pred.store.if450, %pred.store.continue449
  %i.de = extractelement <16 x i1> %i.bt, i64 12
  br i1 %i.de, label %pred.store.if452, label %pred.store.continue453

end_hunk_11
begin_hunk_12
  store i8 %i.dg, ptr %next.gep426, align 1, !tbaa !17
  br label %pred.store.continue453

pred.store.continue453:                           ; preds = %pred.store.if452, %pred.store.continue451
  %i.dh = extractelement <16 x i1> %i.bt, i64 13
  br i1 %i.dh, label %pred.store.if454, label %pred.store.continue455

end_hunk_12
begin_hunk_13
  store i8 %i.dj, ptr %next.gep427, align 1, !tbaa !17
  br label %pred.store.continue455

pred.store.continue455:                           ; preds = %pred.store.if454, %pred.store.continue453
  %i.dk = extractelement <16 x i1> %i.bt, i64 14
  br i1 %i.dk, label %pred.store.if456, label %pred.store.continue457

end_hunk_13
begin_hunk_14
  store i8 %i.dm, ptr %next.gep428, align 1, !tbaa !17
  br label %pred.store.continue457

pred.store.continue457:                           ; preds = %pred.store.if456, %pred.store.continue455
  %i.dn = extractelement <16 x i1> %i.bt, i64 15
  br i1 %i.dn, label %pred.store.if458, label %pred.store.continue459

end_hunk_14
begin_hunk_15
  store i8 %i.dp, ptr %next.gep429, align 1, !tbaa !17
  br label %pred.store.continue459

pred.store.continue459:                           ; preds = %pred.store.if458, %pred.store.continue457
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !25
end_hunk_15
begin_hunk_16
  store i8 %i.dz, ptr %next.gep463, align 1, !tbaa !17
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.if468, %vec.epilog.vector.body
  %i.ea = extractelement <4 x i1> %i.dw, i64 1
  br i1 %i.ea, label %pred.store.if470, label %pred.store.continue471

end_hunk_16
begin_hunk_17
  store i8 %i.ec, ptr %next.gep464, align 1, !tbaa !17
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.if470, %pred.store.continue469
  %i.ed = extractelement <4 x i1> %i.dw, i64 2
  br i1 %i.ed, label %pred.store.if472, label %pred.store.continue473

end_hunk_17
begin_hunk_18
  store i8 %i.ef, ptr %next.gep465, align 1, !tbaa !17
  br label %pred.store.continue473

pred.store.continue473:                           ; preds = %pred.store.if472, %pred.store.continue471
  %i.eg = extractelement <4 x i1> %i.dw, i64 3
  br i1 %i.eg, label %pred.store.if474, label %pred.store.continue475

end_hunk_18
begin_hunk_19
  store i8 %i.ei, ptr %next.gep466, align 1, !tbaa !17
  br label %pred.store.continue475

pred.store.continue475:                           ; preds = %pred.store.if474, %pred.store.continue473
  %index.next476 = add nuw i64 %index462, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next476, %n.vec461
  br i1 %i.ej, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29
end_hunk_19
begin_hunk_20
  store i8 %i.ha, ptr %next.gep489, align 1, !tbaa !17
  br label %pred.store.continue507

pred.store.continue507:                           ; preds = %pred.store.if506, %vector.body487
  %i.hb = extractelement <16 x i1> %i.gx, i64 1
  br i1 %i.hb, label %pred.store.if508, label %pred.store.continue509

end_hunk_20
begin_hunk_21
  store i8 %i.hd, ptr %next.gep490, align 1, !tbaa !17
  br label %pred.store.continue509

pred.store.continue509:                           ; preds = %pred.store.if508, %pred.store.continue507
  %i.he = extractelement <16 x i1> %i.gx, i64 2
  br i1 %i.he, label %pred.store.if510, label %pred.store.continue511

end_hunk_21
begin_hunk_22
  store i8 %i.hg, ptr %next.gep491, align 1, !tbaa !17
  br label %pred.store.continue511

pred.store.continue511:                           ; preds = %pred.store.if510, %pred.store.continue509
  %i.hh = extractelement <16 x i1> %i.gx, i64 3
  br i1 %i.hh, label %pred.store.if512, label %pred.store.continue513

end_hunk_22
begin_hunk_23
  store i8 %i.hj, ptr %next.gep492, align 1, !tbaa !17
  br label %pred.store.continue513

pred.store.continue513:                           ; preds = %pred.store.if512, %pred.store.continue511
  %i.hk = extractelement <16 x i1> %i.gx, i64 4
  br i1 %i.hk, label %pred.store.if514, label %pred.store.continue515

end_hunk_23
begin_hunk_24
  store i8 %i.hm, ptr %next.gep493, align 1, !tbaa !17
  br label %pred.store.continue515

pred.store.continue515:                           ; preds = %pred.store.if514, %pred.store.continue513
  %i.hn = extractelement <16 x i1> %i.gx, i64 5
  br i1 %i.hn, label %pred.store.if516, label %pred.store.continue517

end_hunk_24
begin_hunk_25
  store i8 %i.hp, ptr %next.gep494, align 1, !tbaa !17
  br label %pred.store.continue517

pred.store.continue517:                           ; preds = %pred.store.if516, %pred.store.continue515
  %i.hq = extractelement <16 x i1> %i.gx, i64 6
  br i1 %i.hq, label %pred.store.if518, label %pred.store.continue519

end_hunk_25
begin_hunk_26
  store i8 %i.hs, ptr %next.gep495, align 1, !tbaa !17
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.if518, %pred.store.continue517
  %i.ht = extractelement <16 x i1> %i.gx, i64 7
  br i1 %i.ht, label %pred.store.if520, label %pred.store.continue521

end_hunk_26
begin_hunk_27
  store i8 %i.hv, ptr %next.gep496, align 1, !tbaa !17
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.if520, %pred.store.continue519
  %i.hw = extractelement <16 x i1> %i.gx, i64 8
  br i1 %i.hw, label %pred.store.if522, label %pred.store.continue523

end_hunk_27
begin_hunk_28
  store i8 %i.hy, ptr %next.gep497, align 1, !tbaa !17
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue521
  %i.hz = extractelement <16 x i1> %i.gx, i64 9
  br i1 %i.hz, label %pred.store.if524, label %pred.store.continue525

end_hunk_28
begin_hunk_29
  store i8 %i.ib, ptr %next.gep498, align 1, !tbaa !17
  br label %pred.store.continue525

pred.store.continue525:                           ; preds = %pred.store.if524, %pred.store.continue523
  %i.ic = extractelement <16 x i1> %i.gx, i64 10
  br i1 %i.ic, label %pred.store.if526, label %pred.store.continue527

end_hunk_29
begin_hunk_30
  store i8 %i.ie, ptr %next.gep499, align 1, !tbaa !17
  br label %pred.store.continue527

pred.store.continue527:                           ; preds = %pred.store.if526, %pred.store.continue525
  %i.if = extractelement <16 x i1> %i.gx, i64 11
  br i1 %i.if, label %pred.store.if528, label %pred.store.continue529

end_hunk_30
begin_hunk_31
  store i8 %i.ih, ptr %next.gep500, align 1, !tbaa !17
  br label %pred.store.continue529

pred.store.continue529:                           ; preds = %pred.store.if528, %pred.store.continue527
  %i.ii = extractelement <16 x i1> %i.gx, i64 12
  br i1 %i.ii, label %pred.store.if530, label %pred.store.continue531

end_hunk_31
begin_hunk_32
  store i8 %i.ik, ptr %next.gep501, align 1, !tbaa !17
  br label %pred.store.continue531

pred.store.continue531:                           ; preds = %pred.store.if530, %pred.store.continue529
  %i.il = extractelement <16 x i1> %i.gx, i64 13
  br i1 %i.il, label %pred.store.if532, label %pred.store.continue533

end_hunk_32
begin_hunk_33
  store i8 %i.in, ptr %next.gep502, align 1, !tbaa !17
  br label %pred.store.continue533

pred.store.continue533:                           ; preds = %pred.store.if532, %pred.store.continue531
  %i.io = extractelement <16 x i1> %i.gx, i64 14
  br i1 %i.io, label %pred.store.if534, label %pred.store.continue535

end_hunk_33
begin_hunk_34
  store i8 %i.iq, ptr %next.gep503, align 1, !tbaa !17
  br label %pred.store.continue535

pred.store.continue535:                           ; preds = %pred.store.if534, %pred.store.continue533
  %i.ir = extractelement <16 x i1> %i.gx, i64 15
  br i1 %i.ir, label %pred.store.if536, label %pred.store.continue537

end_hunk_34
begin_hunk_35
  store i8 %i.it, ptr %next.gep504, align 1, !tbaa !17
  br label %pred.store.continue537

pred.store.continue537:                           ; preds = %pred.store.if536, %pred.store.continue535
  %index.next538 = add nuw i64 %index488, 16      ; 2 uses
  %i.iu = icmp eq i64 %index.next538, %n.vec486
  br i1 %i.iu, label %middle.block539, label %vector.body487, !llvm.loop !35
end_hunk_35
begin_hunk_36
  store i8 %i.jd, ptr %next.gep550, align 1, !tbaa !17
  br label %pred.store.continue556

pred.store.continue556:                           ; preds = %pred.store.if555, %vec.epilog.vector.body548
  %i.je = extractelement <4 x i1> %i.ja, i64 1
  br i1 %i.je, label %pred.store.if557, label %pred.store.continue558

end_hunk_36
begin_hunk_37
  store i8 %i.jg, ptr %next.gep551, align 1, !tbaa !17
  br label %pred.store.continue558

pred.store.continue558:                           ; preds = %pred.store.if557, %pred.store.continue556
  %i.jh = extractelement <4 x i1> %i.ja, i64 2
  br i1 %i.jh, label %pred.store.if559, label %pred.store.continue560

end_hunk_37
begin_hunk_38
  store i8 %i.jj, ptr %next.gep552, align 1, !tbaa !17
  br label %pred.store.continue560

pred.store.continue560:                           ; preds = %pred.store.if559, %pred.store.continue558
  %i.jk = extractelement <4 x i1> %i.ja, i64 3
  br i1 %i.jk, label %pred.store.if561, label %pred.store.continue562

end_hunk_38
begin_hunk_39
  store i8 %i.jm, ptr %next.gep553, align 1, !tbaa !17
  br label %pred.store.continue562

pred.store.continue562:                           ; preds = %pred.store.if561, %pred.store.continue560
  %index.next563 = add nuw i64 %index549, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next563, %n.vec547
  br i1 %i.jn, label %vec.epilog.middle.block564, label %vec.epilog.vector.body548, !llvm.loop !36
end_hunk_39
begin_hunk_40
  store i8 %i.mu, ptr %next.gep577, align 1, !tbaa !17
  br label %pred.store.continue595

pred.store.continue595:                           ; preds = %pred.store.if594, %vector.body575
  %i.mv = extractelement <16 x i1> %i.mr, i64 1
  br i1 %i.mv, label %pred.store.if596, label %pred.store.continue597

end_hunk_40
begin_hunk_41
  store i8 %i.mx, ptr %next.gep578, align 1, !tbaa !17
  br label %pred.store.continue597

pred.store.continue597:                           ; preds = %pred.store.if596, %pred.store.continue595
  %i.my = extractelement <16 x i1> %i.mr, i64 2
  br i1 %i.my, label %pred.store.if598, label %pred.store.continue599

end_hunk_41
begin_hunk_42
  store i8 %i.na, ptr %next.gep579, align 1, !tbaa !17
  br label %pred.store.continue599

pred.store.continue599:                           ; preds = %pred.store.if598, %pred.store.continue597
  %i.nb = extractelement <16 x i1> %i.mr, i64 3
  br i1 %i.nb, label %pred.store.if600, label %pred.store.continue601

end_hunk_42
begin_hunk_43
  store i8 %i.nd, ptr %next.gep580, align 1, !tbaa !17
  br label %pred.store.continue601

pred.store.continue601:                           ; preds = %pred.store.if600, %pred.store.continue599
  %i.ne = extractelement <16 x i1> %i.mr, i64 4
  br i1 %i.ne, label %pred.store.if602, label %pred.store.continue603

end_hunk_43
begin_hunk_44
  store i8 %i.ng, ptr %next.gep581, align 1, !tbaa !17
  br label %pred.store.continue603

pred.store.continue603:                           ; preds = %pred.store.if602, %pred.store.continue601
  %i.nh = extractelement <16 x i1> %i.mr, i64 5
  br i1 %i.nh, label %pred.store.if604, label %pred.store.continue605

end_hunk_44
begin_hunk_45
  store i8 %i.nj, ptr %next.gep582, align 1, !tbaa !17
  br label %pred.store.continue605

pred.store.continue605:                           ; preds = %pred.store.if604, %pred.store.continue603
  %i.nk = extractelement <16 x i1> %i.mr, i64 6
  br i1 %i.nk, label %pred.store.if606, label %pred.store.continue607

end_hunk_45
begin_hunk_46
  store i8 %i.nm, ptr %next.gep583, align 1, !tbaa !17
  br label %pred.store.continue607

pred.store.continue607:                           ; preds = %pred.store.if606, %pred.store.continue605
  %i.nn = extractelement <16 x i1> %i.mr, i64 7
  br i1 %i.nn, label %pred.store.if608, label %pred.store.continue609

end_hunk_46
begin_hunk_47
  store i8 %i.np, ptr %next.gep584, align 1, !tbaa !17
  br label %pred.store.continue609

pred.store.continue609:                           ; preds = %pred.store.if608, %pred.store.continue607
  %i.nq = extractelement <16 x i1> %i.mr, i64 8
  br i1 %i.nq, label %pred.store.if610, label %pred.store.continue611

end_hunk_47
begin_hunk_48
  store i8 %i.ns, ptr %next.gep585, align 1, !tbaa !17
  br label %pred.store.continue611

pred.store.continue611:                           ; preds = %pred.store.if610, %pred.store.continue609
  %i.nt = extractelement <16 x i1> %i.mr, i64 9
  br i1 %i.nt, label %pred.store.if612, label %pred.store.continue613

end_hunk_48
begin_hunk_49
  store i8 %i.nv, ptr %next.gep586, align 1, !tbaa !17
  br label %pred.store.continue613

pred.store.continue613:                           ; preds = %pred.store.if612, %pred.store.continue611
  %i.nw = extractelement <16 x i1> %i.mr, i64 10
  br i1 %i.nw, label %pred.store.if614, label %pred.store.continue615

end_hunk_49
begin_hunk_50
  store i8 %i.ny, ptr %next.gep587, align 1, !tbaa !17
  br label %pred.store.continue615

pred.store.continue615:                           ; preds = %pred.store.if614, %pred.store.continue613
  %i.nz = extractelement <16 x i1> %i.mr, i64 11
  br i1 %i.nz, label %pred.store.if616, label %pred.store.continue617

end_hunk_50
begin_hunk_51
  store i8 %i.ob, ptr %next.gep588, align 1, !tbaa !17
  br label %pred.store.continue617

pred.store.continue617:                           ; preds = %pred.store.if616, %pred.store.continue615
  %i.oc = extractelement <16 x i1> %i.mr, i64 12
  br i1 %i.oc, label %pred.store.if618, label %pred.store.continue619

end_hunk_51
begin_hunk_52
  store i8 %i.oe, ptr %next.gep589, align 1, !tbaa !17
  br label %pred.store.continue619

pred.store.continue619:                           ; preds = %pred.store.if618, %pred.store.continue617
  %i.of = extractelement <16 x i1> %i.mr, i64 13
  br i1 %i.of, label %pred.store.if620, label %pred.store.continue621

end_hunk_52
begin_hunk_53
  store i8 %i.oh, ptr %next.gep590, align 1, !tbaa !17
  br label %pred.store.continue621

pred.store.continue621:                           ; preds = %pred.store.if620, %pred.store.continue619
  %i.oi = extractelement <16 x i1> %i.mr, i64 14
  br i1 %i.oi, label %pred.store.if622, label %pred.store.continue623

end_hunk_53
begin_hunk_54
  store i8 %i.ok, ptr %next.gep591, align 1, !tbaa !17
  br label %pred.store.continue623

pred.store.continue623:                           ; preds = %pred.store.if622, %pred.store.continue621
  %i.ol = extractelement <16 x i1> %i.mr, i64 15
  br i1 %i.ol, label %pred.store.if624, label %pred.store.continue625

end_hunk_54
begin_hunk_55
  store i8 %i.on, ptr %next.gep592, align 1, !tbaa !17
  br label %pred.store.continue625

pred.store.continue625:                           ; preds = %pred.store.if624, %pred.store.continue623
  %index.next626 = add nuw i64 %index576, 16      ; 2 uses
  %i.oo = icmp eq i64 %index.next626, %n.vec574
  br i1 %i.oo, label %middle.block627, label %vector.body575, !llvm.loop !41
end_hunk_55
begin_hunk_56
  store i8 %i.ox, ptr %next.gep638, align 1, !tbaa !17
  br label %pred.store.continue644

pred.store.continue644:                           ; preds = %pred.store.if643, %vec.epilog.vector.body636
  %i.oy = extractelement <4 x i1> %i.ou, i64 1
  br i1 %i.oy, label %pred.store.if645, label %pred.store.continue646

end_hunk_56
begin_hunk_57
  store i8 %i.pa, ptr %next.gep639, align 1, !tbaa !17
  br label %pred.store.continue646

pred.store.continue646:                           ; preds = %pred.store.if645, %pred.store.continue644
  %i.pb = extractelement <4 x i1> %i.ou, i64 2
  br i1 %i.pb, label %pred.store.if647, label %pred.store.continue648

end_hunk_57
begin_hunk_58
  store i8 %i.pd, ptr %next.gep640, align 1, !tbaa !17
  br label %pred.store.continue648

pred.store.continue648:                           ; preds = %pred.store.if647, %pred.store.continue646
  %i.pe = extractelement <4 x i1> %i.ou, i64 3
  br i1 %i.pe, label %pred.store.if649, label %pred.store.continue650

end_hunk_58
begin_hunk_59
  store i8 %i.pg, ptr %next.gep641, align 1, !tbaa !17
  br label %pred.store.continue650

pred.store.continue650:                           ; preds = %pred.store.if649, %pred.store.continue648
  %index.next651 = add nuw i64 %index637, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next651, %n.vec635
  br i1 %i.ph, label %vec.epilog.middle.block652, label %vec.epilog.vector.body636, !llvm.loop !42
end_hunk_59
begin_hunk_60
  store i32 %i.by, ptr %next.gep, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bz = extractelement <4 x i1> %i.bu, i64 1
  br i1 %i.bz, label %pred.store.if415, label %pred.store.continue416

end_hunk_60
begin_hunk_61
  store i32 %i.cb, ptr %next.gep407, align 4, !tbaa !3
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue
  %i.cc = extractelement <4 x i1> %i.bu, i64 2
  br i1 %i.cc, label %pred.store.if417, label %pred.store.continue418

end_hunk_61
begin_hunk_62
  store i32 %i.ce, ptr %next.gep408, align 4, !tbaa !3
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.cf = extractelement <4 x i1> %i.bu, i64 3
  br i1 %i.cf, label %pred.store.if419, label %pred.store.continue420

end_hunk_62
begin_hunk_63
  store i32 %i.ch, ptr %next.gep409, align 4, !tbaa !3
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.ci = extractelement <4 x i1> %i.bv, i64 0
  br i1 %i.ci, label %pred.store.if421, label %pred.store.continue422

end_hunk_63
begin_hunk_64
  store i32 %i.ck, ptr %next.gep410, align 4, !tbaa !3
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.cl = extractelement <4 x i1> %i.bv, i64 1
  br i1 %i.cl, label %pred.store.if423, label %pred.store.continue424

end_hunk_64
begin_hunk_65
  store i32 %i.cn, ptr %next.gep411, align 4, !tbaa !3
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.co = extractelement <4 x i1> %i.bv, i64 2
  br i1 %i.co, label %pred.store.if425, label %pred.store.continue426

end_hunk_65
begin_hunk_66
  store i32 %i.cq, ptr %next.gep412, align 4, !tbaa !3
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.cr = extractelement <4 x i1> %i.bv, i64 3
  br i1 %i.cr, label %pred.store.if427, label %pred.store.continue428

end_hunk_66
begin_hunk_67
  store i32 %i.ct, ptr %next.gep413, align 4, !tbaa !3
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !78
end_hunk_67
begin_hunk_68
  store i32 %i.gd, ptr %next.gep451, align 4, !tbaa !3
  br label %pred.store.continue462

pred.store.continue462:                           ; preds = %pred.store.if461, %vector.body448
  %i.ge = extractelement <4 x i1> %i.fz, i64 1
  br i1 %i.ge, label %pred.store.if463, label %pred.store.continue464

end_hunk_68
begin_hunk_69
  store i32 %i.gg, ptr %next.gep452, align 4, !tbaa !3
  br label %pred.store.continue464

pred.store.continue464:                           ; preds = %pred.store.if463, %pred.store.continue462
  %i.gh = extractelement <4 x i1> %i.fz, i64 2
  br i1 %i.gh, label %pred.store.if465, label %pred.store.continue466

end_hunk_69
begin_hunk_70
  store i32 %i.gj, ptr %next.gep453, align 4, !tbaa !3
  br label %pred.store.continue466

pred.store.continue466:                           ; preds = %pred.store.if465, %pred.store.continue464
  %i.gk = extractelement <4 x i1> %i.fz, i64 3
  br i1 %i.gk, label %pred.store.if467, label %pred.store.continue468

end_hunk_70
begin_hunk_71
  store i32 %i.gm, ptr %next.gep454, align 4, !tbaa !3
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %pred.store.continue466
  %i.gn = extractelement <4 x i1> %i.ga, i64 0
  br i1 %i.gn, label %pred.store.if469, label %pred.store.continue470

end_hunk_71
begin_hunk_72
  store i32 %i.gp, ptr %next.gep455, align 4, !tbaa !3
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue468
  %i.gq = extractelement <4 x i1> %i.ga, i64 1
  br i1 %i.gq, label %pred.store.if471, label %pred.store.continue472

end_hunk_72
begin_hunk_73
  store i32 %i.gs, ptr %next.gep456, align 4, !tbaa !3
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %i.gt = extractelement <4 x i1> %i.ga, i64 2
  br i1 %i.gt, label %pred.store.if473, label %pred.store.continue474

end_hunk_73
begin_hunk_74
  store i32 %i.gv, ptr %next.gep457, align 4, !tbaa !3
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %i.gw = extractelement <4 x i1> %i.ga, i64 3
  br i1 %i.gw, label %pred.store.if475, label %pred.store.continue476

end_hunk_74
begin_hunk_75
  store i32 %i.gy, ptr %next.gep458, align 4, !tbaa !3
  br label %pred.store.continue476

pred.store.continue476:                           ; preds = %pred.store.if475, %pred.store.continue474
  %index.next477 = add nuw i64 %index449, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next477, %n.vec447
  br i1 %i.gz, label %middle.block478, label %vector.body448, !llvm.loop !83
end_hunk_75
begin_hunk_76
  store i32 %i.ky, ptr %next.gep505, align 4, !tbaa !3
  br label %pred.store.continue516

pred.store.continue516:                           ; preds = %pred.store.if515, %vector.body502
  %i.kz = extractelement <4 x i1> %i.ku, i64 1
  br i1 %i.kz, label %pred.store.if517, label %pred.store.continue518

end_hunk_76
begin_hunk_77
  store i32 %i.lb, ptr %next.gep506, align 4, !tbaa !3
  br label %pred.store.continue518

pred.store.continue518:                           ; preds = %pred.store.if517, %pred.store.continue516
  %i.lc = extractelement <4 x i1> %i.ku, i64 2
  br i1 %i.lc, label %pred.store.if519, label %pred.store.continue520

end_hunk_77
begin_hunk_78
  store i32 %i.le, ptr %next.gep507, align 4, !tbaa !3
  br label %pred.store.continue520

pred.store.continue520:                           ; preds = %pred.store.if519, %pred.store.continue518
  %i.lf = extractelement <4 x i1> %i.ku, i64 3
  br i1 %i.lf, label %pred.store.if521, label %pred.store.continue522

end_hunk_78
begin_hunk_79
  store i32 %i.lh, ptr %next.gep508, align 4, !tbaa !3
  br label %pred.store.continue522

pred.store.continue522:                           ; preds = %pred.store.if521, %pred.store.continue520
  %i.li = extractelement <4 x i1> %i.kv, i64 0
  br i1 %i.li, label %pred.store.if523, label %pred.store.continue524

end_hunk_79
begin_hunk_80
  store i32 %i.lk, ptr %next.gep509, align 4, !tbaa !3
  br label %pred.store.continue524

pred.store.continue524:                           ; preds = %pred.store.if523, %pred.store.continue522
  %i.ll = extractelement <4 x i1> %i.kv, i64 1
  br i1 %i.ll, label %pred.store.if525, label %pred.store.continue526

end_hunk_80
begin_hunk_81
  store i32 %i.ln, ptr %next.gep510, align 4, !tbaa !3
  br label %pred.store.continue526

pred.store.continue526:                           ; preds = %pred.store.if525, %pred.store.continue524
  %i.lo = extractelement <4 x i1> %i.kv, i64 2
  br i1 %i.lo, label %pred.store.if527, label %pred.store.continue528

end_hunk_81
begin_hunk_82
  store i32 %i.lq, ptr %next.gep511, align 4, !tbaa !3
  br label %pred.store.continue528

pred.store.continue528:                           ; preds = %pred.store.if527, %pred.store.continue526
  %i.lr = extractelement <4 x i1> %i.kv, i64 3
  br i1 %i.lr, label %pred.store.if529, label %pred.store.continue530

end_hunk_82
begin_hunk_83
  store i32 %i.lt, ptr %next.gep512, align 4, !tbaa !3
  br label %pred.store.continue530

pred.store.continue530:                           ; preds = %pred.store.if529, %pred.store.continue528
  %index.next531 = add nuw i64 %index503, 8       ; 2 uses
  %i.lu = icmp eq i64 %index.next531, %n.vec501
  br i1 %i.lu, label %middle.block532, label %vector.body502, !llvm.loop !89
end_hunk_83
