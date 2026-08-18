inline.NumInlined: 254
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 76
begin_hunk_0_@Exa_ManExactSynthesis2:bb.a
  %unroll_iter685 = and i64 %wide.trip.count.i.i93, 2147483646
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  %lcmp.mod684 = trunc i32 %i.arw to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %Exa_ManFindFanin.exit.loopexit.us.us.1.i, %.preheader.us.preheader.i
  %indvars.iv.i97 = phi i64 [ %i.asf, %.preheader.us.preheader.i ], [ %indvars.iv.next33.i, %Exa_ManFindFanin.exit.loopexit.us.us.1.i ] ; 2 uses
  %.021.us.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.1.i98, %Exa_ManFindFanin.exit.loopexit.us.us.1.i ] ; 2 uses
  %i.asj = getelementptr inbounds [256 x i8], ptr %i.arz, i64 %indvars.iv.i97 ; 4 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 128 ; 3 uses
  br i1 %i.ash, label %.epil.preheader673, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %bb.hh
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i.1, %bb.hh ], [ 0, %.preheader.us.i ] ; 4 uses
  %.023.i.us.us.i = phi i32 [ %.1.i.us.us.i.1, %bb.hh ], [ -1, %.preheader.us.i ] ; 2 uses
  %niter679 = phi i64 [ %niter679.next.1, %bb.hh ], [ 0, %.preheader.us.i ]
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %indvars.iv.i.us.us.i
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !8 ; 2 uses
  %.not.i.us.us.i = icmp eq i32 %i.asm, 0
  br i1 %.not.i.us.us.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %.preheader.us.i.new
  %i.asn = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.aso = getelementptr i8, ptr %i.asn, i64 328
  %.val.i.us.us.i = load ptr, ptr %i.aso, align 8, !tbaa !87
  %i.asp = sext i32 %i.asm to i64
  %i.asq = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.i, i64 %i.asp
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !8
  %.not20.i.us.us.i = icmp eq i32 %i.asr, 1
  %i.ass = trunc nuw nsw i64 %indvars.iv.i.us.us.i to i32
  %spec.select19.i.us.us.i = select i1 %.not20.i.us.us.i, i32 %i.ass, i32 %.023.i.us.us.i
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.preheader.us.i.new
  %.1.i.us.us.i = phi i32 [ %.023.i.us.us.i, %.preheader.us.i.new ], [ %spec.select19.i.us.us.i, %bb.he ] ; 2 uses
  %indvars.iv.next.i.us.us.i = or disjoint i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %indvars.iv.next.i.us.us.i
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !8 ; 2 uses
  %.not.i.us.us.i.1 = icmp eq i32 %i.asu, 0
  br i1 %.not.i.us.us.i.1, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.asv = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.asw = getelementptr i8, ptr %i.asv, i64 328
  %.val.i.us.us.i.1 = load ptr, ptr %i.asw, align 8, !tbaa !87
  %i.asx = sext i32 %i.asu to i64
  %i.asy = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.i.1, i64 %i.asx
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !8
  %.not20.i.us.us.i.1 = icmp eq i32 %i.asz, 1
  %i.ata = trunc nuw nsw i64 %indvars.iv.next.i.us.us.i to i32
  %spec.select19.i.us.us.i.1 = select i1 %.not20.i.us.us.i.1, i32 %i.ata, i32 %.1.i.us.us.i
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.1.i.us.us.i.1 = phi i32 [ %.1.i.us.us.i, %bb.hf ], [ %spec.select19.i.us.us.i.1, %bb.hg ] ; 3 uses
  %indvars.iv.next.i.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.i, 2 ; 2 uses
  %niter679.next.1 = add i64 %niter679, 2         ; 2 uses
  %niter679.ncmp.1 = icmp eq i64 %niter679.next.1, %unroll_iter678
  br i1 %niter679.ncmp.1, label %Exa_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !156

Exa_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa: ; preds = %bb.hh
  br i1 %lcmp.mod675.not, label %Exa_ManFindFanin.exit.loopexit.us.us.i, label %.epil.preheader673

.epil.preheader673:                               ; preds = %Exa_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.us.us.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.us.us.i.1, %Exa_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  %.023.i.us.us.i.epil.init = phi i32 [ -1, %.preheader.us.i ], [ %.1.i.us.us.i.1, %Exa_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod677)
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %indvars.iv.i.us.us.i.epil.init
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !8 ; 2 uses
  %.not.i.us.us.i.epil = icmp eq i32 %i.atc, 0
  br i1 %.not.i.us.us.i.epil, label %Exa_ManFindFanin.exit.loopexit.us.us.i, label %bb.hi

bb.hi:                                            ; preds = %.epil.preheader673
  %i.atd = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.ate = getelementptr i8, ptr %i.atd, i64 328
  %.val.i.us.us.i.epil = load ptr, ptr %i.ate, align 8, !tbaa !87
  %i.atf = sext i32 %i.atc to i64
  %i.atg = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.i.epil, i64 %i.atf
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !8
  %.not20.i.us.us.i.epil = icmp eq i32 %i.ath, 1
  %i.ati = trunc nuw nsw i64 %indvars.iv.i.us.us.i.epil.init to i32
  %spec.select19.i.us.us.i.epil = select i1 %.not20.i.us.us.i.epil, i32 %i.ati, i32 %.023.i.us.us.i.epil.init
  br label %Exa_ManFindFanin.exit.loopexit.us.us.i

