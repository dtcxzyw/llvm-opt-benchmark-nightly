Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaWriteVer?download=true
inline.NumInlined: 517
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Cba_ManWriteVerilogNtk:bb.a
  store ptr %i.dyu, ptr %i.db, align 8, !tbaa !23
  store i32 %spec.select.sink.i.i2450, ptr %i.b, align 8, !tbaa !22
  %.pre9.i2451 = load i32, ptr %i.da, align 4, !tbaa !20
  br label %Vec_StrPush.exit.i2442

Vec_StrPush.exit.i2442:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2449, %bb.axx, %.Vec_StrPush.exit_crit_edge.i2440
  %i.dyv = phi i32 [ %i.dyi, %.Vec_StrPush.exit_crit_edge.i2440 ], [ %i.dyi, %bb.axx ], [ %.pre9.i2451, %Vec_StrGrow.exit11.sink.split.i.i2449 ] ; 2 uses
  %i.dyw = phi ptr [ %.pre.i2441, %.Vec_StrPush.exit_crit_edge.i2440 ], [ %.pre8.i2447, %bb.axx ], [ %i.dyu, %Vec_StrGrow.exit11.sink.split.i.i2449 ]
  %i.dyx = add nsw i32 %i.dyv, 1
  store i32 %i.dyx, ptr %i.da, align 4, !tbaa !20
  %i.dyy = sext i32 %i.dyv to i64
  %i.dyz = getelementptr inbounds i8, ptr %i.dyw, i64 %i.dyy
  store i8 %i.dyh, ptr %i.dyz, align 1, !tbaa !17
  %indvars.iv.next.i2443 = add nuw nsw i64 %indvars.iv.i2439, 1 ; 2 uses
  %exitcond.not.i2444 = icmp eq i64 %indvars.iv.next.i2443, %wide.trip.count.i2438
  br i1 %exitcond.not.i2444, label %Vec_StrPrintStr.exit2453, label %bb.axs, !llvm.loop !68

Vec_StrPrintStr.exit2453:                         ; preds = %Vec_StrPush.exit.i2442, %Vec_StrPrintStr.exit2435
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.cnv, i32 noundef %1, i32 noundef 0)
  %i.dza = load i32, ptr %i.da, align 4, !tbaa !20 ; 7 uses
  %i.dzb = load i32, ptr %i.b, align 8, !tbaa !22
  %i.dzc = icmp eq i32 %i.dza, %i.dzb
  br i1 %i.dzc, label %bb.ayb, label %.Vec_StrPush.exit_crit_edge.i2458

.Vec_StrPush.exit_crit_edge.i2458:                ; preds = %Vec_StrPrintStr.exit2453
  %.pre.i2459 = load ptr, ptr %i.db, align 8, !tbaa !23
  br label %Vec_StrPrintStr.exit1354

bb.ayb:                                           ; preds = %Vec_StrPrintStr.exit2453
  %i.dzd = icmp slt i32 %i.dza, 16
  br i1 %i.dzd, label %bb.ayc, label %bb.ayf

bb.ayc:                                           ; preds = %bb.ayb
  %i.dze = load ptr, ptr %i.db, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i.i2470 = icmp eq ptr %i.dze, null
  br i1 %.not9.i.i.i2470, label %bb.aye, label %bb.ayd

bb.ayd:                                           ; preds = %bb.ayc
  %i.dzf = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dze, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2467

bb.aye:                                           ; preds = %bb.ayc
  %i.dzg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2467

bb.ayf:                                           ; preds = %bb.ayb
  %i.dzh = icmp samesign ult i32 %i.dza, 1073741823
  %i.dzi = shl nuw nsw i32 %i.dza, 1
  %spec.select.i.i2463 = select i1 %i.dzh, i32 %i.dzi, i32 2147483647 ; 4 uses
  %.not.i9.i.i2464 = icmp samesign ult i32 %i.dza, %spec.select.i.i2463
  %.pre8.i2465 = load ptr, ptr %i.db, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i.i2464, label %bb.ayg, label %Vec_StrPrintStr.exit1354

bb.ayg:                                           ; preds = %bb.ayf
  %.not9.i10.i.i2466 = icmp eq ptr %.pre8.i2465, null
  %i.dzj = zext nneg i32 %spec.select.i.i2463 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2466, label %bb.ayi, label %bb.ayh

bb.ayh:                                           ; preds = %bb.ayg
  %i.dzk = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2465, i64 noundef %i.dzj) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2467

bb.ayi:                                           ; preds = %bb.ayg
  %i.dzl = tail call noalias ptr @malloc(i64 noundef %i.dzj) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2467

Vec_StrGrow.exit11.sink.split.i.i2467:            ; preds = %bb.ayi, %bb.ayh, %bb.aye, %bb.ayd
  %i.dzm = phi ptr [ %i.dzg, %bb.aye ], [ %i.dzf, %bb.ayd ], [ %i.dzk, %bb.ayh ], [ %i.dzl, %bb.ayi ] ; 2 uses
  %spec.select.sink.i.i2468 = phi i32 [ 16, %bb.aye ], [ 16, %bb.ayd ], [ %spec.select.i.i2463, %bb.ayh ], [ %spec.select.i.i2463, %bb.ayi ]
  store ptr %i.dzm, ptr %i.db, align 8, !tbaa !23
  store i32 %spec.select.sink.i.i2468, ptr %i.b, align 8, !tbaa !22
  %.pre9.i2469 = load i32, ptr %i.da, align 4, !tbaa !20
  br label %Vec_StrPrintStr.exit1354

bb.ayj:                                           ; preds = %bb.aic
  %i.dzn = add nsw i32 %i.cnq, 1                  ; 12 uses
  %i.dzo = tail call fastcc i32 @Cba_FonRangeSize(ptr noundef nonnull %0, i32 noundef %i.cnq) ; 2 uses
  %.val981 = load ptr, ptr %i.x, align 8, !tbaa !73 ; 2 uses
  %i.dzp = ashr i32 %i.cnq, 5
  %i.dzq = sext i32 %i.dzp to i64
  %i.dzr = getelementptr inbounds [4 x i8], ptr %.val981, i64 %i.dzq
  %i.dzs = load i32, ptr %i.dzr, align 4, !tbaa !26
  %i.dzt = and i32 %i.cnq, 31
  %i.dzu = shl nuw i32 1, %i.dzt
  %i.dzv = and i32 %i.dzs, %i.dzu
  %.not810 = icmp eq i32 %i.dzv, 0
  br i1 %.not810, label %bb.ayk, label %bb.ayl

bb.ayk:                                           ; preds = %bb.ayj
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.84)
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.cnq)
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.cnq, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.85)
  br label %bb.ayl

bb.ayl:                                           ; preds = %bb.ayk, %bb.ayj
  %i.dzw = ashr i32 %i.dzn, 5
  %i.dzx = sext i32 %i.dzw to i64
  %i.dzy = getelementptr inbounds [4 x i8], ptr %.val981, i64 %i.dzx
  %i.dzz = load i32, ptr %i.dzy, align 4, !tbaa !26
  %i.eaa = and i32 %i.dzn, 31
  %i.eab = shl nuw i32 1, %i.eaa
  %i.eac = and i32 %i.dzz, %i.eab
  %.not811 = icmp eq i32 %i.eac, 0
  br i1 %.not811, label %bb.aym, label %.lr.ph.i2473.preheader

