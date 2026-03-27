begin_hunk_0
  %.sroa.0147.1.i = phi ptr [ %.sroa.0147.0182202.i, %bb.by ], [ @.str.115, %bb.bz ], [ @.str.115, %bb.az ], [ @.str.115, %bb.ba ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0203.i, %bb.by ], [ 7, %bb.bz ], [ 7, %bb.az ], [ 7, %bb.ba ] ; 11 uses
  %.282.i = phi i64 [ %.181.3.i, %bb.by ], [ 8, %bb.bz ], [ 8, %bb.az ], [ 8, %bb.ba ]
  %i.ie = call ptr @ft_mem_qalloc(ptr noundef %i.fc, i64 noundef %.282.i, ptr noundef nonnull %i.a) #20 ; 45 uses
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !83
  %i.ig = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
end_hunk_0
begin_hunk_1
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue523, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue523 ] ; 33 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %index ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %wide.load = load <16 x i8>, ptr %i.ih, align 1, !tbaa !41
  %wide.load461 = load <16 x i8>, ptr %i.ii, align 1, !tbaa !41
end_hunk_1
begin_hunk_2
  br i1 %i.il, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 45, ptr %i.ih, align 1, !tbaa !41
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.im = extractelement <16 x i1> %i.ij, i64 1
  br i1 %i.im, label %pred.store.if462, label %pred.store.continue463

end_hunk_2
begin_hunk_3
  store i8 45, ptr %i.io, align 1, !tbaa !41
  br label %pred.store.continue463

pred.store.continue463:                           ; preds = %pred.store.continue, %pred.store.if462
  %i.ip = extractelement <16 x i1> %i.ij, i64 2
  br i1 %i.ip, label %pred.store.if464, label %pred.store.continue465

end_hunk_3
begin_hunk_4
  store i8 45, ptr %i.ir, align 1, !tbaa !41
  br label %pred.store.continue465

pred.store.continue465:                           ; preds = %pred.store.continue463, %pred.store.if464
  %i.is = extractelement <16 x i1> %i.ij, i64 3
  br i1 %i.is, label %pred.store.if466, label %pred.store.continue467

end_hunk_4
begin_hunk_5
  store i8 45, ptr %i.iu, align 1, !tbaa !41
  br label %pred.store.continue467

pred.store.continue467:                           ; preds = %pred.store.continue465, %pred.store.if466
  %i.iv = extractelement <16 x i1> %i.ij, i64 4
  br i1 %i.iv, label %pred.store.if468, label %pred.store.continue469

end_hunk_5
begin_hunk_6
  store i8 45, ptr %i.ix, align 1, !tbaa !41
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.continue467, %pred.store.if468
  %i.iy = extractelement <16 x i1> %i.ij, i64 5
  br i1 %i.iy, label %pred.store.if470, label %pred.store.continue471

end_hunk_6
begin_hunk_7
  store i8 45, ptr %i.ja, align 1, !tbaa !41
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.continue469, %pred.store.if470
  %i.jb = extractelement <16 x i1> %i.ij, i64 6
  br i1 %i.jb, label %pred.store.if472, label %pred.store.continue473

end_hunk_7
begin_hunk_8
  store i8 45, ptr %i.jd, align 1, !tbaa !41
  br label %pred.store.continue473

pred.store.continue473:                           ; preds = %pred.store.continue471, %pred.store.if472
  %i.je = extractelement <16 x i1> %i.ij, i64 7
  br i1 %i.je, label %pred.store.if474, label %pred.store.continue475

end_hunk_8
begin_hunk_9
  store i8 45, ptr %i.jg, align 1, !tbaa !41
  br label %pred.store.continue475

pred.store.continue475:                           ; preds = %pred.store.continue473, %pred.store.if474
  %i.jh = extractelement <16 x i1> %i.ij, i64 8
  br i1 %i.jh, label %pred.store.if476, label %pred.store.continue477

end_hunk_9
begin_hunk_10
  store i8 45, ptr %i.jj, align 1, !tbaa !41
  br label %pred.store.continue477

pred.store.continue477:                           ; preds = %pred.store.continue475, %pred.store.if476
  %i.jk = extractelement <16 x i1> %i.ij, i64 9
  br i1 %i.jk, label %pred.store.if478, label %pred.store.continue479

