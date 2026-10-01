Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z37?download=true
inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FontChange:bb.a
  %.pre-phi589 = phi i64 [ %.pre588, %bb.jn ], [ %i.arw, %bb.jm ]
  %i.ate = phi ptr [ %.pre581, %bb.jn ], [ %i.arv, %bb.jm ] ; 7 uses
  %i.atf = load i16, ptr %i.asa, align 8
  %i.atg = and i16 %i.atf, 4095
  %i.ath = zext nneg i16 %i.atg to i64
  %i.ati = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 8
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !33 ; 2 uses
  %i.atl = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %.pre-phi589 ; 3 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 8
  store ptr %i.atk, ptr %i.atm, align 8, !tbaa !33
  %i.atn = load i16, ptr %i.aql, align 8
  %i.ato = and i16 %i.atn, 4095
  %i.atp = zext nneg i16 %i.ato to i64
  %i.atq = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.atp
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !32
  %i.ats = load i16, ptr %i.asa, align 8
  %i.att = and i16 %i.ats, 4095
  %i.atu = zext nneg i16 %i.att to i64
  %i.atv = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.atu
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !32
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jr
  %indvars.iv562 = phi i64 [ 0, %bb.jo ], [ %indvars.iv.next563, %bb.jr ] ; 4 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atk, i64 %indvars.iv562
  %i.aty = load i8, ptr %i.atx, align 1, !tbaa !8
  %.not379 = icmp eq i8 %i.aty, 1
  br i1 %.not379, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.atz = getelementptr inbounds nuw [10 x i8], ptr %i.atw, i64 %indvars.iv562 ; 5 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 4
  %i.aub = load i16, ptr %i.aua, align 2, !tbaa !38
  %i.auc = sext i16 %i.aub to i32
  %i.aud = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.aue = mul nsw i32 %i.aud, %i.auc
  %i.auf = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.aug = sdiv i32 %i.aue, %i.auf
  %i.auh = trunc i32 %i.aug to i16
  %i.aui = getelementptr inbounds nuw [10 x i8], ptr %i.atr, i64 %indvars.iv562 ; 5 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 4
  store i16 %i.auh, ptr %i.auj, align 2, !tbaa !38
  %i.auk = getelementptr inbounds nuw i8, ptr %i.atz, i64 6
  %i.aul = load i16, ptr %i.auk, align 2, !tbaa !31
  %i.aum = sext i16 %i.aul to i32
  %i.aun = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.auo = mul nsw i32 %i.aun, %i.aum
  %i.aup = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.auq = sdiv i32 %i.auo, %i.aup
  %i.aur = trunc i32 %i.auq to i16
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aui, i64 6
  store i16 %i.aur, ptr %i.aus, align 2, !tbaa !31
  %i.aut = getelementptr inbounds nuw i8, ptr %i.atz, i64 2
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !39
  %i.auv = sext i16 %i.auu to i32
  %i.auw = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.aux = mul nsw i32 %i.auw, %i.auv
  %i.auy = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.auz = sdiv i32 %i.aux, %i.auy
  %i.ava = trunc i32 %i.auz to i16
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aui, i64 2
  store i16 %i.ava, ptr %i.avb, align 2, !tbaa !39
  %i.avc = load i16, ptr %i.atz, align 2, !tbaa !40
  %i.avd = sext i16 %i.avc to i32
  %i.ave = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.avf = mul nsw i32 %i.ave, %i.avd
  %i.avg = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.avh = sdiv i32 %i.avf, %i.avg
  %i.avi = trunc i32 %i.avh to i16
  store i16 %i.avi, ptr %i.aui, align 2, !tbaa !40
  %i.avj = getelementptr inbounds nuw i8, ptr %i.atz, i64 8
  %i.avk = load i16, ptr %i.avj, align 2, !tbaa !41
  %i.avl = sext i16 %i.avk to i32
  %i.avm = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.avn = mul nsw i32 %i.avm, %i.avl
  %i.avo = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.avp = sdiv i32 %i.avn, %i.avo
  %i.avq = trunc i32 %i.avp to i16
  %i.avr = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  store i16 %i.avq, ptr %i.avr, align 2, !tbaa !41
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, 256
  br i1 %exitcond565.not, label %bb.js, label %bb.jp, !llvm.loop !76

