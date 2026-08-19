inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a
  br i1 %i.beb, label %.lr.ph135.i.i.epil.preheader, label %.lr.ph135.i.i

.preheader122.i.i:                                ; preds = %bb.ja
  br i1 %.not128.i.i, label %.loopexit.i35.i, label %.lr.ph141.i.i

.preheader120.i.i:                                ; preds = %bb.ja
  br i1 %.not128.i.i, label %.loopexit.i35.i, label %.lr.ph147.i.i

.preheader.i43.i:                                 ; preds = %bb.ja
  br i1 %.not128.i.i, label %.loopexit.i35.i, label %.lr.ph153.i.i

.lr.ph147.i.i:                                    ; preds = %.preheader120.i.i, %.lr.ph147.i.i
  %indvars.iv189.i.i = phi i64 [ %indvars.iv.next190.i.i, %.lr.ph147.i.i ], [ 0, %.preheader120.i.i ] ; 4 uses
  %.0146.i.i = phi i32 [ %i.bem, %.lr.ph147.i.i ], [ 0, %.preheader120.i.i ]
  %i.bed = mul nuw nsw i64 %indvars.iv189.i.i, %i.bea
  %i.bee = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bed ; 2 uses
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !31 ; 2 uses
  %i.beg = zext i8 %i.bef to i32
  %i.beh = and i64 %indvars.iv189.i.i, 7
  %i.bei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.beh
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !31
  %i.bek = zext i8 %i.bej to i32
  %i.bel = sub nsw i32 %i.beg, %i.bek
  %i.bem = add i32 %i.bel, %.0146.i.i             ; 3 uses
  %i.ben = add nuw nsw i64 %indvars.iv189.i.i, 2
  %i.beo = and i64 %i.ben, 7
  %i.bep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.beo
  store i8 %i.bef, ptr %i.bep, align 1, !tbaa !31
  %i.beq = lshr i32 %i.bem, 1
  %i.ber = trunc i32 %i.beq to i8
  store i8 %i.ber, ptr %i.bee, align 1, !tbaa !31
  %indvars.iv.next190.i.i = add nuw nsw i64 %indvars.iv189.i.i, 1 ; 2 uses
  %exitcond193.not.i.i = icmp eq i64 %indvars.iv.next190.i.i, %wide.trip.count.i29.i
  br i1 %exitcond193.not.i.i, label %.loopexit.i35.i, label %.lr.ph147.i.i, !llvm.loop !779

