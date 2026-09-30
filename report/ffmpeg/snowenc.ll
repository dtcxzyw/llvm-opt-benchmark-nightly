Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@encode_blocks:bb.a
bb.av:                                            ; preds = %.lr.ph200.us.us.i.split.us.us.us.us.i
  %i.axl = sub nsw i32 %i.axa, %i.pr
  %i.axm = sext i32 %i.axl to i64
  %i.axn = getelementptr inbounds i8, ptr %i.pu, i64 %i.axm
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !86
  %i.axp = zext i8 %i.axo to i32
  %i.axq = add nuw nsw i32 %i.axk, %i.axp
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph200.us.us.i.split.us.us.us.us.i
  %.3.us.us.us.i.us.us.us.us.i = phi i32 [ %i.axq, %bb.av ], [ %i.axk, %.lr.ph200.us.us.i.split.us.us.us.us.i ] ; 3 uses
  %i.axr = getelementptr inbounds [2 x i8], ptr %i.qh, i64 %i.axb ; 2 uses
  %i.axs = load i16, ptr %i.axr, align 2, !tbaa !125
  %i.axt = sext i16 %i.axs to i32
  %i.axu = sub nsw i32 8, %i.axt                  ; 2 uses
  %i.axv = trunc i32 %i.axu to i16
  store i16 %i.axv, ptr %i.axr, align 2, !tbaa !125
  %gep316.i.us.us.us.us.i = getelementptr i8, ptr %invariant.gep315.i.us.us.us.i, i64 %indvars.iv260.i.us.us.us.us.i
  %i.axw = load i8, ptr %gep316.i.us.us.us.us.i, align 1, !tbaa !86
  %i.axx = zext i8 %i.axw to i32
  %i.axy = ashr i32 %i.axu, 4
  %i.axz = sub nsw i32 %i.axx, %i.axy
  %i.aya = mul nsw i32 %i.axz, %.3.us.us.us.i.us.us.us.us.i
  %i.ayb = add nsw i32 %i.aya, %.2167197.us.us.us.i.us.us.us.us.i ; 2 uses
  %i.ayc = mul nuw nsw i32 %.3.us.us.us.i.us.us.us.us.i, %.3.us.us.us.i.us.us.us.us.i
  %i.ayd = add nsw i32 %i.ayc, %.2164198.us.us.us.i.us.us.us.us.i ; 2 uses
  %indvars.iv.next261.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv260.i.us.us.us.us.i, 1 ; 2 uses
  %i.aye = icmp samesign ult i64 %indvars.iv.next261.i.us.us.us.us.i, %i.amv
  br i1 %i.aye, label %.lr.ph200.us.us.i.split.us.us.us.us.i, label %._crit_edge201.split.us.us.us.split.i.us.us.us.i, !llvm.loop !490

._crit_edge201.split.us.us.us.split.i.us.us.us.i: ; preds = %bb.au, %bb.aw
  %.us-phi683.us.us.us.i = phi i32 [ %i.ayb, %bb.aw ], [ %i.awu, %bb.au ] ; 2 uses
  %.us-phi684.us.us.us.i = phi i32 [ %i.ayd, %bb.aw ], [ %i.aww, %bb.au ] ; 2 uses
  %indvars.iv.next265.i.us.us.us.i = add nuw nsw i64 %indvars.iv264.i.us.us.us.i, 1 ; 2 uses
  %i.ayf = icmp samesign ult i64 %indvars.iv.next265.i.us.us.us.i, %i.amw
  br i1 %i.ayf, label %.lr.ph200.us.us.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i, !llvm.loop !497

