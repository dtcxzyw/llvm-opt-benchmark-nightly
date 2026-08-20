inline.NumInlined: 83
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@encode_frame:bb.a

.preheader.us.us.us.preheader.i.i.i:              ; preds = %.preheader42.us.us.i.i.i
  %.pre66.pre.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !135 ; 2 uses
  br label %.preheader.us.us.us.i.i.i

._crit_edge46.split.us.us.i.i.i:                  ; preds = %._crit_edge.split.us.us.us.us.i.i.i, %.preheader42.us.us.i.i.i
  %.8.i.i = phi i32 [ %.7.i.i, %.preheader42.us.us.i.i.i ], [ %.11.i.i, %._crit_edge.split.us.us.us.us.i.i.i ] ; 2 uses
  %i.arh = icmp slt i32 %i.arf, %i.aim
  %indvars.iv.next62.i.i.i = add i32 %indvars.iv61.i.i.i, 4
  br i1 %i.arh, label %.preheader42.us.us.i.i.i, label %encode_sigpass.exit.i.i, !llvm.loop !172

.preheader.us.us.us.i.i.i:                        ; preds = %._crit_edge.split.us.us.us.us.i.i.i, %.preheader.us.us.us.preheader.i.i.i
  %i.ari = phi i32 [ %.pre66.pre.i.i.i, %.preheader.us.us.us.preheader.i.i.i ], [ %i.atd, %._crit_edge.split.us.us.us.us.i.i.i ]
  %.9.i.i = phi i32 [ %.7.i.i, %.preheader.us.us.us.preheader.i.i.i ], [ %.11.i.i, %._crit_edge.split.us.us.us.us.i.i.i ]
  %.pre66.i.i.i = phi i32 [ %.pre66.pre.i.i.i, %.preheader.us.us.us.preheader.i.i.i ], [ %.pre6670.i.i.i, %._crit_edge.split.us.us.us.us.i.i.i ] ; 2 uses
  %.03944.us.us.us.i.i.i = phi i32 [ 0, %.preheader.us.us.us.preheader.i.i.i ], [ %i.atf, %._crit_edge.split.us.us.us.us.i.i.i ] ; 5 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.preheader.us.us.us.i.i.i
  %i.arj = phi i32 [ %i.ari, %.preheader.us.us.us.i.i.i ], [ %i.atd, %bb.bh ] ; 2 uses
  %.10.i.i = phi i32 [ %.9.i.i, %.preheader.us.us.us.i.i.i ], [ %.11.i.i, %bb.bh ] ; 2 uses
  %.pre6671.i.i.i = phi i32 [ %.pre66.i.i.i, %.preheader.us.us.us.i.i.i ], [ %.pre6670.i.i.i, %bb.bh ]
  %i.ark = phi i32 [ %.pre66.i.i.i, %.preheader.us.us.us.i.i.i ], [ %i.ate, %bb.bh ] ; 3 uses
  %.03843.us.us.us.us.i.i.i = phi i32 [ %.049.us.us.i.i.i, %.preheader.us.us.us.i.i.i ], [ %i.arl, %bb.bh ] ; 3 uses
  %i.arl = add nuw nsw i32 %.03843.us.us.us.us.i.i.i, 1 ; 4 uses
  %i.arm = mul nsw i32 %i.arl, %i.ark
  %i.arn = add nsw i32 %i.arm, %.03944.us.us.us.i.i.i
  %i.aro = sext i32 %i.arn to i64
  %i.arp = getelementptr [2 x i8], ptr %i.adj, i64 %i.aro
  %i.arq = getelementptr i8, ptr %i.arp, i64 2
  %i.arr = load i16, ptr %i.arq, align 2, !tbaa !64
  %i.ars = zext i16 %i.arr to i32                 ; 3 uses
  %i.art = and i32 %i.ars, 12288
  %i.aru = icmp eq i32 %i.art, 8192
  br i1 %i.aru, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.arv = lshr i32 %i.ars, 14
  %i.arw = and i32 %i.arv, 1
  %i.arx = zext nneg i32 %i.arw to i64
  %i.ary = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.arx
  %i.arz = and i32 %i.ars, 255
  %i.asa = icmp ne i32 %i.arz, 0
  %i.asb = zext i1 %i.asa to i64
  %i.asc = getelementptr inbounds nuw i8, ptr %i.ary, i64 %i.asb
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !60
  %i.ase = mul nsw i32 %.03843.us.us.us.us.i.i.i, %i.ark
  %i.asf = add nsw i32 %i.ase, %.03944.us.us.us.i.i.i
  %i.asg = sext i32 %i.asf to i64
  %i.ash = getelementptr inbounds [4 x i8], ptr %4, i64 %i.asg
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !39
  %i.asj = and i32 %i.asi, 127
  %i.ask = zext nneg i32 %i.asj to i64
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_ref0, i64 %i.ask
  %.0.i.us.us.us.us.i.i.i = load i32, ptr %i.asl, align 4, !tbaa !39
  %i.asm = add nsw i32 %.0.i.us.us.us.us.i.i.i, %.10.i.i
  %i.asn = zext i8 %i.asd to i64
  %i.aso = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.asn
  %i.asp = mul nsw i32 %.03843.us.us.us.us.i.i.i, %i.arj
  %i.asq = add nsw i32 %i.asp, %.03944.us.us.us.i.i.i
  %i.asr = sext i32 %i.asq to i64
  %i.ass = getelementptr inbounds [4 x i8], ptr %4, i64 %i.asr
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !39
  %i.asu = lshr i32 %i.ast, 6
  %.lobit.i.i.i = and i32 %i.asu, 1
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.aso, i32 noundef %.lobit.i.i.i) #11
  %i.asv = load i32, ptr %i.adi, align 8, !tbaa !135 ; 4 uses
  %i.asw = mul nsw i32 %i.asv, %i.arl
  %i.asx = add nsw i32 %i.asw, %.03944.us.us.us.i.i.i
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr [2 x i8], ptr %i.adj, i64 %i.asy
  %i.ata = getelementptr i8, ptr %i.asz, i64 2    ; 2 uses
  %i.atb = load i16, ptr %i.ata, align 2, !tbaa !64
  %i.atc = or i16 %i.atb, 16384
  store i16 %i.atc, ptr %i.ata, align 2, !tbaa !64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.atd = phi i32 [ %i.asv, %bb.bg ], [ %i.arj, %bb.bf ] ; 2 uses
  %.11.i.i = phi i32 [ %i.asm, %bb.bg ], [ %.10.i.i, %bb.bf ] ; 3 uses
  %.pre6670.i.i.i = phi i32 [ %i.asv, %bb.bg ], [ %.pre6671.i.i.i, %bb.bf ] ; 2 uses
  %i.ate = phi i32 [ %i.asv, %bb.bg ], [ %i.ark, %bb.bf ]
  %exitcond64.not.i.i.i = icmp eq i32 %i.arl, %smin63.i.i.i
  br i1 %exitcond64.not.i.i.i, label %._crit_edge.split.us.us.us.us.i.i.i, label %bb.bf, !llvm.loop !173

