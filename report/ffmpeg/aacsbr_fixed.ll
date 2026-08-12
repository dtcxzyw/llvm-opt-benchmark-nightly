inline.NumInlined: 254
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 25
begin_hunk_0_@ff_aac_sbr_apply_fixed:bb.a
  %i.awt = lshr i32 536870912, %i.awr
  %i.awu = add nsw i32 %.sroa.012.0.extract.trunc.i.i269307315320, %i.awt ; 2 uses
  %i.awv = add i32 %i.awu, 1073741824
  %i.aww = icmp slt i32 %i.awv, 1
  %i.awx = zext i1 %i.aww to i32                  ; 2 uses
  %.sroa.0.0.i24.i667.i = ashr i32 %i.awu, %i.awx ; 4 uses
  %.not.i29.i668.i = icmp eq i32 %.sroa.0.0.i24.i667.i, 0
  br i1 %.not.i29.i668.i, label %av_normalize_sf.exit41.i677.i, label %.preheader.i30.i669.i

.preheader.i30.i669.i:                            ; preds = %bb.dj
  %.sroa.5.0.i23.i670.i = add nuw nsw i32 %.sroa.414.0.extract.shift.i.i270308314321, %i.awx ; 2 uses
  %i.awy = add i32 %.sroa.0.0.i24.i667.i, 536870911
  %i.awz = icmp ult i32 %i.awy, 1073741823
  br i1 %i.awz, label %.lr.ph.i38.i680.i, label %._crit_edge.i32.i672.i

.lr.ph.i38.i680.i:                                ; preds = %.preheader.i30.i669.i, %.lr.ph.i38.i680.i
  %.sroa.0.08.i39.i681.i = phi i32 [ %i.axa, %.lr.ph.i38.i680.i ], [ %.sroa.0.0.i24.i667.i, %.preheader.i30.i669.i ]
  %.sroa.8.07.i40.i682.i = phi i32 [ %i.axb, %.lr.ph.i38.i680.i ], [ %.sroa.5.0.i23.i670.i, %.preheader.i30.i669.i ]
  %i.axa = shl nsw i32 %.sroa.0.08.i39.i681.i, 1  ; 3 uses
  %i.axb = add nsw i32 %.sroa.8.07.i40.i682.i, -1 ; 2 uses
  %i.axc = add nsw i32 %i.axa, 536870911
  %i.axd = icmp ult i32 %i.axc, 1073741823
  br i1 %i.axd, label %.lr.ph.i38.i680.i, label %._crit_edge.i32.i672.i, !llvm.loop !196

._crit_edge.i32.i672.i:                           ; preds = %.lr.ph.i38.i680.i, %.preheader.i30.i669.i
  %.sroa.8.0.lcssa.i33.i673.i = phi i32 [ %.sroa.5.0.i23.i670.i, %.preheader.i30.i669.i ], [ %i.axb, %.lr.ph.i38.i680.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i674.i = phi i32 [ %.sroa.0.0.i24.i667.i, %.preheader.i30.i669.i ], [ %i.axa, %.lr.ph.i38.i680.i ]
  %i.axe = icmp slt i32 %.sroa.8.0.lcssa.i33.i673.i, -149
  %spec.select.i35.i675.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i673.i, i32 -149)
  %spec.select6.i36.i676.i = select i1 %i.axe, i32 0, i32 %.sroa.0.0.lcssa.i34.i674.i
  %i.axf = zext i32 %spec.select.i35.i675.i to i64
  %i.axg = shl nuw i64 %i.axf, 32
  %i.axh = zext i32 %spec.select6.i36.i676.i to i64
  %i.axi = or disjoint i64 %i.axg, %i.axh
  br label %av_normalize_sf.exit41.i677.i

av_normalize_sf.exit41.i677.i:                    ; preds = %._crit_edge.i32.i672.i, %bb.dj
  %.sroa.05.0.insert.insert.i37.i678.i = phi i64 [ -639950127104, %bb.dj ], [ %i.axi, %._crit_edge.i32.i672.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i679.i = lshr i64 %.sroa.05.0.insert.insert.i37.i678.i, 32
  br label %av_add_sf.exit699.i

av_add_sf.exit699.i:                              ; preds = %av_normalize_sf.exit41.i677.i, %bb.di, %av_normalize_sf.exit.i693.i, %av_sqrt_sf.exit292.i
  %i.axj = phi ptr [ %i.avv, %av_sqrt_sf.exit292.i ], [ %i.avv, %av_normalize_sf.exit.i693.i ], [ %i.aws, %av_normalize_sf.exit41.i677.i ], [ %i.avv, %bb.di ]
  %.sroa.016.0.i662.i = phi i64 [ -639413256192, %av_sqrt_sf.exit292.i ], [ %.sroa.05.0.insert.insert.i.i694.i, %av_normalize_sf.exit.i693.i ], [ %.sroa.05.0.insert.insert.i37.i678.i, %av_normalize_sf.exit41.i677.i ], [ %i.avu, %bb.di ]
  %.sroa.5.0.i663.i = phi i64 [ 4294967147, %av_sqrt_sf.exit292.i ], [ %.sroa.5.0.extract.shift.i695.i, %av_normalize_sf.exit.i693.i ], [ %.sroa.5.0.extract.shift18.i679.i, %av_normalize_sf.exit41.i677.i ], [ %i.avr, %bb.di ]
  %.sroa.5.0.insert.shift.i664.i = shl nuw i64 %.sroa.5.0.i663.i, 32
  %.sroa.016.0.insert.ext.i665.i = and i64 %.sroa.016.0.i662.i, 4294967295
  %.sroa.016.0.insert.insert.i666.i = or disjoint i64 %.sroa.5.0.insert.shift.i664.i, %.sroa.016.0.insert.ext.i665.i
  store i64 %.sroa.016.0.insert.insert.i666.i, ptr %i.axj, align 8
  %indvars.iv.next.i272 = add nsw i64 %indvars.iv.i236, 1 ; 2 uses
  %i.axk = load i16, ptr %i.ado, align 2, !tbaa !74 ; 2 uses
  %i.axl = zext i16 %i.axk to i32
  %i.axm = load i32, ptr %i.ky, align 8, !tbaa !13 ; 3 uses
  %i.axn = sub nsw i32 %i.axl, %i.axm             ; 2 uses
  %i.axo = sext i32 %i.axn to i64
  %i.axp = icmp slt i64 %indvars.iv.next.i272, %i.axo
  br i1 %i.axp, label %.lr.ph.i235, label %._crit_edge.loopexit.i273, !llvm.loop !206

._crit_edge.loopexit.i273:                        ; preds = %av_add_sf.exit699.i
  %.pre1627.i = load i16, ptr %i.adl, align 2, !tbaa !74 ; 2 uses
  %.pre1630.i = zext i16 %.pre1627.i to i32
  %.pre1631.i = sub nsw i32 %.pre1630.i, %i.axm
  br label %._crit_edge.i227

._crit_edge.i227:                                 ; preds = %._crit_edge.loopexit.i273, %bb.br
  %.pre-phi1632.i = phi i32 [ %.pre1631.i, %._crit_edge.loopexit.i273 ], [ %i.adn, %bb.br ] ; 3 uses
  %i.axq = phi i16 [ %i.axk, %._crit_edge.loopexit.i273 ], [ %i.adp, %bb.br ]
  %i.axr = phi i16 [ %.pre1627.i, %._crit_edge.loopexit.i273 ], [ %i.adk, %bb.br ] ; 3 uses
  %i.axs = phi i32 [ %i.axm, %._crit_edge.loopexit.i273 ], [ %i.adj, %bb.br ] ; 4 uses
  %.lcssa1409.i = phi i32 [ %i.axn, %._crit_edge.loopexit.i273 ], [ %i.adr, %bb.br ] ; 2 uses
  %i.axt = icmp slt i32 %.pre-phi1632.i, %.lcssa1409.i
  br i1 %i.axt, label %.lr.ph1490.preheader.i, label %.thread1705.i

.thread1705.i:                                    ; preds = %._crit_edge.i227
  %i.axu = load i32, ptr %i.ma, align 16, !tbaa !60
  br label %av_add_sf.exit869.i

.lr.ph1490.preheader.i:                           ; preds = %._crit_edge.i227
  %i.axv = sub i32 0, %i.axs
  %i.axw = sext i32 %i.axv to i64
  %i.axx = zext i16 %i.axr to i64
  %i.axy = add nsw i64 %i.axw, %i.axx
  %wide.trip.count.i231 = sext i32 %.lcssa1409.i to i64
  br label %.lr.ph1490.i

.lr.ph1490.i:                                     ; preds = %av_add_sf.exit787.i, %.lr.ph1490.preheader.i
  %indvars.iv1606.i = phi i64 [ %i.axy, %.lr.ph1490.preheader.i ], [ %indvars.iv.next1607.i, %av_add_sf.exit787.i ] ; 3 uses
  %.sroa.047.01487.i = phi i64 [ -639950127104, %.lr.ph1490.preheader.i ], [ %.sroa.016.0.insert.insert.i710.i, %av_add_sf.exit787.i ] ; 3 uses
  %.sroa.10.01486.i = phi i64 [ -639950127104, %.lr.ph1490.preheader.i ], [ %.sroa.016.0.insert.insert.i754.i, %av_add_sf.exit787.i ] ; 3 uses
  %i.axz = getelementptr inbounds [8 x i8], ptr %i.acv, i64 %indvars.iv1606.i
  %i.aya = load i64, ptr %i.axz, align 8          ; 3 uses
  %.sroa.012.0.extract.trunc.i700.i = trunc i64 %.sroa.047.01487.i to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i701.i = lshr i64 %.sroa.047.01487.i, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i702.i = trunc nuw i64 %.sroa.414.0.extract.shift.i701.i to i32
  %.sroa.09.0.extract.trunc.i703.i = trunc i64 %i.aya to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i704.i = lshr i64 %i.aya, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i705.i = trunc nuw i64 %.sroa.4.0.extract.shift.i704.i to i32
  %i.ayb = sub nsw i32 %.sroa.414.0.extract.trunc.i702.i, %.sroa.4.0.extract.trunc.i705.i ; 5 uses
  %i.ayc = icmp slt i32 %i.ayb, -31
  br i1 %i.ayc, label %av_add_sf.exit743.i, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph1490.i
  %i.ayd = icmp slt i32 %i.ayb, 0
  br i1 %i.ayd, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.aye = sub nsw i32 0, %i.ayb
  %i.ayf = ashr i32 %.sroa.012.0.extract.trunc.i700.i, %i.aye
  %i.ayg = add nsw i32 %i.ayf, %.sroa.09.0.extract.trunc.i703.i ; 2 uses
  %i.ayh = add i32 %i.ayg, 1073741824
  %i.ayi = icmp slt i32 %i.ayh, 1                 ; 2 uses
  %i.ayj = zext i1 %i.ayi to i32
  %.sroa.0.0.i.i727.i = ashr i32 %i.ayg, %i.ayj   ; 4 uses
  %.not.i.i728.i = icmp eq i32 %.sroa.0.0.i.i727.i, 0
  br i1 %.not.i.i728.i, label %av_normalize_sf.exit.i737.i, label %.preheader.i.i729.i

.preheader.i.i729.i:                              ; preds = %bb.dl
  %i.ayk = zext i1 %i.ayi to i64
  %.sroa.5.0.i.i730.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i704.i, %i.ayk
  %.sroa.8.0.extract.trunc.i.i731.i = trunc i64 %.sroa.5.0.i.i730.i to i32 ; 2 uses
  %i.ayl = add i32 %.sroa.0.0.i.i727.i, 536870911
  %i.aym = icmp ult i32 %i.ayl, 1073741823
  br i1 %i.aym, label %.lr.ph.i.i740.i, label %._crit_edge.i.i732.i

.lr.ph.i.i740.i:                                  ; preds = %.preheader.i.i729.i, %.lr.ph.i.i740.i
  %.sroa.0.08.i.i741.i = phi i32 [ %i.ayn, %.lr.ph.i.i740.i ], [ %.sroa.0.0.i.i727.i, %.preheader.i.i729.i ]
  %.sroa.8.07.i.i742.i = phi i32 [ %i.ayo, %.lr.ph.i.i740.i ], [ %.sroa.8.0.extract.trunc.i.i731.i, %.preheader.i.i729.i ]
  %i.ayn = shl nsw i32 %.sroa.0.08.i.i741.i, 1    ; 3 uses
  %i.ayo = add nsw i32 %.sroa.8.07.i.i742.i, -1   ; 2 uses
  %i.ayp = add nsw i32 %i.ayn, 536870911
  %i.ayq = icmp ult i32 %i.ayp, 1073741823
  br i1 %i.ayq, label %.lr.ph.i.i740.i, label %._crit_edge.i.i732.i, !llvm.loop !196

._crit_edge.i.i732.i:                             ; preds = %.lr.ph.i.i740.i, %.preheader.i.i729.i
  %.sroa.8.0.lcssa.i.i733.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i731.i, %.preheader.i.i729.i ], [ %i.ayo, %.lr.ph.i.i740.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i734.i = phi i32 [ %.sroa.0.0.i.i727.i, %.preheader.i.i729.i ], [ %i.ayn, %.lr.ph.i.i740.i ]
  %i.ayr = icmp slt i32 %.sroa.8.0.lcssa.i.i733.i, -149
  %spec.select.i.i735.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i733.i, i32 -149)
  %spec.select6.i.i736.i = select i1 %i.ayr, i32 0, i32 %.sroa.0.0.lcssa.i.i734.i
  %i.ays = zext i32 %spec.select.i.i735.i to i64
  %i.ayt = shl nuw i64 %i.ays, 32
  %i.ayu = zext i32 %spec.select6.i.i736.i to i64
  %i.ayv = or disjoint i64 %i.ayt, %i.ayu
  br label %av_normalize_sf.exit.i737.i

av_normalize_sf.exit.i737.i:                      ; preds = %._crit_edge.i.i732.i, %bb.dl
  %.sroa.05.0.insert.insert.i.i738.i = phi i64 [ -639950127104, %bb.dl ], [ %i.ayv, %._crit_edge.i.i732.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i739.i = lshr i64 %.sroa.05.0.insert.insert.i.i738.i, 32
  br label %av_add_sf.exit743.i

bb.dm:                                            ; preds = %bb.dk
  %i.ayw = icmp samesign ult i32 %i.ayb, 32
  br i1 %i.ayw, label %bb.dn, label %av_add_sf.exit743.i

bb.dn:                                            ; preds = %bb.dm
  %i.ayx = ashr i32 %.sroa.09.0.extract.trunc.i703.i, %i.ayb
  %i.ayy = add nsw i32 %i.ayx, %.sroa.012.0.extract.trunc.i700.i ; 2 uses
  %i.ayz = add i32 %i.ayy, 1073741824
  %i.aza = icmp slt i32 %i.ayz, 1                 ; 2 uses
  %i.azb = zext i1 %i.aza to i32
  %.sroa.0.0.i24.i711.i = ashr i32 %i.ayy, %i.azb ; 4 uses
  %.not.i29.i712.i = icmp eq i32 %.sroa.0.0.i24.i711.i, 0
  br i1 %.not.i29.i712.i, label %av_normalize_sf.exit41.i721.i, label %.preheader.i30.i713.i

.preheader.i30.i713.i:                            ; preds = %bb.dn
  %i.azc = zext i1 %i.aza to i64
  %.sroa.5.0.i23.i714.i = add nuw nsw i64 %.sroa.414.0.extract.shift.i701.i, %i.azc
  %.sroa.8.0.extract.trunc.i31.i715.i = trunc i64 %.sroa.5.0.i23.i714.i to i32 ; 2 uses
  %i.azd = add i32 %.sroa.0.0.i24.i711.i, 536870911
  %i.aze = icmp ult i32 %i.azd, 1073741823
  br i1 %i.aze, label %.lr.ph.i38.i724.i, label %._crit_edge.i32.i716.i

.lr.ph.i38.i724.i:                                ; preds = %.preheader.i30.i713.i, %.lr.ph.i38.i724.i
  %.sroa.0.08.i39.i725.i = phi i32 [ %i.azf, %.lr.ph.i38.i724.i ], [ %.sroa.0.0.i24.i711.i, %.preheader.i30.i713.i ]
  %.sroa.8.07.i40.i726.i = phi i32 [ %i.azg, %.lr.ph.i38.i724.i ], [ %.sroa.8.0.extract.trunc.i31.i715.i, %.preheader.i30.i713.i ]
  %i.azf = shl nsw i32 %.sroa.0.08.i39.i725.i, 1  ; 3 uses
  %i.azg = add nsw i32 %.sroa.8.07.i40.i726.i, -1 ; 2 uses
  %i.azh = add nsw i32 %i.azf, 536870911
  %i.azi = icmp ult i32 %i.azh, 1073741823
  br i1 %i.azi, label %.lr.ph.i38.i724.i, label %._crit_edge.i32.i716.i, !llvm.loop !196

._crit_edge.i32.i716.i:                           ; preds = %.lr.ph.i38.i724.i, %.preheader.i30.i713.i
  %.sroa.8.0.lcssa.i33.i717.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i715.i, %.preheader.i30.i713.i ], [ %i.azg, %.lr.ph.i38.i724.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i718.i = phi i32 [ %.sroa.0.0.i24.i711.i, %.preheader.i30.i713.i ], [ %i.azf, %.lr.ph.i38.i724.i ]
  %i.azj = icmp slt i32 %.sroa.8.0.lcssa.i33.i717.i, -149
  %spec.select.i35.i719.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i717.i, i32 -149)
  %spec.select6.i36.i720.i = select i1 %i.azj, i32 0, i32 %.sroa.0.0.lcssa.i34.i718.i
  %i.azk = zext i32 %spec.select.i35.i719.i to i64
  %i.azl = shl nuw i64 %i.azk, 32
  %i.azm = zext i32 %spec.select6.i36.i720.i to i64
  %i.azn = or disjoint i64 %i.azl, %i.azm
  br label %av_normalize_sf.exit41.i721.i

