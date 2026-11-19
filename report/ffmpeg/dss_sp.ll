Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dss_sp?download=true
inline.NumInlined: 35
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 34
begin_hunk_0_@dss_sp_decode_frame:bb.a
  %wide.load131.6 = load <4 x i32>, ptr %i.tl, align 4, !tbaa !29
  %i.apj = ashr <4 x i32> %wide.load130.6, %broadcast.splat
  %i.apk = ashr <4 x i32> %wide.load131.6, %broadcast.splat
  store <4 x i32> %i.apj, ptr %i.tk, align 4, !tbaa !29
  store <4 x i32> %i.apk, ptr %i.tl, align 4, !tbaa !29
  %wide.load130.7 = load <4 x i32>, ptr %i.tm, align 4, !tbaa !29
  %wide.load131.7 = load <4 x i32>, ptr %i.tn, align 4, !tbaa !29
  %i.apl = ashr <4 x i32> %wide.load130.7, %broadcast.splat
  %i.apm = ashr <4 x i32> %wide.load131.7, %broadcast.splat
  store <4 x i32> %i.apl, ptr %i.tm, align 4, !tbaa !29
  store <4 x i32> %i.apm, ptr %i.tn, align 4, !tbaa !29
  %wide.load130.8 = load <4 x i32>, ptr %i.to, align 4, !tbaa !29
  %wide.load131.8 = load <4 x i32>, ptr %i.tp, align 4, !tbaa !29
  %i.apn = ashr <4 x i32> %wide.load130.8, %broadcast.splat
  %i.apo = ashr <4 x i32> %wide.load131.8, %broadcast.splat
  store <4 x i32> %i.apn, ptr %i.to, align 4, !tbaa !29
  store <4 x i32> %i.apo, ptr %i.tp, align 4, !tbaa !29
  %i.app = ashr i32 %i.ajx, %.013.lcssa.i174.i.i
  store i32 %i.app, ptr %i.oq, align 8, !tbaa !29
  %i.apq = load <4 x i32>, ptr %i.or, align 4, !tbaa !29
  %i.apr = ashr <4 x i32> %i.apq, %i.aii
  store <4 x i32> %i.apr, ptr %i.or, align 4, !tbaa !29
  %i.aps = load <4 x i32>, ptr %i.ov, align 4, !tbaa !29
  %i.apt = ashr <4 x i32> %i.aps, %i.aii
  store <4 x i32> %i.apt, ptr %i.ov, align 4, !tbaa !29
  %i.apu = load <4 x i32>, ptr %i.ox, align 4, !tbaa !29
  %i.apv = ashr <4 x i32> %i.apu, %i.aii
  store <4 x i32> %i.apv, ptr %i.ox, align 4, !tbaa !29
  %i.apw = load i32, ptr %i.oz, align 4, !tbaa !29
  %i.apx = ashr i32 %i.apw, %.013.lcssa.i174.i.i
  store i32 %i.apx, ptr %i.oz, align 4, !tbaa !29
  %i.apy = load i32, ptr %i.pa, align 16, !tbaa !29
  %i.apz = ashr i32 %i.apy, %.013.lcssa.i174.i.i
  store i32 %i.apz, ptr %i.pa, align 16, !tbaa !29
  %i.aqa = ashr exact i32 %i.aiq, %.013.lcssa.i174.i.i
  store i32 %i.aqa, ptr %i.pb, align 4, !tbaa !29
  %i.aqb = ashr i32 %i.ali, %.013.lcssa.i174.i.i
  store i32 %i.aqb, ptr %i.pc, align 8, !tbaa !29
  %i.aqc = load <4 x i32>, ptr %i.pd, align 4, !tbaa !29
  %i.aqd = ashr <4 x i32> %i.aqc, %i.aii
  store <4 x i32> %i.aqd, ptr %i.pd, align 4, !tbaa !29
  %i.aqe = load <4 x i32>, ptr %i.pf, align 4, !tbaa !29
  %i.aqf = ashr <4 x i32> %i.aqe, %i.aii
  store <4 x i32> %i.aqf, ptr %i.pf, align 4, !tbaa !29
  %i.aqg = load <4 x i32>, ptr %i.ph, align 4, !tbaa !29
  %i.aqh = ashr <4 x i32> %i.aqg, %i.aii
  store <4 x i32> %i.aqh, ptr %i.ph, align 4, !tbaa !29
  %i.aqi = load i32, ptr %i.pj, align 4, !tbaa !29
  %i.aqj = ashr i32 %i.aqi, %.013.lcssa.i174.i.i
  br label %dss_sp_scale_vector.exit152.i.i

