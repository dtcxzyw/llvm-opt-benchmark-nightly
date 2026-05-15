inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3VdbeExec:bb.a
  %i.gxn = phi i16 [ %i.gwy, %bb.atl ], [ %i.gwy, %bb.atq ], [ %.pre.i4479, %bb.ats ], [ %i.gwy, %bb.atr ], [ %i.gwy, %bb.atp ], [ %i.gwy, %bb.ato ]
  %.0.i.i4475 = phi i64 [ %i.gxb, %bb.atl ], [ 0, %bb.atq ], [ %i.gxm, %bb.ats ], [ 0, %bb.atr ], [ %i.gxi, %bb.atp ], [ 9223372036854775807, %bb.ato ] ; 3 uses
  store i64 %.0.i.i4475, ptr %i.gww, align 8, !tbaa !227
  %i.gxo = and i16 %i.gxn, -3520
  %i.gxp = or disjoint i16 %i.gxo, 4
  store i16 %i.gxp, ptr %i.gwx, align 4, !tbaa !162
  %i.gxq = load i64, ptr %i.gwb, align 8, !tbaa !227
  %i.gxr = icmp slt i64 %i.gxq, %.0.i.i4475
  br i1 %i.gxr, label %bb.att, label %.critedge

bb.att:                                           ; preds = %sqlite3VdbeMemIntegerify.exit4480
  store i64 %.0.i.i4475, ptr %i.gwb, align 8, !tbaa !227
  br label %.critedge

bb.atu:                                           ; preds = %bb.h
  %i.gxs = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.gxt = load i32, ptr %i.gxs, align 4, !tbaa !584
  %i.gxu = sext i32 %i.gxt to i64
  %i.gxv = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.gxu ; 2 uses
  %i.gxw = load i64, ptr %i.gxv, align 8, !tbaa !227 ; 2 uses
  %i.gxx = icmp sgt i64 %i.gxw, 0
  br i1 %i.gxx, label %bb.atv, label %.critedge

bb.atv:                                           ; preds = %bb.atu
  %i.gxy = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.gxz = load i32, ptr %i.gxy, align 4, !tbaa !586
  %i.gya = sext i32 %i.gxz to i64
  %i.gyb = sub nsw i64 %i.gxw, %i.gya
  store i64 %i.gyb, ptr %i.gxv, align 8, !tbaa !227
  br label %.thread4778

bb.atw:                                           ; preds = %bb.h
  %i.gyc = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.gyd = load i32, ptr %i.gyc, align 4, !tbaa !584
  %i.gye = sext i32 %i.gyd to i64
  %i.gyf = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.gye
  %i.gyg = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.gyh = load i32, ptr %i.gyg, align 4, !tbaa !586
  %.val4080 = load ptr, ptr %i.aq, align 8, !tbaa !544
  %i.gyi = getelementptr i8, ptr %.02963, i64 8
  %.02963.val4081 = load i32, ptr %i.gyi, align 8, !tbaa !585
  %i.gyj = sext i32 %.02963.val4081 to i64
  %i.gyk = getelementptr inbounds [56 x i8], ptr %.val4080, i64 %i.gyj ; 3 uses
  %i.gyl = getelementptr inbounds nuw i8, ptr %i.gyk, i64 20 ; 2 uses
  %i.gym = load i16, ptr %i.gyl, align 4, !tbaa !162
  %i.gyn = and i16 %i.gym, -28672
  %.not.i4481 = icmp eq i16 %i.gyn, 0
  br i1 %.not.i4481, label %bb.aty, label %bb.atx

bb.atx:                                           ; preds = %bb.atw
  %i.gyo = call fastcc ptr @out2PrereleaseWithClear(ptr noundef nonnull %i.gyk) ; 0 uses
  br label %out2Prerelease.exit4482

bb.aty:                                           ; preds = %bb.atw
  store i16 4, ptr %i.gyl, align 4, !tbaa !162
  br label %out2Prerelease.exit4482

out2Prerelease.exit4482:                          ; preds = %bb.atx, %bb.aty
  %i.gyp = load i64, ptr %i.gyf, align 8, !tbaa !227 ; 3 uses
  %i.gyq = icmp slt i64 %i.gyp, 1
  br i1 %i.gyq, label %sqlite3AddInt64.exit4485, label %bb.atz

bb.atz:                                           ; preds = %out2Prerelease.exit4482
  %i.gyr = sext i32 %i.gyh to i64
  %i.gys = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.gyr
  %i.gyt = load i64, ptr %i.gys, align 8, !tbaa !227 ; 2 uses
  %spec.select4010 = call i64 @llvm.smax.i64(i64 %i.gyt, i64 0)
  %i.gyu = sub nuw nsw i64 9223372036854775807, %i.gyp
  %i.gyv = icmp sgt i64 %i.gyt, %i.gyu
  %i.gyw = add nuw nsw i64 %spec.select4010, %i.gyp
  %spec.select5475 = select i1 %i.gyv, i64 -1, i64 %i.gyw
  br label %sqlite3AddInt64.exit4485

sqlite3AddInt64.exit4485:                         ; preds = %bb.atz, %out2Prerelease.exit4482
  %storemerge = phi i64 [ -1, %out2Prerelease.exit4482 ], [ %spec.select5475, %bb.atz ]
  store i64 %storemerge, ptr %i.gyk, align 8, !tbaa !227
  br label %.critedge

bb.aua:                                           ; preds = %bb.h
  %i.gyx = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.gyy = load i32, ptr %i.gyx, align 4, !tbaa !584
  %i.gyz = sext i32 %i.gyy to i64
  %i.gza = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.gyz ; 2 uses
  %i.gzb = load i64, ptr %i.gza, align 8, !tbaa !227 ; 3 uses
  %.not3576 = icmp eq i64 %i.gzb, 0
  br i1 %.not3576, label %.critedge, label %bb.aub

bb.aub:                                           ; preds = %bb.aua
  %i.gzc = icmp sgt i64 %i.gzb, 0
  br i1 %i.gzc, label %bb.auc, label %.thread4778

bb.auc:                                           ; preds = %bb.aub
  %i.gzd = add nsw i64 %i.gzb, -1
  store i64 %i.gzd, ptr %i.gza, align 8, !tbaa !227
  br label %.thread4778

bb.aud:                                           ; preds = %bb.h
  %i.gze = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.gzf = load i32, ptr %i.gze, align 4, !tbaa !584
  %i.gzg = sext i32 %i.gzf to i64
  %i.gzh = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.gzg ; 2 uses
  %i.gzi = load i64, ptr %i.gzh, align 8, !tbaa !227 ; 2 uses
  %.not3575 = icmp eq i64 %i.gzi, -9223372036854775808
  br i1 %.not3575, label %.critedge, label %bb.aue

bb.aue:                                           ; preds = %bb.aud
  %i.gzj = add nsw i64 %i.gzi, -1                 ; 2 uses
  store i64 %i.gzj, ptr %i.gzh, align 8, !tbaa !227
  %i.gzk = icmp eq i64 %i.gzj, 0
  br i1 %i.gzk, label %.thread4778, label %.critedge