._crit_edge.split.us.us.us.us.i.i.i:              ; preds = %bb.bh
  %i.atf = add nuw nsw i32 %.03944.us.us.us.i.i.i, 1 ; 2 uses
  %exitcond65.not.i.i.i = icmp eq i32 %i.atf, %i.amk
  br i1 %exitcond65.not.i.i.i, label %._crit_edge46.split.us.us.i.i.i, label %.preheader.us.us.us.i.i.i, !llvm.loop !174

.preheader42.us.i.i.i:                            ; preds = %.preheader42.lr.ph.split.us.i.i.i, %._crit_edge46.split.us.i.i.i
  %.12.i.i = phi i32 [ %.16.i.i, %._crit_edge46.split.us.i.i.i ], [ 0, %.preheader42.lr.ph.split.us.i.i.i ] ; 2 uses
  %indvars.iv.i105.i.i = phi i32 [ %indvars.iv.next.i108.i.i, %._crit_edge46.split.us.i.i.i ], [ 4, %.preheader42.lr.ph.split.us.i.i.i ] ; 2 uses
  %.049.us.i.i.i = phi i32 [ %i.atg, %._crit_edge46.split.us.i.i.i ], [ 0, %.preheader42.lr.ph.split.us.i.i.i ] ; 3 uses
  %smin.i106.i.i = call i32 @llvm.smin.i32(i32 %i.aim, i32 %indvars.iv.i105.i.i)
  %i.atg = add i32 %.049.us.i.i.i, 4              ; 3 uses
  %invariant.smin.us.i107.i.i = call i32 @llvm.smin.i32(i32 %i.aim, i32 %i.atg)
  %i.ath = icmp slt i32 %.049.us.i.i.i, %invariant.smin.us.i107.i.i
  br i1 %i.ath, label %.preheader.us52.preheader.i.i.i, label %._crit_edge46.split.us.i.i.i

.preheader.us52.preheader.i.i.i:                  ; preds = %.preheader42.us.i.i.i
  %.pre.pre.i109.i.i = load i32, ptr %i.adi, align 8, !tbaa !135 ; 2 uses
  br label %.preheader.us52.i.i.i

bb.bi:                                            ; preds = %.preheader.us52.i.i.i, %bb.bk
  %i.ati = phi i32 [ %i.avg, %.preheader.us52.i.i.i ], [ %i.ave, %bb.bk ] ; 2 uses
  %.13.i.i = phi i32 [ %.15.i.i, %.preheader.us52.i.i.i ], [ %.14.i.i, %bb.bk ] ; 2 uses
  %.pre68.i.i.i = phi i32 [ %.pre.i110.i.i, %.preheader.us52.i.i.i ], [ %.pre67.i.i.i, %bb.bk ]
  %i.atj = phi i32 [ %.pre.i110.i.i, %.preheader.us52.i.i.i ], [ %i.avf, %bb.bk ] ; 3 uses
  %.03843.us.i.i.i = phi i32 [ %.049.us.i.i.i, %.preheader.us52.i.i.i ], [ %i.atk, %bb.bk ] ; 3 uses
  %i.atk = add nuw nsw i32 %.03843.us.i.i.i, 1    ; 4 uses
  %i.atl = mul nsw i32 %i.atk, %i.atj
  %i.atm = add nsw i32 %i.atl, %.03944.us53.i.i.i
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr [2 x i8], ptr %i.adj, i64 %i.atn
  %i.atp = getelementptr i8, ptr %i.ato, i64 2
  %i.atq = load i16, ptr %i.atp, align 2, !tbaa !64
  %i.atr = zext i16 %i.atq to i32                 ; 3 uses
  %i.ats = and i32 %i.atr, 12288
  %i.att = icmp eq i32 %i.ats, 8192
  br i1 %i.att, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.atu = lshr i32 %i.atr, 14
  %i.atv = and i32 %i.atu, 1
  %i.atw = zext nneg i32 %i.atv to i64
  %i.atx = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.atw
  %i.aty = and i32 %i.atr, 255
  %i.atz = icmp ne i32 %i.aty, 0
  %i.aua = zext i1 %i.atz to i64
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.aua
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !60
  %i.aud = mul nsw i32 %.03843.us.i.i.i, %i.atj
  %i.aue = add nsw i32 %i.aud, %.03944.us53.i.i.i
  %i.auf = sext i32 %i.aue to i64
  %i.aug = getelementptr inbounds [4 x i8], ptr %4, i64 %i.auf
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !39
  %i.aui = ashr i32 %i.auh, %.09320.i.i
  %i.auj = and i32 %i.aui, 127
  %i.auk = zext nneg i32 %i.auj to i64
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_ref, i64 %i.auk
  %.0.i.us.i112.i.i = load i32, ptr %i.aul, align 4, !tbaa !39
  %i.aum = add nsw i32 %.0.i.us.i112.i.i, %.13.i.i
  %i.aun = zext i8 %i.auc to i64
  %i.auo = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.aun
  %i.aup = mul nsw i32 %.03843.us.i.i.i, %i.ati
  %i.auq = add nsw i32 %i.aup, %.03944.us53.i.i.i
  %i.aur = sext i32 %i.auq to i64
  %i.aus = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aur
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !39
  %i.auu = and i32 %i.aut, %i.aoa
  %.not.us.i113.i.i = icmp ne i32 %i.auu, 0
  %i.auv = zext i1 %.not.us.i113.i.i to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.auo, i32 noundef %i.auv) #11
  %i.auw = load i32, ptr %i.adi, align 8, !tbaa !135 ; 4 uses
  %i.aux = mul nsw i32 %i.auw, %i.atk
  %i.auy = add nsw i32 %i.aux, %.03944.us53.i.i.i
  %i.auz = sext i32 %i.auy to i64
  %i.ava = getelementptr [2 x i8], ptr %i.adj, i64 %i.auz
  %i.avb = getelementptr i8, ptr %i.ava, i64 2    ; 2 uses
  %i.avc = load i16, ptr %i.avb, align 2, !tbaa !64
  %i.avd = or i16 %i.avc, 16384
  store i16 %i.avd, ptr %i.avb, align 2, !tbaa !64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ave = phi i32 [ %i.auw, %bb.bj ], [ %i.ati, %bb.bi ] ; 2 uses
  %.14.i.i = phi i32 [ %i.aum, %bb.bj ], [ %.13.i.i, %bb.bi ] ; 3 uses
  %.pre67.i.i.i = phi i32 [ %i.auw, %bb.bj ], [ %.pre68.i.i.i, %bb.bi ] ; 2 uses
  %i.avf = phi i32 [ %i.auw, %bb.bj ], [ %i.atj, %bb.bi ]
  %exitcond.not.i111.i.i = icmp eq i32 %i.atk, %smin.i106.i.i
  br i1 %exitcond.not.i111.i.i, label %._crit_edge.split.us.i.i.i, label %bb.bi, !llvm.loop !173

