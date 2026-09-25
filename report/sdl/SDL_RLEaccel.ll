Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_RLEaccel?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_RLEBlit:bb.a

bb.eg:                                            ; preds = %bb.ef
  %i.ath = load i32, ptr %i.k, align 8
  %i.ati = sext i32 %i.ath to i64
  %i.atj = getelementptr inbounds i8, ptr %.30944.i.ph, i64 %i.ati
  %i.atk = add nsw i32 %.01032.i.ph, -1           ; 2 uses
  %.not1312.i = icmp eq i32 %i.atk, 0
  br i1 %.not1312.i, label %RLEClipBlit.exit, label %.preheader1258.outer

.preheader1260:                                   ; preds = %.preheader1260.outer, %bb.em
  %.01008.i = phi i32 [ %.11009.i, %bb.em ], [ 0, %.preheader1260.outer ]
  %.33.i = phi ptr [ %.34.i, %bb.em ], [ %.33.i.ph, %.preheader1260.outer ] ; 4 uses
  %i.atl = load i16, ptr %.33.i, align 2
  %i.atm = zext i16 %i.atl to i32
  %i.atn = add nsw i32 %.01008.i, %i.atm          ; 6 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %.33.i, i64 2
  %i.atp = load i16, ptr %i.ato, align 2          ; 2 uses
  %i.atq = zext i16 %i.atp to i32                 ; 4 uses
  %i.atr = getelementptr i8, ptr %.33.i, i64 4    ; 3 uses
  %.not1307.i = icmp eq i16 %i.atp, 0
  br i1 %.not1307.i, label %bb.el, label %bb.eh

bb.eh:                                            ; preds = %.preheader1260
  %i.ats = icmp slt i32 %i.atn, %i.app
  br i1 %i.ats, label %bb.ei, label %.loopexit1473.i

bb.ei:                                            ; preds = %bb.eh
  %i.att = sub nsw i32 %i.ce, %i.atn              ; 3 uses
  %i.atu = icmp sgt i32 %i.att, 0
  br i1 %i.atu, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.atv = sub nsw i32 %i.atq, %i.att             ; 2 uses
  %i.atw = icmp slt i32 %i.atv, 1
  br i1 %i.atw, label %.loopexit1473.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.01007.i = phi i32 [ %i.att, %bb.ej ], [ 0, %bb.ei ] ; 2 uses
  %.01005.i = phi i32 [ %i.atv, %bb.ej ], [ %i.atq, %bb.ei ]
  %i.atx = add nsw i32 %.01007.i, %i.atn          ; 2 uses
  %i.aty = sub nsw i32 %i.app, %i.atx
  %spec.select1340.i = tail call i32 @llvm.smin.i32(i32 %.01005.i, i32 %i.aty) ; 5 uses
  %i.atz = icmp sgt i32 %spec.select1340.i, 0
  br i1 %i.atz, label %.lr.ph1541.preheader.i, label %.loopexit1473.i

.lr.ph1541.preheader.i:                           ; preds = %bb.ek
  %i.aua = shl i32 %i.atx, 2
  %i.aub = sext i32 %i.aua to i64                 ; 2 uses
  %i.auc = getelementptr i8, ptr %.33947.i.ph, i64 %i.aub ; 5 uses
  %i.aud = shl i32 %.01007.i, 2
  %i.aue = zext i32 %i.aud to i64                 ; 2 uses
  %i.auf = getelementptr i8, ptr %i.atr, i64 %i.aue ; 5 uses
  %i.aug = zext nneg i32 %spec.select1340.i to i64 ; 2 uses
  %min.iters.check1743 = icmp ult i32 %spec.select1340.i, 4
  br i1 %min.iters.check1743, label %.lr.ph1541.i.preheader, label %vector.memcheck1734

vector.memcheck1734:                              ; preds = %.lr.ph1541.preheader.i
  %i.auh = add nsw i32 %spec.select1340.i, -1
  %i.aui = zext i32 %i.auh to i64
  %i.auj = shl nuw nsw i64 %i.aui, 2              ; 2 uses
  %i.auk = getelementptr i8, ptr %scevgep1735, i64 %i.auj
  %scevgep1736 = getelementptr i8, ptr %i.auk, i64 %i.aub
  %scevgep1737 = getelementptr i8, ptr %.33.i, i64 8
  %i.aul = getelementptr i8, ptr %scevgep1737, i64 %i.auj
  %scevgep1738 = getelementptr i8, ptr %i.aul, i64 %i.aue
  %bound01739 = icmp ult ptr %i.auc, %scevgep1738
  %bound11740 = icmp ult ptr %i.auf, %scevgep1736
  %found.conflict1741 = and i1 %bound01739, %bound11740
  br i1 %found.conflict1741, label %.lr.ph1541.i.preheader, label %vector.ph1744

vector.ph1744:                                    ; preds = %vector.memcheck1734
  %n.vec1745 = and i64 %i.aug, 2147483644         ; 4 uses
  %i.aum = shl nuw nsw i64 %n.vec1745, 2          ; 2 uses
  %i.aun = getelementptr i8, ptr %i.auc, i64 %i.aum
  %i.auo = getelementptr i8, ptr %i.auf, i64 %i.aum
  %i.aup = trunc nuw nsw i64 %n.vec1745 to i32
  br label %vector.body1748