bb.js:                                            ; preds = %bb.jr
  %i.avs = load i16, ptr %i.asa, align 8
  %i.avt = and i16 %i.avs, 4095
  %i.avu = zext nneg i16 %i.avt to i64
  %i.avv = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.avu
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 16
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !90
  %i.avy = getelementptr inbounds nuw i8, ptr %i.atl, i64 16
  store ptr %i.avx, ptr %i.avy, align 8, !tbaa !90
  %i.avz = load i16, ptr %i.asa, align 8
  %i.awa = and i16 %i.avz, 4095
  %i.awb = zext nneg i16 %i.awa to i64
  %i.awc = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.awb
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 32
  %i.awe = load i32, ptr %i.awd, align 8, !tbaa !92 ; 4 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.atl, i64 32
  store i32 %i.awe, ptr %i.awf, align 8, !tbaa !92
  %i.awg = load i16, ptr %i.asa, align 8
  %i.awh = and i16 %i.awg, 4095
  %i.awi = zext nneg i16 %i.awh to i64
  %i.awj = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.awi
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 24
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !91
  %i.awm = sext i32 %i.awe to i64
  %i.awn = mul nsw i64 %i.awm, 6
  %i.awo = call noalias ptr @malloc(i64 noundef %i.awn) #14 ; 3 uses
  %i.awp = icmp eq ptr %i.awo, null
  br i1 %i.awp, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.awq = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 54, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %i.af) #13 ; 0 uses
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.awr = icmp sgt i32 %i.awe, 1
  br i1 %i.awr, label %.lr.ph514.preheader, label %._crit_edge515

.lr.ph514.preheader:                              ; preds = %bb.ju
  %wide.trip.count = zext nneg i32 %i.awe to i64
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %bb.jw
  %indvars.iv566 = phi i64 [ 1, %.lr.ph514.preheader ], [ %indvars.iv.next567, %bb.jw ] ; 3 uses
  %i.aws = getelementptr inbounds nuw [6 x i8], ptr %i.awl, i64 %indvars.iv566 ; 3 uses
  %i.awt = load i8, ptr %i.aws, align 2, !tbaa !84 ; 2 uses
  %i.awu = getelementptr inbounds nuw [6 x i8], ptr %i.awo, i64 %indvars.iv566 ; 2 uses
  store i8 %i.awt, ptr %i.awu, align 2, !tbaa !84
  %.not378 = icmp eq i8 %i.awt, 0
  br i1 %.not378, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %.lr.ph514
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aws, i64 2
  %i.aww = load i32, ptr %i.aqx, align 8, !tbaa !8 ; 2 uses
  %i.awx = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awu, i64 2
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aws, i64 4
  %i.axa = load i16, ptr %i.awv, align 2, !tbaa !85
  %i.axb = sext i16 %i.axa to i32
  %i.axc = mul nsw i32 %i.aww, %i.axb
  %i.axd = load i16, ptr %i.awz, align 2, !tbaa !86
  %i.axe = sext i16 %i.axd to i32
  %i.axf = mul nsw i32 %i.aww, %i.axe
  %i.axg = insertelement <2 x i32> poison, i32 %i.axc, i64 0
  %i.axh = insertelement <2 x i32> %i.axg, i32 %i.axf, i64 1
  %i.axi = insertelement <2 x i32> poison, i32 %i.awx, i64 0
  %i.axj = shufflevector <2 x i32> %i.axi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.axk = sdiv <2 x i32> %i.axh, %i.axj
  %i.axl = trunc <2 x i32> %i.axk to <2 x i16>
  store <2 x i16> %i.axl, ptr %i.awy, align 2, !tbaa !23
  br label %bb.jw