.preheader.us52.i.i.i:                            ; preds = %._crit_edge.split.us.i.i.i, %.preheader.us52.preheader.i.i.i
  %i.avg = phi i32 [ %.pre.pre.i109.i.i, %.preheader.us52.preheader.i.i.i ], [ %i.ave, %._crit_edge.split.us.i.i.i ]
  %.15.i.i = phi i32 [ %.12.i.i, %.preheader.us52.preheader.i.i.i ], [ %.14.i.i, %._crit_edge.split.us.i.i.i ]
  %.pre.i110.i.i = phi i32 [ %.pre.pre.i109.i.i, %.preheader.us52.preheader.i.i.i ], [ %.pre67.i.i.i, %._crit_edge.split.us.i.i.i ] ; 2 uses
  %.03944.us53.i.i.i = phi i32 [ 0, %.preheader.us52.preheader.i.i.i ], [ %i.avh, %._crit_edge.split.us.i.i.i ] ; 5 uses
  br label %bb.bi

._crit_edge.split.us.i.i.i:                       ; preds = %bb.bk
  %i.avh = add nuw nsw i32 %.03944.us53.i.i.i, 1  ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i32 %i.avh, %i.amk
  br i1 %exitcond60.not.i.i.i, label %._crit_edge46.split.us.i.i.i, label %.preheader.us52.i.i.i, !llvm.loop !174

._crit_edge46.split.us.i.i.i:                     ; preds = %._crit_edge.split.us.i.i.i, %.preheader42.us.i.i.i
  %.16.i.i = phi i32 [ %.12.i.i, %.preheader42.us.i.i.i ], [ %.14.i.i, %._crit_edge.split.us.i.i.i ] ; 2 uses
  %i.avi = icmp slt i32 %i.atg, %i.aim
  %indvars.iv.next.i108.i.i = add i32 %indvars.iv.i105.i.i, 4
  br i1 %i.avi, label %.preheader42.us.i.i.i, label %encode_sigpass.exit.i.i, !llvm.loop !172

bb.bl:                                            ; preds = %bb.ax
  br i1 %i.aio, label %.preheader177.lr.ph.i.i.i, label %encode_sigpass.exit.i.i

.preheader177.lr.ph.i.i.i:                        ; preds = %bb.bl
  %.not174.i.i.i = icmp eq i32 %.09320.i.i, 0     ; 2 uses
  br i1 %i.amp, label %.preheader177.us.i.i.i, label %encode_sigpass.exit.i.i