av_normalize_sf.exit41.i721.i:                    ; preds = %._crit_edge.i32.i716.i, %bb.dn
  %.sroa.05.0.insert.insert.i37.i722.i = phi i64 [ -639950127104, %bb.dn ], [ %i.azn, %._crit_edge.i32.i716.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i723.i = lshr i64 %.sroa.05.0.insert.insert.i37.i722.i, 32
  br label %av_add_sf.exit743.i

av_add_sf.exit743.i:                              ; preds = %av_normalize_sf.exit41.i721.i, %bb.dm, %av_normalize_sf.exit.i737.i, %.lr.ph1490.i
  %.sroa.016.0.i706.i = phi i64 [ %i.aya, %.lr.ph1490.i ], [ %.sroa.05.0.insert.insert.i.i738.i, %av_normalize_sf.exit.i737.i ], [ %.sroa.05.0.insert.insert.i37.i722.i, %av_normalize_sf.exit41.i721.i ], [ %.sroa.047.01487.i, %bb.dm ] ; 2 uses
  %.sroa.5.0.i707.i = phi i64 [ %.sroa.4.0.extract.shift.i704.i, %.lr.ph1490.i ], [ %.sroa.5.0.extract.shift.i739.i, %av_normalize_sf.exit.i737.i ], [ %.sroa.5.0.extract.shift18.i723.i, %av_normalize_sf.exit41.i721.i ], [ %.sroa.414.0.extract.shift.i701.i, %bb.dm ] ; 5 uses
  %.sroa.5.0.insert.shift.i708.i = shl nuw i64 %.sroa.5.0.i707.i, 32
  %.sroa.016.0.insert.ext.i709.i = and i64 %.sroa.016.0.i706.i, 4294967295
  %.sroa.016.0.insert.insert.i710.i = or disjoint i64 %.sroa.5.0.insert.shift.i708.i, %.sroa.016.0.insert.ext.i709.i ; 2 uses
  %i.azo = getelementptr inbounds [8 x i8], ptr %i.add, i64 %indvars.iv1606.i
  %i.azp = load i64, ptr %i.azo, align 8          ; 3 uses
  %.sroa.012.0.extract.trunc.i744.i = trunc i64 %.sroa.10.01486.i to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i745.i = lshr i64 %.sroa.10.01486.i, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i746.i = trunc nuw i64 %.sroa.414.0.extract.shift.i745.i to i32
  %.sroa.09.0.extract.trunc.i747.i = trunc i64 %i.azp to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i748.i = lshr i64 %i.azp, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i749.i = trunc nuw i64 %.sroa.4.0.extract.shift.i748.i to i32
  %i.azq = sub nsw i32 %.sroa.414.0.extract.trunc.i746.i, %.sroa.4.0.extract.trunc.i749.i ; 5 uses
  %i.azr = icmp slt i32 %i.azq, -31
  br i1 %i.azr, label %av_add_sf.exit787.i, label %bb.do

bb.do:                                            ; preds = %av_add_sf.exit743.i
  %i.azs = icmp slt i32 %i.azq, 0
  br i1 %i.azs, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.azt = sub nsw i32 0, %i.azq
  %i.azu = ashr i32 %.sroa.012.0.extract.trunc.i744.i, %i.azt
  %i.azv = add nsw i32 %i.azu, %.sroa.09.0.extract.trunc.i747.i ; 2 uses
  %i.azw = add i32 %i.azv, 1073741824
  %i.azx = icmp slt i32 %i.azw, 1                 ; 2 uses
  %i.azy = zext i1 %i.azx to i32
  %.sroa.0.0.i.i771.i = ashr i32 %i.azv, %i.azy   ; 4 uses
  %.not.i.i772.i = icmp eq i32 %.sroa.0.0.i.i771.i, 0
  br i1 %.not.i.i772.i, label %av_normalize_sf.exit.i781.i, label %.preheader.i.i773.i

.preheader.i.i773.i:                              ; preds = %bb.dp
  %i.azz = zext i1 %i.azx to i64
  %.sroa.5.0.i.i774.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i748.i, %i.azz
  %.sroa.8.0.extract.trunc.i.i775.i = trunc i64 %.sroa.5.0.i.i774.i to i32 ; 2 uses
  %i.baa = add i32 %.sroa.0.0.i.i771.i, 536870911
  %i.bab = icmp ult i32 %i.baa, 1073741823
  br i1 %i.bab, label %.lr.ph.i.i784.i, label %._crit_edge.i.i776.i

.lr.ph.i.i784.i:                                  ; preds = %.preheader.i.i773.i, %.lr.ph.i.i784.i
  %.sroa.0.08.i.i785.i = phi i32 [ %i.bac, %.lr.ph.i.i784.i ], [ %.sroa.0.0.i.i771.i, %.preheader.i.i773.i ]
  %.sroa.8.07.i.i786.i = phi i32 [ %i.bad, %.lr.ph.i.i784.i ], [ %.sroa.8.0.extract.trunc.i.i775.i, %.preheader.i.i773.i ]
  %i.bac = shl nsw i32 %.sroa.0.08.i.i785.i, 1    ; 3 uses
  %i.bad = add nsw i32 %.sroa.8.07.i.i786.i, -1   ; 2 uses
  %i.bae = add nsw i32 %i.bac, 536870911
  %i.baf = icmp ult i32 %i.bae, 1073741823
  br i1 %i.baf, label %.lr.ph.i.i784.i, label %._crit_edge.i.i776.i, !llvm.loop !196

._crit_edge.i.i776.i:                             ; preds = %.lr.ph.i.i784.i, %.preheader.i.i773.i
  %.sroa.8.0.lcssa.i.i777.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i775.i, %.preheader.i.i773.i ], [ %i.bad, %.lr.ph.i.i784.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i778.i = phi i32 [ %.sroa.0.0.i.i771.i, %.preheader.i.i773.i ], [ %i.bac, %.lr.ph.i.i784.i ]
  %i.bag = icmp slt i32 %.sroa.8.0.lcssa.i.i777.i, -149
  %spec.select.i.i779.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i777.i, i32 -149)
  %spec.select6.i.i780.i = select i1 %i.bag, i32 0, i32 %.sroa.0.0.lcssa.i.i778.i
  %i.bah = zext i32 %spec.select.i.i779.i to i64
  %i.bai = shl nuw i64 %i.bah, 32
  %i.baj = zext i32 %spec.select6.i.i780.i to i64
  %i.bak = or disjoint i64 %i.bai, %i.baj
  br label %av_normalize_sf.exit.i781.i

av_normalize_sf.exit.i781.i:                      ; preds = %._crit_edge.i.i776.i, %bb.dp
  %.sroa.05.0.insert.insert.i.i782.i = phi i64 [ -639950127104, %bb.dp ], [ %i.bak, %._crit_edge.i.i776.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i783.i = lshr i64 %.sroa.05.0.insert.insert.i.i782.i, 32
  br label %av_add_sf.exit787.i

bb.dq:                                            ; preds = %bb.do
  %i.bal = icmp samesign ult i32 %i.azq, 32
  br i1 %i.bal, label %bb.dr, label %av_add_sf.exit787.i

bb.dr:                                            ; preds = %bb.dq
  %i.bam = ashr i32 %.sroa.09.0.extract.trunc.i747.i, %i.azq
  %i.ban = add nsw i32 %i.bam, %.sroa.012.0.extract.trunc.i744.i ; 2 uses
  %i.bao = add i32 %i.ban, 1073741824
  %i.bap = icmp slt i32 %i.bao, 1                 ; 2 uses
  %i.baq = zext i1 %i.bap to i32
  %.sroa.0.0.i24.i755.i = ashr i32 %i.ban, %i.baq ; 4 uses
  %.not.i29.i756.i = icmp eq i32 %.sroa.0.0.i24.i755.i, 0
  br i1 %.not.i29.i756.i, label %av_normalize_sf.exit41.i765.i, label %.preheader.i30.i757.i

.preheader.i30.i757.i:                            ; preds = %bb.dr
  %i.bar = zext i1 %i.bap to i64
  %.sroa.5.0.i23.i758.i = add nuw nsw i64 %.sroa.414.0.extract.shift.i745.i, %i.bar
  %.sroa.8.0.extract.trunc.i31.i759.i = trunc i64 %.sroa.5.0.i23.i758.i to i32 ; 2 uses
  %i.bas = add i32 %.sroa.0.0.i24.i755.i, 536870911
  %i.bat = icmp ult i32 %i.bas, 1073741823
  br i1 %i.bat, label %.lr.ph.i38.i768.i, label %._crit_edge.i32.i760.i

.lr.ph.i38.i768.i:                                ; preds = %.preheader.i30.i757.i, %.lr.ph.i38.i768.i
  %.sroa.0.08.i39.i769.i = phi i32 [ %i.bau, %.lr.ph.i38.i768.i ], [ %.sroa.0.0.i24.i755.i, %.preheader.i30.i757.i ]
  %.sroa.8.07.i40.i770.i = phi i32 [ %i.bav, %.lr.ph.i38.i768.i ], [ %.sroa.8.0.extract.trunc.i31.i759.i, %.preheader.i30.i757.i ]
  %i.bau = shl nsw i32 %.sroa.0.08.i39.i769.i, 1  ; 3 uses
  %i.bav = add nsw i32 %.sroa.8.07.i40.i770.i, -1 ; 2 uses
  %i.baw = add nsw i32 %i.bau, 536870911
  %i.bax = icmp ult i32 %i.baw, 1073741823
  br i1 %i.bax, label %.lr.ph.i38.i768.i, label %._crit_edge.i32.i760.i, !llvm.loop !196

._crit_edge.i32.i760.i:                           ; preds = %.lr.ph.i38.i768.i, %.preheader.i30.i757.i
  %.sroa.8.0.lcssa.i33.i761.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i759.i, %.preheader.i30.i757.i ], [ %i.bav, %.lr.ph.i38.i768.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i762.i = phi i32 [ %.sroa.0.0.i24.i755.i, %.preheader.i30.i757.i ], [ %i.bau, %.lr.ph.i38.i768.i ]
  %i.bay = icmp slt i32 %.sroa.8.0.lcssa.i33.i761.i, -149
  %spec.select.i35.i763.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i761.i, i32 -149)
  %spec.select6.i36.i764.i = select i1 %i.bay, i32 0, i32 %.sroa.0.0.lcssa.i34.i762.i
  %i.baz = zext i32 %spec.select.i35.i763.i to i64
  %i.bba = shl nuw i64 %i.baz, 32
  %i.bbb = zext i32 %spec.select6.i36.i764.i to i64
  %i.bbc = or disjoint i64 %i.bba, %i.bbb
  br label %av_normalize_sf.exit41.i765.i

av_normalize_sf.exit41.i765.i:                    ; preds = %._crit_edge.i32.i760.i, %bb.dr
  %.sroa.05.0.insert.insert.i37.i766.i = phi i64 [ -639950127104, %bb.dr ], [ %i.bbc, %._crit_edge.i32.i760.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i767.i = lshr i64 %.sroa.05.0.insert.insert.i37.i766.i, 32
  br label %av_add_sf.exit787.i

av_add_sf.exit787.i:                              ; preds = %av_normalize_sf.exit41.i765.i, %bb.dq, %av_normalize_sf.exit.i781.i, %av_add_sf.exit743.i
  %.sroa.016.0.i750.i = phi i64 [ %i.azp, %av_add_sf.exit743.i ], [ %.sroa.05.0.insert.insert.i.i782.i, %av_normalize_sf.exit.i781.i ], [ %.sroa.05.0.insert.insert.i37.i766.i, %av_normalize_sf.exit41.i765.i ], [ %.sroa.10.01486.i, %bb.dq ] ; 2 uses
  %.sroa.5.0.i751.i = phi i64 [ %.sroa.4.0.extract.shift.i748.i, %av_add_sf.exit743.i ], [ %.sroa.5.0.extract.shift.i783.i, %av_normalize_sf.exit.i781.i ], [ %.sroa.5.0.extract.shift18.i767.i, %av_normalize_sf.exit41.i765.i ], [ %.sroa.414.0.extract.shift.i745.i, %bb.dq ] ; 5 uses
  %.sroa.5.0.insert.shift.i752.i = shl nuw i64 %.sroa.5.0.i751.i, 32
  %.sroa.016.0.insert.ext.i753.i = and i64 %.sroa.016.0.i750.i, 4294967295
  %.sroa.016.0.insert.insert.i754.i = or disjoint i64 %.sroa.5.0.insert.shift.i752.i, %.sroa.016.0.insert.ext.i753.i ; 2 uses
  %indvars.iv.next1607.i = add nsw i64 %indvars.iv1606.i, 1 ; 2 uses
  %exitcond.not.i232 = icmp eq i64 %indvars.iv.next1607.i, %wide.trip.count.i231
  br i1 %exitcond.not.i232, label %._crit_edge1491.i, label %.lr.ph1490.i, !llvm.loop !207

._crit_edge1491.i:                                ; preds = %av_add_sf.exit787.i
  %i.bbd = load i32, ptr %i.ma, align 16, !tbaa !60 ; 4 uses
  %.sroa.09.0.extract.trunc.i788.i = trunc i64 %.sroa.016.0.i706.i to i32 ; 2 uses
  %.sroa.4.0.extract.trunc.i790.i = trunc nuw i64 %.sroa.5.0.i707.i to i32 ; 4 uses
  %.neg.i233 = add nsw i32 %.sroa.4.0.extract.trunc.i790.i, 16
  %i.bbe = sub nuw nsw i32 -16, %.sroa.4.0.extract.trunc.i790.i
  %i.bbf = icmp sgt i32 %.sroa.4.0.extract.trunc.i790.i, 15
  br i1 %i.bbf, label %av_add_sf.exit828.i, label %bb.ds

bb.ds:                                            ; preds = %._crit_edge1491.i
  %i.bbg = icmp sgt i32 %.sroa.4.0.extract.trunc.i790.i, -16
  br i1 %i.bbg, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.bbh = lshr i32 703687442, %.neg.i233
  %i.bbi = add nsw i32 %i.bbh, %.sroa.09.0.extract.trunc.i788.i ; 2 uses
  %i.bbj = add i32 %i.bbi, 1073741824
  %i.bbk = icmp slt i32 %i.bbj, 1                 ; 2 uses
  %i.bbl = zext i1 %i.bbk to i32
  %.sroa.0.0.i.i812.i = ashr i32 %i.bbi, %i.bbl   ; 4 uses
  %.not.i.i813.i = icmp eq i32 %.sroa.0.0.i.i812.i, 0
  br i1 %.not.i.i813.i, label %av_normalize_sf.exit.i822.i, label %.preheader.i.i814.i

.preheader.i.i814.i:                              ; preds = %bb.dt
  %i.bbm = zext i1 %i.bbk to i64
  %.sroa.5.0.i.i815.i = add nuw nsw i64 %.sroa.5.0.i707.i, %i.bbm
  %.sroa.8.0.extract.trunc.i.i816.i = trunc i64 %.sroa.5.0.i.i815.i to i32 ; 2 uses
  %i.bbn = add i32 %.sroa.0.0.i.i812.i, 536870911
  %i.bbo = icmp ult i32 %i.bbn, 1073741823
  br i1 %i.bbo, label %.lr.ph.i.i825.i, label %._crit_edge.i.i817.i

.lr.ph.i.i825.i:                                  ; preds = %.preheader.i.i814.i, %.lr.ph.i.i825.i
  %.sroa.0.08.i.i826.i = phi i32 [ %i.bbp, %.lr.ph.i.i825.i ], [ %.sroa.0.0.i.i812.i, %.preheader.i.i814.i ]
  %.sroa.8.07.i.i827.i = phi i32 [ %i.bbq, %.lr.ph.i.i825.i ], [ %.sroa.8.0.extract.trunc.i.i816.i, %.preheader.i.i814.i ]
  %i.bbp = shl nsw i32 %.sroa.0.08.i.i826.i, 1    ; 3 uses
  %i.bbq = add nsw i32 %.sroa.8.07.i.i827.i, -1   ; 2 uses
  %i.bbr = add nsw i32 %i.bbp, 536870911
  %i.bbs = icmp ult i32 %i.bbr, 1073741823
  br i1 %i.bbs, label %.lr.ph.i.i825.i, label %._crit_edge.i.i817.i, !llvm.loop !196

._crit_edge.i.i817.i:                             ; preds = %.lr.ph.i.i825.i, %.preheader.i.i814.i
  %.sroa.8.0.lcssa.i.i818.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i816.i, %.preheader.i.i814.i ], [ %i.bbq, %.lr.ph.i.i825.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i819.i = phi i32 [ %.sroa.0.0.i.i812.i, %.preheader.i.i814.i ], [ %i.bbp, %.lr.ph.i.i825.i ]
  %i.bbt = icmp slt i32 %.sroa.8.0.lcssa.i.i818.i, -149
  %spec.select.i.i820.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i818.i, i32 -149)
  %spec.select6.i.i821.i = select i1 %i.bbt, i32 0, i32 %.sroa.0.0.lcssa.i.i819.i
  %i.bbu = zext i32 %spec.select.i.i820.i to i64
  %i.bbv = shl nuw i64 %i.bbu, 32
  %i.bbw = zext i32 %spec.select6.i.i821.i to i64
  %i.bbx = or disjoint i64 %i.bbv, %i.bbw
  br label %av_normalize_sf.exit.i822.i

av_normalize_sf.exit.i822.i:                      ; preds = %._crit_edge.i.i817.i, %bb.dt
  %.sroa.05.0.insert.insert.i.i823.i = phi i64 [ -639950127104, %bb.dt ], [ %i.bbx, %._crit_edge.i.i817.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i824.i = lshr i64 %.sroa.05.0.insert.insert.i.i823.i, 32
  br label %av_add_sf.exit828.i

bb.du:                                            ; preds = %bb.ds
  %6 = icmp samesign ugt i64 %.sroa.5.0.i707.i, 4294967248
  br i1 %6, label %bb.dv, label %av_add_sf.exit828.i

bb.dv:                                            ; preds = %bb.du
  %i.bby = ashr i32 %.sroa.09.0.extract.trunc.i788.i, %i.bbe ; 2 uses
  %i.bbz = add nsw i32 %i.bby, 703687442
  %i.bca = add i32 %i.bby, 1777429266
  %i.bcb = icmp slt i32 %i.bca, 1                 ; 2 uses
  %i.bcc = zext i1 %i.bcb to i32
  %.sroa.0.0.i24.i796.i = ashr i32 %i.bbz, %i.bcc ; 4 uses
  %.not.i29.i797.i = icmp eq i32 %.sroa.0.0.i24.i796.i, 0
  br i1 %.not.i29.i797.i, label %av_normalize_sf.exit41.i806.i, label %.preheader.i30.i798.i

.preheader.i30.i798.i:                            ; preds = %bb.dv
  %.sroa.8.0.extract.trunc.i31.i800.i = select i1 %i.bcb, i32 -15, i32 -16 ; 2 uses
  %i.bcd = add i32 %.sroa.0.0.i24.i796.i, 536870911
  %i.bce = icmp ult i32 %i.bcd, 1073741823
  br i1 %i.bce, label %.lr.ph.i38.i809.i, label %._crit_edge.i32.i801.i

.lr.ph.i38.i809.i:                                ; preds = %.preheader.i30.i798.i, %.lr.ph.i38.i809.i
  %.sroa.0.08.i39.i810.i = phi i32 [ %i.bcf, %.lr.ph.i38.i809.i ], [ %.sroa.0.0.i24.i796.i, %.preheader.i30.i798.i ]
  %.sroa.8.07.i40.i811.i = phi i32 [ %i.bcg, %.lr.ph.i38.i809.i ], [ %.sroa.8.0.extract.trunc.i31.i800.i, %.preheader.i30.i798.i ]
  %i.bcf = shl nsw i32 %.sroa.0.08.i39.i810.i, 1  ; 3 uses
  %i.bcg = add nsw i32 %.sroa.8.07.i40.i811.i, -1 ; 2 uses
  %i.bch = add nsw i32 %i.bcf, 536870911
  %i.bci = icmp ult i32 %i.bch, 1073741823
  br i1 %i.bci, label %.lr.ph.i38.i809.i, label %._crit_edge.i32.i801.i, !llvm.loop !196

._crit_edge.i32.i801.i:                           ; preds = %.lr.ph.i38.i809.i, %.preheader.i30.i798.i
  %.sroa.8.0.lcssa.i33.i802.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i800.i, %.preheader.i30.i798.i ], [ %i.bcg, %.lr.ph.i38.i809.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i803.i = phi i32 [ %.sroa.0.0.i24.i796.i, %.preheader.i30.i798.i ], [ %i.bcf, %.lr.ph.i38.i809.i ]
  %i.bcj = icmp slt i32 %.sroa.8.0.lcssa.i33.i802.i, -149
  %spec.select.i35.i804.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i802.i, i32 -149)
  %spec.select6.i36.i805.i = select i1 %i.bcj, i32 0, i32 %.sroa.0.0.lcssa.i34.i803.i
  %i.bck = zext i32 %spec.select.i35.i804.i to i64
  %i.bcl = shl nuw i64 %i.bck, 32
  %i.bcm = zext i32 %spec.select6.i36.i805.i to i64
  %i.bcn = or disjoint i64 %i.bcl, %i.bcm
  br label %av_normalize_sf.exit41.i806.i