Exa_ManFindFanin.exit.loopexit.us.us.i:           ; preds = %.epil.preheader673, %bb.hi, %Exa_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa
  %.1.i.us.us.i.lcssa = phi i32 [ %.1.i.us.us.i.1, %Exa_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa ], [ %.023.i.us.us.i.epil.init, %.epil.preheader673 ], [ %spec.select19.i.us.us.i.epil, %bb.hi ]
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %.021.us.i ; 2 uses
  store i32 %.1.i.us.us.i.lcssa, ptr %i.atj, align 4, !tbaa !8
  br i1 %i.asi, label %.epil.preheader680, label %Exa_ManFindFanin.exit.loopexit.us.us.i.new

Exa_ManFindFanin.exit.loopexit.us.us.i.new:       ; preds = %Exa_ManFindFanin.exit.loopexit.us.us.i, %bb.hm
  %indvars.iv.i.us.us.1.i = phi i64 [ %indvars.iv.next.i.us.us.1.i.1, %bb.hm ], [ 0, %Exa_ManFindFanin.exit.loopexit.us.us.i ] ; 4 uses
  %.023.i.us.us.1.i = phi i32 [ %.1.i.us.us.1.i.1, %bb.hm ], [ -1, %Exa_ManFindFanin.exit.loopexit.us.us.i ] ; 2 uses
  %niter686 = phi i64 [ %niter686.next.1, %bb.hm ], [ 0, %Exa_ManFindFanin.exit.loopexit.us.us.i ]
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %indvars.iv.i.us.us.1.i
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !8 ; 2 uses
  %.not.i.us.us.1.i = icmp eq i32 %i.atl, 0
  br i1 %.not.i.us.us.1.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %Exa_ManFindFanin.exit.loopexit.us.us.i.new
  %i.atm = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.atn = getelementptr i8, ptr %i.atm, i64 328
  %.val.i.us.us.1.i = load ptr, ptr %i.atn, align 8, !tbaa !87
  %i.ato = sext i32 %i.atl to i64
  %i.atp = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.1.i, i64 %i.ato
  %i.atq = load i32, ptr %i.atp, align 4, !tbaa !8
  %.not20.i.us.us.1.i = icmp eq i32 %i.atq, 1
  %i.atr = trunc nuw nsw i64 %indvars.iv.i.us.us.1.i to i32
  %spec.select19.i.us.us.1.i = select i1 %.not20.i.us.us.1.i, i32 %i.atr, i32 %.023.i.us.us.1.i
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %Exa_ManFindFanin.exit.loopexit.us.us.i.new
  %.1.i.us.us.1.i = phi i32 [ %.023.i.us.us.1.i, %Exa_ManFindFanin.exit.loopexit.us.us.i.new ], [ %spec.select19.i.us.us.1.i, %bb.hj ] ; 2 uses
  %indvars.iv.next.i.us.us.1.i = or disjoint i64 %indvars.iv.i.us.us.1.i, 1 ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %indvars.iv.next.i.us.us.1.i
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !8 ; 2 uses
  %.not.i.us.us.1.i.1 = icmp eq i32 %i.att, 0
  br i1 %.not.i.us.us.1.i.1, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.atu = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.atv = getelementptr i8, ptr %i.atu, i64 328
  %.val.i.us.us.1.i.1 = load ptr, ptr %i.atv, align 8, !tbaa !87
  %i.atw = sext i32 %i.att to i64
  %i.atx = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.1.i.1, i64 %i.atw
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !8
  %.not20.i.us.us.1.i.1 = icmp eq i32 %i.aty, 1
  %i.atz = trunc nuw nsw i64 %indvars.iv.next.i.us.us.1.i to i32
  %spec.select19.i.us.us.1.i.1 = select i1 %.not20.i.us.us.1.i.1, i32 %i.atz, i32 %.1.i.us.us.1.i
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.1.i.us.us.1.i.1 = phi i32 [ %.1.i.us.us.1.i, %bb.hk ], [ %spec.select19.i.us.us.1.i.1, %bb.hl ] ; 3 uses
  %indvars.iv.next.i.us.us.1.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.1.i, 2 ; 2 uses
  %niter686.next.1 = add i64 %niter686, 2         ; 2 uses
  %niter686.ncmp.1 = icmp eq i64 %niter686.next.1, %unroll_iter685
  br i1 %niter686.ncmp.1, label %Exa_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa, label %Exa_ManFindFanin.exit.loopexit.us.us.i.new, !llvm.loop !156

Exa_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa: ; preds = %bb.hm
  br i1 %lcmp.mod682.not, label %Exa_ManFindFanin.exit.loopexit.us.us.1.i, label %.epil.preheader680

.epil.preheader680:                               ; preds = %Exa_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa, %Exa_ManFindFanin.exit.loopexit.us.us.i
  %indvars.iv.i.us.us.1.i.epil.init = phi i64 [ 0, %Exa_ManFindFanin.exit.loopexit.us.us.i ], [ %indvars.iv.next.i.us.us.1.i.1, %Exa_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa ] ; 2 uses
  %.023.i.us.us.1.i.epil.init = phi i32 [ -1, %Exa_ManFindFanin.exit.loopexit.us.us.i ], [ %.1.i.us.us.1.i.1, %Exa_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod684)
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %indvars.iv.i.us.us.1.i.epil.init
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !8 ; 2 uses
  %.not.i.us.us.1.i.epil = icmp eq i32 %i.aub, 0
  br i1 %.not.i.us.us.1.i.epil, label %Exa_ManFindFanin.exit.loopexit.us.us.1.i, label %bb.hn