.lr.ph141.i.i:                                    ; preds = %.preheader122.i.i, %.lr.ph141.i.i
  %indvars.iv184.i41.i = phi i64 [ %indvars.iv.next185.i42.i, %.lr.ph141.i.i ], [ 0, %.preheader122.i.i ] ; 4 uses
  %.1140.i.i = phi i32 [ %i.bfb, %.lr.ph141.i.i ], [ 0, %.preheader122.i.i ]
  %i.bes = mul nuw nsw i64 %indvars.iv184.i41.i, %i.bea
  %i.bet = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bes ; 2 uses
  %i.beu = load i8, ptr %i.bet, align 1, !tbaa !31 ; 2 uses
  %i.bev = zext i8 %i.beu to i32
  %i.bew = and i64 %indvars.iv184.i41.i, 7
  %i.bex = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bew
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !31
  %i.bez = zext i8 %i.bey to i32
  %i.bfa = sub nsw i32 %i.bev, %i.bez
  %i.bfb = add i32 %i.bfa, %.1140.i.i             ; 3 uses
  %i.bfc = add nuw nsw i64 %indvars.iv184.i41.i, 3
  %i.bfd = and i64 %i.bfc, 7
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfd
  store i8 %i.beu, ptr %i.bfe, align 1, !tbaa !31
  %i.bff = udiv i32 %i.bfb, 3
  %i.bfg = trunc i32 %i.bff to i8
  store i8 %i.bfg, ptr %i.bet, align 1, !tbaa !31
  %indvars.iv.next185.i42.i = add nuw nsw i64 %indvars.iv184.i41.i, 1 ; 2 uses
  %exitcond188.not.i.i = icmp eq i64 %indvars.iv.next185.i42.i, %wide.trip.count.i29.i
  br i1 %exitcond188.not.i.i, label %.loopexit.i35.i, label %.lr.ph141.i.i, !llvm.loop !780

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %.lr.ph135.i.i
  %indvars.iv179.i38.i = phi i64 [ %indvars.iv.next180.i39.i.1, %.lr.ph135.i.i ], [ 0, %.lr.ph135.i.i.preheader ] ; 4 uses
  %.2134.i.i = phi i32 [ %i.bge, %.lr.ph135.i.i ], [ 0, %.lr.ph135.i.i.preheader ]
  %niter377 = phi i64 [ %niter377.next.1, %.lr.ph135.i.i ], [ 0, %.lr.ph135.i.i.preheader ]
  %i.bfh = mul nuw nsw i64 %indvars.iv179.i38.i, %i.bea
  %i.bfi = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bfh ; 2 uses
  %i.bfj = load i8, ptr %i.bfi, align 1, !tbaa !31 ; 2 uses
  %i.bfk = zext i8 %i.bfj to i32
  %i.bfl = and i64 %indvars.iv179.i38.i, 6        ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfl
  %i.bfn = load i8, ptr %i.bfm, align 2, !tbaa !31
  %i.bfo = zext i8 %i.bfn to i32
  %i.bfp = sub nsw i32 %i.bfk, %i.bfo
  %i.bfq = add i32 %i.bfp, %.2134.i.i             ; 2 uses
  %i.bfr = xor i64 %i.bfl, 4
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfr
  store i8 %i.bfj, ptr %i.bfs, align 2, !tbaa !31
  %i.bft = lshr i32 %i.bfq, 2
  %i.bfu = trunc i32 %i.bft to i8
  store i8 %i.bfu, ptr %i.bfi, align 1, !tbaa !31
  %indvars.iv.next180.i39.i = or disjoint i64 %indvars.iv179.i38.i, 1 ; 2 uses
  %i.bfv = mul nuw nsw i64 %indvars.iv.next180.i39.i, %i.bea
  %i.bfw = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bfv ; 2 uses
  %i.bfx = load i8, ptr %i.bfw, align 1, !tbaa !31 ; 2 uses
  %i.bfy = zext i8 %i.bfx to i32
  %i.bfz = and i64 %indvars.iv.next180.i39.i, 7   ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfz
  %i.bgb = load i8, ptr %i.bga, align 1, !tbaa !31
  %i.bgc = zext i8 %i.bgb to i32
  %i.bgd = sub nsw i32 %i.bfy, %i.bgc
  %i.bge = add i32 %i.bgd, %i.bfq                 ; 4 uses
  %i.bgf = xor i64 %i.bfz, 4
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bgf
  store i8 %i.bfx, ptr %i.bgg, align 1, !tbaa !31
  %i.bgh = lshr i32 %i.bge, 2
  %i.bgi = trunc i32 %i.bgh to i8
  store i8 %i.bgi, ptr %i.bfw, align 1, !tbaa !31
  %indvars.iv.next180.i39.i.1 = add nuw nsw i64 %indvars.iv179.i38.i, 2 ; 2 uses
  %niter377.next.1 = add i64 %niter377, 2         ; 2 uses
  %niter377.ncmp.1 = icmp eq i64 %niter377.next.1, %unroll_iter376
  br i1 %niter377.ncmp.1, label %.loopexit.i35.i.loopexit338.unr-lcssa, label %.lr.ph135.i.i, !llvm.loop !781