.preheader177.us.i.i.i:                           ; preds = %.preheader177.lr.ph.i.i.i, %._crit_edge.us.i120.i.i
  %.18.i.i = phi i32 [ %.24.i.i, %._crit_edge.us.i120.i.i ], [ 0, %.preheader177.lr.ph.i.i.i ]
  %indvars.iv193.i.i.i = phi i64 [ %indvars.iv.next194.i.i.i, %._crit_edge.us.i120.i.i ], [ 0, %.preheader177.lr.ph.i.i.i ] ; 6 uses
  %indvars34.i.i = trunc i64 %indvars.iv193.i.i.i to i32 ; 2 uses
  %i.avj = or disjoint i64 %indvars.iv193.i.i.i, 3 ; 2 uses
  %i.avk = icmp samesign ult i64 %i.avj, %i.aip
  %i.avl = or disjoint i64 %indvars.iv193.i.i.i, 1
  %i.avm = or disjoint i64 %indvars.iv193.i.i.i, 2
  %indvars.iv.next194.i.i.i = add nuw nsw i64 %indvars.iv193.i.i.i, 4 ; 5 uses
  %i.avn = trunc nsw i64 %indvars.iv.next194.i.i.i to i32
  %invariant.smin.us.i115.i.i = call i32 @llvm.smin.i32(i32 %i.avn, i32 %i.aim)
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.us.i.i.i, %.preheader177.us.i.i.i
  %.19.i.i = phi i32 [ %.18.i.i, %.preheader177.us.i.i.i ], [ %.24.i.i, %.loopexit.us.i.i.i ] ; 3 uses
  %indvars.iv.i116.i.i = phi i64 [ 0, %.preheader177.us.i.i.i ], [ %indvars.iv.next.i118.i.i, %.loopexit.us.i.i.i ] ; 15 uses
  %.pre.i117.pre.i.i = load i32, ptr %i.adi, align 8, !tbaa !135 ; 2 uses
  br i1 %i.avk, label %bb.bn, label %.lr.ph.us.preheader.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.avo = sext i32 %.pre.i117.pre.i.i to i64     ; 5 uses
  %i.avp = mul nsw i64 %i.avl, %i.avo             ; 2 uses
  %i.avq = getelementptr [2 x i8], ptr %i.adj, i64 %i.avp
  %i.avr = getelementptr [2 x i8], ptr %i.avq, i64 %indvars.iv.i116.i.i
  %i.avs = getelementptr i8, ptr %i.avr, i64 2
  %i.avt = load i16, ptr %i.avs, align 2, !tbaa !64
  %i.avu = and i16 %i.avt, 12543
  %.not.us.i122.i.i = icmp eq i16 %i.avu, 0
  br i1 %.not.us.i122.i.i, label %bb.bo, label %.lr.ph.us.preheader.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.avv = mul nsw i64 %i.avm, %i.avo             ; 2 uses
  %i.avw = getelementptr [2 x i8], ptr %i.adj, i64 %i.avv
  %i.avx = getelementptr [2 x i8], ptr %i.avw, i64 %indvars.iv.i116.i.i
  %i.avy = getelementptr i8, ptr %i.avx, i64 2
  %i.avz = load i16, ptr %i.avy, align 2, !tbaa !64
  %i.awa = and i16 %i.avz, 12543
  %.not161.us.i.i.i = icmp eq i16 %i.awa, 0
  br i1 %.not161.us.i.i.i, label %bb.bp, label %.lr.ph.us.preheader.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.awb = mul nsw i64 %i.avj, %i.avo             ; 2 uses
  %i.awc = getelementptr [2 x i8], ptr %i.adj, i64 %i.awb
  %i.awd = getelementptr [2 x i8], ptr %i.awc, i64 %indvars.iv.i116.i.i
  %i.awe = getelementptr i8, ptr %i.awd, i64 2
  %i.awf = load i16, ptr %i.awe, align 2, !tbaa !64
  %i.awg = and i16 %i.awf, 12543
  %.not162.us.i.i.i = icmp eq i16 %i.awg, 0
  br i1 %.not162.us.i.i.i, label %bb.bq, label %.lr.ph.us.preheader.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.awh = mul nsw i64 %indvars.iv.next194.i.i.i, %i.avo
  %i.awi = getelementptr [2 x i8], ptr %i.adj, i64 %i.awh
  %i.awj = getelementptr [2 x i8], ptr %i.awi, i64 %indvars.iv.i116.i.i
  %i.awk = getelementptr i8, ptr %i.awj, i64 2
  %i.awl = load i16, ptr %i.awk, align 2, !tbaa !64
  %i.awm = and i16 %i.awl, 12543
  %.not163.us.i.i.i = icmp eq i16 %i.awm, 0
  br i1 %.not163.us.i.i.i, label %.preheader.us.preheader.i123.i.i, label %.lr.ph.us.preheader.i.i.i

.preheader.us.preheader.i123.i.i:                 ; preds = %bb.bq
  %i.awn = mul nsw i64 %indvars.iv193.i.i.i, %i.avo
  %i.awo = getelementptr [4 x i8], ptr %4, i64 %i.awn
  %i.awp = getelementptr [4 x i8], ptr %i.awo, i64 %indvars.iv.i116.i.i
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !39
  %i.awr = and i32 %i.awq, %i.aoa
  %.not164.us.i.i.i = icmp eq i32 %i.awr, 0
  br i1 %.not164.us.i.i.i, label %.preheader.us.1.i.i.i, label %.lr.ph181.us.preheader.i.i.i