bb.aym:                                           ; preds = %bb.ayl
  %i.ead = tail call fastcc i32 @Cba_FonName(ptr noundef nonnull %0, i32 noundef %i.dzn)
  %.not812 = icmp eq i32 %i.ead, 0
  br i1 %.not812, label %.lr.ph.i2473.preheader, label %bb.ayn

bb.ayn:                                           ; preds = %bb.aym
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.84)
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.dzn)
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.dzn, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.85)
  br label %.lr.ph.i2473.preheader

.lr.ph.i2473.preheader:                           ; preds = %bb.ayl, %bb.aym, %bb.ayn
  br label %.lr.ph.i2473

.lr.ph.i2473:                                     ; preds = %.lr.ph.i2473.preheader, %Vec_StrPush.exit.i2478
  %indvars.iv.i2475 = phi i64 [ %indvars.iv.next.i2479, %Vec_StrPush.exit.i2478 ], [ 0, %.lr.ph.i2473.preheader ] ; 2 uses
  %i.eae = getelementptr inbounds nuw i8, ptr @.str.138, i64 %indvars.iv.i2475
  %i.eaf = load i8, ptr %i.eae, align 1, !tbaa !17
  %i.eag = load i32, ptr %i.da, align 4, !tbaa !20 ; 7 uses
  %i.eah = load i32, ptr %i.b, align 8, !tbaa !22
  %i.eai = icmp eq i32 %i.eag, %i.eah
  br i1 %i.eai, label %bb.ayo, label %.Vec_StrPush.exit_crit_edge.i2476

.Vec_StrPush.exit_crit_edge.i2476:                ; preds = %.lr.ph.i2473
  %.pre.i2477 = load ptr, ptr %i.db, align 8, !tbaa !23
  br label %Vec_StrPush.exit.i2478

bb.ayo:                                           ; preds = %.lr.ph.i2473
  %i.eaj = icmp slt i32 %i.eag, 16
  br i1 %i.eaj, label %bb.ayp, label %bb.ays

bb.ayp:                                           ; preds = %bb.ayo
  %i.eak = load ptr, ptr %i.db, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i.i2488 = icmp eq ptr %i.eak, null
  br i1 %.not9.i.i.i2488, label %bb.ayr, label %bb.ayq

bb.ayq:                                           ; preds = %bb.ayp
  %i.eal = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.eak, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2485

bb.ayr:                                           ; preds = %bb.ayp
  %i.eam = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2485

bb.ays:                                           ; preds = %bb.ayo
  %i.ean = icmp samesign ult i32 %i.eag, 1073741823
  %i.eao = shl nuw nsw i32 %i.eag, 1
  %spec.select.i.i2481 = select i1 %i.ean, i32 %i.eao, i32 2147483647 ; 4 uses
  %.not.i9.i.i2482 = icmp samesign ult i32 %i.eag, %spec.select.i.i2481
  %.pre8.i2483 = load ptr, ptr %i.db, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i.i2482, label %bb.ayt, label %Vec_StrPush.exit.i2478

bb.ayt:                                           ; preds = %bb.ays
  %.not9.i10.i.i2484 = icmp eq ptr %.pre8.i2483, null
  %i.eap = zext nneg i32 %spec.select.i.i2481 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2484, label %bb.ayv, label %bb.ayu

bb.ayu:                                           ; preds = %bb.ayt
  %i.eaq = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2483, i64 noundef %i.eap) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2485

bb.ayv:                                           ; preds = %bb.ayt
  %i.ear = tail call noalias ptr @malloc(i64 noundef %i.eap) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2485

Vec_StrGrow.exit11.sink.split.i.i2485:            ; preds = %bb.ayv, %bb.ayu, %bb.ayr, %bb.ayq
  %i.eas = phi ptr [ %i.eam, %bb.ayr ], [ %i.eal, %bb.ayq ], [ %i.eaq, %bb.ayu ], [ %i.ear, %bb.ayv ] ; 2 uses
  %spec.select.sink.i.i2486 = phi i32 [ 16, %bb.ayr ], [ 16, %bb.ayq ], [ %spec.select.i.i2481, %bb.ayu ], [ %spec.select.i.i2481, %bb.ayv ]
  store ptr %i.eas, ptr %i.db, align 8, !tbaa !23
  store i32 %spec.select.sink.i.i2486, ptr %i.b, align 8, !tbaa !22
  %.pre9.i2487 = load i32, ptr %i.da, align 4, !tbaa !20
  br label %Vec_StrPush.exit.i2478

Vec_StrPush.exit.i2478:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2485, %bb.ays, %.Vec_StrPush.exit_crit_edge.i2476
  %i.eat = phi i32 [ %i.eag, %.Vec_StrPush.exit_crit_edge.i2476 ], [ %i.eag, %bb.ays ], [ %.pre9.i2487, %Vec_StrGrow.exit11.sink.split.i.i2485 ] ; 2 uses
  %i.eau = phi ptr [ %.pre.i2477, %.Vec_StrPush.exit_crit_edge.i2476 ], [ %.pre8.i2483, %bb.ays ], [ %i.eas, %Vec_StrGrow.exit11.sink.split.i.i2485 ]
  %i.eav = add nsw i32 %i.eat, 1
  store i32 %i.eav, ptr %i.da, align 4, !tbaa !20
  %i.eaw = sext i32 %i.eat to i64
  %i.eax = getelementptr inbounds i8, ptr %i.eau, i64 %i.eaw
  store i8 %i.eaf, ptr %i.eax, align 1, !tbaa !17
  %indvars.iv.next.i2479 = add nuw nsw i64 %indvars.iv.i2475, 1 ; 2 uses
  %exitcond.not.i2480 = icmp eq i64 %indvars.iv.next.i2479, 8
  br i1 %exitcond.not.i2480, label %Vec_StrPrintStr.exit2489, label %.lr.ph.i2473, !llvm.loop !68

Vec_StrPrintStr.exit2489:                         ; preds = %Vec_StrPush.exit.i2478
  %i.eay = icmp sgt i32 %i.dzo, 1
  br i1 %i.eay, label %bb.ayw, label %.lr.ph.i2491

bb.ayw:                                           ; preds = %Vec_StrPrintStr.exit2489
  %i.eaz = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.139, i32 noundef %i.dzo) ; 0 uses
  br label %.lr.ph.i2491

.lr.ph.i2491:                                     ; preds = %Vec_StrPrintStr.exit2489, %bb.ayw
  %i.eba = load i32, ptr %i.da, align 4, !tbaa !20 ; 7 uses
  %i.ebb = load i32, ptr %i.b, align 8, !tbaa !22
  %i.ebc = icmp eq i32 %i.eba, %i.ebb
  br i1 %i.ebc, label %bb.ayx, label %.Vec_StrPush.exit_crit_edge.i2494

.Vec_StrPush.exit_crit_edge.i2494:                ; preds = %.lr.ph.i2491
  %.pre.i2495 = load ptr, ptr %i.db, align 8, !tbaa !23
  br label %Vec_StrPush.exit.i2496

bb.ayx:                                           ; preds = %.lr.ph.i2491
  %i.ebd = icmp slt i32 %i.eba, 16
  br i1 %i.ebd, label %bb.ayy, label %bb.azb

bb.ayy:                                           ; preds = %bb.ayx
  %i.ebe = load ptr, ptr %i.db, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i.i2506 = icmp eq ptr %i.ebe, null
  br i1 %.not9.i.i.i2506, label %bb.aza, label %bb.ayz

bb.ayz:                                           ; preds = %bb.ayy
  %i.ebf = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ebe, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2503

bb.aza:                                           ; preds = %bb.ayy
  %i.ebg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2503