bb.auf:                                           ; preds = %bb.h, %bb.h
  %i.gzl = getelementptr inbounds nuw i8, ptr %.02963, i64 2
  %i.gzm = load i16, ptr %i.gzl, align 2, !tbaa !587 ; 2 uses
  %i.gzn = zext i16 %i.gzm to i64
  %i.gzo = shl nuw nsw i64 %i.gzn, 3              ; 2 uses
  %i.gzp = add nuw nsw i64 %i.gzo, 104
  %i.gzq = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.an, i64 noundef %i.gzp) ; 13 uses
  %i.gzr = icmp eq ptr %i.gzq, null
  br i1 %i.gzr, label %sqlite3VdbeMemSetNull.exit4173.thread, label %.thread5277

.thread5277:                                      ; preds = %bb.auf
  %i.gzs = getelementptr inbounds nuw i8, ptr %i.gzq, i64 %i.gzo ; 4 uses
  %i.gzt = getelementptr inbounds nuw i8, ptr %i.gzs, i64 48
  store ptr %i.gzt, ptr %i.gzq, align 8, !tbaa !288
  %i.gzu = getelementptr inbounds nuw i8, ptr %i.gzs, i64 68
  store i16 1, ptr %i.gzu, align 4, !tbaa !162
  %i.gzv = getelementptr inbounds nuw i8, ptr %i.gzs, i64 72
  store ptr %i.an, ptr %i.gzv, align 8, !tbaa !157
  %i.gzw = getelementptr inbounds nuw i8, ptr %i.gzs, i64 80
  store i32 0, ptr %i.gzw, align 8, !tbaa !159
  %i.gzx = getelementptr inbounds nuw i8, ptr %i.gzq, i64 16
  store ptr null, ptr %i.gzx, align 8, !tbaa !288
  %i.gzy = getelementptr inbounds nuw i8, ptr %.02963, i64 16 ; 2 uses
  %i.gzz = load ptr, ptr %i.gzy, align 8, !tbaa !227
  %i.haa = getelementptr inbounds nuw i8, ptr %i.gzq, i64 8
  store ptr %i.gzz, ptr %i.haa, align 8, !tbaa !230
  %i.hab = ptrtoint ptr %.02963 to i64
  %i.hac = ptrtoint ptr %.02962 to i64
  %i.had = sub i64 %i.hab, %i.hac
  %i.hae = sdiv exact i64 %i.had, 24
  %i.haf = trunc i64 %i.hae to i32
  %i.hag = getelementptr inbounds nuw i8, ptr %i.gzq, i64 32
  store i32 %i.haf, ptr %i.hag, align 8, !tbaa !5
  %i.hah = getelementptr inbounds nuw i8, ptr %i.gzq, i64 24
  store ptr %0, ptr %i.hah, align 8, !tbaa !128
  %i.hai = getelementptr inbounds nuw i8, ptr %i.gzq, i64 41
  store i8 0, ptr %i.hai, align 1, !tbaa !227
  %i.haj = getelementptr inbounds nuw i8, ptr %i.gzq, i64 36
  store i32 0, ptr %i.haj, align 4, !tbaa !5
  %i.hak = getelementptr inbounds nuw i8, ptr %i.gzq, i64 40
  store i8 %i.ap, ptr %i.hak, align 8, !tbaa !227
  %i.hal = getelementptr inbounds nuw i8, ptr %i.gzq, i64 42
  store i16 %i.gzm, ptr %i.hal, align 2, !tbaa !330
  %i.ham = getelementptr inbounds nuw i8, ptr %.02963, i64 1
  store i8 -15, ptr %i.ham, align 1, !tbaa !566
  store ptr %i.gzq, ptr %i.gzy, align 8, !tbaa !227
  store i8 -92, ptr %.02963, align 8, !tbaa !563
  br label %bb.aug

bb.aug:                                           ; preds = %._crit_edge7236, %.thread5277
  %i.han = phi ptr [ %.pre7237, %._crit_edge7236 ], [ %i.gzq, %.thread5277 ] ; 12 uses
  %i.hao = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.hap = load i32, ptr %i.hao, align 4, !tbaa !586
  %i.haq = sext i32 %i.hap to i64
  %i.har = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.haq ; 3 uses
  %i.has = getelementptr inbounds nuw i8, ptr %i.han, i64 16 ; 2 uses
  %i.hat = load ptr, ptr %i.has, align 8, !tbaa !288
  %.not3569 = icmp eq ptr %i.hat, %i.har
  br i1 %.not3569, label %..loopexit5526_crit_edge, label %bb.auh

..loopexit5526_crit_edge:                         ; preds = %bb.aug
  %.phi.trans.insert10441 = getelementptr inbounds nuw i8, ptr %i.han, i64 42
  %.pre10442 = load i16, ptr %.phi.trans.insert10441, align 2, !tbaa !330
  br label %.loopexit5526

bb.auh:                                           ; preds = %bb.aug
  store ptr %i.har, ptr %i.has, align 8, !tbaa !288
  %i.hau = getelementptr inbounds nuw i8, ptr %i.han, i64 42
  %i.hav = load i16, ptr %i.hau, align 2, !tbaa !330 ; 5 uses
  %.not6387 = icmp eq i16 %i.hav, 0
  br i1 %.not6387, label %.loopexit5526, label %.lr.ph6302

.lr.ph6302:                                       ; preds = %bb.auh
  %i.haw = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.hax = load i32, ptr %i.haw, align 8, !tbaa !585
  %i.hay = getelementptr inbounds nuw i8, ptr %i.han, i64 48 ; 2 uses
  %i.haz = zext i16 %i.hav to i64                 ; 5 uses
  %i.hba = sext i32 %i.hax to i64
  %invariant.gep8625 = getelementptr [56 x i8], ptr %.03021, i64 %i.hba ; 3 uses
  %min.iters.check12582 = icmp ult i16 %i.hav, 4
  br i1 %min.iters.check12582, label %scalar.ph12581.preheader, label %vector.ph12583

vector.ph12583:                                   ; preds = %.lr.ph6302
  %n.vec12585 = and i64 %i.haz, 65532             ; 2 uses
  %i.hbb = and i64 %i.haz, 3
  br label %vector.body12586