bb.hn:                                            ; preds = %.epil.preheader680
  %i.auc = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.aud = getelementptr i8, ptr %i.auc, i64 328
  %.val.i.us.us.1.i.epil = load ptr, ptr %i.aud, align 8, !tbaa !87
  %i.aue = sext i32 %i.aub to i64
  %i.auf = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.1.i.epil, i64 %i.aue
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !8
  %.not20.i.us.us.1.i.epil = icmp eq i32 %i.aug, 1
  %i.auh = trunc nuw nsw i64 %indvars.iv.i.us.us.1.i.epil.init to i32
  %spec.select19.i.us.us.1.i.epil = select i1 %.not20.i.us.us.1.i.epil, i32 %i.auh, i32 %.023.i.us.us.1.i.epil.init
  br label %Exa_ManFindFanin.exit.loopexit.us.us.1.i

Exa_ManFindFanin.exit.loopexit.us.us.1.i:         ; preds = %.epil.preheader680, %bb.hn, %Exa_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa
  %.1.i.us.us.1.i.lcssa = phi i32 [ %.1.i.us.us.1.i.1, %Exa_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa ], [ %.023.i.us.us.1.i.epil.init, %.epil.preheader680 ], [ %spec.select19.i.us.us.1.i.epil, %bb.hn ]
  %indvars.iv.next.1.i98 = add nuw nsw i64 %.021.us.i, 2
  %i.aui = getelementptr inbounds nuw i8, ptr %i.atj, i64 4
  store i32 %.1.i.us.us.1.i.lcssa, ptr %i.aui, align 4, !tbaa !8
  %indvars.iv.next33.i = add nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count.i.i93
  br i1 %exitcond35.not.i, label %Exa_ManSaveSolution.exit, label %.preheader.us.i, !llvm.loop !192

Exa_ManSaveSolution.exit:                         ; preds = %Exa_ManFindFanin.exit.loopexit.us.us.1.i, %.preheader.i94.preheader, %bb.hd
  %i.auj = load i32, ptr %i.fh, align 8, !tbaa !127
  %.not43 = icmp eq i32 %i.auj, 0
  br i1 %.not43, label %bb.ho, label %bb.jw

bb.ho:                                            ; preds = %Exa_ManSaveSolution.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.auk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.arv, i32 noundef %i.arp) ; 0 uses
  %i.aul = load i32, ptr %i.ab, align 8, !tbaa !118 ; 2 uses
  %i.aum = load i32, ptr %i.w, align 8, !tbaa !115 ; 2 uses
  %.not.not55.i = icmp sgt i32 %i.aul, %i.aum
  br i1 %.not.not55.i, label %.lr.ph.i100, label %Exa_ManPrintSolution.exit

.lr.ph.i100:                                      ; preds = %bb.ho
  %nul.i39.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.auo = sext i32 %i.aul to i64
  br label %bb.hp

bb.hp:                                            ; preds = %Exa_ManObjName.exit47.1.i, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ %i.auo, %.lr.ph.i100 ], [ %indvars.iv.next.i102, %Exa_ManObjName.exit47.1.i ] ; 3 uses
  %i.aup = phi i32 [ %i.aum, %.lr.ph.i100 ], [ %i.ayx, %Exa_ManObjName.exit47.1.i ] ; 3 uses
  %indvars.iv.next.i102 = add nsw i64 %indvars.iv.i101, -1 ; 4 uses
  %i.auq = trunc nsw i64 %indvars.iv.next.i102 to i32
  %i.aur = sub nsw i32 %i.auq, %i.aup             ; 5 uses
  %i.aus = mul nsw i32 %i.aur, 3
  %i.aut = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.auu = getelementptr i8, ptr %i.aut, i64 328
  %.val37.i = load ptr, ptr %i.auu, align 8, !tbaa !87
  %5 = sext i32 %i.aus to i64
  %i.auv = getelementptr [4 x i8], ptr %.val37.i, i64 %5 ; 3 uses
  %i.auw = getelementptr i8, ptr %i.auv, i64 4
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !8
  %i.auy = icmp eq i32 %i.aux, 1
  %i.auz = zext i1 %i.auy to i32                  ; 2 uses
  %i.ava = getelementptr i8, ptr %i.auv, i64 8
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !8
  %i.avc = icmp eq i32 %i.avb, 1
  %i.avd = zext i1 %i.avc to i32                  ; 2 uses
  %i.ave = getelementptr i8, ptr %i.auv, i64 12
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !8
  %i.avg = icmp eq i32 %i.avf, 1
  %i.avh = zext i1 %i.avg to i32                  ; 2 uses
  %i.avi = load i32, ptr %i.ab, align 8, !tbaa !118 ; 2 uses
  %i.avj = trunc nsw i64 %indvars.iv.i101 to i32  ; 2 uses
  %i.avk = icmp eq i32 %i.avi, %i.avj
  %or.cond.i103 = and i1 %i.avk, %.not
  %i.avl = icmp slt i64 %indvars.iv.i101, 1       ; 2 uses
  br i1 %or.cond.i103, label %bb.hq, label %bb.hv

bb.hq:                                            ; preds = %bb.hp
  br i1 %i.avl, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  store i16 42, ptr %i.b, align 16
  br label %Exa_ManObjName.exit.i

bb.hs:                                            ; preds = %bb.hq
  %i.avm = icmp slt i32 %i.aur, 26
  br i1 %i.avm, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.avn = add i32 %i.avi, 64
  %i.avo = sub i32 %i.avn, %i.aup
  %char.i.i = trunc i32 %i.avo to i8
  store i8 %char.i.i, ptr %i.b, align 16
  store i8 0, ptr %nul.i39.i, align 1
  br label %Exa_ManObjName.exit.i