bb.azb:                                           ; preds = %bb.ayx
  %i.ebh = icmp samesign ult i32 %i.eba, 1073741823
  %i.ebi = shl nuw nsw i32 %i.eba, 1
  %spec.select.i.i2499 = select i1 %i.ebh, i32 %i.ebi, i32 2147483647 ; 4 uses
  %.not.i9.i.i2500 = icmp samesign ult i32 %i.eba, %spec.select.i.i2499
  %.pre8.i2501 = load ptr, ptr %i.db, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i.i2500, label %bb.azc, label %Vec_StrPush.exit.i2496

bb.azc:                                           ; preds = %bb.azb
  %.not9.i10.i.i2502 = icmp eq ptr %.pre8.i2501, null
  %i.ebj = zext nneg i32 %spec.select.i.i2499 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2502, label %bb.aze, label %bb.azd

bb.azd:                                           ; preds = %bb.azc
  %i.ebk = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2501, i64 noundef %i.ebj) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2503

bb.aze:                                           ; preds = %bb.azc
  %i.ebl = tail call noalias ptr @malloc(i64 noundef %i.ebj) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2503

Vec_StrGrow.exit11.sink.split.i.i2503:            ; preds = %bb.aze, %bb.azd, %bb.aza, %bb.ayz
  %i.ebm = phi ptr [ %i.ebg, %bb.aza ], [ %i.ebf, %bb.ayz ], [ %i.ebk, %bb.azd ], [ %i.ebl, %bb.aze ] ; 2 uses
  %spec.select.sink.i.i2504 = phi i32 [ 16, %bb.aza ], [ 16, %bb.ayz ], [ %spec.select.i.i2499, %bb.azd ], [ %spec.select.i.i2499, %bb.aze ]
  store ptr %i.ebm, ptr %i.db, align 8, !tbaa !23
  store i32 %spec.select.sink.i.i2504, ptr %i.b, align 8, !tbaa !22
  %.pre9.i2505 = load i32, ptr %i.da, align 4, !tbaa !20
  br label %Vec_StrPush.exit.i2496

Vec_StrPush.exit.i2496:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2503, %bb.azb, %.Vec_StrPush.exit_crit_edge.i2494
  %i.ebn = phi i32 [ %i.eba, %.Vec_StrPush.exit_crit_edge.i2494 ], [ %i.eba, %bb.azb ], [ %.pre9.i2505, %Vec_StrGrow.exit11.sink.split.i.i2503 ] ; 2 uses
  %i.ebo = phi ptr [ %.pre.i2495, %.Vec_StrPush.exit_crit_edge.i2494 ], [ %.pre8.i2501, %bb.azb ], [ %i.ebm, %Vec_StrGrow.exit11.sink.split.i.i2503 ]
  %i.ebp = add nsw i32 %i.ebn, 1
  store i32 %i.ebp, ptr %i.da, align 4, !tbaa !20
  %i.ebq = sext i32 %i.ebn to i64
  %i.ebr = getelementptr inbounds i8, ptr %i.ebo, i64 %i.ebq
  store i8 32, ptr %i.ebr, align 1, !tbaa !17
  %i.ebs = add nuw nsw i64 %indvars.iv3111, 1     ; 3 uses
  %i.ebt = load i32, ptr %i.tv, align 4, !tbaa !24 ; 3 uses
  %i.ebu = sext i32 %i.ebt to i64                 ; 3 uses
  %.not.i.not.i.i2508 = icmp slt i64 %indvars.iv3111, %i.ebu
  br i1 %.not.i.not.i.i2508, label %Cba_ObjName.exit2524, label %bb.azf

bb.azf:                                           ; preds = %Vec_StrPush.exit.i2496
  %i.ebv = load i32, ptr %i.tu, align 8, !tbaa !56 ; 4 uses
  %i.ebw = shl nsw i32 %i.ebv, 1                  ; 2 uses
  %i.ebx = sext i32 %i.ebw to i64
  %.not.i.i2509 = icmp slt i64 %indvars.iv3111, %i.ebx
  br i1 %.not.i.i2509, label %bb.azk, label %bb.azg

bb.azg:                                           ; preds = %bb.azf
  %i.eby = load ptr, ptr %i.tw, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i.i2511 = icmp eq ptr %i.eby, null
  %i.ebz = shl nuw nsw i64 %i.ebs, 2              ; 2 uses
  br i1 %.not9.i.i.i.i2511, label %bb.azi, label %bb.azh

bb.azh:                                           ; preds = %bb.azg
  %i.eca = tail call ptr @realloc(ptr noundef nonnull %i.eby, i64 noundef %i.ebz) #18
  br label %bb.azj

bb.azi:                                           ; preds = %bb.azg
  %i.ecb = tail call noalias ptr @malloc(i64 noundef %i.ebz) #19
  br label %bb.azj

bb.azj:                                           ; preds = %bb.azi, %bb.azh
  %i.ecc = phi ptr [ %i.eca, %bb.azh ], [ %i.ecb, %bb.azi ]
  store ptr %i.ecc, ptr %i.tw, align 8, !tbaa !25
  %i.ecd = trunc nuw nsw i64 %i.ebs to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i2512

bb.azk:                                           ; preds = %bb.azf
  %i.ece = sext i32 %i.ebv to i64
  %.not.i.i.not.i.i2510 = icmp slt i64 %indvars.iv3111, %i.ece
  br i1 %.not.i.i.not.i.i2510, label %Vec_IntGrow.exit.i.i.i2515, label %bb.azl

bb.azl:                                           ; preds = %bb.azk
  %i.ecf = icmp slt i32 %i.ebv, 1073741823
  %spec.select.i.i.i2521 = select i1 %i.ecf, i32 %i.ebw, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i2522 = icmp slt i32 %i.ebv, %spec.select.i.i.i2521
  br i1 %.not.i22.i.i.i2522, label %bb.azm, label %Vec_IntGrow.exit.i.i.i2515

bb.azm:                                           ; preds = %bb.azl
  %i.ecg = load ptr, ptr %i.tw, align 8, !tbaa !25 ; 2 uses
  %.not9.i23.i.i.i2523 = icmp eq ptr %i.ecg, null
  %i.ech = sext i32 %spec.select.i.i.i2521 to i64
  %i.eci = shl nsw i64 %i.ech, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i2523, label %bb.azo, label %bb.azn

bb.azn:                                           ; preds = %bb.azm
  %i.ecj = tail call ptr @realloc(ptr noundef nonnull %i.ecg, i64 noundef %i.eci) #18
  br label %bb.azp

bb.azo:                                           ; preds = %bb.azm
  %i.eck = tail call noalias ptr @malloc(i64 noundef %i.eci) #19
  br label %bb.azp

bb.azp:                                           ; preds = %bb.azo, %bb.azn
  %i.ecl = phi ptr [ %i.ecj, %bb.azn ], [ %i.eck, %bb.azo ]
  store ptr %i.ecl, ptr %i.tw, align 8, !tbaa !25
  br label %Vec_IntGrow.exit.sink.split.i.i.i2512

Vec_IntGrow.exit.sink.split.i.i.i2512:            ; preds = %bb.azp, %bb.azj
  %spec.select.sink.i.i.i2513 = phi i32 [ %spec.select.i.i.i2521, %bb.azp ], [ %i.ecd, %bb.azj ]
  store i32 %spec.select.sink.i.i.i2513, ptr %i.tu, align 8, !tbaa !56
  %.pre.i.i2514 = load i32, ptr %i.tv, align 4, !tbaa !24 ; 2 uses
  %.pre3194 = sext i32 %.pre.i.i2514 to i64
  br label %Vec_IntGrow.exit.i.i.i2515