vector.body1748:                                  ; preds = %vector.body1748, %vector.ph1744
  %index1749 = phi i64 [ 0, %vector.ph1744 ], [ %index.next1754, %vector.body1748 ] ; 2 uses
  %i.auq = shl i64 %index1749, 2                  ; 2 uses
  %next.gep1750 = getelementptr i8, ptr %i.auc, i64 %i.auq ; 2 uses
  %next.gep1751 = getelementptr i8, ptr %i.auf, i64 %i.auq
  %wide.load1752 = load <4 x i32>, ptr %next.gep1751, align 4, !alias.scope !117 ; 2 uses
  %wide.load1753 = load <4 x i32>, ptr %next.gep1750, align 4, !alias.scope !118, !noalias !117 ; 2 uses
  %i.aur = and <4 x i32> %wide.load1752, splat (i32 16711935)
  %i.aus = and <4 x i32> %wide.load1753, splat (i32 16711935) ; 2 uses
  %i.aut = sub nsw <4 x i32> %i.aur, %i.aus
  %i.auu = mul <4 x i32> %i.aut, %broadcast.splat1747
  %i.auv = lshr <4 x i32> %i.auu, splat (i32 8)
  %i.auw = add nuw nsw <4 x i32> %i.auv, %i.aus
  %i.aux = and <4 x i32> %i.auw, splat (i32 16711935)
  %i.auy = and <4 x i32> %wide.load1752, splat (i32 65280)
  %i.auz = and <4 x i32> %wide.load1753, splat (i32 65280) ; 2 uses
  %i.ava = sub nsw <4 x i32> %i.auy, %i.auz
  %i.avb = mul nsw <4 x i32> %i.ava, %broadcast.splat1747
  %i.avc = lshr exact <4 x i32> %i.avb, splat (i32 8)
  %i.avd = add nuw nsw <4 x i32> %i.avc, %i.auz
  %i.ave = and <4 x i32> %i.avd, splat (i32 65280)
  %i.avf = or disjoint <4 x i32> %i.aux, %i.ave
  store <4 x i32> %i.avf, ptr %next.gep1750, align 4, !alias.scope !118, !noalias !117
  %index.next1754 = add nuw i64 %index1749, 4     ; 2 uses
  %i.avg = icmp eq i64 %index.next1754, %n.vec1745
  br i1 %i.avg, label %middle.block1755, label %vector.body1748, !llvm.loop !57

middle.block1755:                                 ; preds = %vector.body1748
  %cmp.n1756 = icmp eq i64 %n.vec1745, %i.aug
  br i1 %cmp.n1756, label %.loopexit1473.i, label %.lr.ph1541.i.preheader

.lr.ph1541.i.preheader:                           ; preds = %vector.memcheck1734, %.lr.ph1541.preheader.i, %middle.block1755
  %.010021539.i.ph = phi ptr [ %i.auc, %vector.memcheck1734 ], [ %i.auc, %.lr.ph1541.preheader.i ], [ %i.aun, %middle.block1755 ]
  %.010031538.i.ph = phi ptr [ %i.auf, %vector.memcheck1734 ], [ %i.auf, %.lr.ph1541.preheader.i ], [ %i.auo, %middle.block1755 ]
  %.010041537.i.ph = phi i32 [ 0, %vector.memcheck1734 ], [ 0, %.lr.ph1541.preheader.i ], [ %i.aup, %middle.block1755 ]
  br label %.lr.ph1541.i

.lr.ph1541.i:                                     ; preds = %.lr.ph1541.i.preheader, %.lr.ph1541.i
  %.010021539.i = phi ptr [ %i.avz, %.lr.ph1541.i ], [ %.010021539.i.ph, %.lr.ph1541.i.preheader ] ; 3 uses
  %.010031538.i = phi ptr [ %i.avh, %.lr.ph1541.i ], [ %.010031538.i.ph, %.lr.ph1541.i.preheader ] ; 2 uses
  %.010041537.i = phi i32 [ %i.awa, %.lr.ph1541.i ], [ %.010041537.i.ph, %.lr.ph1541.i.preheader ]
  %i.avh = getelementptr inbounds nuw i8, ptr %.010031538.i, i64 4
  %i.avi = load i32, ptr %.010031538.i, align 4   ; 2 uses
  %i.avj = load i32, ptr %.010021539.i, align 4   ; 2 uses
  %i.avk = and i32 %i.avi, 16711935
  %i.avl = and i32 %i.avj, 16711935               ; 2 uses
  %i.avm = sub nsw i32 %i.avk, %i.avl
  %i.avn = mul i32 %i.avm, %i.cd
  %i.avo = lshr i32 %i.avn, 8
  %i.avp = add nuw nsw i32 %i.avo, %i.avl
  %i.avq = and i32 %i.avp, 16711935
  %i.avr = and i32 %i.avi, 65280
  %i.avs = and i32 %i.avj, 65280                  ; 2 uses
  %i.avt = sub nsw i32 %i.avr, %i.avs
  %i.avu = mul nsw i32 %i.avt, %i.cd
  %i.avv = lshr exact i32 %i.avu, 8
  %i.avw = add nuw nsw i32 %i.avv, %i.avs
  %i.avx = and i32 %i.avw, 65280
  %i.avy = or disjoint i32 %i.avq, %i.avx
  %i.avz = getelementptr inbounds nuw i8, ptr %.010021539.i, i64 4
  store i32 %i.avy, ptr %.010021539.i, align 4
  %i.awa = add nuw nsw i32 %.010041537.i, 1       ; 2 uses
  %exitcond1568.not.i = icmp eq i32 %i.awa, %spec.select1340.i
  br i1 %exitcond1568.not.i, label %.loopexit1473.i, label %.lr.ph1541.i, !llvm.loop !58

.loopexit1473.i:                                  ; preds = %.lr.ph1541.i, %middle.block1755, %bb.ek, %bb.ej, %bb.eh
  %i.awb = shl nuw nsw i32 %i.atq, 2
  %i.awc = zext nneg i32 %i.awb to i64
  %i.awd = getelementptr inbounds nuw i8, ptr %i.atr, i64 %i.awc
  %i.awe = add nsw i32 %i.atn, %i.atq
  br label %bb.em

bb.el:                                            ; preds = %.preheader1260
  %.not1308.i = icmp eq i32 %i.atn, 0
  br i1 %.not1308.i, label %RLEClipBlit.exit, label %bb.em