bb.hu:                                            ; preds = %bb.hs
  %i.avp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %i.aur) #21 ; 0 uses
  br label %Exa_ManObjName.exit.i

Exa_ManObjName.exit.i:                            ; preds = %bb.hu, %bb.ht, %bb.hr
  %i.avq = xor i32 %i.avh, 1
  %i.avr = xor i32 %i.avd, 1
  %i.avs = xor i32 %i.auz, 1
  %i.avt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef nonnull %i.b, i32 noundef %i.avq, i32 noundef %i.avr, i32 noundef %i.avs) ; 0 uses
  br label %bb.ia

bb.hv:                                            ; preds = %bb.hp
  br i1 %i.avl, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  store i16 42, ptr %i.b, align 16
  br label %Exa_ManObjName.exit42.i

bb.hx:                                            ; preds = %bb.hv
  %i.avu = icmp slt i32 %i.aur, 26
  br i1 %i.avu, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.avv = add i32 %i.avj, 64
  %i.avw = sub i32 %i.avv, %i.aup
  %char.i38.i = trunc i32 %i.avw to i8
  store i8 %char.i38.i, ptr %i.b, align 16
  store i8 0, ptr %nul.i39.i, align 1
  br label %Exa_ManObjName.exit42.i

bb.hz:                                            ; preds = %bb.hx
  %i.avx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %i.aur) #21 ; 0 uses
  br label %Exa_ManObjName.exit42.i

Exa_ManObjName.exit42.i:                          ; preds = %bb.hz, %bb.hy, %bb.hw
  %i.avy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef nonnull %i.b, i32 noundef %i.avh, i32 noundef %i.avd, i32 noundef %i.auz) ; 0 uses
  br label %bb.ia

bb.ia:                                            ; preds = %Exa_ManObjName.exit42.i, %Exa_ManObjName.exit.i
  %i.avz = getelementptr inbounds [256 x i8], ptr %i.aun, i64 %indvars.iv.next.i102 ; 4 uses
  %i.awa = load i32, ptr %i.ab, align 8, !tbaa !118 ; 4 uses
  %i.awb = icmp sgt i32 %i.awa, 0
  br i1 %i.awb, label %.lr.ph.i.i104, label %Exa_ManFindFanin.exit.thread.i

.lr.ph.i.i104:                                    ; preds = %bb.ia
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avz, i64 128 ; 3 uses
  %wide.trip.count.i.i105 = zext nneg i32 %i.awa to i64 ; 2 uses
  %xtraiter688 = and i64 %wide.trip.count.i.i105, 1
  %i.awd = icmp eq i32 %i.awa, 1
  br i1 %i.awd, label %.epil.preheader687, label %.lr.ph.i.i104.new

.lr.ph.i.i104.new:                                ; preds = %.lr.ph.i.i104
  %unroll_iter692 = and i64 %wide.trip.count.i.i105, 2147483646
  br label %bb.ib

bb.ib:                                            ; preds = %bb.if, %.lr.ph.i.i104.new
  %indvars.iv.i.i106 = phi i64 [ 0, %.lr.ph.i.i104.new ], [ %indvars.iv.next.i.i109.1, %bb.if ] ; 4 uses
  %.023.i.i = phi i32 [ -1, %.lr.ph.i.i104.new ], [ %.1.i.i.1, %bb.if ] ; 2 uses
  %niter693 = phi i64 [ 0, %.lr.ph.i.i104.new ], [ %niter693.next.1, %bb.if ]
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %indvars.iv.i.i106
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !8 ; 2 uses
  %.not.i.i107 = icmp eq i32 %i.awf, 0
  br i1 %.not.i.i107, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.awg = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.awh = getelementptr i8, ptr %i.awg, i64 328
  %.val.i.i108 = load ptr, ptr %i.awh, align 8, !tbaa !87
  %i.awi = sext i32 %i.awf to i64
  %i.awj = getelementptr inbounds [4 x i8], ptr %.val.i.i108, i64 %i.awi
  %i.awk = load i32, ptr %i.awj, align 4, !tbaa !8
  %.not20.i.i = icmp eq i32 %i.awk, 1
  %i.awl = trunc nuw nsw i64 %indvars.iv.i.i106 to i32
  %spec.select19.i.i = select i1 %.not20.i.i, i32 %i.awl, i32 %.023.i.i
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.1.i.i = phi i32 [ %.023.i.i, %bb.ib ], [ %spec.select19.i.i, %bb.ic ] ; 2 uses
  %indvars.iv.next.i.i109 = or disjoint i64 %indvars.iv.i.i106, 1 ; 2 uses
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %indvars.iv.next.i.i109
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !8 ; 2 uses
  %.not.i.i107.1 = icmp eq i32 %i.awn, 0
  br i1 %.not.i.i107.1, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.awo = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.awp = getelementptr i8, ptr %i.awo, i64 328
  %.val.i.i108.1 = load ptr, ptr %i.awp, align 8, !tbaa !87
  %i.awq = sext i32 %i.awn to i64
  %i.awr = getelementptr inbounds [4 x i8], ptr %.val.i.i108.1, i64 %i.awq
  %i.aws = load i32, ptr %i.awr, align 4, !tbaa !8
  %.not20.i.i.1 = icmp eq i32 %i.aws, 1
  %i.awt = trunc nuw nsw i64 %indvars.iv.next.i.i109 to i32
  %spec.select19.i.i.1 = select i1 %.not20.i.i.1, i32 %i.awt, i32 %.1.i.i
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.1.i.i.1 = phi i32 [ %.1.i.i, %bb.id ], [ %spec.select19.i.i.1, %bb.ie ] ; 3 uses
  %indvars.iv.next.i.i109.1 = add nuw nsw i64 %indvars.iv.i.i106, 2 ; 2 uses
  %niter693.next.1 = add i64 %niter693, 2         ; 2 uses
  %niter693.ncmp.1 = icmp eq i64 %niter693.next.1, %unroll_iter692
  br i1 %niter693.ncmp.1, label %Exa_ManFindFanin.exit.i.unr-lcssa, label %bb.ib, !llvm.loop !156

