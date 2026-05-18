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
  %i.hbc = sub i64 %i.haz, %index12587            ; 3 uses
  %i.hbd = add nsw i64 %i.hbc, -1                 ; 2 uses
  %i.hbe = add i64 %i.hbc, -2
  %i.hbf = insertelement <2 x i64> poison, i64 %i.hbd, i64 0
  %i.hbg = insertelement <2 x i64> %i.hbf, i64 %i.hbe, i64 1
  %20 = insertelement <2 x i64> poison, i64 %i.hbc, i64 0
  %21 = shufflevector <2 x i64> %20, <2 x i64> poison, <2 x i32> zeroinitializer
  %22 = add <2 x i64> %21, <i64 -3, i64 -4>
  %i.hbh = getelementptr [56 x i8], ptr %invariant.gep8625, <2 x i64> %i.hbg
  %i.hbi = getelementptr [56 x i8], ptr %invariant.gep8625, <2 x i64> %22
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
  %i.iml = sub i64 %i.imi, %index12623            ; 3 uses
  %i.imm = add nsw i64 %i.iml, -1                 ; 2 uses
  %i.imn = add i64 %i.iml, -2
  %i.imo = insertelement <2 x i64> poison, i64 %i.imm, i64 0
  %i.imp = insertelement <2 x i64> %i.imo, i64 %i.imn, i64 1
  %23 = insertelement <2 x i64> poison, i64 %i.iml, i64 0
  %24 = shufflevector <2 x i64> %23, <2 x i64> poison, <2 x i32> zeroinitializer
  %25 = add <2 x i64> %24, <i64 -3, i64 -4>
  %i.imq = getelementptr [56 x i8], ptr %invariant.gep, <2 x i64> %i.imp
  %i.imr = getelementptr [56 x i8], ptr %invariant.gep, <2 x i64> %25
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
begin_hunk_2_@whereLoopOutputAdjust:bb.a
  %i.ew = load i8, ptr %.0.i.3.i, align 1, !tbaa !227 ; 3 uses
  %i.ex = load i8, ptr %.013.i.3.i, align 1, !tbaa !227 ; 2 uses
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %bb.an, label %bb.am

bb.am:                                            ; preds = %sqlite3StrICmp.exit.2.i
  %i.ez = zext i8 %i.ew to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !227
  %i.fc = zext i8 %i.ex to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !227
  %.not.i.3.i = icmp eq i8 %i.fb, %i.fe
  br i1 %.not.i.3.i, label %bb.ao, label %.thread

bb.an:                                            ; preds = %sqlite3StrICmp.exit.2.i
  %i.ff = icmp eq i8 %i.ew, 0
  br i1 %i.ff, label %sqlite3ExprIsLikeOperator.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.3.i, i64 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.3.i, i64 1
  br label %sqlite3StrICmp.exit.2.i

