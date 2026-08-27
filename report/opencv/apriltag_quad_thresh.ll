Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/apriltag_quad_thresh?download=true
inline.NumInlined: 743
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2cv5aruco9thresholdENS_3MatERKNS0_18DetectorParametersERS1_:bb.a
bb.x:                                             ; preds = %bb.w
  %i.bds = add nsw i64 %i.bde, 1                  ; 2 uses
  %i.bdt = getelementptr inbounds i8, ptr %i.al, i64 %i.bds
  %i.bdu = load i8, ptr %i.bdt, align 1, !tbaa !14
  %spec.select318.2 = tail call i8 @llvm.umax.i8(i8 %i.bdu, i8 %.3269.1)
  %i.bdv = getelementptr inbounds i8, ptr %i.am, i64 %i.bds
  %i.bdw = load i8, ptr %i.bdv, align 1, !tbaa !14
  %.2265.2 = tail call i8 @llvm.umin.i8(i8 %i.bdw, i8 %.3.1)
  br label %.loopexit341

.loopexit341:                                     ; preds = %bb.w, %bb.x, %.preheader342
  %.4270 = phi i8 [ 0, %.preheader342 ], [ %.3269.1, %bb.w ], [ %spec.select318.2, %bb.x ] ; 3 uses
  %.4 = phi i8 [ -1, %.preheader342 ], [ %.3.1, %bb.w ], [ %.2265.2, %bb.x ] ; 3 uses
  br i1 %or.cond.1, label %.preheader340.1, label %.loopexit341.1

.preheader340.1:                                  ; preds = %.loopexit341
  %i.bdx = add nsw i64 %i.bct, %indvars.iv422     ; 4 uses
  %i.bdy = trunc i64 %indvars.iv422 to i32
  %i.bdz = add i32 %i.bdy, -1
  %or.cond317.1412 = icmp ult i32 %i.bdz, %i.ah
  br i1 %or.cond317.1412, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.preheader340.1
  %i.bea = add nsw i64 %i.bdx, -1                 ; 2 uses
  %i.beb = getelementptr inbounds i8, ptr %i.al, i64 %i.bea
  %i.bec = load i8, ptr %i.beb, align 1, !tbaa !14
  %spec.select318.1413 = tail call i8 @llvm.umax.i8(i8 %i.bec, i8 %.4270)
  %i.bed = getelementptr inbounds i8, ptr %i.am, i64 %i.bea
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !14
  %.2265.1414 = tail call i8 @llvm.umin.i8(i8 %i.bee, i8 %.4)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader340.1
  %.3269.1415 = phi i8 [ %.4270, %.preheader340.1 ], [ %spec.select318.1413, %bb.y ] ; 2 uses
  %.3.1416 = phi i8 [ %.4, %.preheader340.1 ], [ %.2265.1414, %bb.y ] ; 2 uses
  %or.cond317.1.1 = icmp samesign ult i64 %indvars.iv422, %i.bbv
  br i1 %or.cond317.1.1, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bef = getelementptr inbounds i8, ptr %i.al, i64 %i.bdx
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !14
  %spec.select318.1.1 = tail call i8 @llvm.umax.i8(i8 %i.beg, i8 %.3269.1415)
  %i.beh = getelementptr inbounds i8, ptr %i.am, i64 %i.bdx
  %i.bei = load i8, ptr %i.beh, align 1, !tbaa !14
  %.2265.1.1 = tail call i8 @llvm.umin.i8(i8 %i.bei, i8 %.3.1416)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3269.1.1 = phi i8 [ %.3269.1415, %bb.z ], [ %spec.select318.1.1, %bb.aa ] ; 2 uses
  %.3.1.1 = phi i8 [ %.3.1416, %bb.z ], [ %.2265.1.1, %bb.aa ] ; 2 uses
  %i.bej = add nuw nsw i64 %indvars.iv422, 1
  %i.bek = icmp samesign ult i64 %i.bej, %i.bbv
  br i1 %i.bek, label %bb.ac, label %.loopexit341.1

bb.ac:                                            ; preds = %bb.ab
  %i.bel = add nsw i64 %i.bdx, 1                  ; 2 uses
  %i.bem = getelementptr inbounds i8, ptr %i.al, i64 %i.bel
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !14
  %spec.select318.2.1 = tail call i8 @llvm.umax.i8(i8 %i.ben, i8 %.3269.1.1)
  %i.beo = getelementptr inbounds i8, ptr %i.am, i64 %i.bel
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !14
  %.2265.2.1 = tail call i8 @llvm.umin.i8(i8 %i.bep, i8 %.3.1.1)
  br label %.loopexit341.1

.loopexit341.1:                                   ; preds = %bb.ab, %bb.ac, %.loopexit341
  %.4270.1 = phi i8 [ %.4270, %.loopexit341 ], [ %.3269.1.1, %bb.ab ], [ %spec.select318.2.1, %bb.ac ] ; 3 uses
  %.4.1 = phi i8 [ %.4, %.loopexit341 ], [ %.3.1.1, %bb.ab ], [ %.2265.2.1, %bb.ac ] ; 3 uses
  br i1 %i.bcy, label %.preheader340.2, label %.loopexit341.1..loopexit341.2_crit_edge

.loopexit341.1..loopexit341.2_crit_edge:          ; preds = %.loopexit341.1
  %.pre = add nuw nsw i64 %indvars.iv422, 1
  br label %.loopexit341.2

.preheader340.2:                                  ; preds = %.loopexit341.1
  %i.beq = add nsw i64 %i.bcz, %indvars.iv422     ; 4 uses
  %i.ber = trunc i64 %indvars.iv422 to i32
  %i.bes = add i32 %i.ber, -1
  %or.cond317.2417 = icmp ult i32 %i.bes, %i.ah
  br i1 %or.cond317.2417, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader340.2
  %i.bet = add nsw i64 %i.beq, -1                 ; 2 uses
  %i.beu = getelementptr inbounds i8, ptr %i.al, i64 %i.bet
  %i.bev = load i8, ptr %i.beu, align 1, !tbaa !14
  %spec.select318.2418 = tail call i8 @llvm.umax.i8(i8 %i.bev, i8 %.4270.1)
  %i.bew = getelementptr inbounds i8, ptr %i.am, i64 %i.bet
  %i.bex = load i8, ptr %i.bew, align 1, !tbaa !14
  %.2265.2419 = tail call i8 @llvm.umin.i8(i8 %i.bex, i8 %.4.1)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.preheader340.2
  %.3269.2420 = phi i8 [ %.4270.1, %.preheader340.2 ], [ %spec.select318.2418, %bb.ad ] ; 2 uses
  %.3.2421 = phi i8 [ %.4.1, %.preheader340.2 ], [ %.2265.2419, %bb.ad ] ; 2 uses
  %or.cond317.1.2 = icmp samesign ult i64 %indvars.iv422, %i.bbv
  br i1 %or.cond317.1.2, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bey = getelementptr inbounds i8, ptr %i.al, i64 %i.beq
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !14
  %spec.select318.1.2 = tail call i8 @llvm.umax.i8(i8 %i.bez, i8 %.3269.2420)
  %i.bfa = getelementptr inbounds i8, ptr %i.am, i64 %i.beq
  %i.bfb = load i8, ptr %i.bfa, align 1, !tbaa !14
  %.2265.1.2 = tail call i8 @llvm.umin.i8(i8 %i.bfb, i8 %.3.2421)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3269.1.2 = phi i8 [ %.3269.2420, %bb.ae ], [ %spec.select318.1.2, %bb.af ] ; 2 uses
  %.3.1.2 = phi i8 [ %.3.2421, %bb.ae ], [ %.2265.1.2, %bb.af ] ; 2 uses
  %i.bfc = add nuw nsw i64 %indvars.iv422, 1      ; 3 uses
  %i.bfd = icmp samesign ult i64 %i.bfc, %i.bbv
  br i1 %i.bfd, label %bb.ah, label %.loopexit341.2