Vec_IntGrow.exit.i.i.i2515:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i2512, %bb.azl, %bb.azk
  %.pre-phi3195 = phi i64 [ %.pre3194, %Vec_IntGrow.exit.sink.split.i.i.i2512 ], [ %i.ebu, %bb.azl ], [ %i.ebu, %bb.azk ] ; 2 uses
  %i.ecm = phi i32 [ %.pre.i.i2514, %Vec_IntGrow.exit.sink.split.i.i.i2512 ], [ %i.ebt, %bb.azl ], [ %i.ebt, %bb.azk ]
  %.not3.i.i2516 = icmp sgt i64 %.pre-phi3195, %indvars.iv3111
  br i1 %.not3.i.i2516, label %._crit_edge.i.i.i2519, label %.lr.ph.i.i.i2517

.lr.ph.i.i.i2517:                                 ; preds = %Vec_IntGrow.exit.i.i.i2515
  %i.ecn = load ptr, ptr %i.tw, align 8, !tbaa !25
  %i.eco = shl nsw i64 %.pre-phi3195, 2
  %scevgep.i.i.i2518 = getelementptr i8, ptr %i.ecn, i64 %i.eco
  %i.ecp = trunc nuw nsw i64 %indvars.iv3111 to i32
  %i.ecq = sub i32 %i.ecp, %i.ecm
  %i.ecr = zext i32 %i.ecq to i64
  %i.ecs = shl nuw nsw i64 %i.ecr, 2
  %i.ect = add nuw nsw i64 %i.ecs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i2518, i8 0, i64 %i.ect, i1 false), !tbaa !26
  br label %._crit_edge.i.i.i2519

._crit_edge.i.i.i2519:                            ; preds = %.lr.ph.i.i.i2517, %Vec_IntGrow.exit.i.i.i2515
  %i.ecu = trunc nuw nsw i64 %i.ebs to i32
  store i32 %i.ecu, ptr %i.tv, align 4, !tbaa !24
  br label %Cba_ObjName.exit2524

Cba_ObjName.exit2524:                             ; preds = %Vec_StrPush.exit.i2496, %._crit_edge.i.i.i2519
  %.val.i.i2520 = load ptr, ptr %i.tw, align 8, !tbaa !25
  %i.ecv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2520, i64 %indvars.iv3111
  %i.ecw = load i32, ptr %i.ecv, align 4, !tbaa !26
  %.not813 = icmp eq i32 %i.ecw, 0
  br i1 %.not813, label %.lr.ph.i2526, label %bb.azq

bb.azq:                                           ; preds = %Cba_ObjName.exit2524
  %i.ecx = trunc nuw nsw i64 %indvars.iv3111 to i32
  %i.ecy = tail call ptr @Cba_ObjGetName(ptr noundef nonnull %0, i32 noundef %i.ecx)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef %i.ecy)
  br label %.lr.ph.i2526

.lr.ph.i2526:                                     ; preds = %Cba_ObjName.exit2524, %bb.azq
  %i.ecz = load i32, ptr %i.da, align 4, !tbaa !20 ; 7 uses
  %i.eda = load i32, ptr %i.b, align 8, !tbaa !22
  %i.edb = icmp eq i32 %i.ecz, %i.eda
  br i1 %i.edb, label %bb.azr, label %.Vec_StrPush.exit_crit_edge.i2529

.Vec_StrPush.exit_crit_edge.i2529:                ; preds = %.lr.ph.i2526
  %.pre.i2530 = load ptr, ptr %i.db, align 8, !tbaa !23
  br label %Vec_StrPush.exit.i2531

bb.azr:                                           ; preds = %.lr.ph.i2526
  %i.edc = icmp slt i32 %i.ecz, 16
  br i1 %i.edc, label %bb.azs, label %bb.azv

bb.azs:                                           ; preds = %bb.azr
  %i.edd = load ptr, ptr %i.db, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i.i2541 = icmp eq ptr %i.edd, null
  br i1 %.not9.i.i.i2541, label %bb.azu, label %bb.azt

bb.azt:                                           ; preds = %bb.azs
  %i.ede = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.edd, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2538

bb.azu:                                           ; preds = %bb.azs
  %i.edf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2538

bb.azv:                                           ; preds = %bb.azr
  %i.edg = icmp samesign ult i32 %i.ecz, 1073741823
  %i.edh = shl nuw nsw i32 %i.ecz, 1
end_hunk_0
begin_hunk_1_@Cba_ManWriteVerilogNtk:bb.a
  %.val891 = load ptr, ptr %i.tp, align 8, !tbaa !25
  %.val892 = load ptr, ptr %i.tq, align 8, !tbaa !25
  %i.fdd = getelementptr inbounds nuw [4 x i8], ptr %.val891, i64 %indvars.iv3111
  %i.fde = load i32, ptr %i.fdd, align 4, !tbaa !26
  %i.fdf = sext i32 %i.fde to i64
  %i.fdg = getelementptr inbounds [4 x i8], ptr %.val892, i64 %i.fdf
  %i.fdh = load i32, ptr %i.fdg, align 4, !tbaa !26
  %i.fdi = icmp eq i32 %i.fdh, -2
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val889 = load ptr, ptr %i.tp, align 8, !tbaa !25
  %.val890 = load ptr, ptr %i.tq, align 8, !tbaa !25
  %i.fdj = getelementptr inbounds nuw [4 x i8], ptr %.val889, i64 %indvars.iv3111
  %i.fdk = load i32, ptr %i.fdj, align 4, !tbaa !26
  %i.fdl = sext i32 %i.fdk to i64
  %i.fdm = getelementptr [4 x i8], ptr %.val890, i64 %i.fdl
  %i.fdn = getelementptr i8, ptr %i.fdm, i64 4
  %i.fdo = load i32, ptr %i.fdn, align 4, !tbaa !26
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fdo, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %i.fdp = select i1 %i.fdi, ptr @.str.34, ptr @.str.35
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.fdp)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val887 = load ptr, ptr %i.tp, align 8, !tbaa !25
  %.val888 = load ptr, ptr %i.tq, align 8, !tbaa !25
  %i.fdq = getelementptr inbounds nuw [4 x i8], ptr %.val887, i64 %indvars.iv3111
  %i.fdr = load i32, ptr %i.fdq, align 4, !tbaa !26
  %i.fds = sext i32 %i.fdr to i64
  %i.fdt = getelementptr [4 x i8], ptr %.val888, i64 %i.fds
  %i.fdu = getelementptr i8, ptr %i.fdt, i64 8
  %i.fdv = load i32, ptr %i.fdu, align 4, !tbaa !26
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fdv, i32 noundef %1, i32 noundef 0)
  br label %bb.bkl

Cba_TypeIsUnary.exit:                             ; preds = %bb.bkg
  %i.fdw = add nsw i8 %i.ul, -33
  %i.fdx = icmp ult i8 %i.fdw, -6
  br i1 %i.fdx, label %bb.bki, label %Cba_TypeIsUnary.exit.thread