sqlite3ExprIsLikeOperator.exit:                   ; preds = %bb.ad, %bb.ah, %bb.ak, %bb.an
  %.lcssa8.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @sqlite3ExprIsLikeOperator.aOp, i64 16), %bb.ah ], [ getelementptr inbounds nuw (i8, ptr @sqlite3ExprIsLikeOperator.aOp, i64 32), %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @sqlite3ExprIsLikeOperator.aOp, i64 48), %bb.an ], [ @sqlite3ExprIsLikeOperator.aOp, %bb.ad ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.lcssa8.i, i64 8
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !4573 ; 2 uses
  %.not75 = icmp eq i8 %i.fj, 0
  br i1 %.not75, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %sqlite3ExprIsLikeOperator.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !227
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !902 ; 2 uses
  %i.fo = icmp eq i8 %i.fj, 65
  %i.fp = zext i1 %i.fo to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #71
  store i32 0, ptr %i.q, align 8, !tbaa !227
  store i16 %i.fp, ptr %i.r, align 4, !tbaa !3505
  store <2 x ptr> <ptr @exprNodePatternLengthEst, ptr @sqlite3SelectWalkFail>, ptr %i.s, align 8, !tbaa !450
  %.not.i.i76 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i76, label %estLikePatternLength.exit.thread, label %estLikePatternLength.exit

estLikePatternLength.exit.thread:                 ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #71
  br label %.thread

estLikePatternLength.exit:                        ; preds = %bb.ap
  %i.fq = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %3, ptr noundef nonnull %i.fn) #74, !inline_history !3510 ; 0 uses
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !227 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #71
  %i.fr = icmp sgt i32 %.pre.i, 0
  br i1 %i.fr, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %estLikePatternLength.exit
  %i.fs = load i16, ptr %i.p, align 2, !tbaa !4304
  %.tr = trunc i32 %.pre.i to i16
  %i.ft = shl i16 %.tr, 1
  %i.fu = sub i16 %i.fs, %i.ft
  store i16 %i.fu, ptr %i.p, align 2, !tbaa !4304
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.am, %estLikePatternLength.exit.thread, %bb.y, %bb.aa, %bb.z, %estLikePatternLength.exit, %bb.aq, %sqlite3ExprIsLikeOperator.exit, %bb.u, %bb.d, %bb.c, %bb.b
  %.3 = phi i16 [ %.06487, %bb.b ], [ %.06487, %bb.c ], [ %.06487, %bb.d ], [ %.06487, %bb.u ], [ %.06487, %estLikePatternLength.exit.thread ], [ %.1, %bb.y ], [ %.06487, %bb.z ], [ %.06487, %bb.aa ], [ %.06487, %estLikePatternLength.exit ], [ %.06487, %bb.aq ], [ %.06487, %sqlite3ExprIsLikeOperator.exit ], [ %.06487, %bb.am ], [ %.06487, %bb.i ], [ %.06487, %bb.g ] ; 2 uses
  %i.fv = add nsw i32 %.06288, -1
  %i.fw = getelementptr inbounds nuw i8, ptr %.089, i64 56
  %i.fx = icmp sgt i32 %.06288, 1
  br i1 %i.fx, label %bb.b, label %._crit_edge92.loopexit, !llvm.loop !4658