av_normalize_sf.exit41.i806.i:                    ; preds = %._crit_edge.i32.i801.i, %bb.dv
  %.sroa.05.0.insert.insert.i37.i807.i = phi i64 [ -639950127104, %bb.dv ], [ %i.bcn, %._crit_edge.i32.i801.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i808.i = lshr i64 %.sroa.05.0.insert.insert.i37.i807.i, 32
  br label %av_add_sf.exit828.i

av_add_sf.exit828.i:                              ; preds = %av_normalize_sf.exit41.i806.i, %bb.du, %av_normalize_sf.exit.i822.i, %._crit_edge1491.i
  %.sroa.016.0.i791.i = phi i64 [ %.sroa.016.0.insert.insert.i710.i, %._crit_edge1491.i ], [ %.sroa.05.0.insert.insert.i.i823.i, %av_normalize_sf.exit.i822.i ], [ %.sroa.05.0.insert.insert.i37.i807.i, %av_normalize_sf.exit41.i806.i ], [ -68015789294, %bb.du ] ; 4 uses
  %.sroa.5.0.i792.i = phi i64 [ %.sroa.5.0.i707.i, %._crit_edge1491.i ], [ %.sroa.5.0.extract.shift.i824.i, %av_normalize_sf.exit.i822.i ], [ %.sroa.5.0.extract.shift18.i808.i, %av_normalize_sf.exit41.i806.i ], [ 4294967280, %bb.du ] ; 4 uses
  %.sroa.09.0.extract.trunc.i829.i = trunc i64 %.sroa.016.0.i750.i to i32 ; 2 uses
  %.sroa.4.0.extract.trunc.i831.i = trunc nuw i64 %.sroa.5.0.i751.i to i32 ; 4 uses
  %.neg1363.i = add nsw i32 %.sroa.4.0.extract.trunc.i831.i, 16
  %i.bco = sub nuw nsw i32 -16, %.sroa.4.0.extract.trunc.i831.i
  %i.bcp = icmp sgt i32 %.sroa.4.0.extract.trunc.i831.i, 15
  br i1 %i.bcp, label %av_add_sf.exit869.i, label %bb.dw

bb.dw:                                            ; preds = %av_add_sf.exit828.i
  %i.bcq = icmp sgt i32 %.sroa.4.0.extract.trunc.i831.i, -16
  br i1 %i.bcq, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.bcr = lshr i32 703687442, %.neg1363.i
  %i.bcs = add nsw i32 %i.bcr, %.sroa.09.0.extract.trunc.i829.i ; 2 uses
  %i.bct = add i32 %i.bcs, 1073741824
  %i.bcu = icmp slt i32 %i.bct, 1                 ; 2 uses
  %i.bcv = zext i1 %i.bcu to i32
  %.sroa.0.0.i.i853.i = ashr i32 %i.bcs, %i.bcv   ; 4 uses
  %.not.i.i854.i = icmp eq i32 %.sroa.0.0.i.i853.i, 0
  br i1 %.not.i.i854.i, label %av_normalize_sf.exit.i863.i, label %.preheader.i.i855.i

.preheader.i.i855.i:                              ; preds = %bb.dx
  %i.bcw = zext i1 %i.bcu to i64
  %.sroa.5.0.i.i856.i = add nuw nsw i64 %.sroa.5.0.i751.i, %i.bcw
  %.sroa.8.0.extract.trunc.i.i857.i = trunc i64 %.sroa.5.0.i.i856.i to i32 ; 2 uses
  %i.bcx = add i32 %.sroa.0.0.i.i853.i, 536870911
  %i.bcy = icmp ult i32 %i.bcx, 1073741823
  br i1 %i.bcy, label %.lr.ph.i.i866.i, label %._crit_edge.i.i858.i

.lr.ph.i.i866.i:                                  ; preds = %.preheader.i.i855.i, %.lr.ph.i.i866.i
  %.sroa.0.08.i.i867.i = phi i32 [ %i.bcz, %.lr.ph.i.i866.i ], [ %.sroa.0.0.i.i853.i, %.preheader.i.i855.i ]
  %.sroa.8.07.i.i868.i = phi i32 [ %i.bda, %.lr.ph.i.i866.i ], [ %.sroa.8.0.extract.trunc.i.i857.i, %.preheader.i.i855.i ]
  %i.bcz = shl nsw i32 %.sroa.0.08.i.i867.i, 1    ; 3 uses
  %i.bda = add nsw i32 %.sroa.8.07.i.i868.i, -1   ; 2 uses
  %i.bdb = add nsw i32 %i.bcz, 536870911
  %i.bdc = icmp ult i32 %i.bdb, 1073741823
  br i1 %i.bdc, label %.lr.ph.i.i866.i, label %._crit_edge.i.i858.i, !llvm.loop !196

._crit_edge.i.i858.i:                             ; preds = %.lr.ph.i.i866.i, %.preheader.i.i855.i
  %.sroa.8.0.lcssa.i.i859.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i857.i, %.preheader.i.i855.i ], [ %i.bda, %.lr.ph.i.i866.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i860.i = phi i32 [ %.sroa.0.0.i.i853.i, %.preheader.i.i855.i ], [ %i.bcz, %.lr.ph.i.i866.i ]
  %i.bdd = icmp slt i32 %.sroa.8.0.lcssa.i.i859.i, -149
  %spec.select.i.i861.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i859.i, i32 -149)
  %spec.select6.i.i862.i = select i1 %i.bdd, i32 0, i32 %.sroa.0.0.lcssa.i.i860.i
  %i.bde = zext i32 %spec.select.i.i861.i to i64
  %i.bdf = shl nuw i64 %i.bde, 32
  %i.bdg = zext i32 %spec.select6.i.i862.i to i64
  %i.bdh = or disjoint i64 %i.bdf, %i.bdg
  br label %av_normalize_sf.exit.i863.i

av_normalize_sf.exit.i863.i:                      ; preds = %._crit_edge.i.i858.i, %bb.dx
  %.sroa.05.0.insert.insert.i.i864.i = phi i64 [ -639950127104, %bb.dx ], [ %i.bdh, %._crit_edge.i.i858.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i865.i = lshr i64 %.sroa.05.0.insert.insert.i.i864.i, 32
  br label %av_add_sf.exit869.i

bb.dy:                                            ; preds = %bb.dw
  %7 = icmp samesign ugt i64 %.sroa.5.0.i751.i, 4294967248
  br i1 %7, label %bb.dz, label %av_add_sf.exit869.i

bb.dz:                                            ; preds = %bb.dy
  %i.bdi = ashr i32 %.sroa.09.0.extract.trunc.i829.i, %i.bco ; 2 uses
  %i.bdj = add nsw i32 %i.bdi, 703687442
  %i.bdk = add i32 %i.bdi, 1777429266
  %i.bdl = icmp slt i32 %i.bdk, 1                 ; 2 uses
  %i.bdm = zext i1 %i.bdl to i32
  %.sroa.0.0.i24.i837.i = ashr i32 %i.bdj, %i.bdm ; 4 uses
  %.not.i29.i838.i = icmp eq i32 %.sroa.0.0.i24.i837.i, 0
  br i1 %.not.i29.i838.i, label %av_normalize_sf.exit41.i847.i, label %.preheader.i30.i839.i

.preheader.i30.i839.i:                            ; preds = %bb.dz
  %.sroa.8.0.extract.trunc.i31.i841.i = select i1 %i.bdl, i32 -15, i32 -16 ; 2 uses
  %i.bdn = add i32 %.sroa.0.0.i24.i837.i, 536870911
  %i.bdo = icmp ult i32 %i.bdn, 1073741823
  br i1 %i.bdo, label %.lr.ph.i38.i850.i, label %._crit_edge.i32.i842.i

.lr.ph.i38.i850.i:                                ; preds = %.preheader.i30.i839.i, %.lr.ph.i38.i850.i
  %.sroa.0.08.i39.i851.i = phi i32 [ %i.bdp, %.lr.ph.i38.i850.i ], [ %.sroa.0.0.i24.i837.i, %.preheader.i30.i839.i ]
  %.sroa.8.07.i40.i852.i = phi i32 [ %i.bdq, %.lr.ph.i38.i850.i ], [ %.sroa.8.0.extract.trunc.i31.i841.i, %.preheader.i30.i839.i ]
  %i.bdp = shl nsw i32 %.sroa.0.08.i39.i851.i, 1  ; 3 uses
  %i.bdq = add nsw i32 %.sroa.8.07.i40.i852.i, -1 ; 2 uses
  %i.bdr = add nsw i32 %i.bdp, 536870911
  %i.bds = icmp ult i32 %i.bdr, 1073741823
  br i1 %i.bds, label %.lr.ph.i38.i850.i, label %._crit_edge.i32.i842.i, !llvm.loop !196

._crit_edge.i32.i842.i:                           ; preds = %.lr.ph.i38.i850.i, %.preheader.i30.i839.i
  %.sroa.8.0.lcssa.i33.i843.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i841.i, %.preheader.i30.i839.i ], [ %i.bdq, %.lr.ph.i38.i850.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i844.i = phi i32 [ %.sroa.0.0.i24.i837.i, %.preheader.i30.i839.i ], [ %i.bdp, %.lr.ph.i38.i850.i ]
  %i.bdt = icmp slt i32 %.sroa.8.0.lcssa.i33.i843.i, -149
  %spec.select.i35.i845.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i843.i, i32 -149)
  %spec.select6.i36.i846.i = select i1 %i.bdt, i32 0, i32 %.sroa.0.0.lcssa.i34.i844.i
  %i.bdu = zext i32 %spec.select.i35.i845.i to i64
  %i.bdv = shl nuw i64 %i.bdu, 32
  %i.bdw = zext i32 %spec.select6.i36.i846.i to i64
  %i.bdx = or disjoint i64 %i.bdv, %i.bdw
  br label %av_normalize_sf.exit41.i847.i