Cba_TypeIsUnary.exit.thread:                      ; preds = %bb.bkg, %bb.bkg, %bb.bkg, %bb.bkg, %bb.bkg, %bb.bkg, %Cba_TypeIsUnary.exit
  %.val998 = load ptr, ptr %0, align 8, !tbaa !57
  %i.fdy = getelementptr inbounds nuw i8, ptr %.val998, i64 112
  %i.fdz = zext nneg i8 %i.ul to i64
  %i.fea = getelementptr inbounds nuw [8 x i8], ptr %i.fdy, i64 %i.fdz
  %i.feb = load ptr, ptr %i.fea, align 8, !tbaa !8
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef %i.feb)
  %.val885 = load ptr, ptr %i.tp, align 8, !tbaa !25
  %.val886 = load ptr, ptr %i.tq, align 8, !tbaa !25
  %i.fec = getelementptr inbounds nuw [4 x i8], ptr %.val885, i64 %indvars.iv3111
  %i.fed = load i32, ptr %i.fec, align 4, !tbaa !26
  %i.fee = sext i32 %i.fed to i64
  %i.fef = getelementptr inbounds [4 x i8], ptr %.val886, i64 %i.fee
  %i.feg = load i32, ptr %i.fef, align 4, !tbaa !26
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.feg, i32 noundef %1, i32 noundef 0)
  br label %bb.bkl

bb.bki:                                           ; preds = %Cba_TypeIsUnary.exit
  %.val997 = load ptr, ptr %0, align 8, !tbaa !57
  %i.feh = getelementptr inbounds nuw i8, ptr %.val997, i64 112
  %i.fei = zext nneg i8 %i.ul to i64              ; 3 uses
  %i.fej = getelementptr inbounds nuw [8 x i8], ptr %i.feh, i64 %i.fei
  %i.fek = load ptr, ptr %i.fej, align 8, !tbaa !8
  %.not801 = icmp eq ptr %i.fek, null
  br i1 %.not801, label %bb.bkk, label %bb.bkj

bb.bkj:                                           ; preds = %bb.bki
  switch i8 %i.ul, label %.critedge836.critedge [
    i8 13, label %switch.edge
    i8 11, label %switch.edge
    i8 15, label %switch.edge
  ]

.critedge836.critedge:                            ; preds = %bb.bkj
  %.val877 = load ptr, ptr %i.tp, align 8, !tbaa !25
  %.val878 = load ptr, ptr %i.tq, align 8, !tbaa !25
  %i.fel = getelementptr inbounds nuw [4 x i8], ptr %.val877, i64 %indvars.iv3111
  %i.fem = load i32, ptr %i.fel, align 4, !tbaa !26
  %i.fen = sext i32 %i.fem to i64
  %i.feo = getelementptr inbounds [4 x i8], ptr %.val878, i64 %i.fen
  %i.fep = load i32, ptr %i.feo, align 4, !tbaa !26
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fep, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val995 = load ptr, ptr %0, align 8, !tbaa !57
  %i.feq = getelementptr inbounds nuw i8, ptr %.val995, i64 112
  %i.fer = getelementptr inbounds nuw [8 x i8], ptr %i.feq, i64 %i.fei
  %i.fes = load ptr, ptr %i.fer, align 8, !tbaa !8
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef %i.fes)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val875 = load ptr, ptr %i.tp, align 8, !tbaa !25
  %.val876 = load ptr, ptr %i.tq, align 8, !tbaa !25
  %i.fet = getelementptr inbounds nuw [4 x i8], ptr %.val875, i64 %indvars.iv3111
  %i.feu = load i32, ptr %i.fet, align 4, !tbaa !26
  %i.fev = sext i32 %i.feu to i64
  %i.few = getelementptr [4 x i8], ptr %.val876, i64 %i.fev
  %i.fex = getelementptr i8, ptr %i.few, i64 4
  %i.fey = load i32, ptr %i.fex, align 4, !tbaa !26
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fey, i32 noundef %1, i32 noundef 0)
  br label %bb.bkl

switch.edge:                                      ; preds = %bb.bkj, %bb.bkj, %bb.bkj
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.155)
  %.val883 = load ptr, ptr %i.tp, align 8, !tbaa !25
  %.val884 = load ptr, ptr %i.tq, align 8, !tbaa !25
  %i.fez = getelementptr inbounds nuw [4 x i8], ptr %.val883, i64 %indvars.iv3111
  %i.ffa = load i32, ptr %i.fez, align 4, !tbaa !26
  %i.ffb = sext i32 %i.ffa to i64
  %i.ffc = getelementptr inbounds [4 x i8], ptr %.val884, i64 %i.ffb
  %i.ffd = load i32, ptr %i.ffc, align 4, !tbaa !26
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.ffd, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val996 = load ptr, ptr %0, align 8, !tbaa !57
  %i.ffe = getelementptr inbounds nuw i8, ptr %.val996, i64 112
  %i.fff = getelementptr inbounds nuw [8 x i8], ptr %i.ffe, i64 %i.fei
  %i.ffg = load ptr, ptr %i.fff, align 8, !tbaa !8
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef %i.ffg)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val881 = load ptr, ptr %i.tp, align 8, !tbaa !25
  %.val882 = load ptr, ptr %i.tq, align 8, !tbaa !25
  %i.ffh = getelementptr inbounds nuw [4 x i8], ptr %.val881, i64 %indvars.iv3111
  %i.ffi = load i32, ptr %i.ffh, align 4, !tbaa !26
  %i.ffj = sext i32 %i.ffi to i64
  %i.ffk = getelementptr [4 x i8], ptr %.val882, i64 %i.ffj
  %i.ffl = getelementptr i8, ptr %i.ffk, i64 4
  %i.ffm = load i32, ptr %i.ffl, align 4, !tbaa !26
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.ffm, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.156)
  br label %bb.bkl

bb.bkk:                                           ; preds = %bb.bki
  %.val956 = load ptr, ptr %i.to, align 8, !tbaa !25
  %i.ffn = getelementptr inbounds nuw [4 x i8], ptr %.val956, i64 %indvars.iv3111
  %i.ffo = load i32, ptr %i.ffn, align 4, !tbaa !26
  %i.ffp = tail call ptr @Cba_FonGetName(ptr noundef nonnull %0, i32 noundef %i.ffo)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.157)
  %.val944 = load ptr, ptr %0, align 8, !tbaa !57
  %.val945 = load i32, ptr %i.dw, align 4, !tbaa !76
  %i.ffq = getelementptr i8, ptr %.val944, i64 16
  %.val944.val = load ptr, ptr %i.ffq, align 8, !tbaa !61
  %i.ffr = tail call ptr @Abc_NamStr(ptr noundef %.val944.val, i32 noundef %.val945) #17
  %i.ffs = trunc nuw nsw i64 %indvars.iv3111 to i32
  %i.fft = tail call ptr @Cba_ObjGetName(ptr noundef nonnull %0, i32 noundef %i.ffs)
  %i.ffu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.158, ptr noundef %i.ffr, ptr noundef %i.fft, ptr noundef %i.ffp) ; 0 uses
  br label %bb.bkl

bb.bkl:                                           ; preds = %switch.edge, %.critedge836.critedge, %bb.bjx, %bb.bkh, %bb.bkk, %Cba_TypeIsUnary.exit.thread, %bb.bkf, %bb.bjv
  %i.ffv = load i32, ptr %i.da, align 4, !tbaa !20 ; 7 uses
  %i.ffw = load i32, ptr %i.b, align 8, !tbaa !22
  %i.ffx = icmp eq i32 %i.ffv, %i.ffw
  br i1 %i.ffx, label %bb.bkm, label %.Vec_StrPush.exit2761_crit_edge

.Vec_StrPush.exit2761_crit_edge:                  ; preds = %bb.bkl
  %.pre3162.a = load ptr, ptr %i.db, align 8, !tbaa !23
  br label %Vec_StrPrintStr.exit1354