bb.jw:                                            ; preds = %.lr.ph514, %bb.jv
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count
  br i1 %exitcond569.not, label %._crit_edge515, label %.lr.ph514, !llvm.loop !77

._crit_edge515:                                   ; preds = %bb.jw, %bb.ju
  %i.axm = load ptr, ptr @finfo, align 8, !tbaa !14 ; 5 uses
  %i.axn = load i32, ptr @font_count, align 4, !tbaa !7
  %i.axo = zext i32 %i.axn to i64
  %i.axp = getelementptr inbounds nuw [96 x i8], ptr %i.axm, i64 %i.axo ; 6 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 24
  store ptr %i.awo, ptr %i.axq, align 8, !tbaa !91
  %i.axr = load i16, ptr %i.asa, align 8
  %i.axs = and i16 %i.axr, 4095
  %i.axt = zext nneg i16 %i.axs to i64
  %i.axu = getelementptr inbounds nuw [96 x i8], ptr %i.axm, i64 %i.axt
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 64
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !34
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axp, i64 64
  store ptr %i.axw, ptr %i.axx, align 8, !tbaa !34
  %i.axy = load i16, ptr %i.asa, align 8
  %i.axz = and i16 %i.axy, 4095
  %i.aya = zext nneg i16 %i.axz to i64
  %i.ayb = getelementptr inbounds nuw [96 x i8], ptr %i.axm, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 72
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !35
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axp, i64 72
  store ptr %i.ayd, ptr %i.aye, align 8, !tbaa !35
  %i.ayf = load i16, ptr %i.asa, align 8
  %i.ayg = and i16 %i.ayf, 4095
  %i.ayh = zext nneg i16 %i.ayg to i64
  %i.ayi = getelementptr inbounds nuw [96 x i8], ptr %i.axm, i64 %i.ayh
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 80
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !36
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axp, i64 80
  store ptr %i.ayk, ptr %i.ayl, align 8, !tbaa !36
  %i.aym = load i16, ptr %i.asa, align 8
  %i.ayn = and i16 %i.aym, 4095
  %i.ayo = zext nneg i16 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw [96 x i8], ptr %i.axm, i64 %i.ayo
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 88
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !37 ; 7 uses
  %3 = ptrtoaddr ptr %i.ayr to i64
  %.not377 = icmp eq ptr %i.ayr, null
  br i1 %.not377, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %._crit_edge515
  %i.ays = load i16, ptr %i.ayr, align 2, !tbaa !23 ; 5 uses
  %wide.trip.count573 = zext i16 %i.ays to i64    ; 4 uses
  %i.ayt = sext i16 %i.ays to i64
  %i.ayu = shl nsw i64 %i.ayt, 1
  %i.ayv = call noalias ptr @malloc(i64 noundef %i.ayu) #14 ; 8 uses
  %4 = ptrtoaddr ptr %i.ayv to i64
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axp, i64 88
  store ptr %i.ayv, ptr %i.ayw, align 8, !tbaa !37
  %i.ayx = icmp eq ptr %i.ayv, null
  br i1 %i.ayx, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.ayy = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 55, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %i.af) #13 ; 0 uses
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  store i16 %i.ays, ptr %i.ayv, align 2, !tbaa !23
  %i.ayz = icmp sgt i16 %i.ays, 1
  br i1 %i.ayz, label %.lr.ph518.preheader, label %.loopexit