vector.body12586:                                 ; preds = %vector.body12586, %vector.ph12583
  %index12587 = phi i64 [ 0, %vector.ph12583 ], [ %index.next12589, %vector.body12586 ] ; 2 uses
  %i.hbc = sub i64 %i.haz, %index12587            ; 4 uses
  %i.hbd = add nsw i64 %i.hbc, -1                 ; 2 uses
  %i.hbe = add i64 %i.hbc, -2
  %i.hbf = insertelement <2 x i64> poison, i64 %i.hbd, i64 0
  %i.hbg = insertelement <2 x i64> %i.hbf, i64 %i.hbe, i64 1
  %20 = add i64 %i.hbc, -3
  %21 = add i64 %i.hbc, -4
  %22 = insertelement <2 x i64> poison, i64 %20, i64 0
  %23 = insertelement <2 x i64> %22, i64 %21, i64 1
  %i.hbh = getelementptr [56 x i8], ptr %invariant.gep8625, <2 x i64> %i.hbg
  %i.hbi = getelementptr [56 x i8], ptr %invariant.gep8625, <2 x i64> %23
  %i.hbj = getelementptr inbounds nuw [8 x i8], ptr %i.hay, i64 %i.hbd ; 2 uses
  %i.hbk = getelementptr inbounds i8, ptr %i.hbj, i64 -8
  %i.hbl = getelementptr inbounds i8, ptr %i.hbj, i64 -24
  %reverse = shufflevector <2 x ptr> %i.hbh, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse12588 = shufflevector <2 x ptr> %i.hbi, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse, ptr %i.hbk, align 8, !tbaa !288
  store <2 x ptr> %reverse12588, ptr %i.hbl, align 8, !tbaa !288
  %index.next12589 = add nuw i64 %index12587, 4   ; 2 uses
  %i.hbm = icmp eq i64 %index.next12589, %n.vec12585
  br i1 %i.hbm, label %middle.block12590, label %vector.body12586, !llvm.loop !2839

middle.block12590:                                ; preds = %vector.body12586
  %cmp.n12591 = icmp eq i64 %n.vec12585, %i.haz
  br i1 %cmp.n12591, label %.loopexit5526, label %scalar.ph12581.preheader

scalar.ph12581.preheader:                         ; preds = %.lr.ph6302, %middle.block12590
  %indvars.iv7178.ph = phi i64 [ %i.haz, %.lr.ph6302 ], [ %i.hbb, %middle.block12590 ]
  br label %scalar.ph12581

scalar.ph12581:                                   ; preds = %scalar.ph12581.preheader, %scalar.ph12581
  %indvars.iv7178 = phi i64 [ %indvars.iv.next7179, %scalar.ph12581 ], [ %indvars.iv7178.ph, %scalar.ph12581.preheader ] ; 2 uses
  %indvars.iv.next7179 = add nsw i64 %indvars.iv7178, -1 ; 3 uses
  %gep8626 = getelementptr [56 x i8], ptr %invariant.gep8625, i64 %indvars.iv.next7179
  %i.hbn = getelementptr inbounds nuw [8 x i8], ptr %i.hay, i64 %indvars.iv.next7179
  store ptr %gep8626, ptr %i.hbn, align 8, !tbaa !288
  %i.hbo = icmp samesign ugt i64 %indvars.iv7178, 1
  br i1 %i.hbo, label %scalar.ph12581, label %.loopexit5526, !llvm.loop !2840

.loopexit5526:                                    ; preds = %scalar.ph12581, %middle.block12590, %..loopexit5526_crit_edge, %bb.auh
  %i.hbp = phi i16 [ %.pre10442, %..loopexit5526_crit_edge ], [ 0, %bb.auh ], [ %i.hav, %middle.block12590 ], [ %i.hav, %scalar.ph12581 ]
  %i.hbq = getelementptr inbounds nuw i8, ptr %i.har, i64 16 ; 2 uses
  %i.hbr = load i32, ptr %i.hbq, align 8, !tbaa !558
  %i.hbs = add nsw i32 %i.hbr, 1
  store i32 %i.hbs, ptr %i.hbq, align 8, !tbaa !558
  %i.hbt = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.hbu = load i32, ptr %i.hbt, align 4, !tbaa !584
  %.not3570 = icmp eq i32 %i.hbu, 0
  %i.hbv = getelementptr inbounds nuw i8, ptr %i.han, i64 8
  %i.hbw = load ptr, ptr %i.hbv, align 8, !tbaa !230
  %i.hbx = zext i16 %i.hbp to i32
  %i.hby = getelementptr inbounds nuw i8, ptr %i.han, i64 48
  %. = select i1 %.not3570, i64 24, i64 48
  %i.hbz = getelementptr inbounds nuw i8, ptr %i.hbw, i64 %.
  %i.hca = load ptr, ptr %i.hbz, align 8, !tbaa !450
  call void %i.hca(ptr noundef nonnull %i.han, i32 noundef %i.hbx, ptr noundef nonnull %i.hby) #71
  %i.hcb = getelementptr inbounds nuw i8, ptr %i.han, i64 36 ; 3 uses
  %i.hcc = load i32, ptr %i.hcb, align 4, !tbaa !5 ; 2 uses
  %.not3571 = icmp eq i32 %i.hcc, 0
  br i1 %.not3571, label %.critedge, label %bb.aui

bb.aui:                                           ; preds = %.loopexit5526
  %i.hcd = icmp sgt i32 %i.hcc, 0
  br i1 %i.hcd, label %bb.auj, label %bb.aup

bb.auj:                                           ; preds = %bb.aui
  %i.hce = load ptr, ptr %i.han, align 8, !tbaa !288 ; 5 uses
  %.not.i.i4486 = icmp eq ptr %i.hce, null
  br i1 %.not.i.i4486, label %sqlite3_value_text.exit, label %bb.auk

bb.auk:                                           ; preds = %bb.auj
  %i.hcf = getelementptr inbounds nuw i8, ptr %i.hce, i64 20
  %i.hcg = load i16, ptr %i.hcf, align 4, !tbaa !162 ; 2 uses
  %i.hch = and i16 %i.hcg, 514
  %i.hci = icmp eq i16 %i.hch, 514
  br i1 %i.hci, label %bb.aul, label %bb.aun

bb.aul:                                           ; preds = %bb.auk
  %i.hcj = getelementptr inbounds nuw i8, ptr %i.hce, i64 22
  %i.hck = load i8, ptr %i.hcj, align 2, !tbaa !349
  %i.hcl = icmp eq i8 %i.hck, 1
  br i1 %i.hcl, label %bb.aum, label %bb.aun

bb.aum:                                           ; preds = %bb.aul
  %i.hcm = getelementptr inbounds nuw i8, ptr %i.hce, i64 8
  %i.hcn = load ptr, ptr %i.hcm, align 8, !tbaa !289
  br label %sqlite3_value_text.exit

bb.aun:                                           ; preds = %bb.aul, %bb.auk
  %i.hco = and i16 %i.hcg, 1
  %.not9.i.i4487 = icmp eq i16 %i.hco, 0
  br i1 %.not9.i.i4487, label %bb.auo, label %sqlite3_value_text.exit

bb.auo:                                           ; preds = %bb.aun
  %i.hcp = call fastcc ptr @valueToText(ptr noundef nonnull %i.hce, i8 noundef zeroext 1), !inline_history !606
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.auj, %bb.aum, %bb.aun, %bb.auo
  %.0.i.i4488 = phi ptr [ %i.hcn, %bb.aum ], [ null, %bb.auj ], [ %i.hcp, %bb.auo ], [ null, %bb.aun ]
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %.0.i.i4488)
  %i.hcq = load i32, ptr %i.hcb, align 4, !tbaa !5
  br label %bb.aup