bb.em:                                            ; preds = %bb.el, %.loopexit1473.i
  %.11009.i = phi i32 [ %i.awe, %.loopexit1473.i ], [ %i.atn, %bb.el ] ; 2 uses
  %.34.i = phi ptr [ %i.awd, %.loopexit1473.i ], [ %i.atr, %bb.el ] ; 2 uses
  %i.awf = icmp eq i32 %.11009.i, %i.b
  br i1 %i.awf, label %bb.en, label %.preheader1260

bb.en:                                            ; preds = %bb.em
  %i.awg = load i32, ptr %i.k, align 8
  %i.awh = sext i32 %i.awg to i64
  %i.awi = getelementptr inbounds i8, ptr %.33947.i.ph, i64 %i.awh
  %i.awj = add nsw i32 %.01012.i.ph, -1           ; 2 uses
  %.not1309.i = icmp eq i32 %i.awj, 0
  br i1 %.not1309.i, label %RLEClipBlit.exit, label %.preheader1260.outer

.preheader1260.outer:                             ; preds = %.preheader1260.preheader, %bb.en
  %.01012.i.ph = phi i32 [ %i.apm, %.preheader1260.preheader ], [ %i.awj, %bb.en ]
  %.33947.i.ph = phi ptr [ %i.apt, %.preheader1260.preheader ], [ %i.awi, %bb.en ] ; 3 uses
  %.33.i.ph = phi ptr [ %.13700.ph, %.preheader1260.preheader ], [ %.34.i, %bb.en ]
  %scevgep1735 = getelementptr i8, ptr %.33947.i.ph, i64 4
  br label %.preheader1260

bb.eo:                                            ; preds = %bb.dy, %bb.dx
  %i.awk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.awl = load i32, ptr %i.awk, align 4
  %i.awm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.awn = load i32, ptr %i.awm, align 4
  %i.awo = add nsw i32 %i.awn, %i.ce              ; 2 uses
  %i.awp = shl nsw i32 %i.ce, 2
  %i.awq = sext i32 %i.awp to i64
  %i.awr = sub nsw i64 0, %i.awq
  %i.aws = getelementptr inbounds i8, ptr %i.w, i64 %i.awr
  %i.awt = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.awu = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.awv = getelementptr inbounds nuw i8, ptr %i.cj, i64 25
  %i.aww = getelementptr inbounds nuw i8, ptr %i.cj, i64 29
  %i.awx = getelementptr inbounds nuw i8, ptr %i.cj, i64 26
  %i.awy = getelementptr inbounds nuw i8, ptr %i.cj, i64 30
  %i.awz = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  br label %.outer2056

.outer2056:                                       ; preds = %bb.ew, %bb.eo
  %.0970.i.ph = phi i32 [ %i.bbp, %bb.ew ], [ %i.awl, %bb.eo ]
  %.36950.i.ph = phi ptr [ %i.bbo, %bb.ew ], [ %i.aws, %bb.eo ] ; 2 uses
  %.36.i.ph = phi ptr [ %.37.i, %bb.ew ], [ %.13700.ph, %bb.eo ]
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ev, %.outer2056
  %.0966.i = phi i32 [ 0, %.outer2056 ], [ %.1967.i, %bb.ev ]
  %.36.i = phi ptr [ %.36.i.ph, %.outer2056 ], [ %.37.i, %bb.ev ] ; 3 uses
  %i.axa = load i16, ptr %.36.i, align 2
  %i.axb = zext i16 %i.axa to i32
  %i.axc = add nsw i32 %.0966.i, %i.axb           ; 6 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %.36.i, i64 2
  %i.axe = load i16, ptr %i.axd, align 2          ; 2 uses
  %i.axf = zext i16 %i.axe to i32                 ; 4 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %.36.i, i64 4 ; 3 uses
  %.not1304.i = icmp eq i16 %i.axe, 0
  br i1 %.not1304.i, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.axh = icmp slt i32 %i.axc, %i.awo
  br i1 %i.axh, label %bb.er, label %.loopexit1475.i

bb.er:                                            ; preds = %bb.eq
  %i.axi = sub nsw i32 %i.ce, %i.axc              ; 3 uses
  %i.axj = icmp sgt i32 %i.axi, 0
  br i1 %i.axj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.axk = sub nsw i32 %i.axf, %i.axi             ; 2 uses
  %i.axl = icmp slt i32 %i.axk, 1
  br i1 %i.axl, label %.loopexit1475.i, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0965.i = phi i32 [ %i.axi, %bb.es ], [ 0, %bb.er ] ; 2 uses
  %.0963.i = phi i32 [ %i.axk, %bb.es ], [ %i.axf, %bb.er ]
  %i.axm = add nsw i32 %.0965.i, %i.axc           ; 2 uses
  %i.axn = sub nsw i32 %i.awo, %i.axm
  %spec.select1341.i = tail call i32 @llvm.smin.i32(i32 %.0963.i, i32 %i.axn) ; 2 uses
  %i.axo = icmp sgt i32 %spec.select1341.i, 0
  br i1 %i.axo, label %.lr.ph1536.preheader.i, label %.loopexit1475.i

.lr.ph1536.preheader.i:                           ; preds = %bb.et
  %i.axp = shl nsw i32 %i.axm, 2
  %i.axq = sext i32 %i.axp to i64
  %i.axr = getelementptr inbounds i8, ptr %.36950.i.ph, i64 %i.axq
  %i.axs = shl nsw i32 %.0965.i, 2
  %i.axt = zext nneg i32 %i.axs to i64
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axg, i64 %i.axt
  br label %.lr.ph1536.i