.lr.ph518.preheader:                              ; preds = %bb.jz
  %.pre583 = load i32, ptr %i.aqx, align 8, !tbaa !8 ; 4 uses
  %.pre584 = load i32, ptr %i.aqy, align 8, !tbaa !8 ; 4 uses
  %i.aza = add nsw i64 %wide.trip.count573, -1    ; 2 uses
  %min.iters.check = icmp ult i16 %i.ays, 9
  %5 = sub i64 %3, %4
  %diff.check = icmp ugt i64 %5, -16
  %or.cond725 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond725, label %.lr.ph518.preheader726, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph518.preheader
  %n.vec = and i64 %i.aza, -8                     ; 3 uses
  %i.azb = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.pre583, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert723 = insertelement <8 x i32> poison, i32 %.pre584, i64 0
  %broadcast.splat724 = shufflevector <8 x i32> %broadcast.splatinsert723, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.azc = or disjoint i64 %index, 1              ; 2 uses
  %i.azd = getelementptr inbounds nuw [2 x i8], ptr %i.ayr, i64 %i.azc
  %wide.load = load <8 x i16>, ptr %i.azd, align 2, !tbaa !23
  %i.aze = sext <8 x i16> %wide.load to <8 x i32>
  %i.azf = mul nsw <8 x i32> %broadcast.splat, %i.aze
  %i.azg = sdiv <8 x i32> %i.azf, %broadcast.splat724
  %i.azh = trunc <8 x i32> %i.azg to <8 x i16>
  %i.azi = getelementptr inbounds nuw [2 x i8], ptr %i.ayv, i64 %i.azc
  store <8 x i16> %i.azh, ptr %i.azi, align 2, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.azj = icmp eq i64 %index.next, %n.vec
  br i1 %i.azj, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aza, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph518.preheader726

.lr.ph518.preheader726:                           ; preds = %.lr.ph518.preheader, %middle.block
  %indvars.iv570.ph = phi i64 [ 1, %.lr.ph518.preheader ], [ %i.azb, %middle.block ] ; 5 uses
  %6 = and i64 %wide.trip.count573, 1
  %lcmp.mod770.not.not = icmp eq i64 %6, 0
  br i1 %lcmp.mod770.not.not, label %.lr.ph518.prol, label %.lr.ph518.prol.loopexit

.lr.ph518.prol:                                   ; preds = %.lr.ph518.preheader726
  %7 = getelementptr inbounds nuw [2 x i8], ptr %i.ayr, i64 %indvars.iv570.ph
  %8 = load i16, ptr %7, align 2, !tbaa !23
  %9 = sext i16 %8 to i32
  %10 = mul nsw i32 %.pre583, %9
  %11 = sdiv i32 %10, %.pre584
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds nuw [2 x i8], ptr %i.ayv, i64 %indvars.iv570.ph
  store i16 %12, ptr %13, align 2, !tbaa !23
  %indvars.iv.next571.prol = add nuw nsw i64 %indvars.iv570.ph, 1
  br label %.lr.ph518.prol.loopexit

.lr.ph518.prol.loopexit:                          ; preds = %.lr.ph518.prol, %.lr.ph518.preheader726
  %indvars.iv570.unr = phi i64 [ %indvars.iv570.ph, %.lr.ph518.preheader726 ], [ %indvars.iv.next571.prol, %.lr.ph518.prol ]
  %14 = add nsw i64 %wide.trip.count573, -1
  %15 = icmp eq i64 %indvars.iv570.ph, %14
  br i1 %15, label %.loopexit, label %.lr.ph518