end_hunk_10
begin_hunk_11
  store i8 45, ptr %i.jm, align 1, !tbaa !41
  br label %pred.store.continue479

pred.store.continue479:                           ; preds = %pred.store.continue477, %pred.store.if478
  %i.jn = extractelement <16 x i1> %i.ij, i64 10
  br i1 %i.jn, label %pred.store.if480, label %pred.store.continue481

end_hunk_11
begin_hunk_12
  store i8 45, ptr %i.jp, align 1, !tbaa !41
  br label %pred.store.continue481

pred.store.continue481:                           ; preds = %pred.store.continue479, %pred.store.if480
  %i.jq = extractelement <16 x i1> %i.ij, i64 11
  br i1 %i.jq, label %pred.store.if482, label %pred.store.continue483

end_hunk_12
begin_hunk_13
  store i8 45, ptr %i.js, align 1, !tbaa !41
  br label %pred.store.continue483

pred.store.continue483:                           ; preds = %pred.store.continue481, %pred.store.if482
  %i.jt = extractelement <16 x i1> %i.ij, i64 12
  br i1 %i.jt, label %pred.store.if484, label %pred.store.continue485

end_hunk_13
begin_hunk_14
  store i8 45, ptr %i.jv, align 1, !tbaa !41
  br label %pred.store.continue485

pred.store.continue485:                           ; preds = %pred.store.continue483, %pred.store.if484
  %i.jw = extractelement <16 x i1> %i.ij, i64 13
  br i1 %i.jw, label %pred.store.if486, label %pred.store.continue487

end_hunk_14
begin_hunk_15
  store i8 45, ptr %i.jy, align 1, !tbaa !41
  br label %pred.store.continue487

pred.store.continue487:                           ; preds = %pred.store.continue485, %pred.store.if486
  %i.jz = extractelement <16 x i1> %i.ij, i64 14
  br i1 %i.jz, label %pred.store.if488, label %pred.store.continue489

end_hunk_15
begin_hunk_16
  store i8 45, ptr %i.kb, align 1, !tbaa !41
  br label %pred.store.continue489

pred.store.continue489:                           ; preds = %pred.store.continue487, %pred.store.if488
  %i.kc = extractelement <16 x i1> %i.ij, i64 15
  br i1 %i.kc, label %pred.store.if490, label %pred.store.continue491

end_hunk_16
begin_hunk_17
  store i8 45, ptr %i.ke, align 1, !tbaa !41
  br label %pred.store.continue491

pred.store.continue491:                           ; preds = %pred.store.continue489, %pred.store.if490
  %i.kf = extractelement <16 x i1> %i.ik, i64 0
  br i1 %i.kf, label %pred.store.if492, label %pred.store.continue493

end_hunk_17
begin_hunk_18
  store i8 45, ptr %i.kh, align 1, !tbaa !41
  br label %pred.store.continue493

pred.store.continue493:                           ; preds = %pred.store.continue491, %pred.store.if492
  %i.ki = extractelement <16 x i1> %i.ik, i64 1
  br i1 %i.ki, label %pred.store.if494, label %pred.store.continue495

end_hunk_18
begin_hunk_19
  store i8 45, ptr %i.kk, align 1, !tbaa !41
  br label %pred.store.continue495

pred.store.continue495:                           ; preds = %pred.store.continue493, %pred.store.if494
  %i.kl = extractelement <16 x i1> %i.ik, i64 2
  br i1 %i.kl, label %pred.store.if496, label %pred.store.continue497

end_hunk_19
begin_hunk_20
  store i8 45, ptr %i.kn, align 1, !tbaa !41
  br label %pred.store.continue497

pred.store.continue497:                           ; preds = %pred.store.continue495, %pred.store.if496
  %i.ko = extractelement <16 x i1> %i.ik, i64 3
  br i1 %i.ko, label %pred.store.if498, label %pred.store.continue499

end_hunk_20
begin_hunk_21
  store i8 45, ptr %i.kq, align 1, !tbaa !41
  br label %pred.store.continue499

pred.store.continue499:                           ; preds = %pred.store.continue497, %pred.store.if498
  %i.kr = extractelement <16 x i1> %i.ik, i64 4
  br i1 %i.kr, label %pred.store.if500, label %pred.store.continue501