.lr.ph1536.i:                                     ; preds = %.lr.ph1536.i, %.lr.ph1536.preheader.i
  %.09601534.i = phi ptr [ %i.bbf, %.lr.ph1536.i ], [ %i.axr, %.lr.ph1536.preheader.i ] ; 3 uses
  %.09611533.i = phi ptr [ %i.bbe, %.lr.ph1536.i ], [ %i.axu, %.lr.ph1536.preheader.i ] ; 2 uses
  %.09621532.i = phi i32 [ %i.bbg, %.lr.ph1536.i ], [ 0, %.lr.ph1536.preheader.i ]
  %i.axv = load i32, ptr %.09611533.i, align 4    ; 3 uses
  %i.axw = load i32, ptr %.09601534.i, align 4    ; 3 uses
  %i.axx = load i8, ptr %i.awt, align 4           ; 2 uses
  %i.axy = zext i8 %i.axx to i64
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.axy
  %i.aya = load ptr, ptr %i.axz, align 8          ; 2 uses
  %i.ayb = load i32, ptr %i.aoy, align 4          ; 2 uses
  %i.ayc = and i32 %i.ayb, %i.axv
  %i.ayd = load i8, ptr %i.awu, align 4
  %i.aye = zext i8 %i.ayd to i32                  ; 3 uses
  %i.ayf = lshr i32 %i.ayc, %i.aye
  %i.ayg = zext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.ayg
  %i.ayi = load i8, ptr %i.ayh, align 1
  %i.ayj = zext i8 %i.ayi to i32
  %i.ayk = load i8, ptr %i.awv, align 1           ; 2 uses
  %i.ayl = zext i8 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ayl
  %i.ayn = load ptr, ptr %i.aym, align 8          ; 2 uses
  %i.ayo = load i32, ptr %i.apa, align 4          ; 2 uses
  %i.ayp = and i32 %i.ayo, %i.axv
  %i.ayq = load i8, ptr %i.aww, align 1
  %i.ayr = zext i8 %i.ayq to i32                  ; 3 uses
  %i.ays = lshr i32 %i.ayp, %i.ayr
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayn, i64 %i.ayt
  %i.ayv = load i8, ptr %i.ayu, align 1
  %i.ayw = zext i8 %i.ayv to i32
  %i.ayx = load i8, ptr %i.awx, align 2           ; 2 uses
  %i.ayy = zext i8 %i.ayx to i64
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ayy
  %i.aza = load ptr, ptr %i.ayz, align 8          ; 2 uses
  %i.azb = load i32, ptr %i.apd, align 4          ; 2 uses
  %i.azc = and i32 %i.azb, %i.axv
  %i.azd = load i8, ptr %i.awy, align 2
  %i.aze = zext i8 %i.azd to i32                  ; 3 uses
  %i.azf = lshr i32 %i.azc, %i.aze
  %i.azg = zext i32 %i.azf to i64
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aza, i64 %i.azg
  %i.azi = load i8, ptr %i.azh, align 1
  %i.azj = zext i8 %i.azi to i32
  %i.azk = and i32 %i.ayb, %i.axw
  %i.azl = lshr i32 %i.azk, %i.aye
  %i.azm = zext i32 %i.azl to i64
  %i.azn = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.azm
  %i.azo = load i8, ptr %i.azn, align 1
  %i.azp = zext i8 %i.azo to i32                  ; 2 uses
  %i.azq = and i32 %i.ayo, %i.axw
  %i.azr = lshr i32 %i.azq, %i.ayr
  %i.azs = zext i32 %i.azr to i64
  %i.azt = getelementptr inbounds nuw i8, ptr %i.ayn, i64 %i.azs
  %i.azu = load i8, ptr %i.azt, align 1
  %i.azv = zext i8 %i.azu to i32                  ; 2 uses
  %i.azw = and i32 %i.azb, %i.axw
  %i.azx = lshr i32 %i.azw, %i.aze
  %i.azy = zext i32 %i.azx to i64
  %i.azz = getelementptr inbounds nuw i8, ptr %i.aza, i64 %i.azy
  %i.baa = load i8, ptr %i.azz, align 1
  %i.bab = zext i8 %i.baa to i32                  ; 2 uses
  %i.bac = sub nsw i32 %i.ayj, %i.azp
  %i.bad = mul nsw i32 %i.bac, %i.cd
  %i.bae = lshr i32 %i.bad, 8
  %i.baf = add nuw nsw i32 %i.bae, %i.azp
  %i.bag = sub nsw i32 %i.ayw, %i.azv
  %i.bah = mul nsw i32 %i.bag, %i.cd
  %i.bai = lshr i32 %i.bah, 8
  %i.baj = add nuw nsw i32 %i.bai, %i.azv
  %i.bak = sub nsw i32 %i.azj, %i.bab
  %i.bal = mul nsw i32 %i.bak, %i.cd
  %i.bam = lshr i32 %i.bal, 8
  %i.ban = add nuw nsw i32 %i.bam, %i.bab
  %i.bao = zext i8 %i.axx to i32
  %i.bap = sub nsw i32 8, %i.bao
  %i.baq = lshr i32 %i.baf, %i.bap
  %i.bar = shl i32 %i.baq, %i.aye
  %i.bas = zext i8 %i.ayk to i32
  %i.bat = sub nsw i32 8, %i.bas
  %i.bau = lshr i32 %i.baj, %i.bat
  %i.bav = shl i32 %i.bau, %i.ayr
  %i.baw = zext i8 %i.ayx to i32
  %i.bax = sub nsw i32 8, %i.baw
  %i.bay = lshr i32 %i.ban, %i.bax
  %i.baz = shl i32 %i.bay, %i.aze
  %i.bba = load i32, ptr %i.awz, align 4
  %i.bbb = or i32 %i.bar, %i.bba
  %i.bbc = or i32 %i.bbb, %i.bav
  %i.bbd = or i32 %i.bbc, %i.baz
  store i32 %i.bbd, ptr %.09601534.i, align 4
  %i.bbe = getelementptr inbounds nuw i8, ptr %.09611533.i, i64 4
  %i.bbf = getelementptr inbounds nuw i8, ptr %.09601534.i, i64 4
  %i.bbg = add nuw nsw i32 %.09621532.i, 1        ; 2 uses
  %exitcond1567.not.i = icmp eq i32 %i.bbg, %spec.select1341.i
  br i1 %exitcond1567.not.i, label %.loopexit1475.i, label %.lr.ph1536.i, !llvm.loop !59