.lr.ph.i31.i:                                     ; preds = %.preheader126.i.i, %.lr.ph.i31.i
  %indvars.iv.i32.i = phi i64 [ %indvars.iv.next.i33.i, %.lr.ph.i31.i ], [ 0, %.preheader126.i.i ] ; 4 uses
  %.3130.i.i = phi i32 [ %i.bgs, %.lr.ph.i31.i ], [ 0, %.preheader126.i.i ]
  %i.bgj = mul nuw nsw i64 %indvars.iv.i32.i, %i.bea
  %i.bgk = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bgj ; 2 uses
  %i.bgl = load i8, ptr %i.bgk, align 1, !tbaa !31 ; 2 uses
  %i.bgm = zext i8 %i.bgl to i32
  %i.bgn = and i64 %indvars.iv.i32.i, 7
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bgn
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !31
  %i.bgq = zext i8 %i.bgp to i32
  %i.bgr = sub nsw i32 %i.bgm, %i.bgq
  %i.bgs = add i32 %i.bgr, %.3130.i.i             ; 3 uses
  %i.bgt = add nuw nsw i64 %indvars.iv.i32.i, 5
  %i.bgu = and i64 %i.bgt, 7
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bgu
  store i8 %i.bgl, ptr %i.bgv, align 1, !tbaa !31
  %i.bgw = udiv i32 %i.bgs, 5
  %i.bgx = trunc i32 %i.bgw to i8
  store i8 %i.bgx, ptr %i.bgk, align 1, !tbaa !31
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i32.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, %wide.trip.count.i29.i
  br i1 %exitcond.not.i34.i, label %.loopexit.i35.i, label %.lr.ph.i31.i, !llvm.loop !782

.lr.ph153.i.i:                                    ; preds = %.preheader.i43.i, %.lr.ph153.i.i
  %indvars.iv194.i.i = phi i64 [ %indvars.iv.next195.i.i, %.lr.ph153.i.i ], [ 0, %.preheader.i43.i ] ; 4 uses
  %.4152.i.i = phi i32 [ %i.bhh, %.lr.ph153.i.i ], [ 0, %.preheader.i43.i ]
  %i.bgy = mul nuw nsw i64 %indvars.iv194.i.i, %i.bea
  %i.bgz = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bgy ; 2 uses
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !31 ; 2 uses
  %i.bhb = zext i8 %i.bha to i32
  %i.bhc = and i64 %indvars.iv194.i.i, 7
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhc
  %i.bhe = load i8, ptr %i.bhd, align 1, !tbaa !31
  %i.bhf = zext i8 %i.bhe to i32
  %i.bhg = sub nsw i32 %i.bhb, %i.bhf
  %i.bhh = add i32 %i.bhg, %.4152.i.i             ; 3 uses
  %i.bhi = trunc i64 %indvars.iv194.i.i to i32
  %i.bhj = add i32 %i.bhi, %spec.select.i
  %i.bhk = and i32 %i.bhj, 7
  %i.bhl = zext nneg i32 %i.bhk to i64
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhl
  store i8 %i.bha, ptr %i.bhm, align 1, !tbaa !31
  %i.bhn = udiv i32 %i.bhh, %spec.select.i
  %i.bho = trunc i32 %i.bhn to i8
  store i8 %i.bho, ptr %i.bgz, align 1, !tbaa !31
  %indvars.iv.next195.i.i = add nuw nsw i64 %indvars.iv194.i.i, 1 ; 2 uses
  %exitcond198.not.i.i = icmp eq i64 %indvars.iv.next195.i.i, %wide.trip.count.i29.i
  br i1 %exitcond198.not.i.i, label %.loopexit.i35.i, label %.lr.ph153.i.i, !llvm.loop !783

.loopexit.i35.i.loopexit338.unr-lcssa:            ; preds = %.lr.ph135.i.i
  br i1 %lcmp.mod373.not, label %.loopexit.i35.i, label %.lr.ph135.i.i.epil.preheader