.lr.ph200.us.us.us.i.us.us.us.i:                  ; preds = %.lr.ph207.split.us.split.us.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i
  %indvars.iv276.i.us.us.us.i = phi i64 [ %indvars.iv.next277.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i ], [ %i.vq, %.lr.ph207.split.us.split.us.i.us.us.us.i ] ; 3 uses
  %.1163206.us.us.us.i.us.us.us.i = phi i32 [ %.us-phi231.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i ], [ %.0162234.i.us.us.us.i, %.lr.ph207.split.us.split.us.i.us.us.us.i ] ; 2 uses
  %.1166205.us.us.us.i.us.us.us.i = phi i32 [ %.us-phi230.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i ], [ %.0165233.i.us.us.us.i, %.lr.ph207.split.us.split.us.i.us.us.us.i ] ; 2 uses
  %i.ayg = trunc nuw nsw i64 %indvars.iv276.i.us.us.us.i to i32
  %i.ayh = add i32 %.neg175.i.us.us.us.i, %i.ayg  ; 2 uses
  %i.ayi = mul nsw i32 %i.ayh, %i.pt              ; 2 uses
  %.not176.us.us.us.i.us.us.us.i = icmp slt i32 %i.ayh, %i.ps
  %or.cond.us.us.us.i.us.us.us.i = or i1 %i.amt, %.not176.us.us.us.i.us.us.us.i
  %i.ayj = mul nsw i64 %indvars.iv276.i.us.us.us.i, %i.rj
  %invariant.gep319.i.us.us.us.i = getelementptr i8, ptr %i.qb, i64 %i.ayj ; 2 uses
  br i1 %or.cond.us.us.us.i.us.us.us.i, label %.lr.ph200.split.us.us.us.split.us.us.split.us.i.us.us.us.i, label %.lr.ph200.split.us.us.us.split.us.us.split.i.us.us.us.i

.lr.ph200.split.us.us.us.split.us.us.split.i.us.us.us.i: ; preds = %.lr.ph200.us.us.us.i.us.us.us.i, %bb.ay
  %indvars.iv268.i.us.us.us.i = phi i64 [ %indvars.iv.next269.i.us.us.us.i, %bb.ay ], [ %i.vu, %.lr.ph200.us.us.us.i.us.us.us.i ] ; 3 uses
  %.2164198.us.us.us.us.us.i.us.us.us.i = phi i32 [ %i.bab, %bb.ay ], [ %.1163206.us.us.us.i.us.us.us.i, %.lr.ph200.us.us.us.i.us.us.us.i ]
  %.2167197.us.us.us.us.us.i.us.us.us.i = phi i32 [ %i.azz, %bb.ay ], [ %.1166205.us.us.us.i.us.us.us.i, %.lr.ph200.us.us.us.i.us.us.us.i ]
  %i.ayk = trunc nuw nsw i64 %indvars.iv268.i.us.us.us.i to i32
  %i.ayl = add i32 %.neg.i.us.us.us.i, %i.ayk     ; 2 uses
  %i.aym = add nsw i32 %i.ayl, %i.ayi             ; 5 uses
  %i.ayn = sext i32 %i.aym to i64                 ; 2 uses
  %i.ayo = getelementptr inbounds i8, ptr %i.pu, i64 %i.ayn
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !86
  %i.ayq = zext i8 %i.ayp to i32
  %i.ayr = add nsw i32 %i.aym, %i.rc
  %i.ays = sext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds i8, ptr %i.pu, i64 %i.ays
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !86
  %i.ayv = zext i8 %i.ayu to i32
  %i.ayw = add nuw nsw i32 %i.ayv, %i.ayq
  %i.ayx = add nsw i32 %i.aym, %i.pr
  %i.ayy = sext i32 %i.ayx to i64
  %i.ayz = getelementptr inbounds i8, ptr %i.pu, i64 %i.ayy
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !86
  %i.azb = zext i8 %i.aza to i32
  %i.azc = add nuw nsw i32 %i.ayw, %i.azb
  %i.azd = sub nsw i32 %i.aym, %i.rc
  %i.aze = sext i32 %i.azd to i64
  %i.azf = getelementptr inbounds i8, ptr %i.pu, i64 %i.aze
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !86
  %i.azh = zext i8 %i.azg to i32
  %i.azi = add nuw nsw i32 %i.azc, %i.azh         ; 2 uses
  %.not177.us.us.us.us.us.i.us.us.us.i = icmp slt i32 %i.ayl, %i.pr
  %or.cond178.us.us.us.us.us.i.us.us.us.i = or i1 %.fr.us.us.i, %.not177.us.us.us.us.us.i.us.us.us.i
  br i1 %or.cond178.us.us.us.us.us.i.us.us.us.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph200.split.us.us.us.split.us.us.split.i.us.us.us.i
  %i.azj = sub nsw i32 %i.aym, %i.pr
  %i.azk = sext i32 %i.azj to i64
  %i.azl = getelementptr inbounds i8, ptr %i.pu, i64 %i.azk
  %i.azm = load i8, ptr %i.azl, align 1, !tbaa !86
  %i.azn = zext i8 %i.azm to i32
  %i.azo = add nuw nsw i32 %i.azi, %i.azn
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph200.split.us.us.us.split.us.us.split.i.us.us.us.i
  %.3.us.us.us.us.us.i.us.us.us.i = phi i32 [ %i.azo, %bb.ax ], [ %i.azi, %.lr.ph200.split.us.us.us.split.us.us.split.i.us.us.us.i ] ; 3 uses
  %i.azp = getelementptr inbounds [2 x i8], ptr %i.qh, i64 %i.ayn ; 2 uses
  %i.azq = load i16, ptr %i.azp, align 2, !tbaa !125
  %i.azr = sext i16 %i.azq to i32
  %i.azs = sub nsw i32 8, %i.azr                  ; 2 uses
  %i.azt = trunc i32 %i.azs to i16
  store i16 %i.azt, ptr %i.azp, align 2, !tbaa !125
  %gep318.i.us.us.us.i = getelementptr i8, ptr %invariant.gep319.i.us.us.us.i, i64 %indvars.iv268.i.us.us.us.i
  %i.azu = load i8, ptr %gep318.i.us.us.us.i, align 1, !tbaa !86
  %i.azv = zext i8 %i.azu to i32
  %i.azw = ashr i32 %i.azs, 4
  %i.azx = sub nsw i32 %i.azv, %i.azw
  %i.azy = mul nsw i32 %i.azx, %.3.us.us.us.us.us.i.us.us.us.i
  %i.azz = add nsw i32 %i.azy, %.2167197.us.us.us.us.us.i.us.us.us.i ; 2 uses
  %i.baa = mul nuw nsw i32 %.3.us.us.us.us.us.i.us.us.us.i, %.3.us.us.us.us.us.i.us.us.us.i
  %i.bab = add nsw i32 %i.baa, %.2164198.us.us.us.us.us.i.us.us.us.i ; 2 uses
  %indvars.iv.next269.i.us.us.us.i = add nuw nsw i64 %indvars.iv268.i.us.us.us.i, 1 ; 2 uses
  %i.bac = icmp samesign ult i64 %indvars.iv.next269.i.us.us.us.i, %i.amv
  br i1 %i.bac, label %.lr.ph200.split.us.us.us.split.us.us.split.i.us.us.us.i, label %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i, !llvm.loop !490

