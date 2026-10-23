Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMeshDetail?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  br i1 %i.apt, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.apu = zext i1 %.not218.i to i32
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %.lr.ph.preheader.i354
  %.298.peel.i = phi i32 [ 1, %.lr.ph.preheader.i354 ], [ %i.apu, %bb.cz ], [ 1, %bb.cy ] ; 2 uses
  %.2.peel.i = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.i354 ], [ %i.aps, %bb.cz ], [ f0x7F7FFFFF, %bb.cy ]
  %exitcond.peel.not.i = icmp eq i32 %.3241.i, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i347, label %.lr.ph.i356

._crit_edge.loopexit.loopexit.i:                  ; preds = %bb.dl
  %i.apv = sext i32 %.2103.i to i64
  br label %._crit_edge.i347

._crit_edge.i347:                                 ; preds = %_ZL13polyMinExtentPKfi.exit.thread.i, %_ZL13polyMinExtentPKfi.exit.i, %._crit_edge.loopexit.loopexit.i, %bb.da, %.loopexit445.i
  %i.apw = phi i1 [ false, %.loopexit445.i ], [ true, %bb.da ], [ true, %._crit_edge.loopexit.loopexit.i ], [ false, %_ZL13polyMinExtentPKfi.exit.i ], [ false, %_ZL13polyMinExtentPKfi.exit.thread.i ] ; 3 uses
  %i.apx = phi i32 [ %i.anw, %.loopexit445.i ], [ 0, %bb.da ], [ %i.anw, %._crit_edge.loopexit.loopexit.i ], [ -1, %_ZL13polyMinExtentPKfi.exit.i ], [ -1, %_ZL13polyMinExtentPKfi.exit.thread.i ] ; 2 uses
  %.pn = phi float [ %i.adm, %.loopexit445.i ], [ %i.adm, %bb.da ], [ %i.adm, %._crit_edge.loopexit.loopexit.i ], [ %i.adm, %_ZL13polyMinExtentPKfi.exit.i ], [ %i.adp, %_ZL13polyMinExtentPKfi.exit.thread.i ]
  %.4242.i485 = phi i32 [ %.3241.i, %.loopexit445.i ], [ 1, %bb.da ], [ %.3241.i, %._crit_edge.loopexit.loopexit.i ], [ 0, %_ZL13polyMinExtentPKfi.exit.i ], [ 0, %_ZL13polyMinExtentPKfi.exit.thread.i ] ; 12 uses
  %i.apy = phi float [ %i.adl, %.loopexit445.i ], [ %i.adl, %bb.da ], [ %i.adl, %._crit_edge.loopexit.loopexit.i ], [ %i.adl, %_ZL13polyMinExtentPKfi.exit.i ], [ %i.ado, %_ZL13polyMinExtentPKfi.exit.thread.i ] ; 2 uses
  %i.apz = phi float [ %i.abs, %.loopexit445.i ], [ %i.abs, %bb.da ], [ %i.abs, %._crit_edge.loopexit.loopexit.i ], [ %i.abs, %_ZL13polyMinExtentPKfi.exit.i ], [ %i.adn, %_ZL13polyMinExtentPKfi.exit.thread.i ]
  %i.aqa = phi i1 [ true, %.loopexit445.i ], [ true, %bb.da ], [ true, %._crit_edge.loopexit.loopexit.i ], [ false, %_ZL13polyMinExtentPKfi.exit.i ], [ %i.es, %_ZL13polyMinExtentPKfi.exit.thread.i ]
  %.0484 = phi i32 [ %.5, %.loopexit445.i ], [ %.5, %bb.da ], [ %.5, %._crit_edge.loopexit.loopexit.i ], [ %.0254.lcssa, %_ZL13polyMinExtentPKfi.exit.i ], [ 0, %_ZL13polyMinExtentPKfi.exit.thread.i ] ; 13 uses
  %.0101.lcssa.i = phi i64 [ 0, %.loopexit445.i ], [ 0, %bb.da ], [ %i.apv, %._crit_edge.loopexit.loopexit.i ], [ 0, %_ZL13polyMinExtentPKfi.exit.i ], [ 0, %_ZL13polyMinExtentPKfi.exit.thread.i ]
  %.096.lcssa.i = phi i32 [ 1, %.loopexit445.i ], [ %.298.peel.i, %bb.da ], [ %.298.i, %._crit_edge.loopexit.loopexit.i ], [ 1, %_ZL13polyMinExtentPKfi.exit.i ], [ 1, %_ZL13polyMinExtentPKfi.exit.thread.i ] ; 3 uses
  %.093.lcssa.i = phi i32 [ %i.anw, %.loopexit445.i ], [ 0, %bb.da ], [ %.295.i, %._crit_edge.loopexit.loopexit.i ], [ -1, %_ZL13polyMinExtentPKfi.exit.i ], [ -1, %_ZL13polyMinExtentPKfi.exit.thread.i ] ; 3 uses
  %i.aqb = fcmp olt float %.pn, %i.fa
  %i.aqc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.0101.lcssa.i ; 2 uses
  %i.aqd = load i64, ptr %6, align 8, !tbaa !67   ; 3 uses
  %i.aqe = load i64, ptr %i.ag, align 8, !tbaa !124 ; 5 uses
  %i.aqf = icmp slt i64 %i.aqd, %i.aqe
  br i1 %i.aqf, label %bb.db, label %bb.dc, !prof !142