.lr.ph.us.preheader.i.i.i:                        ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %i.aws = getelementptr [2 x i8], ptr %i.adj, i64 %indvars.iv.i116.i.i ; 4 uses
  %i.awt = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i116.i.i ; 2 uses
  %i.awu = trunc nuw nsw i64 %indvars.iv.i116.i.i to i32
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %bb.bt, %.lr.ph.us.preheader.i.i.i
  %.20.i.i = phi i32 [ %.19.i.i, %.lr.ph.us.preheader.i.i.i ], [ %.21.i.i, %bb.bt ] ; 3 uses
  %i.awv = phi i32 [ %.pre.i117.pre.i.i, %.lr.ph.us.preheader.i.i.i ], [ %i.azi, %bb.bt ] ; 3 uses
  %.1178.us.i.i.i = phi i32 [ %indvars34.i.i, %.lr.ph.us.preheader.i.i.i ], [ %i.aww, %bb.bt ] ; 4 uses
  %i.aww = add nuw nsw i32 %.1178.us.i.i.i, 1     ; 6 uses
  %i.awx = mul nsw i32 %i.aww, %i.awv
  %i.awy = sext i32 %i.awx to i64
  %i.awz = getelementptr [2 x i8], ptr %i.aws, i64 %i.awy
  %i.axa = getelementptr i8, ptr %i.awz, i64 2
  %i.axb = load i16, ptr %i.axa, align 2, !tbaa !64
  %i.axc = zext i16 %i.axb to i32                 ; 2 uses
  %i.axd = and i32 %i.axc, 12288
  %.not168.us.i.i.i = icmp eq i32 %i.axd, 0
  br i1 %.not168.us.i.i.i, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.lr.ph.us.i.i.i
  %i.axe = and i32 %i.axc, 255
  %i.axf = zext nneg i32 %i.axe to i64
  %gep.us.i121.i.i = getelementptr [4 x i8], ptr %gep.i, i64 %i.axf
  %i.axg = load i8, ptr %gep.us.i121.i.i, align 1, !tbaa !60
  %i.axh = zext i8 %i.axg to i64
  %i.axi = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.axh
  %i.axj = mul nsw i32 %.1178.us.i.i.i, %i.awv
  %i.axk = sext i32 %i.axj to i64
  %i.axl = getelementptr [4 x i8], ptr %i.awt, i64 %i.axk
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !39
  %i.axn = and i32 %i.axm, %i.aoa
  %.not169.us.i.i.i = icmp ne i32 %i.axn, 0
  %i.axo = zext i1 %.not169.us.i.i.i to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.axi, i32 noundef %i.axo) #11
  %i.axp = load i32, ptr %i.adi, align 8, !tbaa !135 ; 3 uses
  %i.axq = mul nsw i32 %i.axp, %.1178.us.i.i.i
  %i.axr = sext i32 %i.axq to i64
  %i.axs = getelementptr [4 x i8], ptr %i.awt, i64 %i.axr
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !39 ; 3 uses
  %i.axu = and i32 %i.axt, %i.aoa
  %.not170.us.i.i.i = icmp eq i32 %i.axu, 0
  br i1 %.not170.us.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.axv = mul nsw i32 %i.axp, %i.aww
  %i.axw = sext i32 %i.axv to i64
  %i.axx = getelementptr [2 x i8], ptr %i.aws, i64 %i.axw
  %i.axy = getelementptr i8, ptr %i.axx, i64 2
  %i.axz = load i16, ptr %i.axy, align 2, !tbaa !64 ; 2 uses
  %i.aya = zext i16 %i.axz to i32                 ; 2 uses
  %i.ayb = and i32 %i.aya, 15
  %i.ayc = zext nneg i32 %i.ayb to i64            ; 2 uses
  %i.ayd = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_xorbit_lut, i64 %i.ayc
  %i.aye = lshr i32 %i.aya, 8
  %i.ayf = and i32 %i.aye, 15
  %i.ayg = zext nneg i32 %i.ayf to i64            ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayd, i64 %i.ayg
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !60
  %i.ayj = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_sgnctxno_lut, i64 %i.ayc
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %i.ayg
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !60
  %i.aym = ashr i32 %i.axt, %.09320.i.i
  %i.ayn = and i32 %i.aym, 127
  %i.ayo = zext nneg i32 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig, i64 %i.ayo
  %i.ayq = and i32 %i.axt, 127
  %i.ayr = zext nneg i32 %i.ayq to i64
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig0, i64 %i.ayr
  %.0.in.i171.us.i.i.i = select i1 %.not174.i.i.i, ptr %i.ays, ptr %i.ayp
  %.0.i172.us.i.i.i = load i32, ptr %.0.in.i171.us.i.i.i, align 4, !tbaa !39
  %i.ayt = add nsw i32 %.0.i172.us.i.i.i, %.20.i.i
  %i.ayu = zext i8 %i.ayl to i64
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.ayu
  %i.ayw = lshr i16 %i.axz, 15
  %i.ayx = zext i8 %i.ayi to i16
  %i.ayy = xor i16 %i.ayw, %i.ayx
  %i.ayz = zext nneg i16 %i.ayy to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.ayv, i32 noundef %i.ayz) #11
  %i.aza = load i32, ptr %i.adi, align 8, !tbaa !135
  %i.azb = mul nsw i32 %i.aza, %i.aww
  %i.azc = sext i32 %i.azb to i64
  %i.azd = getelementptr [2 x i8], ptr %i.aws, i64 %i.azc
  %i.aze = getelementptr i8, ptr %i.azd, i64 2
  %i.azf = load i16, ptr %i.aze, align 2, !tbaa !64
  %i.azg = lshr i16 %i.azf, 15
  %i.azh = zext nneg i16 %i.azg to i32
  call void @ff_jpeg2000_set_significance(ptr noundef nonnull %4, i32 noundef %i.awu, i32 noundef %.1178.us.i.i.i, i32 noundef %i.azh) #11
  %.pre196.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !135
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %.lr.ph.us.i.i.i
  %.21.i.i = phi i32 [ %.20.i.i, %bb.br ], [ %i.ayt, %bb.bs ], [ %.20.i.i, %.lr.ph.us.i.i.i ] ; 2 uses
  %i.azi = phi i32 [ %i.axp, %bb.br ], [ %.pre196.i.i.i, %bb.bs ], [ %i.awv, %.lr.ph.us.i.i.i ] ; 2 uses
  %i.azj = mul nsw i32 %i.azi, %i.aww
  %i.azk = sext i32 %i.azj to i64
  %i.azl = getelementptr [2 x i8], ptr %i.aws, i64 %i.azk
  %i.azm = getelementptr i8, ptr %i.azl, i64 2    ; 2 uses
  %i.azn = load i16, ptr %i.azm, align 2, !tbaa !64
  %i.azo = and i16 %i.azn, -4097
  store i16 %i.azo, ptr %i.azm, align 2, !tbaa !64
  %i.azp = icmp slt i32 %i.aww, %invariant.smin.us.i115.i.i
  br i1 %i.azp, label %.lr.ph.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !175

.preheader.us.1.i.i.i:                            ; preds = %.preheader.us.preheader.i123.i.i
  %i.azq = getelementptr [4 x i8], ptr %4, i64 %i.avp
  %i.azr = getelementptr [4 x i8], ptr %i.azq, i64 %indvars.iv.i116.i.i
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !39
  %i.azt = and i32 %i.azs, %i.aoa
  %.not164.us.1.i.i.i = icmp eq i32 %i.azt, 0
  br i1 %.not164.us.1.i.i.i, label %.preheader.us.2.i.i.i, label %.lr.ph181.us.preheader.i.i.i