bb.aup:                                           ; preds = %sqlite3_value_text.exit, %bb.aui
  %.84 = phi i32 [ %i.hcq, %sqlite3_value_text.exit ], [ %.02973, %bb.aui ] ; 2 uses
  %i.hcr = getelementptr inbounds nuw i8, ptr %i.han, i64 41 ; 2 uses
  %i.hcs = load i8, ptr %i.hcr, align 1, !tbaa !227
  %.not3572 = icmp eq i8 %i.hcs, 0
  br i1 %.not3572, label %bb.auu, label %bb.auq

bb.auq:                                           ; preds = %bb.aup
  %i.hct = getelementptr inbounds i8, ptr %.02963, i64 -20
  %i.hcu = load i32, ptr %i.hct, align 4, !tbaa !584 ; 2 uses
  %.not3573 = icmp eq i32 %i.hcu, 0
  br i1 %.not3573, label %sqlite3VdbeMemSetInt64.exit4490, label %bb.aur

bb.aur:                                           ; preds = %bb.auq
  %i.hcv = sext i32 %i.hcu to i64
  %i.hcw = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.hcv ; 3 uses
  %i.hcx = getelementptr inbounds nuw i8, ptr %i.hcw, i64 20 ; 2 uses
  %i.hcy = load i16, ptr %i.hcx, align 4, !tbaa !162
  %i.hcz = and i16 %i.hcy, -28672
  %.not.i4489 = icmp eq i16 %i.hcz, 0
  br i1 %.not.i4489, label %bb.aut, label %bb.aus

bb.aus:                                           ; preds = %bb.aur
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.hcw, i64 noundef 1)
  br label %sqlite3VdbeMemSetInt64.exit4490

bb.aut:                                           ; preds = %bb.aur
  store i64 1, ptr %i.hcw, align 8, !tbaa !227
  store i16 4, ptr %i.hcx, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetInt64.exit4490

sqlite3VdbeMemSetInt64.exit4490:                  ; preds = %bb.aut, %bb.aus, %bb.auq
  store i8 0, ptr %i.hcr, align 1, !tbaa !227
  br label %bb.auu

bb.auu:                                           ; preds = %sqlite3VdbeMemSetInt64.exit4490, %bb.aup
  %i.hda = load ptr, ptr %i.han, align 8, !tbaa !288 ; 4 uses
  %i.hdb = getelementptr inbounds nuw i8, ptr %i.hda, i64 20
  %i.hdc = load i16, ptr %i.hdb, align 4, !tbaa !162
  %i.hdd = and i16 %i.hdc, -28672
  %.not.i4491 = icmp eq i16 %i.hdd, 0
  br i1 %.not.i4491, label %bb.auv, label %bb.auw

bb.auv:                                           ; preds = %bb.auu
  %i.hde = getelementptr inbounds nuw i8, ptr %i.hda, i64 32
  %i.hdf = load i32, ptr %i.hde, align 8, !tbaa !159
  %.not3.i4492 = icmp eq i32 %i.hdf, 0
  br i1 %.not3.i4492, label %sqlite3VdbeMemRelease.exit4493, label %bb.auw

bb.auw:                                           ; preds = %bb.auv, %bb.auu
  call fastcc void @vdbeMemClear(ptr noundef nonnull %i.hda)
  %.pre7238 = load ptr, ptr %i.han, align 8, !tbaa !288
  br label %sqlite3VdbeMemRelease.exit4493

sqlite3VdbeMemRelease.exit4493:                   ; preds = %bb.auv, %bb.auw
  %i.hdg = phi ptr [ %i.hda, %bb.auv ], [ %.pre7238, %bb.auw ]
  %i.hdh = getelementptr inbounds nuw i8, ptr %i.hdg, i64 20
  store i16 1, ptr %i.hdh, align 4, !tbaa !162
  store i32 0, ptr %i.hcb, align 4, !tbaa !5
  %.not3574 = icmp eq i32 %.84, 0
  br i1 %.not3574, label %.critedge, label %sqlite3VdbeSorterRowkey.exit.loopexit12661

bb.aux:                                           ; preds = %bb.h, %bb.h
  %i.hdi = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.hdj = load i32, ptr %i.hdi, align 4, !tbaa !584
  %i.hdk = sext i32 %i.hdj to i64
  %i.hdl = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.hdk ; 8 uses
  %i.hdm = getelementptr inbounds nuw i8, ptr %.02963, i64 12 ; 2 uses
  %i.hdn = load i32, ptr %i.hdm, align 4, !tbaa !586 ; 2 uses
  %.not3567 = icmp eq i32 %i.hdn, 0
  br i1 %.not3567, label %bb.avb, label %bb.auy

bb.auy:                                           ; preds = %bb.aux
  %i.hdo = sext i32 %i.hdn to i64
  %i.hdp = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.hdo ; 3 uses
  %i.hdq = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.hdr = load ptr, ptr %i.hdq, align 8, !tbaa !227 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  %i.hds = getelementptr inbounds nuw i8, ptr %i.hdp, i64 20 ; 2 uses
  %i.hdt = load i16, ptr %i.hds, align 4, !tbaa !162
  %i.hdu = and i16 %i.hdt, -28672
  %.not.i.i4494 = icmp eq i16 %i.hdu, 0
  br i1 %.not.i.i4494, label %bb.ava, label %bb.auz

bb.auz:                                           ; preds = %bb.auy
  call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.hdp)
  br label %sqlite3VdbeMemAggValue.exit

bb.ava:                                           ; preds = %bb.auy
  store i16 1, ptr %i.hds, align 4, !tbaa !162
  br label %sqlite3VdbeMemAggValue.exit

sqlite3VdbeMemAggValue.exit:                      ; preds = %bb.auz, %bb.ava
  store ptr %i.hdp, ptr %3, align 8, !tbaa !288
  store ptr %i.hdl, ptr %i.dd, align 8, !tbaa !288
  store ptr %i.hdr, ptr %i.de, align 8, !tbaa !230
  %i.hdv = getelementptr inbounds nuw i8, ptr %i.hdl, i64 24
  %i.hdw = load ptr, ptr %i.hdv, align 8, !tbaa !157
  %i.hdx = getelementptr inbounds nuw i8, ptr %i.hdw, i64 100
  %i.hdy = load i8, ptr %i.hdx, align 4, !tbaa !844
  store i8 %i.hdy, ptr %i.df, align 8, !tbaa !227
  %i.hdz = getelementptr inbounds nuw i8, ptr %i.hdr, i64 40
  %i.hea = load ptr, ptr %i.hdz, align 8, !tbaa !1265
  call void %i.hea(ptr noundef nonnull %3) #71, !inline_history !2841
  %i.heb = load i32, ptr %i.dg, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #71
  %i.hec = load i32, ptr %i.hdm, align 4, !tbaa !586