dss_sp_scale_vector.exit152.i.i:                  ; preds = %vector.body137, %vector.body128
  %storemerge.i.i = phi i32 [ %i.aow, %vector.body137 ], [ %i.aqj, %vector.body128 ]
  store i32 %storemerge.i.i, ptr %i.pj, align 4, !tbaa !29
  %wide.load123 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !29
  %wide.load124 = load <4 x i32>, ptr %i.tq, align 4, !tbaa !29
  %i.aqk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load123, i1 true)
  %i.aql = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load124, i1 true)
  %wide.load123.1 = load <4 x i32>, ptr %i.tr, align 4, !tbaa !29
  %wide.load124.1 = load <4 x i32>, ptr %i.ts, align 4, !tbaa !29
  %i.aqm = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load123.1, i1 true)
  %i.aqn = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load124.1, i1 true)
  %i.aqo = add nuw <4 x i32> %i.aqm, %i.aqk
  %i.aqp = add nuw <4 x i32> %i.aqn, %i.aql
  %wide.load123.2 = load <4 x i32>, ptr %i.tt, align 4, !tbaa !29
  %wide.load124.2 = load <4 x i32>, ptr %i.tu, align 4, !tbaa !29
  %i.aqq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load123.2, i1 true)
  %i.aqr = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load124.2, i1 true)
  %i.aqs = add <4 x i32> %i.aqq, %i.aqo
  %i.aqt = add <4 x i32> %i.aqr, %i.aqp
  %wide.load123.3 = load <4 x i32>, ptr %i.tv, align 4, !tbaa !29
  %wide.load124.3 = load <4 x i32>, ptr %i.tw, align 4, !tbaa !29
  %i.aqu = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load123.3, i1 true)
  %i.aqv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load124.3, i1 true)
  %i.aqw = add <4 x i32> %i.aqu, %i.aqs
  %i.aqx = add <4 x i32> %i.aqv, %i.aqt
  %wide.load123.4 = load <4 x i32>, ptr %i.tx, align 4, !tbaa !29
  %wide.load124.4 = load <4 x i32>, ptr %i.ty, align 4, !tbaa !29
  %i.aqy = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load123.4, i1 true)
  %i.aqz = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load124.4, i1 true)
  %i.ara = add <4 x i32> %i.aqy, %i.aqw
  %i.arb = add <4 x i32> %i.aqz, %i.aqx
  %wide.load123.5 = load <4 x i32>, ptr %i.tz, align 4, !tbaa !29
  %wide.load124.5 = load <4 x i32>, ptr %i.ua, align 4, !tbaa !29
  %i.arc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load123.5, i1 true)
  %i.ard = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load124.5, i1 true)
  %i.are = add <4 x i32> %i.arc, %i.ara
  %i.arf = add <4 x i32> %i.ard, %i.arb
  %wide.load123.6 = load <4 x i32>, ptr %i.ub, align 4, !tbaa !29
  %wide.load124.6 = load <4 x i32>, ptr %i.uc, align 4, !tbaa !29
  %i.arg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load123.6, i1 true)
  %i.arh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load124.6, i1 true)
  %i.ari = add <4 x i32> %i.arg, %i.are
  %i.arj = add <4 x i32> %i.arh, %i.arf
  %wide.load123.7 = load <4 x i32>, ptr %i.ud, align 4, !tbaa !29
  %wide.load124.7 = load <4 x i32>, ptr %i.ue, align 4, !tbaa !29
  %i.ark = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load123.7, i1 true)
  %i.arl = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load124.7, i1 true)
  %i.arm = add <4 x i32> %i.ark, %i.ari
  %i.arn = add <4 x i32> %i.arl, %i.arj
  %wide.load123.8 = load <4 x i32>, ptr %i.uf, align 4, !tbaa !29
  %wide.load124.8 = load <4 x i32>, ptr %i.ug, align 4, !tbaa !29
  %i.aro = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load123.8, i1 true)
  %i.arp = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load124.8, i1 true)
  %i.arq = add <4 x i32> %i.aro, %i.arm
  %i.arr = add <4 x i32> %i.arp, %i.arn
  %bin.rdx = add <4 x i32> %i.arr, %i.arq
  %i.ars = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %i.art = icmp samesign ugt i32 %i.ars, 63
  br i1 %i.art, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %dss_sp_scale_vector.exit152.i.i
  %i.aru = shl nuw nsw i32 %spec.store.select.i.i, 11
  %i.arv = udiv i32 %i.aru, %i.ars
  %i.arw = mul nuw nsw i32 %i.arv, 409
  %i.arx = and i32 %i.arw, 2147450880
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %dss_sp_scale_vector.exit152.i.i
  %.0.i.i = phi i32 [ %i.arx, %bb.af ], [ 0, %dss_sp_scale_vector.exit152.i.i ] ; 3 uses
  %i.ary = load i32, ptr %i.pk, align 4, !tbaa !76
  %i.arz = mul nsw i32 %i.ary, 32358
  %i.asa = add nsw i32 %i.arz, %.0.i.i
  %i.asb = ashr i32 %i.asa, 15
  %i.asc = tail call i32 @llvm.smax.i32(i32 %i.asb, i32 -32768)
  %i.asd = tail call i32 @llvm.smin.i32(i32 %i.asc, i32 32767) ; 2 uses
  store i32 %i.asd, ptr %i.a, align 16, !tbaa !29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %store_forwarded = phi i32 [ %i.asd, %bb.ag ], [ %i.asp, %bb.ai ]
  %indvars.iv228.i.i = phi i64 [ 1, %bb.ag ], [ %indvars.iv.next229.i.i.1, %bb.ai ] ; 3 uses
  %i.ase = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv228.i.i
  %i.asf = mul nsw i32 %store_forwarded, 32358
  %i.asg = add nsw i32 %i.asf, %.0.i.i
  %i.ash = ashr i32 %i.asg, 15
  %i.asi = tail call i32 @llvm.smax.i32(i32 %i.ash, i32 -32768)
  %i.asj = tail call i32 @llvm.smin.i32(i32 %i.asi, i32 32767) ; 2 uses
  store i32 %i.asj, ptr %i.ase, align 4, !tbaa !29
  %indvars.iv.next229.i.i = add nuw nsw i64 %indvars.iv228.i.i, 1 ; 2 uses
  %exitcond.not.i57.i = icmp eq i64 %indvars.iv.next229.i.i, 72
  br i1 %exitcond.not.i57.i, label %vector.ph, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ask = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next229.i.i
  %i.asl = mul nsw i32 %i.asj, 32358
  %i.asm = add nsw i32 %i.asl, %.0.i.i
  %i.asn = ashr i32 %i.asm, 15
  %i.aso = tail call i32 @llvm.smax.i32(i32 %i.asn, i32 -32768)
  %i.asp = tail call i32 @llvm.smin.i32(i32 %i.aso, i32 32767) ; 2 uses
  store i32 %i.asp, ptr %i.ask, align 4, !tbaa !29
  %indvars.iv.next229.i.i.1 = add nuw nsw i64 %indvars.iv228.i.i, 2
  br label %bb.ah