av_normalize_sf.exit41.i847.i:                    ; preds = %._crit_edge.i32.i842.i, %bb.dz
  %.sroa.05.0.insert.insert.i37.i848.i = phi i64 [ -639950127104, %bb.dz ], [ %i.bdx, %._crit_edge.i32.i842.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i849.i = lshr i64 %.sroa.05.0.insert.insert.i37.i848.i, 32
  br label %av_add_sf.exit869.i

av_add_sf.exit869.i:                              ; preds = %av_normalize_sf.exit41.i847.i, %bb.dy, %av_normalize_sf.exit.i863.i, %av_add_sf.exit828.i, %.thread1705.i
  %.sroa.5.0.i7921690.i = phi i64 [ %.sroa.5.0.i792.i, %av_add_sf.exit828.i ], [ %.sroa.5.0.i792.i, %av_normalize_sf.exit.i863.i ], [ %.sroa.5.0.i792.i, %av_normalize_sf.exit41.i847.i ], [ %.sroa.5.0.i792.i, %bb.dy ], [ 4294967280, %.thread1705.i ]
  %.sroa.016.0.i7911688.i = phi i64 [ %.sroa.016.0.i791.i, %av_add_sf.exit828.i ], [ %.sroa.016.0.i791.i, %av_normalize_sf.exit.i863.i ], [ %.sroa.016.0.i791.i, %av_normalize_sf.exit41.i847.i ], [ %.sroa.016.0.i791.i, %bb.dy ], [ -68015789294, %.thread1705.i ]
  %.pn.in.i = phi i32 [ %i.bbd, %av_add_sf.exit828.i ], [ %i.bbd, %av_normalize_sf.exit.i863.i ], [ %i.bbd, %av_normalize_sf.exit41.i847.i ], [ %i.bbd, %bb.dy ], [ %i.axu, %.thread1705.i ]
  %.sroa.016.0.i832.i = phi i64 [ %.sroa.016.0.insert.insert.i754.i, %av_add_sf.exit828.i ], [ %.sroa.05.0.insert.insert.i.i864.i, %av_normalize_sf.exit.i863.i ], [ %.sroa.05.0.insert.insert.i37.i848.i, %av_normalize_sf.exit41.i847.i ], [ -68015789294, %bb.dy ], [ -68015789294, %.thread1705.i ]
  %.sroa.5.0.i833.i = phi i64 [ %.sroa.5.0.i751.i, %av_add_sf.exit828.i ], [ %.sroa.5.0.extract.shift.i865.i, %av_normalize_sf.exit.i863.i ], [ %.sroa.5.0.extract.shift18.i849.i, %av_normalize_sf.exit41.i847.i ], [ 4294967280, %bb.dy ], [ 4294967280, %.thread1705.i ]
  %.pn.i = zext i32 %.pn.in.i to i64
  %i.bdy = getelementptr inbounds nuw [8 x i8], ptr @sbr_gain_calc.limgain, i64 %.pn.i
  %.sroa.9.0.extract.trunc.i871.i = trunc nuw i64 %.sroa.5.0.i7921690.i to i32
  %.sroa.2.0.extract.trunc.i873.i = trunc nuw i64 %.sroa.5.0.i833.i to i32
  %sext.i874.i = shl i64 %.sroa.016.0.i7911688.i, 32
  %i.bdz = ashr exact i64 %sext.i874.i, 2
  %sext18.i875.i = shl i64 %.sroa.016.0.i832.i, 32
  %i.bea = ashr exact i64 %sext18.i875.i, 32
  %i.beb = sdiv i64 %i.bdz, %i.bea                ; 3 uses
  %i.bec = sub nsw i32 %.sroa.9.0.extract.trunc.i871.i, %.sroa.2.0.extract.trunc.i873.i ; 2 uses
  %i.bed = add nsw i64 %i.beb, 2147483648
  %.not20.i876.i = icmp ult i64 %i.bed, 4294967296
  br i1 %.not20.i876.i, label %av_div_sf.exit893.i, label %.lr.ph.i877.i

.lr.ph.i877.i:                                    ; preds = %av_add_sf.exit869.i, %.lr.ph.i877.i
  %.022.i878.i = phi i64 [ %i.bee, %.lr.ph.i877.i ], [ %i.beb, %av_add_sf.exit869.i ]
  %.sroa.9.021.i879.i = phi i32 [ %i.bef, %.lr.ph.i877.i ], [ %i.bec, %av_add_sf.exit869.i ]
  %i.bee = sdiv i64 %.022.i878.i, 2               ; 3 uses
  %i.bef = add nsw i32 %.sroa.9.021.i879.i, -1    ; 2 uses
  %i.beg = add nsw i64 %i.bee, 2147483648
  %.not.i880.i = icmp ult i64 %i.beg, 4294967296
  br i1 %.not.i880.i, label %av_div_sf.exit893.i, label %.lr.ph.i877.i, !llvm.loop !153

av_div_sf.exit893.i:                              ; preds = %.lr.ph.i877.i, %av_add_sf.exit869.i
  %.sroa.9.0.lcssa.i881.i = phi i32 [ %i.bec, %av_add_sf.exit869.i ], [ %i.bef, %.lr.ph.i877.i ]
  %.0.lcssa.i882.i = phi i64 [ %i.beb, %av_add_sf.exit869.i ], [ %i.bee, %.lr.ph.i877.i ]
  %.sroa.9.0.insert.ext.i883.i = zext i32 %.sroa.9.0.lcssa.i881.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i884.i = trunc nsw i64 %.0.lcssa.i882.i to i32 ; 2 uses
  %i.beh = add i32 %.sroa.0.0.extract.trunc.i.i884.i, 1073741824
  %i.bei = icmp slt i32 %i.beh, 1                 ; 2 uses
  %i.bej = add nuw nsw i64 %.sroa.9.0.insert.ext.i883.i, 1
  %i.bek = and i64 %i.bej, 4294967295
  %.sroa.5.0.i.i885.i = select i1 %i.bei, i64 %i.bek, i64 %.sroa.9.0.insert.ext.i883.i ; 2 uses
  %i.bel = zext i1 %i.bei to i32
  %.sroa.0.0.i.i886.i = ashr i32 %.sroa.0.0.extract.trunc.i.i884.i, %i.bel ; 2 uses
  %.sroa.2.0.insert.shift.i.i887.i = shl nuw i64 %.sroa.5.0.i.i885.i, 32
  %.sroa.02.0.insert.ext.i.i888.i = zext i32 %.sroa.0.0.i.i886.i to i64
  %.sroa.02.0.insert.insert.i.i889.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i887.i, %.sroa.02.0.insert.ext.i.i888.i
  %.sroa.9.0.extract.trunc14.i890.i = trunc nuw i64 %.sroa.5.0.i.i885.i to i32
  %i.bem = icmp eq i32 %.sroa.0.0.i.i886.i, 0
  %i.ben = icmp slt i32 %.sroa.9.0.extract.trunc14.i890.i, -149
  %or.cond.i891.i = select i1 %i.bem, i1 true, i1 %i.ben
  %..i892.i = select i1 %or.cond.i891.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i889.i ; 3 uses
  %.sroa.0.0.extract.trunc.i265.i = trunc i64 %..i892.i to i32 ; 3 uses
  %.sroa.12.0.extract.shift.i266.i = lshr i64 %..i892.i, 32 ; 2 uses
  %.sroa.12.0.extract.trunc.i267.i = trunc nuw i64 %.sroa.12.0.extract.shift.i266.i to i32 ; 2 uses
  %i.beo = icmp eq i32 %.sroa.0.0.extract.trunc.i265.i, 0
  br i1 %i.beo, label %av_sqrt_sf.exit271.i, label %bb.ea

bb.ea:                                            ; preds = %av_div_sf.exit893.i
  %i.bep = icmp slt i32 %.sroa.0.0.extract.trunc.i265.i, 0
  br i1 %i.bep, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  tail call void @abort() #13
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.beq = add nsw i32 %.sroa.0.0.extract.trunc.i265.i, -536870912
  %i.ber = ashr i32 %i.beq, 20
  %i.bes = and i64 %..i892.i, 1048575             ; 2 uses
  %i.bet = sext i32 %i.ber to i64
  %i.beu = getelementptr inbounds [4 x i8], ptr @av_sqrttbl_sf, i64 %i.bet ; 2 uses
  %i.bev = load i32, ptr %i.beu, align 4, !tbaa !13
  %i.bew = sext i32 %i.bev to i64
  %i.bex = sub nuw nsw i64 1048576, %i.bes
  %i.bey = mul nsw i64 %i.bex, %i.bew
  %i.bez = getelementptr i8, ptr %i.beu, i64 4
  %i.bfa = load i32, ptr %i.bez, align 4, !tbaa !13
  %i.bfb = sext i32 %i.bfa to i64
  %i.bfc = mul nsw i64 %i.bes, %i.bfb
  %i.bfd = add nsw i64 %i.bfc, %i.bey
  %i.bfe = and i64 %.sroa.12.0.extract.shift.i266.i, 1
  %i.bff = getelementptr inbounds nuw [4 x i8], ptr @av_sqr_exp_multbl_sf, i64 %i.bfe
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !13
  %i.bfh = sext i32 %i.bfg to i64
  %i.bfi = shl i64 %i.bfd, 12
  %i.bfj = add i64 %i.bfi, 2147483648
  %i.bfk = ashr i64 %i.bfj, 32
  %i.bfl = mul nsw i64 %i.bfk, %i.bfh
  %i.bfm = add nsw i64 %i.bfl, 268435456
  %i.bfn = lshr i64 %i.bfm, 29
  %i.bfo = trunc i64 %i.bfn to i32                ; 2 uses
  %i.bfp = icmp sgt i32 %i.bfo, 1073741823        ; 2 uses
  %i.bfq = add nsw i32 %.sroa.12.0.extract.trunc.i267.i, -2
  %i.bfr = zext i1 %i.bfp to i32
  %.sroa.0.0.i268.i = lshr i32 %i.bfo, %i.bfr
  %.sroa.12.0.i269.i = select i1 %i.bfp, i32 %.sroa.12.0.extract.trunc.i267.i, i32 %i.bfq
  %i.bfs = ashr i32 %.sroa.12.0.i269.i, 1
  %i.bft = add nsw i32 %i.bfs, 1
  %i.bfu = zext i32 %i.bft to i64
  %i.bfv = shl nuw i64 %i.bfu, 32
  %i.bfw = zext i32 %.sroa.0.0.i268.i to i64
  %i.bfx = or disjoint i64 %i.bfv, %i.bfw
  br label %av_sqrt_sf.exit271.i

av_sqrt_sf.exit271.i:                             ; preds = %bb.ec, %av_div_sf.exit893.i
  %.sroa.012.0.insert.insert.i270.i = phi i64 [ %i.bfx, %bb.ec ], [ -639950127104, %av_div_sf.exit893.i ] ; 2 uses
  %i.bfy = load i64, ptr %i.bdy, align 8          ; 2 uses
  %.sroa.25.0.extract.shift.i894.i = and i64 %.sroa.012.0.insert.insert.i270.i, -4294967296
  %sext.i895.i = shl i64 %i.bfy, 32
  %i.bfz = ashr exact i64 %sext.i895.i, 32
  %sext15.i896.i = shl i64 %.sroa.012.0.insert.insert.i270.i, 32
  %i.bga = ashr exact i64 %sext15.i896.i, 32
  %i.bgb = mul nsw i64 %i.bfz, %i.bga
  %i.bgc = lshr i64 %i.bgb, 29
  %i.bgd = add i64 %i.bfy, -4294967296
  %.sroa.0.0.insert.insert.i897.i = add i64 %i.bgd, %.sroa.25.0.extract.shift.i894.i
  %.sroa.0.0.extract.trunc.i.i898.i = trunc i64 %i.bgc to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i899.i = lshr i64 %.sroa.0.0.insert.insert.i897.i, 32 ; 2 uses
  %i.bge = add i32 %.sroa.0.0.extract.trunc.i.i898.i, 1073741824
  %i.bgf = icmp slt i32 %i.bge, 1                 ; 2 uses
  %i.bgg = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i899.i, 1
  %i.bgh = and i64 %i.bgg, 4294967295
  %.sroa.5.0.i.i900.i = select i1 %i.bgf, i64 %i.bgh, i64 %.sroa.5.0.extract.shift.i.i899.i ; 2 uses
  %i.bgi = zext i1 %i.bgf to i32
  %.sroa.0.0.i.i901.i = ashr i32 %.sroa.0.0.extract.trunc.i.i898.i, %i.bgi ; 2 uses
  %.sroa.2.0.insert.shift.i.i902.i = shl nuw i64 %.sroa.5.0.i.i900.i, 32
  %.sroa.02.0.insert.ext.i.i903.i = zext i32 %.sroa.0.0.i.i901.i to i64
  %.sroa.02.0.insert.insert.i.i904.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i902.i, %.sroa.02.0.insert.ext.i.i903.i
  %.sroa.7.0.extract.trunc11.i905.i = trunc nuw i64 %.sroa.5.0.i.i900.i to i32
  %i.bgj = icmp eq i32 %.sroa.0.0.i.i901.i, 0
  %i.bgk = icmp slt i32 %.sroa.7.0.extract.trunc11.i905.i, -149
  %or.cond.i906.i = select i1 %i.bgj, i1 true, i1 %i.bgk
  %..i907.i = select i1 %or.cond.i906.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i904.i
  %..i907.fr.i = freeze i64 %..i907.i             ; 4 uses
  %.sroa.07.0.extract.trunc.i.i = trunc i64 %..i907.fr.i to i32 ; 3 uses
  %.sroa.410.0.extract.shift.i.i = lshr i64 %..i907.fr.i, 32
  %.sroa.410.0.extract.trunc.i.i = trunc nuw i64 %.sroa.410.0.extract.shift.i.i to i32 ; 4 uses
  %i.bgl = add nsw i32 %.sroa.410.0.extract.trunc.i.i, -17
  %i.bgm = icmp slt i32 %.sroa.410.0.extract.trunc.i.i, -14
  br i1 %i.bgm, label %av_gt_sf.exit.thread.i, label %bb.ed

bb.ed:                                            ; preds = %av_sqrt_sf.exit271.i
  %i.bgn = icmp slt i32 %.sroa.410.0.extract.trunc.i.i, 17
  br i1 %i.bgn, label %av_gt_sf.exit.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.bgo = icmp ult i64 %..i907.fr.i, 210453397504
  br i1 %i.bgo, label %.split1710.i, label %.split.i

.split1710.i:                                     ; preds = %bb.ee
  %i.bgp = lshr i32 819200000, %i.bgl
  %.fr.i = freeze i32 %i.bgp
  %i.bgq = icmp slt i32 %.fr.i, %.sroa.07.0.extract.trunc.i.i
  br i1 %i.bgq, label %bb.ef, label %av_gt_sf.exit.thread.i

.split.i:                                         ; preds = %bb.ee
  %i.bgr = icmp sgt i32 %.sroa.07.0.extract.trunc.i.i, 0
  br i1 %i.bgr, label %bb.ef, label %av_gt_sf.exit.thread.i
end_hunk_0
begin_hunk_1_@ff_aac_sbr_apply_fixed:bb.a
  %.not.i230 = icmp slt i32 %i.bio, %.sroa.07.0.extract.trunc.i946.i
  br i1 %.not.i230, label %bb.ej, label %bb.ek

.split1713.i:                                     ; preds = %bb.ei
  %i.bip = icmp slt i32 %.sroa.07.0.extract.trunc.i946.i, 1
  br i1 %i.bip, label %bb.ek, label %bb.ej

av_gt_sf.exit953.i:                               ; preds = %bb.eh
  %i.biq = sub nsw i32 0, %i.bij
  %i.bir = ashr i32 %.sroa.07.0.extract.trunc.i946.i, %i.biq
  %.not1890.i = icmp sgt i32 %i.bir, %.sroa.0.0.extract.trunc.i949.i
  br i1 %.not1890.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %av_gt_sf.exit953.i, %.split1713.i, %.split1714.i, %.split1712.i
  store i64 %..i944.i, ptr %i.bhg, align 8
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %av_gt_sf.exit953.i, %.split1713.i, %.split1714.i, %.split1712.i
  %.sroa.07.0.extract.trunc.i954.i = trunc i64 %i.bht to i32 ; 3 uses
  %i.bis = sub nsw i32 %.sroa.2.0.extract.trunc.i925.i, %.sroa.4.0.extract.trunc.i959.i ; 5 uses
  %i.bit = icmp slt i32 %i.bis, -31
  br i1 %i.bit, label %av_gt_sf.exit962.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.biu = icmp slt i32 %i.bis, 0
  br i1 %i.biu, label %.split1716.i, label %bb.em

.split1716.i:                                     ; preds = %bb.el
  %i.biv = sub nsw i32 0, %i.bis
  %i.biw = ashr i32 %.sroa.07.0.extract.trunc.i954.i, %i.biv
  %.not1892.i = icmp sgt i32 %i.biw, %.sroa.0.0.extract.trunc.i957.i
  br i1 %.not1892.i, label %bb.en, label %bb.eo

bb.em:                                            ; preds = %bb.el
  %i.bix = icmp samesign ult i32 %i.bis, 32
  br i1 %i.bix, label %.split1717.i, label %.split1715.i

.split1717.i:                                     ; preds = %bb.em
  %i.biy = ashr i32 %.sroa.0.0.extract.trunc.i957.i, %i.bis
  %.not1891.i = icmp slt i32 %i.biy, %.sroa.07.0.extract.trunc.i954.i
  br i1 %.not1891.i, label %bb.en, label %bb.eo

.split1715.i:                                     ; preds = %bb.em
  %i.biz = icmp slt i32 %.sroa.07.0.extract.trunc.i954.i, 1
  br i1 %i.biz, label %bb.eo, label %bb.en

av_gt_sf.exit962.i:                               ; preds = %bb.ek
  br i1 %i.bhb, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %av_gt_sf.exit962.i, %.split1715.i, %.split1717.i, %.split1716.i
  store i64 %i.bgv, ptr %i.bhs, align 8
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %av_gt_sf.exit962.i, %.split1715.i, %.split1717.i, %.split1716.i
  %indvars.iv.next1610.i = add nsw i64 %indvars.iv1609.i, 1 ; 2 uses
  %i.bja = load i16, ptr %i.ado, align 2, !tbaa !74
  %i.bjb = zext i16 %i.bja to i32
  %i.bjc = load i32, ptr %i.ky, align 8, !tbaa !13 ; 3 uses
  %i.bjd = sub nsw i32 %i.bjb, %i.bjc             ; 2 uses
  %i.bje = sext i32 %i.bjd to i64
  %i.bjf = icmp slt i64 %indvars.iv.next1610.i, %i.bje
  br i1 %i.bjf, label %bb.eg, label %._crit_edge1497.loopexit.i, !llvm.loop !208

._crit_edge1497.loopexit.i:                       ; preds = %bb.eo
  %.pre1628.i = load i16, ptr %i.adl, align 2, !tbaa !74 ; 2 uses
  %.pre1633.i = zext i16 %.pre1628.i to i32
  %.pre1635.i = sub nsw i32 %.pre1633.i, %i.bjc
  br label %._crit_edge1497.i

._crit_edge1497.i:                                ; preds = %._crit_edge1497.loopexit.i, %bb.ef
  %.pre-phi1636.i = phi i32 [ %.pre1635.i, %._crit_edge1497.loopexit.i ], [ %.pre-phi1632.i, %bb.ef ] ; 2 uses
  %i.bjg = phi i16 [ %.pre1628.i, %._crit_edge1497.loopexit.i ], [ %i.axr, %bb.ef ] ; 2 uses
  %.lcssa1454.i = phi i32 [ %i.bjc, %._crit_edge1497.loopexit.i ], [ %i.axs, %bb.ef ] ; 2 uses
  %.lcssa1453.i = phi i32 [ %i.bjd, %._crit_edge1497.loopexit.i ], [ %i.bgx, %bb.ef ] ; 2 uses
  %i.bjh = icmp slt i32 %.pre-phi1636.i, %.lcssa1453.i
  br i1 %i.bjh, label %.lr.ph1504.preheader.i, label %av_add_sf.exit1276.i

.lr.ph1504.preheader.i:                           ; preds = %._crit_edge1497.i
  %i.bji = sub i32 0, %.lcssa1454.i
  %i.bjj = sext i32 %i.bji to i64
  %i.bjk = zext i16 %i.bjg to i64
  %i.bjl = add nsw i64 %i.bjj, %i.bjk
  %wide.trip.count1615.i = sext i32 %.lcssa1453.i to i64
  br label %.lr.ph1504.i

.lr.ph1504.i:                                     ; preds = %bb.fg, %.lr.ph1504.preheader.i
  %indvars.iv1612.i = phi i64 [ %i.bjl, %.lr.ph1504.preheader.i ], [ %indvars.iv.next1613.i, %bb.fg ] ; 6 uses
  %.sroa.047.11501.i = phi i64 [ -639950127104, %.lr.ph1504.preheader.i ], [ %.sroa.016.0.insert.insert.i973.i, %bb.fg ] ; 3 uses
  %.sroa.10.11500.i = phi i64 [ -639950127104, %.lr.ph1504.preheader.i ], [ %.sroa.10.2.i, %bb.fg ] ; 3 uses
  %i.bjm = getelementptr inbounds [8 x i8], ptr %i.acv, i64 %indvars.iv1612.i
  %i.bjn = load i64, ptr %i.bjm, align 8          ; 3 uses
  %.sroa.012.0.extract.trunc.i963.i = trunc i64 %.sroa.047.11501.i to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i964.i = lshr i64 %.sroa.047.11501.i, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i965.i = trunc nuw i64 %.sroa.414.0.extract.shift.i964.i to i32
  %.sroa.09.0.extract.trunc.i966.i = trunc i64 %i.bjn to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i967.i = lshr i64 %i.bjn, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i968.i = trunc nuw i64 %.sroa.4.0.extract.shift.i967.i to i32
  %i.bjo = sub nsw i32 %.sroa.414.0.extract.trunc.i965.i, %.sroa.4.0.extract.trunc.i968.i ; 5 uses
  %i.bjp = icmp slt i32 %i.bjo, -31
  br i1 %i.bjp, label %av_add_sf.exit1006.i, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph1504.i
  %i.bjq = icmp slt i32 %i.bjo, 0
  br i1 %i.bjq, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.bjr = sub nsw i32 0, %i.bjo
  %i.bjs = ashr i32 %.sroa.012.0.extract.trunc.i963.i, %i.bjr
  %i.bjt = add nsw i32 %i.bjs, %.sroa.09.0.extract.trunc.i966.i ; 2 uses
  %i.bju = add i32 %i.bjt, 1073741824
  %i.bjv = icmp slt i32 %i.bju, 1                 ; 2 uses
  %i.bjw = zext i1 %i.bjv to i32
  %.sroa.0.0.i.i990.i = ashr i32 %i.bjt, %i.bjw   ; 4 uses
  %.not.i.i991.i = icmp eq i32 %.sroa.0.0.i.i990.i, 0
  br i1 %.not.i.i991.i, label %av_normalize_sf.exit.i1000.i, label %.preheader.i.i992.i

.preheader.i.i992.i:                              ; preds = %bb.eq
  %i.bjx = zext i1 %i.bjv to i64
  %.sroa.5.0.i.i993.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i967.i, %i.bjx
  %.sroa.8.0.extract.trunc.i.i994.i = trunc i64 %.sroa.5.0.i.i993.i to i32 ; 2 uses
  %i.bjy = add i32 %.sroa.0.0.i.i990.i, 536870911
  %i.bjz = icmp ult i32 %i.bjy, 1073741823
  br i1 %i.bjz, label %.lr.ph.i.i1003.i, label %._crit_edge.i.i995.i

.lr.ph.i.i1003.i:                                 ; preds = %.preheader.i.i992.i, %.lr.ph.i.i1003.i
  %.sroa.0.08.i.i1004.i = phi i32 [ %i.bka, %.lr.ph.i.i1003.i ], [ %.sroa.0.0.i.i990.i, %.preheader.i.i992.i ]
  %.sroa.8.07.i.i1005.i = phi i32 [ %i.bkb, %.lr.ph.i.i1003.i ], [ %.sroa.8.0.extract.trunc.i.i994.i, %.preheader.i.i992.i ]
  %i.bka = shl nsw i32 %.sroa.0.08.i.i1004.i, 1   ; 3 uses
  %i.bkb = add nsw i32 %.sroa.8.07.i.i1005.i, -1  ; 2 uses
  %i.bkc = add nsw i32 %i.bka, 536870911
  %i.bkd = icmp ult i32 %i.bkc, 1073741823
  br i1 %i.bkd, label %.lr.ph.i.i1003.i, label %._crit_edge.i.i995.i, !llvm.loop !196

._crit_edge.i.i995.i:                             ; preds = %.lr.ph.i.i1003.i, %.preheader.i.i992.i
  %.sroa.8.0.lcssa.i.i996.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i994.i, %.preheader.i.i992.i ], [ %i.bkb, %.lr.ph.i.i1003.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i997.i = phi i32 [ %.sroa.0.0.i.i990.i, %.preheader.i.i992.i ], [ %i.bka, %.lr.ph.i.i1003.i ]
  %i.bke = icmp slt i32 %.sroa.8.0.lcssa.i.i996.i, -149
  %spec.select.i.i998.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i996.i, i32 -149)
  %spec.select6.i.i999.i = select i1 %i.bke, i32 0, i32 %.sroa.0.0.lcssa.i.i997.i
  %i.bkf = zext i32 %spec.select.i.i998.i to i64
  %i.bkg = shl nuw i64 %i.bkf, 32
  %i.bkh = zext i32 %spec.select6.i.i999.i to i64
  %i.bki = or disjoint i64 %i.bkg, %i.bkh
  br label %av_normalize_sf.exit.i1000.i