bb.db:                                            ; preds = %._crit_edge.i347
  %i.aqg = load ptr, ptr %i.ah, align 8, !tbaa !66 ; 2 uses
  %i.aqh = add nsw i64 %i.aqd, 1                  ; 2 uses
  store i64 %i.aqh, ptr %6, align 8, !tbaa !67
  %i.aqi = getelementptr inbounds [4 x i8], ptr %i.aqg, i64 %i.aqd
  %i.aqj = load i32, ptr %i.aqc, align 4, !tbaa !68
  store i32 %i.aqj, ptr %i.aqi, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i351

bb.dc:                                            ; preds = %._crit_edge.i347
  %i.aqk = add nsw i64 %i.aqe, 1
  %i.aql = icmp sgt i64 %i.aqe, 4611686018427387902
  %i.aqm = shl nsw i64 %i.aqe, 1
  %..i.i.i348 = call i64 @llvm.smax.i64(i64 %i.aqm, i64 %i.aqk)
  %.0.i.i.i349 = select i1 %i.aql, i64 9223372036854775807, i64 %..i.i.i348, !prof !141 ; 2 uses
  %i.aqn = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i.i349) ; 3 uses
  %i.aqo = load i64, ptr %6, align 8, !tbaa !67   ; 2 uses
  %i.aqp = getelementptr inbounds [4 x i8], ptr %i.aqn, i64 %i.aqo
  %i.aqq = load i32, ptr %i.aqc, align 4, !tbaa !68
  store i32 %i.aqq, ptr %i.aqp, align 4, !tbaa !68
  %i.aqr = add nsw i64 %i.aqo, 1
  store i64 %i.aqr, ptr %6, align 8, !tbaa !67
  store i64 %.0.i.i.i349, ptr %i.ag, align 8, !tbaa !124
  %i.aqs = load ptr, ptr %i.ah, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.aqs) #8
  store ptr %i.aqn, ptr %i.ah, align 8, !tbaa !66
  %.pre.i350 = load i64, ptr %6, align 8, !tbaa !67
  %.pre162.i = load i64, ptr %i.ag, align 8, !tbaa !124
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i351

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i351: ; preds = %bb.dc, %bb.db
  %i.aqt = phi ptr [ %i.aqg, %bb.db ], [ %i.aqn, %bb.dc ] ; 2 uses
  %i.aqu = phi i64 [ %i.aqe, %bb.db ], [ %.pre162.i, %bb.dc ] ; 5 uses
  %i.aqv = phi i64 [ %i.aqh, %bb.db ], [ %.pre.i350, %bb.dc ] ; 3 uses
  %i.aqw = sext i32 %.096.lcssa.i to i64
  %i.aqx = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aqw ; 2 uses
  %i.aqy = icmp slt i64 %i.aqv, %i.aqu
  br i1 %i.aqy, label %bb.dd, label %bb.de, !prof !142

bb.dd:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i351
  %i.aqz = add nsw i64 %i.aqv, 1                  ; 2 uses
  store i64 %i.aqz, ptr %6, align 8, !tbaa !67
  %i.ara = getelementptr inbounds [4 x i8], ptr %i.aqt, i64 %i.aqv
  %i.arb = load i32, ptr %i.aqx, align 4, !tbaa !68
  store i32 %i.arb, ptr %i.ara, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit110.i