end_hunk_0
begin_hunk_1_@sqlite3VdbeExec:bb.a
  br label %.loopexit5531

.thread5459:                                      ; preds = %bb.bcg, %bb.bcf
  %i.ijq = load i64, ptr %i.bw, align 8, !tbaa !615
  %i.ijr = add nsw i64 %i.ijq, 1
  store i64 %i.ijr, ptr %i.bw, align 8, !tbaa !615
  br label %.thread5387

bb.bcl:                                           ; preds = %bb.bch, %bb.bci
  %i.ijs = load i64, ptr %i.bw, align 8, !tbaa !615
  %i.ijt = add nsw i64 %i.ijs, 1
  store i64 %i.ijt, ptr %i.bw, align 8, !tbaa !615
  br label %.loopexit5531

.thread5387:                                      ; preds = %bb.bcj, %bb.bcd, %.thread5459
  %.105.ph = phi i32 [ %.02973, %bb.bcd ], [ 0, %.thread5459 ], [ 0, %bb.bcj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #71
  br label %.critedge

.loopexit5531:                                    ; preds = %bb.bcb, %bb.bcc, %bb.bcl, %.thread5454
  %.105 = phi i32 [ %i.ijc, %bb.bcl ], [ %i.ijc, %.thread5454 ], [ 6, %bb.bcc ], [ 6, %bb.bcb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #71
  br label %sqlite3VdbeSorterRowkey.exit

bb.bcm:                                           ; preds = %bb.h
  %.val4074 = load ptr, ptr %i.aq, align 8, !tbaa !544
  %i.iju = getelementptr i8, ptr %.02963, i64 8
  %.02963.val4075 = load i32, ptr %i.iju, align 8, !tbaa !585
  %i.ijv = sext i32 %.02963.val4075 to i64
  %i.ijw = getelementptr inbounds [56 x i8], ptr %.val4074, i64 %i.ijv ; 3 uses
  %i.ijx = getelementptr inbounds nuw i8, ptr %i.ijw, i64 20 ; 2 uses
  %i.ijy = load i16, ptr %i.ijx, align 4, !tbaa !162
  %i.ijz = and i16 %i.ijy, -28672
  %.not.i4612 = icmp eq i16 %i.ijz, 0
  br i1 %.not.i4612, label %bb.bco, label %bb.bcn

bb.bcn:                                           ; preds = %bb.bcm
  %i.ika = call fastcc ptr @out2PrereleaseWithClear(ptr noundef nonnull %i.ijw) ; 0 uses
  br label %out2Prerelease.exit4613

bb.bco:                                           ; preds = %bb.bcm
  store i16 4, ptr %i.ijx, align 4, !tbaa !162
  br label %out2Prerelease.exit4613

out2Prerelease.exit4613:                          ; preds = %bb.bcn, %bb.bco
  %i.ikb = load ptr, ptr %i.br, align 8, !tbaa !61
  %i.ikc = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.ikd = load i32, ptr %i.ikc, align 4, !tbaa !584
  %i.ike = sext i32 %i.ikd to i64
  %i.ikf = getelementptr inbounds [32 x i8], ptr %i.ikb, i64 %i.ike
  %i.ikg = getelementptr inbounds nuw i8, ptr %i.ikf, i64 8
  %i.ikh = load ptr, ptr %i.ikg, align 8, !tbaa !62
  %i.iki = getelementptr i8, ptr %i.ikh, i64 8
  %.val4069 = load ptr, ptr %i.iki, align 8, !tbaa !67
  %i.ikj = getelementptr i8, ptr %.val4069, i64 64
  %.val4069.val = load i32, ptr %i.ikj, align 8, !tbaa !668
  %i.ikk = zext i32 %.val4069.val to i64
  store i64 %i.ikk, ptr %i.ijw, align 8, !tbaa !227
  br label %.critedge

bb.bcp:                                           ; preds = %bb.h
  %.val4073 = load ptr, ptr %i.aq, align 8, !tbaa !544
  %i.ikl = getelementptr i8, ptr %.02963, i64 8
  %.02963.val = load i32, ptr %i.ikl, align 8, !tbaa !585
  %i.ikm = sext i32 %.02963.val to i64
  %i.ikn = getelementptr inbounds [56 x i8], ptr %.val4073, i64 %i.ikm ; 3 uses
  %i.iko = getelementptr inbounds nuw i8, ptr %i.ikn, i64 20 ; 2 uses
  %i.ikp = load i16, ptr %i.iko, align 4, !tbaa !162
  %i.ikq = and i16 %i.ikp, -28672
  %.not.i4614 = icmp eq i16 %i.ikq, 0
  br i1 %.not.i4614, label %bb.bcr, label %bb.bcq

bb.bcq:                                           ; preds = %bb.bcp
  %i.ikr = call fastcc ptr @out2PrereleaseWithClear(ptr noundef nonnull %i.ikn) ; 0 uses
  br label %out2Prerelease.exit4615

bb.bcr:                                           ; preds = %bb.bcp
  store i16 4, ptr %i.iko, align 4, !tbaa !162
  br label %out2Prerelease.exit4615

out2Prerelease.exit4615:                          ; preds = %bb.bcq, %bb.bcr
  %i.iks = load ptr, ptr %i.br, align 8, !tbaa !61
  %i.ikt = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.iku = load i32, ptr %i.ikt, align 4, !tbaa !584
  %i.ikv = sext i32 %i.iku to i64
  %i.ikw = getelementptr inbounds [32 x i8], ptr %i.iks, i64 %i.ikv
  %i.ikx = getelementptr inbounds nuw i8, ptr %i.ikw, i64 8
  %i.iky = load ptr, ptr %i.ikx, align 8, !tbaa !62 ; 8 uses
  %i.ikz = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.ila = load i32, ptr %i.ikz, align 4, !tbaa !586 ; 2 uses
  %.not3527 = icmp eq i32 %i.ila, 0
  br i1 %.not3527, label %bb.bct, label %bb.bcs

bb.bcs:                                           ; preds = %out2Prerelease.exit4615
  %i.ilb = getelementptr i8, ptr %i.iky, i64 8
  %.val4068 = load ptr, ptr %i.ilb, align 8, !tbaa !67
  %i.ilc = getelementptr i8, ptr %.val4068, i64 64
  %.val4068.val = load i32, ptr %i.ilc, align 8, !tbaa !668
  %spec.select4043 = call i32 @llvm.umax.i32(i32 %.val4068.val, i32 %i.ila)
  br label %bb.bct

bb.bct:                                           ; preds = %bb.bcs, %out2Prerelease.exit4615
  %.03010 = phi i32 [ 0, %out2Prerelease.exit4615 ], [ %spec.select4043, %bb.bcs ] ; 3 uses
  %i.ild = getelementptr inbounds nuw i8, ptr %i.iky, i64 17 ; 2 uses
  %i.ile = load i8, ptr %i.ild, align 1, !tbaa !592
  %.not.i.i4616 = icmp eq i8 %i.ile, 0
  br i1 %.not.i.i4616, label %sqlite3BtreeEnter.exit.i4618, label %bb.bcu

bb.bcu:                                           ; preds = %bb.bct
  %i.ilf = getelementptr inbounds nuw i8, ptr %i.iky, i64 20 ; 2 uses
  %i.ilg = load i32, ptr %i.ilf, align 4, !tbaa !593
  %i.ilh = add nsw i32 %i.ilg, 1
  store i32 %i.ilh, ptr %i.ilf, align 4, !tbaa !593
  %i.ili = getelementptr inbounds nuw i8, ptr %i.iky, i64 18
  %i.ilj = load i8, ptr %i.ili, align 2, !tbaa !594
  %.not4.i.i4617 = icmp eq i8 %i.ilj, 0
  br i1 %.not4.i.i4617, label %bb.bcv, label %sqlite3BtreeEnter.exit.i4618

bb.bcv:                                           ; preds = %bb.bcu
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.iky)
  br label %sqlite3BtreeEnter.exit.i4618

sqlite3BtreeEnter.exit.i4618:                     ; preds = %bb.bcv, %bb.bcu, %bb.bct
  %i.ilk = getelementptr inbounds nuw i8, ptr %i.iky, i64 8
  %i.ill = load ptr, ptr %i.ilk, align 8, !tbaa !67
  %i.ilm = load ptr, ptr %i.ill, align 8, !tbaa !73
  %.not.i4.i = icmp eq i32 %.03010, 0
  %.phi.trans.insert.i.i4619 = getelementptr inbounds nuw i8, ptr %i.ilm, i64 188 ; 2 uses
  br i1 %.not.i4.i, label %._crit_edge.i.i4620, label %bb.bcw

._crit_edge.i.i4620:                              ; preds = %sqlite3BtreeEnter.exit.i4618
  %.pre.i.i4621 = load i32, ptr %.phi.trans.insert.i.i4619, align 4, !tbaa !2021
  br label %sqlite3PagerMaxPageCount.exit.i

bb.bcw:                                           ; preds = %sqlite3BtreeEnter.exit.i4618
  store i32 %.03010, ptr %.phi.trans.insert.i.i4619, align 4, !tbaa !2021
  br label %sqlite3PagerMaxPageCount.exit.i

sqlite3PagerMaxPageCount.exit.i:                  ; preds = %bb.bcw, %._crit_edge.i.i4620
  %i.iln = phi i32 [ %.pre.i.i4621, %._crit_edge.i.i4620 ], [ %.03010, %bb.bcw ]
  %i.ilo = load i8, ptr %i.ild, align 1, !tbaa !592
  %.not.i5.i = icmp eq i8 %i.ilo, 0
  br i1 %.not.i5.i, label %sqlite3BtreeMaxPageCount.exit, label %bb.bcx

bb.bcx:                                           ; preds = %sqlite3PagerMaxPageCount.exit.i
  %i.ilp = getelementptr inbounds nuw i8, ptr %i.iky, i64 20 ; 2 uses
  %i.ilq = load i32, ptr %i.ilp, align 4, !tbaa !593
  %i.ilr = add nsw i32 %i.ilq, -1                 ; 2 uses
  store i32 %i.ilr, ptr %i.ilp, align 4, !tbaa !593
  %i.ils = icmp eq i32 %i.ilr, 0
  br i1 %i.ils, label %bb.bcy, label %sqlite3BtreeMaxPageCount.exit

bb.bcy:                                           ; preds = %bb.bcx
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.iky)
  br label %sqlite3BtreeMaxPageCount.exit