bb.ah:                                            ; preds = %bb.ag
  %i.bfe = add nsw i64 %i.beq, 1                  ; 2 uses
  %i.bff = getelementptr inbounds i8, ptr %i.al, i64 %i.bfe
  %i.bfg = load i8, ptr %i.bff, align 1, !tbaa !14
  %spec.select318.2.2 = tail call i8 @llvm.umax.i8(i8 %i.bfg, i8 %.3269.1.2)
  %i.bfh = getelementptr inbounds i8, ptr %i.am, i64 %i.bfe
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !14
  %.2265.2.2 = tail call i8 @llvm.umin.i8(i8 %i.bfi, i8 %.3.1.2)
  br label %.loopexit341.2

.loopexit341.2:                                   ; preds = %bb.ag, %bb.ah, %.loopexit341.1..loopexit341.2_crit_edge
  %indvars.iv.next423.pre-phi = phi i64 [ %.pre, %.loopexit341.1..loopexit341.2_crit_edge ], [ %i.bfc, %bb.ah ], [ %i.bfc, %bb.ag ] ; 2 uses
  %.4270.2 = phi i8 [ %.4270.1, %.loopexit341.1..loopexit341.2_crit_edge ], [ %spec.select318.2.2, %bb.ah ], [ %.3269.1.2, %bb.ag ]
  %.4.2 = phi i8 [ %.4.1, %.loopexit341.1..loopexit341.2_crit_edge ], [ %.2265.2.2, %bb.ah ], [ %.3.1.2, %bb.ag ]
  %i.bfj = add nuw nsw i64 %indvars.iv422, %i.bct ; 2 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bbr, i64 %i.bfj
  store i8 %.4270.2, ptr %i.bfk, align 1, !tbaa !14
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %i.bfj
  store i8 %.4.2, ptr %i.bfl, align 1, !tbaa !14
  %exitcond428.not = icmp eq i64 %indvars.iv.next423.pre-phi, %i.bbv
  br i1 %exitcond428.not, label %._crit_edge363, label %.preheader342, !llvm.loop !107

.preheader339:                                    ; preds = %.preheader339.preheader, %._crit_edge371
  %indvars.iv456 = phi i64 [ 0, %.preheader339.preheader ], [ %indvars.iv.next457, %._crit_edge371 ] ; 3 uses
  %i.bfm = mul nuw nsw i64 %indvars.iv456, %i.bdd
  %i.bfn = shl nuw nsw i64 %indvars.iv456, 2      ; 8 uses
  %i.bfo = mul i64 %i.bfn, %i.f
  %i.bfp = trunc i64 %i.bfo to i32
  %i.bfq = or disjoint i64 %i.bfn, 1
  %i.bfr = mul i64 %i.bfq, %i.f
  %i.bfs = trunc i64 %i.bfr to i32
  %i.bft = or disjoint i64 %i.bfn, 2
  %i.bfu = mul i64 %i.bft, %i.f
  %i.bfv = trunc i64 %i.bfu to i32
  %i.bfw = or disjoint i64 %i.bfn, 3
  %i.bfx = mul i64 %i.bfw, %i.f
  %i.bfy = trunc i64 %i.bfx to i32
  %i.bfz = mul i64 %i.bfn, %i.f
  %i.bga = trunc i64 %i.bfz to i32
  %i.bgb = or disjoint i64 %i.bfn, 1
  %i.bgc = mul i64 %i.bgb, %i.f
  %i.bgd = trunc i64 %i.bgc to i32
  %i.bge = or disjoint i64 %i.bfn, 2
  %i.bgf = mul i64 %i.bge, %i.f
  %i.bgg = trunc i64 %i.bgf to i32
  %i.bgh = or disjoint i64 %i.bfn, 3
  %i.bgi = mul i64 %i.bgh, %i.f
  %i.bgj = trunc i64 %i.bgi to i32
  br label %bb.ai

.preheader335:                                    ; preds = %._crit_edge371, %._crit_edge365.split
  %i.bgk = icmp sgt i32 %i.d, 0
  br i1 %i.bgk, label %.lr.ph377, label %._crit_edge378

.lr.ph377:                                        ; preds = %.preheader339.lr.ph, %.preheader335
  %i.bgl = shl nuw nsw i32 %i.ai, 2
  %i.bgm = shl nsw i32 %i.ah, 2
  %i.bgn = add nsw i32 %i.ai, -1
  %i.bgo = add nsw i32 %i.ah, -1
  %i.bgp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bgq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bgr = zext nneg i32 %i.bgl to i64
  %sext534 = shl i64 %i.f, 32
  %i.bgs = ashr exact i64 %sext534, 32
  %wide.trip.count469 = zext nneg i32 %i.d to i64
  %wide.trip.count464 = sext i32 %i.b to i64
  br label %bb.aj

._crit_edge371:                                   ; preds = %.loopexit337
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next457, %wide.trip.count459
  br i1 %exitcond460.not, label %.preheader335, label %.preheader339, !llvm.loop !108

bb.ai:                                            ; preds = %.preheader339, %.loopexit337
  %indvars.iv451 = phi i64 [ 0, %.preheader339 ], [ %indvars.iv.next452, %.loopexit337 ] ; 4 uses
  %i.bgt = add nuw nsw i64 %indvars.iv451, %i.bfm ; 2 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %i.bgt
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !14
  %i.bgw = zext i8 %i.bgv to i32                  ; 2 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bbr, i64 %i.bgt
  %i.bgy = load i8, ptr %i.bgx, align 1, !tbaa !14
  %i.bgz = zext i8 %i.bgy to i32                  ; 2 uses
  %i.bha = sub nsw i32 %i.bgz, %i.bgw
  %i.bhb = load i32, ptr %i.bda, align 8, !tbaa !109
  %i.bhc = icmp slt i32 %i.bha, %i.bhb
  br i1 %i.bhc, label %.preheader336, label %.loopexit337.loopexit393