.lr.ph135.i.i.epil.preheader:                     ; preds = %.loopexit.i35.i.loopexit338.unr-lcssa, %.lr.ph135.i.i.preheader
  %indvars.iv179.i38.i.epil.init = phi i64 [ 0, %.lr.ph135.i.i.preheader ], [ %indvars.iv.next180.i39.i.1, %.loopexit.i35.i.loopexit338.unr-lcssa ] ; 2 uses
  %.2134.i.i.epil.init = phi i32 [ 0, %.lr.ph135.i.i.preheader ], [ %i.bge, %.loopexit.i35.i.loopexit338.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod375)
  %i.bhp = mul nuw nsw i64 %indvars.iv179.i38.i.epil.init, %i.bea
  %i.bhq = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bhp ; 2 uses
  %i.bhr = load i8, ptr %i.bhq, align 1, !tbaa !31 ; 2 uses
  %i.bhs = zext i8 %i.bhr to i32
  %i.bht = and i64 %indvars.iv179.i38.i.epil.init, 7 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bht
  %i.bhv = load i8, ptr %i.bhu, align 1, !tbaa !31
  %i.bhw = zext i8 %i.bhv to i32
  %i.bhx = sub nsw i32 %i.bhs, %i.bhw
  %i.bhy = add i32 %i.bhx, %.2134.i.i.epil.init   ; 2 uses
  %i.bhz = xor i64 %i.bht, 4
  %i.bia = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhz
  store i8 %i.bhr, ptr %i.bia, align 1, !tbaa !31
  %i.bib = lshr i32 %i.bhy, 2
  %i.bic = trunc i32 %i.bib to i8
  store i8 %i.bic, ptr %i.bhq, align 1, !tbaa !31
  br label %.loopexit.i35.i

.loopexit.i35.i:                                  ; preds = %.lr.ph.i31.i, %.lr.ph135.i.i.epil.preheader, %.loopexit.i35.i.loopexit338.unr-lcssa, %.lr.ph141.i.i, %.lr.ph147.i.i, %.lr.ph153.i.i, %.preheader.i43.i, %.preheader120.i.i, %.preheader122.i.i, %.preheader124.i.i, %.preheader126.i.i
  %.5108.i.i = phi i32 [ %i.cu, %.lr.ph141.i.i ], [ %i.cu, %.lr.ph135.i.i.epil.preheader ], [ %i.cu, %.lr.ph153.i.i ], [ %i.cu, %.lr.ph147.i.i ], [ 0, %.preheader.i43.i ], [ 0, %.preheader120.i.i ], [ 0, %.preheader122.i.i ], [ 0, %.preheader124.i.i ], [ 0, %.preheader126.i.i ], [ %i.cu, %.loopexit.i35.i.loopexit338.unr-lcssa ], [ %i.cu, %.lr.ph.i31.i ] ; 2 uses
  %.5.i36.i = phi i32 [ %i.bfb, %.lr.ph141.i.i ], [ %i.bhy, %.lr.ph135.i.i.epil.preheader ], [ %i.bhh, %.lr.ph153.i.i ], [ %i.bem, %.lr.ph147.i.i ], [ 0, %.preheader.i43.i ], [ 0, %.preheader120.i.i ], [ 0, %.preheader122.i.i ], [ 0, %.preheader124.i.i ], [ 0, %.preheader126.i.i ], [ %i.bge, %.loopexit.i35.i.loopexit338.unr-lcssa ], [ %i.bgs, %.lr.ph.i31.i ] ; 2 uses
  %i.bid = icmp slt i32 %.5108.i.i, %i.cw
  br i1 %i.bid, label %.lr.ph158.preheader.i.i, label %._crit_edge.i37.i

.lr.ph158.preheader.i.i:                          ; preds = %.loopexit.i35.i
  %i.bie = sext i32 %.5108.i.i to i64             ; 6 uses
  %i.bif = sub nsw i64 %wide.trip.count202.i.i, %i.bie
  %xtraiter378 = and i64 %i.bif, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %.lr.ph158.i.i.prol.loopexit, label %.lr.ph158.i.i.prol

.lr.ph158.i.i.prol:                               ; preds = %.lr.ph158.preheader.i.i
  %i.big = and i64 %i.bie, 7
  %i.bih = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.big
  %i.bii = load i8, ptr %i.bih, align 1, !tbaa !31
  %i.bij = zext i8 %i.bii to i32
  %i.bik = sub i32 %.5.i36.i, %i.bij              ; 2 uses
  %i.bil = udiv i32 %i.bik, %spec.select.i
  %i.bim = trunc i32 %i.bil to i8
  %i.bin = mul nsw i64 %i.bie, %i.bea
  %i.bio = getelementptr inbounds i8, ptr %.0111159.i.i, i64 %i.bin
  store i8 %i.bim, ptr %i.bio, align 1, !tbaa !31
  %indvars.iv.next200.i.i.prol = add nuw nsw i64 %i.bie, 1
  br label %.lr.ph158.i.i.prol.loopexit