vector.ph:                                        ; preds = %bb.ah
  %i.asq = load i32, ptr %i.pl, align 4, !tbaa !29
  store i32 %i.asq, ptr %i.pk, align 4, !tbaa !76
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %index ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 16
  %wide.load = load <4 x i32>, ptr %i.asr, align 4, !tbaa !29
  %wide.load116 = load <4 x i32>, ptr %i.ass, align 4, !tbaa !29
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 16
  %wide.load117 = load <4 x i32>, ptr %i.ast, align 16, !tbaa !29
  %wide.load118 = load <4 x i32>, ptr %i.asu, align 16, !tbaa !29
  %i.asv = mul nsw <4 x i32> %wide.load117, %wide.load
  %i.asw = mul nsw <4 x i32> %wide.load118, %wide.load116
  %i.asx = ashr <4 x i32> %i.asv, splat (i32 11)
  %i.asy = ashr <4 x i32> %i.asw, splat (i32 11)
  %i.asz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.asx, <4 x i32> splat (i32 -32768))
  %i.ata = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.asy, <4 x i32> splat (i32 -32768))
  %i.atb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.asz, <4 x i32> splat (i32 32767))
  %i.atc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ata, <4 x i32> splat (i32 32767))
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %index ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 16
  store <4 x i32> %i.atb, ptr %i.atd, align 4, !tbaa !29
  store <4 x i32> %i.atc, ptr %i.ate, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.atf = icmp eq i64 %index.next, 72
  br i1 %i.atf, label %dss_sp_sf_synthesis.exit.i, label %vector.body, !llvm.loop !54