sqlite3BtreeMaxPageCount.exit:                    ; preds = %sqlite3PagerMaxPageCount.exit.i, %bb.bcx, %bb.bcy
  %i.ilt = zext i32 %i.iln to i64
  store i64 %i.ilt, ptr %i.ikn, align 8, !tbaa !227
  br label %.critedge

bb.bcz:                                           ; preds = %bb.h, %bb.h
  %i.ilu = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.ilv = load ptr, ptr %i.ilu, align 8, !tbaa !227 ; 12 uses
  %i.ilw = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.ilx = load i32, ptr %i.ilw, align 4, !tbaa !586
  %i.ily = sext i32 %i.ilx to i64
  %i.ilz = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.ily ; 6 uses
  %i.ima = load ptr, ptr %i.ilv, align 8, !tbaa !288
  %.not3524 = icmp eq ptr %i.ima, %i.ilz
  br i1 %.not3524, label %.loopexit5529, label %bb.bda

bb.bda:                                           ; preds = %bb.bcz
  %i.imb = getelementptr inbounds nuw i8, ptr %i.ilv, i64 24
  store ptr %0, ptr %i.imb, align 8, !tbaa !128
  store ptr %i.ilz, ptr %i.ilv, align 8, !tbaa !288
  %i.imc = getelementptr inbounds nuw i8, ptr %i.ilv, i64 40
  store i8 %i.ap, ptr %i.imc, align 8, !tbaa !227
  %i.imd = getelementptr inbounds nuw i8, ptr %i.ilv, i64 42
  %i.ime = load i16, ptr %i.imd, align 2, !tbaa !330 ; 3 uses
  %.not6386 = icmp eq i16 %i.ime, 0
  br i1 %.not6386, label %.loopexit5529, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bda
  %i.imf = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.img = load i32, ptr %i.imf, align 8, !tbaa !585
  %i.imh = getelementptr inbounds nuw i8, ptr %i.ilv, i64 48 ; 2 uses
  %i.imi = zext i16 %i.ime to i64                 ; 5 uses
  %i.imj = sext i32 %i.img to i64
  %invariant.gep = getelementptr [56 x i8], ptr %.03021, i64 %i.imj ; 3 uses
  %min.iters.check12618 = icmp ult i16 %i.ime, 4
  br i1 %min.iters.check12618, label %scalar.ph12617.preheader, label %vector.ph12619

vector.ph12619:                                   ; preds = %.lr.ph
  %n.vec12621 = and i64 %i.imi, 65532             ; 2 uses
  %i.imk = and i64 %i.imi, 3
  br label %vector.body12622