.loopexit1475.i:                                  ; preds = %.lr.ph1536.i, %bb.et, %bb.es, %bb.eq
  %i.bbh = shl nuw nsw i32 %i.axf, 2
  %i.bbi = zext nneg i32 %i.bbh to i64
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.axg, i64 %i.bbi
  %i.bbk = add nsw i32 %i.axc, %i.axf
  br label %bb.ev

bb.eu:                                            ; preds = %bb.ep
  %.not1305.i = icmp eq i32 %i.axc, 0
  br i1 %.not1305.i, label %RLEClipBlit.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %.loopexit1475.i
  %.1967.i = phi i32 [ %i.bbk, %.loopexit1475.i ], [ %i.axc, %bb.eu ] ; 2 uses
  %.37.i = phi ptr [ %i.bbj, %.loopexit1475.i ], [ %i.axg, %bb.eu ] ; 2 uses
  %i.bbl = icmp eq i32 %.1967.i, %i.b
  br i1 %i.bbl, label %bb.ew, label %bb.ep

bb.ew:                                            ; preds = %bb.ev
  %i.bbm = load i32, ptr %i.k, align 8
  %i.bbn = sext i32 %i.bbm to i64
  %i.bbo = getelementptr inbounds i8, ptr %.36950.i.ph, i64 %i.bbn
  %i.bbp = add nsw i32 %.0970.i.ph, -1            ; 2 uses
  %.not1306.i = icmp eq i32 %i.bbp, 0
  br i1 %.not1306.i, label %RLEClipBlit.exit, label %.outer2056

bb.ex:                                            ; preds = %bb.u
  %i.bbq = icmp eq i8 %i.cc, -1
  br i1 %i.bbq, label %bb.ey, label %bb.fx

bb.ey:                                            ; preds = %bb.ex
  switch i8 %i.s, label %RLEClipBlit.exit [
    i8 1, label %bb.ez
    i8 2, label %bb.ff
    i8 3, label %bb.fl
    i8 4, label %bb.fr
  ]

bb.ez:                                            ; preds = %bb.ey
  %i.bbr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bbs = load i32, ptr %i.bbr, align 4
  br label %.outer

.outer:                                           ; preds = %bb.fe, %bb.ez
  %.0802.ph = phi i32 [ %i.bcj, %bb.fe ], [ %i.bbs, %bb.ez ]
  %.14701.ph = phi ptr [ %.15702, %bb.fe ], [ %.13700.ph, %bb.ez ]
  %.0686.ph = phi ptr [ %i.bci, %bb.fe ], [ %i.w, %bb.ez ] ; 2 uses
  br label %bb.fa

bb.fa:                                            ; preds = %.outer, %bb.fd
  %.0805 = phi i32 [ %.1806, %bb.fd ], [ 0, %.outer ]
  %.14701 = phi ptr [ %.15702, %bb.fd ], [ %.14701.ph, %.outer ] ; 3 uses
  %i.bbt = load i8, ptr %.14701, align 1
  %i.bbu = zext i8 %i.bbt to i32
  %i.bbv = add nsw i32 %.0805, %i.bbu             ; 4 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %.14701, i64 1
  %i.bbx = load i8, ptr %i.bbw, align 1           ; 3 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %.14701, i64 2 ; 3 uses
  %.not1048 = icmp eq i8 %i.bbx, 0
  br i1 %.not1048, label %bb.fc, label %bb.fb

end_hunk_0
begin_hunk_1_@SDL_RLEBlit:bb.a
  %i.cnq = and i32 %i.cnp, 65280
  %i.cnr = or disjoint i32 %i.cnj, %i.cnq
  %i.cns = getelementptr inbounds nuw i8, ptr %.07821324, i64 4
  store i32 %i.cnr, ptr %.07821324, align 4
  %i.cnt = add nuw nsw i32 %.07841322, 1          ; 2 uses
  %exitcond1375.not = icmp eq i32 %i.cnt, %i.clv
  br i1 %exitcond1375.not, label %.loopexit1991, label %scalar.ph1946, !llvm.loop !101

.loopexit1991:                                    ; preds = %scalar.ph1946, %middle.block1959
  %i.cnu = shl nuw nsw i32 %i.clv, 2
  %i.cnv = zext nneg i32 %i.cnu to i64
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.clw, i64 %i.cnv
  %i.cnx = add i32 %i.cls, %i.clv
  br label %bb.ie

bb.id:                                            ; preds = %.preheader1559
  %.not1034 = icmp eq i32 %i.cls, 0
  br i1 %.not1034, label %RLEClipBlit.exit, label %bb.ie

bb.ie:                                            ; preds = %bb.id, %.loopexit1991
  %.1786 = phi i32 [ %i.cnx, %.loopexit1991 ], [ %i.cls, %bb.id ] ; 2 uses
  %.48 = phi ptr [ %i.cnw, %.loopexit1991 ], [ %i.clw, %bb.id ] ; 2 uses
  %i.cny = icmp eq i32 %.1786, %i.b
  br i1 %i.cny, label %bb.if, label %.preheader1559

bb.if:                                            ; preds = %bb.ie
  %i.cnz = load i32, ptr %i.k, align 8
  %i.coa = sext i32 %i.cnz to i64
  %i.cob = getelementptr inbounds i8, ptr %.33.ph, i64 %i.coa
  %i.coc = add nsw i32 %.0789.ph, -1              ; 2 uses
  %.not1035 = icmp eq i32 %i.coc, 0
  br i1 %.not1035, label %RLEClipBlit.exit, label %.preheader1559.outer