end_hunk_21
begin_hunk_22
  store i8 45, ptr %i.kt, align 1, !tbaa !41
  br label %pred.store.continue501

pred.store.continue501:                           ; preds = %pred.store.continue499, %pred.store.if500
  %i.ku = extractelement <16 x i1> %i.ik, i64 5
  br i1 %i.ku, label %pred.store.if502, label %pred.store.continue503

end_hunk_22
begin_hunk_23
  store i8 45, ptr %i.kw, align 1, !tbaa !41
  br label %pred.store.continue503

pred.store.continue503:                           ; preds = %pred.store.continue501, %pred.store.if502
  %i.kx = extractelement <16 x i1> %i.ik, i64 6
  br i1 %i.kx, label %pred.store.if504, label %pred.store.continue505

end_hunk_23
begin_hunk_24
  store i8 45, ptr %i.kz, align 1, !tbaa !41
  br label %pred.store.continue505

pred.store.continue505:                           ; preds = %pred.store.continue503, %pred.store.if504
  %i.la = extractelement <16 x i1> %i.ik, i64 7
  br i1 %i.la, label %pred.store.if506, label %pred.store.continue507

end_hunk_24
begin_hunk_25
  store i8 45, ptr %i.lc, align 1, !tbaa !41
  br label %pred.store.continue507

pred.store.continue507:                           ; preds = %pred.store.continue505, %pred.store.if506
  %i.ld = extractelement <16 x i1> %i.ik, i64 8
  br i1 %i.ld, label %pred.store.if508, label %pred.store.continue509

end_hunk_25
begin_hunk_26
  store i8 45, ptr %i.lf, align 1, !tbaa !41
  br label %pred.store.continue509

pred.store.continue509:                           ; preds = %pred.store.continue507, %pred.store.if508
  %i.lg = extractelement <16 x i1> %i.ik, i64 9
  br i1 %i.lg, label %pred.store.if510, label %pred.store.continue511

end_hunk_26
begin_hunk_27
  store i8 45, ptr %i.li, align 1, !tbaa !41
  br label %pred.store.continue511

pred.store.continue511:                           ; preds = %pred.store.continue509, %pred.store.if510
  %i.lj = extractelement <16 x i1> %i.ik, i64 10
  br i1 %i.lj, label %pred.store.if512, label %pred.store.continue513

end_hunk_27
begin_hunk_28
  store i8 45, ptr %i.ll, align 1, !tbaa !41
  br label %pred.store.continue513

pred.store.continue513:                           ; preds = %pred.store.continue511, %pred.store.if512
  %i.lm = extractelement <16 x i1> %i.ik, i64 11
  br i1 %i.lm, label %pred.store.if514, label %pred.store.continue515

end_hunk_28
begin_hunk_29
  store i8 45, ptr %i.lo, align 1, !tbaa !41
  br label %pred.store.continue515

pred.store.continue515:                           ; preds = %pred.store.continue513, %pred.store.if514
  %i.lp = extractelement <16 x i1> %i.ik, i64 12
  br i1 %i.lp, label %pred.store.if516, label %pred.store.continue517

end_hunk_29
begin_hunk_30
  store i8 45, ptr %i.lr, align 1, !tbaa !41
  br label %pred.store.continue517

pred.store.continue517:                           ; preds = %pred.store.continue515, %pred.store.if516
  %i.ls = extractelement <16 x i1> %i.ik, i64 13
  br i1 %i.ls, label %pred.store.if518, label %pred.store.continue519

end_hunk_30
begin_hunk_31
  store i8 45, ptr %i.lu, align 1, !tbaa !41
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.continue517, %pred.store.if518
  %i.lv = extractelement <16 x i1> %i.ik, i64 14
  br i1 %i.lv, label %pred.store.if520, label %pred.store.continue521

end_hunk_31
begin_hunk_32
  store i8 45, ptr %i.lx, align 1, !tbaa !41
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.continue519, %pred.store.if520
  %i.ly = extractelement <16 x i1> %i.ik, i64 15
  br i1 %i.ly, label %pred.store.if522, label %pred.store.continue523

end_hunk_32
begin_hunk_33
  store i8 45, ptr %i.ma, align 1, !tbaa !41
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.continue521, %pred.store.if522
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mb = icmp eq i64 %index.next, %n.vec
  br i1 %i.mb, label %middle.block, label %vector.body, !llvm.loop !84