.preheader.us.2.i.i.i:                            ; preds = %.preheader.us.1.i.i.i
  %i.azu = getelementptr [4 x i8], ptr %4, i64 %i.avv
  %i.azv = getelementptr [4 x i8], ptr %i.azu, i64 %indvars.iv.i116.i.i
  %i.azw = load i32, ptr %i.azv, align 4, !tbaa !39
  %i.azx = and i32 %i.azw, %i.aoa
  %.not164.us.2.i.i.i = icmp eq i32 %i.azx, 0
  br i1 %.not164.us.2.i.i.i, label %.preheader.us.3.i.i.i, label %.lr.ph181.us.preheader.i.i.i

.preheader.us.3.i.i.i:                            ; preds = %.preheader.us.2.i.i.i
  %i.azy = getelementptr [4 x i8], ptr %4, i64 %i.awb
  %i.azz = getelementptr [4 x i8], ptr %i.azy, i64 %indvars.iv.i116.i.i
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !39
  %i.bab = and i32 %i.baa, %i.aoa
  %.not164.us.3.i.i.i = icmp eq i32 %i.bab, 0
  br i1 %.not164.us.3.i.i.i, label %bb.bu, label %.lr.ph181.us.preheader.i.i.i

bb.bu:                                            ; preds = %.preheader.us.3.i.i.i
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adm, i32 noundef 0) #11
  br label %.loopexit.us.i.i.i

.lr.ph181.us.preheader.i.i.i:                     ; preds = %.preheader.us.3.i.i.i, %.preheader.us.2.i.i.i, %.preheader.us.1.i.i.i, %.preheader.us.preheader.i123.i.i
  %.0157.lcssa.us.ph.i.i.i = phi i32 [ 2, %.preheader.us.2.i.i.i ], [ 3, %.preheader.us.3.i.i.i ], [ 1, %.preheader.us.1.i.i.i ], [ 0, %.preheader.us.preheader.i123.i.i ] ; 3 uses
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adm, i32 noundef 1) #11
  %i.bac = lshr i32 %.0157.lcssa.us.ph.i.i.i, 1
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adn, i32 noundef %i.bac) #11
  %i.bad = and i32 %.0157.lcssa.us.ph.i.i.i, 1
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adn, i32 noundef %i.bad) #11
  %i.bae = or disjoint i32 %.0157.lcssa.us.ph.i.i.i, %indvars34.i.i
  %.pre197.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !135
  %i.baf = getelementptr [2 x i8], ptr %i.adj, i64 %indvars.iv.i116.i.i ; 4 uses
  %i.bag = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i116.i.i ; 2 uses
  %i.bah = trunc nuw nsw i64 %indvars.iv.i116.i.i to i32
  %i.bai = sext i32 %i.bae to i64                 ; 2 uses
  br label %.lr.ph181.us.i.i.i