dss_sp_sf_synthesis.exit.i:                       ; preds = %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next152.i, 4
  br i1 %exitcond154.not.i, label %.preheader.i62.preheader.i, label %bb.ad, !llvm.loop !55

.preheader.i62.preheader.i:                       ; preds = %dss_sp_sf_synthesis.exit.i
  %i.atg = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %scevgep.i58.i = getelementptr nuw i8, ptr %i.d, i64 1160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atg, ptr noundef nonnull align 8 dereferenceable(24) %scevgep.i58.i, i64 24, i1 false), !tbaa !29
  %scevgep.i = getelementptr i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1152) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1152) %i.op, i64 1152, i1 false), !tbaa !29
  br label %.preheader.i62.i

.preheader.i62.i:                                 ; preds = %.preheader.i62.i, %.preheader.i62.preheader.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %.preheader.i62.i ], [ 0, %.preheader.i62.preheader.i ] ; 2 uses
  %.030.i.i.a = phi i32 [ %spec.select.i.i, %.preheader.i62.i ], [ 6, %.preheader.i62.preheader.i ] ; 2 uses
  %.028.i.i = phi i32 [ %i.auy, %.preheader.i62.i ], [ 0, %.preheader.i62.preheader.i ] ; 2 uses
  %i.ath = zext nneg i32 %.030.i.i.a to i64       ; 2 uses
  %i.ati = sext i32 %.028.i.i to i64
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %i.ath ; 5 uses
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !29
  %i.atl = getelementptr inbounds [4 x i8], ptr @dss_sp_sinc, i64 %i.ati ; 6 uses
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !29
  %i.atn = mul nsw i32 %i.atm, %i.atk
  %i.ato = getelementptr i8, ptr %i.atj, i64 -4
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !29
  %i.atq = getelementptr i8, ptr %i.atl, i64 44
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !29
  %i.ats = mul nsw i32 %i.atr, %i.atp
  %i.att = add nsw i32 %i.ats, %i.atn
  %i.atu = getelementptr [4 x i8], ptr %i.d, i64 %i.ath
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !29
  %i.atw = getelementptr i8, ptr %i.atl, i64 88
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !29
  %i.aty = mul nsw i32 %i.atx, %i.atv
  %i.atz = add nsw i32 %i.att, %i.aty
  %i.aua = getelementptr i8, ptr %i.atj, i64 -12
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !29
  %i.auc = getelementptr i8, ptr %i.atl, i64 132
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !29
  %i.aue = mul nsw i32 %i.aud, %i.aub
  %i.auf = add nsw i32 %i.atz, %i.aue
  %i.aug = getelementptr i8, ptr %i.atj, i64 -16
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !29
  %i.aui = getelementptr i8, ptr %i.atl, i64 176
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !29
  %i.auk = mul nsw i32 %i.auj, %i.auh
  %i.aul = add nsw i32 %i.auf, %i.auk
  %i.aum = getelementptr i8, ptr %i.atj, i64 -20
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !29
  %i.auo = getelementptr i8, ptr %i.atl, i64 220
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !29
  %i.auq = mul nsw i32 %i.aup, %i.aun
  %i.aur = add nsw i32 %i.aul, %i.auq
  %i.aus = add nsw i32 %.030.i.i.a, -6
  %i.aut = ashr i32 %i.aur, 15
  %i.auu = tail call i32 @llvm.smax.i32(i32 %i.aut, i32 -32768)
  %i.auv = tail call i32 @llvm.smin.i32(i32 %i.auu, i32 32767)
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv52.i.i
  store i32 %i.auv, ptr %i.auw, align 4, !tbaa !29
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1
  %i.aux = add nsw i32 %.028.i.i, 1
  %i.auy = srem i32 %i.aux, 11                    ; 2 uses
  %.not.i63.i = icmp eq i32 %i.auy, 0
  %spec.select.v.i.i = select i1 %.not.i63.i, i32 8, i32 7
  %spec.select.i.i = add nsw i32 %i.aus, %spec.select.v.i.i ; 2 uses
  %i.auz = icmp samesign ult i32 %spec.select.i.i, 294
  br i1 %i.auz, label %.preheader.i62.i, label %vector.body207, !llvm.loop !56