._crit_edge92.loopexit:                           ; preds = %.thread
  %i.fy = zext nneg i16 %.3 to i32
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %bb.a
  %.064.lcssa = phi i32 [ 0, %bb.a ], [ %i.fy, %._crit_edge92.loopexit ]
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !4304
  %i.gb = sext i16 %i.ga to i32
  %i.gc = sext i16 %2 to i32
  %i.gd = sub nsw i32 %i.gc, %.064.lcssa          ; 2 uses
  %i.ge = icmp slt i32 %i.gd, %i.gb
  br i1 %i.ge, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge92
  %i.gf = trunc i32 %i.gd to i16
  store i16 %i.gf, ptr %i.fz, align 2, !tbaa !4304
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge92
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 67108865) i32 @whereIsCoveringIndex(ptr %.32.val, ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.CoveringIndexCheck, align 8 ; 7 uses
  %3 = alloca %struct.Walker, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #71
  %i.a = icmp eq ptr %.32.val, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2048
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i16, ptr %i.f, align 8, !tbaa !875  ; 2 uses
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !878
  %wide.trip.count = zext i16 %i.g to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !4659

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !330
  %i.l = icmp sgt i16 %i.k, 62
  br i1 %i.l, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.d, %bb.b
  store ptr %0, ptr %2, align 8, !tbaa !4660
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %1, ptr %i.m, align 8, !tbaa !4662
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i8 0, ptr %i.n, align 4, !tbaa !4663
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 2 uses
  store i8 0, ptr %i.o, align 1, !tbaa !4664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @whereIsCoveringIndexWalkCallback, ptr %i.p, align 8, !tbaa !3508
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @sqlite3SelectWalkNoop, ptr %i.q, align 8, !tbaa !3509
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.r, align 8, !tbaa !227
  %i.s = call fastcc i32 @sqlite3WalkSelect(ptr noundef nonnull %3, ptr noundef nonnull %.32.val) ; 0 uses
  %i.t = load i8, ptr %i.o, align 1, !tbaa !4664
  %.not15 = icmp eq i8 %i.t, 0
  %i.u = load i8, ptr %i.n, align 4
  %.not16 = icmp eq i8 %i.u, 0
  %. = select i1 %.not16, i32 64, i32 67108864
  %.0 = select i1 %.not15, i32 %., i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a, %.thread
  %.014 = phi i32 [ %.0, %.thread ], [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #71
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddBtreeIndex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i16 noundef signext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.WhereScan, align 8          ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4262
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !820  ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !651  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4266 ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !313
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !302
  br label %bb.em

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 22 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !4272 ; 4 uses
  %i.l = and i32 %i.k, 32
  %.not323 = icmp eq i32 %i.l, 0
  %. = select i1 %.not323, i32 447, i32 24        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 99 ; 6 uses
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, 4
  %.not324 = icmp eq i16 %i.o, 0
  %i.p = and i32 %., 387
  %.1 = select i1 %.not324, i32 %., i32 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 54 ; 3 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !4286 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 13 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !4270 ; 6 uses
  %i.x = load i64, ptr %i.e, align 8, !tbaa !4459 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 22 ; 15 uses
  %i.z = load <4 x i16>, ptr %i.y, align 2, !tbaa !227 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !4265 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3555
  %i.ae = extractelement <4 x i16> %i.z, i64 1    ; 6 uses
  %i.af = zext i16 %i.ae to i32                   ; 4 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !4287
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !4289
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !4290
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store i32 %.1, ptr %i.ak, align 4, !tbaa !4291
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.al, align 8, !tbaa !4292
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.ad, ptr %i.am, align 4, !tbaa !5
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 42
  store i8 1, ptr %i.an, align 2, !tbaa !4293
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 41 ; 2 uses
  store i8 1, ptr %i.ao, align 1, !tbaa !4294
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !878
  %i.ar = zext i16 %i.ae to i64                   ; 11 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !330 ; 6 uses
  %i.au = sext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1098 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !891
  %i.az = icmp eq i16 %i.at, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = icmp sgt i16 %i.at, -1
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !882
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.au
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !905
  store i8 %i.bf, ptr %i.ai, align 8, !tbaa !4290
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2803
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.ar
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !251
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !4298
  br label %.thread.i

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp eq i16 %i.at, -2
  br i1 %i.bk, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2799
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.ar
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !902
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !4299
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2803
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ar
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !251
  store ptr %i.bt, ptr %i.aj, align 8, !tbaa !4298
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i16 -2, ptr %i.bu, align 8, !tbaa !330
  %i.bv = call fastcc ptr @whereScanInitIndexExpr(ptr noundef nonnull %4)
  br label %whereScanInit.exit

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.c
  %.2.i = phi i16 [ %i.at, %bb.f ], [ -1, %bb.c ], [ %i.at, %bb.e ]
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i16 %.2.i, ptr %i.bw, align 8, !tbaa !330
  %i.bx = call fastcc ptr @whereScanNext(ptr noundef nonnull %4)
  br label %whereScanInit.exit

whereScanInit.exit:                               ; preds = %bb.g, %.thread.i
  %.1.i = phi ptr [ %i.bx, %.thread.i ], [ %i.bv, %bb.g ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i16 0, ptr %i.by, align 2, !tbaa !4471
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2987
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !330 ; 4 uses
  %i.cc = icmp slt i16 %i.cb, 11
  br i1 %i.cc, label %estLog.exit, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %whereScanInit.exit
  %i.cd = zext nneg i16 %i.cb to i64              ; 2 uses
  %i.ce = icmp samesign ugt i16 %i.cb, 255
  br i1 %i.ce, label %.lr.ph.i.i, label %.preheader21.i.i

.preheader21.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader23.i.i
  %.115.lcssa.i.i = phi i64 [ %i.cd, %.preheader23.i.i ], [ %i.ch, %.lr.ph.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i16 [ 40, %.preheader23.i.i ], [ %i.cg, %.lr.ph.i.i ] ; 2 uses
  %i.cf = icmp samesign ugt i64 %.115.lcssa.i.i, 15
  br i1 %i.cf, label %.lr.ph29.i.i, label %sqlite3LogEst.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader23.i.i, %.lr.ph.i.i
  %.125.i.i = phi i16 [ %i.cg, %.lr.ph.i.i ], [ 40, %.preheader23.i.i ]
  %.11524.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %i.cd, %.preheader23.i.i ] ; 2 uses
  %i.cg = add nuw nsw i16 %.125.i.i, 40           ; 2 uses
  %i.ch = lshr i64 %.11524.i.i, 4                 ; 2 uses
  %i.ci = icmp samesign ugt i64 %.11524.i.i, 4095
  br i1 %i.ci, label %.lr.ph.i.i, label %.preheader21.i.i, !llvm.loop !1341

.lr.ph29.i.i:                                     ; preds = %.preheader21.i.i, %.lr.ph29.i.i
  %.228.i.i = phi i16 [ %i.cj, %.lr.ph29.i.i ], [ %.1.lcssa.i.i, %.preheader21.i.i ]
  %.21627.i.i = phi i64 [ %i.ck, %.lr.ph29.i.i ], [ %.115.lcssa.i.i, %.preheader21.i.i ] ; 2 uses
  %i.cj = add nuw nsw i16 %.228.i.i, 10           ; 2 uses
  %i.ck = lshr i64 %.21627.i.i, 1                 ; 2 uses
  %i.cl = icmp samesign ugt i64 %.21627.i.i, 31
  br i1 %i.cl, label %.lr.ph29.i.i, label %sqlite3LogEst.exit.i, !llvm.loop !1342

sqlite3LogEst.exit.i:                             ; preds = %.lr.ph29.i.i, %.preheader21.i.i
  %.317.i.i = phi i64 [ %.115.lcssa.i.i, %.preheader21.i.i ], [ %i.ck, %.lr.ph29.i.i ]
  %.3.i.i = phi i16 [ %.1.lcssa.i.i, %.preheader21.i.i ], [ %i.cj, %.lr.ph29.i.i ]
  %i.cm = and i64 %.317.i.i, 7
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !330
  %i.cp = add i16 %.3.i.i, -43
  %i.cq = add i16 %i.cp, %i.co
  br label %estLog.exit

estLog.exit:                                      ; preds = %whereScanInit.exit, %sqlite3LogEst.exit.i
  %i.cr = phi i16 [ %i.cq, %sqlite3LogEst.exit.i ], [ 0, %whereScanInit.exit ] ; 7 uses
  %i.cs = zext i16 %i.w to i32                    ; 2 uses
  %i.ct = add nuw nsw i32 %i.cs, 8
  %i.cu = and i32 %i.ct, 131064                   ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cu, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %.not480 = icmp eq ptr %.1.i, null
  br i1 %.not480, label %whereLoopResize.exit, label %.lr.ph473

.lr.ph473:                                        ; preds = %estLog.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 98 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 94 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.df = trunc i32 %i.cu to i16
  %i.dg = icmp sgt i16 %i.cr, 9
  %i.dh = zext nneg i16 %i.cr to i32
  %i.di = icmp slt i16 %3, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dk = icmp eq i16 %3, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = sext i16 %i.cr to i32                   ; 6 uses
  %invariant.op = add nsw i32 %i.dq, -49
  %invariant.op479 = add nsw i32 %i.dq, -31
  %i.dr = add i16 %i.cr, 1
  %i.ds = add nsw i32 %i.dq, 49
  %i.dt = add nsw i32 %i.dq, 31
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.dy = extractelement <4 x i16> %i.z, i64 0    ; 2 uses
  %5 = shufflevector <4 x i16> %i.z, <4 x i16> poison, <3 x i32> <i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph473, %constraintCompatibleWithOuterJoin.exit.thread
  %.0283469 = phi ptr [ %.1.i, %.lr.ph473 ], [ %i.wi, %constraintCompatibleWithOuterJoin.exit.thread ] ; 16 uses
  %.0287468 = phi ptr [ null, %.lr.ph473 ], [ %.4.ph, %constraintCompatibleWithOuterJoin.exit.thread ] ; 14 uses
  %.0291467 = phi ptr [ null, %.lr.ph473 ], [ %.4295.ph, %constraintCompatibleWithOuterJoin.exit.thread ] ; 14 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0283469, i64 20
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !4492 ; 3 uses
  %i.eb = zext i16 %i.ea to i32                   ; 6 uses
  %i.ec = icmp eq i16 %i.ea, 256
  br i1 %i.ec, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %.0283469, i64 18
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !4283
  %i.ef = and i16 %i.ee, 128
  %.not325 = icmp eq i16 %i.ef, 0
  br i1 %.not325, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eg = load ptr, ptr %i.ap, align 8, !tbaa !878
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.ar
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !330 ; 3 uses
  %i.ej = icmp sgt i16 %i.ei, -1
  br i1 %i.ej, label %bb.k, label %indexColumnNotNull.exit

bb.k:                                             ; preds = %bb.j
  %i.ek = load ptr, ptr %i.av, align 8, !tbaa !1098
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !882
  %i.en = zext nneg i16 %i.ei to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i8, ptr %i.ep, align 8
  %i.er = and i8 %i.eq, 15
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.l, label %constraintCompatibleWithOuterJoin.exit.thread

indexColumnNotNull.exit:                          ; preds = %bb.j
  %.not569 = icmp eq i16 %i.ei, -1
  br i1 %.not569, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %indexColumnNotNull.exit, %bb.i
  %i.et = getelementptr inbounds nuw i8, ptr %.0283469, i64 40 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !4295
  %i.ev = load i64, ptr %i.cx, align 8, !tbaa !4306 ; 2 uses
  %i.ew = and i64 %i.ev, %i.eu
  %.not327 = icmp eq i64 %i.ew, 0
  br i1 %.not327, label %bb.m, label %constraintCompatibleWithOuterJoin.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ex = getelementptr inbounds nuw i8, ptr %.0283469, i64 18 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !4283
  %i.ez = and i16 %i.ey, 256
  %.not328 = icmp ne i16 %i.ez, 0
  %i.fa = icmp eq i16 %i.ea, 16
  %or.cond439 = and i1 %i.fa, %.not328
  br i1 %or.cond439, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.cy, align 8, !tbaa !3498 ; 2 uses
  %i.fc = and i8 %i.fb, 88
  %.not329 = icmp eq i8 %i.fc, 0
  br i1 %.not329, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0283.val = load ptr, ptr %.0283469, align 8, !tbaa !1155 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0283.val, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !367 ; 2 uses
  %i.ff = and i32 %i.fe, 3
  %.not.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fg = getelementptr inbounds nuw i8, ptr %.0283.val, i64 52
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !227
  %i.fi = load i32, ptr %i.ac, align 4, !tbaa !3555
  %.not5.i = icmp eq i32 %i.fh, %i.fi
  br i1 %.not5.i, label %constraintCompatibleWithOuterJoin.exit, label %constraintCompatibleWithOuterJoin.exit.thread

constraintCompatibleWithOuterJoin.exit:           ; preds = %bb.p
  %i.fj = and i8 %i.fb, 24
  %.not6.i = icmp ne i8 %i.fj, 0
  %i.fk = and i32 %i.fe, 2
  %.not7.i = icmp ne i32 %i.fk, 0
  %or.cond.i.not = and i1 %.not6.i, %.not7.i
  br i1 %or.cond.i.not, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.q

bb.q:                                             ; preds = %constraintCompatibleWithOuterJoin.exit, %bb.n
  %i.fl = load i8, ptr %i.cz, align 2, !tbaa !2990
  %.not331 = icmp eq i8 %i.fl, 0
  br i1 %.not331, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fm = load i16, ptr %i.da, align 2, !tbaa !936
  %i.fn = zext i16 %i.fm to i32
  %i.fo = add nsw i32 %i.fn, -1
  %i.fp = icmp eq i32 %i.fo, %i.af
  br i1 %i.fp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink564 = phi i8 [ 1, %bb.s ], [ 2, %bb.r ]
  %i.fq = load i8, ptr %i.db, align 8, !tbaa !4606
  %i.fr = or i8 %i.fq, %.sink564
  store i8 %i.fr, ptr %i.db, align 8, !tbaa !4606
  store i32 %i.k, ptr %i.j, align 8, !tbaa !4272
  store <3 x i16> %5, ptr %i.q, align 8, !tbaa !227
  store i16 %i.w, ptr %i.v, align 4, !tbaa !4270
  %i.fs = load i16, ptr %i.dc, align 8, !tbaa !4271
  %.not332 = icmp ult i16 %i.w, %i.fs
  br i1 %.not332, label %.whereLoopResize.exit.thread_crit_edge, label %bb.u

.whereLoopResize.exit.thread_crit_edge:           ; preds = %bb.t
  %.pre = load ptr, ptr %i.dd, align 8, !tbaa !4267
  br label %whereLoopResize.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ft = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.cw) ; 4 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %whereLoopResize.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fv = load ptr, ptr %i.dd, align 8, !tbaa !4267
  %i.fw = load i16, ptr %i.dc, align 8, !tbaa !4271
  %i.fx = zext i16 %i.fw to i64
  %i.fy = shl nuw nsw i64 %i.fx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ft, ptr align 8 %i.fv, i64 %i.fy, i1 false)
  %i.fz = load ptr, ptr %i.dd, align 8, !tbaa !4267 ; 2 uses
  %.not20.i = icmp eq ptr %i.fz, %i.de
  br i1 %.not20.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.c, ptr noundef %i.fz)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %i.ft, ptr %i.dd, align 8, !tbaa !4267
  store i16 %i.df, ptr %i.dc, align 8, !tbaa !4271
  %.pre503 = load i16, ptr %i.v, align 4, !tbaa !4270
  %.pre504 = load i64, ptr %i.cx, align 8, !tbaa !4306
  br label %whereLoopResize.exit.thread