vector.body12622:                                 ; preds = %vector.body12622, %vector.ph12619
  %index12623 = phi i64 [ 0, %vector.ph12619 ], [ %index.next12626, %vector.body12622 ] ; 2 uses
  %i.iml = sub i64 %i.imi, %index12623            ; 4 uses
  %i.imm = add nsw i64 %i.iml, -1                 ; 2 uses
  %i.imn = add i64 %i.iml, -2
  %i.imo = insertelement <2 x i64> poison, i64 %i.imm, i64 0
  %i.imp = insertelement <2 x i64> %i.imo, i64 %i.imn, i64 1
  %24 = add i64 %i.iml, -3
  %25 = add i64 %i.iml, -4
  %26 = insertelement <2 x i64> poison, i64 %24, i64 0
  %27 = insertelement <2 x i64> %26, i64 %25, i64 1
  %i.imq = getelementptr [56 x i8], ptr %invariant.gep, <2 x i64> %i.imp
  %i.imr = getelementptr [56 x i8], ptr %invariant.gep, <2 x i64> %27
  %i.ims = getelementptr inbounds nuw [8 x i8], ptr %i.imh, i64 %i.imm ; 2 uses
  %i.imt = getelementptr inbounds i8, ptr %i.ims, i64 -8
  %i.imu = getelementptr inbounds i8, ptr %i.ims, i64 -24
  %reverse12624 = shufflevector <2 x ptr> %i.imq, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse12625 = shufflevector <2 x ptr> %i.imr, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse12624, ptr %i.imt, align 8, !tbaa !288
  store <2 x ptr> %reverse12625, ptr %i.imu, align 8, !tbaa !288
  %index.next12626 = add nuw i64 %index12623, 4   ; 2 uses
  %i.imv = icmp eq i64 %index.next12626, %n.vec12621
  br i1 %i.imv, label %middle.block12627, label %vector.body12622, !llvm.loop !2868

middle.block12627:                                ; preds = %vector.body12622
  %cmp.n12628 = icmp eq i64 %n.vec12621, %i.imi
  br i1 %cmp.n12628, label %.loopexit5529, label %scalar.ph12617.preheader

scalar.ph12617.preheader:                         ; preds = %.lr.ph, %middle.block12627
  %indvars.iv.ph = phi i64 [ %i.imi, %.lr.ph ], [ %i.imk, %middle.block12627 ]
  br label %scalar.ph12617

scalar.ph12617:                                   ; preds = %scalar.ph12617.preheader, %scalar.ph12617
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph12617 ], [ %indvars.iv.ph, %scalar.ph12617.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %gep = getelementptr [56 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.imw = getelementptr inbounds nuw [8 x i8], ptr %i.imh, i64 %indvars.iv.next
  store ptr %gep, ptr %i.imw, align 8, !tbaa !288
  %i.imx = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.imx, label %scalar.ph12617, label %.loopexit5529, !llvm.loop !2869

.loopexit5529:                                    ; preds = %scalar.ph12617, %middle.block12627, %bb.bda, %bb.bcz
  %i.imy = getelementptr inbounds nuw i8, ptr %i.ilz, i64 20 ; 3 uses
  %i.imz = load i16, ptr %i.imy, align 4, !tbaa !162
  %i.ina = and i16 %i.imz, -3520
  %i.inb = or disjoint i16 %i.ina, 1
  store i16 %i.inb, ptr %i.imy, align 4, !tbaa !162
  %i.inc = getelementptr inbounds nuw i8, ptr %i.ilv, i64 8
  %i.ind = load ptr, ptr %i.inc, align 8, !tbaa !230
  %i.ine = getelementptr inbounds nuw i8, ptr %i.ind, i64 24
  %i.inf = load ptr, ptr %i.ine, align 8, !tbaa !1263
  %i.ing = getelementptr inbounds nuw i8, ptr %i.ilv, i64 42
  %i.inh = load i16, ptr %i.ing, align 2, !tbaa !330
  %i.ini = zext i16 %i.inh to i32
  %i.inj = getelementptr inbounds nuw i8, ptr %i.ilv, i64 48
  call void %i.inf(ptr noundef nonnull %i.ilv, i32 noundef %i.ini, ptr noundef nonnull %i.inj) #71
  %i.ink = getelementptr inbounds nuw i8, ptr %i.ilv, i64 36 ; 3 uses
  %i.inl = load i32, ptr %i.ink, align 4, !tbaa !5 ; 2 uses
  %.not3525 = icmp eq i32 %i.inl, 0
  br i1 %.not3525, label %.critedge, label %bb.bdb

bb.bdb:                                           ; preds = %.loopexit5529
  %i.inm = icmp sgt i32 %i.inl, 0
  br i1 %i.inm, label %bb.bdc, label %bb.bdh

bb.bdc:                                           ; preds = %bb.bdb
  %i.inn = load i16, ptr %i.imy, align 4, !tbaa !162 ; 2 uses
  %i.ino = and i16 %i.inn, 514
  %i.inp = icmp eq i16 %i.ino, 514
  br i1 %i.inp, label %bb.bdd, label %bb.bdf

bb.bdd:                                           ; preds = %bb.bdc
  %i.inq = getelementptr inbounds nuw i8, ptr %i.ilz, i64 22
  %i.inr = load i8, ptr %i.inq, align 2, !tbaa !349
  %i.ins = icmp eq i8 %i.inr, 1
  br i1 %i.ins, label %bb.bde, label %bb.bdf

bb.bde:                                           ; preds = %bb.bdd
  %i.int = getelementptr inbounds nuw i8, ptr %i.ilz, i64 8
  %i.inu = load ptr, ptr %i.int, align 8, !tbaa !289
  br label %sqlite3_value_text.exit4625

bb.bdf:                                           ; preds = %bb.bdd, %bb.bdc
  %i.inv = and i16 %i.inn, 1
  %.not9.i.i4623 = icmp eq i16 %i.inv, 0
  br i1 %.not9.i.i4623, label %bb.bdg, label %sqlite3_value_text.exit4625

bb.bdg:                                           ; preds = %bb.bdf
  %i.inw = call fastcc ptr @valueToText(ptr noundef nonnull %i.ilz, i8 noundef zeroext 1), !inline_history !606
  br label %sqlite3_value_text.exit4625

sqlite3_value_text.exit4625:                      ; preds = %bb.bde, %bb.bdf, %bb.bdg
  %.0.i.i4624 = phi ptr [ %i.inu, %bb.bde ], [ null, %bb.bdf ], [ %i.inw, %bb.bdg ]
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %.0.i.i4624)
  %i.inx = load i32, ptr %i.ink, align 4, !tbaa !5
  br label %bb.bdh

bb.bdh:                                           ; preds = %sqlite3_value_text.exit4625, %bb.bdb
  %.106 = phi i32 [ %i.inx, %sqlite3_value_text.exit4625 ], [ %.02973, %bb.bdb ] ; 2 uses
  %i.iny = getelementptr inbounds nuw i8, ptr %i.ilv, i64 32
  %i.inz = load i32, ptr %i.iny, align 8, !tbaa !5 ; 2 uses
  %i.ioa = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.iob = load i32, ptr %i.ioa, align 4, !tbaa !584
  %i.ioc = load ptr, ptr %i.bq, align 8, !tbaa !824 ; 3 uses
  %.not22.i4626 = icmp eq ptr %i.ioc, null
  br i1 %.not22.i4626, label %sqlite3VdbeDeleteAuxData.exit, label %.lr.ph.i4627

.lr.ph.i4627:                                     ; preds = %bb.bdh
  %i.iod = icmp slt i32 %i.inz, 0
  br i1 %i.iod, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i4627, %sqlite3DbFree.exit.us.i
  %i.ioe = phi ptr [ %i.iol, %sqlite3DbFree.exit.us.i ], [ %i.ioc, %.lr.ph.i4627 ] ; 4 uses
  %i.iof = getelementptr inbounds nuw i8, ptr %i.ioe, i64 16
  %i.iog = load ptr, ptr %i.iof, align 8, !tbaa !853 ; 2 uses
  %.not21.us.i = icmp eq ptr %i.iog, null
  br i1 %.not21.us.i, label %sqlite3DbFree.exit.us.i, label %bb.bdi

bb.bdi:                                           ; preds = %.lr.ph.split.us.i
  %i.ioh = getelementptr inbounds nuw i8, ptr %i.ioe, i64 8
  %i.ioi = load ptr, ptr %i.ioh, align 8, !tbaa !849
  call void %i.iog(ptr noundef %i.ioi) #71, !inline_history !2446
  br label %sqlite3DbFree.exit.us.i

sqlite3DbFree.exit.us.i:                          ; preds = %bb.bdi, %.lr.ph.split.us.i
  %i.ioj = getelementptr inbounds nuw i8, ptr %i.ioe, i64 24
  %i.iok = load ptr, ptr %i.ioj, align 8, !tbaa !852
  store ptr %i.iok, ptr %i.bq, align 8, !tbaa !824
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.an, ptr noundef nonnull %i.ioe)
  %i.iol = load ptr, ptr %i.bq, align 8, !tbaa !824 ; 2 uses
  %.not.us.i = icmp eq ptr %i.iol, null
  br i1 %.not.us.i, label %sqlite3VdbeDeleteAuxData.exit, label %.lr.ph.split.us.i, !llvm.loop !2413