.preheader336:                                    ; preds = %bb.ai
  %indvars.iv451.tr533 = trunc nuw i64 %indvars.iv451 to i32
  %i.bhd = shl nuw nsw i32 %indvars.iv451.tr533, 2 ; 4 uses
  %i.bhe = add i32 %i.bhd, %i.bga                 ; 4 uses
  %i.bhf = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bhg = sext i32 %i.bhe to i64
  %i.bhh = getelementptr inbounds i8, ptr %i.bhf, i64 %i.bhg
  store i8 127, ptr %i.bhh, align 1, !tbaa !14
  %i.bhi = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bhj = sext i32 %i.bhe to i64
  %i.bhk = getelementptr i8, ptr %i.bhi, i64 %i.bhj
  %i.bhl = getelementptr i8, ptr %i.bhk, i64 1
  store i8 127, ptr %i.bhl, align 1, !tbaa !14
  %i.bhm = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bhn = sext i32 %i.bhe to i64
  %i.bho = getelementptr i8, ptr %i.bhm, i64 %i.bhn
  %i.bhp = getelementptr i8, ptr %i.bho, i64 2
  store i8 127, ptr %i.bhp, align 1, !tbaa !14
  %i.bhq = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bhr = sext i32 %i.bhe to i64
  %i.bhs = getelementptr i8, ptr %i.bhq, i64 %i.bhr
  %i.bht = getelementptr i8, ptr %i.bhs, i64 3
  store i8 127, ptr %i.bht, align 1, !tbaa !14
  %i.bhu = add i32 %i.bhd, %i.bgd                 ; 4 uses
  %i.bhv = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bhw = sext i32 %i.bhu to i64
  %i.bhx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bhw
  store i8 127, ptr %i.bhx, align 1, !tbaa !14
  %i.bhy = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bhz = add i32 %i.bhu, 1
  %i.bia = sext i32 %i.bhz to i64
  %i.bib = getelementptr inbounds i8, ptr %i.bhy, i64 %i.bia
  store i8 127, ptr %i.bib, align 1, !tbaa !14
  %i.bic = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bid = add i32 %i.bhu, 2
  %i.bie = sext i32 %i.bid to i64
  %i.bif = getelementptr inbounds i8, ptr %i.bic, i64 %i.bie
  store i8 127, ptr %i.bif, align 1, !tbaa !14
  %i.big = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bih = add i32 %i.bhu, 3
  %i.bii = sext i32 %i.bih to i64
  %i.bij = getelementptr inbounds i8, ptr %i.big, i64 %i.bii
  store i8 127, ptr %i.bij, align 1, !tbaa !14
  %i.bik = add i32 %i.bhd, %i.bgg                 ; 4 uses
  %i.bil = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bim = sext i32 %i.bik to i64
  %i.bin = getelementptr inbounds i8, ptr %i.bil, i64 %i.bim
  store i8 127, ptr %i.bin, align 1, !tbaa !14
  %i.bio = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bip = sext i32 %i.bik to i64
  %i.biq = getelementptr i8, ptr %i.bio, i64 %i.bip
  %i.bir = getelementptr i8, ptr %i.biq, i64 1
  store i8 127, ptr %i.bir, align 1, !tbaa !14
  %i.bis = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bit = add i32 %i.bik, 2
  %i.biu = sext i32 %i.bit to i64
  %i.biv = getelementptr inbounds i8, ptr %i.bis, i64 %i.biu
  store i8 127, ptr %i.biv, align 1, !tbaa !14
  %i.biw = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bix = add i32 %i.bik, 3
  %i.biy = sext i32 %i.bix to i64
  %i.biz = getelementptr inbounds i8, ptr %i.biw, i64 %i.biy
  store i8 127, ptr %i.biz, align 1, !tbaa !14
  %i.bja = add i32 %i.bhd, %i.bgj                 ; 4 uses
  %i.bjb = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bjc = sext i32 %i.bja to i64
  %i.bjd = getelementptr inbounds i8, ptr %i.bjb, i64 %i.bjc
  store i8 127, ptr %i.bjd, align 1, !tbaa !14
  %i.bje = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bjf = add i32 %i.bja, 1
  %i.bjg = sext i32 %i.bjf to i64
  %i.bjh = getelementptr inbounds i8, ptr %i.bje, i64 %i.bjg
  store i8 127, ptr %i.bjh, align 1, !tbaa !14
  %i.bji = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bjj = add i32 %i.bja, 2
  %i.bjk = sext i32 %i.bjj to i64
  %i.bjl = getelementptr inbounds i8, ptr %i.bji, i64 %i.bjk
  store i8 127, ptr %i.bjl, align 1, !tbaa !14
  %i.bjm = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bjn = add i32 %i.bja, 3
  %i.bjo = sext i32 %i.bjn to i64
  %i.bjp = getelementptr inbounds i8, ptr %i.bjm, i64 %i.bjo
  store i8 127, ptr %i.bjp, align 1, !tbaa !14
  br label %.loopexit337