av_normalize_sf.exit.i1000.i:                     ; preds = %._crit_edge.i.i995.i, %bb.eq
  %.sroa.05.0.insert.insert.i.i1001.i = phi i64 [ -639950127104, %bb.eq ], [ %i.bki, %._crit_edge.i.i995.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i1002.i = lshr i64 %.sroa.05.0.insert.insert.i.i1001.i, 32
  br label %av_add_sf.exit1006.i

bb.er:                                            ; preds = %bb.ep
  %i.bkj = icmp samesign ult i32 %i.bjo, 32
  br i1 %i.bkj, label %bb.es, label %av_add_sf.exit1006.i

bb.es:                                            ; preds = %bb.er
  %i.bkk = ashr i32 %.sroa.09.0.extract.trunc.i966.i, %i.bjo
  %i.bkl = add nsw i32 %i.bkk, %.sroa.012.0.extract.trunc.i963.i ; 2 uses
  %i.bkm = add i32 %i.bkl, 1073741824
  %i.bkn = icmp slt i32 %i.bkm, 1                 ; 2 uses
  %i.bko = zext i1 %i.bkn to i32
  %.sroa.0.0.i24.i974.i = ashr i32 %i.bkl, %i.bko ; 4 uses
  %.not.i29.i975.i = icmp eq i32 %.sroa.0.0.i24.i974.i, 0
  br i1 %.not.i29.i975.i, label %av_normalize_sf.exit41.i984.i, label %.preheader.i30.i976.i

.preheader.i30.i976.i:                            ; preds = %bb.es
  %i.bkp = zext i1 %i.bkn to i64
  %.sroa.5.0.i23.i977.i = add nuw nsw i64 %.sroa.414.0.extract.shift.i964.i, %i.bkp
  %.sroa.8.0.extract.trunc.i31.i978.i = trunc i64 %.sroa.5.0.i23.i977.i to i32 ; 2 uses
  %i.bkq = add i32 %.sroa.0.0.i24.i974.i, 536870911
  %i.bkr = icmp ult i32 %i.bkq, 1073741823
  br i1 %i.bkr, label %.lr.ph.i38.i987.i, label %._crit_edge.i32.i979.i

.lr.ph.i38.i987.i:                                ; preds = %.preheader.i30.i976.i, %.lr.ph.i38.i987.i
  %.sroa.0.08.i39.i988.i = phi i32 [ %i.bks, %.lr.ph.i38.i987.i ], [ %.sroa.0.0.i24.i974.i, %.preheader.i30.i976.i ]
  %.sroa.8.07.i40.i989.i = phi i32 [ %i.bkt, %.lr.ph.i38.i987.i ], [ %.sroa.8.0.extract.trunc.i31.i978.i, %.preheader.i30.i976.i ]
  %i.bks = shl nsw i32 %.sroa.0.08.i39.i988.i, 1  ; 3 uses
  %i.bkt = add nsw i32 %.sroa.8.07.i40.i989.i, -1 ; 2 uses
  %i.bku = add nsw i32 %i.bks, 536870911
  %i.bkv = icmp ult i32 %i.bku, 1073741823
  br i1 %i.bkv, label %.lr.ph.i38.i987.i, label %._crit_edge.i32.i979.i, !llvm.loop !196

._crit_edge.i32.i979.i:                           ; preds = %.lr.ph.i38.i987.i, %.preheader.i30.i976.i
  %.sroa.8.0.lcssa.i33.i980.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i978.i, %.preheader.i30.i976.i ], [ %i.bkt, %.lr.ph.i38.i987.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i981.i = phi i32 [ %.sroa.0.0.i24.i974.i, %.preheader.i30.i976.i ], [ %i.bks, %.lr.ph.i38.i987.i ]
  %i.bkw = icmp slt i32 %.sroa.8.0.lcssa.i33.i980.i, -149
  %spec.select.i35.i982.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i980.i, i32 -149)
  %spec.select6.i36.i983.i = select i1 %i.bkw, i32 0, i32 %.sroa.0.0.lcssa.i34.i981.i
  %i.bkx = zext i32 %spec.select.i35.i982.i to i64
  %i.bky = shl nuw i64 %i.bkx, 32
  %i.bkz = zext i32 %spec.select6.i36.i983.i to i64
  %i.bla = or disjoint i64 %i.bky, %i.bkz
  br label %av_normalize_sf.exit41.i984.i

av_normalize_sf.exit41.i984.i:                    ; preds = %._crit_edge.i32.i979.i, %bb.es
  %.sroa.05.0.insert.insert.i37.i985.i = phi i64 [ -639950127104, %bb.es ], [ %i.bla, %._crit_edge.i32.i979.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i986.i = lshr i64 %.sroa.05.0.insert.insert.i37.i985.i, 32
  br label %av_add_sf.exit1006.i

av_add_sf.exit1006.i:                             ; preds = %av_normalize_sf.exit41.i984.i, %bb.er, %av_normalize_sf.exit.i1000.i, %.lr.ph1504.i
  %.sroa.016.0.i969.i = phi i64 [ %i.bjn, %.lr.ph1504.i ], [ %.sroa.05.0.insert.insert.i.i1001.i, %av_normalize_sf.exit.i1000.i ], [ %.sroa.05.0.insert.insert.i37.i985.i, %av_normalize_sf.exit41.i984.i ], [ %.sroa.047.11501.i, %bb.er ] ; 2 uses
  %.sroa.5.0.i970.i = phi i64 [ %.sroa.4.0.extract.shift.i967.i, %.lr.ph1504.i ], [ %.sroa.5.0.extract.shift.i1002.i, %av_normalize_sf.exit.i1000.i ], [ %.sroa.5.0.extract.shift18.i986.i, %av_normalize_sf.exit41.i984.i ], [ %.sroa.414.0.extract.shift.i964.i, %bb.er ] ; 5 uses
  %.sroa.5.0.insert.shift.i971.i = shl nuw i64 %.sroa.5.0.i970.i, 32
  %.sroa.016.0.insert.ext.i972.i = and i64 %.sroa.016.0.i969.i, 4294967295
  %.sroa.016.0.insert.insert.i973.i = or disjoint i64 %.sroa.5.0.insert.shift.i971.i, %.sroa.016.0.insert.ext.i972.i ; 2 uses
  %i.blb = getelementptr inbounds [8 x i8], ptr %i.add, i64 %indvars.iv1612.i
  %i.blc = getelementptr inbounds [8 x i8], ptr %i.adc, i64 %indvars.iv1612.i
  %i.bld = load i64, ptr %i.blb, align 8          ; 2 uses
  %i.ble = load i64, ptr %i.blc, align 8          ; 2 uses
  %.sroa.25.0.extract.shift.i1007.i = and i64 %i.ble, -4294967296
  %sext.i1008.i = shl i64 %i.bld, 32
  %i.blf = ashr exact i64 %sext.i1008.i, 32
  %sext15.i1009.i = shl i64 %i.ble, 32
  %i.blg = ashr exact i64 %sext15.i1009.i, 32     ; 2 uses
  %i.blh = mul nsw i64 %i.blg, %i.blf
  %i.bli = lshr i64 %i.blh, 29
  %i.blj = add i64 %.sroa.25.0.extract.shift.i1007.i, -4294967296 ; 2 uses
  %.sroa.0.0.insert.insert.i1010.i = add i64 %i.blj, %i.bld
  %.sroa.0.0.extract.trunc.i.i1011.i = trunc i64 %i.bli to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i1012.i = lshr i64 %.sroa.0.0.insert.insert.i1010.i, 32 ; 2 uses
  %i.blk = add i32 %.sroa.0.0.extract.trunc.i.i1011.i, 1073741824
  %i.bll = icmp slt i32 %i.blk, 1                 ; 2 uses
  %i.blm = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i1012.i, 1
  %i.bln = and i64 %i.blm, 4294967295
  %.sroa.5.0.i.i1013.i = select i1 %i.bll, i64 %i.bln, i64 %.sroa.5.0.extract.shift.i.i1012.i ; 2 uses
  %i.blo = zext i1 %i.bll to i32
  %.sroa.0.0.i.i1014.i = ashr i32 %.sroa.0.0.extract.trunc.i.i1011.i, %i.blo ; 2 uses
  %.sroa.2.0.insert.shift.i.i1015.i = shl nuw i64 %.sroa.5.0.i.i1013.i, 32
  %.sroa.02.0.insert.ext.i.i1016.i = zext i32 %.sroa.0.0.i.i1014.i to i64
  %.sroa.02.0.insert.insert.i.i1017.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i1015.i, %.sroa.02.0.insert.ext.i.i1016.i
  %.sroa.7.0.extract.trunc11.i1018.i = trunc nuw i64 %.sroa.5.0.i.i1013.i to i32
  %i.blp = icmp eq i32 %.sroa.0.0.i.i1014.i, 0
  %i.blq = icmp slt i32 %.sroa.7.0.extract.trunc11.i1018.i, -149
  %or.cond.i1019.i = select i1 %i.blp, i1 true, i1 %i.blq
  %..i1020.i = select i1 %or.cond.i1019.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1017.i ; 2 uses
  %sext.i1022.i = shl i64 %..i1020.i, 32
  %i.blr = ashr exact i64 %sext.i1022.i, 32
  %i.bls = mul nsw i64 %i.blr, %i.blg
  %i.blt = lshr i64 %i.bls, 29
  %.sroa.0.0.insert.insert.i1024.i = add i64 %..i1020.i, %i.blj
  %.sroa.0.0.extract.trunc.i.i1025.i = trunc i64 %i.blt to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i1026.i = lshr i64 %.sroa.0.0.insert.insert.i1024.i, 32 ; 2 uses
  %i.blu = add i32 %.sroa.0.0.extract.trunc.i.i1025.i, 1073741824
  %i.blv = icmp slt i32 %i.blu, 1                 ; 2 uses
  %i.blw = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i1026.i, 1
  %i.blx = and i64 %i.blw, 4294967295
  %.sroa.5.0.i.i1027.i = select i1 %i.blv, i64 %i.blx, i64 %.sroa.5.0.extract.shift.i.i1026.i ; 2 uses
  %i.bly = zext i1 %i.blv to i32
  %.sroa.0.0.i.i1028.i = ashr i32 %.sroa.0.0.extract.trunc.i.i1025.i, %i.bly ; 2 uses
  %.sroa.2.0.insert.shift.i.i1029.i = shl nuw i64 %.sroa.5.0.i.i1027.i, 32
  %.sroa.02.0.insert.ext.i.i1030.i = zext i32 %.sroa.0.0.i.i1028.i to i64
  %.sroa.02.0.insert.insert.i.i1031.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i1029.i, %.sroa.02.0.insert.ext.i.i1030.i
  %.sroa.7.0.extract.trunc11.i1032.i = trunc nuw i64 %.sroa.5.0.i.i1027.i to i32
  %i.blz = icmp eq i32 %.sroa.0.0.i.i1028.i, 0
  %i.bma = icmp slt i32 %.sroa.7.0.extract.trunc11.i1032.i, -149
  %or.cond.i1033.i = select i1 %i.blz, i1 true, i1 %i.bma
  %..i1034.i = select i1 %or.cond.i1033.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1031.i ; 3 uses
  %.sroa.012.0.extract.trunc.i1035.i = trunc i64 %.sroa.10.11500.i to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i1036.i = lshr i64 %.sroa.10.11500.i, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i1037.i = trunc nuw i64 %.sroa.414.0.extract.shift.i1036.i to i32
  %.sroa.09.0.extract.trunc.i1038.i = trunc i64 %..i1034.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i1039.i = lshr i64 %..i1034.i, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i1040.i = trunc nuw i64 %.sroa.4.0.extract.shift.i1039.i to i32
  %i.bmb = sub nsw i32 %.sroa.414.0.extract.trunc.i1037.i, %.sroa.4.0.extract.trunc.i1040.i ; 5 uses
  %i.bmc = icmp slt i32 %i.bmb, -31
  br i1 %i.bmc, label %av_add_sf.exit1078.i, label %bb.et

bb.et:                                            ; preds = %av_add_sf.exit1006.i
  %i.bmd = icmp slt i32 %i.bmb, 0
  br i1 %i.bmd, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.bme = sub nsw i32 0, %i.bmb
  %i.bmf = ashr i32 %.sroa.012.0.extract.trunc.i1035.i, %i.bme
  %i.bmg = add nsw i32 %i.bmf, %.sroa.09.0.extract.trunc.i1038.i ; 2 uses
  %i.bmh = add i32 %i.bmg, 1073741824
  %i.bmi = icmp slt i32 %i.bmh, 1                 ; 2 uses
  %i.bmj = zext i1 %i.bmi to i32
  %.sroa.0.0.i.i1062.i = ashr i32 %i.bmg, %i.bmj  ; 4 uses
  %.not.i.i1063.i = icmp eq i32 %.sroa.0.0.i.i1062.i, 0
  br i1 %.not.i.i1063.i, label %av_normalize_sf.exit.i1072.i, label %.preheader.i.i1064.i

.preheader.i.i1064.i:                             ; preds = %bb.eu
  %i.bmk = zext i1 %i.bmi to i64
  %.sroa.5.0.i.i1065.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i1039.i, %i.bmk
  %.sroa.8.0.extract.trunc.i.i1066.i = trunc i64 %.sroa.5.0.i.i1065.i to i32 ; 2 uses
  %i.bml = add i32 %.sroa.0.0.i.i1062.i, 536870911
  %i.bmm = icmp ult i32 %i.bml, 1073741823
  br i1 %i.bmm, label %.lr.ph.i.i1075.i, label %._crit_edge.i.i1067.i

.lr.ph.i.i1075.i:                                 ; preds = %.preheader.i.i1064.i, %.lr.ph.i.i1075.i
  %.sroa.0.08.i.i1076.i = phi i32 [ %i.bmn, %.lr.ph.i.i1075.i ], [ %.sroa.0.0.i.i1062.i, %.preheader.i.i1064.i ]
  %.sroa.8.07.i.i1077.i = phi i32 [ %i.bmo, %.lr.ph.i.i1075.i ], [ %.sroa.8.0.extract.trunc.i.i1066.i, %.preheader.i.i1064.i ]
  %i.bmn = shl nsw i32 %.sroa.0.08.i.i1076.i, 1   ; 3 uses
  %i.bmo = add nsw i32 %.sroa.8.07.i.i1077.i, -1  ; 2 uses
  %i.bmp = add nsw i32 %i.bmn, 536870911
  %i.bmq = icmp ult i32 %i.bmp, 1073741823
  br i1 %i.bmq, label %.lr.ph.i.i1075.i, label %._crit_edge.i.i1067.i, !llvm.loop !196

._crit_edge.i.i1067.i:                            ; preds = %.lr.ph.i.i1075.i, %.preheader.i.i1064.i
  %.sroa.8.0.lcssa.i.i1068.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i1066.i, %.preheader.i.i1064.i ], [ %i.bmo, %.lr.ph.i.i1075.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i1069.i = phi i32 [ %.sroa.0.0.i.i1062.i, %.preheader.i.i1064.i ], [ %i.bmn, %.lr.ph.i.i1075.i ]
  %i.bmr = icmp slt i32 %.sroa.8.0.lcssa.i.i1068.i, -149
  %spec.select.i.i1070.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i1068.i, i32 -149)
  %spec.select6.i.i1071.i = select i1 %i.bmr, i32 0, i32 %.sroa.0.0.lcssa.i.i1069.i
  %i.bms = zext i32 %spec.select.i.i1070.i to i64
  %i.bmt = shl nuw i64 %i.bms, 32
  %i.bmu = zext i32 %spec.select6.i.i1071.i to i64
  %i.bmv = or disjoint i64 %i.bmt, %i.bmu
  br label %av_normalize_sf.exit.i1072.i

av_normalize_sf.exit.i1072.i:                     ; preds = %._crit_edge.i.i1067.i, %bb.eu
  %.sroa.05.0.insert.insert.i.i1073.i = phi i64 [ -639950127104, %bb.eu ], [ %i.bmv, %._crit_edge.i.i1067.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i1074.i = lshr i64 %.sroa.05.0.insert.insert.i.i1073.i, 32
  br label %av_add_sf.exit1078.i

bb.ev:                                            ; preds = %bb.et
  %i.bmw = icmp samesign ult i32 %i.bmb, 32
  br i1 %i.bmw, label %bb.ew, label %av_add_sf.exit1078.i

bb.ew:                                            ; preds = %bb.ev
  %i.bmx = ashr i32 %.sroa.09.0.extract.trunc.i1038.i, %i.bmb
  %i.bmy = add nsw i32 %i.bmx, %.sroa.012.0.extract.trunc.i1035.i ; 2 uses
  %i.bmz = add i32 %i.bmy, 1073741824
  %i.bna = icmp slt i32 %i.bmz, 1                 ; 2 uses
  %i.bnb = zext i1 %i.bna to i32
  %.sroa.0.0.i24.i1046.i = ashr i32 %i.bmy, %i.bnb ; 4 uses
  %.not.i29.i1047.i = icmp eq i32 %.sroa.0.0.i24.i1046.i, 0
  br i1 %.not.i29.i1047.i, label %av_normalize_sf.exit41.i1056.i, label %.preheader.i30.i1048.i

.preheader.i30.i1048.i:                           ; preds = %bb.ew
  %i.bnc = zext i1 %i.bna to i64
  %.sroa.5.0.i23.i1049.i = add nuw nsw i64 %.sroa.414.0.extract.shift.i1036.i, %i.bnc
  %.sroa.8.0.extract.trunc.i31.i1050.i = trunc i64 %.sroa.5.0.i23.i1049.i to i32 ; 2 uses
  %i.bnd = add i32 %.sroa.0.0.i24.i1046.i, 536870911
  %i.bne = icmp ult i32 %i.bnd, 1073741823
  br i1 %i.bne, label %.lr.ph.i38.i1059.i, label %._crit_edge.i32.i1051.i

.lr.ph.i38.i1059.i:                               ; preds = %.preheader.i30.i1048.i, %.lr.ph.i38.i1059.i
  %.sroa.0.08.i39.i1060.i = phi i32 [ %i.bnf, %.lr.ph.i38.i1059.i ], [ %.sroa.0.0.i24.i1046.i, %.preheader.i30.i1048.i ]
  %.sroa.8.07.i40.i1061.i = phi i32 [ %i.bng, %.lr.ph.i38.i1059.i ], [ %.sroa.8.0.extract.trunc.i31.i1050.i, %.preheader.i30.i1048.i ]
  %i.bnf = shl nsw i32 %.sroa.0.08.i39.i1060.i, 1 ; 3 uses
  %i.bng = add nsw i32 %.sroa.8.07.i40.i1061.i, -1 ; 2 uses
  %i.bnh = add nsw i32 %i.bnf, 536870911
  %i.bni = icmp ult i32 %i.bnh, 1073741823
  br i1 %i.bni, label %.lr.ph.i38.i1059.i, label %._crit_edge.i32.i1051.i, !llvm.loop !196

._crit_edge.i32.i1051.i:                          ; preds = %.lr.ph.i38.i1059.i, %.preheader.i30.i1048.i
  %.sroa.8.0.lcssa.i33.i1052.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i1050.i, %.preheader.i30.i1048.i ], [ %i.bng, %.lr.ph.i38.i1059.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i1053.i = phi i32 [ %.sroa.0.0.i24.i1046.i, %.preheader.i30.i1048.i ], [ %i.bnf, %.lr.ph.i38.i1059.i ]
  %i.bnj = icmp slt i32 %.sroa.8.0.lcssa.i33.i1052.i, -149
  %spec.select.i35.i1054.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i1052.i, i32 -149)
  %spec.select6.i36.i1055.i = select i1 %i.bnj, i32 0, i32 %.sroa.0.0.lcssa.i34.i1053.i
  %i.bnk = zext i32 %spec.select.i35.i1054.i to i64
  %i.bnl = shl nuw i64 %i.bnk, 32
  %i.bnm = zext i32 %spec.select6.i36.i1055.i to i64
  %i.bnn = or disjoint i64 %i.bnl, %i.bnm
  br label %av_normalize_sf.exit41.i1056.i