end_hunk_33
begin_hunk_34
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue543, %vec.epilog.ph
  %index526 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next544, %pred.store.continue543 ] ; 9 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ie, i64 %index526 ; 2 uses
  %wide.load527 = load <8 x i8>, ptr %i.mc, align 1, !tbaa !41
  %i.md = icmp eq <8 x i8> %wide.load527, splat (i8 32) ; 8 uses
  %i.me = extractelement <8 x i1> %i.md, i64 0
  br i1 %i.me, label %pred.store.if528, label %pred.store.continue529

pred.store.if528:                                 ; preds = %vec.epilog.vector.body
  store i8 45, ptr %i.mc, align 1, !tbaa !41
  br label %pred.store.continue529

pred.store.continue529:                           ; preds = %vec.epilog.vector.body, %pred.store.if528
  %i.mf = extractelement <8 x i1> %i.md, i64 1
  br i1 %i.mf, label %pred.store.if530, label %pred.store.continue531

end_hunk_34
begin_hunk_35
  store i8 45, ptr %i.mh, align 1, !tbaa !41
  br label %pred.store.continue531

pred.store.continue531:                           ; preds = %pred.store.continue529, %pred.store.if530
  %i.mi = extractelement <8 x i1> %i.md, i64 2
  br i1 %i.mi, label %pred.store.if532, label %pred.store.continue533

end_hunk_35
begin_hunk_36
  store i8 45, ptr %i.mk, align 1, !tbaa !41
  br label %pred.store.continue533

pred.store.continue533:                           ; preds = %pred.store.continue531, %pred.store.if532
  %i.ml = extractelement <8 x i1> %i.md, i64 3
  br i1 %i.ml, label %pred.store.if534, label %pred.store.continue535

end_hunk_36
begin_hunk_37
  store i8 45, ptr %i.mn, align 1, !tbaa !41
  br label %pred.store.continue535

pred.store.continue535:                           ; preds = %pred.store.continue533, %pred.store.if534
  %i.mo = extractelement <8 x i1> %i.md, i64 4
  br i1 %i.mo, label %pred.store.if536, label %pred.store.continue537

end_hunk_37
begin_hunk_38
  store i8 45, ptr %i.mq, align 1, !tbaa !41
  br label %pred.store.continue537

pred.store.continue537:                           ; preds = %pred.store.continue535, %pred.store.if536
  %i.mr = extractelement <8 x i1> %i.md, i64 5
  br i1 %i.mr, label %pred.store.if538, label %pred.store.continue539

end_hunk_38
begin_hunk_39
  store i8 45, ptr %i.mt, align 1, !tbaa !41
  br label %pred.store.continue539

pred.store.continue539:                           ; preds = %pred.store.continue537, %pred.store.if538
  %i.mu = extractelement <8 x i1> %i.md, i64 6
  br i1 %i.mu, label %pred.store.if540, label %pred.store.continue541

end_hunk_39
begin_hunk_40
  store i8 45, ptr %i.mw, align 1, !tbaa !41
  br label %pred.store.continue541

pred.store.continue541:                           ; preds = %pred.store.continue539, %pred.store.if540
  %i.mx = extractelement <8 x i1> %i.md, i64 7
  br i1 %i.mx, label %pred.store.if542, label %pred.store.continue543

end_hunk_40
begin_hunk_41
  store i8 45, ptr %i.mz, align 1, !tbaa !41
  br label %pred.store.continue543

pred.store.continue543:                           ; preds = %pred.store.continue541, %pred.store.if542
  %index.next544 = add nuw i64 %index526, 8       ; 2 uses
  %i.na = icmp eq i64 %index.next544, %n.vec525
  br i1 %i.na, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88
end_hunk_41
begin_hunk_42
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.179.3.i = phi ptr [ %i.nn, %bb.ci ], [ %.2.2.i, %bb.ch ] ; 43 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.179.3.i, ptr nonnull align 1 %.sroa.13.1185199219236267.i, i64 %.sroa.12.0273.i, i1 false)
  %.not145.3.i = icmp eq i64 %.sroa.12.0273.i, 0
  br i1 %.not145.3.i, label %.loopexit.3.i, label %iter.check548