.lr.ph.split.i:                                   ; preds = %.lr.ph.i4627, %bb.bdp
  %i.iom = phi ptr [ %i.ipc, %bb.bdp ], [ %i.ioc, %.lr.ph.i4627 ] ; 7 uses
  %.023.i4628 = phi ptr [ %.1.i4629, %bb.bdp ], [ %i.bq, %.lr.ph.i4627 ] ; 2 uses
  %i.ion = load i32, ptr %i.iom, align 8, !tbaa !848
  %i.ioo = icmp eq i32 %i.ion, %i.inz
  br i1 %i.ioo, label %bb.bdj, label %bb.bdo

bb.bdj:                                           ; preds = %.lr.ph.split.i
  %i.iop = getelementptr inbounds nuw i8, ptr %i.iom, i64 4
  %i.ioq = load i32, ptr %i.iop, align 4, !tbaa !845 ; 3 uses
  %i.ior = icmp sgt i32 %i.ioq, -1
  br i1 %i.ior, label %bb.bdk, label %bb.bdo

bb.bdk:                                           ; preds = %bb.bdj
  %i.ios = icmp samesign ugt i32 %i.ioq, 31
  br i1 %i.ios, label %bb.bdm, label %bb.bdl

bb.bdl:                                           ; preds = %bb.bdk
  %i.iot = shl nuw i32 1, %i.ioq
  %i.iou = and i32 %i.iot, %i.iob
  %.not20.i = icmp eq i32 %i.iou, 0
  br i1 %.not20.i, label %bb.bdm, label %bb.bdo

bb.bdm:                                           ; preds = %bb.bdl, %bb.bdk
  %i.iov = getelementptr inbounds nuw i8, ptr %i.iom, i64 16
  %i.iow = load ptr, ptr %i.iov, align 8, !tbaa !853 ; 2 uses
  %.not21.i4632 = icmp eq ptr %i.iow, null
  br i1 %.not21.i4632, label %sqlite3DbFree.exit.i, label %bb.bdn

bb.bdn:                                           ; preds = %bb.bdm
  %i.iox = getelementptr inbounds nuw i8, ptr %i.iom, i64 8
  %i.ioy = load ptr, ptr %i.iox, align 8, !tbaa !849
  call void %i.iow(ptr noundef %i.ioy) #71, !inline_history !2446
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %bb.bdn, %bb.bdm
  %i.ioz = getelementptr inbounds nuw i8, ptr %i.iom, i64 24
  %i.ipa = load ptr, ptr %i.ioz, align 8, !tbaa !852
  store ptr %i.ipa, ptr %.023.i4628, align 8, !tbaa !824
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.an, ptr noundef nonnull %i.iom)
  br label %bb.bdp

bb.bdo:                                           ; preds = %bb.bdl, %bb.bdj, %.lr.ph.split.i
  %i.ipb = getelementptr inbounds nuw i8, ptr %i.iom, i64 24
  br label %bb.bdp

bb.bdp:                                           ; preds = %bb.bdo, %sqlite3DbFree.exit.i
  %.1.i4629 = phi ptr [ %.023.i4628, %sqlite3DbFree.exit.i ], [ %i.ipb, %bb.bdo ] ; 2 uses
  %i.ipc = load ptr, ptr %.1.i4629, align 8, !tbaa !824 ; 2 uses
  %.not.i4630 = icmp eq ptr %i.ipc, null
  br i1 %.not.i4630, label %sqlite3VdbeDeleteAuxData.exit, label %.lr.ph.split.i, !llvm.loop !2413

sqlite3VdbeDeleteAuxData.exit:                    ; preds = %bb.bdp, %sqlite3DbFree.exit.us.i, %bb.bdh
  store i32 0, ptr %i.ink, align 4, !tbaa !5
  %.not3526 = icmp eq i32 %.106, 0
  br i1 %.not3526, label %.critedge, label %sqlite3VdbeSorterRowkey.exit.loopexit12661

bb.bdq:                                           ; preds = %bb.h
  %i.ipd = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.ipe = load i32, ptr %i.ipd, align 4, !tbaa !584
  %i.ipf = sext i32 %i.ipe to i64
  %i.ipg = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.ipf
  %i.iph = getelementptr inbounds nuw i8, ptr %i.ipg, i64 20 ; 2 uses
  %i.ipi = load i16, ptr %i.iph, align 4, !tbaa !162
  %i.ipj = and i16 %i.ipi, -2049
  store i16 %i.ipj, ptr %i.iph, align 4, !tbaa !162
  br label %.critedge

bb.bdr:                                           ; preds = %bb.h
  %i.ipk = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.ipl = load i32, ptr %i.ipk, align 4, !tbaa !584
  %i.ipm = sext i32 %i.ipl to i64
  %i.ipn = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.ipm ; 2 uses
  %i.ipo = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.ipp = load i32, ptr %i.ipo, align 8, !tbaa !585
  %i.ipq = sext i32 %i.ipp to i64
  %i.ipr = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.ipq ; 5 uses
  %i.ips = getelementptr inbounds nuw i8, ptr %i.ipn, i64 20
  %i.ipt = load i16, ptr %i.ips, align 4, !tbaa !162
  %i.ipu = and i16 %i.ipt, 2048
end_hunk_1