av_normalize_sf.exit41.i1056.i:                   ; preds = %._crit_edge.i32.i1051.i, %bb.ew
  %.sroa.05.0.insert.insert.i37.i1057.i = phi i64 [ -639950127104, %bb.ew ], [ %i.bnn, %._crit_edge.i32.i1051.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i1058.i = lshr i64 %.sroa.05.0.insert.insert.i37.i1057.i, 32
  br label %av_add_sf.exit1078.i

av_add_sf.exit1078.i:                             ; preds = %av_normalize_sf.exit41.i1056.i, %bb.ev, %av_normalize_sf.exit.i1072.i, %av_add_sf.exit1006.i
  %.sroa.016.0.i1041.i = phi i64 [ %..i1034.i, %av_add_sf.exit1006.i ], [ %.sroa.05.0.insert.insert.i.i1073.i, %av_normalize_sf.exit.i1072.i ], [ %.sroa.05.0.insert.insert.i37.i1057.i, %av_normalize_sf.exit41.i1056.i ], [ %.sroa.10.11500.i, %bb.ev ] ; 2 uses
  %.sroa.5.0.i1042.i = phi i64 [ %.sroa.4.0.extract.shift.i1039.i, %av_add_sf.exit1006.i ], [ %.sroa.5.0.extract.shift.i1074.i, %av_normalize_sf.exit.i1072.i ], [ %.sroa.5.0.extract.shift18.i1058.i, %av_normalize_sf.exit41.i1056.i ], [ %.sroa.414.0.extract.shift.i1036.i, %bb.ev ] ; 4 uses
  %.sroa.5.0.insert.shift.i1043.i = shl nuw i64 %.sroa.5.0.i1042.i, 32
  %.sroa.016.0.insert.insert.i1045.i = or i64 %.sroa.5.0.insert.shift.i1043.i, %.sroa.016.0.i1041.i
  %i.bno = getelementptr inbounds [8 x i8], ptr %i.acy, i64 %indvars.iv1612.i
  %i.bnp = load i64, ptr %i.bno, align 8          ; 4 uses
  %.sroa.25.0.extract.shift.i1079.i = and i64 %i.bnp, -4294967296
  %sext.i1080.i = shl i64 %i.bnp, 32
  %i.bnq = ashr exact i64 %sext.i1080.i, 32       ; 2 uses
  %i.bnr = mul nsw i64 %i.bnq, %i.bnq
  %i.bns = lshr i64 %i.bnr, 29
  %i.bnt = add i64 %i.bnp, -4294967296
  %.sroa.0.0.insert.insert.i1082.i = add i64 %i.bnt, %.sroa.25.0.extract.shift.i1079.i
  %.sroa.0.0.extract.trunc.i.i1083.i = trunc i64 %i.bns to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i1084.i = lshr i64 %.sroa.0.0.insert.insert.i1082.i, 32 ; 2 uses
  %i.bnu = add i32 %.sroa.0.0.extract.trunc.i.i1083.i, 1073741824
  %i.bnv = icmp slt i32 %i.bnu, 1                 ; 2 uses
  %i.bnw = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i1084.i, 1
  %i.bnx = and i64 %i.bnw, 4294967295
  %.sroa.5.0.i.i1085.i = select i1 %i.bnv, i64 %i.bnx, i64 %.sroa.5.0.extract.shift.i.i1084.i ; 2 uses
  %i.bny = zext i1 %i.bnv to i32
  %.sroa.0.0.i.i1086.i = ashr i32 %.sroa.0.0.extract.trunc.i.i1083.i, %i.bny ; 2 uses
  %.sroa.2.0.insert.shift.i.i1087.i = shl nuw i64 %.sroa.5.0.i.i1085.i, 32
  %.sroa.02.0.insert.ext.i.i1088.i = zext i32 %.sroa.0.0.i.i1086.i to i64
  %.sroa.02.0.insert.insert.i.i1089.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i1087.i, %.sroa.02.0.insert.ext.i.i1088.i
  %.sroa.7.0.extract.trunc11.i1090.i = trunc nuw i64 %.sroa.5.0.i.i1085.i to i32
  %i.bnz = icmp eq i32 %.sroa.0.0.i.i1086.i, 0
  %i.boa = icmp slt i32 %.sroa.7.0.extract.trunc11.i1090.i, -149
  %or.cond.i1091.i = select i1 %i.bnz, i1 true, i1 %i.boa
  %..i1092.i = select i1 %or.cond.i1091.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1089.i ; 3 uses
  %.sroa.012.0.extract.trunc.i1093.i = trunc i64 %.sroa.016.0.i1041.i to i32 ; 2 uses
  %.sroa.414.0.extract.trunc.i1095.i = trunc nuw i64 %.sroa.5.0.i1042.i to i32
  %.sroa.09.0.extract.trunc.i1096.i = trunc i64 %..i1092.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i1097.i = lshr i64 %..i1092.i, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i1098.i = trunc nuw i64 %.sroa.4.0.extract.shift.i1097.i to i32
  %i.bob = sub nsw i32 %.sroa.414.0.extract.trunc.i1095.i, %.sroa.4.0.extract.trunc.i1098.i ; 5 uses
  %i.boc = icmp slt i32 %i.bob, -31
end_hunk_1
begin_hunk_2_@ff_aac_sbr_apply_fixed:bb.a
  %i.bow = icmp samesign ult i32 %i.bob, 32
  br i1 %i.bow, label %bb.fa, label %av_add_sf.exit1136.i

bb.fa:                                            ; preds = %bb.ez
  %i.box = ashr i32 %.sroa.09.0.extract.trunc.i1096.i, %i.bob
  %i.boy = add nsw i32 %i.box, %.sroa.012.0.extract.trunc.i1093.i ; 2 uses
  %i.boz = add i32 %i.boy, 1073741824
  %i.bpa = icmp slt i32 %i.boz, 1                 ; 2 uses
  %i.bpb = zext i1 %i.bpa to i32
  %.sroa.0.0.i24.i1104.i = ashr i32 %i.boy, %i.bpb ; 4 uses
  %.not.i29.i1105.i = icmp eq i32 %.sroa.0.0.i24.i1104.i, 0
  br i1 %.not.i29.i1105.i, label %av_normalize_sf.exit41.i1114.i, label %.preheader.i30.i1106.i

.preheader.i30.i1106.i:                           ; preds = %bb.fa
  %i.bpc = zext i1 %i.bpa to i64
  %.sroa.5.0.i23.i1107.i = add nuw nsw i64 %.sroa.5.0.i1042.i, %i.bpc
  %.sroa.8.0.extract.trunc.i31.i1108.i = trunc i64 %.sroa.5.0.i23.i1107.i to i32 ; 2 uses
  %i.bpd = add i32 %.sroa.0.0.i24.i1104.i, 536870911
  %i.bpe = icmp ult i32 %i.bpd, 1073741823
  br i1 %i.bpe, label %.lr.ph.i38.i1117.i, label %._crit_edge.i32.i1109.i

.lr.ph.i38.i1117.i:                               ; preds = %.preheader.i30.i1106.i, %.lr.ph.i38.i1117.i
  %.sroa.0.08.i39.i1118.i = phi i32 [ %i.bpf, %.lr.ph.i38.i1117.i ], [ %.sroa.0.0.i24.i1104.i, %.preheader.i30.i1106.i ]
  %.sroa.8.07.i40.i1119.i = phi i32 [ %i.bpg, %.lr.ph.i38.i1117.i ], [ %.sroa.8.0.extract.trunc.i31.i1108.i, %.preheader.i30.i1106.i ]
  %i.bpf = shl nsw i32 %.sroa.0.08.i39.i1118.i, 1 ; 3 uses
  %i.bpg = add nsw i32 %.sroa.8.07.i40.i1119.i, -1 ; 2 uses
  %i.bph = add nsw i32 %i.bpf, 536870911
  %i.bpi = icmp ult i32 %i.bph, 1073741823
  br i1 %i.bpi, label %.lr.ph.i38.i1117.i, label %._crit_edge.i32.i1109.i, !llvm.loop !196

._crit_edge.i32.i1109.i:                          ; preds = %.lr.ph.i38.i1117.i, %.preheader.i30.i1106.i
  %.sroa.8.0.lcssa.i33.i1110.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i1108.i, %.preheader.i30.i1106.i ], [ %i.bpg, %.lr.ph.i38.i1117.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i1111.i = phi i32 [ %.sroa.0.0.i24.i1104.i, %.preheader.i30.i1106.i ], [ %i.bpf, %.lr.ph.i38.i1117.i ]
  %i.bpj = icmp slt i32 %.sroa.8.0.lcssa.i33.i1110.i, -149
  %spec.select.i35.i1112.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i1110.i, i32 -149)
  %spec.select6.i36.i1113.i = select i1 %i.bpj, i32 0, i32 %.sroa.0.0.lcssa.i34.i1111.i
  %i.bpk = zext i32 %spec.select.i35.i1112.i to i64
  %i.bpl = shl nuw i64 %i.bpk, 32
  %i.bpm = zext i32 %spec.select6.i36.i1113.i to i64
  %i.bpn = or disjoint i64 %i.bpl, %i.bpm
  br label %av_normalize_sf.exit41.i1114.i

av_normalize_sf.exit41.i1114.i:                   ; preds = %._crit_edge.i32.i1109.i, %bb.fa
  %.sroa.05.0.insert.insert.i37.i1115.i = phi i64 [ -639950127104, %bb.fa ], [ %i.bpn, %._crit_edge.i32.i1109.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i1116.i = lshr i64 %.sroa.05.0.insert.insert.i37.i1115.i, 32
  br label %av_add_sf.exit1136.i

av_add_sf.exit1136.i:                             ; preds = %av_normalize_sf.exit41.i1114.i, %bb.ez, %av_normalize_sf.exit.i1130.i, %av_add_sf.exit1078.i
  %.sroa.016.0.i1099.i = phi i64 [ %..i1092.i, %av_add_sf.exit1078.i ], [ %.sroa.05.0.insert.insert.i.i1131.i, %av_normalize_sf.exit.i1130.i ], [ %.sroa.05.0.insert.insert.i37.i1115.i, %av_normalize_sf.exit41.i1114.i ], [ %.sroa.016.0.insert.insert.i1045.i, %bb.ez ] ; 2 uses
  %.sroa.5.0.i1100.i = phi i64 [ %.sroa.4.0.extract.shift.i1097.i, %av_add_sf.exit1078.i ], [ %.sroa.5.0.extract.shift.i1132.i, %av_normalize_sf.exit.i1130.i ], [ %.sroa.5.0.extract.shift18.i1116.i, %av_normalize_sf.exit41.i1114.i ], [ %.sroa.5.0.i1042.i, %bb.ez ] ; 4 uses
  %.sroa.5.0.insert.shift.i1101.i = shl nuw i64 %.sroa.5.0.i1100.i, 32
  %.sroa.016.0.insert.ext.i1102.i = and i64 %.sroa.016.0.i1099.i, 4294967295
  %.sroa.016.0.insert.insert.i1103.i = or disjoint i64 %.sroa.5.0.insert.shift.i1101.i, %.sroa.016.0.insert.ext.i1102.i ; 2 uses
  %i.bpo = and i64 %i.bnp, 4294967295
  %.not260.i = icmp eq i64 %i.bpo, 0
  %or.cond.i = select i1 %i.acs, i1 %.not260.i, i1 false
  br i1 %or.cond.i, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %av_add_sf.exit1136.i
  %i.bpp = getelementptr inbounds [8 x i8], ptr %i.acx, i64 %indvars.iv1612.i
  %i.bpq = load i64, ptr %i.bpp, align 8          ; 3 uses
  %.sroa.25.0.extract.shift.i1137.i = and i64 %i.bpq, -4294967296
  %sext.i1138.i = shl i64 %i.bpq, 32
  %i.bpr = ashr exact i64 %sext.i1138.i, 32       ; 2 uses
  %i.bps = mul nsw i64 %i.bpr, %i.bpr
  %i.bpt = lshr i64 %i.bps, 29
  %i.bpu = add i64 %i.bpq, -4294967296
  %.sroa.0.0.insert.insert.i1140.i = add i64 %i.bpu, %.sroa.25.0.extract.shift.i1137.i
  %.sroa.0.0.extract.trunc.i.i1141.i = trunc i64 %i.bpt to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i1142.i = lshr i64 %.sroa.0.0.insert.insert.i1140.i, 32 ; 2 uses
  %i.bpv = add i32 %.sroa.0.0.extract.trunc.i.i1141.i, 1073741824
  %i.bpw = icmp slt i32 %i.bpv, 1                 ; 2 uses
  %i.bpx = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i1142.i, 1
  %i.bpy = and i64 %i.bpx, 4294967295
  %.sroa.5.0.i.i1143.i = select i1 %i.bpw, i64 %i.bpy, i64 %.sroa.5.0.extract.shift.i.i1142.i ; 2 uses
  %i.bpz = zext i1 %i.bpw to i32
  %.sroa.0.0.i.i1144.i = ashr i32 %.sroa.0.0.extract.trunc.i.i1141.i, %i.bpz ; 2 uses
  %.sroa.2.0.insert.shift.i.i1145.i = shl nuw i64 %.sroa.5.0.i.i1143.i, 32
  %.sroa.02.0.insert.ext.i.i1146.i = zext i32 %.sroa.0.0.i.i1144.i to i64
  %.sroa.02.0.insert.insert.i.i1147.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i1145.i, %.sroa.02.0.insert.ext.i.i1146.i
  %.sroa.7.0.extract.trunc11.i1148.i = trunc nuw i64 %.sroa.5.0.i.i1143.i to i32
  %i.bqa = icmp eq i32 %.sroa.0.0.i.i1144.i, 0
  %i.bqb = icmp slt i32 %.sroa.7.0.extract.trunc11.i1148.i, -149
  %or.cond.i1149.i = select i1 %i.bqa, i1 true, i1 %i.bqb
  %..i1150.i = select i1 %or.cond.i1149.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1147.i ; 3 uses
  %.sroa.012.0.extract.trunc.i1151.i = trunc i64 %.sroa.016.0.i1099.i to i32 ; 2 uses
  %.sroa.414.0.extract.trunc.i1153.i = trunc nuw i64 %.sroa.5.0.i1100.i to i32
  %.sroa.09.0.extract.trunc.i1154.i = trunc i64 %..i1150.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i1155.i = lshr i64 %..i1150.i, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i1156.i = trunc nuw i64 %.sroa.4.0.extract.shift.i1155.i to i32
  %i.bqc = sub nsw i32 %.sroa.414.0.extract.trunc.i1153.i, %.sroa.4.0.extract.trunc.i1156.i ; 5 uses
  %i.bqd = icmp slt i32 %i.bqc, -31
  br i1 %i.bqd, label %av_add_sf.exit1194.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bqe = icmp slt i32 %i.bqc, 0
  br i1 %i.bqe, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.bqf = sub nsw i32 0, %i.bqc
  %i.bqg = ashr i32 %.sroa.012.0.extract.trunc.i1151.i, %i.bqf
  %i.bqh = add nsw i32 %i.bqg, %.sroa.09.0.extract.trunc.i1154.i ; 2 uses
  %i.bqi = add i32 %i.bqh, 1073741824
  %i.bqj = icmp slt i32 %i.bqi, 1                 ; 2 uses
  %i.bqk = zext i1 %i.bqj to i32
  %.sroa.0.0.i.i1178.i = ashr i32 %i.bqh, %i.bqk  ; 4 uses
  %.not.i.i1179.i = icmp eq i32 %.sroa.0.0.i.i1178.i, 0
  br i1 %.not.i.i1179.i, label %av_normalize_sf.exit.i1188.i, label %.preheader.i.i1180.i

.preheader.i.i1180.i:                             ; preds = %bb.fd
  %i.bql = zext i1 %i.bqj to i64
  %.sroa.5.0.i.i1181.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i1155.i, %i.bql
  %.sroa.8.0.extract.trunc.i.i1182.i = trunc i64 %.sroa.5.0.i.i1181.i to i32 ; 2 uses
  %i.bqm = add i32 %.sroa.0.0.i.i1178.i, 536870911
  %i.bqn = icmp ult i32 %i.bqm, 1073741823
  br i1 %i.bqn, label %.lr.ph.i.i1191.i, label %._crit_edge.i.i1183.i

.lr.ph.i.i1191.i:                                 ; preds = %.preheader.i.i1180.i, %.lr.ph.i.i1191.i
  %.sroa.0.08.i.i1192.i = phi i32 [ %i.bqo, %.lr.ph.i.i1191.i ], [ %.sroa.0.0.i.i1178.i, %.preheader.i.i1180.i ]
  %.sroa.8.07.i.i1193.i = phi i32 [ %i.bqp, %.lr.ph.i.i1191.i ], [ %.sroa.8.0.extract.trunc.i.i1182.i, %.preheader.i.i1180.i ]
  %i.bqo = shl nsw i32 %.sroa.0.08.i.i1192.i, 1   ; 3 uses
  %i.bqp = add nsw i32 %.sroa.8.07.i.i1193.i, -1  ; 2 uses
  %i.bqq = add nsw i32 %i.bqo, 536870911
  %i.bqr = icmp ult i32 %i.bqq, 1073741823
  br i1 %i.bqr, label %.lr.ph.i.i1191.i, label %._crit_edge.i.i1183.i, !llvm.loop !196

._crit_edge.i.i1183.i:                            ; preds = %.lr.ph.i.i1191.i, %.preheader.i.i1180.i
  %.sroa.8.0.lcssa.i.i1184.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i1182.i, %.preheader.i.i1180.i ], [ %i.bqp, %.lr.ph.i.i1191.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i1185.i = phi i32 [ %.sroa.0.0.i.i1178.i, %.preheader.i.i1180.i ], [ %i.bqo, %.lr.ph.i.i1191.i ]
  %i.bqs = icmp slt i32 %.sroa.8.0.lcssa.i.i1184.i, -149
  %spec.select.i.i1186.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i1184.i, i32 -149)
  %spec.select6.i.i1187.i = select i1 %i.bqs, i32 0, i32 %.sroa.0.0.lcssa.i.i1185.i
  %i.bqt = zext i32 %spec.select.i.i1186.i to i64
  %i.bqu = shl nuw i64 %i.bqt, 32
  %i.bqv = zext i32 %spec.select6.i.i1187.i to i64
  %i.bqw = or disjoint i64 %i.bqu, %i.bqv
  br label %av_normalize_sf.exit.i1188.i