end_hunk_42
begin_hunk_43
  br label %vector.body554

vector.body554:                                   ; preds = %pred.store.continue621, %vector.ph551
  %index555 = phi i64 [ 0, %vector.ph551 ], [ %index.next622, %pred.store.continue621 ] ; 33 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.179.3.i, i64 %index555 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %wide.load556 = load <16 x i8>, ptr %i.no, align 1, !tbaa !41
  %wide.load557 = load <16 x i8>, ptr %i.np, align 1, !tbaa !41
end_hunk_43
begin_hunk_44
  br i1 %i.ns, label %pred.store.if558, label %pred.store.continue559

pred.store.if558:                                 ; preds = %vector.body554
  store i8 45, ptr %i.no, align 1, !tbaa !41
  br label %pred.store.continue559

pred.store.continue559:                           ; preds = %vector.body554, %pred.store.if558
  %i.nt = extractelement <16 x i1> %i.nq, i64 1
  br i1 %i.nt, label %pred.store.if560, label %pred.store.continue561

end_hunk_44
begin_hunk_45
  store i8 45, ptr %i.nv, align 1, !tbaa !41
  br label %pred.store.continue561

pred.store.continue561:                           ; preds = %pred.store.continue559, %pred.store.if560
  %i.nw = extractelement <16 x i1> %i.nq, i64 2
  br i1 %i.nw, label %pred.store.if562, label %pred.store.continue563

end_hunk_45
begin_hunk_46
  store i8 45, ptr %i.ny, align 1, !tbaa !41
  br label %pred.store.continue563

pred.store.continue563:                           ; preds = %pred.store.continue561, %pred.store.if562
  %i.nz = extractelement <16 x i1> %i.nq, i64 3
  br i1 %i.nz, label %pred.store.if564, label %pred.store.continue565

end_hunk_46
begin_hunk_47
  store i8 45, ptr %i.ob, align 1, !tbaa !41
  br label %pred.store.continue565

pred.store.continue565:                           ; preds = %pred.store.continue563, %pred.store.if564
  %i.oc = extractelement <16 x i1> %i.nq, i64 4
  br i1 %i.oc, label %pred.store.if566, label %pred.store.continue567

end_hunk_47
begin_hunk_48
  store i8 45, ptr %i.oe, align 1, !tbaa !41
  br label %pred.store.continue567

pred.store.continue567:                           ; preds = %pred.store.continue565, %pred.store.if566
  %i.of = extractelement <16 x i1> %i.nq, i64 5
  br i1 %i.of, label %pred.store.if568, label %pred.store.continue569

end_hunk_48
begin_hunk_49
  store i8 45, ptr %i.oh, align 1, !tbaa !41
  br label %pred.store.continue569

pred.store.continue569:                           ; preds = %pred.store.continue567, %pred.store.if568
  %i.oi = extractelement <16 x i1> %i.nq, i64 6
  br i1 %i.oi, label %pred.store.if570, label %pred.store.continue571

end_hunk_49
begin_hunk_50
  store i8 45, ptr %i.ok, align 1, !tbaa !41
  br label %pred.store.continue571

pred.store.continue571:                           ; preds = %pred.store.continue569, %pred.store.if570
  %i.ol = extractelement <16 x i1> %i.nq, i64 7
  br i1 %i.ol, label %pred.store.if572, label %pred.store.continue573

end_hunk_50
begin_hunk_51
  store i8 45, ptr %i.on, align 1, !tbaa !41
  br label %pred.store.continue573

pred.store.continue573:                           ; preds = %pred.store.continue571, %pred.store.if572
  %i.oo = extractelement <16 x i1> %i.nq, i64 8
  br i1 %i.oo, label %pred.store.if574, label %pred.store.continue575

end_hunk_51
begin_hunk_52
  store i8 45, ptr %i.oq, align 1, !tbaa !41
  br label %pred.store.continue575

pred.store.continue575:                           ; preds = %pred.store.continue573, %pred.store.if574
  %i.or = extractelement <16 x i1> %i.nq, i64 9
  br i1 %i.or, label %pred.store.if576, label %pred.store.continue577

end_hunk_52
begin_hunk_53
  store i8 45, ptr %i.ot, align 1, !tbaa !41
  br label %pred.store.continue577