bb.bkm:                                           ; preds = %bb.bkl
  %i.ffy = icmp slt i32 %i.ffv, 16
  br i1 %i.ffy, label %bb.bkn, label %bb.bkq

bb.bkn:                                           ; preds = %bb.bkm
  %i.ffz = load ptr, ptr %i.db, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i2759 = icmp eq ptr %i.ffz, null
  br i1 %.not9.i.i2759, label %bb.bkp, label %bb.bko

bb.bko:                                           ; preds = %bb.bkn
  %i.fga = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ffz, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i2757

bb.bkp:                                           ; preds = %bb.bkn
  %i.fgb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i2757

bb.bkq:                                           ; preds = %bb.bkm
  %i.fgc = icmp samesign ult i32 %i.ffv, 1073741823
  %i.fgd = shl nuw nsw i32 %i.ffv, 1
  %spec.select.i2754 = select i1 %i.fgc, i32 %i.fgd, i32 2147483647 ; 4 uses
  %.not.i9.i2755 = icmp samesign ult i32 %i.ffv, %spec.select.i2754
  %.pre3163.a = load ptr, ptr %i.db, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i2755, label %bb.bkr, label %Vec_StrPrintStr.exit1354

bb.bkr:                                           ; preds = %bb.bkq
  %.not9.i10.i2756 = icmp eq ptr %.pre3163.a, null
  %i.fge = zext nneg i32 %spec.select.i2754 to i64 ; 2 uses
  br i1 %.not9.i10.i2756, label %bb.bkt, label %bb.bks

bb.bks:                                           ; preds = %bb.bkr
  %i.fgf = tail call ptr @realloc(ptr noundef nonnull %.pre3163.a, i64 noundef %i.fge) #18
  br label %Vec_StrGrow.exit11.sink.split.i2757

bb.bkt:                                           ; preds = %bb.bkr
  %i.fgg = tail call noalias ptr @malloc(i64 noundef %i.fge) #19
  br label %Vec_StrGrow.exit11.sink.split.i2757

Vec_StrGrow.exit11.sink.split.i2757:              ; preds = %bb.bks, %bb.bkt, %bb.bko, %bb.bkp
  %i.fgh = phi ptr [ %i.fgb, %bb.bkp ], [ %i.fga, %bb.bko ], [ %i.fgf, %bb.bks ], [ %i.fgg, %bb.bkt ] ; 2 uses
  %spec.select.sink.i2758 = phi i32 [ 16, %bb.bkp ], [ 16, %bb.bko ], [ %spec.select.i2754, %bb.bks ], [ %spec.select.i2754, %bb.bkt ]
  store ptr %i.fgh, ptr %i.db, align 8, !tbaa !23
  store i32 %spec.select.sink.i2758, ptr %i.b, align 8, !tbaa !22
  %.pre3164 = load i32, ptr %i.da, align 4, !tbaa !20
  br label %Vec_StrPrintStr.exit1354

Vec_StrPrintStr.exit1354:                         ; preds = %Vec_StrGrow.exit11.sink.split.i2757, %bb.bkq, %.Vec_StrPush.exit2761_crit_edge, %Vec_StrGrow.exit11.sink.split.i2730, %bb.biq, %Vec_StrPush.exit2726.Vec_StrPush.exit2734_crit_edge, %.Vec_StrPush.exit_crit_edge.i2654.3, %bb.bgd, %Vec_StrGrow.exit11.sink.split.i.i2663.3, %.Vec_StrPush.exit_crit_edge.i2458, %bb.ayf, %Vec_StrGrow.exit11.sink.split.i.i2467, %.Vec_StrPush.exit_crit_edge.i2012.2, %bb.ahv, %Vec_StrGrow.exit11.sink.split.i.i2021.2, %.Vec_StrPush.exit_crit_edge.i1760.2, %bb.zr, %Vec_StrGrow.exit11.sink.split.i.i1769.2, %.Vec_StrPush.exit_crit_edge.i1417.3, %bb.os, %Vec_StrGrow.exit11.sink.split.i.i1426.3, %.Vec_StrPush.exit_crit_edge.i1341.1, %bb.lp, %Vec_StrGrow.exit11.sink.split.i.i1350.1
  %.sink3943 = phi i32 [ %.pre9.i1352.1, %Vec_StrGrow.exit11.sink.split.i.i1350.1 ], [ %.pre9.i2665.3, %Vec_StrGrow.exit11.sink.split.i.i2663.3 ], [ %.pre9.i2469, %Vec_StrGrow.exit11.sink.split.i.i2467 ], [ %.pre9.i2023.2, %Vec_StrGrow.exit11.sink.split.i.i2021.2 ], [ %.pre9.i1771.2, %Vec_StrGrow.exit11.sink.split.i.i1769.2 ], [ %.pre9.i1428.3, %Vec_StrGrow.exit11.sink.split.i.i1426.3 ], [ %.pre3155, %Vec_StrGrow.exit11.sink.split.i2730 ], [ %i.aiw, %.Vec_StrPush.exit_crit_edge.i1341.1 ], [ %i.aiw, %bb.lp ], [ %i.arp, %.Vec_StrPush.exit_crit_edge.i1417.3 ], [ %i.arp, %bb.os ], [ %i.btl, %.Vec_StrPush.exit_crit_edge.i1760.2 ], [ %i.btl, %bb.zr ], [ %i.cnb, %.Vec_StrPush.exit_crit_edge.i2012.2 ], [ %i.cnb, %bb.ahv ], [ %i.dza, %.Vec_StrPush.exit_crit_edge.i2458 ], [ %i.dza, %bb.ayf ], [ %i.esi, %.Vec_StrPush.exit_crit_edge.i2654.3 ], [ %i.esi, %bb.bgd ], [ %i.exy, %Vec_StrPush.exit2726.Vec_StrPush.exit2734_crit_edge ], [ %i.exy, %bb.biq ], [ %i.ffv, %.Vec_StrPush.exit2761_crit_edge ], [ %i.ffv, %bb.bkq ], [ %.pre3164, %Vec_StrGrow.exit11.sink.split.i2757 ] ; 2 uses
  %.sink3939 = phi ptr [ %i.aji, %Vec_StrGrow.exit11.sink.split.i.i1350.1 ], [ %i.esu, %Vec_StrGrow.exit11.sink.split.i.i2663.3 ], [ %i.dzm, %Vec_StrGrow.exit11.sink.split.i.i2467 ], [ %i.cnn, %Vec_StrGrow.exit11.sink.split.i.i2021.2 ], [ %i.btx, %Vec_StrGrow.exit11.sink.split.i.i1769.2 ], [ %i.asb, %Vec_StrGrow.exit11.sink.split.i.i1426.3 ], [ %storemerge2997, %Vec_StrGrow.exit11.sink.split.i2730 ], [ %.pre.i1342.1, %.Vec_StrPush.exit_crit_edge.i1341.1 ], [ %.pre8.i1348.1, %bb.lp ], [ %.pre.i1418.3, %.Vec_StrPush.exit_crit_edge.i1417.3 ], [ %.pre8.i1424.3, %bb.os ], [ %.pre.i1761.2, %.Vec_StrPush.exit_crit_edge.i1760.2 ], [ %.pre8.i1767.2, %bb.zr ], [ %.pre.i2013.2, %.Vec_StrPush.exit_crit_edge.i2012.2 ], [ %.pre8.i2019.2, %bb.ahv ], [ %.pre.i2459, %.Vec_StrPush.exit_crit_edge.i2458 ], [ %.pre8.i2465, %bb.ayf ], [ %.pre.i2655.3, %.Vec_StrPush.exit_crit_edge.i2654.3 ], [ %.pre8.i2661.3, %bb.bgd ], [ %.pre3153.a, %Vec_StrPush.exit2726.Vec_StrPush.exit2734_crit_edge ], [ %.pre3154.a, %bb.biq ], [ %.pre3162.a, %.Vec_StrPush.exit2761_crit_edge ], [ %.pre3163.a, %bb.bkq ], [ %i.fgh, %Vec_StrGrow.exit11.sink.split.i2757 ]
  %i.fgi = add nsw i32 %.sink3943, 1
  store i32 %i.fgi, ptr %i.da, align 4, !tbaa !20
  %i.fgj = sext i32 %.sink3943 to i64
  %i.fgk = getelementptr inbounds i8, ptr %.sink3939, i64 %i.fgj
  store i8 59, ptr %i.fgk, align 1, !tbaa !17
  %i.fgl = load ptr, ptr %0, align 8, !tbaa !57
  %i.fgm = getelementptr inbounds nuw i8, ptr %i.fgl, i64 1584
  br i1 %.not.i, label %Cba_ManWriteLineFile.exit2767, label %bb.bku