Exa_ManFindFanin.exit.i.unr-lcssa:                ; preds = %bb.if
  %lcmp.mod689.not = icmp eq i64 %xtraiter688, 0
  br i1 %lcmp.mod689.not, label %Exa_ManFindFanin.exit.i, label %.epil.preheader687

.epil.preheader687:                               ; preds = %Exa_ManFindFanin.exit.i.unr-lcssa, %.lr.ph.i.i104
  %indvars.iv.i.i106.epil.init = phi i64 [ 0, %.lr.ph.i.i104 ], [ %indvars.iv.next.i.i109.1, %Exa_ManFindFanin.exit.i.unr-lcssa ] ; 2 uses
  %.023.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i104 ], [ %.1.i.i.1, %Exa_ManFindFanin.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod691 = trunc i32 %i.awa to i1
  call void @llvm.assume(i1 %lcmp.mod691)
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %indvars.iv.i.i106.epil.init
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !8 ; 2 uses
  %.not.i.i107.epil = icmp eq i32 %i.awv, 0
  br i1 %.not.i.i107.epil, label %Exa_ManFindFanin.exit.i, label %bb.ig

bb.ig:                                            ; preds = %.epil.preheader687
  %i.aww = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.awx = getelementptr i8, ptr %i.aww, i64 328
  %.val.i.i108.epil = load ptr, ptr %i.awx, align 8, !tbaa !87
  %i.awy = sext i32 %i.awv to i64
  %i.awz = getelementptr inbounds [4 x i8], ptr %.val.i.i108.epil, i64 %i.awy
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !8
  %.not20.i.i.epil = icmp eq i32 %i.axa, 1
  %i.axb = trunc nuw nsw i64 %indvars.iv.i.i106.epil.init to i32
  %spec.select19.i.i.epil = select i1 %.not20.i.i.epil, i32 %i.axb, i32 %.023.i.i.epil.init
  br label %Exa_ManFindFanin.exit.i

Exa_ManFindFanin.exit.i:                          ; preds = %.epil.preheader687, %bb.ig, %Exa_ManFindFanin.exit.i.unr-lcssa
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %Exa_ManFindFanin.exit.i.unr-lcssa ], [ %.023.i.i.epil.init, %.epil.preheader687 ], [ %spec.select19.i.i.epil, %bb.ig ] ; 5 uses
  %i.axc = icmp slt i32 %.1.i.i.lcssa, 0
  br i1 %i.axc, label %Exa_ManFindFanin.exit.thread.i, label %bb.ih

Exa_ManFindFanin.exit.thread.i:                   ; preds = %Exa_ManFindFanin.exit.i, %bb.ia
  store i16 42, ptr %i.b, align 16
  br label %Exa_ManObjName.exit47.i

bb.ih:                                            ; preds = %Exa_ManFindFanin.exit.i
  %i.axd = load i32, ptr %i.w, align 8, !tbaa !115 ; 3 uses
  %i.axe = icmp slt i32 %.1.i.i.lcssa, %i.axd
  br i1 %i.axe, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.axf = trunc i32 %.1.i.i.lcssa to i8
  %char16.i45.i = add i8 %i.axf, 97
  store i8 %char16.i45.i, ptr %i.b, align 16
  store i8 0, ptr %nul.i39.i, align 1
  br label %Exa_ManObjName.exit47.i

bb.ij:                                            ; preds = %bb.ih
  %i.axg = sub nsw i32 %.1.i.i.lcssa, %i.axd      ; 2 uses
  %i.axh = icmp slt i32 %i.axg, 26
  br i1 %i.axh, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.axi = add nuw nsw i32 %.1.i.i.lcssa, 65
  %i.axj = sub i32 %i.axi, %i.axd
  %char.i43.i = trunc i32 %i.axj to i8
  store i8 %char.i43.i, ptr %i.b, align 16
  store i8 0, ptr %nul.i39.i, align 1
end_hunk_0
begin_hunk_1_@Exa_ManExactSynthesis2:bb.a
  %spec.select19.i.1.i126.1 = select i1 %.not20.i.1.i125.1, i32 %i.bbo, i32 %.1.i.1.i127
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %.1.i.1.i127.1 = phi i32 [ %.1.i.1.i127, %bb.jn ], [ %spec.select19.i.1.i126.1, %bb.jo ] ; 3 uses
  %indvars.iv.next.i.1.i128.1 = add nuw nsw i64 %indvars.iv.i.1.i121, 2 ; 2 uses
  %niter714.next.1 = add i64 %niter714, 2         ; 2 uses
  %niter714.ncmp.1 = icmp eq i64 %niter714.next.1, %unroll_iter713
  br i1 %niter714.ncmp.1, label %Exa_ManFindFanin.exit.1.i130.unr-lcssa, label %bb.jl, !llvm.loop !156