.lr.ph200.split.us.us.us.split.us.us.split.us.i.us.us.us.i: ; preds = %.lr.ph200.us.us.us.i.us.us.us.i, %bb.ba
  %indvars.iv272.i.us.us.us.i = phi i64 [ %indvars.iv.next273.i.us.us.us.i, %bb.ba ], [ %i.vu, %.lr.ph200.us.us.us.i.us.us.us.i ] ; 3 uses
  %.2164198.us.us.us.us.us.us.i.us.us.us.i = phi i32 [ %i.bbo, %bb.ba ], [ %.1163206.us.us.us.i.us.us.us.i, %.lr.ph200.us.us.us.i.us.us.us.i ]
  %.2167197.us.us.us.us.us.us.i.us.us.us.i = phi i32 [ %i.bbm, %bb.ba ], [ %.1166205.us.us.us.i.us.us.us.i, %.lr.ph200.us.us.us.i.us.us.us.i ]
  %i.bad = trunc nuw nsw i64 %indvars.iv272.i.us.us.us.i to i32
  %i.bae = add i32 %.neg.i.us.us.us.i, %i.bad     ; 2 uses
  %i.baf = add nsw i32 %i.bae, %i.ayi             ; 4 uses
  %i.bag = sext i32 %i.baf to i64                 ; 2 uses
  %i.bah = getelementptr inbounds i8, ptr %i.pu, i64 %i.bag
  %i.bai = load i8, ptr %i.bah, align 1, !tbaa !86
  %i.baj = zext i8 %i.bai to i32
  %i.bak = add nsw i32 %i.baf, %i.rc
  %i.bal = sext i32 %i.bak to i64
  %i.bam = getelementptr inbounds i8, ptr %i.pu, i64 %i.bal
  %i.ban = load i8, ptr %i.bam, align 1, !tbaa !86
  %i.bao = zext i8 %i.ban to i32
  %i.bap = add nuw nsw i32 %i.bao, %i.baj
  %i.baq = add nsw i32 %i.baf, %i.pr
  %i.bar = sext i32 %i.baq to i64
  %i.bas = getelementptr inbounds i8, ptr %i.pu, i64 %i.bar
  %i.bat = load i8, ptr %i.bas, align 1, !tbaa !86
  %i.bau = zext i8 %i.bat to i32
  %i.bav = add nuw nsw i32 %i.bap, %i.bau         ; 2 uses
  %.not177.us.us.us.us.us.us.i.us.us.us.i = icmp slt i32 %i.bae, %i.pr
  %or.cond178.us.us.us.us.us.us.i.us.us.us.i = or i1 %.fr.us.us.i, %.not177.us.us.us.us.us.us.i.us.us.us.i
  br i1 %or.cond178.us.us.us.us.us.us.i.us.us.us.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph200.split.us.us.us.split.us.us.split.us.i.us.us.us.i
  %i.baw = sub nsw i32 %i.baf, %i.pr
  %i.bax = sext i32 %i.baw to i64
  %i.bay = getelementptr inbounds i8, ptr %i.pu, i64 %i.bax
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !86
  %i.bba = zext i8 %i.baz to i32
  %i.bbb = add nuw nsw i32 %i.bav, %i.bba
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph200.split.us.us.us.split.us.us.split.us.i.us.us.us.i
  %.3.us.us.us.us.us.us.i.us.us.us.i = phi i32 [ %i.bbb, %bb.az ], [ %i.bav, %.lr.ph200.split.us.us.us.split.us.us.split.us.i.us.us.us.i ] ; 3 uses
  %i.bbc = getelementptr inbounds [2 x i8], ptr %i.qh, i64 %i.bag ; 2 uses
  %i.bbd = load i16, ptr %i.bbc, align 2, !tbaa !125
  %i.bbe = sext i16 %i.bbd to i32
  %i.bbf = sub nsw i32 8, %i.bbe                  ; 2 uses
  %i.bbg = trunc i32 %i.bbf to i16
  store i16 %i.bbg, ptr %i.bbc, align 2, !tbaa !125
  %gep320.i.us.us.us.i = getelementptr i8, ptr %invariant.gep319.i.us.us.us.i, i64 %indvars.iv272.i.us.us.us.i
  %i.bbh = load i8, ptr %gep320.i.us.us.us.i, align 1, !tbaa !86
  %i.bbi = zext i8 %i.bbh to i32
  %i.bbj = ashr i32 %i.bbf, 4
  %i.bbk = sub nsw i32 %i.bbi, %i.bbj
  %i.bbl = mul nsw i32 %i.bbk, %.3.us.us.us.us.us.us.i.us.us.us.i
  %i.bbm = add nsw i32 %i.bbl, %.2167197.us.us.us.us.us.us.i.us.us.us.i ; 2 uses
  %i.bbn = mul nuw nsw i32 %.3.us.us.us.us.us.us.i.us.us.us.i, %.3.us.us.us.us.us.us.i.us.us.us.i
  %i.bbo = add nsw i32 %i.bbn, %.2164198.us.us.us.us.us.us.i.us.us.us.i ; 2 uses
  %indvars.iv.next273.i.us.us.us.i = add nuw nsw i64 %indvars.iv272.i.us.us.us.i, 1 ; 2 uses
  %i.bbp = icmp samesign ult i64 %indvars.iv.next273.i.us.us.us.i, %i.amv
  br i1 %i.bbp, label %.lr.ph200.split.us.us.us.split.us.us.split.us.i.us.us.us.i, label %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i, !llvm.loop !490