.lr.ph518:                                        ; preds = %.lr.ph518.prol.loopexit, %.lr.ph518
  %indvars.iv570 = phi i64 [ %indvars.iv.next571.1, %.lr.ph518 ], [ %indvars.iv570.unr, %.lr.ph518.prol.loopexit ] ; 4 uses
  %16 = getelementptr inbounds nuw [2 x i8], ptr %i.ayr, i64 %indvars.iv570
  %17 = load i16, ptr %16, align 2, !tbaa !23
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %.pre583, %18
  %20 = sdiv i32 %19, %.pre584
  %21 = trunc i32 %20 to i16
  %22 = getelementptr inbounds nuw [2 x i8], ptr %i.ayv, i64 %indvars.iv570
  store i16 %21, ptr %22, align 2, !tbaa !23
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.azk = getelementptr inbounds nuw [2 x i8], ptr %i.ayr, i64 %indvars.iv.next571
  %i.azl = load i16, ptr %i.azk, align 2, !tbaa !23
  %i.azm = sext i16 %i.azl to i32
  %i.azn = mul nsw i32 %.pre583, %i.azm
  %i.azo = sdiv i32 %i.azn, %.pre584
  %i.azp = trunc i32 %i.azo to i16
  %i.azq = getelementptr inbounds nuw [2 x i8], ptr %i.ayv, i64 %indvars.iv.next571
  store i16 %i.azp, ptr %i.azq, align 2, !tbaa !23
  %indvars.iv.next571.1 = add nuw nsw i64 %indvars.iv570, 2 ; 2 uses
  %exitcond574.not.1 = icmp eq i64 %indvars.iv.next571.1, %wide.trip.count573
  br i1 %exitcond574.not.1, label %.loopexit, label %.lr.ph518, !llvm.loop !79