bb.de:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i351
  %i.arc = add nsw i64 %i.aqu, 1
  %i.ard = icmp sgt i64 %i.aqu, 4611686018427387902
  %i.are = shl nsw i64 %i.aqu, 1
  %..i.i108.i = call i64 @llvm.smax.i64(i64 %i.are, i64 %i.arc)
  %.0.i.i109.i = select i1 %i.ard, i64 9223372036854775807, i64 %..i.i108.i, !prof !141 ; 2 uses
  %i.arf = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i109.i) ; 3 uses
  %i.arg = load i64, ptr %6, align 8, !tbaa !67   ; 2 uses
  %i.arh = getelementptr inbounds [4 x i8], ptr %i.arf, i64 %i.arg
  %i.ari = load i32, ptr %i.aqx, align 4, !tbaa !68
  store i32 %i.ari, ptr %i.arh, align 4, !tbaa !68
  %i.arj = add nsw i64 %i.arg, 1
  store i64 %i.arj, ptr %6, align 8, !tbaa !67
  store i64 %.0.i.i109.i, ptr %i.ag, align 8, !tbaa !124
  %i.ark = load ptr, ptr %i.ah, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.ark) #8
  store ptr %i.arf, ptr %i.ah, align 8, !tbaa !66
  %.pre163.i = load i64, ptr %6, align 8, !tbaa !67
  %.pre164.i = load i64, ptr %i.ag, align 8, !tbaa !124
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit110.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit110.i: ; preds = %bb.de, %bb.dd
  %i.arl = phi ptr [ %i.aqt, %bb.dd ], [ %i.arf, %bb.de ] ; 2 uses
  %i.arm = phi i64 [ %i.aqu, %bb.dd ], [ %.pre164.i, %bb.de ] ; 5 uses
  %i.arn = phi i64 [ %i.aqz, %bb.dd ], [ %.pre163.i, %bb.de ] ; 3 uses
  %i.aro = sext i32 %.093.lcssa.i to i64
  %i.arp = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aro ; 2 uses
  %i.arq = icmp slt i64 %i.arn, %i.arm
  br i1 %i.arq, label %bb.df, label %bb.dg, !prof !142

bb.df:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit110.i
  %i.arr = add nsw i64 %i.arn, 1                  ; 2 uses
  store i64 %i.arr, ptr %6, align 8, !tbaa !67
  %i.ars = getelementptr inbounds [4 x i8], ptr %i.arl, i64 %i.arn
  %i.art = load i32, ptr %i.arp, align 4, !tbaa !68
  store i32 %i.art, ptr %i.ars, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit113.i

bb.dg:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit110.i
  %i.aru = add nsw i64 %i.arm, 1
  %i.arv = icmp sgt i64 %i.arm, 4611686018427387902
  %i.arw = shl nsw i64 %i.arm, 1
  %..i.i111.i = call i64 @llvm.smax.i64(i64 %i.arw, i64 %i.aru)
  %.0.i.i112.i = select i1 %i.arv, i64 9223372036854775807, i64 %..i.i111.i, !prof !141 ; 2 uses
  %i.arx = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i112.i) ; 3 uses
  %i.ary = load i64, ptr %6, align 8, !tbaa !67   ; 2 uses
  %i.arz = getelementptr inbounds [4 x i8], ptr %i.arx, i64 %i.ary
  %i.asa = load i32, ptr %i.arp, align 4, !tbaa !68
  store i32 %i.asa, ptr %i.arz, align 4, !tbaa !68
  %i.asb = add nsw i64 %i.ary, 1
  store i64 %i.asb, ptr %6, align 8, !tbaa !67
  store i64 %.0.i.i112.i, ptr %i.ag, align 8, !tbaa !124
  %i.asc = load ptr, ptr %i.ah, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.asc) #8
  store ptr %i.arx, ptr %i.ah, align 8, !tbaa !66
  %.pre165.i = load i64, ptr %6, align 8, !tbaa !67
  %.pre166.i = load i64, ptr %i.ag, align 8, !tbaa !124
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit113.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit113.i: ; preds = %bb.dg, %bb.df
  %i.asd = phi ptr [ %i.arl, %bb.df ], [ %i.arx, %bb.dg ] ; 2 uses
  %i.ase = phi i64 [ %i.arm, %bb.df ], [ %.pre166.i, %bb.dg ] ; 4 uses
  %i.asf = phi i64 [ %i.arr, %bb.df ], [ %.pre165.i, %bb.dg ] ; 3 uses
  %i.asg = icmp slt i64 %i.asf, %i.ase
  br i1 %i.asg, label %bb.dh, label %bb.di, !prof !142