._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i: ; preds = %bb.ay, %bb.ba
  %.us-phi230.i.us.us.us.i = phi i32 [ %i.bbm, %bb.ba ], [ %i.azz, %bb.ay ] ; 2 uses
  %.us-phi231.i.us.us.us.i = phi i32 [ %i.bbo, %bb.ba ], [ %i.bab, %bb.ay ] ; 2 uses
  %indvars.iv.next277.i.us.us.us.i = add nuw nsw i64 %indvars.iv276.i.us.us.us.i, 1 ; 2 uses
  %i.bbq = icmp samesign ult i64 %indvars.iv.next277.i.us.us.us.i, %i.amw
  br i1 %i.bbq, label %.lr.ph200.us.us.us.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i, !llvm.loop !497

._crit_edge208.i.us.us.us.i:                      ; preds = %._crit_edge201.split.us220.i.split.us.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.us.us.i, %._crit_edge201.split.us.us.us.split.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i, %.lr.ph207.i.us.us.us.i, %add_yblock.exit.i.us.us.us.i
  %.1166.lcssa.i.us.us.us.i = phi i32 [ %.0165233.i.us.us.us.i, %add_yblock.exit.i.us.us.us.i ], [ %.us-phi230.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i ], [ %.0165233.i.us.us.us.i, %.lr.ph207.i.us.us.us.i ], [ %.us-phi.us.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.us.us.i ], [ %.us-phi683.us.us.us.i, %._crit_edge201.split.us.us.us.split.i.us.us.us.i ], [ %.us-phi.us796.us.i, %._crit_edge201.split.us220.i.split.us.us.us.i ] ; 3 uses
  %.1163.lcssa.i.us.us.us.i = phi i32 [ %.0162234.i.us.us.us.i, %add_yblock.exit.i.us.us.us.i ], [ %.us-phi231.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i ], [ %.0162234.i.us.us.us.i, %.lr.ph207.i.us.us.us.i ], [ %.us-phi682.us.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.us.us.i ], [ %.us-phi684.us.us.us.i, %._crit_edge201.split.us.us.us.split.i.us.us.us.i ], [ %.us-phi761.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.i ] ; 4 uses
  %i.bbr = add nuw nsw i32 %.0170232.i.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.i = icmp eq i32 %i.bbr, 4
  br i1 %exitcond.not.i.us.us.us.i, label %bb.bb, label %bb.t, !llvm.loop !498