.loopexit337.loopexit393:                         ; preds = %bb.ai
  %i.bjq = add nuw nsw i32 %i.bgz, %i.bgw
  %i.bjr = lshr i32 %i.bjq, 1
  %i.bjs = trunc nuw i32 %i.bjr to i8             ; 16 uses
  %indvars.iv451.tr = trunc nuw i64 %indvars.iv451 to i32
  %i.bjt = shl nuw nsw i32 %indvars.iv451.tr, 2   ; 4 uses
  %i.bju = add i32 %i.bjt, %i.bfp                 ; 4 uses
  %i.bjv = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bjw = sext i32 %i.bju to i64                 ; 2 uses
  %i.bjx = getelementptr inbounds i8, ptr %i.bjv, i64 %i.bjw
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !14
  %i.bjz = icmp ugt i8 %i.bjy, %i.bjs
  %i.bka = sext i1 %i.bjz to i8
  %i.bkb = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bkc = getelementptr inbounds i8, ptr %i.bkb, i64 %i.bjw
  store i8 %i.bka, ptr %i.bkc, align 1, !tbaa !14
  %i.bkd = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bke = or disjoint i32 %i.bju, 1
  %i.bkf = sext i32 %i.bke to i64                 ; 2 uses
  %i.bkg = getelementptr inbounds i8, ptr %i.bkd, i64 %i.bkf
  %i.bkh = load i8, ptr %i.bkg, align 1, !tbaa !14
  %i.bki = icmp ugt i8 %i.bkh, %i.bjs
  %i.bkj = sext i1 %i.bki to i8
  %i.bkk = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bkl = getelementptr inbounds i8, ptr %i.bkk, i64 %i.bkf
  store i8 %i.bkj, ptr %i.bkl, align 1, !tbaa !14
  %i.bkm = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bkn = or disjoint i32 %i.bju, 2
  %i.bko = sext i32 %i.bkn to i64                 ; 2 uses
  %i.bkp = getelementptr inbounds i8, ptr %i.bkm, i64 %i.bko
  %i.bkq = load i8, ptr %i.bkp, align 1, !tbaa !14
  %i.bkr = icmp ugt i8 %i.bkq, %i.bjs
  %i.bks = sext i1 %i.bkr to i8
  %i.bkt = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bku = getelementptr inbounds i8, ptr %i.bkt, i64 %i.bko
  store i8 %i.bks, ptr %i.bku, align 1, !tbaa !14
  %i.bkv = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bkw = or disjoint i32 %i.bju, 3
  %i.bkx = sext i32 %i.bkw to i64                 ; 2 uses
  %i.bky = getelementptr inbounds i8, ptr %i.bkv, i64 %i.bkx
  %i.bkz = load i8, ptr %i.bky, align 1, !tbaa !14
  %i.bla = icmp ugt i8 %i.bkz, %i.bjs
  %i.blb = sext i1 %i.bla to i8
  %i.blc = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bld = getelementptr inbounds i8, ptr %i.blc, i64 %i.bkx
  store i8 %i.blb, ptr %i.bld, align 1, !tbaa !14
  %i.ble = add i32 %i.bjt, %i.bfs                 ; 4 uses
  %i.blf = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.blg = sext i32 %i.ble to i64                 ; 2 uses
  %i.blh = getelementptr inbounds i8, ptr %i.blf, i64 %i.blg
  %i.bli = load i8, ptr %i.blh, align 1, !tbaa !14
  %i.blj = icmp ugt i8 %i.bli, %i.bjs
  %i.blk = sext i1 %i.blj to i8
  %i.bll = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.blm = getelementptr inbounds i8, ptr %i.bll, i64 %i.blg
  store i8 %i.blk, ptr %i.blm, align 1, !tbaa !14
  %i.bln = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.blo = add i32 %i.ble, 1
  %i.blp = sext i32 %i.blo to i64                 ; 2 uses
  %i.blq = getelementptr inbounds i8, ptr %i.bln, i64 %i.blp
  %i.blr = load i8, ptr %i.blq, align 1, !tbaa !14
  %i.bls = icmp ugt i8 %i.blr, %i.bjs
  %i.blt = sext i1 %i.bls to i8
  %i.blu = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.blv = getelementptr inbounds i8, ptr %i.blu, i64 %i.blp
  store i8 %i.blt, ptr %i.blv, align 1, !tbaa !14
  %i.blw = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.blx = add i32 %i.ble, 2
  %i.bly = sext i32 %i.blx to i64                 ; 2 uses
  %i.blz = getelementptr inbounds i8, ptr %i.blw, i64 %i.bly
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !14
  %i.bmb = icmp ugt i8 %i.bma, %i.bjs
  %i.bmc = sext i1 %i.bmb to i8
  %i.bmd = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bme = getelementptr inbounds i8, ptr %i.bmd, i64 %i.bly
  store i8 %i.bmc, ptr %i.bme, align 1, !tbaa !14
  %i.bmf = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bmg = add i32 %i.ble, 3
  %i.bmh = sext i32 %i.bmg to i64                 ; 2 uses
  %i.bmi = getelementptr inbounds i8, ptr %i.bmf, i64 %i.bmh
  %i.bmj = load i8, ptr %i.bmi, align 1, !tbaa !14
  %i.bmk = icmp ugt i8 %i.bmj, %i.bjs
  %i.bml = sext i1 %i.bmk to i8
  %i.bmm = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bmn = getelementptr inbounds i8, ptr %i.bmm, i64 %i.bmh
  store i8 %i.bml, ptr %i.bmn, align 1, !tbaa !14
  %i.bmo = add i32 %i.bjt, %i.bfv                 ; 4 uses
  %i.bmp = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bmq = sext i32 %i.bmo to i64                 ; 2 uses
  %i.bmr = getelementptr inbounds i8, ptr %i.bmp, i64 %i.bmq
  %i.bms = load i8, ptr %i.bmr, align 1, !tbaa !14
  %i.bmt = icmp ugt i8 %i.bms, %i.bjs
  %i.bmu = sext i1 %i.bmt to i8
  %i.bmv = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bmw = getelementptr inbounds i8, ptr %i.bmv, i64 %i.bmq
  store i8 %i.bmu, ptr %i.bmw, align 1, !tbaa !14
  %i.bmx = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bmy = or disjoint i32 %i.bmo, 1
  %i.bmz = sext i32 %i.bmy to i64                 ; 2 uses
  %i.bna = getelementptr inbounds i8, ptr %i.bmx, i64 %i.bmz
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !14
  %i.bnc = icmp ugt i8 %i.bnb, %i.bjs
  %i.bnd = sext i1 %i.bnc to i8
  %i.bne = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bnf = getelementptr inbounds i8, ptr %i.bne, i64 %i.bmz
  store i8 %i.bnd, ptr %i.bnf, align 1, !tbaa !14
  %i.bng = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bnh = add i32 %i.bmo, 2
  %i.bni = sext i32 %i.bnh to i64                 ; 2 uses
  %i.bnj = getelementptr inbounds i8, ptr %i.bng, i64 %i.bni
  %i.bnk = load i8, ptr %i.bnj, align 1, !tbaa !14
  %i.bnl = icmp ugt i8 %i.bnk, %i.bjs
  %i.bnm = sext i1 %i.bnl to i8
  %i.bnn = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bno = getelementptr inbounds i8, ptr %i.bnn, i64 %i.bni
  store i8 %i.bnm, ptr %i.bno, align 1, !tbaa !14
  %i.bnp = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bnq = add i32 %i.bmo, 3
  %i.bnr = sext i32 %i.bnq to i64                 ; 2 uses
  %i.bns = getelementptr inbounds i8, ptr %i.bnp, i64 %i.bnr
  %i.bnt = load i8, ptr %i.bns, align 1, !tbaa !14
  %i.bnu = icmp ugt i8 %i.bnt, %i.bjs
  %i.bnv = sext i1 %i.bnu to i8
  %i.bnw = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bnx = getelementptr inbounds i8, ptr %i.bnw, i64 %i.bnr
  store i8 %i.bnv, ptr %i.bnx, align 1, !tbaa !14
  %i.bny = add i32 %i.bjt, %i.bfy                 ; 4 uses
  %i.bnz = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.boa = sext i32 %i.bny to i64                 ; 2 uses
  %i.bob = getelementptr inbounds i8, ptr %i.bnz, i64 %i.boa
  %i.boc = load i8, ptr %i.bob, align 1, !tbaa !14
  %i.bod = icmp ugt i8 %i.boc, %i.bjs
  %i.boe = sext i1 %i.bod to i8
  %i.bof = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bog = getelementptr inbounds i8, ptr %i.bof, i64 %i.boa
  store i8 %i.boe, ptr %i.bog, align 1, !tbaa !14
  %i.boh = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.boi = add i32 %i.bny, 1
  %i.boj = sext i32 %i.boi to i64                 ; 2 uses
  %i.bok = getelementptr inbounds i8, ptr %i.boh, i64 %i.boj
  %i.bol = load i8, ptr %i.bok, align 1, !tbaa !14
  %i.bom = icmp ugt i8 %i.bol, %i.bjs
  %i.bon = sext i1 %i.bom to i8
  %i.boo = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bop = getelementptr inbounds i8, ptr %i.boo, i64 %i.boj
  store i8 %i.bon, ptr %i.bop, align 1, !tbaa !14
  %i.boq = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bor = add i32 %i.bny, 2
  %i.bos = sext i32 %i.bor to i64                 ; 2 uses
  %i.bot = getelementptr inbounds i8, ptr %i.boq, i64 %i.bos
  %i.bou = load i8, ptr %i.bot, align 1, !tbaa !14
  %i.bov = icmp ugt i8 %i.bou, %i.bjs
  %i.bow = sext i1 %i.bov to i8
  %i.box = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.boy = getelementptr inbounds i8, ptr %i.box, i64 %i.bos
  store i8 %i.bow, ptr %i.boy, align 1, !tbaa !14
  %i.boz = load ptr, ptr %i.bdb, align 8, !tbaa !87
  %i.bpa = add i32 %i.bny, 3
  %i.bpb = sext i32 %i.bpa to i64                 ; 2 uses
  %i.bpc = getelementptr inbounds i8, ptr %i.boz, i64 %i.bpb
  %i.bpd = load i8, ptr %i.bpc, align 1, !tbaa !14
  %i.bpe = icmp ugt i8 %i.bpd, %i.bjs
  %i.bpf = sext i1 %i.bpe to i8
  %i.bpg = load ptr, ptr %i.bdc, align 8, !tbaa !87
  %i.bph = getelementptr inbounds i8, ptr %i.bpg, i64 %i.bpb
  store i8 %i.bpf, ptr %i.bph, align 1, !tbaa !14
  br label %.loopexit337