.lr.ph158.i.i.prol.loopexit:                      ; preds = %.lr.ph158.i.i.prol, %.lr.ph158.preheader.i.i
  %indvars.iv199.i.i.unr = phi i64 [ %i.bie, %.lr.ph158.preheader.i.i ], [ %indvars.iv.next200.i.i.prol, %.lr.ph158.i.i.prol ]
  %.6157.i.i.unr = phi i32 [ %.5.i36.i, %.lr.ph158.preheader.i.i ], [ %i.bik, %.lr.ph158.i.i.prol ]
  %i.bip = icmp eq i64 %i.bec, %i.bie
  br i1 %i.bip, label %._crit_edge.i37.i, label %.lr.ph158.i.i

.lr.ph158.i.i:                                    ; preds = %.lr.ph158.i.i.prol.loopexit, %.lr.ph158.i.i
  %indvars.iv199.i.i = phi i64 [ %indvars.iv.next200.i.i.1, %.lr.ph158.i.i ], [ %indvars.iv199.i.i.unr, %.lr.ph158.i.i.prol.loopexit ] ; 4 uses
  %.6157.i.i = phi i32 [ %i.bjd, %.lr.ph158.i.i ], [ %.6157.i.i.unr, %.lr.ph158.i.i.prol.loopexit ]
  %i.biq = and i64 %indvars.iv199.i.i, 7
  %i.bir = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.biq
  %i.bis = load i8, ptr %i.bir, align 1, !tbaa !31
  %i.bit = zext i8 %i.bis to i32
  %i.biu = sub i32 %.6157.i.i, %i.bit             ; 2 uses
  %i.biv = udiv i32 %i.biu, %spec.select.i
  %i.biw = trunc i32 %i.biv to i8
  %i.bix = mul nsw i64 %indvars.iv199.i.i, %i.bea
  %i.biy = getelementptr inbounds i8, ptr %.0111159.i.i, i64 %i.bix
  store i8 %i.biw, ptr %i.biy, align 1, !tbaa !31
  %indvars.iv.next200.i.i = add nuw nsw i64 %indvars.iv199.i.i, 1 ; 2 uses
  %i.biz = and i64 %indvars.iv.next200.i.i, 7
  %i.bja = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.biz
  %i.bjb = load i8, ptr %i.bja, align 1, !tbaa !31
  %i.bjc = zext i8 %i.bjb to i32
  %i.bjd = sub i32 %i.biu, %i.bjc                 ; 2 uses
  %i.bje = udiv i32 %i.bjd, %spec.select.i
  %i.bjf = trunc i32 %i.bje to i8
  %i.bjg = mul nsw i64 %indvars.iv.next200.i.i, %i.bea
  %i.bjh = getelementptr inbounds i8, ptr %.0111159.i.i, i64 %i.bjg
  store i8 %i.bjf, ptr %i.bjh, align 1, !tbaa !31
  %indvars.iv.next200.i.i.1 = add nuw nsw i64 %indvars.iv199.i.i, 2 ; 2 uses
  %exitcond203.not.i.i.1 = icmp eq i64 %indvars.iv.next200.i.i.1, %wide.trip.count202.i.i
  br i1 %exitcond203.not.i.i.1, label %._crit_edge.i37.i, label %.lr.ph158.i.i, !llvm.loop !784

._crit_edge.i37.i:                                ; preds = %.lr.ph158.i.i.prol.loopexit, %.lr.ph158.i.i, %.loopexit.i35.i
  %i.bji = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 1
  %i.bjj = add nuw nsw i32 %.0110161.i.i, 1       ; 2 uses
  %exitcond204.not.i.i = icmp eq i32 %i.bjj, %i.ct
  br i1 %exitcond204.not.i.i, label %_ZL18stbtt__v_prefilterPhiiij.exit.i, label %bb.ja, !llvm.loop !785