bb.bb:                                            ; preds = %._crit_edge208.i.us.us.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.qr, ptr noundef nonnull align 2 dereferenceable(10) %2, i64 10, i1 false), !tbaa.struct !518
  %.not174.i.us.us.us.i = icmp eq i32 %.1163.lcssa.i.us.us.us.i, 0
  br i1 %.not174.i.us.us.us.i, label %get_dc.exit.us.us.us.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.bbs = sext i32 %.1166.lcssa.i.us.us.us.i to i64
  %i.bbt = shl nsw i64 %i.bbs, 6
  %i.bbu = ashr i32 %.1163.lcssa.i.us.us.us.i, 1
  %i.bbv = sext i32 %i.bbu to i64                 ; 2 uses
  %i.bbw = icmp slt i32 %.1166.lcssa.i.us.us.us.i, 0
  %i.bbx = sub nsw i64 0, %i.bbv
  %.p.i.us.us.us.i = select i1 %i.bbw, i64 %i.bbx, i64 %i.bbv
  %i.bby = add nsw i64 %.p.i.us.us.us.i, %i.bbt
  %i.bbz = sext i32 %.1163.lcssa.i.us.us.us.i to i64
  %i.bca = sdiv i64 %i.bby, %i.bbz
  %i.bcb = trunc i64 %i.bca to i32
  %20 = tail call i32 @llvm.smax.i32(i32 %i.bcb, i32 0)
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 255)
  br label %get_dc.exit.us.us.us.i