bb.bku:                                           ; preds = %Vec_StrPrintStr.exit1354
  %i.fgn = trunc nuw nsw i64 %indvars.iv3111 to i32 ; 2 uses
  %i.fgo = tail call fastcc i32 @Cba_ObjAttrValue(ptr noundef nonnull %0, i32 noundef %i.fgn, i32 noundef %i.d) ; 2 uses
  %.not14.i2763 = icmp eq i32 %i.fgo, 0
  br i1 %.not14.i2763, label %Cba_ManWriteLineFile.exit2767, label %bb.bkv

bb.bkv:                                           ; preds = %bb.bku
  %i.fgp = tail call fastcc i32 @Cba_ObjAttrValue(ptr noundef nonnull %0, i32 noundef %i.fgn, i32 noundef %i.f)
  %.val.i2764 = load ptr, ptr %0, align 8, !tbaa !57
  %i.fgq = getelementptr i8, ptr %.val.i2764, i64 16
  %.val.val.i2765 = load ptr, ptr %i.fgq, align 8, !tbaa !61
  %i.fgr = tail call ptr @Abc_NamStr(ptr noundef %.val.val.i2765, i32 noundef %i.fgo) #17
  %i.fgs = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.fgm, ptr noundef nonnull @.str.69, ptr noundef %i.fgr, i32 noundef %i.fgp) ; 0 uses
  br label %Cba_ManWriteLineFile.exit2767

Cba_ManWriteLineFile.exit2767:                    ; preds = %Vec_StrPrintStr.exit1354, %bb.bku, %bb.bkv
  %.not825 = phi i1 [ false, %bb.bkv ], [ true, %bb.bku ], [ true, %Vec_StrPrintStr.exit1354 ]
  %.val974 = load ptr, ptr %i.tn, align 8, !tbaa !23
  %i.fgt = getelementptr inbounds nuw i8, ptr %.val974, i64 %indvars.iv3111
  %i.fgu = load i8, ptr %i.fgt, align 1, !tbaa !17
  %.not2999 = icmp eq i8 %i.fgu, 3
  br i1 %.not2999, label %Vec_StrPrintStr.exit2838, label %bb.bkw

bb.bkw:                                           ; preds = %Cba_ManWriteLineFile.exit2767
  %i.fgv = add nuw nsw i64 %indvars.iv3111, 1     ; 3 uses
  %i.fgw = load i32, ptr %i.tv, align 4, !tbaa !24 ; 3 uses
  %i.fgx = sext i32 %i.fgw to i64                 ; 3 uses
  %.not.i.not.i.i2768 = icmp slt i64 %indvars.iv3111, %i.fgx
  br i1 %.not.i.not.i.i2768, label %Cba_ObjName.exit2784, label %bb.bkx

bb.bkx:                                           ; preds = %bb.bkw
  %i.fgy = load i32, ptr %i.tu, align 8, !tbaa !56 ; 4 uses
  %i.fgz = shl nsw i32 %i.fgy, 1                  ; 2 uses
  %i.fha = sext i32 %i.fgz to i64
  %.not.i.i2769 = icmp slt i64 %indvars.iv3111, %i.fha
  br i1 %.not.i.i2769, label %bb.blc, label %bb.bky

bb.bky:                                           ; preds = %bb.bkx
  %i.fhb = load ptr, ptr %i.tw, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i.i2771 = icmp eq ptr %i.fhb, null
  %i.fhc = shl nuw nsw i64 %i.fgv, 2              ; 2 uses
  br i1 %.not9.i.i.i.i2771, label %bb.bla, label %bb.bkz

bb.bkz:                                           ; preds = %bb.bky
  %i.fhd = tail call ptr @realloc(ptr noundef nonnull %i.fhb, i64 noundef %i.fhc) #18
  br label %bb.blb

bb.bla:                                           ; preds = %bb.bky
  %i.fhe = tail call noalias ptr @malloc(i64 noundef %i.fhc) #19
  br label %bb.blb

bb.blb:                                           ; preds = %bb.bla, %bb.bkz
  %i.fhf = phi ptr [ %i.fhd, %bb.bkz ], [ %i.fhe, %bb.bla ]
  store ptr %i.fhf, ptr %i.tw, align 8, !tbaa !25
  %i.fhg = trunc nuw nsw i64 %i.fgv to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i2772

bb.blc:                                           ; preds = %bb.bkx
  %i.fhh = sext i32 %i.fgy to i64
  %.not.i.i.not.i.i2770 = icmp slt i64 %indvars.iv3111, %i.fhh
  br i1 %.not.i.i.not.i.i2770, label %Vec_IntGrow.exit.i.i.i2775, label %bb.bld

bb.bld:                                           ; preds = %bb.blc
  %i.fhi = icmp slt i32 %i.fgy, 1073741823
  %spec.select.i.i.i2781 = select i1 %i.fhi, i32 %i.fgz, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i2782 = icmp slt i32 %i.fgy, %spec.select.i.i.i2781
  br i1 %.not.i22.i.i.i2782, label %bb.ble, label %Vec_IntGrow.exit.i.i.i2775

bb.ble:                                           ; preds = %bb.bld
  %i.fhj = load ptr, ptr %i.tw, align 8, !tbaa !25 ; 2 uses
  %.not9.i23.i.i.i2783 = icmp eq ptr %i.fhj, null
  %i.fhk = sext i32 %spec.select.i.i.i2781 to i64
  %i.fhl = shl nsw i64 %i.fhk, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i2783, label %bb.blg, label %bb.blf

bb.blf:                                           ; preds = %bb.ble
  %i.fhm = tail call ptr @realloc(ptr noundef nonnull %i.fhj, i64 noundef %i.fhl) #18
  br label %bb.blh

bb.blg:                                           ; preds = %bb.ble
  %i.fhn = tail call noalias ptr @malloc(i64 noundef %i.fhl) #19
  br label %bb.blh

bb.blh:                                           ; preds = %bb.blg, %bb.blf
  %i.fho = phi ptr [ %i.fhm, %bb.blf ], [ %i.fhn, %bb.blg ]
  store ptr %i.fho, ptr %i.tw, align 8, !tbaa !25
  br label %Vec_IntGrow.exit.sink.split.i.i.i2772