pred.store.continue577:                           ; preds = %pred.store.continue575, %pred.store.if576
  %i.ou = extractelement <16 x i1> %i.nq, i64 10
  br i1 %i.ou, label %pred.store.if578, label %pred.store.continue579

end_hunk_53
begin_hunk_54
  store i8 45, ptr %i.ow, align 1, !tbaa !41
  br label %pred.store.continue579

pred.store.continue579:                           ; preds = %pred.store.continue577, %pred.store.if578
  %i.ox = extractelement <16 x i1> %i.nq, i64 11
  br i1 %i.ox, label %pred.store.if580, label %pred.store.continue581

end_hunk_54
begin_hunk_55
  store i8 45, ptr %i.oz, align 1, !tbaa !41
  br label %pred.store.continue581

pred.store.continue581:                           ; preds = %pred.store.continue579, %pred.store.if580
  %i.pa = extractelement <16 x i1> %i.nq, i64 12
  br i1 %i.pa, label %pred.store.if582, label %pred.store.continue583

end_hunk_55
begin_hunk_56
  store i8 45, ptr %i.pc, align 1, !tbaa !41
  br label %pred.store.continue583

pred.store.continue583:                           ; preds = %pred.store.continue581, %pred.store.if582
  %i.pd = extractelement <16 x i1> %i.nq, i64 13
  br i1 %i.pd, label %pred.store.if584, label %pred.store.continue585

end_hunk_56
begin_hunk_57
  store i8 45, ptr %i.pf, align 1, !tbaa !41
  br label %pred.store.continue585

pred.store.continue585:                           ; preds = %pred.store.continue583, %pred.store.if584
  %i.pg = extractelement <16 x i1> %i.nq, i64 14
  br i1 %i.pg, label %pred.store.if586, label %pred.store.continue587

end_hunk_57
begin_hunk_58
  store i8 45, ptr %i.pi, align 1, !tbaa !41
  br label %pred.store.continue587

pred.store.continue587:                           ; preds = %pred.store.continue585, %pred.store.if586
  %i.pj = extractelement <16 x i1> %i.nq, i64 15
  br i1 %i.pj, label %pred.store.if588, label %pred.store.continue589

end_hunk_58
begin_hunk_59
  store i8 45, ptr %i.pl, align 1, !tbaa !41
  br label %pred.store.continue589

pred.store.continue589:                           ; preds = %pred.store.continue587, %pred.store.if588
  %i.pm = extractelement <16 x i1> %i.nr, i64 0
  br i1 %i.pm, label %pred.store.if590, label %pred.store.continue591

end_hunk_59
begin_hunk_60
  store i8 45, ptr %i.po, align 1, !tbaa !41
  br label %pred.store.continue591

pred.store.continue591:                           ; preds = %pred.store.continue589, %pred.store.if590
  %i.pp = extractelement <16 x i1> %i.nr, i64 1
  br i1 %i.pp, label %pred.store.if592, label %pred.store.continue593

end_hunk_60
begin_hunk_61
  store i8 45, ptr %i.pr, align 1, !tbaa !41
  br label %pred.store.continue593

pred.store.continue593:                           ; preds = %pred.store.continue591, %pred.store.if592
  %i.ps = extractelement <16 x i1> %i.nr, i64 2
  br i1 %i.ps, label %pred.store.if594, label %pred.store.continue595

end_hunk_61
begin_hunk_62
  store i8 45, ptr %i.pu, align 1, !tbaa !41
  br label %pred.store.continue595

pred.store.continue595:                           ; preds = %pred.store.continue593, %pred.store.if594
  %i.pv = extractelement <16 x i1> %i.nr, i64 3
  br i1 %i.pv, label %pred.store.if596, label %pred.store.continue597

end_hunk_62
begin_hunk_63
  store i8 45, ptr %i.px, align 1, !tbaa !41
  br label %pred.store.continue597

pred.store.continue597:                           ; preds = %pred.store.continue595, %pred.store.if596
  %i.py = extractelement <16 x i1> %i.nr, i64 4
  br i1 %i.py, label %pred.store.if598, label %pred.store.continue599

end_hunk_63
begin_hunk_64
  store i8 45, ptr %i.qa, align 1, !tbaa !41
  br label %pred.store.continue599