get_dc.exit.us.us.us.i:                           ; preds = %bb.bc, %bb.bb
  %.0171.i.us.us.us.i = phi i32 [ %21, %bb.bc ], [ 0, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv909.i
  store i32 %.0171.i.us.us.us.i, ptr %i.bcc, align 4, !tbaa !87
  %indvars.iv.next910.i = add nuw nsw i64 %indvars.iv909.i, 1 ; 2 uses
  %i.bcd = load i32, ptr %i.au, align 16, !tbaa !96
  %i.bce = sext i32 %i.bcd to i64
  %i.bcf = icmp slt i64 %indvars.iv.next910.i, %i.bce
  br i1 %i.bcf, label %bb.p, label %._crit_edge688.us.us.us.i, !llvm.loop !499

._crit_edge688.us.us.us.i:                        ; preds = %get_dc.exit.us.us.us.i, %.loopexit.us.us.us.i
  br i1 %.not483.us.us.i, label %._crit_edge688.us.us.us._crit_edge.i, label %bb.bd

._crit_edge688.us.us.us._crit_edge.i:             ; preds = %._crit_edge688.us.us.us.i
  %.pre942.i = load i32, ptr %i.e, align 16, !tbaa !107
  %.pre944.i = load i32, ptr %i.p, align 8, !tbaa !83
  %.pre946.i = load ptr, ptr %i.ak, align 8, !tbaa !133
  br label %bb.bg

bb.bd:                                            ; preds = %._crit_edge688.us.us.us.i
  %i.bcg = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !136
  %i.bch = and i8 %i.bcg, 1
  %.not487.us.us.us.i = icmp eq i8 %i.bch, 0
  %.pre943.i = load i32, ptr %i.e, align 16, !tbaa !107 ; 2 uses
  %.pre945.i = load i32, ptr %i.p, align 8, !tbaa !83 ; 2 uses
  %.pre947.i = load ptr, ptr %i.ak, align 8, !tbaa !133 ; 2 uses
  br i1 %.not487.us.us.us.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.bci = load i8, ptr %.sroa.6569.0..sroa_idx.us.us.us.i, align 1, !tbaa !86
  %i.bcj = load i8, ptr %.sroa.7.0..sroa_idx.us.us.us.i, align 2, !tbaa !86
  %i.bck = load i8, ptr %.sroa.8.0..sroa_idx.us.us.us.i, align 1, !tbaa !86
  %i.bcl = shl i32 %.pre943.i, %.pre945.i
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = mul nsw i64 %indvars.iv925.i, %i.bcm
  %i.bco = getelementptr [10 x i8], ptr %.pre947.i, i64 %i.bcn
  %i.bcp = getelementptr [10 x i8], ptr %i.bco, i64 %indvars.iv920.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %17, ptr noundef nonnull align 2 dereferenceable(10) %i.bcp, i64 10, i1 false), !tbaa.struct !518
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 5
  store i8 %i.bci, ptr %i.bcq, align 1, !tbaa !86
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcp, i64 6
  store i8 %i.bcj, ptr %i.bcr, align 2, !tbaa !86
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcp, i64 7
  store i8 %i.bck, ptr %i.bcs, align 1, !tbaa !86
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8 ; 2 uses
  %i.bcu = load i8, ptr %i.bct, align 2, !tbaa !136
  %i.bcv = or i8 %i.bcu, 1
  store i8 %i.bcv, ptr %i.bct, align 2, !tbaa !136
  %i.bcw = trunc nuw nsw i64 %indvars.iv920.i to i32
  %i.bcx = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.bcw, i32 noundef %i.bw, ptr noundef nonnull %i.c)
  %i.bcy = load i32, ptr %i.az, align 8, !tbaa !532
  %i.bcz = add nsw i32 %i.bcy, %i.bcx             ; 2 uses
  %.not614.us.us.us.i = icmp eq i32 %i.bcz, 2147483647
  br i1 %.not614.us.us.us.i, label %bb.bf, label %check_block_intra.exit513.us.us.us.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bcp, ptr noundef nonnull align 2 dereferenceable(10) %17, i64 10, i1 false), !tbaa.struct !518
  br label %check_block_intra.exit513.us.us.us.i

check_block_intra.exit513.us.us.us.i:             ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.bj