.lr.ph181.us.i.i.i:                               ; preds = %bb.bz, %.lr.ph181.us.preheader.i.i.i
  %indvars.iv31.i.i = phi i64 [ %indvars.iv.next32.i.i, %bb.bz ], [ %i.bai, %.lr.ph181.us.preheader.i.i.i ] ; 5 uses
  %.22.i.i = phi i32 [ %.23.i.i, %bb.bz ], [ %.19.i.i, %.lr.ph181.us.preheader.i.i.i ] ; 3 uses
  %i.baj = phi i32 [ %i.bcu, %bb.bz ], [ %.pre197.i.i.i, %.lr.ph181.us.preheader.i.i.i ] ; 3 uses
  %indvars.iv.next32.i.i = add nuw nsw i64 %indvars.iv31.i.i, 1 ; 6 uses
  %i.bak = sext i32 %i.baj to i64                 ; 4 uses
  %i.bal = mul nsw i64 %indvars.iv.next32.i.i, %i.bak
  %i.bam = getelementptr [2 x i8], ptr %i.baf, i64 %i.bal
  %i.ban = getelementptr i8, ptr %i.bam, i64 2
  %i.bao = load i16, ptr %i.ban, align 2, !tbaa !64
  %i.bap = zext i16 %i.bao to i32                 ; 2 uses
  %i.baq = and i32 %i.bap, 12288
  %.not165.us.i.i.i = icmp eq i32 %i.baq, 0
  br i1 %.not165.us.i.i.i, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %.lr.ph181.us.i.i.i
  %i.bar = icmp samesign ugt i64 %indvars.iv31.i.i, %i.bai
  br i1 %i.bar, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.bas = and i32 %i.bap, 255
  %i.bat = zext nneg i32 %i.bas to i64
  %gep183.us.i.i.i = getelementptr [4 x i8], ptr %gep.i, i64 %i.bat
  %i.bau = load i8, ptr %gep183.us.i.i.i, align 1, !tbaa !60
  %i.bav = zext i8 %i.bau to i64
  %i.baw = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.bav
  %i.bax = mul nsw i64 %indvars.iv31.i.i, %i.bak
  %i.bay = getelementptr [4 x i8], ptr %i.bag, i64 %i.bax
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !39
  %i.bba = and i32 %i.baz, %i.aoa
  %.not166.us.i.i.i = icmp ne i32 %i.bba, 0
  %i.bbb = zext i1 %.not166.us.i.i.i to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.baw, i32 noundef %i.bbb) #11
  %.pre198.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !135 ; 2 uses
  %.pre45.i.i = sext i32 %.pre198.i.i.i to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pre-phi46.i.i = phi i64 [ %.pre45.i.i, %bb.bw ], [ %i.bak, %bb.bv ] ; 3 uses
  %i.bbc = phi i32 [ %.pre198.i.i.i, %bb.bw ], [ %i.baj, %bb.bv ]
  %i.bbd = mul nsw i64 %.pre-phi46.i.i, %indvars.iv31.i.i
  %i.bbe = getelementptr [4 x i8], ptr %i.bag, i64 %i.bbd
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !39 ; 3 uses
  %i.bbg = and i32 %i.bbf, %i.aoa
  %.not167.us.i.i.i = icmp eq i32 %i.bbg, 0
  br i1 %.not167.us.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.bbh = mul nsw i64 %.pre-phi46.i.i, %indvars.iv.next32.i.i
  %i.bbi = getelementptr [2 x i8], ptr %i.baf, i64 %i.bbh
  %i.bbj = getelementptr i8, ptr %i.bbi, i64 2
  %i.bbk = load i16, ptr %i.bbj, align 2, !tbaa !64 ; 2 uses
  %i.bbl = zext i16 %i.bbk to i32                 ; 2 uses
  %i.bbm = and i32 %i.bbl, 15
  %i.bbn = zext nneg i32 %i.bbm to i64            ; 2 uses
  %i.bbo = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_xorbit_lut, i64 %i.bbn
  %i.bbp = lshr i32 %i.bbl, 8
  %i.bbq = and i32 %i.bbp, 15
  %i.bbr = zext nneg i32 %i.bbq to i64            ; 2 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %i.bbr
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !60
  %i.bbu = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_sgnctxno_lut, i64 %i.bbn
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %i.bbr
  %i.bbw = load i8, ptr %i.bbv, align 1, !tbaa !60
  %i.bbx = ashr i32 %i.bbf, %.09320.i.i
  %i.bby = and i32 %i.bbx, 127
  %i.bbz = zext nneg i32 %i.bby to i64
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig, i64 %i.bbz
  %i.bcb = and i32 %i.bbf, 127
  %i.bcc = zext nneg i32 %i.bcb to i64
  %i.bcd = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig0, i64 %i.bcc
  %.0.in.i.us.i124.i.i = select i1 %.not174.i.i.i, ptr %i.bcd, ptr %i.bca
  %.0.i.us.i125.i.i = load i32, ptr %.0.in.i.us.i124.i.i, align 4, !tbaa !39
  %i.bce = add nsw i32 %.0.i.us.i125.i.i, %.22.i.i
  %i.bcf = zext i8 %i.bbw to i64
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.bcf
  %i.bch = lshr i16 %i.bbk, 15
  %i.bci = zext i8 %i.bbt to i16
  %i.bcj = xor i16 %i.bch, %i.bci
  %i.bck = zext nneg i16 %i.bcj to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.bcg, i32 noundef %i.bck) #11
  %i.bcl = load i32, ptr %i.adi, align 8, !tbaa !135
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = mul nsw i64 %indvars.iv.next32.i.i, %i.bcm
  %i.bco = getelementptr [2 x i8], ptr %i.baf, i64 %i.bcn
  %i.bcp = getelementptr i8, ptr %i.bco, i64 2
  %i.bcq = load i16, ptr %i.bcp, align 2, !tbaa !64
  %i.bcr = lshr i16 %i.bcq, 15
  %i.bcs = zext nneg i16 %i.bcr to i32
  %i.bct = trunc nsw i64 %indvars.iv31.i.i to i32
  call void @ff_jpeg2000_set_significance(ptr noundef nonnull %4, i32 noundef %i.bah, i32 noundef %i.bct, i32 noundef %i.bcs) #11
  %.pre199.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !135 ; 2 uses
  %.pre47.i.i = sext i32 %.pre199.i.i.i to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %.lr.ph181.us.i.i.i
  %.pre-phi48.i.i = phi i64 [ %.pre47.i.i, %bb.by ], [ %.pre-phi46.i.i, %bb.bx ], [ %i.bak, %.lr.ph181.us.i.i.i ]
  %.23.i.i = phi i32 [ %i.bce, %bb.by ], [ %.22.i.i, %bb.bx ], [ %.22.i.i, %.lr.ph181.us.i.i.i ] ; 2 uses
  %i.bcu = phi i32 [ %.pre199.i.i.i, %bb.by ], [ %i.bbc, %bb.bx ], [ %i.baj, %.lr.ph181.us.i.i.i ]
  %i.bcv = mul nsw i64 %.pre-phi48.i.i, %indvars.iv.next32.i.i
  %i.bcw = getelementptr [2 x i8], ptr %i.baf, i64 %i.bcv
  %i.bcx = getelementptr i8, ptr %i.bcw, i64 2    ; 2 uses
  %i.bcy = load i16, ptr %i.bcx, align 2, !tbaa !64
  %i.bcz = and i16 %i.bcy, -4097
  store i16 %i.bcz, ptr %i.bcx, align 2, !tbaa !64
  %i.bda = icmp samesign ugt i64 %indvars.iv.next194.i.i.i, %indvars.iv.next32.i.i
  br i1 %i.bda, label %.lr.ph181.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !176

.loopexit.us.i.i.i:                               ; preds = %bb.bt, %bb.bz, %bb.bu
  %.24.i.i = phi i32 [ %.19.i.i, %bb.bu ], [ %.23.i.i, %bb.bz ], [ %.21.i.i, %bb.bt ] ; 3 uses
  %indvars.iv.next.i118.i.i = add nuw nsw i64 %indvars.iv.i116.i.i, 1 ; 2 uses
  %exitcond.not.i119.i.i = icmp eq i64 %indvars.iv.next.i118.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i119.i.i, label %._crit_edge.us.i120.i.i, label %bb.bm, !llvm.loop !177

._crit_edge.us.i120.i.i:                          ; preds = %.loopexit.us.i.i.i
  %i.bdb = icmp samesign ult i64 %indvars.iv.next194.i.i.i, %i.aip
  br i1 %i.bdb, label %.preheader177.us.i.i.i, label %encode_sigpass.exit.i.i, !llvm.loop !178

default.unreachable.i.i:                          ; preds = %bb.ax
  unreachable