.preheader1559.outer:                             ; preds = %.preheader1559.preheader, %bb.if
  %.0789.ph = phi i32 [ %i.cij, %.preheader1559.preheader ], [ %i.coc, %bb.if ]
  %.47.ph = phi ptr [ %.13700.ph, %.preheader1559.preheader ], [ %.48, %bb.if ]
  %.33.ph = phi ptr [ %i.w, %.preheader1559.preheader ], [ %i.cob, %bb.if ] ; 3 uses
  %scevgep1939 = getelementptr i8, ptr %.33.ph, i64 4
  br label %.preheader1559

bb.ig:                                            ; preds = %bb.hw, %bb.hv
  %i.cod = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.coe = load i32, ptr %i.cod, align 4
  %i.cof = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cog = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.coh = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  %i.coi = getelementptr inbounds nuw i8, ptr %i.q, i64 29
  %i.coj = getelementptr inbounds nuw i8, ptr %i.q, i64 26
  %i.cok = getelementptr inbounds nuw i8, ptr %i.q, i64 30
  %i.col = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  br label %.outer2012

.outer2012:                                       ; preds = %bb.in, %bb.ig
  %.0751.ph = phi i32 [ %i.csq, %bb.in ], [ %i.coe, %bb.ig ]
  %.50.ph = phi ptr [ %.51, %bb.in ], [ %.13700.ph, %bb.ig ]
  %.36.ph = phi ptr [ %i.csp, %bb.in ], [ %i.w, %bb.ig ] ; 2 uses
  br label %bb.ih

bb.ih:                                            ; preds = %.outer2012, %bb.im
  %.0747 = phi i32 [ %.1748, %bb.im ], [ 0, %.outer2012 ]
  %.50 = phi ptr [ %.51, %bb.im ], [ %.50.ph, %.outer2012 ] ; 3 uses
  %i.com = load i16, ptr %.50, align 2
  %i.con = zext i16 %i.com to i32
  %i.coo = add nsw i32 %.0747, %i.con             ; 4 uses
  %i.cop = getelementptr inbounds nuw i8, ptr %.50, i64 2
  %i.coq = load i16, ptr %i.cop, align 2          ; 2 uses
  %i.cor = zext i16 %i.coq to i32                 ; 3 uses
  %i.cos = getelementptr inbounds nuw i8, ptr %.50, i64 4 ; 3 uses
  %.not1030 = icmp eq i16 %i.coq, 0
  br i1 %.not1030, label %bb.il, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.cot = shl nsw i32 %i.coo, 2
  %i.cou = sext i32 %i.cot to i64
  %i.cov = getelementptr inbounds i8, ptr %.36.ph, i64 %i.cou
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ij
  %.07441321 = phi ptr [ %i.cov, %bb.ii ], [ %i.csg, %bb.ij ] ; 3 uses
  %.07451320 = phi ptr [ %i.cos, %bb.ii ], [ %i.csf, %bb.ij ] ; 2 uses
  %.07461319 = phi i32 [ 0, %bb.ii ], [ %i.csh, %bb.ij ]
  %i.cow = load i32, ptr %.07451320, align 4      ; 3 uses
  %i.cox = load i32, ptr %.07441321, align 4      ; 3 uses
  %i.coy = load i8, ptr %i.cof, align 4           ; 2 uses
  %i.coz = zext i8 %i.coy to i64
  %i.cpa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.coz
  %i.cpb = load ptr, ptr %i.cpa, align 8          ; 2 uses
  %i.cpc = load i32, ptr %i.chv, align 4          ; 2 uses
  %i.cpd = and i32 %i.cpc, %i.cow
  %i.cpe = load i8, ptr %i.cog, align 4
  %i.cpf = zext i8 %i.cpe to i32                  ; 3 uses
  %i.cpg = lshr i32 %i.cpd, %i.cpf
  %i.cph = zext i32 %i.cpg to i64
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.cpb, i64 %i.cph
  %i.cpj = load i8, ptr %i.cpi, align 1
  %i.cpk = zext i8 %i.cpj to i32
  %i.cpl = load i8, ptr %i.coh, align 1           ; 2 uses
  %i.cpm = zext i8 %i.cpl to i64
  %i.cpn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cpm
  %i.cpo = load ptr, ptr %i.cpn, align 8          ; 2 uses
  %i.cpp = load i32, ptr %i.chx, align 4          ; 2 uses
  %i.cpq = and i32 %i.cpp, %i.cow
  %i.cpr = load i8, ptr %i.coi, align 1
  %i.cps = zext i8 %i.cpr to i32                  ; 3 uses
  %i.cpt = lshr i32 %i.cpq, %i.cps
  %i.cpu = zext i32 %i.cpt to i64
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cpo, i64 %i.cpu
  %i.cpw = load i8, ptr %i.cpv, align 1
  %i.cpx = zext i8 %i.cpw to i32
  %i.cpy = load i8, ptr %i.coj, align 2           ; 2 uses
  %i.cpz = zext i8 %i.cpy to i64
  %i.cqa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cpz
  %i.cqb = load ptr, ptr %i.cqa, align 8          ; 2 uses
  %i.cqc = load i32, ptr %i.cia, align 4          ; 2 uses
  %i.cqd = and i32 %i.cqc, %i.cow
  %i.cqe = load i8, ptr %i.cok, align 2
  %i.cqf = zext i8 %i.cqe to i32                  ; 3 uses
  %i.cqg = lshr i32 %i.cqd, %i.cqf
  %i.cqh = zext i32 %i.cqg to i64
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cqb, i64 %i.cqh
  %i.cqj = load i8, ptr %i.cqi, align 1
  %i.cqk = zext i8 %i.cqj to i32
  %i.cql = and i32 %i.cpc, %i.cox
  %i.cqm = lshr i32 %i.cql, %i.cpf
  %i.cqn = zext i32 %i.cqm to i64
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cpb, i64 %i.cqn
  %i.cqp = load i8, ptr %i.cqo, align 1
  %i.cqq = zext i8 %i.cqp to i32                  ; 2 uses
  %i.cqr = and i32 %i.cpp, %i.cox
  %i.cqs = lshr i32 %i.cqr, %i.cps
  %i.cqt = zext i32 %i.cqs to i64
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cpo, i64 %i.cqt
  %i.cqv = load i8, ptr %i.cqu, align 1
  %i.cqw = zext i8 %i.cqv to i32                  ; 2 uses
  %i.cqx = and i32 %i.cqc, %i.cox
  %i.cqy = lshr i32 %i.cqx, %i.cqf
  %i.cqz = zext i32 %i.cqy to i64
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqb, i64 %i.cqz
  %i.crb = load i8, ptr %i.cra, align 1
  %i.crc = zext i8 %i.crb to i32                  ; 2 uses
  %i.crd = sub nsw i32 %i.cpk, %i.cqq
  %i.cre = mul nsw i32 %i.crd, %i.cd
  %i.crf = lshr i32 %i.cre, 8
  %i.crg = add nuw nsw i32 %i.crf, %i.cqq
  %i.crh = sub nsw i32 %i.cpx, %i.cqw
  %i.cri = mul nsw i32 %i.crh, %i.cd
  %i.crj = lshr i32 %i.cri, 8
  %i.crk = add nuw nsw i32 %i.crj, %i.cqw
  %i.crl = sub nsw i32 %i.cqk, %i.crc
  %i.crm = mul nsw i32 %i.crl, %i.cd
  %i.crn = lshr i32 %i.crm, 8
  %i.cro = add nuw nsw i32 %i.crn, %i.crc
  %i.crp = zext i8 %i.coy to i32
  %i.crq = sub nsw i32 8, %i.crp
  %i.crr = lshr i32 %i.crg, %i.crq
  %i.crs = shl i32 %i.crr, %i.cpf
  %i.crt = zext i8 %i.cpl to i32
  %i.cru = sub nsw i32 8, %i.crt
  %i.crv = lshr i32 %i.crk, %i.cru
  %i.crw = shl i32 %i.crv, %i.cps
  %i.crx = zext i8 %i.cpy to i32
  %i.cry = sub nsw i32 8, %i.crx
  %i.crz = lshr i32 %i.cro, %i.cry
  %i.csa = shl i32 %i.crz, %i.cqf
  %i.csb = load i32, ptr %i.col, align 4
  %i.csc = or i32 %i.crs, %i.csb
  %i.csd = or i32 %i.csc, %i.crw
  %i.cse = or i32 %i.csd, %i.csa
  store i32 %i.cse, ptr %.07441321, align 4
  %i.csf = getelementptr inbounds nuw i8, ptr %.07451320, i64 4
  %i.csg = getelementptr inbounds nuw i8, ptr %.07441321, i64 4
  %i.csh = add nuw nsw i32 %.07461319, 1          ; 2 uses
  %exitcond1374.not = icmp eq i32 %i.csh, %i.cor
  br i1 %exitcond1374.not, label %bb.ik, label %bb.ij, !llvm.loop !102