av_normalize_sf.exit.i1188.i:                     ; preds = %._crit_edge.i.i1183.i, %bb.fd
  %.sroa.05.0.insert.insert.i.i1189.i = phi i64 [ -639950127104, %bb.fd ], [ %i.bqw, %._crit_edge.i.i1183.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i1190.i = lshr i64 %.sroa.05.0.insert.insert.i.i1189.i, 32
  br label %av_add_sf.exit1194.i

bb.fe:                                            ; preds = %bb.fc
  %i.bqx = icmp samesign ult i32 %i.bqc, 32
  br i1 %i.bqx, label %bb.ff, label %av_add_sf.exit1194.i

bb.ff:                                            ; preds = %bb.fe
  %i.bqy = ashr i32 %.sroa.09.0.extract.trunc.i1154.i, %i.bqc
  %i.bqz = add nsw i32 %i.bqy, %.sroa.012.0.extract.trunc.i1151.i ; 2 uses
  %i.bra = add i32 %i.bqz, 1073741824
  %i.brb = icmp slt i32 %i.bra, 1                 ; 2 uses
  %i.brc = zext i1 %i.brb to i32
  %.sroa.0.0.i24.i1162.i = ashr i32 %i.bqz, %i.brc ; 4 uses
  %.not.i29.i1163.i = icmp eq i32 %.sroa.0.0.i24.i1162.i, 0
  br i1 %.not.i29.i1163.i, label %av_normalize_sf.exit41.i1172.i, label %.preheader.i30.i1164.i

.preheader.i30.i1164.i:                           ; preds = %bb.ff
  %i.brd = zext i1 %i.brb to i64
  %.sroa.5.0.i23.i1165.i = add nuw nsw i64 %.sroa.5.0.i1100.i, %i.brd
  %.sroa.8.0.extract.trunc.i31.i1166.i = trunc i64 %.sroa.5.0.i23.i1165.i to i32 ; 2 uses
  %i.bre = add i32 %.sroa.0.0.i24.i1162.i, 536870911
  %i.brf = icmp ult i32 %i.bre, 1073741823
  br i1 %i.brf, label %.lr.ph.i38.i1175.i, label %._crit_edge.i32.i1167.i

.lr.ph.i38.i1175.i:                               ; preds = %.preheader.i30.i1164.i, %.lr.ph.i38.i1175.i
  %.sroa.0.08.i39.i1176.i = phi i32 [ %i.brg, %.lr.ph.i38.i1175.i ], [ %.sroa.0.0.i24.i1162.i, %.preheader.i30.i1164.i ]
  %.sroa.8.07.i40.i1177.i = phi i32 [ %i.brh, %.lr.ph.i38.i1175.i ], [ %.sroa.8.0.extract.trunc.i31.i1166.i, %.preheader.i30.i1164.i ]
  %i.brg = shl nsw i32 %.sroa.0.08.i39.i1176.i, 1 ; 3 uses
  %i.brh = add nsw i32 %.sroa.8.07.i40.i1177.i, -1 ; 2 uses
  %i.bri = add nsw i32 %i.brg, 536870911
  %i.brj = icmp ult i32 %i.bri, 1073741823
  br i1 %i.brj, label %.lr.ph.i38.i1175.i, label %._crit_edge.i32.i1167.i, !llvm.loop !196

._crit_edge.i32.i1167.i:                          ; preds = %.lr.ph.i38.i1175.i, %.preheader.i30.i1164.i
  %.sroa.8.0.lcssa.i33.i1168.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i1166.i, %.preheader.i30.i1164.i ], [ %i.brh, %.lr.ph.i38.i1175.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i1169.i = phi i32 [ %.sroa.0.0.i24.i1162.i, %.preheader.i30.i1164.i ], [ %i.brg, %.lr.ph.i38.i1175.i ]
  %i.brk = icmp slt i32 %.sroa.8.0.lcssa.i33.i1168.i, -149
  %spec.select.i35.i1170.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i1168.i, i32 -149)
  %spec.select6.i36.i1171.i = select i1 %i.brk, i32 0, i32 %.sroa.0.0.lcssa.i34.i1169.i
  %i.brl = zext i32 %spec.select.i35.i1170.i to i64
  %i.brm = shl nuw i64 %i.brl, 32
  %i.brn = zext i32 %spec.select6.i36.i1171.i to i64
  %i.bro = or disjoint i64 %i.brm, %i.brn
  br label %av_normalize_sf.exit41.i1172.i

av_normalize_sf.exit41.i1172.i:                   ; preds = %._crit_edge.i32.i1167.i, %bb.ff
  %.sroa.05.0.insert.insert.i37.i1173.i = phi i64 [ -639950127104, %bb.ff ], [ %i.bro, %._crit_edge.i32.i1167.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i1174.i = lshr i64 %.sroa.05.0.insert.insert.i37.i1173.i, 32
  br label %av_add_sf.exit1194.i

av_add_sf.exit1194.i:                             ; preds = %av_normalize_sf.exit41.i1172.i, %bb.fe, %av_normalize_sf.exit.i1188.i, %bb.fb
  %.sroa.016.0.i1157.i = phi i64 [ %..i1150.i, %bb.fb ], [ %.sroa.05.0.insert.insert.i.i1189.i, %av_normalize_sf.exit.i1188.i ], [ %.sroa.05.0.insert.insert.i37.i1173.i, %av_normalize_sf.exit41.i1172.i ], [ %.sroa.016.0.insert.insert.i1103.i, %bb.fe ]
  %.sroa.5.0.i1158.i = phi i64 [ %.sroa.4.0.extract.shift.i1155.i, %bb.fb ], [ %.sroa.5.0.extract.shift.i1190.i, %av_normalize_sf.exit.i1188.i ], [ %.sroa.5.0.extract.shift18.i1174.i, %av_normalize_sf.exit41.i1172.i ], [ %.sroa.5.0.i1100.i, %bb.fe ]
  %.sroa.5.0.insert.shift.i1159.i = shl nuw i64 %.sroa.5.0.i1158.i, 32
  %.sroa.016.0.insert.ext.i1160.i = and i64 %.sroa.016.0.i1157.i, 4294967295
  %.sroa.016.0.insert.insert.i1161.i = or disjoint i64 %.sroa.5.0.insert.shift.i1159.i, %.sroa.016.0.insert.ext.i1160.i
  br label %bb.fg

bb.fg:                                            ; preds = %av_add_sf.exit1194.i, %av_add_sf.exit1136.i
  %.sroa.10.2.i = phi i64 [ %.sroa.016.0.insert.insert.i1103.i, %av_add_sf.exit1136.i ], [ %.sroa.016.0.insert.insert.i1161.i, %av_add_sf.exit1194.i ] ; 5 uses
  %indvars.iv.next1613.i = add nsw i64 %indvars.iv1612.i, 1 ; 2 uses
  %exitcond1616.not.i = icmp eq i64 %indvars.iv.next1613.i, %wide.trip.count1615.i
  br i1 %exitcond1616.not.i, label %._crit_edge1505.i, label %.lr.ph1504.i, !llvm.loop !209

._crit_edge1505.i:                                ; preds = %bb.fg
  %.sroa.09.0.extract.trunc.i1195.i = trunc i64 %.sroa.016.0.i969.i to i32 ; 2 uses
  %.sroa.4.0.extract.trunc.i1197.i = trunc nuw i64 %.sroa.5.0.i970.i to i32 ; 4 uses
  %.neg1364.i = add nsw i32 %.sroa.4.0.extract.trunc.i1197.i, 16
  %i.brp = sub nuw nsw i32 -16, %.sroa.4.0.extract.trunc.i1197.i
  %i.brq = icmp sgt i32 %.sroa.4.0.extract.trunc.i1197.i, 15
  br i1 %i.brq, label %av_add_sf.exit1235.i, label %bb.fh

bb.fh:                                            ; preds = %._crit_edge1505.i
  %i.brr = icmp sgt i32 %.sroa.4.0.extract.trunc.i1197.i, -16
  br i1 %i.brr, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.brs = lshr i32 703687442, %.neg1364.i
  %i.brt = add nsw i32 %i.brs, %.sroa.09.0.extract.trunc.i1195.i ; 2 uses
  %i.bru = add i32 %i.brt, 1073741824
  %i.brv = icmp slt i32 %i.bru, 1                 ; 2 uses
  %i.brw = zext i1 %i.brv to i32
  %.sroa.0.0.i.i1219.i = ashr i32 %i.brt, %i.brw  ; 4 uses
  %.not.i.i1220.i = icmp eq i32 %.sroa.0.0.i.i1219.i, 0
  br i1 %.not.i.i1220.i, label %av_normalize_sf.exit.i1229.i, label %.preheader.i.i1221.i

.preheader.i.i1221.i:                             ; preds = %bb.fi
  %i.brx = zext i1 %i.brv to i64
  %.sroa.5.0.i.i1222.i = add nuw nsw i64 %.sroa.5.0.i970.i, %i.brx
  %.sroa.8.0.extract.trunc.i.i1223.i = trunc i64 %.sroa.5.0.i.i1222.i to i32 ; 2 uses
  %i.bry = add i32 %.sroa.0.0.i.i1219.i, 536870911
  %i.brz = icmp ult i32 %i.bry, 1073741823
  br i1 %i.brz, label %.lr.ph.i.i1232.i, label %._crit_edge.i.i1224.i

.lr.ph.i.i1232.i:                                 ; preds = %.preheader.i.i1221.i, %.lr.ph.i.i1232.i
  %.sroa.0.08.i.i1233.i = phi i32 [ %i.bsa, %.lr.ph.i.i1232.i ], [ %.sroa.0.0.i.i1219.i, %.preheader.i.i1221.i ]
  %.sroa.8.07.i.i1234.i = phi i32 [ %i.bsb, %.lr.ph.i.i1232.i ], [ %.sroa.8.0.extract.trunc.i.i1223.i, %.preheader.i.i1221.i ]
  %i.bsa = shl nsw i32 %.sroa.0.08.i.i1233.i, 1   ; 3 uses
  %i.bsb = add nsw i32 %.sroa.8.07.i.i1234.i, -1  ; 2 uses
  %i.bsc = add nsw i32 %i.bsa, 536870911
  %i.bsd = icmp ult i32 %i.bsc, 1073741823
  br i1 %i.bsd, label %.lr.ph.i.i1232.i, label %._crit_edge.i.i1224.i, !llvm.loop !196

._crit_edge.i.i1224.i:                            ; preds = %.lr.ph.i.i1232.i, %.preheader.i.i1221.i
  %.sroa.8.0.lcssa.i.i1225.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i1223.i, %.preheader.i.i1221.i ], [ %i.bsb, %.lr.ph.i.i1232.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i1226.i = phi i32 [ %.sroa.0.0.i.i1219.i, %.preheader.i.i1221.i ], [ %i.bsa, %.lr.ph.i.i1232.i ]
  %i.bse = icmp slt i32 %.sroa.8.0.lcssa.i.i1225.i, -149
  %spec.select.i.i1227.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i1225.i, i32 -149)
  %spec.select6.i.i1228.i = select i1 %i.bse, i32 0, i32 %.sroa.0.0.lcssa.i.i1226.i
  %i.bsf = zext i32 %spec.select.i.i1227.i to i64
  %i.bsg = shl nuw i64 %i.bsf, 32
  %i.bsh = zext i32 %spec.select6.i.i1228.i to i64
  %i.bsi = or disjoint i64 %i.bsg, %i.bsh
  br label %av_normalize_sf.exit.i1229.i

av_normalize_sf.exit.i1229.i:                     ; preds = %._crit_edge.i.i1224.i, %bb.fi
  %.sroa.05.0.insert.insert.i.i1230.i = phi i64 [ -639950127104, %bb.fi ], [ %i.bsi, %._crit_edge.i.i1224.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i1231.i = lshr i64 %.sroa.05.0.insert.insert.i.i1230.i, 32
  br label %av_add_sf.exit1235.i

bb.fj:                                            ; preds = %bb.fh
  %8 = icmp samesign ugt i64 %.sroa.5.0.i970.i, 4294967248
  br i1 %8, label %bb.fk, label %av_add_sf.exit1235.i

bb.fk:                                            ; preds = %bb.fj
  %i.bsj = ashr i32 %.sroa.09.0.extract.trunc.i1195.i, %i.brp ; 2 uses
  %i.bsk = add nsw i32 %i.bsj, 703687442
  %i.bsl = add i32 %i.bsj, 1777429266
  %i.bsm = icmp slt i32 %i.bsl, 1                 ; 2 uses
  %i.bsn = zext i1 %i.bsm to i32
  %.sroa.0.0.i24.i1203.i = ashr i32 %i.bsk, %i.bsn ; 4 uses
  %.not.i29.i1204.i = icmp eq i32 %.sroa.0.0.i24.i1203.i, 0
  br i1 %.not.i29.i1204.i, label %av_normalize_sf.exit41.i1213.i, label %.preheader.i30.i1205.i

.preheader.i30.i1205.i:                           ; preds = %bb.fk
  %.sroa.8.0.extract.trunc.i31.i1207.i = select i1 %i.bsm, i32 -15, i32 -16 ; 2 uses
  %i.bso = add i32 %.sroa.0.0.i24.i1203.i, 536870911
  %i.bsp = icmp ult i32 %i.bso, 1073741823
  br i1 %i.bsp, label %.lr.ph.i38.i1216.i, label %._crit_edge.i32.i1208.i

.lr.ph.i38.i1216.i:                               ; preds = %.preheader.i30.i1205.i, %.lr.ph.i38.i1216.i
  %.sroa.0.08.i39.i1217.i = phi i32 [ %i.bsq, %.lr.ph.i38.i1216.i ], [ %.sroa.0.0.i24.i1203.i, %.preheader.i30.i1205.i ]
  %.sroa.8.07.i40.i1218.i = phi i32 [ %i.bsr, %.lr.ph.i38.i1216.i ], [ %.sroa.8.0.extract.trunc.i31.i1207.i, %.preheader.i30.i1205.i ]
  %i.bsq = shl nsw i32 %.sroa.0.08.i39.i1217.i, 1 ; 3 uses
  %i.bsr = add nsw i32 %.sroa.8.07.i40.i1218.i, -1 ; 2 uses
  %i.bss = add nsw i32 %i.bsq, 536870911
  %i.bst = icmp ult i32 %i.bss, 1073741823
  br i1 %i.bst, label %.lr.ph.i38.i1216.i, label %._crit_edge.i32.i1208.i, !llvm.loop !196

._crit_edge.i32.i1208.i:                          ; preds = %.lr.ph.i38.i1216.i, %.preheader.i30.i1205.i
  %.sroa.8.0.lcssa.i33.i1209.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i1207.i, %.preheader.i30.i1205.i ], [ %i.bsr, %.lr.ph.i38.i1216.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i1210.i = phi i32 [ %.sroa.0.0.i24.i1203.i, %.preheader.i30.i1205.i ], [ %i.bsq, %.lr.ph.i38.i1216.i ]
  %i.bsu = icmp slt i32 %.sroa.8.0.lcssa.i33.i1209.i, -149
  %spec.select.i35.i1211.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i1209.i, i32 -149)
  %spec.select6.i36.i1212.i = select i1 %i.bsu, i32 0, i32 %.sroa.0.0.lcssa.i34.i1210.i
  %i.bsv = zext i32 %spec.select.i35.i1211.i to i64
  %i.bsw = shl nuw i64 %i.bsv, 32
  %i.bsx = zext i32 %spec.select6.i36.i1212.i to i64
  %i.bsy = or disjoint i64 %i.bsw, %i.bsx
  br label %av_normalize_sf.exit41.i1213.i

av_normalize_sf.exit41.i1213.i:                   ; preds = %._crit_edge.i32.i1208.i, %bb.fk
  %.sroa.05.0.insert.insert.i37.i1214.i = phi i64 [ -639950127104, %bb.fk ], [ %i.bsy, %._crit_edge.i32.i1208.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i1215.i = lshr i64 %.sroa.05.0.insert.insert.i37.i1214.i, 32
  br label %av_add_sf.exit1235.i

av_add_sf.exit1235.i:                             ; preds = %av_normalize_sf.exit41.i1213.i, %bb.fj, %av_normalize_sf.exit.i1229.i, %._crit_edge1505.i
  %.sroa.016.0.i1198.i = phi i64 [ %.sroa.016.0.insert.insert.i973.i, %._crit_edge1505.i ], [ %.sroa.05.0.insert.insert.i.i1230.i, %av_normalize_sf.exit.i1229.i ], [ %.sroa.05.0.insert.insert.i37.i1214.i, %av_normalize_sf.exit41.i1213.i ], [ -68015789294, %bb.fj ] ; 4 uses
  %.sroa.5.0.i1199.i = phi i64 [ %.sroa.5.0.i970.i, %._crit_edge1505.i ], [ %.sroa.5.0.extract.shift.i1231.i, %av_normalize_sf.exit.i1229.i ], [ %.sroa.5.0.extract.shift18.i1215.i, %av_normalize_sf.exit41.i1213.i ], [ 4294967280, %bb.fj ] ; 4 uses
  %.sroa.09.0.extract.trunc.i1236.i = trunc i64 %.sroa.10.2.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i1237.i = lshr i64 %.sroa.10.2.i, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i1238.i = trunc nuw i64 %.sroa.4.0.extract.shift.i1237.i to i32 ; 4 uses
  %.neg1365.i = add nsw i32 %.sroa.4.0.extract.trunc.i1238.i, 16
  %i.bsz = sub nuw nsw i32 -16, %.sroa.4.0.extract.trunc.i1238.i
  %i.bta = icmp sgt i32 %.sroa.4.0.extract.trunc.i1238.i, 15
  br i1 %i.bta, label %av_add_sf.exit1276.i, label %bb.fl

bb.fl:                                            ; preds = %av_add_sf.exit1235.i
  %i.btb = icmp sgt i32 %.sroa.4.0.extract.trunc.i1238.i, -16
  br i1 %i.btb, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.btc = lshr i32 703687442, %.neg1365.i
  %i.btd = add nsw i32 %i.btc, %.sroa.09.0.extract.trunc.i1236.i ; 2 uses
  %i.bte = add i32 %i.btd, 1073741824
  %i.btf = icmp slt i32 %i.bte, 1                 ; 2 uses
  %i.btg = zext i1 %i.btf to i32
  %.sroa.0.0.i.i1260.i = ashr i32 %i.btd, %i.btg  ; 4 uses
  %.not.i.i1261.i = icmp eq i32 %.sroa.0.0.i.i1260.i, 0
  br i1 %.not.i.i1261.i, label %av_normalize_sf.exit.i1270.i, label %.preheader.i.i1262.i

.preheader.i.i1262.i:                             ; preds = %bb.fm
  %i.bth = zext i1 %i.btf to i64
  %.sroa.5.0.i.i1263.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i1237.i, %i.bth
  %.sroa.8.0.extract.trunc.i.i1264.i = trunc i64 %.sroa.5.0.i.i1263.i to i32 ; 2 uses
  %i.bti = add i32 %.sroa.0.0.i.i1260.i, 536870911
  %i.btj = icmp ult i32 %i.bti, 1073741823
  br i1 %i.btj, label %.lr.ph.i.i1273.i, label %._crit_edge.i.i1265.i

.lr.ph.i.i1273.i:                                 ; preds = %.preheader.i.i1262.i, %.lr.ph.i.i1273.i
  %.sroa.0.08.i.i1274.i = phi i32 [ %i.btk, %.lr.ph.i.i1273.i ], [ %.sroa.0.0.i.i1260.i, %.preheader.i.i1262.i ]
  %.sroa.8.07.i.i1275.i = phi i32 [ %i.btl, %.lr.ph.i.i1273.i ], [ %.sroa.8.0.extract.trunc.i.i1264.i, %.preheader.i.i1262.i ]
  %i.btk = shl nsw i32 %.sroa.0.08.i.i1274.i, 1   ; 3 uses
  %i.btl = add nsw i32 %.sroa.8.07.i.i1275.i, -1  ; 2 uses
  %i.btm = add nsw i32 %i.btk, 536870911
  %i.btn = icmp ult i32 %i.btm, 1073741823
  br i1 %i.btn, label %.lr.ph.i.i1273.i, label %._crit_edge.i.i1265.i, !llvm.loop !196

._crit_edge.i.i1265.i:                            ; preds = %.lr.ph.i.i1273.i, %.preheader.i.i1262.i
  %.sroa.8.0.lcssa.i.i1266.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i1264.i, %.preheader.i.i1262.i ], [ %i.btl, %.lr.ph.i.i1273.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i1267.i = phi i32 [ %.sroa.0.0.i.i1260.i, %.preheader.i.i1262.i ], [ %i.btk, %.lr.ph.i.i1273.i ]
  %i.bto = icmp slt i32 %.sroa.8.0.lcssa.i.i1266.i, -149
  %spec.select.i.i1268.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i1266.i, i32 -149)
  %spec.select6.i.i1269.i = select i1 %i.bto, i32 0, i32 %.sroa.0.0.lcssa.i.i1267.i
  %i.btp = zext i32 %spec.select.i.i1268.i to i64
  %i.btq = shl nuw i64 %i.btp, 32
  %i.btr = zext i32 %spec.select6.i.i1269.i to i64
  %i.bts = or disjoint i64 %i.btq, %i.btr
  br label %av_normalize_sf.exit.i1270.i