bb.bg:                                            ; preds = %bb.bd, %._crit_edge688.us.us.us._crit_edge.i
  %i.bda = phi ptr [ %.pre946.i, %._crit_edge688.us.us.us._crit_edge.i ], [ %.pre947.i, %bb.bd ]
  %i.bdb = phi i32 [ %.pre944.i, %._crit_edge688.us.us.us._crit_edge.i ], [ %.pre945.i, %bb.bd ]
  %i.bdc = phi i32 [ %.pre942.i, %._crit_edge688.us.us.us._crit_edge.i ], [ %.pre943.i, %bb.bd ]
  %i.bdd = load i16, ptr %i.cc, align 2, !tbaa !137 ; 2 uses
  %i.bde = sext i16 %i.bdd to i32                 ; 2 uses
  %i.bdf = load i16, ptr %.sroa.4567.0..sroa_idx.us.us.us.i, align 2, !tbaa !138 ; 2 uses
  %i.bdg = sext i16 %i.bdf to i32                 ; 2 uses
  %i.bdh = shl i32 %i.bdc, %i.bdb
  %i.bdi = sext i32 %i.bdh to i64
  %i.bdj = mul nsw i64 %indvars.iv925.i, %i.bdi
  %i.bdk = getelementptr [10 x i8], ptr %i.bda, i64 %i.bdj
  %i.bdl = getelementptr [10 x i8], ptr %i.bdk, i64 %indvars.iv920.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %5, ptr noundef nonnull align 2 dereferenceable(10) %i.bdl, i64 10, i1 false), !tbaa.struct !518
  %i.bdm = mul nsw i32 %i.bdg, 31
  %i.bdn = add nsw i32 %i.bdm, %i.bde
  %i.bdo = and i32 %i.bdn, 1023
  %i.bdp = load i32, ptr %i.am, align 16, !tbaa !513
  %i.bdq = ashr i32 %i.bde, 10
  %i.bdr = shl nsw i32 %i.bdg, 6
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdl, i64 4
  %i.bdt = load i8, ptr %i.bds, align 2, !tbaa !139
  %i.bdu = zext i8 %i.bdt to i32
  %i.bdv = shl nuw nsw i32 %i.bdu, 12
  %i.bdw = add nsw i32 %i.bdr, %i.bdq
  %i.bdx = add i32 %i.bdw, %i.bdp
  %i.bdy = add i32 %i.bdx, %i.bdv                 ; 2 uses
  %i.bdz = zext nneg i32 %i.bdo to i64
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bdz ; 2 uses
  %i.beb = load i32, ptr %i.bea, align 4, !tbaa !87
  %i.bec = icmp eq i32 %i.beb, %i.bdy
  br i1 %i.bec, label %check_block_inter.exit536.us.us.us.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.bdy, ptr %i.bea, align 4, !tbaa !87
  store i16 %i.bdd, ptr %i.bdl, align 2, !tbaa !137
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdl, i64 2
  store i16 %i.bdf, ptr %i.bed, align 2, !tbaa !138
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdl, i64 8 ; 2 uses
  %i.bef = load i8, ptr %i.bee, align 2, !tbaa !136
  %i.beg = and i8 %i.bef, -2
  store i8 %i.beg, ptr %i.bee, align 2, !tbaa !136
  %i.beh = trunc nuw nsw i64 %indvars.iv920.i to i32
  %i.bei = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.beh, i32 noundef %i.bw, ptr noundef nonnull %i.c) ; 2 uses
  %.not615.us.us.us.i = icmp eq i32 %i.bei, 2147483647
  br i1 %.not615.us.us.us.i, label %bb.bi, label %check_block_inter.exit536.us.us.us.i

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bdl, ptr noundef nonnull align 2 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !518
  br label %check_block_inter.exit536.us.us.us.i

check_block_inter.exit536.us.us.us.i:             ; preds = %bb.bi, %bb.bh, %bb.bg
  %.22.us.us.us.i = phi i32 [ 2147483647, %bb.bg ], [ 2147483647, %bb.bi ], [ %i.bei, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bj

bb.bj:                                            ; preds = %check_block_inter.exit536.us.us.us.i, %check_block_intra.exit513.us.us.us.i
  %.0590.us.us.us.i = phi i32 [ %.22.us.us.us.i, %check_block_inter.exit536.us.us.us.i ], [ %i.bcz, %check_block_intra.exit513.us.us.us.i ] ; 2 uses
  %i.bej = load i32, ptr %i.cc, align 2, !tbaa !125 ; 2 uses
  %.sroa.5.0.copyload.us.us.us.i = load i8, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !86 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6569.0..sroa_idx.us.us.us.i, i64 5, i1 false), !tbaa.struct !533
  %i.bek = load i32, ptr %i.ba, align 8, !tbaa !155
  %i.bel = icmp sgt i32 %i.bek, 0
  br i1 %i.bel, label %.lr.ph710.us.us.us.i, label %.._crit_edge711.us.us.us.i_crit_edge

.._crit_edge711.us.us.us.i_crit_edge:             ; preds = %bb.bj
  %.pre = trunc nuw nsw i64 %indvars.iv920.i to i32
  br label %._crit_edge711.us.us.us.i