.loopexit337:                                     ; preds = %.loopexit337.loopexit393, %.preheader336
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next452, %wide.trip.count454
  br i1 %exitcond455.not, label %._crit_edge371, label %bb.ai, !llvm.loop !110

._crit_edge378:                                   ; preds = %._crit_edge375, %.preheader335
  tail call void @free(ptr noundef %i.bbs) #21
  tail call void @free(ptr noundef %i.bbr) #21
  %i.bpi = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.bpj = load i32, ptr %i.bpi, align 4, !tbaa !111
  %.not = icmp eq i32 %i.bpj, 0
  br i1 %.not, label %bb.am, label %bb.al

bb.aj:                                            ; preds = %.lr.ph377, %._crit_edge375
  %indvars.iv466 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next467, %._crit_edge375 ] ; 4 uses
  %.not312 = icmp samesign ult i64 %indvars.iv466, %i.bgr
  %.0253 = select i1 %.not312, i32 %i.bgm, i32 0  ; 2 uses
  %i.bpk = icmp slt i32 %.0253, %i.b
  br i1 %i.bpk, label %.lr.ph, label %._crit_edge375

.lr.ph:                                           ; preds = %bb.aj
  %i.bpl = trunc nuw nsw i64 %indvars.iv466 to i32
  %i.bpm = lshr i32 %i.bpl, 2
  %.0252 = tail call i32 @llvm.smin.i32(i32 %i.bpm, i32 %i.bgn)
  %i.bpn = mul nsw i32 %.0252, %i.ah
  %i.bpo = mul nsw i64 %indvars.iv466, %i.bgs
  %i.bpp = sext i32 %.0253 to i64
  br label %bb.ak

._crit_edge375:                                   ; preds = %bb.ak, %bb.aj
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %exitcond470.not = icmp eq i64 %indvars.iv.next467, %wide.trip.count469
  br i1 %exitcond470.not, label %._crit_edge378, label %bb.aj, !llvm.loop !112

bb.ak:                                            ; preds = %.lr.ph, %bb.ak
  %indvars.iv461 = phi i64 [ %i.bpp, %.lr.ph ], [ %indvars.iv.next462, %bb.ak ] ; 3 uses
  %i.bpq = trunc nsw i64 %indvars.iv461 to i32
  %i.bpr = sdiv i32 %i.bpq, 4
end_hunk_0
begin_hunk_1_@_ZN2cv5aruco20apriltag_quad_threshERKNS0_18DetectorParametersERKNS_3MatERSt6vectorIS7_INS_6Point_IiEESaIS9_EESaISB_EE:bb.a
  br i1 %.not1213.i353, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.preheader.i352, %.lr.ph.i354
  %i.cp = phi i32 [ %i.ct, %.lr.ph.i354 ], [ %i.co, %.preheader.i352 ]
  %i.cq = phi ptr [ %i.cs, %.lr.ph.i354 ], [ %i.cn, %.preheader.i352 ]
  store i32 %.011.i350, ptr %i.cq, align 4, !tbaa !130
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !130 ; 2 uses
  %.not12.i355 = icmp eq i32 %i.ct, %.011.i350
  br i1 %.not12.i355, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356, label %.lr.ph.i354, !llvm.loop !135

_ZN2cv5aruco9UnionFind18get_representativeEj.exit356: ; preds = %.lr.ph.i354, %.preheader.i352
  %i.cu = icmp ult i32 %.011.i, %.011.i350
  %i.cv = shl nuw i64 %i.ck, 32
  %i.cw = or disjoint i64 %i.cv, %i.bt            ; 3 uses
  %i.cx = call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 32)
  %.0275 = select i1 %i.cu, i64 %i.cw, i64 %i.cx  ; 3 uses
  %i.cy = mul i64 %.0275, 2654435761
  %i.cz = lshr i64 %i.cy, 32
  %i.da = trunc nuw i64 %i.cz to i32
  %i.db = urem i32 %i.da, %i.ac
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.dc ; 2 uses
  %.0273497 = load ptr, ptr %i.dd, align 8, !tbaa !136 ; 3 uses
  %.not322498 = icmp eq ptr %.0273497, null
  br i1 %.not322498, label %.critedge337, label %.lr.ph500