_ZL18stbtt__v_prefilterPhiiij.exit.i:             ; preds = %._crit_edge.i37.i, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit

_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit: ; preds = %_ZL18stbtt__v_prefilterPhiiij.exit.i, %bb.iy
  %i.bjk = insertelement <2 x i32> poison, i32 %i.al, i64 0
  %i.bjl = insertelement <2 x i32> %i.bjk, i32 %spec.select.i, i64 1
  %i.bjm = sub nsw <2 x i32> splat (i32 1), %i.bjl
  %i.bjn = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bjo = insertelement <2 x float> %i.bjn, float %i.aw, i64 1 ; 2 uses
  %i.bjp = fmul nnan <2 x float> %i.bjo, splat (float 2.000000e+00)
  %i.bjq = sitofp <2 x i32> %i.bjm to <2 x float>
  %i.bjr = fdiv <2 x float> %i.bjq, %i.bjp        ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !446
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 40
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !418
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !443
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 60
  %i.bjy = load float, ptr %i.bjx, align 4, !tbaa !529 ; 2 uses
  %i.bjz = fcmp une float %i.bjy, 0.000000e+00
  br i1 %i.bjz, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit
  %i.bka = load float, ptr %i.aq, align 4, !tbaa !273
  %i.bkb = fdiv float %i.bka, %i.bjy
  br label %bb.jc