encode_sigpass.exit.i.i:                          ; preds = %._crit_edge.us.i120.i.i, %._crit_edge46.split.us.i.i.i, %._crit_edge46.split.us.us.i.i.i, %._crit_edge72.split.us.i.i.i, %.preheader177.lr.ph.i.i.i, %bb.bl, %bb.be, %.preheader69.lr.ph.i.i.i, %bb.ay
  %.26.i.i = phi i32 [ 0, %bb.be ], [ 0, %bb.ay ], [ 0, %bb.bl ], [ 0, %.preheader69.lr.ph.i.i.i ], [ 0, %.preheader177.lr.ph.i.i.i ], [ %.8.i.i, %._crit_edge46.split.us.us.i.i.i ], [ %.5.i.i, %._crit_edge72.split.us.i.i.i ], [ %.16.i.i, %._crit_edge46.split.us.i.i.i ], [ %.24.i.i, %._crit_edge.us.i120.i.i ]
  %i.bdc = load ptr, ptr %i.amj, align 8, !tbaa !163
  %i.bdd = getelementptr inbounds nuw [24 x i8], ptr %i.bdc, i64 %indvars.iv.i.i ; 2 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 16
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdd, i64 20
  %i.bdg = call i32 @ff_mqc_flush_to(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.bde, ptr noundef nonnull %i.bdf) #11
  %i.bdh = load ptr, ptr %i.amj, align 8, !tbaa !163 ; 2 uses
  %i.bdi = getelementptr inbounds nuw [24 x i8], ptr %i.bdh, i64 %indvars.iv.i.i ; 3 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 20
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !179
  %i.bdl = sub i32 %i.bdg, %i.bdk
  %i.bdm = trunc i32 %i.bdl to i16
  store i16 %i.bdm, ptr %i.bdi, align 8, !tbaa !181
  %i.bdn = sext i32 %.26.i.i to i64
  %i.bdo = shl nuw nsw i32 %.09320.i.i, 1
  %i.bdp = zext nneg i32 %i.bdo to i64
  %i.bdq = shl i64 %i.bdn, %i.bdp
  %i.bdr = add nsw i64 %i.bdq, %.021.i.i          ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  store i64 %i.bdr, ptr %i.bds, align 8, !tbaa !182
  %i.bdt = add nuw nsw i32 %.09918.i.i, 1         ; 2 uses
  %i.bdu = icmp eq i32 %i.bdt, 3                  ; 2 uses
  %spec.select.i.i = select i1 %i.bdu, i32 0, i32 %i.bdt
  %i.bdv = sext i1 %i.bdu to i32
  %spec.select104.i.i = add nsw i32 %.09320.i.i, %i.bdv ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bdw = icmp sgt i32 %spec.select104.i.i, -1
  br i1 %i.bdw, label %bb.ax, label %._crit_edge.i.i, !llvm.loop !183

._crit_edge.i.i:                                  ; preds = %encode_sigpass.exit.i.i
  %i.bdx = trunc i64 %indvars.iv.next.i.i to i8   ; 2 uses
  store i8 %i.bdx, ptr %i.amh, align 8, !tbaa !167
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.amh, i64 1
  store i8 %i.bdx, ptr %i.bdy, align 1, !tbaa !168
  %sext.i.i.a = shl i64 %indvars.iv.i.i, 32
  %i.bdz = ashr exact i64 %sext.i.i.a, 32         ; 2 uses
  %i.bea = getelementptr inbounds [24 x i8], ptr %i.bdh, i64 %i.bdz ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 16
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bea, i64 20
  %i.bed = call i32 @ff_mqc_flush_to(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.beb, ptr noundef nonnull %i.bec) #11
  %i.bee = load ptr, ptr %i.amj, align 8, !tbaa !163
  %i.bef = getelementptr inbounds [24 x i8], ptr %i.bee, i64 %i.bdz ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 20
  %i.beh = load i32, ptr %i.beg, align 4, !tbaa !179
  %i.bei = sub i32 %i.bed, %i.beh
  %i.bej = trunc i32 %i.bei to i16
  store i16 %i.bej, ptr %i.bef, align 8, !tbaa !181
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.bek = load i16, ptr %i.ahj, align 8, !tbaa !152
  %i.bel = zext nneg i16 %i.bek to i32
  %i.bem = shl nuw i32 1, %i.bel
  %i.ben = add nsw i32 %i.bem, %.0178295.i
  %i.beo = load i32, ptr %i.agr, align 4, !tbaa !39 ; 2 uses
  %i.bep = load i32, ptr %i.afz, align 8, !tbaa !39 ; 2 uses
  %i.beq = add i32 %i.beo, %.0180.i
  %i.ber = sub i32 %i.beq, %i.bep
  %..i239 = call i32 @llvm.smin.i32(i32 %i.ben, i32 %i.ber)
  %i.bes = add nuw nsw i32 %.0185289.i, 1         ; 2 uses
  %indvars.iv.next.i240 = add nsw i64 %indvars.iv.i238, 1 ; 2 uses
  %i.bet = load i32, ptr %i.agb, align 8, !tbaa !151
  %i.beu = icmp slt i32 %i.bes, %i.bet
  br i1 %i.beu, label %bb.ap, label %._crit_edge298.loopexit.i, !llvm.loop !184

._crit_edge298.loopexit.i:                        ; preds = %bb.ca
  %i.bev = trunc nsw i64 %indvars.iv.next.i240 to i32
  %.pre349.i = load i16, ptr %i.agn, align 2, !tbaa !150
  %.pre350.i = load i32, ptr %i.ago, align 4, !tbaa !39
  %.pre351.i = load i32, ptr %i.agl, align 8, !tbaa !39
  %.pre352.i = load i32, ptr %i.agv, align 4, !tbaa !146
  br label %._crit_edge298.i

._crit_edge298.i:                                 ; preds = %._crit_edge298.loopexit.i, %bb.ao
  %i.bew = phi i32 [ %i.ahm, %bb.ao ], [ %.pre352.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bex = phi i32 [ %i.ahn, %bb.ao ], [ %.pre351.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bey = phi i32 [ %i.aho, %bb.ao ], [ %.pre350.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bez = phi i16 [ %i.ahp, %bb.ao ], [ %.pre349.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bfa = phi i32 [ %i.ahq, %bb.ao ], [ %i.beo, %._crit_edge298.loopexit.i ]
  %i.bfb = phi i32 [ %i.ahr, %bb.ao ], [ %i.bep, %._crit_edge298.loopexit.i ]
end_hunk_0