pred.store.continue599:                           ; preds = %pred.store.continue597, %pred.store.if598
  %i.qb = extractelement <16 x i1> %i.nr, i64 5
  br i1 %i.qb, label %pred.store.if600, label %pred.store.continue601

end_hunk_64
begin_hunk_65
  store i8 45, ptr %i.qd, align 1, !tbaa !41
  br label %pred.store.continue601

pred.store.continue601:                           ; preds = %pred.store.continue599, %pred.store.if600
  %i.qe = extractelement <16 x i1> %i.nr, i64 6
  br i1 %i.qe, label %pred.store.if602, label %pred.store.continue603

end_hunk_65
begin_hunk_66
  store i8 45, ptr %i.qg, align 1, !tbaa !41
  br label %pred.store.continue603

pred.store.continue603:                           ; preds = %pred.store.continue601, %pred.store.if602
  %i.qh = extractelement <16 x i1> %i.nr, i64 7
  br i1 %i.qh, label %pred.store.if604, label %pred.store.continue605

end_hunk_66
begin_hunk_67
  store i8 45, ptr %i.qj, align 1, !tbaa !41
  br label %pred.store.continue605

pred.store.continue605:                           ; preds = %pred.store.continue603, %pred.store.if604
  %i.qk = extractelement <16 x i1> %i.nr, i64 8
  br i1 %i.qk, label %pred.store.if606, label %pred.store.continue607

end_hunk_67
begin_hunk_68
  store i8 45, ptr %i.qm, align 1, !tbaa !41
  br label %pred.store.continue607

pred.store.continue607:                           ; preds = %pred.store.continue605, %pred.store.if606
  %i.qn = extractelement <16 x i1> %i.nr, i64 9
  br i1 %i.qn, label %pred.store.if608, label %pred.store.continue609

end_hunk_68
begin_hunk_69
  store i8 45, ptr %i.qp, align 1, !tbaa !41
  br label %pred.store.continue609

pred.store.continue609:                           ; preds = %pred.store.continue607, %pred.store.if608
  %i.qq = extractelement <16 x i1> %i.nr, i64 10
  br i1 %i.qq, label %pred.store.if610, label %pred.store.continue611

end_hunk_69
begin_hunk_70
  store i8 45, ptr %i.qs, align 1, !tbaa !41
  br label %pred.store.continue611

pred.store.continue611:                           ; preds = %pred.store.continue609, %pred.store.if610
  %i.qt = extractelement <16 x i1> %i.nr, i64 11
  br i1 %i.qt, label %pred.store.if612, label %pred.store.continue613

end_hunk_70
begin_hunk_71
  store i8 45, ptr %i.qv, align 1, !tbaa !41
  br label %pred.store.continue613

pred.store.continue613:                           ; preds = %pred.store.continue611, %pred.store.if612
  %i.qw = extractelement <16 x i1> %i.nr, i64 12
  br i1 %i.qw, label %pred.store.if614, label %pred.store.continue615

end_hunk_71
begin_hunk_72
  store i8 45, ptr %i.qy, align 1, !tbaa !41
  br label %pred.store.continue615

pred.store.continue615:                           ; preds = %pred.store.continue613, %pred.store.if614
  %i.qz = extractelement <16 x i1> %i.nr, i64 13
  br i1 %i.qz, label %pred.store.if616, label %pred.store.continue617

end_hunk_72
begin_hunk_73
  store i8 45, ptr %i.rb, align 1, !tbaa !41
  br label %pred.store.continue617

pred.store.continue617:                           ; preds = %pred.store.continue615, %pred.store.if616
  %i.rc = extractelement <16 x i1> %i.nr, i64 14
  br i1 %i.rc, label %pred.store.if618, label %pred.store.continue619

end_hunk_73
begin_hunk_74
  store i8 45, ptr %i.re, align 1, !tbaa !41
  br label %pred.store.continue619

pred.store.continue619:                           ; preds = %pred.store.continue617, %pred.store.if618
  %i.rf = extractelement <16 x i1> %i.nr, i64 15
  br i1 %i.rf, label %pred.store.if620, label %pred.store.continue621

end_hunk_74
begin_hunk_75
  store i8 45, ptr %i.rh, align 1, !tbaa !41
  br label %pred.store.continue621