bb.dh:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit113.i
  %i.ash = add nsw i64 %i.asf, 1
  store i64 %i.ash, ptr %6, align 8, !tbaa !67
  %i.asi = getelementptr inbounds [4 x i8], ptr %i.asd, i64 %i.asf
  store i32 0, ptr %i.asi, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit116.i

bb.di:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit113.i
  %i.asj = add nsw i64 %i.ase, 1
  %i.ask = icmp sgt i64 %i.ase, 4611686018427387902
  %i.asl = shl nsw i64 %i.ase, 1
  %..i.i114.i = call i64 @llvm.smax.i64(i64 %i.asl, i64 %i.asj)
  %.0.i.i115.i = select i1 %i.ask, i64 9223372036854775807, i64 %..i.i114.i, !prof !141 ; 2 uses
  %i.asm = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i115.i) ; 3 uses
  %i.asn = load i64, ptr %6, align 8, !tbaa !67   ; 2 uses
  %i.aso = getelementptr inbounds [4 x i8], ptr %i.asm, i64 %i.asn
  store i32 0, ptr %i.aso, align 4, !tbaa !68
  %i.asp = add nsw i64 %i.asn, 1
  store i64 %i.asp, ptr %6, align 8, !tbaa !67
  store i64 %.0.i.i115.i, ptr %i.ag, align 8, !tbaa !124
  %i.asq = load ptr, ptr %i.ah, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.asq) #8
  store ptr %i.asm, ptr %i.ah, align 8, !tbaa !66
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit116.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit116.i: ; preds = %bb.di, %bb.dh
  %i.asr = phi ptr [ %i.asd, %bb.dh ], [ %i.asm, %bb.di ] ; 2 uses
  %i.ass = add nsw i32 %.096.lcssa.i, 1           ; 2 uses
  %i.ast = icmp slt i32 %i.ass, %.4242.i485
  %i.asu = select i1 %i.ast, i32 %i.ass, i32 0    ; 2 uses
  %.not155.i = icmp eq i32 %i.asu, %.093.lcssa.i
  br i1 %.not155.i, label %_ZL15triangulateHulliPKfiPKiiR12rcTempVectorIiE.exit, label %.lr.ph158.i

.lr.ph.i356:                                      ; preds = %bb.da, %bb.dl
  %indvars.iv.i357 = phi i64 [ %indvars.iv.next.pre-phi.i, %bb.dl ], [ 1, %bb.da ] ; 4 uses
  %.092151.i = phi float [ %.2.i, %bb.dl ], [ %.2.peel.i, %bb.da ] ; 3 uses
  %.093150.i = phi i32 [ %.295.i, %bb.dl ], [ %i.anw, %bb.da ] ; 2 uses
  %.096149.i = phi i32 [ %.298.i, %bb.dl ], [ %.298.peel.i, %bb.da ] ; 2 uses
  %.0101148.i = phi i32 [ %.2103.i, %bb.dl ], [ 0, %bb.da ] ; 2 uses
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i357
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !68 ; 2 uses
  %.not107.i = icmp slt i32 %i.asw, %.0254.lcssa
  br i1 %.not107.i, label %bb.dj, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i356
  %.pre179.i = add nuw nsw i64 %indvars.iv.i357, 1
  br label %bb.dl