.lr.ph500:                                        ; preds = %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356, %bb.n
  %.0273499 = phi ptr [ %.0273, %bb.n ], [ %.0273497, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356 ] ; 3 uses
  %i.de = load i64, ptr %.0273499, align 8, !tbaa !138
  %.not323 = icmp eq i64 %i.de, %.0275
  br i1 %.not323, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph500
  %i.df = getelementptr inbounds nuw i8, ptr %.0273499, i64 16
  %.0273 = load ptr, ptr %i.df, align 8, !tbaa !136 ; 2 uses
  %.not322 = icmp eq ptr %.0273, null
  br i1 %.not322, label %.critedge337, label %.lr.ph500, !llvm.loop !141

.critedge337:                                     ; preds = %bb.n, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356
  %i.dg = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 5 uses
  store i64 %.0275, ptr %i.dg, align 8, !tbaa !138
  %i.dh = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 2 uses
  store i64 12, ptr %i.dh, align 8, !tbaa !61
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !142
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %.0273497, ptr %i.dj, align 8, !tbaa !143
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !136
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph500, %.critedge337
  %.1274 = phi ptr [ %i.dg, %.critedge337 ], [ %.0273499, %.lr.ph500 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.dk = shl i32 %indvars.iv.tr, 1
  %i.dl = or disjoint i32 %i.dk, 1
  %i.dm = call i32 @llvm.umin.i32(i32 %i.dl, i32 65535)
  %i.dn = trunc nuw i32 %i.dm to i16
  store i16 %i.dn, ptr %8, align 4, !tbaa !63
  store i16 %i.av, ptr %.2..2..2..sroa_idx765, align 2, !tbaa !66
  %i.do = sub nsw i32 %i.cf, %i.bo
  %i.dp = call i32 @llvm.smax.i32(i32 %i.do, i32 0)
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dp, i32 65535)
  %i.dr = trunc nuw nsw i32 %i.dq to i16
  store i16 %i.dr, ptr %.8..8..8..sroa_idx766, align 4, !tbaa !144
  store i16 0, ptr %.10..10..10..sroa_idx767, align 2, !tbaa !145
  %i.ds = getelementptr inbounds nuw i8, ptr %.1274, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !142 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !59 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 12 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !146 ; 2 uses
  %.not.i.not.i = icmp slt i32 %i.dv, %i.dx
  br i1 %.not.i.not.i, label %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i, label %.lr.ph.i.i

._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i: ; preds = %.critedge
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.pre.i358 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  br label %bb.p

.lr.ph.i.i:                                       ; preds = %.critedge, %.lr.ph.i.i
  %spec.select1011.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.dx, %.critedge ]
  %i.dy = call i32 @llvm.smax.i32(i32 %spec.select1011.i.i, i32 4)
  %spec.select.i.i = shl nuw i32 %i.dy, 1         ; 4 uses
  %.not.i357 = icmp sgt i32 %spec.select.i.i, %i.dv
  br i1 %.not.i357, label %bb.o, label %.lr.ph.i.i, !llvm.loop !147

bb.o:                                             ; preds = %.lr.ph.i.i
  store i32 %spec.select.i.i, ptr %i.dw, align 4, !tbaa !146
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !62
  %i.eb = sext i32 %spec.select.i.i to i64
  %i.ec = load i64, ptr %i.dt, align 8, !tbaa !61
  %i.ed = mul i64 %i.ec, %i.eb
  %i.ee = call ptr @realloc(ptr noundef %i.ea, i64 noundef %i.ed) #26 ; 2 uses
  store ptr %i.ee, ptr %i.dz, align 8, !tbaa !62
  %.pre8.i = load i32, ptr %i.du, align 8, !tbaa !59
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i
  %i.ef = phi i32 [ %i.dv, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i ], [ %.pre8.i, %bb.o ]
  %i.eg = phi ptr [ %.pre.i358, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i ], [ %i.ee, %bb.o ]
  %i.eh = sext i32 %i.ef to i64
  %i.ei = load i64, ptr %i.dt, align 8, !tbaa !61 ; 2 uses
  %i.ej = mul i64 %i.ei, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr nonnull readonly align 4 %8, i64 %i.ei, i1 false)
  %i.el = load i32, ptr %i.du, align 8, !tbaa !59
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.du, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !87
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit
  %i.en = phi ptr [ %.pre, %bb.p ], [ %i.bk, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit ] ; 2 uses
  %i.eo = add nsw i64 %i.aw, %indvars.iv          ; 3 uses
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !14
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %i.es = add nuw nsw i32 %i.er, %i.bo
  %i.et = icmp eq i32 %i.es, 255
  br i1 %i.et, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.eu = add nuw nsw i64 %i.ax, %indvars.iv      ; 2 uses
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !126 ; 3 uses
  %i.ew = trunc nsw i64 %i.eu to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.011.i359 = phi i32 [ %i.ew, %bb.r ], [ %i.ez, %bb.s ] ; 6 uses
  %i.ex = zext i32 %.011.i359 to i64              ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !130 ; 2 uses
  %.not.i360 = icmp eq i32 %i.ez, %.011.i359
  br i1 %.not.i360, label %.preheader.i361, label %bb.s, !llvm.loop !134

.preheader.i361:                                  ; preds = %bb.s
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.eu ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !130 ; 2 uses
  %.not1213.i362 = icmp eq i32 %i.fb, %.011.i359
  br i1 %.not1213.i362, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365, label %.lr.ph.i363

.lr.ph.i363:                                      ; preds = %.preheader.i361, %.lr.ph.i363
  %i.fc = phi i32 [ %i.fg, %.lr.ph.i363 ], [ %i.fb, %.preheader.i361 ]
  %i.fd = phi ptr [ %i.ff, %.lr.ph.i363 ], [ %i.fa, %.preheader.i361 ]
  store i32 %.011.i359, ptr %i.fd, align 4, !tbaa !130
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !130 ; 2 uses
  %.not12.i364 = icmp eq i32 %i.fg, %.011.i359
  br i1 %.not12.i364, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365, label %.lr.ph.i363, !llvm.loop !135

_ZN2cv5aruco9UnionFind18get_representativeEj.exit365: ; preds = %.lr.ph.i363, %.preheader.i361
  %i.fh = icmp ult i32 %.011.i, %.011.i359
  %i.fi = shl nuw i64 %i.ex, 32
  %i.fj = or disjoint i64 %i.fi, %i.bt            ; 3 uses
  %i.fk = call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 32)
  %.0272 = select i1 %i.fh, i64 %i.fj, i64 %i.fk  ; 3 uses
  %i.fl = mul i64 %.0272, 2654435761
  %i.fm = lshr i64 %i.fl, 32
  %i.fn = trunc nuw i64 %i.fm to i32
  %i.fo = urem i32 %i.fn, %i.ac
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.fp ; 2 uses
  %.0270501 = load ptr, ptr %i.fq, align 8, !tbaa !136 ; 3 uses
  %.not324502 = icmp eq ptr %.0270501, null
  br i1 %.not324502, label %.critedge338, label %.lr.ph504