bb.ik:                                            ; preds = %bb.ij
  %i.csi = shl nuw nsw i32 %i.cor, 2
  %i.csj = zext nneg i32 %i.csi to i64
  %i.csk = getelementptr inbounds nuw i8, ptr %i.cos, i64 %i.csj
  %i.csl = add i32 %i.coo, %i.cor
  br label %bb.im

bb.il:                                            ; preds = %bb.ih
  %.not1031 = icmp eq i32 %i.coo, 0
  br i1 %.not1031, label %RLEClipBlit.exit, label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %.1748 = phi i32 [ %i.csl, %bb.ik ], [ %i.coo, %bb.il ] ; 2 uses
  %.51 = phi ptr [ %i.csk, %bb.ik ], [ %i.cos, %bb.il ] ; 2 uses
  %i.csm = icmp eq i32 %.1748, %i.b
  br i1 %i.csm, label %bb.in, label %bb.ih

bb.in:                                            ; preds = %bb.im
  %i.csn = load i32, ptr %i.k, align 8
  %i.cso = sext i32 %i.csn to i64
  %i.csp = getelementptr inbounds i8, ptr %.36.ph, i64 %i.cso
  %i.csq = add nsw i32 %.0751.ph, -1              ; 2 uses
  %.not1032 = icmp eq i32 %i.csq, 0
  br i1 %.not1032, label %RLEClipBlit.exit, label %.outer2012

RLEClipBlit.exit:                                 ; preds = %bb.r, %bb.n, %bb.j, %bb.f, %bb.du, %bb.dw, %bb.dc, %bb.de, %bb.ct, %bb.cv, %bb.cg, %bb.ci, %bb.bx, %bb.bz, %bb.dl, %bb.dn, %bb.ew, %bb.eu, %bb.el, %bb.en, %bb.ee, %bb.eg, %bb.bi, %bb.bk, %bb.ay, %bb.ba, %bb.ao, %bb.aq, %bb.ae, %bb.ag, %bb.hs, %bb.hu, %bb.hc, %bb.he, %bb.gw, %bb.gy, %bb.gm, %bb.go, %bb.gg, %bb.gi, %bb.hk, %bb.hm, %bb.il, %bb.in, %bb.id, %bb.if, %bb.hz, %bb.ib, %bb.fu, %bb.fw, %bb.fo, %bb.fq, %bb.fi, %bb.fk, %bb.fc, %bb.fe, %bb.bl, %bb.w, %bb.ey, %bb.fx
  %i.csr = load i32, ptr %2, align 8
  %i.css = and i32 %i.csr, 2
  %.not1051 = icmp eq i32 %i.css, 0
  br i1 %.not1051, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %RLEClipBlit.exit
  tail call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %2) #8
  br label %bb.ip