bb.dj:                                            ; preds = %.lr.ph.i356
  %i.asx = trunc i64 %indvars.iv.i357 to i32      ; 2 uses
  %i.asy = add nsw i32 %i.asx, -1                 ; 2 uses
  %i.asz = add nuw nsw i64 %indvars.iv.i357, 1    ; 4 uses
  %8 = icmp samesign ult i64 %i.asz, %i.any
  %i.ata = trunc nuw nsw i64 %i.asz to i32
  %i.atb = select i1 %8, i32 %i.ata, i32 0        ; 2 uses
  %i.atc = sext i32 %i.asy to i64
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.atc
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !68
  %i.atf = mul nsw i32 %i.ate, 3
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.atg ; 2 uses
  %i.ati = mul nsw i32 %i.asw, 3
  %i.atj = sext i32 %i.ati to i64
  %i.atk = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.atj ; 2 uses
  %i.atl = zext nneg i32 %i.atb to i64
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.atl
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !68
  %i.ato = mul nsw i32 %i.atn, 3
  %i.atp = sext i32 %i.ato to i64
  %i.atq = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.atp ; 2 uses
  %i.atr = load float, ptr %i.atk, align 4, !tbaa !62 ; 2 uses
  %i.ats = load float, ptr %i.ath, align 4, !tbaa !62 ; 2 uses
  %i.att = fsub float %i.atr, %i.ats              ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atk, i64 8
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !62 ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ath, i64 8
  %i.atx = load float, ptr %i.atw, align 4, !tbaa !62 ; 2 uses
  %i.aty = fsub float %i.atv, %i.atx              ; 2 uses
  %i.atz = fmul float %i.aty, %i.aty
  %i.aua = call noundef float @llvm.fmuladd.f32(float %i.att, float %i.att, float %i.atz)
  %i.aub = call noundef float @sqrtf(float noundef %i.aua) #8
  %i.auc = load float, ptr %i.atq, align 4, !tbaa !62 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !62 ; 2 uses
  %i.auf = insertelement <2 x float> poison, float %i.auc, i64 0
  %i.aug = insertelement <2 x float> %i.auf, float %i.ats, i64 1
  %i.auh = insertelement <2 x float> poison, float %i.atr, i64 0
  %i.aui = insertelement <2 x float> %i.auh, float %i.auc, i64 1
  %i.auj = fsub <2 x float> %i.aug, %i.aui        ; 2 uses
  %i.auk = insertelement <2 x float> poison, float %i.aue, i64 0
  %i.aul = insertelement <2 x float> %i.auk, float %i.atx, i64 1
  %i.aum = insertelement <2 x float> poison, float %i.atv, i64 0
  %i.aun = insertelement <2 x float> %i.aum, float %i.aue, i64 1
  %i.auo = fsub <2 x float> %i.aul, %i.aun        ; 2 uses
  %i.aup = fmul <2 x float> %i.auo, %i.auo
  %i.auq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.auj, <2 x float> %i.auj, <2 x float> %i.aup) ; 2 uses
  %i.aur = extractelement <2 x float> %i.auq, i64 0
  %i.aus = call noundef float @sqrtf(float noundef %i.aur) #8
  %i.aut = fadd float %i.aub, %i.aus
  %i.auu = extractelement <2 x float> %i.auq, i64 1
  %i.auv = call noundef float @sqrtf(float noundef %i.auu) #8
  %i.auw = fadd float %i.aut, %i.auv              ; 2 uses
  %i.aux = fcmp olt float %i.auw, %.092151.i
  br i1 %i.aux, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %.lr.ph._crit_edge.i
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre179.i, %.lr.ph._crit_edge.i ], [ %i.asz, %bb.dj ], [ %i.asz, %bb.dk ] ; 2 uses
  %.2103.i = phi i32 [ %.0101148.i, %.lr.ph._crit_edge.i ], [ %.0101148.i, %bb.dj ], [ %i.asx, %bb.dk ] ; 2 uses
  %.298.i = phi i32 [ %.096149.i, %.lr.ph._crit_edge.i ], [ %.096149.i, %bb.dj ], [ %i.atb, %bb.dk ] ; 2 uses
  %.295.i = phi i32 [ %.093150.i, %.lr.ph._crit_edge.i ], [ %.093150.i, %bb.dj ], [ %i.asy, %bb.dk ] ; 2 uses
  %.2.i = phi float [ %.092151.i, %.lr.ph._crit_edge.i ], [ %.092151.i, %bb.dj ], [ %i.auw, %bb.dk ]
  %exitcond.not.i358 = icmp eq i64 %indvars.iv.next.pre-phi.i, %i.any
  br i1 %exitcond.not.i358, label %._crit_edge.loopexit.loopexit.i, label %.lr.ph.i356, !llvm.loop !89