whereLoopResize.exit.thread:                      ; preds = %.whereLoopResize.exit.thread_crit_edge, %bb.x
  %i.ga = phi i64 [ %i.ev, %.whereLoopResize.exit.thread_crit_edge ], [ %.pre504, %bb.x ]
  %i.gb = phi i16 [ %i.w, %.whereLoopResize.exit.thread_crit_edge ], [ %.pre503, %bb.x ] ; 3 uses
  %i.gc = phi ptr [ %.pre, %.whereLoopResize.exit.thread_crit_edge ], [ %i.ft, %bb.x ] ; 4 uses
  %i.gd = add i16 %i.gb, 1                        ; 3 uses
  store i16 %i.gd, ptr %i.v, align 4, !tbaa !4270
  %i.ge = zext i16 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.ge
  store ptr %.0283469, ptr %i.gf, align 8, !tbaa !4297
  %i.gg = load i64, ptr %i.et, align 8, !tbaa !4295
  %i.gh = or i64 %i.gg, %i.x
  %i.gi = xor i64 %i.ga, -1
  %i.gj = and i64 %i.gh, %i.gi
  store i64 %i.gj, ptr %i.e, align 8, !tbaa !4459
  %i.gk = and i32 %i.eb, 1
  %.not334 = icmp eq i32 %i.gk, 0
  br i1 %.not334, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %whereLoopResize.exit.thread
  %i.gl = load ptr, ptr %.0283469, align 8, !tbaa !1155 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !367
  %i.go = and i32 %i.gn, 4096
  %.not344 = icmp eq i32 %i.go, 0
  br i1 %.not344, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.gp = icmp ugt i16 %i.gd, 1
  br i1 %i.gp, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.gq = zext i16 %i.gd to i64
  %i.gr = add nuw nsw i64 %i.gq, 4294967295       ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0283469, i64 36 ; 3 uses
  %wide.trip.count = and i64 %i.gr, 4294967295
  %xtraiter = and i64 %i.gr, 1
  %i.gt = icmp eq i64 %wide.trip.count, 1
  br i1 %i.gt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.gr, 4294967294
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.af ] ; 3 uses
  %.0301465 = phi i32 [ 0, %.lr.ph.new ], [ %.1302.1, %bb.af ] ; 3 uses
  %.0305463 = phi i32 [ 46, %.lr.ph.new ], [ %.1306.1, %bb.af ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.af ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !4297 ; 3 uses
  %.not353 = icmp eq ptr %i.gv, null
  br i1 %.not353, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !1155
  %i.gx = icmp eq ptr %i.gw, %i.gl
  br i1 %i.gx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 36
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !227
  %i.ha = load i32, ptr %i.gs, align 4, !tbaa !227
  %i.hb = icmp eq i32 %i.gz, %i.ha
  %spec.select = select i1 %i.hb, i32 1, i32 %.0301465
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.aa
  %.1306 = phi i32 [ %.0305463, %bb.z ], [ 0, %bb.ab ], [ %.0305463, %bb.aa ] ; 2 uses
  %.1302 = phi i32 [ %.0301465, %bb.z ], [ %spec.select, %bb.ab ], [ %.0301465, %bb.aa ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !4297 ; 3 uses
  %.not353.1 = icmp eq ptr %i.he, null
  br i1 %.not353.1, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1155
  %i.hg = icmp eq ptr %i.hf, %i.gl
  br i1 %i.hg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 36
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !227
  %i.hj = load i32, ptr %i.gs, align 4, !tbaa !227
  %i.hk = icmp eq i32 %i.hi, %i.hj
  %spec.select.1 = select i1 %i.hk, i32 1, i32 %.1302
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.1306.1 = phi i32 [ %.1306, %bb.ac ], [ 0, %bb.ae ], [ %.1306, %bb.ad ] ; 3 uses
  %.1302.1 = phi i32 [ %.1302, %bb.ac ], [ %spec.select.1, %bb.ae ], [ %.1302, %bb.ad ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.z, !llvm.loop !4665

._crit_edge.unr-lcssa:                            ; preds = %bb.af
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.0301465.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1302.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.0305463.epil.init = phi i32 [ 46, %.lr.ph ], [ %.1306.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod614 = trunc i64 %i.gr to i1
  tail call void @llvm.assume(i1 %lcmp.mod614)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.epil.init
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !4297 ; 3 uses
  %.not353.epil = icmp eq ptr %i.hm, null
  br i1 %.not353.epil, label %._crit_edge, label %bb.ag

bb.ag:                                            ; preds = %.epil.preheader
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1155
  %i.ho = icmp eq ptr %i.hn, %i.gl
  br i1 %i.ho, label %bb.ah, label %._crit_edge

bb.ah:                                            ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 36
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !227
  %i.hr = load i32, ptr %i.gs, align 4, !tbaa !227
  %i.hs = icmp eq i32 %i.hq, %i.hr
  %spec.select.epil = select i1 %i.hs, i32 1, i32 %.0301465.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.ag, %bb.ah, %._crit_edge.unr-lcssa
  %.1306.lcssa = phi i32 [ %.1306.1, %._crit_edge.unr-lcssa ], [ %.0305463.epil.init, %.epil.preheader ], [ 0, %bb.ah ], [ %.0305463.epil.init, %bb.ag ]
  %.1302.lcssa = phi i32 [ %.1302.1, %._crit_edge.unr-lcssa ], [ %.0301465.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.ah ], [ %.0301465.epil.init, %bb.ag ]
  %i.ht = icmp eq i32 %.1302.lcssa, 0
  br i1 %i.ht, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  store i16 %i.gb, ptr %i.v, align 4, !tbaa !4270
  br label %constraintCompatibleWithOuterJoin.exit.thread

bb.aj:                                            ; preds = %bb.y
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !227 ; 2 uses
  %.not345 = icmp eq ptr %i.hv, null
  br i1 %.not345, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !5  ; 5 uses
  %.not346 = icmp eq i32 %i.hw, 0
  br i1 %.not346, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hx = sext i32 %i.hw to i64                   ; 3 uses
  %i.hy = icmp ult i32 %i.hw, 8
  br i1 %i.hy, label %bb.am, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.al
  %i.hz = icmp ugt i32 %i.hw, 255
  br i1 %i.hz, label %.lr.ph.i, label %.preheader21.i

bb.am:                                            ; preds = %bb.al
  %i.ia = icmp eq i32 %i.hw, 1
  br i1 %i.ia, label %.thread, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.am, %.lr.ph34.i
  %.033.i = phi i16 [ %i.ib, %.lr.ph34.i ], [ 40, %bb.am ]
  %.01432.i = phi i64 [ %i.ic, %.lr.ph34.i ], [ %i.hx, %bb.am ] ; 2 uses
  %i.ib = add i16 %.033.i, -10                    ; 2 uses
  %i.ic = shl nuw nsw i64 %.01432.i, 1            ; 2 uses
  %i.id = icmp ult i64 %.01432.i, 4
  br i1 %i.id, label %.lr.ph34.i, label %.loopexit.i, !llvm.loop !1340
end_hunk_2