av_normalize_sf.exit.i1270.i:                     ; preds = %._crit_edge.i.i1265.i, %bb.fm
  %.sroa.05.0.insert.insert.i.i1271.i = phi i64 [ -639950127104, %bb.fm ], [ %i.bts, %._crit_edge.i.i1265.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i1272.i = lshr i64 %.sroa.05.0.insert.insert.i.i1271.i, 32
  br label %av_add_sf.exit1276.i

bb.fn:                                            ; preds = %bb.fl
  %9 = icmp ugt i64 %.sroa.10.2.i, -201863462913
  br i1 %9, label %bb.fo, label %av_add_sf.exit1276.i

bb.fo:                                            ; preds = %bb.fn
  %i.btt = ashr i32 %.sroa.09.0.extract.trunc.i1236.i, %i.bsz ; 2 uses
  %i.btu = add nsw i32 %i.btt, 703687442
  %i.btv = add i32 %i.btt, 1777429266
  %i.btw = icmp slt i32 %i.btv, 1                 ; 2 uses
  %i.btx = zext i1 %i.btw to i32
  %.sroa.0.0.i24.i1244.i = ashr i32 %i.btu, %i.btx ; 4 uses
  %.not.i29.i1245.i = icmp eq i32 %.sroa.0.0.i24.i1244.i, 0
  br i1 %.not.i29.i1245.i, label %av_normalize_sf.exit41.i1254.i, label %.preheader.i30.i1246.i

.preheader.i30.i1246.i:                           ; preds = %bb.fo
  %.sroa.8.0.extract.trunc.i31.i1248.i = select i1 %i.btw, i32 -15, i32 -16 ; 2 uses
  %i.bty = add i32 %.sroa.0.0.i24.i1244.i, 536870911
  %i.btz = icmp ult i32 %i.bty, 1073741823
  br i1 %i.btz, label %.lr.ph.i38.i1257.i, label %._crit_edge.i32.i1249.i

.lr.ph.i38.i1257.i:                               ; preds = %.preheader.i30.i1246.i, %.lr.ph.i38.i1257.i
  %.sroa.0.08.i39.i1258.i = phi i32 [ %i.bua, %.lr.ph.i38.i1257.i ], [ %.sroa.0.0.i24.i1244.i, %.preheader.i30.i1246.i ]
  %.sroa.8.07.i40.i1259.i = phi i32 [ %i.bub, %.lr.ph.i38.i1257.i ], [ %.sroa.8.0.extract.trunc.i31.i1248.i, %.preheader.i30.i1246.i ]
  %i.bua = shl nsw i32 %.sroa.0.08.i39.i1258.i, 1 ; 3 uses
  %i.bub = add nsw i32 %.sroa.8.07.i40.i1259.i, -1 ; 2 uses
  %i.buc = add nsw i32 %i.bua, 536870911
  %i.bud = icmp ult i32 %i.buc, 1073741823
  br i1 %i.bud, label %.lr.ph.i38.i1257.i, label %._crit_edge.i32.i1249.i, !llvm.loop !196

._crit_edge.i32.i1249.i:                          ; preds = %.lr.ph.i38.i1257.i, %.preheader.i30.i1246.i
  %.sroa.8.0.lcssa.i33.i1250.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i1248.i, %.preheader.i30.i1246.i ], [ %i.bub, %.lr.ph.i38.i1257.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i1251.i = phi i32 [ %.sroa.0.0.i24.i1244.i, %.preheader.i30.i1246.i ], [ %i.bua, %.lr.ph.i38.i1257.i ]
  %i.bue = icmp slt i32 %.sroa.8.0.lcssa.i33.i1250.i, -149
  %spec.select.i35.i1252.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i1250.i, i32 -149)
  %spec.select6.i36.i1253.i = select i1 %i.bue, i32 0, i32 %.sroa.0.0.lcssa.i34.i1251.i
  %i.buf = zext i32 %spec.select.i35.i1252.i to i64
  %i.bug = shl nuw i64 %i.buf, 32
  %i.buh = zext i32 %spec.select6.i36.i1253.i to i64
  %i.bui = or disjoint i64 %i.bug, %i.buh
  br label %av_normalize_sf.exit41.i1254.i

av_normalize_sf.exit41.i1254.i:                   ; preds = %._crit_edge.i32.i1249.i, %bb.fo
  %.sroa.05.0.insert.insert.i37.i1255.i = phi i64 [ -639950127104, %bb.fo ], [ %i.bui, %._crit_edge.i32.i1249.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i1256.i = lshr i64 %.sroa.05.0.insert.insert.i37.i1255.i, 32
  br label %av_add_sf.exit1276.i

av_add_sf.exit1276.i:                             ; preds = %av_normalize_sf.exit41.i1254.i, %bb.fn, %av_normalize_sf.exit.i1270.i, %av_add_sf.exit1235.i, %._crit_edge1497.i
  %.sroa.5.0.i11991751.i = phi i64 [ %.sroa.5.0.i1199.i, %av_add_sf.exit1235.i ], [ %.sroa.5.0.i1199.i, %av_normalize_sf.exit.i1270.i ], [ %.sroa.5.0.i1199.i, %av_normalize_sf.exit41.i1254.i ], [ %.sroa.5.0.i1199.i, %bb.fn ], [ 4294967280, %._crit_edge1497.i ]
  %.sroa.016.0.i11981749.i = phi i64 [ %.sroa.016.0.i1198.i, %av_add_sf.exit1235.i ], [ %.sroa.016.0.i1198.i, %av_normalize_sf.exit.i1270.i ], [ %.sroa.016.0.i1198.i, %av_normalize_sf.exit41.i1254.i ], [ %.sroa.016.0.i1198.i, %bb.fn ], [ -68015789294, %._crit_edge1497.i ]
  %.sroa.016.0.i1239.i = phi i64 [ %.sroa.10.2.i, %av_add_sf.exit1235.i ], [ %.sroa.05.0.insert.insert.i.i1271.i, %av_normalize_sf.exit.i1270.i ], [ %.sroa.05.0.insert.insert.i37.i1255.i, %av_normalize_sf.exit41.i1254.i ], [ -68015789294, %bb.fn ], [ -68015789294, %._crit_edge1497.i ]
  %.sroa.5.0.i1240.i = phi i64 [ %.sroa.4.0.extract.shift.i1237.i, %av_add_sf.exit1235.i ], [ %.sroa.5.0.extract.shift.i1272.i, %av_normalize_sf.exit.i1270.i ], [ %.sroa.5.0.extract.shift18.i1256.i, %av_normalize_sf.exit41.i1254.i ], [ 4294967280, %bb.fn ], [ 4294967280, %._crit_edge1497.i ]
  %.sroa.9.0.extract.trunc.i1278.i = trunc nuw i64 %.sroa.5.0.i11991751.i to i32
  %.sroa.2.0.extract.trunc.i1280.i = trunc nuw i64 %.sroa.5.0.i1240.i to i32
  %sext.i1281.i = shl i64 %.sroa.016.0.i11981749.i, 32
  %i.buj = ashr exact i64 %sext.i1281.i, 2
  %sext18.i1282.i = shl i64 %.sroa.016.0.i1239.i, 32
  %i.buk = ashr exact i64 %sext18.i1282.i, 32
  %i.bul = sdiv i64 %i.buj, %i.buk                ; 3 uses
  %i.bum = sub nsw i32 %.sroa.9.0.extract.trunc.i1278.i, %.sroa.2.0.extract.trunc.i1280.i ; 2 uses
  %i.bun = add nsw i64 %i.bul, 2147483648
  %.not20.i1283.i = icmp ult i64 %i.bun, 4294967296
  br i1 %.not20.i1283.i, label %av_div_sf.exit1300.i, label %.lr.ph.i1284.i

.lr.ph.i1284.i:                                   ; preds = %av_add_sf.exit1276.i, %.lr.ph.i1284.i
  %.022.i1285.i = phi i64 [ %i.buo, %.lr.ph.i1284.i ], [ %i.bul, %av_add_sf.exit1276.i ]
  %.sroa.9.021.i1286.i = phi i32 [ %i.bup, %.lr.ph.i1284.i ], [ %i.bum, %av_add_sf.exit1276.i ]
  %i.buo = sdiv i64 %.022.i1285.i, 2              ; 3 uses
  %i.bup = add nsw i32 %.sroa.9.021.i1286.i, -1   ; 2 uses
  %i.buq = add nsw i64 %i.buo, 2147483648
  %.not.i1287.i = icmp ult i64 %i.buq, 4294967296
  br i1 %.not.i1287.i, label %av_div_sf.exit1300.i, label %.lr.ph.i1284.i, !llvm.loop !153

av_div_sf.exit1300.i:                             ; preds = %.lr.ph.i1284.i, %av_add_sf.exit1276.i
  %.sroa.9.0.lcssa.i1288.i = phi i32 [ %i.bum, %av_add_sf.exit1276.i ], [ %i.bup, %.lr.ph.i1284.i ]
  %.0.lcssa.i1289.i = phi i64 [ %i.bul, %av_add_sf.exit1276.i ], [ %i.buo, %.lr.ph.i1284.i ]
  %.sroa.9.0.insert.ext.i1290.i = zext i32 %.sroa.9.0.lcssa.i1288.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i1291.i = trunc nsw i64 %.0.lcssa.i1289.i to i32 ; 2 uses
  %i.bur = add i32 %.sroa.0.0.extract.trunc.i.i1291.i, 1073741824
  %i.bus = icmp slt i32 %i.bur, 1                 ; 2 uses
  %i.but = add nuw nsw i64 %.sroa.9.0.insert.ext.i1290.i, 1
  %i.buu = and i64 %i.but, 4294967295
  %.sroa.5.0.i.i1292.i = select i1 %i.bus, i64 %i.buu, i64 %.sroa.9.0.insert.ext.i1290.i ; 2 uses
  %i.buv = zext i1 %i.bus to i32
  %.sroa.0.0.i.i1293.i = ashr i32 %.sroa.0.0.extract.trunc.i.i1291.i, %i.buv ; 2 uses
  %.sroa.2.0.insert.shift.i.i1294.i = shl nuw i64 %.sroa.5.0.i.i1292.i, 32
  %.sroa.02.0.insert.ext.i.i1295.i = zext i32 %.sroa.0.0.i.i1293.i to i64
  %.sroa.02.0.insert.insert.i.i1296.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i1294.i, %.sroa.02.0.insert.ext.i.i1295.i
  %.sroa.9.0.extract.trunc14.i1297.i = trunc nuw i64 %.sroa.5.0.i.i1292.i to i32
  %i.buw = icmp eq i32 %.sroa.0.0.i.i1293.i, 0
  %i.bux = icmp slt i32 %.sroa.9.0.extract.trunc14.i1297.i, -149
  %or.cond.i1298.i = select i1 %i.buw, i1 true, i1 %i.bux
  %..i1299.i = select i1 %or.cond.i1298.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1296.i ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %..i1299.i to i32 ; 3 uses
  %.sroa.12.0.extract.shift.i.i = lshr i64 %..i1299.i, 32 ; 2 uses
  %.sroa.12.0.extract.trunc.i.i = trunc nuw i64 %.sroa.12.0.extract.shift.i.i to i32 ; 2 uses
  %i.buy = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, 0
  br i1 %i.buy, label %av_gt_sf.exit1305.thread.i, label %bb.fp

bb.fp:                                            ; preds = %av_div_sf.exit1300.i
  %i.buz = icmp slt i32 %.sroa.0.0.extract.trunc.i.i, 0
  br i1 %i.buz, label %bb.fq, label %av_sqrt_sf.exit.i

bb.fq:                                            ; preds = %bb.fp
  tail call void @abort() #13
  unreachable

av_sqrt_sf.exit.i:                                ; preds = %bb.fp
  %i.bva = add nsw i32 %.sroa.0.0.extract.trunc.i.i, -536870912
  %i.bvb = ashr i32 %i.bva, 20
  %i.bvc = and i64 %..i1299.i, 1048575            ; 2 uses
  %i.bvd = sext i32 %i.bvb to i64
  %i.bve = getelementptr inbounds [4 x i8], ptr @av_sqrttbl_sf, i64 %i.bvd ; 2 uses
  %i.bvf = load i32, ptr %i.bve, align 4, !tbaa !13
  %i.bvg = sext i32 %i.bvf to i64
  %i.bvh = sub nuw nsw i64 1048576, %i.bvc
  %i.bvi = mul nsw i64 %i.bvh, %i.bvg
  %i.bvj = getelementptr i8, ptr %i.bve, i64 4
  %i.bvk = load i32, ptr %i.bvj, align 4, !tbaa !13
  %i.bvl = sext i32 %i.bvk to i64
  %i.bvm = mul nsw i64 %i.bvc, %i.bvl
  %i.bvn = add nsw i64 %i.bvm, %i.bvi
  %i.bvo = and i64 %.sroa.12.0.extract.shift.i.i, 1
  %i.bvp = getelementptr inbounds nuw [4 x i8], ptr @av_sqr_exp_multbl_sf, i64 %i.bvo
  %i.bvq = load i32, ptr %i.bvp, align 4, !tbaa !13
  %i.bvr = sext i32 %i.bvq to i64
  %i.bvs = shl i64 %i.bvn, 12
  %i.bvt = add i64 %i.bvs, 2147483648
  %i.bvu = ashr i64 %i.bvt, 32
  %i.bvv = mul nsw i64 %i.bvu, %i.bvr
  %i.bvw = add nsw i64 %i.bvv, 268435456
  %i.bvx = lshr i64 %i.bvw, 29
  %i.bvy = trunc i64 %i.bvx to i32                ; 2 uses
  %i.bvz = icmp sgt i32 %i.bvy, 1073741823        ; 2 uses
  %i.bwa = add nsw i32 %.sroa.12.0.extract.trunc.i.i, -2
  %i.bwb = zext i1 %i.bvz to i32
  %.sroa.0.0.i.i = lshr i32 %i.bvy, %i.bwb        ; 4 uses
  %.sroa.12.0.i.i = select i1 %i.bvz, i32 %.sroa.12.0.extract.trunc.i.i, i32 %i.bwa
  %i.bwc = ashr i32 %.sroa.12.0.i.i, 1            ; 6 uses
  %i.bwd = add nsw i32 %i.bwc, 1
  %i.bwe = zext i32 %i.bwd to i64
  %i.bwf = shl nuw i64 %i.bwe, 32
  %i.bwg = zext i32 %.sroa.0.0.i.i to i64
  %i.bwh = or disjoint i64 %i.bwf, %i.bwg         ; 2 uses
  %i.bwi = icmp slt i32 %i.bwc, -31
  br i1 %i.bwi, label %av_gt_sf.exit1305.thread.i, label %bb.fr

bb.fr:                                            ; preds = %av_sqrt_sf.exit.i
  %i.bwj = icmp slt i32 %i.bwc, 0
  br i1 %i.bwj, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.bwk = sub nsw i32 0, %i.bwc
  %i.bwl = ashr i32 %.sroa.0.0.i.i, %i.bwk
  %i.bwm = icmp sgt i32 %i.bwl, 850883053
  br label %av_gt_sf.exit1305.i

bb.ft:                                            ; preds = %bb.fr
  %i.bwn = icmp samesign ult i32 %i.bwc, 32
  br i1 %i.bwn, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.bwo = lshr i32 850883053, %i.bwc
  %i.bwp = icmp slt i32 %i.bwo, %.sroa.0.0.i.i
  br label %av_gt_sf.exit1305.i

bb.fv:                                            ; preds = %bb.ft
  %i.bwq = icmp sgt i32 %.sroa.0.0.i.i, 0
  br label %av_gt_sf.exit1305.i

av_gt_sf.exit1305.i:                              ; preds = %bb.fv, %bb.fu, %bb.fs
  %.0.i1304.in.i = phi i1 [ %i.bwq, %bb.fv ], [ %i.bwm, %bb.fs ], [ %i.bwp, %bb.fu ]
  %.0.i1304.in.fr.i = freeze i1 %.0.i1304.in.i
  %spec.select.i228 = select i1 %.0.i1304.in.fr.i, i64 5145850349, i64 %i.bwh
  br label %av_gt_sf.exit1305.thread.i

av_gt_sf.exit1305.thread.i:                       ; preds = %av_gt_sf.exit1305.i, %av_sqrt_sf.exit.i, %av_div_sf.exit1300.i
  %i.bwr = phi i64 [ %spec.select.i228, %av_gt_sf.exit1305.i ], [ -639950127104, %av_div_sf.exit1300.i ], [ %i.bwh, %av_sqrt_sf.exit.i ] ; 2 uses
  %i.bws = load i16, ptr %i.ado, align 2, !tbaa !74 ; 2 uses
  %i.bwt = zext i16 %i.bws to i32
  %i.bwu = load i32, ptr %i.ky, align 8, !tbaa !13 ; 2 uses
  %i.bwv = sub nsw i32 %i.bwt, %i.bwu
  %i.bww = icmp slt i32 %.pre-phi1636.i, %i.bwv
  br i1 %i.bww, label %.lr.ph1509.i, label %.loopexit.i229

.lr.ph1509.i:                                     ; preds = %av_gt_sf.exit1305.thread.i
  %.sroa.25.0.extract.shift.i1306.i = and i64 %i.bwr, -4294967296
  %sext15.i1308.i = shl i64 %i.bwr, 32
  %i.bwx = ashr exact i64 %sext15.i1308.i, 32     ; 3 uses
  %i.bwy = add i64 %.sroa.25.0.extract.shift.i1306.i, -4294967296 ; 3 uses
  %i.bwz = sub i32 0, %.lcssa1454.i
  %i.bxa = sext i32 %i.bwz to i64
  %i.bxb = zext i16 %i.bjg to i64
  %i.bxc = add nsw i64 %i.bxa, %i.bxb
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fw, %.lr.ph1509.i
  %indvars.iv1617.i = phi i64 [ %i.bxc, %.lr.ph1509.i ], [ %indvars.iv.next1618.i, %bb.fw ] ; 4 uses
  %i.bxd = getelementptr inbounds [8 x i8], ptr %i.adc, i64 %indvars.iv1617.i ; 2 uses
  %i.bxe = load i64, ptr %i.bxd, align 8          ; 2 uses
  %sext.i1307.i = shl i64 %i.bxe, 32
  %i.bxf = ashr exact i64 %sext.i1307.i, 32
  %i.bxg = mul nsw i64 %i.bxf, %i.bwx
end_hunk_2