.lr.ph158.i:                                      ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit116.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit129.i
  %i.auy = phi ptr [ %i.bca, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit129.i ], [ %i.asr, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit116.i ] ; 2 uses
  %i.auz = phi ptr [ %i.bcb, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit129.i ], [ %i.asr, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit116.i ] ; 4 uses
  %i.ava = phi i32 [ %i.bce, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit129.i ], [ %i.asu, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit116.i ] ; 3 uses
  %.3157.i = phi i32 [ %.4.i352, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit129.i ], [ %.093.lcssa.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit116.i ] ; 5 uses
  %.399156.i = phi i32 [ %.4100.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit129.i ], [ %.096.lcssa.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit116.i ] ; 3 uses
  %i.avb = icmp sgt i32 %.3157.i, 0
  %.v.i117.i = select i1 %i.avb, i32 %.3157.i, i32 %.4242.i485
  %i.avc = add nsw i32 %.v.i117.i, -1             ; 3 uses
  %i.avd = sext i32 %.399156.i to i64
  %i.ave = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.avd
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !68 ; 5 uses
  %i.avg = mul nsw i32 %i.avf, 3
  %i.avh = sext i32 %i.avg to i64
  %i.avi = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.avh ; 2 uses
  %i.avj = sext i32 %i.ava to i64
  %i.avk = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.avj ; 3 uses
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !68
  %i.avm = mul nsw i32 %i.avl, 3
  %i.avn = sext i32 %i.avm to i64
  %i.avo = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.avn ; 2 uses
  %i.avp = sext i32 %.3157.i to i64
  %i.avq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.avp ; 5 uses
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !68
  %i.avs = mul nsw i32 %i.avr, 3
  %i.avt = sext i32 %i.avs to i64
  %i.avu = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.avt ; 2 uses
  %i.avv = sext i32 %i.avc to i64
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.avv ; 3 uses
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !68
  %i.avy = mul nsw i32 %i.avx, 3
  %i.avz = sext i32 %i.avy to i64
  %i.awa = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.avz ; 2 uses
  %i.awb = load float, ptr %i.avo, align 4, !tbaa !62 ; 2 uses
  %i.awc = load float, ptr %i.avi, align 4, !tbaa !62 ; 2 uses
  %i.awd = fsub float %i.awb, %i.awc              ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avo, i64 8
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !62 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !62 ; 2 uses
  %i.awi = fsub float %i.awf, %i.awh              ; 2 uses
  %i.awj = fmul float %i.awi, %i.awi
  %i.awk = call noundef float @llvm.fmuladd.f32(float %i.awd, float %i.awd, float %i.awj)
  %i.awl = call noundef float @sqrtf(float noundef %i.awk) #8
  %i.awm = load float, ptr %i.avu, align 4, !tbaa !62 ; 2 uses
  %i.awn = fsub float %i.awm, %i.awb              ; 2 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avu, i64 8
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !62 ; 2 uses
  %i.awq = fsub float %i.awp, %i.awf              ; 2 uses
  %i.awr = fmul float %i.awq, %i.awq
  %i.aws = call noundef float @llvm.fmuladd.f32(float %i.awn, float %i.awn, float %i.awr)
  %i.awt = call noundef float @sqrtf(float noundef %i.aws) #8
  %i.awu = fadd float %i.awl, %i.awt
  %i.awv = load float, ptr %i.awa, align 4, !tbaa !62 ; 2 uses
  %i.aww = fsub float %i.awv, %i.awm              ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awa, i64 8
  %i.awy = load float, ptr %i.awx, align 4, !tbaa !62 ; 2 uses
  %i.awz = fsub float %i.awy, %i.awp              ; 2 uses
  %i.axa = fmul float %i.awz, %i.awz
  %i.axb = call noundef float @llvm.fmuladd.f32(float %i.aww, float %i.aww, float %i.axa)
  %i.axc = call noundef float @sqrtf(float noundef %i.axb) #8
  %i.axd = fsub float %i.awv, %i.awc              ; 2 uses
  %i.axe = fsub float %i.awy, %i.awh              ; 2 uses
  %i.axf = fmul float %i.axe, %i.axe
  %i.axg = call noundef float @llvm.fmuladd.f32(float %i.axd, float %i.axd, float %i.axf)
  %i.axh = call noundef float @sqrtf(float noundef %i.axg) #8
  %i.axi = fadd float %i.axc, %i.axh
  %i.axj = fcmp olt float %i.awu, %i.axi
  %i.axk = load i64, ptr %6, align 8, !tbaa !67   ; 5 uses
  %i.axl = load i64, ptr %i.ag, align 8, !tbaa !124 ; 9 uses
  %i.axm = icmp slt i64 %i.axk, %i.axl            ; 2 uses
  br i1 %i.axj, label %bb.dm, label %bb.dv