Vec_IntGrow.exit.sink.split.i.i.i2772:            ; preds = %bb.blh, %bb.blb
  %spec.select.sink.i.i.i2773 = phi i32 [ %spec.select.i.i.i2781, %bb.blh ], [ %i.fhg, %bb.blb ]
  store i32 %spec.select.sink.i.i.i2773, ptr %i.tu, align 8, !tbaa !56
  %.pre.i.i2774 = load i32, ptr %i.tv, align 4, !tbaa !24 ; 2 uses
  %.pre3193 = sext i32 %.pre.i.i2774 to i64
  br label %Vec_IntGrow.exit.i.i.i2775

Vec_IntGrow.exit.i.i.i2775:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i2772, %bb.bld, %bb.blc
  %.pre-phi = phi i64 [ %.pre3193, %Vec_IntGrow.exit.sink.split.i.i.i2772 ], [ %i.fgx, %bb.bld ], [ %i.fgx, %bb.blc ] ; 2 uses
  %i.fhp = phi i32 [ %.pre.i.i2774, %Vec_IntGrow.exit.sink.split.i.i.i2772 ], [ %i.fgw, %bb.bld ], [ %i.fgw, %bb.blc ]
  %.not3.i.i2776 = icmp sgt i64 %.pre-phi, %indvars.iv3111
  br i1 %.not3.i.i2776, label %._crit_edge.i.i.i2779, label %.lr.ph.i.i.i2777

.lr.ph.i.i.i2777:                                 ; preds = %Vec_IntGrow.exit.i.i.i2775
  %i.fhq = load ptr, ptr %i.tw, align 8, !tbaa !25
  %i.fhr = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i2778 = getelementptr i8, ptr %i.fhq, i64 %i.fhr
  %i.fhs = trunc nuw nsw i64 %indvars.iv3111 to i32
  %i.fht = sub i32 %i.fhs, %i.fhp
  %i.fhu = zext i32 %i.fht to i64
  %i.fhv = shl nuw nsw i64 %i.fhu, 2
  %i.fhw = add nuw nsw i64 %i.fhv, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i2778, i8 0, i64 %i.fhw, i1 false), !tbaa !26
  br label %._crit_edge.i.i.i2779

._crit_edge.i.i.i2779:                            ; preds = %.lr.ph.i.i.i2777, %Vec_IntGrow.exit.i.i.i2775
  %i.fhx = trunc nuw nsw i64 %i.fgv to i32
  store i32 %i.fhx, ptr %i.tv, align 4, !tbaa !24
  br label %Cba_ObjName.exit2784

Cba_ObjName.exit2784:                             ; preds = %bb.bkw, %._crit_edge.i.i.i2779
  %.val.i.i2780 = load ptr, ptr %i.tw, align 8, !tbaa !25
  %i.fhy = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2780, i64 %indvars.iv3111
  %i.fhz = load i32, ptr %i.fhy, align 4, !tbaa !26
  %.not824 = icmp eq i32 %i.fhz, 0
  br i1 %.not824, label %Vec_StrPrintStr.exit2838, label %bb.bli

bb.bli:                                           ; preds = %Cba_ObjName.exit2784
  br i1 %.not825, label %.lr.ph.i2786.preheader, label %.lr.ph.i2804

.lr.ph.i2786.preheader:                           ; preds = %bb.bli
  %i.fia = load i32, ptr %i.da, align 4, !tbaa !20 ; 7 uses
  %i.fib = load i32, ptr %i.b, align 8, !tbaa !22
  %i.fic = icmp eq i32 %i.fia, %i.fib
  br i1 %i.fic, label %bb.blj, label %.Vec_StrPush.exit_crit_edge.i2789

.Vec_StrPush.exit_crit_edge.i2789:                ; preds = %.lr.ph.i2786.preheader
  %.pre.i2790 = load ptr, ptr %i.db, align 8, !tbaa !23
  br label %Vec_StrPush.exit.i2791

bb.blj:                                           ; preds = %.lr.ph.i2786.preheader
  %i.fid = icmp slt i32 %i.fia, 16
  br i1 %i.fid, label %bb.blk, label %bb.bln

bb.blk:                                           ; preds = %bb.blj
  %i.fie = load ptr, ptr %i.db, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i.i2801 = icmp eq ptr %i.fie, null
  br i1 %.not9.i.i.i2801, label %bb.blm, label %bb.bll

bb.bll:                                           ; preds = %bb.blk
  %i.fif = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fie, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2798

bb.blm:                                           ; preds = %bb.blk
  %i.fig = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2798

bb.bln:                                           ; preds = %bb.blj
  %i.fih = icmp samesign ult i32 %i.fia, 1073741823
  %i.fii = shl nuw nsw i32 %i.fia, 1
  %spec.select.i.i2794 = select i1 %i.fih, i32 %i.fii, i32 2147483647 ; 4 uses
  %.not.i9.i.i2795 = icmp samesign ult i32 %i.fia, %spec.select.i.i2794
  %.pre8.i2796 = load ptr, ptr %i.db, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i.i2795, label %bb.blo, label %Vec_StrPush.exit.i2791

bb.blo:                                           ; preds = %bb.bln
  %.not9.i10.i.i2797 = icmp eq ptr %.pre8.i2796, null
  %i.fij = zext nneg i32 %spec.select.i.i2794 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2797, label %bb.blq, label %bb.blp

bb.blp:                                           ; preds = %bb.blo
  %i.fik = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2796, i64 noundef %i.fij) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2798

bb.blq:                                           ; preds = %bb.blo
  %i.fil = tail call noalias ptr @malloc(i64 noundef %i.fij) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2798

Vec_StrGrow.exit11.sink.split.i.i2798:            ; preds = %bb.blq, %bb.blp, %bb.blm, %bb.bll
  %i.fim = phi ptr [ %i.fig, %bb.blm ], [ %i.fif, %bb.bll ], [ %i.fik, %bb.blp ], [ %i.fil, %bb.blq ] ; 2 uses
  %spec.select.sink.i.i2799 = phi i32 [ 16, %bb.blm ], [ 16, %bb.bll ], [ %spec.select.i.i2794, %bb.blp ], [ %spec.select.i.i2794, %bb.blq ]
  store ptr %i.fim, ptr %i.db, align 8, !tbaa !23
  store i32 %spec.select.sink.i.i2799, ptr %i.b, align 8, !tbaa !22
  %.pre9.i2800 = load i32, ptr %i.da, align 4, !tbaa !20
  br label %Vec_StrPush.exit.i2791

Vec_StrPush.exit.i2791:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2798, %bb.bln, %.Vec_StrPush.exit_crit_edge.i2789
  %i.fin = phi i32 [ %i.fia, %.Vec_StrPush.exit_crit_edge.i2789 ], [ %i.fia, %bb.bln ], [ %.pre9.i2800, %Vec_StrGrow.exit11.sink.split.i.i2798 ] ; 2 uses
  %i.fio = phi ptr [ %.pre.i2790, %.Vec_StrPush.exit_crit_edge.i2789 ], [ %.pre8.i2796, %bb.bln ], [ %i.fim, %Vec_StrGrow.exit11.sink.split.i.i2798 ]
  %i.fip = add nsw i32 %i.fin, 1
  store i32 %i.fip, ptr %i.da, align 4, !tbaa !20
  %i.fiq = sext i32 %i.fin to i64
  %i.fir = getelementptr inbounds i8, ptr %i.fio, i64 %i.fiq
end_hunk_1