Exa_ManFindFanin.exit.1.i130.unr-lcssa:           ; preds = %bb.jp
  %lcmp.mod710.not = icmp eq i64 %xtraiter709, 0
  br i1 %lcmp.mod710.not, label %Exa_ManFindFanin.exit.1.i130, label %.epil.preheader708

.epil.preheader708:                               ; preds = %Exa_ManFindFanin.exit.1.i130.unr-lcssa, %.lr.ph.i.1.i119
  %indvars.iv.i.1.i121.epil.init = phi i64 [ 0, %.lr.ph.i.1.i119 ], [ %indvars.iv.next.i.1.i128.1, %Exa_ManFindFanin.exit.1.i130.unr-lcssa ] ; 2 uses
  %.023.i.1.i122.epil.init = phi i32 [ -1, %.lr.ph.i.1.i119 ], [ %.1.i.1.i127.1, %Exa_ManFindFanin.exit.1.i130.unr-lcssa ] ; 2 uses
  %lcmp.mod712 = trunc i32 %i.baw to i1
  call void @llvm.assume(i1 %lcmp.mod712)
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %indvars.iv.i.1.i121.epil.init
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !8 ; 2 uses
  %.not.i.1.i123.epil = icmp eq i32 %i.bbq, 0
  br i1 %.not.i.1.i123.epil, label %Exa_ManFindFanin.exit.1.i130, label %bb.jq

bb.jq:                                            ; preds = %.epil.preheader708
  %i.bbr = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.bbs = getelementptr i8, ptr %i.bbr, i64 328
  %.val.i.1.i124.epil = load ptr, ptr %i.bbs, align 8, !tbaa !87
  %i.bbt = sext i32 %i.bbq to i64
  %i.bbu = getelementptr inbounds [4 x i8], ptr %.val.i.1.i124.epil, i64 %i.bbt
  %i.bbv = load i32, ptr %i.bbu, align 4, !tbaa !8
  %.not20.i.1.i125.epil = icmp eq i32 %i.bbv, 1
  %i.bbw = trunc nuw nsw i64 %indvars.iv.i.1.i121.epil.init to i32
  %spec.select19.i.1.i126.epil = select i1 %.not20.i.1.i125.epil, i32 %i.bbw, i32 %.023.i.1.i122.epil.init
  br label %Exa_ManFindFanin.exit.1.i130

Exa_ManFindFanin.exit.1.i130:                     ; preds = %.epil.preheader708, %bb.jq, %Exa_ManFindFanin.exit.1.i130.unr-lcssa
  %.1.i.1.i127.lcssa = phi i32 [ %.1.i.1.i127.1, %Exa_ManFindFanin.exit.1.i130.unr-lcssa ], [ %.023.i.1.i122.epil.init, %.epil.preheader708 ], [ %spec.select19.i.1.i126.epil, %bb.jq ] ; 5 uses
  %i.bbx = icmp slt i32 %.1.i.1.i127.lcssa, 0
  br i1 %i.bbx, label %Exa_ManFindFanin.exit.thread.1.i117, label %bb.jr

bb.jr:                                            ; preds = %Exa_ManFindFanin.exit.1.i130
  %i.bby = load i32, ptr %i.w, align 8, !tbaa !115 ; 3 uses
  %i.bbz = icmp slt i32 %.1.i.1.i127.lcssa, %i.bby
  br i1 %i.bbz, label %bb.jv, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bca = sub nsw i32 %.1.i.1.i127.lcssa, %i.bby ; 2 uses
  %i.bcb = icmp slt i32 %i.bca, 26
  br i1 %i.bcb, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bcc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %i.bca) #21 ; 0 uses
  br label %Exa_ManObjName.exit.1.i

bb.ju:                                            ; preds = %bb.js
  %i.bcd = add nuw nsw i32 %.1.i.1.i127.lcssa, 65
  %i.bce = sub i32 %i.bcd, %i.bby
  %char.i.1.i = trunc i32 %i.bce to i8
  store i8 %char.i.1.i, ptr %i.a, align 16
  store i8 0, ptr %nul.i.i, align 1
  br label %Exa_ManObjName.exit.1.i

bb.jv:                                            ; preds = %bb.jr
  %i.bcf = trunc i32 %.1.i.1.i127.lcssa to i8
  %char16.i.1.i = add i8 %i.bcf, 97
  store i8 %char16.i.1.i, ptr %i.a, align 16
  store i8 0, ptr %nul.i.i, align 1
  br label %Exa_ManObjName.exit.1.i

Exa_ManFindFanin.exit.thread.1.i117:              ; preds = %Exa_ManFindFanin.exit.1.i130, %Exa_ManObjName.exit.i116
  store i16 42, ptr %i.a, align 16
  br label %Exa_ManObjName.exit.1.i

Exa_ManObjName.exit.1.i:                          ; preds = %Exa_ManFindFanin.exit.thread.1.i117, %bb.jv, %bb.ju, %bb.jt
  %i.bcg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull %i.a) ; 0 uses
  %indvars.iv.next.i118 = add nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %i.bch = load i32, ptr %i.ab, align 8, !tbaa !118 ; 2 uses
  %i.bci = sext i32 %i.bch to i64
  %i.bcj = icmp slt i64 %indvars.iv.next.i118, %i.bci
  br i1 %i.bcj, label %bb.ix, label %Exa_ManPrintPerm.exit, !llvm.loop !194

Exa_ManPrintPerm.exit:                            ; preds = %Exa_ManObjName.exit.1.i, %Exa_ManPrintSolution.exit
  %puts.i112 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.jw