vector.body207:                                   ; preds = %.preheader.i62.i, %vector.body207
  %index208 = phi i64 [ %index.next211, %vector.body207 ], [ 0, %.preheader.i62.i ] ; 3 uses
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %index208 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 16
  %wide.load209 = load <4 x i32>, ptr %i.ava, align 4, !tbaa !29
  %wide.load210 = load <4 x i32>, ptr %i.avb, align 4, !tbaa !29
  %i.avc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load209, <4 x i32> splat (i32 -32768))
  %i.avd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load210, <4 x i32> splat (i32 -32768))
  %i.ave = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.avc, <4 x i32> splat (i32 32767))
  %i.avf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.avd, <4 x i32> splat (i32 32767))
  %i.avg = trunc nsw <4 x i32> %i.ave to <4 x i16>
  %i.avh = trunc nsw <4 x i32> %i.avf to <4 x i16>
  %i.avi = getelementptr inbounds nuw [2 x i8], ptr %.rtmerge, i64 %index208 ; 2 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  store <4 x i16> %i.avg, ptr %i.avi, align 2, !tbaa !68
  store <4 x i16> %i.avh, ptr %i.avj, align 2, !tbaa !68
  %index.next211 = add nuw i64 %index208, 8       ; 2 uses
  %i.avk = icmp eq i64 %index.next211, 264
  br i1 %i.avk, label %.sink.split, label %vector.body207, !llvm.loop !57

.sink.split:                                      ; preds = %vector.body207, %bb.b, %bb.c
  %.sink = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %vector.body207 ]
  %.0.ph = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.c ], [ 42, %vector.body207 ]
  store i32 %.sink, ptr %2, align 4, !tbaa !29
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.d
  %.0 = phi i32 [ %i.m, %bb.d ], [ %.0.ph, %.sink.split ]
  ret i32 %.0