bb.dm:                                            ; preds = %.lr.ph158.i
  br i1 %i.axm, label %bb.dn, label %bb.do, !prof !142

bb.dn:                                            ; preds = %bb.dm
  %i.axn = add nsw i64 %i.axk, 1                  ; 2 uses
  store i64 %i.axn, ptr %6, align 8, !tbaa !67
  %i.axo = getelementptr inbounds [4 x i8], ptr %i.auz, i64 %i.axk
  store i32 %i.avf, ptr %i.axo, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit120.i

bb.do:                                            ; preds = %bb.dm
  %i.axp = add nsw i64 %i.axl, 1
  %i.axq = icmp sgt i64 %i.axl, 4611686018427387902
  %i.axr = shl nsw i64 %i.axl, 1
  %..i.i118.i = call i64 @llvm.smax.i64(i64 %i.axr, i64 %i.axp)
  %.0.i.i119.i = select i1 %i.axq, i64 9223372036854775807, i64 %..i.i118.i, !prof !141 ; 2 uses
  %i.axs = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i119.i) ; 4 uses
  %i.axt = load i64, ptr %6, align 8, !tbaa !67   ; 2 uses
  %i.axu = getelementptr inbounds [4 x i8], ptr %i.axs, i64 %i.axt
  store i32 %i.avf, ptr %i.axu, align 4, !tbaa !68
  %i.axv = add nsw i64 %i.axt, 1
  store i64 %i.axv, ptr %6, align 8, !tbaa !67
  store i64 %.0.i.i119.i, ptr %i.ag, align 8, !tbaa !124
  %i.axw = load ptr, ptr %i.ah, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.axw) #8
  store ptr %i.axs, ptr %i.ah, align 8, !tbaa !66
  %.pre173.i = load i64, ptr %6, align 8, !tbaa !67
  %.pre174.i = load i64, ptr %i.ag, align 8, !tbaa !124
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit120.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit120.i: ; preds = %bb.do, %bb.dn
  %i.axx = phi ptr [ %i.auy, %bb.dn ], [ %i.axs, %bb.do ]
  %i.axy = phi ptr [ %i.auz, %bb.dn ], [ %i.axs, %bb.do ] ; 2 uses
  %i.axz = phi i64 [ %i.axl, %bb.dn ], [ %.pre174.i, %bb.do ] ; 5 uses
  %i.aya = phi i64 [ %i.axn, %bb.dn ], [ %.pre173.i, %bb.do ] ; 3 uses
  %i.ayb = icmp slt i64 %i.aya, %i.axz
  br i1 %i.ayb, label %bb.dp, label %bb.dq, !prof !142

bb.dp:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit120.i
  %i.ayc = add nsw i64 %i.aya, 1                  ; 2 uses
  store i64 %i.ayc, ptr %6, align 8, !tbaa !67
  %i.ayd = getelementptr inbounds [4 x i8], ptr %i.axy, i64 %i.aya
  %i.aye = load i32, ptr %i.avk, align 4, !tbaa !68
  store i32 %i.aye, ptr %i.ayd, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit123.i

bb.dq:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit120.i
  %i.ayf = add nsw i64 %i.axz, 1
  %i.ayg = icmp sgt i64 %i.axz, 4611686018427387902
  %i.ayh = shl nsw i64 %i.axz, 1
  %..i.i121.i = call i64 @llvm.smax.i64(i64 %i.ayh, i64 %i.ayf)
  %.0.i.i122.i = select i1 %i.ayg, i64 9223372036854775807, i64 %..i.i121.i, !prof !141 ; 2 uses
  %i.ayi = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i122.i) ; 4 uses
  %i.ayj = load i64, ptr %6, align 8, !tbaa !67   ; 2 uses
  %i.ayk = getelementptr inbounds [4 x i8], ptr %i.ayi, i64 %i.ayj
  %i.ayl = load i32, ptr %i.avk, align 4, !tbaa !68
  store i32 %i.ayl, ptr %i.ayk, align 4, !tbaa !68
  %i.aym = add nsw i64 %i.ayj, 1
  store i64 %i.aym, ptr %6, align 8, !tbaa !67
  store i64 %.0.i.i122.i, ptr %i.ag, align 8, !tbaa !124
  %i.ayn = load ptr, ptr %i.ah, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.ayn) #8
  store ptr %i.ayi, ptr %i.ah, align 8, !tbaa !66
end_hunk_0