.lr.ph710.us.us.us.i:                             ; preds = %bb.bj
  %.not497.us.us.us.i = icmp eq ptr %i.cf, null
  %.not498.us.us.us.i = icmp eq ptr %spec.select602.us.us.us.i, null
  %.not499.us.us.us.i = icmp eq ptr %i.ck, null
  %i.bem = trunc nuw nsw i64 %indvars.iv920.i to i32 ; 12 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.cu, %.lr.ph710.us.us.us.i
  %indvars.iv918.i = phi i64 [ %indvars.iv.next919.i, %bb.cu ], [ 0, %.lr.ph710.us.us.us.i ] ; 4 uses
  %.sroa.5.0708.us.us.us.i = phi i8 [ %.sroa.5.2.us.us.us.i, %bb.cu ], [ %.sroa.5.0.copyload.us.us.us.i, %.lr.ph710.us.us.us.i ] ; 3 uses
  %.0434707.us.us.us.i = phi i32 [ %.2436.us.us.us.i, %bb.cu ], [ %.0590.us.us.us.i, %.lr.ph710.us.us.us.i ] ; 3 uses
  %.sroa.0.sroa.0.0705.us.us.us.i = phi i32 [ %.sroa.0.sroa.0.1.us.us.us.i, %bb.cu ], [ %i.bej, %.lr.ph710.us.us.us.i ] ; 2 uses
  %i.ben = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv918.i
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !108
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %i.ca ; 9 uses
  %i.beq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv918.i
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !109
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %i.ca
  %i.bet = load i32, ptr %i.bes, align 4, !tbaa !87
  %i.beu = zext i8 %.sroa.5.0708.us.us.us.i to i64
  %i.bev = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.beu
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !109
  %i.bex = getelementptr inbounds nuw [4 x i8], ptr %i.bew, i64 %i.ca
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !87
  %i.bez = mul i32 %i.bey, 3
  %i.bfa = lshr i32 %i.bez, 1
  %i.bfb = icmp ugt i32 %i.bet, %i.bfa
  br i1 %i.bfb, label %bb.cu, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bfc = trunc i64 %indvars.iv918.i to i8
  store i8 %i.bfc, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !139
  %i.bfd = load i16, ptr %i.bep, align 2, !tbaa !125 ; 2 uses
  %i.bfe = sext i16 %i.bfd to i32                 ; 2 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bep, i64 2 ; 2 uses
  %i.bfg = load i16, ptr %i.bff, align 2, !tbaa !125 ; 2 uses
  %i.bfh = sext i16 %i.bfg to i32                 ; 2 uses
  %i.bfi = load i32, ptr %i.e, align 16, !tbaa !107
  %i.bfj = load i32, ptr %i.p, align 8, !tbaa !83
  %i.bfk = shl i32 %i.bfi, %i.bfj
  %i.bfl = load ptr, ptr %i.ak, align 8, !tbaa !133
  %i.bfm = sext i32 %i.bfk to i64
  %i.bfn = mul nsw i64 %indvars.iv925.i, %i.bfm
  %i.bfo = getelementptr [10 x i8], ptr %i.bfl, i64 %i.bfn
  %i.bfp = getelementptr [10 x i8], ptr %i.bfo, i64 %indvars.iv920.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %6, ptr noundef nonnull align 2 dereferenceable(10) %i.bfp, i64 10, i1 false), !tbaa.struct !518
  %i.bfq = mul nsw i32 %i.bfh, 31
  %i.bfr = add nsw i32 %i.bfq, %i.bfe
  %i.bfs = and i32 %i.bfr, 1023
  %i.bft = load i32, ptr %i.am, align 16, !tbaa !513
  %i.bfu = ashr i32 %i.bfe, 10
  %i.bfv = shl nsw i32 %i.bfh, 6
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfp, i64 4
  %i.bfx = load i8, ptr %i.bfw, align 2, !tbaa !139
  %i.bfy = zext i8 %i.bfx to i32
  %i.bfz = shl nuw nsw i32 %i.bfy, 12
  %i.bga = add nsw i32 %i.bfv, %i.bfu
  %i.bgb = add i32 %i.bga, %i.bft
  %i.bgc = add i32 %i.bgb, %i.bfz                 ; 2 uses
  %i.bgd = zext nneg i32 %i.bfs to i64
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bgd ; 2 uses
  %i.bgf = load i32, ptr %i.bge, align 4, !tbaa !87
end_hunk_0