bb.jc:                                            ; preds = %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit, %bb.jb
  %i.bkc = phi float [ %i.bkb, %bb.jb ], [ 1.000000e+00, %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit ]
  %i.bkd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bke = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bkf = load float, ptr %i.bke, align 4, !tbaa !722
  %i.bkg = fadd float %i.bkf, 5.000000e-01
  %i.bkh = fptosi float %i.bkg to i32
  %i.bki = sitofp i32 %i.bkh to float
  %i.bkj = extractelement <2 x float> %i.bjr, i64 1
  %i.bkk = fadd float %i.bkj, %i.bki
  %i.bkl = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bkm = shufflevector <2 x float> %i.bkl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bkn = fmul <2 x float> %i.bkm, %i.bjo
  %i.bko = load i32, ptr %i.i, align 4, !tbaa !280 ; 2 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bkq = load i32, ptr %i.j, align 4, !tbaa !280 ; 2 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.bks = load <2 x i16>, ptr %i.bkr, align 2, !tbaa !240
  %i.bkt = zext <2 x i16> %i.bks to <2 x i32>
  %i.bku = insertelement <2 x i32> poison, i32 %i.bko, i64 0
  %i.bkv = insertelement <2 x i32> %i.bku, i32 %i.bkq, i64 1
  %i.bkw = add nsw <2 x i32> %i.bkv, %i.bkt
  %i.bkx = load <2 x float>, ptr %i.bkd, align 8, !tbaa !8
  %i.bky = insertelement <2 x float> poison, float %i.bkc, i64 0
  %i.bkz = shufflevector <2 x float> %i.bky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bla = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkx, <2 x float> %i.bkz, <2 x float> splat (float 5.000000e-01)) ; 3 uses
  %i.blb = fcmp ult <2 x float> %i.bla, zeroinitializer
  %i.blc = fptosi <2 x float> %i.bla to <2 x i32> ; 2 uses
  %i.bld = sitofp <2 x i32> %i.blc to <2 x float>
  %i.ble = fcmp une <2 x float> %i.bla, %i.bld
  %i.blf = and <2 x i1> %i.blb, %i.ble
  %i.blg = sext <2 x i1> %i.blf to <2 x i32>
  %i.blh = add nsw <2 x i32> %i.blg, %i.blc
  %i.bli = sitofp <2 x i32> %i.blh to <2 x float>
  %i.blj = insertelement <2 x float> %i.bjr, float %i.bkk, i64 1
  %i.blk = fadd <2 x float> %i.blj, %i.bli
  %i.bll = shufflevector <2 x float> %i.blk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.blm = fdiv <2 x float> splat (float 1.000000e+00), %i.bkn
  %i.bln = shufflevector <2 x float> %i.blm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.blo = insertelement <4 x i32> poison, i32 %i.bko, i64 0
  %i.blp = insertelement <4 x i32> %i.blo, i32 %i.bkq, i64 1
  %i.blq = shufflevector <2 x i32> %i.bkw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.blr = shufflevector <4 x i32> %i.blp, <4 x i32> %i.blq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bls = sitofp <4 x i32> %i.blr to <4 x float>
  %i.blt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bls, <4 x float> %i.bln, <4 x float> %i.bll)
  store <4 x float> %i.blt, ptr %i.bkp, align 4, !tbaa !8
  %i.blu = load i32, ptr %5, align 4
  %i.blv = or i32 %i.blu, 2
  store i32 %i.blv, ptr %5, align 4
  %i.blw = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.cx, ptr %i.blw, align 4, !tbaa !624
  call void @_Z34ImFontAtlasBakedSetFontGlyphBitmapP11ImFontAtlasP11ImFontBakedP12ImFontConfigP11ImFontGlyphP13ImTextureRectPKh15ImTextureFormati(ptr noundef %0, ptr nonnull poison, ptr noundef %1, ptr nonnull poison, ptr noundef nonnull %i.dl, ptr noundef %i.ed, i32 noundef 1, i32 noundef %i.ct)
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.jc, %bb.h, %bb.f
  %.2 = phi i1 [ true, %bb.f ], [ false, %bb.h ], [ true, %bb.jc ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #38
  br label %bb.jd

bb.jd:                                            ; preds = %bb.a, %.critedge
  %.3 = phi i1 [ %.2, %.critedge ], [ false, %bb.a ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas19GetGlyphRangesGreekEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas19GetGlyphRangesGreekEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas20GetGlyphRangesKoreanEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas20GetGlyphRangesKoreanEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas25GetGlyphRangesChineseFullEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas25GetGlyphRangesChineseFullEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i16, ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, align 16, !tbaa !240
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, ptr noundef nonnull align 16 dereferenceable(24) @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11base_ranges, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.4, %bb.c ] ; 6 uses
  %.01215.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, i64 24), %bb.b ], [ %i.ad, %bb.c ] ; 11 uses
  %.01314.i = phi i16 [ 19968, %bb.b ], [ %i.ab, %bb.c ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.c = load i16, ptr %i.b, align 2, !tbaa !240
  %i.d = add i16 %i.c, %.01314.i                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01215.i, i64 2
  store i16 %i.d, ptr %i.e, align 2, !tbaa !240
  store i16 %i.d, ptr %.01215.i, align 2, !tbaa !240
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !240
  %i.j = add i16 %i.i, %i.d                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i, i64 6
  store i16 %i.j, ptr %i.k, align 2, !tbaa !240
  store i16 %i.j, ptr %i.f, align 2, !tbaa !240
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !240
  %i.p = add i16 %i.o, %i.j                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i, i64 10
  store i16 %i.p, ptr %i.q, align 2, !tbaa !240
  store i16 %i.p, ptr %i.l, align 2, !tbaa !240
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i, i64 12
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !240
  %i.v = add i16 %i.u, %i.p                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01215.i, i64 14
  store i16 %i.v, ptr %i.w, align 2, !tbaa !240
  store i16 %i.v, ptr %i.r, align 2, !tbaa !240
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !240
  %i.ab = add i16 %i.aa, %i.v                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01215.i, i64 18
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !240
  store i16 %i.ab, ptr %i.x, align 2, !tbaa !240
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01215.i, i64 20 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 2500
  br i1 %exitcond.not.i.4, label %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, label %bb.c, !llvm.loop !786

_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit: ; preds = %bb.c
  store i16 0, ptr %i.ad, align 2, !tbaa !240
  br label %bb.d

bb.d:                                             ; preds = %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, %bb.a
  ret ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas22GetGlyphRangesJapaneseEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i16, ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges, align 16, !tbaa !240
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges, ptr noundef nonnull align 16 dereferenceable(20) @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11base_ranges, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
end_hunk_0