.lr.ph504:                                        ; preds = %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365, %bb.t
  %.0270503 = phi ptr [ %.0270, %bb.t ], [ %.0270501, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365 ] ; 3 uses
  %i.fr = load i64, ptr %.0270503, align 8, !tbaa !138
  %.not325 = icmp eq i64 %i.fr, %.0272
  br i1 %.not325, label %.critedge2, label %bb.t

bb.t:                                             ; preds = %.lr.ph504
  %i.fs = getelementptr inbounds nuw i8, ptr %.0270503, i64 16
  %.0270 = load ptr, ptr %i.fs, align 8, !tbaa !136 ; 2 uses
  %.not324 = icmp eq ptr %.0270, null
  br i1 %.not324, label %.critedge338, label %.lr.ph504, !llvm.loop !148

.critedge338:                                     ; preds = %bb.t, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365
  %i.ft = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 5 uses
  store i64 %.0272, ptr %i.ft, align 8, !tbaa !138
  %i.fu = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 2 uses
  store i64 12, ptr %i.fu, align 8, !tbaa !61
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !142
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr %.0270501, ptr %i.fw, align 8, !tbaa !143
  store ptr %i.ft, ptr %i.fq, align 8, !tbaa !136
  br label %.critedge2

.critedge2:                                       ; preds = %.lr.ph504, %.critedge338
  %.1271 = phi ptr [ %i.ft, %.critedge338 ], [ %.0270503, %.lr.ph504 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %indvars.iv.tr666 = trunc i64 %indvars.iv to i32
  %i.fx = shl nsw i32 %indvars.iv.tr666, 1
  %i.fy = call i32 @llvm.umin.i32(i32 %i.fx, i32 65535)
  %i.fz = trunc nuw i32 %i.fy to i16
  store i16 %i.fz, ptr %9, align 4, !tbaa !63
  store i16 %i.bb, ptr %.2..2..2..sroa_idx762, align 2, !tbaa !66
  %i.ga = sub nsw i32 %i.er, %i.bo
  store i16 0, ptr %.8..8..8..sroa_idx763, align 4, !tbaa !144
  %i.gb = call i32 @llvm.smax.i32(i32 %i.ga, i32 0)
  %i.gc = call i32 @llvm.umin.i32(i32 %i.gb, i32 65535)
  %i.gd = trunc nuw nsw i32 %i.gc to i16
  store i16 %i.gd, ptr %.10..10..10..sroa_idx764, align 2, !tbaa !145
  %i.ge = getelementptr inbounds nuw i8, ptr %.1271, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !142 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !59 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 12 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !146 ; 2 uses
  %.not.i.not.i366 = icmp slt i32 %i.gh, %i.gj
  br i1 %.not.i.not.i366, label %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372, label %.lr.ph.i.i367

._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372: ; preds = %.critedge2
  %.phi.trans.insert.i373 = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %.pre.i374 = load ptr, ptr %.phi.trans.insert.i373, align 8, !tbaa !62
  br label %bb.v

.lr.ph.i.i367:                                    ; preds = %.critedge2, %.lr.ph.i.i367
  %spec.select1011.i.i368 = phi i32 [ %spec.select.i.i369, %.lr.ph.i.i367 ], [ %i.gj, %.critedge2 ]
  %i.gk = call i32 @llvm.smax.i32(i32 %spec.select1011.i.i368, i32 4)
  %spec.select.i.i369 = shl nuw i32 %i.gk, 1      ; 4 uses
  %.not.i370 = icmp sgt i32 %spec.select.i.i369, %i.gh
  br i1 %.not.i370, label %bb.u, label %.lr.ph.i.i367, !llvm.loop !147

bb.u:                                             ; preds = %.lr.ph.i.i367
  store i32 %spec.select.i.i369, ptr %i.gi, align 4, !tbaa !146
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !62
  %i.gn = sext i32 %spec.select.i.i369 to i64
  %i.go = load i64, ptr %i.gf, align 8, !tbaa !61
  %i.gp = mul i64 %i.go, %i.gn
  %i.gq = call ptr @realloc(ptr noundef %i.gm, i64 noundef %i.gp) #26 ; 2 uses
  store ptr %i.gq, ptr %i.gl, align 8, !tbaa !62
  %.pre8.i371 = load i32, ptr %i.gg, align 8, !tbaa !59
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372
  %i.gr = phi i32 [ %i.gh, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372 ], [ %.pre8.i371, %bb.u ]
  %i.gs = phi ptr [ %.pre.i374, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372 ], [ %i.gq, %bb.u ]
  %i.gt = sext i32 %i.gr to i64
  %i.gu = load i64, ptr %i.gf, align 8, !tbaa !61 ; 2 uses
  %i.gv = mul i64 %i.gu, %i.gt
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr nonnull readonly align 4 %9, i64 %i.gu, i1 false)
  %i.gx = load i32, ptr %i.gg, align 8, !tbaa !59
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gg, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.pre608 = load ptr, ptr %i.ai, align 8, !tbaa !87
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %i.gz = phi ptr [ %.pre608, %bb.v ], [ %i.en, %bb.q ] ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.eo
  %i.hb = getelementptr i8, ptr %i.ha, i64 -1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !14
  %i.hd = zext i8 %i.hc to i32                    ; 2 uses
  %i.he = add nuw nsw i32 %i.hd, %i.bo
  %i.hf = icmp eq i32 %i.he, 255
  br i1 %i.hf, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.hg = trunc nuw nsw i64 %indvars.iv to i32
  %i.hh = add i32 %i.bd, %i.hg                    ; 2 uses
  %i.hi = load ptr, ptr %i.j, align 8, !tbaa !126 ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.011.i376 = phi i32 [ %i.hh, %bb.x ], [ %i.hl, %bb.y ] ; 6 uses
  %i.hj = zext i32 %.011.i376 to i64              ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !130 ; 2 uses
  %.not.i377 = icmp eq i32 %i.hl, %.011.i376
  br i1 %.not.i377, label %.preheader.i378, label %bb.y, !llvm.loop !134

.preheader.i378:                                  ; preds = %bb.y
  %i.hm = zext i32 %i.hh to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !130 ; 2 uses
  %.not1213.i379 = icmp eq i32 %i.ho, %.011.i376
  br i1 %.not1213.i379, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382, label %.lr.ph.i380