.rtvec:                                           ; preds = %bb.e
  %i.avl = load ptr, ptr %1, align 8, !tbaa !77
  %i.avm = getelementptr inbounds nuw i8, ptr %i.d, i64 3872 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.d, i64 3873
  %i.avo = getelementptr inbounds nuw i8, ptr %i.d, i64 3874
  %i.avp = getelementptr inbounds nuw i8, ptr %i.d, i64 3875
  %i.avq = getelementptr inbounds nuw i8, ptr %i.d, i64 3876
  %i.avr = getelementptr inbounds nuw i8, ptr %i.d, i64 3877
  %i.avs = getelementptr inbounds nuw i8, ptr %i.d, i64 3878
  %i.avt = load <16 x i8>, ptr %i.g, align 1, !tbaa !30
  %i.avu = shufflevector <16 x i8> %i.avt, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.avu, ptr %i.avm, align 1, !tbaa !30
  %i.avv = getelementptr inbounds nuw i8, ptr %i.d, i64 3888
  %i.avw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.avx = load <16 x i8>, ptr %i.avw, align 1, !tbaa !30
  %i.avy = shufflevector <16 x i8> %i.avx, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.avy, ptr %i.avv, align 1, !tbaa !30
  %i.avz = getelementptr inbounds nuw i8, ptr %i.d, i64 3904
  %i.awa = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.awb = getelementptr inbounds nuw i8, ptr %i.d, i64 3910
  %i.awc = load <8 x i8>, ptr %i.awa, align 1, !tbaa !30
  %i.awd = shufflevector <8 x i8> %i.awc, <8 x i8> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x i8> %i.awd, ptr %i.avz, align 1, !tbaa !30
  %i.awe = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  %i.awf = load i8, ptr %i.awe, align 1, !tbaa !30
  %i.awg = getelementptr inbounds nuw i8, ptr %i.d, i64 3912
  store i8 %i.awf, ptr %i.awg, align 1, !tbaa !30
  %i.awh = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.awi = load i8, ptr %i.awh, align 1, !tbaa !30
  %i.awj = getelementptr inbounds nuw i8, ptr %i.d, i64 3913
  store i8 %i.awi, ptr %i.awj, align 1, !tbaa !30
  %i.awk = getelementptr inbounds nuw i8, ptr %i.d, i64 1932 ; 2 uses
  %i.awl = load i32, ptr %i.avm, align 1, !tbaa !30
  %i.awm = getelementptr inbounds nuw i8, ptr %i.d, i64 1934
  %i.awn = load i32, ptr %i.avn, align 1, !tbaa !30
  %i.awo = getelementptr inbounds nuw i8, ptr %i.d, i64 1936
  %i.awp = getelementptr inbounds nuw i8, ptr %i.d, i64 1938
  %i.awq = load i32, ptr %i.avo, align 2, !tbaa !30
  %i.awr = getelementptr inbounds nuw i8, ptr %i.d, i64 1940
  %i.aws = getelementptr inbounds nuw i8, ptr %i.d, i64 1942
  %i.awt = load i32, ptr %i.avp, align 1, !tbaa !30
  %i.awu = getelementptr inbounds nuw i8, ptr %i.d, i64 1944
  %i.awv = getelementptr inbounds nuw i8, ptr %i.d, i64 1946
  %i.aww = tail call i32 @llvm.bswap.i32(i32 %i.awl) ; 2 uses
  %i.awx = lshr i32 %i.aww, 27
  %i.awy = trunc nuw nsw i32 %i.awx to i16
  %i.awz = lshr i32 %i.aww, 22
  %i.axa = trunc nuw nsw i32 %i.awz to i16
  %i.axb = tail call i32 @llvm.bswap.i32(i32 %i.awn) ; 2 uses
  %i.axc = lshr i32 %i.axb, 26
  %i.axd = trunc nuw nsw i32 %i.axc to i16
  %i.axe = lshr i32 %i.axb, 22
  %i.axf = trunc nuw nsw i32 %i.axe to i16
  %i.axg = tail call i32 @llvm.bswap.i32(i32 %i.awq) ; 2 uses
  %i.axh = lshr i32 %i.axg, 26
  %i.axi = trunc nuw nsw i32 %i.axh to i16
  %i.axj = lshr i32 %i.axg, 22
  %i.axk = trunc nuw nsw i32 %i.axj to i16
  %i.axl = tail call i32 @llvm.bswap.i32(i32 %i.awt) ; 2 uses
  %i.axm = lshr i32 %i.axl, 26
  %i.axn = trunc nuw nsw i32 %i.axm to i16
  %i.axo = lshr i32 %i.axl, 22
  %i.axp = trunc nuw nsw i32 %i.axo to i16
  %i.axq = insertelement <8 x i16> poison, i16 %i.awy, i64 0
  %i.axr = insertelement <8 x i16> %i.axq, i16 %i.axa, i64 1
  %i.axs = insertelement <8 x i16> %i.axr, i16 %i.axd, i64 2
  %i.axt = insertelement <8 x i16> %i.axs, i16 %i.axf, i64 3
  %i.axu = insertelement <8 x i16> %i.axt, i16 %i.axi, i64 4
  %i.axv = insertelement <8 x i16> %i.axu, i16 %i.axk, i64 5
  %i.axw = insertelement <8 x i16> %i.axv, i16 %i.axn, i64 6
  %i.axx = insertelement <8 x i16> %i.axw, i16 %i.axp, i64 7
  %i.axy = and <8 x i16> %i.axx, <i16 -1, i16 31, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>
  store <8 x i16> %i.axy, ptr %i.awk, align 2, !tbaa !68
  %i.axz = load i32, ptr %i.avq, align 2, !tbaa !30
  %i.aya = getelementptr inbounds nuw i8, ptr %i.d, i64 1948 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.d, i64 1950
  %i.ayc = load i32, ptr %i.avr, align 1, !tbaa !30
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.d, i64 1952
  %i.aye = getelementptr inbounds nuw i8, ptr %i.d, i64 1954
  %i.ayf = tail call i32 @llvm.bswap.i32(i32 %i.axz) ; 2 uses
  %i.ayg = lshr i32 %i.ayf, 27
  %i.ayh = trunc nuw nsw i32 %i.ayg to i16
  %i.ayi = lshr i32 %i.ayf, 24
  %i.ayj = trunc nuw nsw i32 %i.ayi to i16
  %i.ayk = tail call i32 @llvm.bswap.i32(i32 %i.ayc) ; 3 uses
  %i.ayl = lshr i32 %i.ayk, 29
  %i.aym = trunc nuw nsw i32 %i.ayl to i16
  %i.ayn = lshr i32 %i.ayk, 26
  %i.ayo = trunc nuw nsw i32 %i.ayn to i16
  %i.ayp = insertelement <4 x i16> poison, i16 %i.ayh, i64 0
  %i.ayq = insertelement <4 x i16> %i.ayp, i16 %i.ayj, i64 1
  %i.ayr = insertelement <4 x i16> %i.ayq, i16 %i.aym, i64 2
  %i.ays = insertelement <4 x i16> %i.ayr, i16 %i.ayo, i64 3
  %i.ayt = and <4 x i16> %i.ays, <i16 7, i16 7, i16 -1, i16 7>
  store <4 x i16> %i.ayt, ptr %i.aya, align 2, !tbaa !68
  %i.ayu = lshr i32 %i.ayk, 23
  %i.ayv = trunc nuw nsw i32 %i.ayu to i16
  %i.ayw = and i16 %i.ayv, 7
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.d, i64 1956 ; 2 uses
  store i16 %i.ayw, ptr %i.ayx, align 2, !tbaa !68
  %i.ayy = load i32, ptr %i.avs, align 2, !tbaa !30
  %i.ayz = trunc i32 %i.ayy to i16
  %i.aza = lshr i16 %i.ayz, 4
  %i.azb = and i16 %i.aza, 7
  %i.azc = getelementptr inbounds nuw i8, ptr %i.d, i64 1958 ; 2 uses
  store i16 %i.azb, ptr %i.azc, align 2, !tbaa !68
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.e
  %i.azd = load ptr, ptr %1, align 8, !tbaa !77
  %i.aze = getelementptr inbounds nuw i8, ptr %i.d, i64 3872 ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !30
  store i8 %i.azg, ptr %i.aze, align 1, !tbaa !30
  %i.azh = load i8, ptr %i.g, align 1, !tbaa !30
  %i.azi = getelementptr inbounds nuw i8, ptr %i.d, i64 3873 ; 2 uses
  store i8 %i.azh, ptr %i.azi, align 1, !tbaa !30
  %i.azj = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.azk = load i8, ptr %i.azj, align 1, !tbaa !30
  %i.azl = getelementptr inbounds nuw i8, ptr %i.d, i64 3874 ; 2 uses
  store i8 %i.azk, ptr %i.azl, align 1, !tbaa !30
  %i.azm = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.azn = load i8, ptr %i.azm, align 1, !tbaa !30
  %i.azo = getelementptr inbounds nuw i8, ptr %i.d, i64 3875 ; 2 uses
  store i8 %i.azn, ptr %i.azo, align 1, !tbaa !30
  %i.azp = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !30
  %i.azr = getelementptr inbounds nuw i8, ptr %i.d, i64 3876 ; 2 uses
  store i8 %i.azq, ptr %i.azr, align 1, !tbaa !30
  %i.azs = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.azt = load i8, ptr %i.azs, align 1, !tbaa !30
  %i.azu = getelementptr inbounds nuw i8, ptr %i.d, i64 3877 ; 2 uses
  store i8 %i.azt, ptr %i.azu, align 1, !tbaa !30
  %i.azv = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !30
  %i.azx = getelementptr inbounds nuw i8, ptr %i.d, i64 3878 ; 2 uses
  store i8 %i.azw, ptr %i.azx, align 1, !tbaa !30
  %i.azy = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !30
  %i.baa = getelementptr inbounds nuw i8, ptr %i.d, i64 3879
  store i8 %i.azz, ptr %i.baa, align 1, !tbaa !30
  %i.bab = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.bac = load i8, ptr %i.bab, align 1, !tbaa !30
  %i.bad = getelementptr inbounds nuw i8, ptr %i.d, i64 3880
  store i8 %i.bac, ptr %i.bad, align 1, !tbaa !30
  %i.bae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.baf = load i8, ptr %i.bae, align 1, !tbaa !30
  %i.bag = getelementptr inbounds nuw i8, ptr %i.d, i64 3881
  store i8 %i.baf, ptr %i.bag, align 1, !tbaa !30
  %i.bah = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  %i.bai = load i8, ptr %i.bah, align 1, !tbaa !30
  %i.baj = getelementptr inbounds nuw i8, ptr %i.d, i64 3882
  store i8 %i.bai, ptr %i.baj, align 1, !tbaa !30
  %i.bak = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.bal = load i8, ptr %i.bak, align 1, !tbaa !30
  %i.bam = getelementptr inbounds nuw i8, ptr %i.d, i64 3883
  store i8 %i.bal, ptr %i.bam, align 1, !tbaa !30
  %i.ban = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.bao = load i8, ptr %i.ban, align 1, !tbaa !30
  %i.bap = getelementptr inbounds nuw i8, ptr %i.d, i64 3884
  store i8 %i.bao, ptr %i.bap, align 1, !tbaa !30
  %i.baq = getelementptr inbounds nuw i8, ptr %i.g, i64 12
end_hunk_0