bb.ip:                                            ; preds = %RLEClipBlit.exit, %bb.io, %bb.b
  %.0 = phi i1 [ true, %RLEClipBlit.exit ], [ false, %bb.b ], [ true, %bb.io ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @RLEAlphaSurface(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i8, ptr %i.g, align 4
  %.not258 = icmp eq i8 %i.h, 32
  br i1 %.not258, label %bb.c, label %bb.aj

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = or i32 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = or i32 %i.m, %i.o                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 5 ; 5 uses
  %i.r = load i8, ptr %i.q, align 1
  switch i8 %i.r, label %bb.aj [
    i8 2, label %bb.d
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  switch i32 %i.p, label %bb.aj [
    i32 65535, label %bb.e
    i32 32767, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %i.l, 2016
  %i.t = icmp eq i32 %i.j, 2016
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  %i.u = icmp eq i32 %i.o, 2016
  %or.cond266 = select i1 %or.cond, i1 true, i1 %i.u
  br i1 %or.cond266, label %bb.g, label %bb.aj

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.l, 992
  %i.w = icmp eq i32 %i.j, 992
  %or.cond267 = select i1 %i.v, i1 true, i1 %i.w
  %i.x = icmp eq i32 %i.o, 992
  %or.cond268 = select i1 %or.cond267, i1 true, i1 %i.x
  br i1 %or.cond268, label %bb.g, label %bb.aj

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0241 = phi ptr [ @copy_transl_565, %bb.e ], [ @copy_transl_555, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = mul i32 %i.ab, 6
  %i.ad = add i32 %i.ac, 8
  %i.ae = mul nsw i32 %i.ad, %i.z
  %i.af = add nsw i32 %i.ae, 2
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %.not259 = icmp eq i32 %i.p, 16777215
  br i1 %.not259, label %bb.i, label %bb.aj

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = shl nsw i32 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add nsw i32 %i.ak, 1
  %i.am = mul nsw i32 %i.ai, %i.al
  %i.an = or disjoint i32 %i.am, 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.0252 = phi i32 [ %i.af, %bb.g ], [ %i.an, %bb.i ]
  %.1244 = phi ptr [ @copy_opaque_16, %bb.g ], [ @copy_32, %bb.i ] ; 2 uses
  %.1242 = phi ptr [ %.0241, %bb.g ], [ @copy_32, %bb.i ] ; 2 uses
  %i.ao = add i32 %.0252, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ap) #8 ; 6 uses
  %.not260 = icmp eq ptr %i.aq, null
  br i1 %.not260, label %bb.aj, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i32, ptr %i.aw, align 8            ; 13 uses
  %i.ay = load ptr, ptr %i.e, align 8             ; 6 uses
  %i.az = icmp sgt i32 %i.av, 0
  br i1 %i.az, label %.preheader.lr.ph, label %._crit_edge326

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 20 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 31 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = sext i32 %i.ax to i64                   ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.af
  %.0233325 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %spec.select269, %bb.af ]
  %.0236324 = phi ptr [ %i.bb, %.preheader.lr.ph ], [ %i.gn, %bb.af ] ; 9 uses
  %.0237323 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.go, %bb.af ]
  %.0245322 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %.9.lcssa, %bb.af ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %._crit_edge293
  %.1246 = phi ptr [ %.5250.lcssa, %._crit_edge293 ], [ %.0245322, %.preheader ] ; 2 uses
  %.0238 = phi i32 [ %.2240.lcssa, %._crit_edge293 ], [ 0, %.preheader ] ; 4 uses
  %.0230 = phi i32 [ %spec.select, %._crit_edge293 ], [ 0, %.preheader ]
  %i.bg = icmp slt i32 %.0238, %i.ax
  br i1 %i.bg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.bh = load i32, ptr %i.bc, align 4
  %i.bi = load i8, ptr %i.bd, align 1
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = sext i32 %.0238 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %i.bk, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bh, %i.bm
  %i.bo = lshr i32 %i.bn, %i.bj
  %.not262 = icmp eq i32 %i.bo, 255
  br i1 %.not262, label %.critedge.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bf
  br i1 %exitcond.not, label %.critedge2, label %bb.m, !llvm.loop !135

.critedge.loopexit:                               ; preds = %bb.m
  %i.bp = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.l
  %.1239.lcssa = phi i32 [ %.0238, %bb.l ], [ %i.bp, %.critedge.loopexit ] ; 6 uses
  %i.bq = icmp slt i32 %.1239.lcssa, %i.ax
  br i1 %i.bq, label %.lr.ph276, label %.critedge2

.lr.ph276:                                        ; preds = %.critedge
  %i.br = load i32, ptr %i.bc, align 4
  %i.bs = load i8, ptr %i.bd, align 1
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = sext i32 %.1239.lcssa to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph276, %bb.p
  %indvars.iv334 = phi i64 [ %i.bu, %.lr.ph276 ], [ %indvars.iv.next335, %bb.p ] ; 3 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %indvars.iv334
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.br, %i.bw
  %i.by = lshr i32 %i.bx, %i.bt
  %.not384 = icmp eq i32 %i.by, 255
  br i1 %.not384, label %bb.p, label %.critedge2.loopexit.split.loop.exit375

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next335 = add nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond337.not = icmp eq i64 %indvars.iv.next335, %i.bf
  br i1 %exitcond337.not, label %.critedge2, label %bb.o, !llvm.loop !136

.critedge2.loopexit.split.loop.exit375:           ; preds = %bb.o
  %i.bz = trunc nsw i64 %indvars.iv334 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.n, %bb.p, %.critedge2.loopexit.split.loop.exit375, %.critedge
  %.1239.lcssa361 = phi i32 [ %.1239.lcssa, %.critedge ], [ %.1239.lcssa, %.critedge2.loopexit.split.loop.exit375 ], [ %.1239.lcssa, %bb.p ], [ %i.ax, %bb.n ] ; 4 uses
end_hunk_1