.lr.ph.i380:                                      ; preds = %.preheader.i378, %.lr.ph.i380
  %i.hp = phi i32 [ %i.ht, %.lr.ph.i380 ], [ %i.ho, %.preheader.i378 ]
  %i.hq = phi ptr [ %i.hs, %.lr.ph.i380 ], [ %i.hn, %.preheader.i378 ]
  store i32 %.011.i376, ptr %i.hq, align 4, !tbaa !130
  %i.hr = zext i32 %i.hp to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !130 ; 2 uses
  %.not12.i381 = icmp eq i32 %i.ht, %.011.i376
  br i1 %.not12.i381, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382, label %.lr.ph.i380, !llvm.loop !135

_ZN2cv5aruco9UnionFind18get_representativeEj.exit382: ; preds = %.lr.ph.i380, %.preheader.i378
  %i.hu = icmp ult i32 %.011.i, %.011.i376
  %i.hv = shl nuw i64 %i.hj, 32
  %i.hw = or disjoint i64 %i.hv, %i.bt            ; 3 uses
  %i.hx = call i64 @llvm.fshl.i64(i64 %i.hw, i64 %i.hw, i64 32)
  %.0269 = select i1 %i.hu, i64 %i.hw, i64 %i.hx  ; 3 uses
  %i.hy = mul i64 %.0269, 2654435761
  %i.hz = lshr i64 %i.hy, 32
  %i.ia = trunc nuw i64 %i.hz to i32
  %i.ib = urem i32 %i.ia, %i.ac
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ic ; 2 uses
  %.0267505 = load ptr, ptr %i.id, align 8, !tbaa !136 ; 3 uses
  %.not326506 = icmp eq ptr %.0267505, null
  br i1 %.not326506, label %.critedge339, label %.lr.ph508

.lr.ph508:                                        ; preds = %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382, %bb.z
  %.0267507 = phi ptr [ %.0267, %bb.z ], [ %.0267505, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382 ] ; 3 uses
  %i.ie = load i64, ptr %.0267507, align 8, !tbaa !138
  %.not327 = icmp eq i64 %i.ie, %.0269
  br i1 %.not327, label %.critedge4, label %bb.z

bb.z:                                             ; preds = %.lr.ph508
  %i.if = getelementptr inbounds nuw i8, ptr %.0267507, i64 16
  %.0267 = load ptr, ptr %i.if, align 8, !tbaa !136 ; 2 uses
  %.not326 = icmp eq ptr %.0267, null
  br i1 %.not326, label %.critedge339, label %.lr.ph508, !llvm.loop !149

.critedge339:                                     ; preds = %bb.z, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382
  %i.ig = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 5 uses
  store i64 %.0269, ptr %i.ig, align 8, !tbaa !138
  %i.ih = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 2 uses
  store i64 12, ptr %i.ih, align 8, !tbaa !61
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !142
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store ptr %.0267505, ptr %i.ij, align 8, !tbaa !143
  store ptr %i.ig, ptr %i.id, align 8, !tbaa !136
  br label %.critedge4

.critedge4:                                       ; preds = %.lr.ph508, %.critedge339
  %.1268 = phi ptr [ %i.ig, %.critedge339 ], [ %.0267507, %.lr.ph508 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %indvars.iv.tr667 = trunc i64 %indvars.iv to i32
  %i.ik = shl i32 %indvars.iv.tr667, 1
  %i.il = add i32 %i.ik, -1
  %i.im = call i32 @llvm.umin.i32(i32 %i.il, i32 65535)
  %i.in = trunc nuw i32 %i.im to i16
  store i16 %i.in, ptr %10, align 4, !tbaa !63
  store i16 %i.bb, ptr %.2..2..2..sroa_idx759, align 2, !tbaa !66
  %i.io = sub nsw i32 %i.hd, %i.bo                ; 2 uses
  %i.ip = sub nsw i32 0, %i.io
  %i.iq = call i32 @llvm.smax.i32(i32 %i.ip, i32 0)
  %i.ir = call i32 @llvm.umin.i32(i32 %i.iq, i32 65535)
  %i.is = trunc nuw nsw i32 %i.ir to i16
  store i16 %i.is, ptr %.8..8..8..sroa_idx760, align 4, !tbaa !144
  %i.it = call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iu = call i32 @llvm.umin.i32(i32 %i.it, i32 65535)
  %i.iv = trunc nuw nsw i32 %i.iu to i16
  store i16 %i.iv, ptr %.10..10..10..sroa_idx761, align 2, !tbaa !145
  %i.iw = getelementptr inbounds nuw i8, ptr %.1268, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !142 ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !59 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 12 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !146 ; 2 uses
  %.not.i.not.i383 = icmp slt i32 %i.iz, %i.jb
  br i1 %.not.i.not.i383, label %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389, label %.lr.ph.i.i384

._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389: ; preds = %.critedge4
  %.phi.trans.insert.i390 = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %.pre.i391 = load ptr, ptr %.phi.trans.insert.i390, align 8, !tbaa !62
  br label %bb.ab

.lr.ph.i.i384:                                    ; preds = %.critedge4, %.lr.ph.i.i384
  %spec.select1011.i.i385 = phi i32 [ %spec.select.i.i386, %.lr.ph.i.i384 ], [ %i.jb, %.critedge4 ]
  %i.jc = call i32 @llvm.smax.i32(i32 %spec.select1011.i.i385, i32 4)
  %spec.select.i.i386 = shl nuw i32 %i.jc, 1      ; 4 uses
  %.not.i387 = icmp sgt i32 %spec.select.i.i386, %i.iz
  br i1 %.not.i387, label %bb.aa, label %.lr.ph.i.i384, !llvm.loop !147

bb.aa:                                            ; preds = %.lr.ph.i.i384
  store i32 %spec.select.i.i386, ptr %i.ja, align 4, !tbaa !146
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !62
  %i.jf = sext i32 %spec.select.i.i386 to i64
  %i.jg = load i64, ptr %i.ix, align 8, !tbaa !61
  %i.jh = mul i64 %i.jg, %i.jf
  %i.ji = call ptr @realloc(ptr noundef %i.je, i64 noundef %i.jh) #26 ; 2 uses
  store ptr %i.ji, ptr %i.jd, align 8, !tbaa !62
  %.pre8.i388 = load i32, ptr %i.iy, align 8, !tbaa !59
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389
  %i.jj = phi i32 [ %i.iz, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389 ], [ %.pre8.i388, %bb.aa ]
  %i.jk = phi ptr [ %.pre.i391, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389 ], [ %i.ji, %bb.aa ]
  %i.jl = sext i32 %i.jj to i64
  %i.jm = load i64, ptr %i.ix, align 8, !tbaa !61 ; 2 uses
  %i.jn = mul i64 %i.jm, %i.jl
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr nonnull readonly align 4 %10, i64 %i.jm, i1 false)
end_hunk_1