bb.ka:                                            ; preds = %._crit_edge515
  %i.azr = getelementptr inbounds nuw i8, ptr %i.axp, i64 88
  store ptr null, ptr %i.azr, align 8, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph518.prol.loopexit, %.lr.ph518, %middle.block, %bb.jz, %bb.ka
  %i.azs = load i32, ptr @font_count, align 4, !tbaa !7
  %i.azt = load i32, ptr %i.z, align 4
  %i.azu = and i32 %i.azs, 4095
  %i.azv = and i32 %i.azt, -4096
  %i.azw = or disjoint i32 %i.azv, %i.azu
  store i32 %i.azw, ptr %i.z, align 4
  %i.azx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.azy = load i16, ptr %i.azx, align 4
  %i.azz = and i16 %i.azy, 255
  %i.baa = or disjoint i16 %i.azz, 9728
  store i16 %i.baa, ptr %i.azx, align 4
  %i.bab = load i32, ptr %i.aru, align 8, !tbaa !8
  %i.bac = trunc i32 %i.bab to i16
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.bac, ptr %i.bad, align 2, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.preheader448, %bb.h, %bb.g, %bb.e, %bb.c, %bb.ia, %bb.ib, %._crit_edge, %.loopexit, %bb.ix, %bb.iu, %bb.aa, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @GetGap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @FontWordSize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8
  %.off = add i8 %i.c, -11
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.e = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %i.d, ptr noundef nonnull @.str.40) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !8
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = and i32 %i.i, 4095
  %i.k = load i32, ptr @font_count, align 4
  %i.l = freeze i32 %i.k
  %i.m = add nsw i32 %i.j, -1
  %or.cond.not = icmp ult i32 %i.m, %i.l
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 56, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #13 ; 0 uses
  %.pre = load i32, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = phi i32 [ %i.i, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %i.p = and i32 %i.o, 4190208
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @BackEnd, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !102
  %.not159 = icmp eq i32 %i.t, 0
  br i1 %.not159, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 57, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #13 ; 0 uses
  %.pre202 = load i32, ptr %i.h, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.v = phi i32 [ %.pre202, %bb.h ], [ %i.o, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  %i.w = and i32 %i.v, 528482304
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 58, ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #13 ; 0 uses
  %.pre203 = load i32, ptr %i.h, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i32 [ %.pre203, %bb.j ], [ %i.v, %bb.i ]
  %i.aa = load ptr, ptr @finfo, align 8, !tbaa !14
  %i.ab = and i32 %i.z, 4095
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.aa, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, 127
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2945 ; 3 uses
  %.pre204 = load i8, ptr %i.f, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k
  %i.aq = phi i8 [ %.pre204, %bb.k ], [ %i.ei, %.loopexit ] ; 5 uses
  %.0145 = phi ptr [ %i.f, %bb.k ], [ %.1146, %.loopexit ] ; 3 uses
  %.0143 = phi ptr [ %i.a, %bb.k ], [ %i.ed, %.loopexit ] ; 6 uses
  %.0138 = phi i32 [ 0, %bb.k ], [ %i.eh, %.loopexit ]
  %.0136 = phi i32 [ 0, %bb.k ], [ %spec.select, %.loopexit ]
  %.0135 = phi i32 [ 0, %bb.k ], [ %.1, %.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0145, i64 1 ; 7 uses
  store i8 %i.aq, ptr %.0143, align 1, !tbaa !8
  %i.as = zext i8 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  switch i8 %i.au, label %bb.q [
    i8 0, label %.loopexit
    i8 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = tail call ptr @MakeWord(i32 noundef 12, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.b) #13 ; 6 uses
  %i.aw = load i8, ptr %.0143, align 1, !tbaa !8  ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store i8 %i.aw, ptr %i.ax, align 8, !tbaa !8
  %i.ay = zext i8 %i.aw to i64                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ay ; 5 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8   ; 2 uses
  %.not164 = icmp eq i8 %i.ba, %i.aw
  br i1 %.not164, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !40
  %i.be = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.ay ; 5 uses
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !40
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !39
  %i.bl = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !38
  %i.br = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !31
  %i.bx = load i8, ptr %i.az, align 1, !tbaa !8
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ay
  store i8 0, ptr %i.cd, align 1, !tbaa !8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ce = tail call ptr @StringQuotedWord(ptr noundef nonnull %i.av) #13
  %i.cf = load i32, ptr %i.h, align 8
  %i.cg = and i32 %i.cf, 4095
  %i.ch = tail call ptr @FontFamilyAndFace(i32 noundef %i.cg) ; 0 uses
  %i.ci = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 60, ptr noundef nonnull @.str.45, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef %i.ce, ptr noundef nonnull @FontFamilyAndFace.buff) #13 ; 0 uses
  store i8 32, ptr %.0143, align 1, !tbaa !8
end_hunk_0
begin_hunk_1_@ReadCharMetrics:bb.a
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dv = load i32, ptr %4, align 4, !tbaa !7     ; 2 uses
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %4, align 4, !tbaa !7
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds i8, ptr %3, i64 %i.dx
  store i8 0, ptr %i.dy, align 1, !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.af
  %i.dz = load ptr, ptr @BackEnd, align 8, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !27
  %.not148 = icmp eq i32 %i.eb, 0
  br i1 %.not148, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw [10 x i8], ptr %6, i64 %i.ds
  %i.ed = insertelement <4 x i32> %i.db, i32 %.2131, i64 3
  %i.ee = sub nsw <4 x i32> %i.ed, %i.t
  %i.ef = trunc <4 x i32> %i.ee to <4 x i16>
  store <4 x i16> %i.ef, ptr %i.ec, align 2, !tbaa !23
  %i.eg = extractelement <4 x i32> %i.db, i64 3   ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  %i.ei = icmp eq i32 %.2131, 0
  %or.cond10 = select i1 %i.eh, i1 true, i1 %i.ei
  %or.cond12 = or i1 %i.r, %or.cond10
  %i.ej = sub nsw i32 %i.eg, %.2131
  %i.ek = trunc i32 %i.ej to i16
  %i.el = select i1 %or.cond12, i16 0, i16 %i.ek
  br label %._crit_edge.thread.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw [10 x i8], ptr %6, i64 %i.ds ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i16 0, ptr %i.en, align 2, !tbaa !38
  %i.eo = load i32, ptr @PlainCharHeight, align 4, !tbaa !7 ; 2 uses
  %i.ep = sdiv i32 %i.eo, -2
  %i.eq = trunc i32 %i.ep to i16
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !39
  %i.es = load i32, ptr @PlainCharWidth, align 4, !tbaa !7
  %i.et = trunc i32 %i.es to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !31
  %i.ev = sdiv i32 %i.eo, 2
  %i.ew = trunc i32 %i.ev to i16
  store i16 %i.ew, ptr %i.em, align 2, !tbaa !40
  br label %._crit_edge.thread.sink.split

._crit_edge.thread.sink.split:                    ; preds = %bb.aj, %bb.ai
  %.sink = phi i16 [ %i.el, %bb.ai ], [ 0, %bb.aj ]
  %i.ex = getelementptr inbounds nuw [10 x i8], ptr %6, i64 %i.ds
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i16 %.sink, ptr %i.ey, align 2, !tbaa !41
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge.thread.sink.split, %._crit_edge
  %.1130.lcssa235 = phi i32 [ %.2131, %._crit_edge ], [ %.2131, %._crit_edge.thread.sink.split ], [ %.0129188, %bb.f ]
  %i.ez = phi <4 x i32> [ %i.db, %._crit_edge ], [ %i.db, %._crit_edge.thread.sink.split ], [ %i.u, %bb.f ]
  %i.fa = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef %8)
  %.not = icmp eq ptr %i.fa, null
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !132

.critedge:                                        ; preds = %bb.d, %._crit_edge.thread, %bb.c, %.preheader168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @MapCharEncoding(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS3rec", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"p1 _ZTS8font_rec", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"p1 _ZTS7metrics", !9, i64 0}
!17 = !{!"p1 omnipotent char", !9, i64 0}
!18 = !{!"p1 short", !9, i64 0}
!19 = !{!"p1 _ZTS13composite_rec", !9, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"font_rec", !16, i64 0, !17, i64 8, !18, i64 16, !19, i64 24, !6, i64 32, !10, i64 40, !10, i64 48, !20, i64 56, !20, i64 58, !18, i64 64, !17, i64 72, !17, i64 80, !18, i64 88}
!22 = !{!21, !10, i64 40}
!23 = !{!20, !20, i64 0}
!24 = !{!"p1 _ZTS12back_end_rec", !9, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"back_end_rec", !6, i64 0, !17, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224}
!27 = !{!26, !6, i64 40}
!28 = !{!"float", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"metrics", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8}
!31 = !{!30, !20, i64 6}
!32 = !{!21, !16, i64 0}
!33 = !{!21, !17, i64 8}
!34 = !{!21, !18, i64 64}
!35 = !{!21, !17, i64 72}
!36 = !{!21, !17, i64 80}
!37 = !{!21, !18, i64 88}
!38 = !{!30, !20, i64 4}
!39 = !{!30, !20, i64 2}
!40 = !{!30, !20, i64 0}
!41 = !{!30, !20, i64 8}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !80}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15, !95, !96}
!79 = distinct !{!79, !15, !95}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!"long", !5, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"composite_rec", !5, i64 0, !20, i64 2, !20, i64 4}
!84 = !{!83, !5, i64 0}
!85 = !{!83, !20, i64 2}
!86 = !{!83, !20, i64 4}
!87 = !{!21, !10, i64 48}
!88 = !{!21, !20, i64 56}
!89 = !{!21, !20, i64 58}
!90 = !{!21, !18, i64 16}
!91 = !{!21, !19, i64 24}
!92 = !{!21, !6, i64 32}
!93 = !{!"", !6, i64 0, !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !20, i64 2}
!94 = !{!93, !20, i64 2}
!95 = !{!"llvm.loop.isvectorized", i32 1}
!96 = !{!"llvm.loop.unroll.runtime.disable"}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15}
!101 = distinct !{!101, !15}
!102 = !{!26, !6, i64 44}
!103 = !{!"p1 _ZTS6mapvec", !9, i64 0}
!104 = !{!103, !103, i64 0}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !15}
!107 = distinct !{!107, !15}
!108 = distinct !{!108, !15}
!109 = distinct !{!109, !15}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = !{!26, !9, i64 64}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = distinct !{!117, !15}
!118 = !{!26, !9, i64 72}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = distinct !{!132, !15}
end_hunk_1