pred.store.continue621:                           ; preds = %pred.store.continue619, %pred.store.if620
  %index.next622 = add nuw i64 %index555, 32      ; 2 uses
  %i.ri = icmp eq i64 %index.next622, %n.vec553
  br i1 %i.ri, label %middle.block623, label %vector.body554, !llvm.loop !90
end_hunk_75
begin_hunk_76
  br label %vec.epilog.vector.body632

vec.epilog.vector.body632:                        ; preds = %pred.store.continue650, %vec.epilog.ph629
  %index633 = phi i64 [ %vec.epilog.resume.val625, %vec.epilog.ph629 ], [ %index.next651, %pred.store.continue650 ] ; 9 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.179.3.i, i64 %index633 ; 2 uses
  %wide.load634 = load <8 x i8>, ptr %i.rj, align 1, !tbaa !41
  %i.rk = icmp eq <8 x i8> %wide.load634, splat (i8 32) ; 8 uses
  %i.rl = extractelement <8 x i1> %i.rk, i64 0
  br i1 %i.rl, label %pred.store.if635, label %pred.store.continue636

pred.store.if635:                                 ; preds = %vec.epilog.vector.body632
  store i8 45, ptr %i.rj, align 1, !tbaa !41
  br label %pred.store.continue636

pred.store.continue636:                           ; preds = %vec.epilog.vector.body632, %pred.store.if635
  %i.rm = extractelement <8 x i1> %i.rk, i64 1
  br i1 %i.rm, label %pred.store.if637, label %pred.store.continue638

end_hunk_76
begin_hunk_77
  store i8 45, ptr %i.ro, align 1, !tbaa !41
  br label %pred.store.continue638

pred.store.continue638:                           ; preds = %pred.store.continue636, %pred.store.if637
  %i.rp = extractelement <8 x i1> %i.rk, i64 2
  br i1 %i.rp, label %pred.store.if639, label %pred.store.continue640

end_hunk_77
begin_hunk_78
  store i8 45, ptr %i.rr, align 1, !tbaa !41
  br label %pred.store.continue640

pred.store.continue640:                           ; preds = %pred.store.continue638, %pred.store.if639
  %i.rs = extractelement <8 x i1> %i.rk, i64 3
  br i1 %i.rs, label %pred.store.if641, label %pred.store.continue642

end_hunk_78
begin_hunk_79
  store i8 45, ptr %i.ru, align 1, !tbaa !41
  br label %pred.store.continue642

pred.store.continue642:                           ; preds = %pred.store.continue640, %pred.store.if641
  %i.rv = extractelement <8 x i1> %i.rk, i64 4
  br i1 %i.rv, label %pred.store.if643, label %pred.store.continue644

end_hunk_79
begin_hunk_80
  store i8 45, ptr %i.rx, align 1, !tbaa !41
  br label %pred.store.continue644

pred.store.continue644:                           ; preds = %pred.store.continue642, %pred.store.if643
  %i.ry = extractelement <8 x i1> %i.rk, i64 5
  br i1 %i.ry, label %pred.store.if645, label %pred.store.continue646

end_hunk_80
begin_hunk_81
  store i8 45, ptr %i.sa, align 1, !tbaa !41
  br label %pred.store.continue646

pred.store.continue646:                           ; preds = %pred.store.continue644, %pred.store.if645
  %i.sb = extractelement <8 x i1> %i.rk, i64 6
  br i1 %i.sb, label %pred.store.if647, label %pred.store.continue648

end_hunk_81
begin_hunk_82
  store i8 45, ptr %i.sd, align 1, !tbaa !41
  br label %pred.store.continue648

pred.store.continue648:                           ; preds = %pred.store.continue646, %pred.store.if647
  %i.se = extractelement <8 x i1> %i.rk, i64 7
  br i1 %i.se, label %pred.store.if649, label %pred.store.continue650

end_hunk_82
begin_hunk_83
  store i8 45, ptr %i.sg, align 1, !tbaa !41
  br label %pred.store.continue650

pred.store.continue650:                           ; preds = %pred.store.continue648, %pred.store.if649
  %index.next651 = add nuw i64 %index633, 8       ; 2 uses
  %i.sh = icmp eq i64 %index.next651, %n.vec631
  br i1 %i.sh, label %vec.epilog.middle.block652, label %vec.epilog.vector.body632, !llvm.loop !91
end_hunk_83