bb.jw:                                            ; preds = %Exa_ManSaveSolution.exit, %Exa_ManPrintPerm.exit, %Exa_ManAddCnf.exit.thread
  %.034 = phi i32 [ 0, %Exa_ManAddCnf.exit.thread ], [ 1, %Exa_ManPrintPerm.exit ], [ 1, %Exa_ManSaveSolution.exit ] ; 2 uses
  call fastcc void @Exa_ManFree(ptr noundef nonnull %i.u)
  %i.bck = load i32, ptr %i.fh, align 8, !tbaa !127
  %.not44 = icmp eq i32 %i.bck, 0
  br i1 %.not44, label %bb.jx, label %bb.jz

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.bcl = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #21
  %i.bcm = icmp slt i32 %i.bcl, 0
  br i1 %i.bcm, label %Abc_Clock.exit146, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bcn = load i64, ptr %1, align 8, !tbaa !9
  %i.bco = mul nsw i64 %i.bcn, 1000000
  %i.bcp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bcq = load i64, ptr %i.bcp, align 8, !tbaa !12
  %i.bcr = sdiv i64 %i.bcq, 1000
  %i.bcs = add nsw i64 %i.bcr, %i.bco
  br label %Abc_Clock.exit146

Abc_Clock.exit146:                                ; preds = %bb.jx, %bb.jy
  %.0.i145 = phi i64 [ %i.bcs, %bb.jy ], [ -1, %bb.jx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.bct = add i64 %.0.i145, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.7)
  %i.bcu = sitofp i64 %i.bct to double
  %i.bcv = fdiv double %i.bcu, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.24, double noundef %i.bcv)
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jw, %Abc_Clock.exit146, %.loopexit197
  %.036 = phi i32 [ 0, %.loopexit197 ], [ %.034, %Abc_Clock.exit146 ], [ %.034, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  ret i32 %.036
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtReadHex(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !140     ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !140
  %i.e = icmp eq i8 %i.d, 120
  %spec.select.idx = select i1 %i.e, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 2 uses
  %.pre = load i8, ptr %spec.select, align 1, !tbaa !140
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i8 [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.038 = phi ptr [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.g = add i8 %i.f, -58
  %or.cond.i50 = icmp ult i8 %i.g, -10
  %i.h = and i8 %i.f, -33
  %i.i = add i8 %i.h, -71
  %i.j = icmp ult i8 %i.i, -6
  %narrow.i.not51 = and i1 %or.cond.i50, %i.j
  br i1 %narrow.i.not51, label %.thread83, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.038, i64 %indvars.iv.next
  %i.l = load i8, ptr %i.k, align 1, !tbaa !140   ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond.i = icmp ult i8 %i.m, -10
  %i.n = and i8 %i.l, -33
  %i.o = add i8 %i.n, -71
  %i.p = icmp ult i8 %i.o, -6
  %narrow.i.not = and i1 %or.cond.i, %i.p
  br i1 %narrow.i.not, label %._crit_edge, label %.lr.ph, !llvm.loop !195

._crit_edge:                                      ; preds = %.lr.ph
  %indvars = trunc i64 %indvars.iv.next to i32    ; 3 uses
  switch i32 %indvars, label %.lr.ph.preheader.i [
    i32 1, label %bb.d
    i32 0, label %.thread83
  ]

bb.d:                                             ; preds = %._crit_edge
  %switch.tableidx = add i8 %i.f, -48             ; 3 uses
  %i.q = icmp ult i8 %switch.tableidx, 23
  br i1 %i.q, label %switch.hole_check, label %.lr.ph57.preheader

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.r = add i32 %indvars, -1                     ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.s, i1 false) ; 2 uses
  %i.u = sub nuw nsw i32 35, %i.t
  %i.v = icmp ult i32 %i.r, 16
  %i.w = sub nsw i32 29, %i.t
  %i.x = shl nuw nsw i32 1, %i.w
  %spec.select48 = select i1 %i.v, i32 1, i32 %i.x
  %i.y = zext nneg i32 %spec.select48 to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  br label %.lr.ph57.preheader

.thread83:                                        ; preds = %._crit_edge, %bb.c
  store i64 0, ptr %0, align 8
  br label %.sink.split

.lr.ph57.preheader:                               ; preds = %switch.hole_check, %bb.d, %.lr.ph.preheader.i
  %.0.lcssa74 = phi i32 [ %indvars, %.lr.ph.preheader.i ], [ 1, %bb.d ], [ 1, %switch.hole_check ] ; 2 uses
  %.fr = phi i32 [ %i.u, %.lr.ph.preheader.i ], [ 2, %bb.d ], [ 2, %switch.hole_check ] ; 4 uses
  %i.aa = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ 8, %bb.d ], [ 8, %switch.hole_check ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 0, i64 %i.aa, i1 false), !tbaa !57
  %2 = sext i32 %.0.lcssa74 to i64
  %wide.trip.count = zext i32 %.0.lcssa74 to i64
  %3 = getelementptr i8, ptr %.038, i64 %2
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %Abc_TtReadHexDigit.exit
  %indvars.iv66 = phi i64 [ 0, %.lr.ph57.preheader ], [ %indvars.iv.next67, %Abc_TtReadHexDigit.exit ] ; 4 uses
  %4 = xor i64 %indvars.iv66, -1
  %i.ab = getelementptr i8, ptr %3, i64 %4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !140 ; 4 uses
  %i.ad = sext i8 %i.ac to i64                    ; 3 uses
  %i.ae = add i8 %i.ac, -48
  %or.cond.i43 = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i43, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph57
  %i.af = add nsw i64 %i.ad, -48
  br label %Abc_TtReadHexDigit.exit

bb.f:                                             ; preds = %.lr.ph57
  %i.ag = add i8 %i.ac, -65
  %or.cond5.i = icmp ult i8 %i.ag, 6
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i64 %i.ad, -55
  br label %Abc_TtReadHexDigit.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = add i8 %i.ac, -97
  %or.cond8.i = icmp ult i8 %i.ai, 6
  %i.aj = add nsw i64 %i.ad, -87
  %spec.select.i = select i1 %or.cond8.i, i64 %i.aj, i64 -1
  br label %Abc_TtReadHexDigit.exit

Abc_TtReadHexDigit.exit:                          ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.af, %bb.e ], [ %i.ah, %bb.g ], [ %spec.select.i, %bb.h ]
  %i.ak = shl i64 %indvars.iv66, 2
  %i.al = and i64 %i.ak, 60
  %i.am = shl i64 %.0.i, %i.al
  %i.an = lshr i64 %indvars.iv66, 4
  %i.ao = and i64 %i.an, 268435455
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !57
  %i.ar = or i64 %i.aq, %i.am
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !57
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !196

._crit_edge58:                                    ; preds = %Abc_TtReadHexDigit.exit
  %i.as = icmp samesign ult i32 %.fr, 6
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge58
  %i.at = load i64, ptr %0, align 8, !tbaa !57    ; 4 uses
  %i.au = icmp samesign ult i32 %.fr, 3
  %i.av = and i64 %i.at, 15
  %i.aw = mul nuw nsw i64 %i.av, 17
  %spec.select86 = select i1 %i.au, i64 %i.aw, i64 %i.at
  %i.ax = icmp samesign ult i32 %.fr, 4
  %i.ay = and i64 %spec.select86, 255
  %i.az = mul nuw nsw i64 %i.ay, 257
  %i.ba = select i1 %i.ax, i64 %i.az, i64 %i.at
  %.not72 = icmp eq i32 %.fr, 5
  %i.bb = and i64 %i.ba, 65535
  %i.bc = mul nuw nsw i64 %i.bb, 65537
  %spec.select87 = select i1 %.not72, i64 %i.at, i64 %i.bc
  %i.bd = and i64 %spec.select87, 4294967295
  %i.be = mul nuw i64 %i.bd, 4294967297
  br label %.sink.split

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph57.preheader

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bf = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Abc_TtReadHex, i64 %i.bf
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.thread83, %bb.i, %switch.lookup
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 0, %.thread83 ], [ %i.be, %bb.i ]
  store i64 %.sink, ptr %0, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %._crit_edge58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Exa_ManFree(ptr noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  tail call void @sat_solver_delete(ptr noundef %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.f) #21
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121  ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !30 ; 3 uses
  br i1 %i.j, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %Vec_WrdFree.exit, %bb.d
  %i.l = phi i32 [ %i.t, %bb.d ], [ %i.i, %Vec_WrdFree.exit ]
  %i.m = phi ptr [ %i.u, %bb.d ], [ %.pre.i.i, %Vec_WrdFree.exit ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ 0, %Vec_WrdFree.exit ] ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 2 uses
  %.not15.i.i = icmp eq ptr %i.p, null
  br i1 %.not15.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.p) #21
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !43
  %.pre18.i.i = load i32, ptr %i.h, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.t = phi i32 [ %.pre18.i.i, %bb.c ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.u = phi ptr [ %i.q, %bb.c ], [ %i.m, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.v = sext i32 %i.t to i64
  %i.w = icmp slt i64 %indvars.iv.next.i.i, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %Vec_WecFree.exit, !llvm.loop !107

._crit_edge.i.i:                                  ; preds = %Vec_WrdFree.exit
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %Vec_WecFree.exit.thread, label %Vec_WecFree.exit

Vec_WecFree.exit.thread:                          ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %i.h) #21
  br label %bb.e

Vec_WecFree.exit:                                 ; preds = %bb.d, %._crit_edge.i.i
  %i.x = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.u, %bb.d ]
  tail call void @free(ptr noundef nonnull %i.x) #21
  tail call void @free(ptr noundef nonnull %i.h) #21
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Vec_WecFree.exit.thread, %Vec_WecFree.exit
  tail call void @free(ptr noundef nonnull %0) #21
  br label %bb.f

bb.f:                                             ; preds = %Vec_WecFree.exit, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @Exa3_ManExactSynthesis2(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [132 x i8], align 16              ; 5 uses
  %i.c = alloca [160 x i8], align 16              ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [132 x i8], align 16              ; 5 uses
  %i.f = alloca [160 x i8], align 16              ; 4 uses
  %i.g = alloca [1000 x i8], align 16             ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.h = alloca [6 x ptr], align 16               ; 7 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.i = alloca [3 x i32], align 4                ; 15 uses
  %i.j = alloca [8 x i32], align 16               ; 16 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.k = alloca [32 x i32], align 16              ; 20 uses
  %i.l = alloca [2 x i32], align 4                ; 8 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.m = alloca i32, align 4                      ; 10 uses
  %i.n = alloca [64 x i64], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #21
  store i32 1, ptr %i.m, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.o = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #21
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %6, align 8, !tbaa !9
  %.neg226 = mul i64 %i.q, -1000000
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !12
  %.neg225 = sdiv i64 %i.s, -1000
  %.neg227 = add i64 %.neg225, %.neg226
  br label %Abc_Clock.exit

end_hunk_1
