Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MathematicalOperatorsRegistration?download=true
inline.NumInlined: 29983
inline.NumDeleted: 8059
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.ark = load i32, ptr %i.aqv, align 8, !tbaa !357
  br label %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.arl = load ptr, ptr %i.aqu, align 8, !tbaa !358
  %i.arm = shl nsw i64 %i.arh, 2
  %i.arn = getelementptr inbounds i8, ptr %i.arl, i64 %i.arm
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !55
  br label %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i

.noexc12.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aro, %bb.dm ], [ %i.ark, %bb.dl ], [ %i.arg, %bb.dj ]
  %i.arp = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.arq = getelementptr inbounds [8 x i8], ptr %i.aqp, i64 %i.arp
  %i.arr = load double, ptr %i.arq, align 8, !tbaa !310
  br i1 %i.ara, label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ars = load i8, ptr %i.arb, align 1, !tbaa !356, !range !125, !noundef !126
  %i.art = trunc nuw i8 %i.ars to i1
  br i1 %i.art, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aru = load i32, ptr %i.ard, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.arv = load ptr, ptr %i.arc, align 8, !tbaa !358
  %i.arw = shl nsw i64 %i.arh, 2
  %i.arx = getelementptr inbounds i8, ptr %i.arv, i64 %i.arw
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ary, %bb.dp ], [ %i.aru, %bb.do ], [ %i.arg, %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.arz = sext i32 %.0.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.asa = getelementptr inbounds [8 x i8], ptr %i.aqx, i64 %i.arz
  %i.asb = load double, ptr %i.asa, align 8, !tbaa !310
  %i.asc = fadd double %i.arr, %i.asb
  %i.asd = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.arh
  store double %i.asc, ptr %i.asd, align 8, !tbaa !310
  %i.ase = add nsw i64 %.036.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asf = and i64 %i.ase, %.036.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i73 = icmp eq i64 %i.asf, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i73, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.dj, !llvm.loop !898

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.apr, %i.apw
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.asg = sdiv i32 %i.apr, 64                    ; 2 uses
  %i.ash = sub nsw i32 %i.apw, %i.apr             ; 2 uses
  %i.asi = zext nneg i32 %i.ash to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.asi
  %i.asj = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.ask = sub nsw i32 64, %i.ash
  %i.asl = zext nneg i32 %i.ask to i64
  %i.asm = shl i64 %i.asj, %i.asl
  %i.asn = sext i32 %i.asg to i64
  %i.aso = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.asn
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !108
  %i.asq = and i64 %i.asp, %i.asm                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.asq, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.asr = shl nsw i32 %i.asg, 6
  %i.ass = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !354
  %i.asu = getelementptr inbounds nuw i8, ptr %i.alc, i64 58
  %i.asv = load i8, ptr %i.asu, align 2, !tbaa !355, !range !125, !noundef !126
  %i.asw = trunc nuw i8 %i.asv to i1
  %i.asx = getelementptr inbounds nuw i8, ptr %i.alc, i64 59
  %i.asy = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.asz = getelementptr inbounds nuw i8, ptr %i.alc, i64 64
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !354
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ams, i64 58
  %i.atd = load i8, ptr %i.atc, align 2, !tbaa !355, !range !125, !noundef !126
  %i.ate = trunc nuw i8 %i.atd to i1
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ams, i64 59
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.ams, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.036.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asq, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.auj, %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ati = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.036.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atj = trunc nuw nsw i64 %i.ati to i32
  %i.atk = or disjoint i32 %i.asr, %i.atj         ; 3 uses
  %i.atl = sext i32 %i.atk to i64                 ; 3 uses
  br i1 %i.asw, label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.atm = load i8, ptr %i.asx, align 1, !tbaa !356, !range !125, !noundef !126
  %i.atn = trunc nuw i8 %i.atm to i1
  br i1 %i.atn, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ato = load i32, ptr %i.asz, align 8, !tbaa !357
  br label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.atp = load ptr, ptr %i.asy, align 8, !tbaa !358
  %i.atq = shl nsw i64 %i.atl, 2
  %i.atr = getelementptr inbounds i8, ptr %i.atp, i64 %i.atq
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !55
  br label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i

.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ats, %bb.dv ], [ %i.ato, %bb.du ], [ %i.atk, %bb.ds ]
  %i.att = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.atu = getelementptr inbounds [8 x i8], ptr %i.ast, i64 %i.att
  %i.atv = load double, ptr %i.atu, align 8, !tbaa !310
  br i1 %i.ate, label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.atw = load i8, ptr %i.atf, align 1, !tbaa !356, !range !125, !noundef !126
  %i.atx = trunc nuw i8 %i.atw to i1
  br i1 %i.atx, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aty = load i32, ptr %i.ath, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.atz = load ptr, ptr %i.atg, align 8, !tbaa !358
  %i.aua = shl nsw i64 %i.atl, 2
  %i.aub = getelementptr inbounds i8, ptr %i.atz, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auc, %bb.dy ], [ %i.aty, %bb.dx ], [ %i.atk, %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aud = sext i32 %.0.i.i.i17.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aue = getelementptr inbounds [8 x i8], ptr %i.atb, i64 %i.aud
  %i.auf = load double, ptr %i.aue, align 8, !tbaa !310
  %i.aug = fadd double %i.atv, %i.auf
  %i.auh = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.atl
  store double %i.aug, ptr %i.auh, align 8, !tbaa !310
  %i.aui = add i64 %.036.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.auj = and i64 %i.aui, %.036.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.auj, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !898

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.auk = add nsw i32 %i.apw, 64                 ; 2 uses
  %.not3366.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.auk, %i.apx
  br i1 %.not3366.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ams, i64 16 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ams, i64 58 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.ams, i64 59 ; 3 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.ams, i64 8 ; 3 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.ams, i64 64 ; 3 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.alc, i64 16 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.alc, i64 58 ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.alc, i64 8 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.alc, i64 64 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.alc, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.apt, %i.apx
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.auv = phi i32 [ %i.bck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auk, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.067.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auv, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.apw, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.auw = sdiv i32 %.067.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.aux = sext i32 %i.auw to i64
  %i.auy = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.aux
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.auz, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.ava = shl nsw i32 %i.auw, 6
  %i.avb = load ptr, ptr %i.auq, align 8, !tbaa !354
  %i.avc = load i8, ptr %i.aur, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avd = trunc nuw i8 %i.avc to i1
  %i.ave = load ptr, ptr %i.aul, align 8, !tbaa !354
  %i.avf = load i8, ptr %i.aum, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avg = trunc nuw i8 %i.avf to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avh = shl nsw i32 %i.auw, 6                  ; 6 uses
  %i.avi = add i32 %i.avh, 64
  %i.avj = sext i32 %i.avi to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i68 = add i32 %.067.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not93.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i68, 64
  br i1 %.not93.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avk = sext i32 %i.avh to i64                 ; 24 uses
  %i.avl = load ptr, ptr %i.auq, align 8, !tbaa !354 ; 10 uses
  %i.avm = ptrtoaddr ptr %i.avl to i64
  %i.avn = load i8, ptr %i.aur, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avo = trunc nuw i8 %i.avn to i1
  %i.avp = load ptr, ptr %i.aul, align 8, !tbaa !354 ; 7 uses
  %i.avq = ptrtoaddr ptr %i.avp to i64
  %i.avr = load i8, ptr %i.aum, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avs = trunc nuw i8 %i.avr to i1              ; 2 uses
  br i1 %i.avo, label %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.avs, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.avt = or disjoint i64 %i.avk, 1
  %i.avu = call i64 @llvm.umax.i64(i64 %i.avt, i64 %i.avj) ; 2 uses
  %i.avv = sub i64 %i.avu, %i.avk                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.avv, 36
  br i1 %min.iters.check, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.avw = or disjoint i64 %i.avk, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.avw, i64 %i.avj)
  %i.avx = xor i64 %i.avk, -1
  %i.avy = add i64 %umax, %i.avx                  ; 2 uses
  %i.avz = sext i32 %i.avh to i35                 ; 2 uses
  %i.awa = shl nsw i35 %i.avz, 3
  %i.awb = trunc i64 %i.avy to i35
  %i.awc = add i35 %i.avz, %i.awb
  %i.awd = shl i35 %i.awc, 3
  %i.awe = icmp slt i35 %i.awd, %i.awa
  %i.awf = icmp ugt i64 %i.avy, 4294967295
  %i.awg = or i1 %i.awe, %i.awf
  br i1 %i.awg, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awh = shl nsw i64 %i.avk, 3                  ; 2 uses
  %i.awi = add i64 %i.awh, %.sink.i.i333
  %i.awj = sext i32 %i.avh to i35
  %i.awk = shl nsw i35 %i.awj, 3
  %i.awl = sext i35 %i.awk to i64                 ; 2 uses
  %i.awm = add i64 %i.avm, %i.awl
  %i.awn = sub i64 %i.awm, %i.awi
  %diff.check = icmp ugt i64 %i.awn, -64
  %i.awo = add i64 %i.awh, %.sink.i.i333
  %i.awp = add i64 %i.avq, %i.awl
  %i.awq = sub i64 %i.awp, %i.awo
  %diff.check334 = icmp ugt i64 %i.awq, -64
  %conflict.rdx = or i1 %diff.check, %diff.check334
  br i1 %conflict.rdx, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.awr = and i64 %i.avu, 1                      ; 2 uses
  %n.vec = sub i64 %i.avv, %i.awr                 ; 2 uses
  %i.aws = add i64 %n.vec, %i.avk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awt = add nuw i64 %index, %i.avk             ; 2 uses
  %i.awu = shl i64 %i.awt, 32
  %i.awv = ashr exact i64 %i.awu, 29              ; 2 uses
  %i.aww = getelementptr inbounds i8, ptr %i.avl, i64 %i.awv ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 32
  %wide.load = load <4 x double>, ptr %i.aww, align 8, !tbaa !310
  %wide.load335 = load <4 x double>, ptr %i.awx, align 8, !tbaa !310
  %i.awy = getelementptr inbounds i8, ptr %i.avp, i64 %i.awv ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 32
  %wide.load336 = load <4 x double>, ptr %i.awy, align 8, !tbaa !310
  %wide.load337 = load <4 x double>, ptr %i.awz, align 8, !tbaa !310
  %i.axa = fadd <4 x double> %wide.load, %wide.load336
  %i.axb = fadd <4 x double> %wide.load335, %wide.load337
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.awt ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  store <4 x double> %i.axa, ptr %i.axc, align 8, !tbaa !310
  store <4 x double> %i.axb, ptr %i.axd, align 8, !tbaa !310
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.axe = icmp eq i64 %index.next, %n.vec
  br i1 %i.axe, label %middle.block, label %vector.body, !llvm.loop !899

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awr, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672: ; preds = %vector.memcheck, %vector.scevcheck, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.avk, %vector.memcheck ], [ %i.avk, %vector.scevcheck ], [ %i.avk, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aws, %middle.block ]
  br label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axm, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672 ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axf = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 29 ; 2 uses
  %i.axg = getelementptr inbounds i8, ptr %i.avl, i64 %i.axf
  %i.axh = load double, ptr %i.axg, align 8, !tbaa !310
  %i.axi = getelementptr inbounds i8, ptr %i.avp, i64 %i.axf
  %i.axj = load double, ptr %i.axi, align 8, !tbaa !310
  %i.axk = fadd double %i.axh, %i.axj
  %i.axl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store double %i.axk, ptr %i.axl, align 8, !tbaa !310
  %i.axm = add nuw i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axn = icmp ult i64 %i.axm, %i.avj
  br i1 %i.axn, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !900

.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.axo = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noundef !126
  %i.axp = trunc nuw i8 %i.axo to i1
  br i1 %i.axp, label %iter.check, label %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.axq = load i32, ptr %i.aup, align 8, !tbaa !357
  %i.axr = sext i32 %i.axq to i64                 ; 2 uses
  %i.axs = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.axr ; 3 uses
  %i.axt = or disjoint i64 %i.avk, 1
  %umax354 = call i64 @llvm.umax.i64(i64 %i.axt, i64 %i.avj) ; 2 uses
  %i.axu = sub i64 %umax354, %i.avk               ; 3 uses
  %min.iters.check356 = icmp ult i64 %i.axu, 4
  br i1 %min.iters.check356, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck338

vector.scevcheck338:                              ; preds = %iter.check
  %i.axv = or disjoint i64 %i.avk, 1
  %umax339 = call i64 @llvm.umax.i64(i64 %i.axv, i64 %i.avj)
  %i.axw = xor i64 %i.avk, -1
  %i.axx = add i64 %umax339, %i.axw               ; 2 uses
  %i.axy = sext i32 %i.avh to i35                 ; 2 uses
  %i.axz = shl nsw i35 %i.axy, 3
  %i.aya = trunc i64 %i.axx to i35
  %i.ayb = add i35 %i.axy, %i.aya
  %i.ayc = shl i35 %i.ayb, 3
  %i.ayd = icmp slt i35 %i.ayc, %i.axz
  %i.aye = icmp ugt i64 %i.axx, 4294967295
  %i.ayf = or i1 %i.ayd, %i.aye
  br i1 %i.ayf, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %vector.scevcheck338
  %i.ayg = shl nsw i64 %i.avk, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayg ; 2 uses
  %i.ayh = or disjoint i64 %i.avk, 1
  %umax344 = call i64 @llvm.umax.i64(i64 %i.ayh, i64 %i.avj)
  %i.ayi = shl nsw i64 %umax344, 3                ; 2 uses
  %scevgep345 = getelementptr i8, ptr %.sink.i.i, i64 %i.ayi ; 2 uses
  %scevgep346 = getelementptr i8, ptr %i.avp, i64 8
  %i.ayj = shl nsw i64 %i.axr, 3
  %scevgep347 = getelementptr i8, ptr %scevgep346, i64 %i.ayj
  %i.ayk = sext i32 %i.avh to i35
  %i.ayl = shl nsw i35 %i.ayk, 3
  %i.aym = sext i35 %i.ayl to i64                 ; 2 uses
  %scevgep348 = getelementptr i8, ptr %i.avl, i64 %i.aym
  %i.ayn = add i64 %i.ayi, %i.aym
  %i.ayo = sub i64 %i.ayn, %i.ayg
  %scevgep349 = getelementptr i8, ptr %i.avl, i64 %i.ayo
  %bound0 = icmp ult ptr %scevgep, %scevgep347
  %bound1 = icmp ult ptr %i.axs, %scevgep345
  %found.conflict = and i1 %bound0, %bound1
  %bound0350 = icmp ult ptr %scevgep, %scevgep349
  %bound1351 = icmp ult ptr %scevgep348, %scevgep345
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %found.conflict, %found.conflict352
  br i1 %conflict.rdx353, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck343
  %min.iters.check357 = icmp ult i64 %i.axu, 16
  %i.ayp = and i64 %umax354, 1                    ; 3 uses
  %n.vec370 = sub i64 %i.axu, %i.ayp              ; 3 uses
  %i.ayq = add i64 %n.vec370, %i.avk              ; 2 uses
  %i.ayr = load double, ptr %i.axs, align 8, !tbaa !310, !alias.scope !935
  %broadcast.splatinsert373 = insertelement <4 x double> poison, double %i.ayr, i64 0
  %broadcast.splat374 = shufflevector <4 x double> %broadcast.splatinsert373, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check357, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
  %index361 = phi i64 [ %index.next366, %vector.body360 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ays = add nuw i64 %index361, %i.avk          ; 2 uses
  %i.ayt = shl i64 %i.ays, 32
  %i.ayu = ashr exact i64 %i.ayt, 29
  %i.ayv = getelementptr inbounds i8, ptr %i.avl, i64 %i.ayu ; 4 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 64
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 96
  %wide.load362 = load <4 x double>, ptr %i.ayv, align 8, !tbaa !310, !alias.scope !936
  %wide.load363 = load <4 x double>, ptr %i.ayw, align 8, !tbaa !310, !alias.scope !936
  %wide.load364 = load <4 x double>, ptr %i.ayx, align 8, !tbaa !310, !alias.scope !936
  %wide.load365 = load <4 x double>, ptr %i.ayy, align 8, !tbaa !310, !alias.scope !936
  %i.ayz = fadd <4 x double> %wide.load362, %broadcast.splat374
  %i.aza = fadd <4 x double> %wide.load363, %broadcast.splat374
  %i.azb = fadd <4 x double> %wide.load364, %broadcast.splat374
  %i.azc = fadd <4 x double> %wide.load365, %broadcast.splat374
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.ays ; 4 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 32
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azd, i64 64
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azd, i64 96
  store <4 x double> %i.ayz, ptr %i.azd, align 8, !tbaa !310, !alias.scope !937, !noalias !938
  store <4 x double> %i.aza, ptr %i.aze, align 8, !tbaa !310, !alias.scope !937, !noalias !938
  store <4 x double> %i.azb, ptr %i.azf, align 8, !tbaa !310, !alias.scope !937, !noalias !938
  store <4 x double> %i.azc, ptr %i.azg, align 8, !tbaa !310, !alias.scope !937, !noalias !938
  %index.next366 = add nuw i64 %index361, 16      ; 2 uses
  %i.azh = icmp eq i64 %index.next366, %n.vec370
  br i1 %i.azh, label %middle.block367, label %vector.body360, !llvm.loop !905

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.ayp, 0
  br i1 %cmp.n368, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index371 = phi i64 [ %index.next375, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.azi = add nuw i64 %index371, %i.avk          ; 2 uses
  %i.azj = shl i64 %i.azi, 32
  %i.azk = ashr exact i64 %i.azj, 29
  %i.azl = getelementptr inbounds i8, ptr %i.avl, i64 %i.azk
  %wide.load372 = load <4 x double>, ptr %i.azl, align 8, !tbaa !310, !alias.scope !936
  %i.azm = fadd <4 x double> %wide.load372, %broadcast.splat374
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.azi
  store <4 x double> %i.azm, ptr %i.azn, align 8, !tbaa !310, !alias.scope !937, !noalias !938
  %index.next375 = add nuw i64 %index371, 4       ; 2 uses
  %i.azo = icmp eq i64 %index.next375, %n.vec370
  br i1 %i.azo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !906

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n376 = icmp eq i64 %i.ayp, 0
  br i1 %cmp.n376, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader

.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block367, %iter.check, %vector.scevcheck338, %vector.memcheck343, %vec.epilog.middle.block
  %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ayq, %middle.block367 ], [ %i.avk, %vector.scevcheck338 ], [ %i.avk, %vector.memcheck343 ], [ %i.avk, %iter.check ], [ %i.ayq, %vec.epilog.middle.block ]
  br label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azv, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i ], [ %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i.ph, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext68.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.azp = ashr exact i64 %sext68.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azq = getelementptr inbounds i8, ptr %i.avl, i64 %i.azp
  %i.azr = load double, ptr %i.azq, align 8, !tbaa !310
  %i.azs = load double, ptr %i.axs, align 8, !tbaa !310
  %i.azt = fadd double %i.azr, %i.azs
  %i.azu = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i
  store double %i.azt, ptr %i.azu, align 8, !tbaa !310
  %i.azv = add nuw i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.azw = icmp ult i64 %i.azv, %i.avj
  br i1 %i.azw, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !907

.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.azx = load ptr, ptr %i.auo, align 8, !tbaa !358
  br label %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.baj, %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.azy = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azz = getelementptr inbounds i8, ptr %i.avl, i64 %i.azy
  %i.baa = load double, ptr %i.azz, align 8, !tbaa !310
  %i.bab = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bac = getelementptr inbounds i8, ptr %i.azx, i64 %i.bab
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !55
  %i.bae = sext i32 %i.bad to i64
  %i.baf = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bae
  %i.bag = load double, ptr %i.baf, align 8, !tbaa !310
  %i.bah = fadd double %i.baa, %i.bag
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i
  store double %i.bah, ptr %i.bai, align 8, !tbaa !310
  %i.baj = add nuw i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bak = icmp ult i64 %i.baj, %i.avj
  br i1 %i.bak, label %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !908

.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bal = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bam = trunc nuw i8 %i.bal to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbg, %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ban = trunc i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.bam, label %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bao = load ptr, ptr %i.aus, align 8, !tbaa !358
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bap = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.baq = getelementptr inbounds i8, ptr %i.bao, i64 %i.bap
  br label %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i47.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.baq, %bb.eb ], [ %i.aut, %bb.ea ]
  %.0.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i47.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55
  %i.bar = sext i32 %.0.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bas = getelementptr inbounds [8 x i8], ptr %i.avl, i64 %i.bar
  %i.bat = load double, ptr %i.bas, align 8, !tbaa !310
  br i1 %i.avs, label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bau = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bav = trunc nuw i8 %i.bau to i1
  br i1 %i.bav, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.baw = load i32, ptr %i.aup, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bax = load ptr, ptr %i.auo, align 8, !tbaa !358
  %sext.i33.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bay = ashr exact i64 %sext.i33.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.baz = getelementptr inbounds i8, ptr %i.bax, i64 %i.bay
  %i.bba = load i32, ptr %i.baz, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bba, %bb.ee ], [ %i.baw, %bb.ed ], [ %i.ban, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbb = sext i32 %.0.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbc = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bbb
  %i.bbd = load double, ptr %i.bbc, align 8, !tbaa !310
  %i.bbe = fadd double %i.bat, %i.bbd
  %i.bbf = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i
  store double %i.bbe, ptr %i.bbf, align 8, !tbaa !310
  %i.bbg = add nuw i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbh = icmp ult i64 %i.bbg, %i.avj
  br i1 %i.bbh, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !908

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i
  %.01590.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.auz, %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i ], [ %i.bcj, %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01590.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbj = trunc nuw nsw i64 %i.bbi to i32
  %i.bbk = or disjoint i32 %i.ava, %i.bbj         ; 3 uses
  %i.bbl = sext i32 %i.bbk to i64                 ; 3 uses
  br i1 %i.avd, label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bbm = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bbn = trunc nuw i8 %i.bbm to i1
  br i1 %i.bbn, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bbo = load i32, ptr %i.aut, align 8, !tbaa !357
  br label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bbp = load ptr, ptr %i.aus, align 8, !tbaa !358
  %i.bbq = shl nsw i64 %i.bbl, 2
  %i.bbr = getelementptr inbounds i8, ptr %i.bbp, i64 %i.bbq
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !55
  br label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i

.noexc18.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbs, %bb.ei ], [ %i.bbo, %bb.eh ], [ %i.bbk, %bb.ef ]
  %i.bbt = sext i32 %.0.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbu = getelementptr inbounds [8 x i8], ptr %i.avb, i64 %i.bbt
  %i.bbv = load double, ptr %i.bbu, align 8, !tbaa !310
  br i1 %i.avg, label %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbw = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bbx = trunc nuw i8 %i.bbw to i1
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.arr = load i32, ptr %i.arc, align 8, !tbaa !357, !noalias !1342
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.ars = load ptr, ptr %i.arb, align 8, !tbaa !358, !noalias !1342
  %i.art = shl nsw i64 %i.aro, 2
  %i.aru = getelementptr inbounds i8, ptr %i.ars, i64 %i.art
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !55, !noalias !1342
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.arv, %bb.dm ], [ %i.arr, %bb.dl ], [ %i.arn, %bb.dj ]
  %i.arw = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.arx = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.arw
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !418, !noalias !1342
  br i1 %i.arh, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.arz = load i8, ptr %i.ari, align 1, !tbaa !356, !range !125, !noalias !1343, !noundef !126
  %i.asa = trunc nuw i8 %i.arz to i1
  br i1 %i.asa, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.asb = load i32, ptr %i.ark, align 8, !tbaa !357, !noalias !1343
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.asc = load ptr, ptr %i.arj, align 8, !tbaa !358, !noalias !1343
  %i.asd = shl nsw i64 %i.aro, 2
  %i.ase = getelementptr inbounds i8, ptr %i.asc, i64 %i.asd
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !55, !noalias !1343
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.asf, %bb.dp ], [ %i.asb, %bb.do ], [ %i.arn, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.asg = sext i32 %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ash = getelementptr inbounds [4 x i8], ptr %i.are, i64 %i.asg
  %i.asi = load float, ptr %i.ash, align 4, !tbaa !418, !noalias !1343
  %i.asj = fadd float %i.ary, %i.asi
  %i.ask = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.aro
  store float %i.asj, ptr %i.ask, align 4, !tbaa !418
  %i.asl = add nsw i64 %.034.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asm = and i64 %i.asl, %.034.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %i.asm, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i69, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.dj, !llvm.loop !1286

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.apy, %i.aqd
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.asn = sdiv i32 %i.apy, 64                    ; 2 uses
  %i.aso = sub nsw i32 %i.aqd, %i.apy             ; 2 uses
  %i.asp = zext nneg i32 %i.aso to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.asp
  %i.asq = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.asr = sub nsw i32 64, %i.aso
  %i.ass = zext nneg i32 %i.asr to i64
  %i.ast = shl i64 %i.asq, %i.ass
  %i.asu = sext i32 %i.asn to i64
  %i.asv = getelementptr inbounds [8 x i8], ptr %i.apw, i64 %i.asu
  %i.asw = load i64, ptr %i.asv, align 8, !tbaa !108
  %i.asx = and i64 %i.asw, %i.ast                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.asx, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.asy = shl nsw i32 %i.asn, 6
  %i.asz = getelementptr inbounds nuw i8, ptr %i.alj, i64 16
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !354, !noalias !1344
  %i.atb = getelementptr inbounds nuw i8, ptr %i.alj, i64 58
  %i.atc = load i8, ptr %i.atb, align 2, !tbaa !355, !range !125, !noalias !1344, !noundef !126
  %i.atd = trunc nuw i8 %i.atc to i1
  %i.ate = getelementptr inbounds nuw i8, ptr %i.alj, i64 59
  %i.atf = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  %i.atg = getelementptr inbounds nuw i8, ptr %i.alj, i64 64
  %i.ath = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !354, !noalias !1345
  %i.atj = getelementptr inbounds nuw i8, ptr %i.amz, i64 58
  %i.atk = load i8, ptr %i.atj, align 2, !tbaa !355, !range !125, !noalias !1345, !noundef !126
  %i.atl = trunc nuw i8 %i.atk to i1
  %i.atm = getelementptr inbounds nuw i8, ptr %i.amz, i64 59
  %i.atn = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.ato = getelementptr inbounds nuw i8, ptr %i.amz, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.034.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asx, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.auq, %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.atp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atq = trunc nuw nsw i64 %i.atp to i32
  %i.atr = or disjoint i32 %i.asy, %i.atq         ; 3 uses
  %i.ats = sext i32 %i.atr to i64                 ; 3 uses
  br i1 %i.atd, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.att = load i8, ptr %i.ate, align 1, !tbaa !356, !range !125, !noalias !1344, !noundef !126
  %i.atu = trunc nuw i8 %i.att to i1
  br i1 %i.atu, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.atv = load i32, ptr %i.atg, align 8, !tbaa !357, !noalias !1344
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.atw = load ptr, ptr %i.atf, align 8, !tbaa !358, !noalias !1344
  %i.atx = shl nsw i64 %i.ats, 2
  %i.aty = getelementptr inbounds i8, ptr %i.atw, i64 %i.atx
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !55, !noalias !1344
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.atz, %bb.dv ], [ %i.atv, %bb.du ], [ %i.atr, %bb.ds ]
  %i.aua = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.ata, i64 %i.aua
  %i.auc = load float, ptr %i.aub, align 4, !tbaa !418, !noalias !1344
  br i1 %i.atl, label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.aud = load i8, ptr %i.atm, align 1, !tbaa !356, !range !125, !noalias !1345, !noundef !126
  %i.aue = trunc nuw i8 %i.aud to i1
  br i1 %i.aue, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.auf = load i32, ptr %i.ato, align 8, !tbaa !357, !noalias !1345
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.aug = load ptr, ptr %i.atn, align 8, !tbaa !358, !noalias !1345
  %i.auh = shl nsw i64 %i.ats, 2
  %i.aui = getelementptr inbounds i8, ptr %i.aug, i64 %i.auh
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !55, !noalias !1345
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auj, %bb.dy ], [ %i.auf, %bb.dx ], [ %i.atr, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.auk = sext i32 %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aul = getelementptr inbounds [4 x i8], ptr %i.ati, i64 %i.auk
  %i.aum = load float, ptr %i.aul, align 4, !tbaa !418, !noalias !1345
  %i.aun = fadd float %i.auc, %i.aum
  %i.auo = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.ats
  store float %i.aun, ptr %i.auo, align 4, !tbaa !418
  %i.aup = add i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.auq = and i64 %i.aup, %.034.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.auq, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !1286

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.aur = add nsw i32 %i.aqd, 64                 ; 2 uses
  %.not3367.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aur, %i.aqe
  br i1 %.not3367.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.aus = getelementptr inbounds nuw i8, ptr %i.amz, i64 16 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.amz, i64 58 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.amz, i64 59 ; 3 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.amz, i64 8 ; 3 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.amz, i64 64 ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.alj, i64 16 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.alj, i64 58 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.alj, i64 8 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.alj, i64 64 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.alj, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.aqa, %i.aqe
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.avc = phi i32 [ %i.bcx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aur, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.avc, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aqd, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.avd = sdiv i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.ave = sext i32 %i.avd to i64
  %i.avf = getelementptr inbounds [8 x i8], ptr %i.apw, i64 %i.ave
  %i.avg = load i64, ptr %i.avf, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.avg, label %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avh = shl nsw i32 %i.avd, 6
  %i.avi = load ptr, ptr %i.aux, align 8, !tbaa !354, !noalias !1346
  %i.avj = load i8, ptr %i.auy, align 2, !tbaa !355, !range !125, !noalias !1346, !noundef !126
  %i.avk = trunc nuw i8 %i.avj to i1
  %i.avl = load ptr, ptr %i.aus, align 8, !tbaa !354, !noalias !1347
  %i.avm = load i8, ptr %i.aut, align 2, !tbaa !355, !range !125, !noalias !1347, !noundef !126
  %i.avn = trunc nuw i8 %i.avm to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avo = shl nsw i32 %i.avd, 6                  ; 6 uses
  %i.avp = add i32 %i.avo, 64
  %i.avq = sext i32 %i.avp to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i65 = add i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not89.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i65, 64
  br i1 %.not89.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avr = sext i32 %i.avo to i64                 ; 25 uses
  %i.avs = load ptr, ptr %i.aux, align 8, !tbaa !354, !noalias !1348 ; 11 uses
  %i.avt = ptrtoaddr ptr %i.avs to i64
  %i.avu = load i8, ptr %i.auy, align 2, !tbaa !355, !range !125, !noalias !1348, !noundef !126
  %i.avv = trunc nuw i8 %i.avu to i1
  %i.avw = load ptr, ptr %i.aus, align 8, !tbaa !354, !noalias !1349 ; 8 uses
  %i.avx = ptrtoaddr ptr %i.avw to i64
  %i.avy = load i8, ptr %i.aut, align 2, !tbaa !355, !range !125, !noalias !1349, !noundef !126
  %i.avz = trunc nuw i8 %i.avy to i1              ; 2 uses
  br i1 %i.avv, label %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.avz, label %iter.check, label %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.awa = or disjoint i64 %i.avr, 1
  %umax332 = call i64 @llvm.umax.i64(i64 %i.awa, i64 %i.avq) ; 2 uses
  %i.awb = sub i64 %umax332, %i.avr               ; 3 uses
  %min.iters.check = icmp ult i64 %i.awb, 4
  br i1 %min.iters.check, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.awc = or disjoint i64 %i.avr, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.awc, i64 %i.avq)
  %i.awd = xor i64 %i.avr, -1
  %i.awe = add i64 %umax, %i.awd                  ; 2 uses
  %i.awf = sext i32 %i.avo to i34                 ; 2 uses
  %i.awg = shl nsw i34 %i.awf, 2
  %i.awh = trunc i64 %i.awe to i34
  %i.awi = add i34 %i.awf, %i.awh
  %i.awj = shl i34 %i.awi, 2
  %i.awk = icmp slt i34 %i.awj, %i.awg
  %i.awl = icmp ugt i64 %i.awe, 4294967295
  %i.awm = or i1 %i.awk, %i.awl
  br i1 %i.awm, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awn = shl nsw i64 %i.avr, 2                  ; 2 uses
  %i.awo = add i64 %i.awn, %.sink.i.i330
  %i.awp = sext i32 %i.avo to i34
  %i.awq = shl nsw i34 %i.awp, 2
  %i.awr = sext i34 %i.awq to i64                 ; 2 uses
  %i.aws = add i64 %i.avt, %i.awr
  %i.awt = sub i64 %i.aws, %i.awo
  %diff.check = icmp ugt i64 %i.awt, -64
  %i.awu = add i64 %i.awn, %.sink.i.i330
  %i.awv = add i64 %i.avx, %i.awr
  %i.aww = sub i64 %i.awv, %i.awu
  %diff.check331 = icmp ugt i64 %i.aww, -64
  %conflict.rdx = or i1 %diff.check, %diff.check331
  br i1 %conflict.rdx, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check333 = icmp ult i64 %i.awb, 16
  %i.awx = and i64 %umax332, 1                    ; 3 uses
  %n.vec337 = sub i64 %i.awb, %i.awx              ; 3 uses
  %i.awy = add i64 %n.vec337, %i.avr              ; 2 uses
  br i1 %min.iters.check333, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.awz = add nuw i64 %index, %i.avr             ; 2 uses
  %i.axa = shl i64 %i.awz, 32
  %i.axb = ashr exact i64 %i.axa, 30              ; 2 uses
  %i.axc = getelementptr inbounds i8, ptr %i.avs, i64 %i.axb ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  %wide.load = load <8 x float>, ptr %i.axc, align 4, !tbaa !418, !noalias !1348
  %wide.load334 = load <8 x float>, ptr %i.axd, align 4, !tbaa !418, !noalias !1348
  %i.axe = getelementptr inbounds i8, ptr %i.avw, i64 %i.axb ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 32
  %wide.load335 = load <8 x float>, ptr %i.axe, align 4, !tbaa !418, !noalias !1349
  %wide.load336 = load <8 x float>, ptr %i.axf, align 4, !tbaa !418, !noalias !1349
  %i.axg = fadd <8 x float> %wide.load, %wide.load335
  %i.axh = fadd <8 x float> %wide.load334, %wide.load336
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.awz ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 32
  store <8 x float> %i.axg, ptr %i.axi, align 4, !tbaa !418
  store <8 x float> %i.axh, ptr %i.axj, align 4, !tbaa !418
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.axk = icmp eq i64 %index.next, %n.vec337
  br i1 %i.axk, label %middle.block, label %vector.body, !llvm.loop !1299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awx, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index338 = phi i64 [ %index.next341, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.axl = add nuw i64 %index338, %i.avr          ; 2 uses
  %i.axm = shl i64 %i.axl, 32
  %i.axn = ashr exact i64 %i.axm, 30              ; 2 uses
  %i.axo = getelementptr inbounds i8, ptr %i.avs, i64 %i.axn
  %wide.load339 = load <4 x float>, ptr %i.axo, align 4, !tbaa !418, !noalias !1348
  %i.axp = getelementptr inbounds i8, ptr %i.avw, i64 %i.axn
  %wide.load340 = load <4 x float>, ptr %i.axp, align 4, !tbaa !418, !noalias !1349
  %i.axq = fadd <4 x float> %wide.load339, %wide.load340
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.axl
  store <4 x float> %i.axq, ptr %i.axr, align 4, !tbaa !418
  %index.next341 = add nuw i64 %index338, 4       ; 2 uses
  %i.axs = icmp eq i64 %index.next341, %n.vec337
  br i1 %i.axs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1300

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n342 = icmp eq i64 %i.awx, 0
  br i1 %cmp.n342, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block, %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.awy, %middle.block ], [ %i.avr, %vector.scevcheck ], [ %i.avr, %vector.memcheck ], [ %i.avr, %iter.check ], [ %i.awy, %vec.epilog.middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aya, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext70.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axt = ashr exact i64 %sext70.i.i.i.i.i.i.i.i.i.i.i, 30 ; 2 uses
  %i.axu = getelementptr inbounds i8, ptr %i.avs, i64 %i.axt
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !418, !noalias !1348
  %i.axw = getelementptr inbounds i8, ptr %i.avw, i64 %i.axt
  %i.axx = load float, ptr %i.axw, align 4, !tbaa !418, !noalias !1349
  %i.axy = fadd float %i.axv, %i.axx
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store float %i.axy, ptr %i.axz, align 4, !tbaa !418
  %i.aya = add nuw i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ayb = icmp ult i64 %i.aya, %i.avq
  br i1 %i.ayb, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1301

.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.ayc = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noalias !1349, !noundef !126
  %i.ayd = trunc nuw i8 %i.ayc to i1
  br i1 %i.ayd, label %iter.check376, label %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check376:                                    ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.aye = load i32, ptr %i.auw, align 8, !tbaa !357, !noalias !1349
  %i.ayf = sext i32 %i.aye to i64                 ; 2 uses
  %i.ayg = getelementptr inbounds [4 x i8], ptr %i.avw, i64 %i.ayf ; 3 uses
  %i.ayh = or disjoint i64 %i.avr, 1
  %umax360 = call i64 @llvm.umax.i64(i64 %i.ayh, i64 %i.avq) ; 2 uses
  %i.ayi = sub i64 %umax360, %i.avr               ; 3 uses
  %min.iters.check361 = icmp ult i64 %i.ayi, 4
  br i1 %min.iters.check361, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck344

vector.scevcheck344:                              ; preds = %iter.check376
  %i.ayj = or disjoint i64 %i.avr, 1
  %umax345 = call i64 @llvm.umax.i64(i64 %i.ayj, i64 %i.avq)
  %i.ayk = xor i64 %i.avr, -1
  %i.ayl = add i64 %umax345, %i.ayk               ; 2 uses
  %i.aym = sext i32 %i.avo to i34                 ; 2 uses
  %i.ayn = shl nsw i34 %i.aym, 2
  %i.ayo = trunc i64 %i.ayl to i34
  %i.ayp = add i34 %i.aym, %i.ayo
  %i.ayq = shl i34 %i.ayp, 2
  %i.ayr = icmp slt i34 %i.ayq, %i.ayn
  %i.ays = icmp ugt i64 %i.ayl, 4294967295
  %i.ayt = or i1 %i.ayr, %i.ays
  br i1 %i.ayt, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck349

vector.memcheck349:                               ; preds = %vector.scevcheck344
  %i.ayu = shl nsw i64 %i.avr, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayu ; 2 uses
  %i.ayv = or disjoint i64 %i.avr, 1
  %umax350 = call i64 @llvm.umax.i64(i64 %i.ayv, i64 %i.avq)
  %i.ayw = shl nsw i64 %umax350, 2                ; 2 uses
  %scevgep351 = getelementptr i8, ptr %.sink.i.i, i64 %i.ayw ; 2 uses
  %scevgep352 = getelementptr i8, ptr %i.avw, i64 4
  %i.ayx = shl nsw i64 %i.ayf, 2
  %scevgep353 = getelementptr i8, ptr %scevgep352, i64 %i.ayx
  %i.ayy = sext i32 %i.avo to i34
  %i.ayz = shl nsw i34 %i.ayy, 2
  %i.aza = sext i34 %i.ayz to i64                 ; 2 uses
  %scevgep354 = getelementptr i8, ptr %i.avs, i64 %i.aza
  %i.azb = add i64 %i.ayw, %i.aza
  %i.azc = sub i64 %i.azb, %i.ayu
  %scevgep355 = getelementptr i8, ptr %i.avs, i64 %i.azc
  %bound0 = icmp ult ptr %scevgep, %scevgep353
  %bound1 = icmp ult ptr %i.ayg, %scevgep351
  %found.conflict = and i1 %bound0, %bound1
  %bound0356 = icmp ult ptr %scevgep, %scevgep355
  %bound1357 = icmp ult ptr %scevgep354, %scevgep351
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx359 = or i1 %found.conflict, %found.conflict358
  br i1 %conflict.rdx359, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check362

vector.main.loop.iter.check362:                   ; preds = %vector.memcheck349
  %min.iters.check363 = icmp ult i64 %i.ayi, 32
  %i.azd = and i64 %umax360, 1                    ; 3 uses
  %n.vec381 = sub i64 %i.ayi, %i.azd              ; 3 uses
  %i.aze = add i64 %n.vec381, %i.avr              ; 2 uses
  %i.azf = load float, ptr %i.ayg, align 4, !tbaa !418, !alias.scope !1350, !noalias !1349 ; 2 uses
  br i1 %min.iters.check363, label %vec.epilog.ph380, label %vector.ph364

vector.ph364:                                     ; preds = %vector.main.loop.iter.check362
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.azf, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.ph364, %vector.body366
  %index367 = phi i64 [ 0, %vector.ph364 ], [ %index.next372, %vector.body366 ] ; 2 uses
  %i.azg = add nuw i64 %index367, %i.avr          ; 2 uses
  %i.azh = shl i64 %i.azg, 32
  %i.azi = ashr exact i64 %i.azh, 30
  %i.azj = getelementptr inbounds i8, ptr %i.avs, i64 %i.azi ; 4 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 32
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azj, i64 64
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azj, i64 96
  %wide.load368 = load <8 x float>, ptr %i.azj, align 4, !tbaa !418, !alias.scope !1351, !noalias !1348
  %wide.load369 = load <8 x float>, ptr %i.azk, align 4, !tbaa !418, !alias.scope !1351, !noalias !1348
  %wide.load370 = load <8 x float>, ptr %i.azl, align 4, !tbaa !418, !alias.scope !1351, !noalias !1348
  %wide.load371 = load <8 x float>, ptr %i.azm, align 4, !tbaa !418, !alias.scope !1351, !noalias !1348
  %i.azn = fadd <8 x float> %wide.load368, %broadcast.splat
  %i.azo = fadd <8 x float> %wide.load369, %broadcast.splat
  %i.azp = fadd <8 x float> %wide.load370, %broadcast.splat
  %i.azq = fadd <8 x float> %wide.load371, %broadcast.splat
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.azg ; 4 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 32
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azr, i64 64
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azr, i64 96
  store <8 x float> %i.azn, ptr %i.azr, align 4, !tbaa !418, !alias.scope !1352, !noalias !1353
  store <8 x float> %i.azo, ptr %i.azs, align 4, !tbaa !418, !alias.scope !1352, !noalias !1353
  store <8 x float> %i.azp, ptr %i.azt, align 4, !tbaa !418, !alias.scope !1352, !noalias !1353
  store <8 x float> %i.azq, ptr %i.azu, align 4, !tbaa !418, !alias.scope !1352, !noalias !1353
  %index.next372 = add nuw i64 %index367, 32      ; 2 uses
  %i.azv = icmp eq i64 %index.next372, %n.vec381
  br i1 %i.azv, label %middle.block373, label %vector.body366, !llvm.loop !1306

middle.block373:                                  ; preds = %vector.body366
  %cmp.n374 = icmp eq i64 %i.azd, 0
  br i1 %cmp.n374, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph380:                                 ; preds = %vector.main.loop.iter.check362
  %broadcast.splatinsert385 = insertelement <4 x float> poison, float %i.azf, i64 0
  %broadcast.splat386 = shufflevector <4 x float> %broadcast.splatinsert385, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body382

vec.epilog.vector.body382:                        ; preds = %vec.epilog.vector.body382, %vec.epilog.ph380
  %index383 = phi i64 [ 0, %vec.epilog.ph380 ], [ %index.next387, %vec.epilog.vector.body382 ] ; 2 uses
  %i.azw = add nuw i64 %index383, %i.avr          ; 2 uses
  %i.azx = shl i64 %i.azw, 32
  %i.azy = ashr exact i64 %i.azx, 30
  %i.azz = getelementptr inbounds i8, ptr %i.avs, i64 %i.azy
  %wide.load384 = load <4 x float>, ptr %i.azz, align 4, !tbaa !418, !alias.scope !1351, !noalias !1348
  %i.baa = fadd <4 x float> %wide.load384, %broadcast.splat386
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.azw
  store <4 x float> %i.baa, ptr %i.bab, align 4, !tbaa !418, !alias.scope !1352, !noalias !1353
  %index.next387 = add nuw i64 %index383, 4       ; 2 uses
  %i.bac = icmp eq i64 %index.next387, %n.vec381
  br i1 %i.bac, label %vec.epilog.middle.block388, label %vec.epilog.vector.body382, !llvm.loop !1307

vec.epilog.middle.block388:                       ; preds = %vec.epilog.vector.body382
  %cmp.n389 = icmp eq i64 %i.azd, 0
  br i1 %cmp.n389, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block373, %iter.check376, %vector.scevcheck344, %vector.memcheck349, %vec.epilog.middle.block388
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.aze, %middle.block373 ], [ %i.avr, %vector.scevcheck344 ], [ %i.avr, %vector.memcheck349 ], [ %i.avr, %iter.check376 ], [ %i.aze, %vec.epilog.middle.block388 ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.baj, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bad = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bae = getelementptr inbounds i8, ptr %i.avs, i64 %i.bad
  %i.baf = load float, ptr %i.bae, align 4, !tbaa !418, !noalias !1348
  %i.bag = load float, ptr %i.ayg, align 4, !tbaa !418, !noalias !1349
  %i.bah = fadd float %i.baf, %i.bag
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i
  store float %i.bah, ptr %i.bai, align 4, !tbaa !418
  %i.baj = add nuw i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bak = icmp ult i64 %i.baj, %i.avq
  br i1 %i.bak, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1308

.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bal = load ptr, ptr %i.auv, align 8, !tbaa !358, !noalias !1349
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avr, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.baw, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bam = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30 ; 2 uses
  %i.ban = getelementptr inbounds i8, ptr %i.avs, i64 %i.bam
  %i.bao = load float, ptr %i.ban, align 4, !tbaa !418, !noalias !1348
  %i.bap = getelementptr inbounds i8, ptr %i.bal, i64 %i.bam
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !55, !noalias !1349
  %i.bar = sext i32 %i.baq to i64
  %i.bas = getelementptr inbounds [4 x i8], ptr %i.avw, i64 %i.bar
  %i.bat = load float, ptr %i.bas, align 4, !tbaa !418, !noalias !1349
  %i.bau = fadd float %i.bao, %i.bat
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i
  store float %i.bau, ptr %i.bav, align 4, !tbaa !418
  %i.baw = add nuw i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bax = icmp ult i64 %i.baw, %i.avq
  br i1 %i.bax, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1309

.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bay = load i8, ptr %i.avb, align 1, !tbaa !356, !range !125, !noalias !1348, !noundef !126
  %i.baz = trunc nuw i8 %i.bay to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avr, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbt, %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bba = trunc i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.baz, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bbb = load ptr, ptr %i.auz, align 8, !tbaa !358, !noalias !1348
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bbc = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bbd = getelementptr inbounds i8, ptr %i.bbb, i64 %i.bbc
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bbd, %bb.eb ], [ %i.ava, %bb.ea ]
  %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55, !noalias !1348
  %i.bbe = sext i32 %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbf = getelementptr inbounds [4 x i8], ptr %i.avs, i64 %i.bbe
  %i.bbg = load float, ptr %i.bbf, align 4, !tbaa !418, !noalias !1348
  br i1 %i.avz, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %i.bbh = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noalias !1349, !noundef !126
  %i.bbi = trunc nuw i8 %i.bbh to i1
  br i1 %i.bbi, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.bbj = load i32, ptr %i.auw, align 8, !tbaa !357, !noalias !1349
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bbk = load ptr, ptr %i.auv, align 8, !tbaa !358, !noalias !1349
  %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bbl = ashr exact i64 %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bbm = getelementptr inbounds i8, ptr %i.bbk, i64 %i.bbl
  %i.bbn = load i32, ptr %i.bbm, align 4, !tbaa !55, !noalias !1349
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbn, %bb.ee ], [ %i.bbj, %bb.ed ], [ %i.bba, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbo = sext i32 %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbp = getelementptr inbounds [4 x i8], ptr %i.avw, i64 %i.bbo
  %i.bbq = load float, ptr %i.bbp, align 4, !tbaa !418, !noalias !1349
  %i.bbr = fadd float %i.bbg, %i.bbq
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i
  store float %i.bbr, ptr %i.bbs, align 4, !tbaa !418
  %i.bbt = add nuw i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbu = icmp ult i64 %i.bbt, %i.avq
  br i1 %i.bbu, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1309

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i
  %.01586.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avg, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i ], [ %i.bcw, %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01586.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbw = trunc nuw nsw i64 %i.bbv to i32
  %i.bbx = or disjoint i32 %i.avh, %i.bbw         ; 3 uses
  %i.bby = sext i32 %i.bbx to i64                 ; 3 uses
  br i1 %i.avk, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bbz = load i8, ptr %i.avb, align 1, !tbaa !356, !range !125, !noalias !1346, !noundef !126
  %i.bca = trunc nuw i8 %i.bbz to i1
  br i1 %i.bca, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bcb = load i32, ptr %i.ava, align 8, !tbaa !357, !noalias !1346
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bcc = load ptr, ptr %i.auz, align 8, !tbaa !358, !noalias !1346
  %i.bcd = shl nsw i64 %i.bby, 2
  %i.bce = getelementptr inbounds i8, ptr %i.bcc, i64 %i.bcd
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !55, !noalias !1346
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bcf, %bb.ei ], [ %i.bcb, %bb.eh ], [ %i.bbx, %bb.ef ]
  %i.bcg = sext i32 %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i to i64
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.aro = load i32, ptr %i.aqz, align 8, !tbaa !357, !noalias !1603
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.arp = load ptr, ptr %i.aqy, align 8, !tbaa !358, !noalias !1603
  %i.arq = shl nsw i64 %i.arl, 2
  %i.arr = getelementptr inbounds i8, ptr %i.arp, i64 %i.arq
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !55, !noalias !1603
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ars, %bb.dm ], [ %i.aro, %bb.dl ], [ %i.ark, %bb.dj ]
  %i.art = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.aqt, i64 %i.art
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !108, !noalias !1603
  br i1 %i.are, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.arw = load i8, ptr %i.arf, align 1, !tbaa !356, !range !125, !noalias !1604, !noundef !126
  %i.arx = trunc nuw i8 %i.arw to i1
  br i1 %i.arx, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ary = load i32, ptr %i.arh, align 8, !tbaa !357, !noalias !1604
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.arz = load ptr, ptr %i.arg, align 8, !tbaa !358, !noalias !1604
  %i.asa = shl nsw i64 %i.arl, 2
  %i.asb = getelementptr inbounds i8, ptr %i.arz, i64 %i.asa
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !55, !noalias !1604
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.asc, %bb.dp ], [ %i.ary, %bb.do ], [ %i.ark, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.asd = sext i32 %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ase = getelementptr inbounds [8 x i8], ptr %i.arb, i64 %i.asd
  %i.asf = load i64, ptr %i.ase, align 8, !tbaa !108, !noalias !1604
  %i.asg = add nsw i64 %i.asf, %i.arv
  %i.ash = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.arl
  store i64 %i.asg, ptr %i.ash, align 8, !tbaa !108
  %i.asi = add nsw i64 %.035.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asj = and i64 %i.asi, %.035.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %i.asj, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i69, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.dj, !llvm.loop !1548

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.apv, %i.aqa
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ask = sdiv i32 %i.apv, 64                    ; 2 uses
  %i.asl = sub nsw i32 %i.aqa, %i.apv             ; 2 uses
  %i.asm = zext nneg i32 %i.asl to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.asm
  %i.asn = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.aso = sub nsw i32 64, %i.asl
  %i.asp = zext nneg i32 %i.aso to i64
  %i.asq = shl i64 %i.asn, %i.asp
  %i.asr = sext i32 %i.ask to i64
  %i.ass = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %i.asr
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !108
  %i.asu = and i64 %i.ast, %i.asq                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.asu, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.asv = shl nsw i32 %i.ask, 6
  %i.asw = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !354, !noalias !1605
  %i.asy = getelementptr inbounds nuw i8, ptr %i.alg, i64 58
  %i.asz = load i8, ptr %i.asy, align 2, !tbaa !355, !range !125, !noalias !1605, !noundef !126
  %i.ata = trunc nuw i8 %i.asz to i1
  %i.atb = getelementptr inbounds nuw i8, ptr %i.alg, i64 59
  %i.atc = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.atd = getelementptr inbounds nuw i8, ptr %i.alg, i64 64
  %i.ate = getelementptr inbounds nuw i8, ptr %i.amw, i64 16
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !354, !noalias !1606
  %i.atg = getelementptr inbounds nuw i8, ptr %i.amw, i64 58
  %i.ath = load i8, ptr %i.atg, align 2, !tbaa !355, !range !125, !noalias !1606, !noundef !126
  %i.ati = trunc nuw i8 %i.ath to i1
  %i.atj = getelementptr inbounds nuw i8, ptr %i.amw, i64 59
  %i.atk = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.amw, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.035.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asu, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.aun, %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.atm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atn = trunc nuw nsw i64 %i.atm to i32
  %i.ato = or disjoint i32 %i.asv, %i.atn         ; 3 uses
  %i.atp = sext i32 %i.ato to i64                 ; 3 uses
  br i1 %i.ata, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.atq = load i8, ptr %i.atb, align 1, !tbaa !356, !range !125, !noalias !1605, !noundef !126
  %i.atr = trunc nuw i8 %i.atq to i1
  br i1 %i.atr, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ats = load i32, ptr %i.atd, align 8, !tbaa !357, !noalias !1605
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.att = load ptr, ptr %i.atc, align 8, !tbaa !358, !noalias !1605
  %i.atu = shl nsw i64 %i.atp, 2
  %i.atv = getelementptr inbounds i8, ptr %i.att, i64 %i.atu
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !55, !noalias !1605
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.atw, %bb.dv ], [ %i.ats, %bb.du ], [ %i.ato, %bb.ds ]
  %i.atx = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aty = getelementptr inbounds [8 x i8], ptr %i.asx, i64 %i.atx
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !108, !noalias !1605
  br i1 %i.ati, label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.aua = load i8, ptr %i.atj, align 1, !tbaa !356, !range !125, !noalias !1606, !noundef !126
  %i.aub = trunc nuw i8 %i.aua to i1
  br i1 %i.aub, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.auc = load i32, ptr %i.atl, align 8, !tbaa !357, !noalias !1606
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.aud = load ptr, ptr %i.atk, align 8, !tbaa !358, !noalias !1606
  %i.aue = shl nsw i64 %i.atp, 2
  %i.auf = getelementptr inbounds i8, ptr %i.aud, i64 %i.aue
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !55, !noalias !1606
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aug, %bb.dy ], [ %i.auc, %bb.dx ], [ %i.ato, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.auh = sext i32 %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aui = getelementptr inbounds [8 x i8], ptr %i.atf, i64 %i.auh
  %i.auj = load i64, ptr %i.aui, align 8, !tbaa !108, !noalias !1606
  %i.auk = add nsw i64 %i.auj, %i.atz
  %i.aul = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.atp
  store i64 %i.auk, ptr %i.aul, align 8, !tbaa !108
  %i.aum = add i64 %.035.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aun = and i64 %i.aum, %.035.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aun, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !1548

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.auo = add nsw i32 %i.aqa, 64                 ; 2 uses
  %.not3367.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.auo, %i.aqb
  br i1 %.not3367.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.aup = getelementptr inbounds nuw i8, ptr %i.amw, i64 16 ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.amw, i64 58 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.amw, i64 59 ; 3 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.amw, i64 8 ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.amw, i64 64 ; 3 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.alg, i64 16 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.alg, i64 58 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.alg, i64 8 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.alg, i64 64 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.alg, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.apx, %i.aqb
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.auz = phi i32 [ %i.bco, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auo, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aqa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ava = sdiv i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.avb = sext i32 %i.ava to i64
  %i.avc = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %i.avb
  %i.avd = load i64, ptr %i.avc, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.avd, label %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.ave = shl nsw i32 %i.ava, 6
  %i.avf = load ptr, ptr %i.auu, align 8, !tbaa !354, !noalias !1607
  %i.avg = load i8, ptr %i.auv, align 2, !tbaa !355, !range !125, !noalias !1607, !noundef !126
  %i.avh = trunc nuw i8 %i.avg to i1
  %i.avi = load ptr, ptr %i.aup, align 8, !tbaa !354, !noalias !1608
  %i.avj = load i8, ptr %i.auq, align 2, !tbaa !355, !range !125, !noalias !1608, !noundef !126
  %i.avk = trunc nuw i8 %i.avj to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avl = shl nsw i32 %i.ava, 6                  ; 6 uses
  %i.avm = add i32 %i.avl, 64
  %i.avn = sext i32 %i.avm to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i65 = add i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not90.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i65, 64
  br i1 %.not90.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph89.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph89.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avo = sext i32 %i.avl to i64                 ; 24 uses
  %i.avp = load ptr, ptr %i.auu, align 8, !tbaa !354, !noalias !1609 ; 10 uses
  %i.avq = ptrtoaddr ptr %i.avp to i64
  %i.avr = load i8, ptr %i.auv, align 2, !tbaa !355, !range !125, !noalias !1609, !noundef !126
  %i.avs = trunc nuw i8 %i.avr to i1
  %i.avt = load ptr, ptr %i.aup, align 8, !tbaa !354, !noalias !1610 ; 7 uses
  %i.avu = ptrtoaddr ptr %i.avt to i64
  %i.avv = load i8, ptr %i.auq, align 2, !tbaa !355, !range !125, !noalias !1610, !noundef !126
  %i.avw = trunc nuw i8 %i.avv to i1              ; 2 uses
  br i1 %i.avs, label %.lr.ph89.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph89.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph89.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph89.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.avw, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph89.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph89.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.avx = or disjoint i64 %i.avo, 1
  %i.avy = call i64 @llvm.umax.i64(i64 %i.avx, i64 %i.avn) ; 2 uses
  %i.avz = sub i64 %i.avy, %i.avo                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.avz, 36
  br i1 %min.iters.check, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.awa = or disjoint i64 %i.avo, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.awa, i64 %i.avn)
  %i.awb = xor i64 %i.avo, -1
  %i.awc = add i64 %umax, %i.awb                  ; 2 uses
  %i.awd = sext i32 %i.avl to i35                 ; 2 uses
  %i.awe = shl nsw i35 %i.awd, 3
  %i.awf = trunc i64 %i.awc to i35
  %i.awg = add i35 %i.awd, %i.awf
  %i.awh = shl i35 %i.awg, 3
  %i.awi = icmp slt i35 %i.awh, %i.awe
  %i.awj = icmp ugt i64 %i.awc, 4294967295
  %i.awk = or i1 %i.awi, %i.awj
  br i1 %i.awk, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awl = shl nsw i64 %i.avo, 3                  ; 2 uses
  %i.awm = add i64 %i.awl, %.sink.i.i330
  %i.awn = sext i32 %i.avl to i35
  %i.awo = shl nsw i35 %i.awn, 3
  %i.awp = sext i35 %i.awo to i64                 ; 2 uses
  %i.awq = add i64 %i.avq, %i.awp
  %i.awr = sub i64 %i.awq, %i.awm
  %diff.check = icmp ugt i64 %i.awr, -64
  %i.aws = add i64 %i.awl, %.sink.i.i330
  %i.awt = add i64 %i.avu, %i.awp
  %i.awu = sub i64 %i.awt, %i.aws
  %diff.check331 = icmp ugt i64 %i.awu, -64
  %conflict.rdx = or i1 %diff.check, %diff.check331
  br i1 %conflict.rdx, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.awv = and i64 %i.avy, 1                      ; 2 uses
  %n.vec = sub i64 %i.avz, %i.awv                 ; 2 uses
  %i.aww = add i64 %n.vec, %i.avo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awx = add nuw i64 %index, %i.avo             ; 2 uses
  %i.awy = shl i64 %i.awx, 32
  %i.awz = ashr exact i64 %i.awy, 29              ; 2 uses
  %i.axa = getelementptr inbounds i8, ptr %i.avp, i64 %i.awz ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 32
  %wide.load = load <4 x i64>, ptr %i.axa, align 8, !tbaa !108, !noalias !1609
  %wide.load332 = load <4 x i64>, ptr %i.axb, align 8, !tbaa !108, !noalias !1609
  %i.axc = getelementptr inbounds i8, ptr %i.avt, i64 %i.awz ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  %wide.load333 = load <4 x i64>, ptr %i.axc, align 8, !tbaa !108, !noalias !1610
  %wide.load334 = load <4 x i64>, ptr %i.axd, align 8, !tbaa !108, !noalias !1610
  %i.axe = add nsw <4 x i64> %wide.load333, %wide.load
  %i.axf = add nsw <4 x i64> %wide.load334, %wide.load332
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.awx ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 32
  store <4 x i64> %i.axe, ptr %i.axg, align 8, !tbaa !108
  store <4 x i64> %i.axf, ptr %i.axh, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.axi = icmp eq i64 %index.next, %n.vec
  br i1 %i.axi, label %middle.block, label %vector.body, !llvm.loop !1561

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awv, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669: ; preds = %vector.memcheck, %vector.scevcheck, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.avo, %vector.memcheck ], [ %i.avo, %vector.scevcheck ], [ %i.avo, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aww, %middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axq, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669 ] ; 3 uses
  %sext70.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axj = ashr exact i64 %sext70.i.i.i.i.i.i.i.i.i.i.i, 29 ; 2 uses
  %i.axk = getelementptr inbounds i8, ptr %i.avp, i64 %i.axj
  %i.axl = load i64, ptr %i.axk, align 8, !tbaa !108, !noalias !1609
  %i.axm = getelementptr inbounds i8, ptr %i.avt, i64 %i.axj
  %i.axn = load i64, ptr %i.axm, align 8, !tbaa !108, !noalias !1610
  %i.axo = add nsw i64 %i.axn, %i.axl
  %i.axp = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.axo, ptr %i.axp, align 8, !tbaa !108
  %i.axq = add nuw i64 %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axr = icmp ult i64 %i.axq, %i.avn
  br i1 %i.axr, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1562

.lr.ph89.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph89.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.axs = load i8, ptr %i.aur, align 1, !tbaa !356, !range !125, !noalias !1610, !noundef !126
  %i.axt = trunc nuw i8 %i.axs to i1
  br i1 %i.axt, label %iter.check, label %.lr.ph89.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph89.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.axu = load i32, ptr %i.aut, align 8, !tbaa !357, !noalias !1610
  %i.axv = sext i32 %i.axu to i64                 ; 2 uses
  %i.axw = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %i.axv ; 3 uses
  %i.axx = or disjoint i64 %i.avo, 1
  %umax351 = call i64 @llvm.umax.i64(i64 %i.axx, i64 %i.avn) ; 2 uses
  %i.axy = sub i64 %umax351, %i.avo               ; 3 uses
  %min.iters.check353 = icmp ult i64 %i.axy, 4
  br i1 %min.iters.check353, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck335

vector.scevcheck335:                              ; preds = %iter.check
  %i.axz = or disjoint i64 %i.avo, 1
  %umax336 = call i64 @llvm.umax.i64(i64 %i.axz, i64 %i.avn)
  %i.aya = xor i64 %i.avo, -1
  %i.ayb = add i64 %umax336, %i.aya               ; 2 uses
  %i.ayc = sext i32 %i.avl to i35                 ; 2 uses
  %i.ayd = shl nsw i35 %i.ayc, 3
  %i.aye = trunc i64 %i.ayb to i35
  %i.ayf = add i35 %i.ayc, %i.aye
  %i.ayg = shl i35 %i.ayf, 3
  %i.ayh = icmp slt i35 %i.ayg, %i.ayd
  %i.ayi = icmp ugt i64 %i.ayb, 4294967295
  %i.ayj = or i1 %i.ayh, %i.ayi
  br i1 %i.ayj, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck340

vector.memcheck340:                               ; preds = %vector.scevcheck335
  %i.ayk = shl nsw i64 %i.avo, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayk ; 2 uses
  %i.ayl = or disjoint i64 %i.avo, 1
  %umax341 = call i64 @llvm.umax.i64(i64 %i.ayl, i64 %i.avn)
  %i.aym = shl nsw i64 %umax341, 3                ; 2 uses
  %scevgep342 = getelementptr i8, ptr %.sink.i.i, i64 %i.aym ; 2 uses
  %scevgep343 = getelementptr i8, ptr %i.avt, i64 8
  %i.ayn = shl nsw i64 %i.axv, 3
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.ayn
  %i.ayo = sext i32 %i.avl to i35
  %i.ayp = shl nsw i35 %i.ayo, 3
  %i.ayq = sext i35 %i.ayp to i64                 ; 2 uses
  %scevgep345 = getelementptr i8, ptr %i.avp, i64 %i.ayq
  %i.ayr = add i64 %i.aym, %i.ayq
  %i.ays = sub i64 %i.ayr, %i.ayk
  %scevgep346 = getelementptr i8, ptr %i.avp, i64 %i.ays
  %bound0 = icmp ult ptr %scevgep, %scevgep344
  %bound1 = icmp ult ptr %i.axw, %scevgep342
  %found.conflict = and i1 %bound0, %bound1
  %bound0347 = icmp ult ptr %scevgep, %scevgep346
  %bound1348 = icmp ult ptr %scevgep345, %scevgep342
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %found.conflict, %found.conflict349
  br i1 %conflict.rdx350, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck340
  %min.iters.check354 = icmp ult i64 %i.axy, 16
  %i.ayt = and i64 %umax351, 1                    ; 3 uses
  %n.vec367 = sub i64 %i.axy, %i.ayt              ; 3 uses
  %i.ayu = add i64 %n.vec367, %i.avo              ; 2 uses
  %i.ayv = load i64, ptr %i.axw, align 8, !tbaa !108, !alias.scope !1611, !noalias !1610
  %broadcast.splatinsert370 = insertelement <4 x i64> poison, i64 %i.ayv, i64 0
  %broadcast.splat371 = shufflevector <4 x i64> %broadcast.splatinsert370, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check354, label %vec.epilog.vector.body, label %vector.body357

vector.body357:                                   ; preds = %vector.main.loop.iter.check, %vector.body357
  %index358 = phi i64 [ %index.next363, %vector.body357 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ayw = add nuw i64 %index358, %i.avo          ; 2 uses
  %i.ayx = shl i64 %i.ayw, 32
  %i.ayy = ashr exact i64 %i.ayx, 29
  %i.ayz = getelementptr inbounds i8, ptr %i.avp, i64 %i.ayy ; 4 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayz, i64 64
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 96
  %wide.load359 = load <4 x i64>, ptr %i.ayz, align 8, !tbaa !108, !alias.scope !1612, !noalias !1609
  %wide.load360 = load <4 x i64>, ptr %i.aza, align 8, !tbaa !108, !alias.scope !1612, !noalias !1609
  %wide.load361 = load <4 x i64>, ptr %i.azb, align 8, !tbaa !108, !alias.scope !1612, !noalias !1609
  %wide.load362 = load <4 x i64>, ptr %i.azc, align 8, !tbaa !108, !alias.scope !1612, !noalias !1609
  %i.azd = add nsw <4 x i64> %broadcast.splat371, %wide.load359
  %i.aze = add nsw <4 x i64> %broadcast.splat371, %wide.load360
  %i.azf = add nsw <4 x i64> %broadcast.splat371, %wide.load361
  %i.azg = add nsw <4 x i64> %broadcast.splat371, %wide.load362
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.ayw ; 4 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 32
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azh, i64 64
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azh, i64 96
  store <4 x i64> %i.azd, ptr %i.azh, align 8, !tbaa !108, !alias.scope !1613, !noalias !1614
  store <4 x i64> %i.aze, ptr %i.azi, align 8, !tbaa !108, !alias.scope !1613, !noalias !1614
  store <4 x i64> %i.azf, ptr %i.azj, align 8, !tbaa !108, !alias.scope !1613, !noalias !1614
  store <4 x i64> %i.azg, ptr %i.azk, align 8, !tbaa !108, !alias.scope !1613, !noalias !1614
  %index.next363 = add nuw i64 %index358, 16      ; 2 uses
  %i.azl = icmp eq i64 %index.next363, %n.vec367
  br i1 %i.azl, label %middle.block364, label %vector.body357, !llvm.loop !1567

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %i.ayt, 0
  br i1 %cmp.n365, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index368 = phi i64 [ %index.next372, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.azm = add nuw i64 %index368, %i.avo          ; 2 uses
  %i.azn = shl i64 %i.azm, 32
  %i.azo = ashr exact i64 %i.azn, 29
  %i.azp = getelementptr inbounds i8, ptr %i.avp, i64 %i.azo
  %wide.load369 = load <4 x i64>, ptr %i.azp, align 8, !tbaa !108, !alias.scope !1612, !noalias !1609
  %i.azq = add nsw <4 x i64> %broadcast.splat371, %wide.load369
  %i.azr = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.azm
  store <4 x i64> %i.azq, ptr %i.azr, align 8, !tbaa !108, !alias.scope !1613, !noalias !1614
  %index.next372 = add nuw i64 %index368, 4       ; 2 uses
  %i.azs = icmp eq i64 %index.next372, %n.vec367
  br i1 %i.azs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1568

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n373 = icmp eq i64 %i.ayt, 0
  br i1 %cmp.n373, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block364, %iter.check, %vector.scevcheck335, %vector.memcheck340, %vec.epilog.middle.block
  %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ayu, %middle.block364 ], [ %i.avo, %vector.scevcheck335 ], [ %i.avo, %vector.memcheck340 ], [ %i.avo, %iter.check ], [ %i.ayu, %vec.epilog.middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i
  %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azz, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i ], [ %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.azt = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azu = getelementptr inbounds i8, ptr %i.avp, i64 %i.azt
  %i.azv = load i64, ptr %i.azu, align 8, !tbaa !108, !noalias !1609
  %i.azw = load i64, ptr %i.axw, align 8, !tbaa !108, !noalias !1610
  %i.azx = add nsw i64 %i.azw, %i.azv
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.azx, ptr %i.azy, align 8, !tbaa !108
  %i.azz = add nuw i64 %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.baa = icmp ult i64 %i.azz, %i.avn
  br i1 %i.baa, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1569

.lr.ph89.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph89.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bab = load ptr, ptr %i.aus, align 8, !tbaa !358, !noalias !1610
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph89.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.088.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avo, %.lr.ph89.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ban, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.us.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.bac = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.bad = getelementptr inbounds i8, ptr %i.avp, i64 %i.bac
  %i.bae = load i64, ptr %i.bad, align 8, !tbaa !108, !noalias !1609
  %i.baf = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bag = getelementptr inbounds i8, ptr %i.bab, i64 %i.baf
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !55, !noalias !1610
  %i.bai = sext i32 %i.bah to i64
  %i.baj = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %i.bai
  %i.bak = load i64, ptr %i.baj, align 8, !tbaa !108, !noalias !1610
  %i.bal = add nsw i64 %i.bak, %i.bae
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.088.i.us.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bal, ptr %i.bam, align 8, !tbaa !108
  %i.ban = add nuw i64 %.088.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bao = icmp ult i64 %i.ban, %i.avn
  br i1 %i.bao, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1570

.lr.ph89.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph89.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bap = load i8, ptr %i.auy, align 1, !tbaa !356, !range !125, !noalias !1609, !noundef !126
  %i.baq = trunc nuw i8 %i.bap to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph89.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.088.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avo, %.lr.ph89.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbk, %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bar = trunc i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.baq, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bas = load ptr, ptr %i.auw, align 8, !tbaa !358, !noalias !1609
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bat = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bau = getelementptr inbounds i8, ptr %i.bas, i64 %i.bat
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bau, %bb.eb ], [ %i.aux, %bb.ea ]
  %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55, !noalias !1609
  %i.bav = sext i32 %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.baw = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bav
  %i.bax = load i64, ptr %i.baw, align 8, !tbaa !108, !noalias !1609
  br i1 %i.avw, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %i.bay = load i8, ptr %i.aur, align 1, !tbaa !356, !range !125, !noalias !1610, !noundef !126
  %i.baz = trunc nuw i8 %i.bay to i1
  br i1 %i.baz, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.bba = load i32, ptr %i.aut, align 8, !tbaa !357, !noalias !1610
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bbb = load ptr, ptr %i.aus, align 8, !tbaa !358, !noalias !1610
  %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bbc = ashr exact i64 %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bbd = getelementptr inbounds i8, ptr %i.bbb, i64 %i.bbc
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !55, !noalias !1610
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbe, %bb.ee ], [ %i.bba, %bb.ed ], [ %i.bar, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbf = sext i32 %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbg = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %i.bbf
  %i.bbh = load i64, ptr %i.bbg, align 8, !tbaa !108, !noalias !1610
  %i.bbi = add nsw i64 %i.bbh, %i.bax
  %i.bbj = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bbi, ptr %i.bbj, align 8, !tbaa !108
  %i.bbk = add nuw i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbl = icmp ult i64 %i.bbk, %i.avn
  br i1 %i.bbl, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1570

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i
  %.01587.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avd, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i ], [ %i.bcn, %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01587.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbn = trunc nuw nsw i64 %i.bbm to i32
  %i.bbo = or disjoint i32 %i.ave, %i.bbn         ; 3 uses
  %i.bbp = sext i32 %i.bbo to i64                 ; 3 uses
  br i1 %i.avh, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bbq = load i8, ptr %i.auy, align 1, !tbaa !356, !range !125, !noalias !1607, !noundef !126
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bbs = load i32, ptr %i.aux, align 8, !tbaa !357, !noalias !1607
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bbt = load ptr, ptr %i.auw, align 8, !tbaa !358, !noalias !1607
  %i.bbu = shl nsw i64 %i.bbp, 2
  %i.bbv = getelementptr inbounds i8, ptr %i.bbt, i64 %i.bbu
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !55, !noalias !1607
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbw, %bb.ei ], [ %i.bbs, %bb.eh ], [ %i.bbo, %bb.ef ]
  %i.bbx = sext i32 %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bby = getelementptr inbounds [8 x i8], ptr %i.avf, i64 %i.bbx
  %i.bbz = load i64, ptr %i.bby, align 8, !tbaa !108, !noalias !1607
  br i1 %i.avk, label %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bca = load i8, ptr %i.aur, align 1, !tbaa !356, !range !125, !noalias !1608, !noundef !126
  %i.bcb = trunc nuw i8 %i.bca to i1
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.aro = load i32, ptr %i.aqz, align 8, !tbaa !357
  br label %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.arp = load ptr, ptr %i.aqy, align 8, !tbaa !358
  %i.arq = shl nsw i64 %i.arl, 2
  %i.arr = getelementptr inbounds i8, ptr %i.arp, i64 %i.arq
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !55
  br label %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i

.noexc12.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ars, %bb.dm ], [ %i.aro, %bb.dl ], [ %i.ark, %bb.dj ]
  %i.art = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.aqt, i64 %i.art
  %i.arv = load double, ptr %i.aru, align 8, !tbaa !310
  br i1 %i.are, label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i
  %i.arw = load i8, ptr %i.arf, align 1, !tbaa !356, !range !125, !noundef !126
  %i.arx = trunc nuw i8 %i.arw to i1
  br i1 %i.arx, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ary = load i32, ptr %i.arh, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.arz = load ptr, ptr %i.arg, align 8, !tbaa !358
  %i.asa = shl nsw i64 %i.arl, 2
  %i.asb = getelementptr inbounds i8, ptr %i.arz, i64 %i.asa
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.asc, %bb.dp ], [ %i.ary, %bb.do ], [ %i.ark, %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.asd = sext i32 %.0.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ase = getelementptr inbounds [8 x i8], ptr %i.arb, i64 %i.asd
  %i.asf = load double, ptr %i.ase, align 8, !tbaa !310
  %i.asg = fsub double %i.arv, %i.asf
  %i.ash = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.arl
  store double %i.asg, ptr %i.ash, align 8, !tbaa !310
  %i.asi = add nsw i64 %.036.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asj = and i64 %i.asi, %.036.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i73 = icmp eq i64 %i.asj, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i73, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.dj, !llvm.loop !2051

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.apv, %i.aqa
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ask = sdiv i32 %i.apv, 64                    ; 2 uses
  %i.asl = sub nsw i32 %i.aqa, %i.apv             ; 2 uses
  %i.asm = zext nneg i32 %i.asl to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.asm
  %i.asn = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.aso = sub nsw i32 64, %i.asl
  %i.asp = zext nneg i32 %i.aso to i64
  %i.asq = shl i64 %i.asn, %i.asp
  %i.asr = sext i32 %i.ask to i64
  %i.ass = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %i.asr
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !108
  %i.asu = and i64 %i.ast, %i.asq                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.asu, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.asv = shl nsw i32 %i.ask, 6
  %i.asw = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !354
  %i.asy = getelementptr inbounds nuw i8, ptr %i.alg, i64 58
  %i.asz = load i8, ptr %i.asy, align 2, !tbaa !355, !range !125, !noundef !126
  %i.ata = trunc nuw i8 %i.asz to i1
  %i.atb = getelementptr inbounds nuw i8, ptr %i.alg, i64 59
  %i.atc = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.atd = getelementptr inbounds nuw i8, ptr %i.alg, i64 64
  %i.ate = getelementptr inbounds nuw i8, ptr %i.amw, i64 16
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !354
  %i.atg = getelementptr inbounds nuw i8, ptr %i.amw, i64 58
  %i.ath = load i8, ptr %i.atg, align 2, !tbaa !355, !range !125, !noundef !126
  %i.ati = trunc nuw i8 %i.ath to i1
  %i.atj = getelementptr inbounds nuw i8, ptr %i.amw, i64 59
  %i.atk = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.amw, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.036.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asu, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.aun, %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.atm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.036.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atn = trunc nuw nsw i64 %i.atm to i32
  %i.ato = or disjoint i32 %i.asv, %i.atn         ; 3 uses
  %i.atp = sext i32 %i.ato to i64                 ; 3 uses
  br i1 %i.ata, label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.atq = load i8, ptr %i.atb, align 1, !tbaa !356, !range !125, !noundef !126
  %i.atr = trunc nuw i8 %i.atq to i1
  br i1 %i.atr, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ats = load i32, ptr %i.atd, align 8, !tbaa !357
  br label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.att = load ptr, ptr %i.atc, align 8, !tbaa !358
  %i.atu = shl nsw i64 %i.atp, 2
  %i.atv = getelementptr inbounds i8, ptr %i.att, i64 %i.atu
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !55
  br label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i

.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.atw, %bb.dv ], [ %i.ats, %bb.du ], [ %i.ato, %bb.ds ]
  %i.atx = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aty = getelementptr inbounds [8 x i8], ptr %i.asx, i64 %i.atx
  %i.atz = load double, ptr %i.aty, align 8, !tbaa !310
  br i1 %i.ati, label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.aua = load i8, ptr %i.atj, align 1, !tbaa !356, !range !125, !noundef !126
  %i.aub = trunc nuw i8 %i.aua to i1
  br i1 %i.aub, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.auc = load i32, ptr %i.atl, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.aud = load ptr, ptr %i.atk, align 8, !tbaa !358
  %i.aue = shl nsw i64 %i.atp, 2
  %i.auf = getelementptr inbounds i8, ptr %i.aud, i64 %i.aue
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aug, %bb.dy ], [ %i.auc, %bb.dx ], [ %i.ato, %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.auh = sext i32 %.0.i.i.i17.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aui = getelementptr inbounds [8 x i8], ptr %i.atf, i64 %i.auh
  %i.auj = load double, ptr %i.aui, align 8, !tbaa !310
  %i.auk = fsub double %i.atz, %i.auj
  %i.aul = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.atp
  store double %i.auk, ptr %i.aul, align 8, !tbaa !310
  %i.aum = add i64 %.036.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aun = and i64 %i.aum, %.036.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aun, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !2051

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.auo = add nsw i32 %i.aqa, 64                 ; 2 uses
  %.not3366.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.auo, %i.aqb
  br i1 %.not3366.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.aup = getelementptr inbounds nuw i8, ptr %i.amw, i64 16 ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.amw, i64 58 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.amw, i64 59 ; 3 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.amw, i64 8 ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.amw, i64 64 ; 3 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.alg, i64 16 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.alg, i64 58 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.alg, i64 8 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.alg, i64 64 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.alg, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.apx, %i.aqb
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.auz = phi i32 [ %i.bco, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auo, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.067.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aqa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ava = sdiv i32 %.067.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.avb = sext i32 %i.ava to i64
  %i.avc = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %i.avb
  %i.avd = load i64, ptr %i.avc, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.avd, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.ave = shl nsw i32 %i.ava, 6
  %i.avf = load ptr, ptr %i.auu, align 8, !tbaa !354
  %i.avg = load i8, ptr %i.auv, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avh = trunc nuw i8 %i.avg to i1
  %i.avi = load ptr, ptr %i.aup, align 8, !tbaa !354
  %i.avj = load i8, ptr %i.auq, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avk = trunc nuw i8 %i.avj to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avl = shl nsw i32 %i.ava, 6                  ; 6 uses
  %i.avm = add i32 %i.avl, 64
  %i.avn = sext i32 %i.avm to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i68 = add i32 %.067.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not93.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i68, 64
  br i1 %.not93.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avo = sext i32 %i.avl to i64                 ; 24 uses
  %i.avp = load ptr, ptr %i.auu, align 8, !tbaa !354 ; 10 uses
  %i.avq = ptrtoaddr ptr %i.avp to i64
  %i.avr = load i8, ptr %i.auv, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avs = trunc nuw i8 %i.avr to i1
  %i.avt = load ptr, ptr %i.aup, align 8, !tbaa !354 ; 7 uses
  %i.avu = ptrtoaddr ptr %i.avt to i64
  %i.avv = load i8, ptr %i.auq, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avw = trunc nuw i8 %i.avv to i1              ; 2 uses
  br i1 %i.avs, label %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.avw, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.avx = or disjoint i64 %i.avo, 1
  %i.avy = call i64 @llvm.umax.i64(i64 %i.avx, i64 %i.avn) ; 2 uses
  %i.avz = sub i64 %i.avy, %i.avo                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.avz, 36
  br i1 %min.iters.check, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.awa = or disjoint i64 %i.avo, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.awa, i64 %i.avn)
  %i.awb = xor i64 %i.avo, -1
  %i.awc = add i64 %umax, %i.awb                  ; 2 uses
  %i.awd = sext i32 %i.avl to i35                 ; 2 uses
  %i.awe = shl nsw i35 %i.awd, 3
  %i.awf = trunc i64 %i.awc to i35
  %i.awg = add i35 %i.awd, %i.awf
  %i.awh = shl i35 %i.awg, 3
  %i.awi = icmp slt i35 %i.awh, %i.awe
  %i.awj = icmp ugt i64 %i.awc, 4294967295
  %i.awk = or i1 %i.awi, %i.awj
  br i1 %i.awk, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awl = shl nsw i64 %i.avo, 3                  ; 2 uses
  %i.awm = add i64 %i.awl, %.sink.i.i333
  %i.awn = sext i32 %i.avl to i35
  %i.awo = shl nsw i35 %i.awn, 3
  %i.awp = sext i35 %i.awo to i64                 ; 2 uses
  %i.awq = add i64 %i.avq, %i.awp
  %i.awr = sub i64 %i.awq, %i.awm
  %diff.check = icmp ugt i64 %i.awr, -64
  %i.aws = add i64 %i.awl, %.sink.i.i333
  %i.awt = add i64 %i.avu, %i.awp
  %i.awu = sub i64 %i.awt, %i.aws
  %diff.check334 = icmp ugt i64 %i.awu, -64
  %conflict.rdx = or i1 %diff.check, %diff.check334
  br i1 %conflict.rdx, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.awv = and i64 %i.avy, 1                      ; 2 uses
  %n.vec = sub i64 %i.avz, %i.awv                 ; 2 uses
  %i.aww = add i64 %n.vec, %i.avo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awx = add nuw i64 %index, %i.avo             ; 2 uses
  %i.awy = shl i64 %i.awx, 32
  %i.awz = ashr exact i64 %i.awy, 29              ; 2 uses
  %i.axa = getelementptr inbounds i8, ptr %i.avp, i64 %i.awz ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 32
  %wide.load = load <4 x double>, ptr %i.axa, align 8, !tbaa !310
  %wide.load335 = load <4 x double>, ptr %i.axb, align 8, !tbaa !310
  %i.axc = getelementptr inbounds i8, ptr %i.avt, i64 %i.awz ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  %wide.load336 = load <4 x double>, ptr %i.axc, align 8, !tbaa !310
  %wide.load337 = load <4 x double>, ptr %i.axd, align 8, !tbaa !310
  %i.axe = fsub <4 x double> %wide.load, %wide.load336
  %i.axf = fsub <4 x double> %wide.load335, %wide.load337
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.awx ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 32
  store <4 x double> %i.axe, ptr %i.axg, align 8, !tbaa !310
  store <4 x double> %i.axf, ptr %i.axh, align 8, !tbaa !310
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.axi = icmp eq i64 %index.next, %n.vec
  br i1 %i.axi, label %middle.block, label %vector.body, !llvm.loop !2052

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awv, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672: ; preds = %vector.memcheck, %vector.scevcheck, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.avo, %vector.memcheck ], [ %i.avo, %vector.scevcheck ], [ %i.avo, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aww, %middle.block ]
  br label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axq, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672 ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axj = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 29 ; 2 uses
  %i.axk = getelementptr inbounds i8, ptr %i.avp, i64 %i.axj
  %i.axl = load double, ptr %i.axk, align 8, !tbaa !310
  %i.axm = getelementptr inbounds i8, ptr %i.avt, i64 %i.axj
  %i.axn = load double, ptr %i.axm, align 8, !tbaa !310
  %i.axo = fsub double %i.axl, %i.axn
  %i.axp = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store double %i.axo, ptr %i.axp, align 8, !tbaa !310
  %i.axq = add nuw i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axr = icmp ult i64 %i.axq, %i.avn
  br i1 %i.axr, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2053

.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.axs = load i8, ptr %i.aur, align 1, !tbaa !356, !range !125, !noundef !126
  %i.axt = trunc nuw i8 %i.axs to i1
  br i1 %i.axt, label %iter.check, label %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.axu = load i32, ptr %i.aut, align 8, !tbaa !357
  %i.axv = sext i32 %i.axu to i64                 ; 2 uses
  %i.axw = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %i.axv ; 3 uses
  %i.axx = or disjoint i64 %i.avo, 1
  %umax354 = call i64 @llvm.umax.i64(i64 %i.axx, i64 %i.avn) ; 2 uses
  %i.axy = sub i64 %umax354, %i.avo               ; 3 uses
  %min.iters.check356 = icmp ult i64 %i.axy, 4
  br i1 %min.iters.check356, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck338

vector.scevcheck338:                              ; preds = %iter.check
  %i.axz = or disjoint i64 %i.avo, 1
  %umax339 = call i64 @llvm.umax.i64(i64 %i.axz, i64 %i.avn)
  %i.aya = xor i64 %i.avo, -1
  %i.ayb = add i64 %umax339, %i.aya               ; 2 uses
  %i.ayc = sext i32 %i.avl to i35                 ; 2 uses
  %i.ayd = shl nsw i35 %i.ayc, 3
  %i.aye = trunc i64 %i.ayb to i35
  %i.ayf = add i35 %i.ayc, %i.aye
  %i.ayg = shl i35 %i.ayf, 3
  %i.ayh = icmp slt i35 %i.ayg, %i.ayd
  %i.ayi = icmp ugt i64 %i.ayb, 4294967295
  %i.ayj = or i1 %i.ayh, %i.ayi
  br i1 %i.ayj, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %vector.scevcheck338
  %i.ayk = shl nsw i64 %i.avo, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayk ; 2 uses
  %i.ayl = or disjoint i64 %i.avo, 1
  %umax344 = call i64 @llvm.umax.i64(i64 %i.ayl, i64 %i.avn)
  %i.aym = shl nsw i64 %umax344, 3                ; 2 uses
  %scevgep345 = getelementptr i8, ptr %.sink.i.i, i64 %i.aym ; 2 uses
  %scevgep346 = getelementptr i8, ptr %i.avt, i64 8
  %i.ayn = shl nsw i64 %i.axv, 3
  %scevgep347 = getelementptr i8, ptr %scevgep346, i64 %i.ayn
  %i.ayo = sext i32 %i.avl to i35
  %i.ayp = shl nsw i35 %i.ayo, 3
  %i.ayq = sext i35 %i.ayp to i64                 ; 2 uses
  %scevgep348 = getelementptr i8, ptr %i.avp, i64 %i.ayq
  %i.ayr = add i64 %i.aym, %i.ayq
  %i.ays = sub i64 %i.ayr, %i.ayk
  %scevgep349 = getelementptr i8, ptr %i.avp, i64 %i.ays
  %bound0 = icmp ult ptr %scevgep, %scevgep347
  %bound1 = icmp ult ptr %i.axw, %scevgep345
  %found.conflict = and i1 %bound0, %bound1
  %bound0350 = icmp ult ptr %scevgep, %scevgep349
  %bound1351 = icmp ult ptr %scevgep348, %scevgep345
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %found.conflict, %found.conflict352
  br i1 %conflict.rdx353, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck343
  %min.iters.check357 = icmp ult i64 %i.axy, 16
  %i.ayt = and i64 %umax354, 1                    ; 3 uses
  %n.vec370 = sub i64 %i.axy, %i.ayt              ; 3 uses
  %i.ayu = add i64 %n.vec370, %i.avo              ; 2 uses
  %i.ayv = load double, ptr %i.axw, align 8, !tbaa !310, !alias.scope !2088
  %broadcast.splatinsert373 = insertelement <4 x double> poison, double %i.ayv, i64 0
  %broadcast.splat374 = shufflevector <4 x double> %broadcast.splatinsert373, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check357, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
  %index361 = phi i64 [ %index.next366, %vector.body360 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ayw = add nuw i64 %index361, %i.avo          ; 2 uses
  %i.ayx = shl i64 %i.ayw, 32
  %i.ayy = ashr exact i64 %i.ayx, 29
  %i.ayz = getelementptr inbounds i8, ptr %i.avp, i64 %i.ayy ; 4 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayz, i64 64
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 96
  %wide.load362 = load <4 x double>, ptr %i.ayz, align 8, !tbaa !310, !alias.scope !2089
  %wide.load363 = load <4 x double>, ptr %i.aza, align 8, !tbaa !310, !alias.scope !2089
  %wide.load364 = load <4 x double>, ptr %i.azb, align 8, !tbaa !310, !alias.scope !2089
  %wide.load365 = load <4 x double>, ptr %i.azc, align 8, !tbaa !310, !alias.scope !2089
  %i.azd = fsub <4 x double> %wide.load362, %broadcast.splat374
  %i.aze = fsub <4 x double> %wide.load363, %broadcast.splat374
  %i.azf = fsub <4 x double> %wide.load364, %broadcast.splat374
  %i.azg = fsub <4 x double> %wide.load365, %broadcast.splat374
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.ayw ; 4 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 32
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azh, i64 64
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azh, i64 96
  store <4 x double> %i.azd, ptr %i.azh, align 8, !tbaa !310, !alias.scope !2090, !noalias !2091
  store <4 x double> %i.aze, ptr %i.azi, align 8, !tbaa !310, !alias.scope !2090, !noalias !2091
  store <4 x double> %i.azf, ptr %i.azj, align 8, !tbaa !310, !alias.scope !2090, !noalias !2091
  store <4 x double> %i.azg, ptr %i.azk, align 8, !tbaa !310, !alias.scope !2090, !noalias !2091
  %index.next366 = add nuw i64 %index361, 16      ; 2 uses
  %i.azl = icmp eq i64 %index.next366, %n.vec370
  br i1 %i.azl, label %middle.block367, label %vector.body360, !llvm.loop !2058

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.ayt, 0
  br i1 %cmp.n368, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index371 = phi i64 [ %index.next375, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.azm = add nuw i64 %index371, %i.avo          ; 2 uses
  %i.azn = shl i64 %i.azm, 32
  %i.azo = ashr exact i64 %i.azn, 29
  %i.azp = getelementptr inbounds i8, ptr %i.avp, i64 %i.azo
  %wide.load372 = load <4 x double>, ptr %i.azp, align 8, !tbaa !310, !alias.scope !2089
  %i.azq = fsub <4 x double> %wide.load372, %broadcast.splat374
  %i.azr = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.azm
  store <4 x double> %i.azq, ptr %i.azr, align 8, !tbaa !310, !alias.scope !2090, !noalias !2091
  %index.next375 = add nuw i64 %index371, 4       ; 2 uses
  %i.azs = icmp eq i64 %index.next375, %n.vec370
  br i1 %i.azs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2059

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n376 = icmp eq i64 %i.ayt, 0
  br i1 %cmp.n376, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader

.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block367, %iter.check, %vector.scevcheck338, %vector.memcheck343, %vec.epilog.middle.block
  %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ayu, %middle.block367 ], [ %i.avo, %vector.scevcheck338 ], [ %i.avo, %vector.memcheck343 ], [ %i.avo, %iter.check ], [ %i.ayu, %vec.epilog.middle.block ]
  br label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azz, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i ], [ %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i.ph, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext68.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.azt = ashr exact i64 %sext68.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azu = getelementptr inbounds i8, ptr %i.avp, i64 %i.azt
  %i.azv = load double, ptr %i.azu, align 8, !tbaa !310
  %i.azw = load double, ptr %i.axw, align 8, !tbaa !310
  %i.azx = fsub double %i.azv, %i.azw
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i
  store double %i.azx, ptr %i.azy, align 8, !tbaa !310
  %i.azz = add nuw i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.baa = icmp ult i64 %i.azz, %i.avn
  br i1 %i.baa, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2060

.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bab = load ptr, ptr %i.aus, align 8, !tbaa !358
  br label %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avo, %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ban, %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.bac = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.bad = getelementptr inbounds i8, ptr %i.avp, i64 %i.bac
  %i.bae = load double, ptr %i.bad, align 8, !tbaa !310
  %i.baf = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bag = getelementptr inbounds i8, ptr %i.bab, i64 %i.baf
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !55
  %i.bai = sext i32 %i.bah to i64
  %i.baj = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %i.bai
  %i.bak = load double, ptr %i.baj, align 8, !tbaa !310
  %i.bal = fsub double %i.bae, %i.bak
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i
  store double %i.bal, ptr %i.bam, align 8, !tbaa !310
  %i.ban = add nuw i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bao = icmp ult i64 %i.ban, %i.avn
  br i1 %i.bao, label %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2061

.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bap = load i8, ptr %i.auy, align 1, !tbaa !356, !range !125, !noundef !126
  %i.baq = trunc nuw i8 %i.bap to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avo, %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbk, %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bar = trunc i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.baq, label %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bas = load ptr, ptr %i.auw, align 8, !tbaa !358
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bat = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bau = getelementptr inbounds i8, ptr %i.bas, i64 %i.bat
  br label %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i47.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bau, %bb.eb ], [ %i.aux, %bb.ea ]
  %.0.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i47.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55
  %i.bav = sext i32 %.0.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.baw = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bav
  %i.bax = load double, ptr %i.baw, align 8, !tbaa !310
  br i1 %i.avw, label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bay = load i8, ptr %i.aur, align 1, !tbaa !356, !range !125, !noundef !126
  %i.baz = trunc nuw i8 %i.bay to i1
  br i1 %i.baz, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.bba = load i32, ptr %i.aut, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bbb = load ptr, ptr %i.aus, align 8, !tbaa !358
  %sext.i33.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bbc = ashr exact i64 %sext.i33.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bbd = getelementptr inbounds i8, ptr %i.bbb, i64 %i.bbc
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbe, %bb.ee ], [ %i.bba, %bb.ed ], [ %i.bar, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbf = sext i32 %.0.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbg = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %i.bbf
  %i.bbh = load double, ptr %i.bbg, align 8, !tbaa !310
  %i.bbi = fsub double %i.bax, %i.bbh
  %i.bbj = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i
  store double %i.bbi, ptr %i.bbj, align 8, !tbaa !310
  %i.bbk = add nuw i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbl = icmp ult i64 %i.bbk, %i.avn
  br i1 %i.bbl, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2061

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i
  %.01590.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avd, %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i ], [ %i.bcn, %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01590.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbn = trunc nuw nsw i64 %i.bbm to i32
  %i.bbo = or disjoint i32 %i.ave, %i.bbn         ; 3 uses
  %i.bbp = sext i32 %i.bbo to i64                 ; 3 uses
  br i1 %i.avh, label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bbq = load i8, ptr %i.auy, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bbs = load i32, ptr %i.aux, align 8, !tbaa !357
  br label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bbt = load ptr, ptr %i.auw, align 8, !tbaa !358
  %i.bbu = shl nsw i64 %i.bbp, 2
  %i.bbv = getelementptr inbounds i8, ptr %i.bbt, i64 %i.bbu
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !55
  br label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i

.noexc18.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbw, %bb.ei ], [ %i.bbs, %bb.eh ], [ %i.bbo, %bb.ef ]
  %i.bbx = sext i32 %.0.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bby = getelementptr inbounds [8 x i8], ptr %i.avf, i64 %i.bbx
  %i.bbz = load double, ptr %i.bby, align 8, !tbaa !310
  br i1 %i.avk, label %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bca = load i8, ptr %i.aur, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bcb = trunc nuw i8 %i.bca to i1
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.arv = load i32, ptr %i.arg, align 8, !tbaa !357, !noalias !2321
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.arw = load ptr, ptr %i.arf, align 8, !tbaa !358, !noalias !2321
  %i.arx = shl nsw i64 %i.ars, 2
  %i.ary = getelementptr inbounds i8, ptr %i.arw, i64 %i.arx
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !55, !noalias !2321
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.arz, %bb.dm ], [ %i.arv, %bb.dl ], [ %i.arr, %bb.dj ]
  %i.asa = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.asa
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !418, !noalias !2321
  br i1 %i.arl, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.asd = load i8, ptr %i.arm, align 1, !tbaa !356, !range !125, !noalias !2322, !noundef !126
  %i.ase = trunc nuw i8 %i.asd to i1
  br i1 %i.ase, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.asf = load i32, ptr %i.aro, align 8, !tbaa !357, !noalias !2322
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.asg = load ptr, ptr %i.arn, align 8, !tbaa !358, !noalias !2322
  %i.ash = shl nsw i64 %i.ars, 2
  %i.asi = getelementptr inbounds i8, ptr %i.asg, i64 %i.ash
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !55, !noalias !2322
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.asj, %bb.dp ], [ %i.asf, %bb.do ], [ %i.arr, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ask = sext i32 %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.asl = getelementptr inbounds [4 x i8], ptr %i.ari, i64 %i.ask
  %i.asm = load float, ptr %i.asl, align 4, !tbaa !418, !noalias !2322
  %i.asn = fsub float %i.asc, %i.asm
  %i.aso = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.ars
  store float %i.asn, ptr %i.aso, align 4, !tbaa !418
  %i.asp = add nsw i64 %.034.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asq = and i64 %i.asp, %.034.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %i.asq, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i69, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.dj, !llvm.loop !2265

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.aqc, %i.aqh
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.asr = sdiv i32 %i.aqc, 64                    ; 2 uses
  %i.ass = sub nsw i32 %i.aqh, %i.aqc             ; 2 uses
  %i.ast = zext nneg i32 %i.ass to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.ast
  %i.asu = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.asv = sub nsw i32 64, %i.ass
  %i.asw = zext nneg i32 %i.asv to i64
  %i.asx = shl i64 %i.asu, %i.asw
  %i.asy = sext i32 %i.asr to i64
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.aqa, i64 %i.asy
  %i.ata = load i64, ptr %i.asz, align 8, !tbaa !108
  %i.atb = and i64 %i.ata, %i.asx                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.atb, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.atc = shl nsw i32 %i.asr, 6
  %i.atd = getelementptr inbounds nuw i8, ptr %i.aln, i64 16
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !354, !noalias !2323
  %i.atf = getelementptr inbounds nuw i8, ptr %i.aln, i64 58
  %i.atg = load i8, ptr %i.atf, align 2, !tbaa !355, !range !125, !noalias !2323, !noundef !126
  %i.ath = trunc nuw i8 %i.atg to i1
  %i.ati = getelementptr inbounds nuw i8, ptr %i.aln, i64 59
  %i.atj = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  %i.atk = getelementptr inbounds nuw i8, ptr %i.aln, i64 64
  %i.atl = getelementptr inbounds nuw i8, ptr %i.and, i64 16
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !354, !noalias !2324
  %i.atn = getelementptr inbounds nuw i8, ptr %i.and, i64 58
  %i.ato = load i8, ptr %i.atn, align 2, !tbaa !355, !range !125, !noalias !2324, !noundef !126
  %i.atp = trunc nuw i8 %i.ato to i1
  %i.atq = getelementptr inbounds nuw i8, ptr %i.and, i64 59
  %i.atr = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %i.ats = getelementptr inbounds nuw i8, ptr %i.and, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.034.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.atb, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.auu, %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.att = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atu = trunc nuw nsw i64 %i.att to i32
  %i.atv = or disjoint i32 %i.atc, %i.atu         ; 3 uses
  %i.atw = sext i32 %i.atv to i64                 ; 3 uses
  br i1 %i.ath, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.atx = load i8, ptr %i.ati, align 1, !tbaa !356, !range !125, !noalias !2323, !noundef !126
  %i.aty = trunc nuw i8 %i.atx to i1
  br i1 %i.aty, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.atz = load i32, ptr %i.atk, align 8, !tbaa !357, !noalias !2323
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.aua = load ptr, ptr %i.atj, align 8, !tbaa !358, !noalias !2323
  %i.aub = shl nsw i64 %i.atw, 2
  %i.auc = getelementptr inbounds i8, ptr %i.aua, i64 %i.aub
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !55, !noalias !2323
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aud, %bb.dv ], [ %i.atz, %bb.du ], [ %i.atv, %bb.ds ]
  %i.aue = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.auf = getelementptr inbounds [4 x i8], ptr %i.ate, i64 %i.aue
  %i.aug = load float, ptr %i.auf, align 4, !tbaa !418, !noalias !2323
  br i1 %i.atp, label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.auh = load i8, ptr %i.atq, align 1, !tbaa !356, !range !125, !noalias !2324, !noundef !126
  %i.aui = trunc nuw i8 %i.auh to i1
  br i1 %i.aui, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.auj = load i32, ptr %i.ats, align 8, !tbaa !357, !noalias !2324
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.auk = load ptr, ptr %i.atr, align 8, !tbaa !358, !noalias !2324
  %i.aul = shl nsw i64 %i.atw, 2
  %i.aum = getelementptr inbounds i8, ptr %i.auk, i64 %i.aul
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !55, !noalias !2324
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aun, %bb.dy ], [ %i.auj, %bb.dx ], [ %i.atv, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.auo = sext i32 %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aup = getelementptr inbounds [4 x i8], ptr %i.atm, i64 %i.auo
  %i.auq = load float, ptr %i.aup, align 4, !tbaa !418, !noalias !2324
  %i.aur = fsub float %i.aug, %i.auq
  %i.aus = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.atw
  store float %i.aur, ptr %i.aus, align 4, !tbaa !418
  %i.aut = add i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.auu = and i64 %i.aut, %.034.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.auu, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !2265

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.auv = add nsw i32 %i.aqh, 64                 ; 2 uses
  %.not3367.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.auv, %i.aqi
  br i1 %.not3367.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.auw = getelementptr inbounds nuw i8, ptr %i.and, i64 16 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.and, i64 58 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.and, i64 59 ; 3 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.and, i64 8 ; 3 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.and, i64 64 ; 3 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aln, i64 16 ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %i.aln, i64 58 ; 2 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aln, i64 8 ; 2 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.aln, i64 64 ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.aln, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.aqe, %i.aqi
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.avg = phi i32 [ %i.bdb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auv, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.avg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aqh, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.avh = sdiv i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.avi = sext i32 %i.avh to i64
  %i.avj = getelementptr inbounds [8 x i8], ptr %i.aqa, i64 %i.avi
  %i.avk = load i64, ptr %i.avj, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.avk, label %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avl = shl nsw i32 %i.avh, 6
  %i.avm = load ptr, ptr %i.avb, align 8, !tbaa !354, !noalias !2325
  %i.avn = load i8, ptr %i.avc, align 2, !tbaa !355, !range !125, !noalias !2325, !noundef !126
  %i.avo = trunc nuw i8 %i.avn to i1
  %i.avp = load ptr, ptr %i.auw, align 8, !tbaa !354, !noalias !2326
  %i.avq = load i8, ptr %i.aux, align 2, !tbaa !355, !range !125, !noalias !2326, !noundef !126
  %i.avr = trunc nuw i8 %i.avq to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avs = shl nsw i32 %i.avh, 6                  ; 6 uses
  %i.avt = add i32 %i.avs, 64
  %i.avu = sext i32 %i.avt to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i65 = add i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not89.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i65, 64
  br i1 %.not89.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avv = sext i32 %i.avs to i64                 ; 25 uses
  %i.avw = load ptr, ptr %i.avb, align 8, !tbaa !354, !noalias !2327 ; 11 uses
  %i.avx = ptrtoaddr ptr %i.avw to i64
  %i.avy = load i8, ptr %i.avc, align 2, !tbaa !355, !range !125, !noalias !2327, !noundef !126
  %i.avz = trunc nuw i8 %i.avy to i1
  %i.awa = load ptr, ptr %i.auw, align 8, !tbaa !354, !noalias !2328 ; 8 uses
  %i.awb = ptrtoaddr ptr %i.awa to i64
  %i.awc = load i8, ptr %i.aux, align 2, !tbaa !355, !range !125, !noalias !2328, !noundef !126
  %i.awd = trunc nuw i8 %i.awc to i1              ; 2 uses
  br i1 %i.avz, label %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.awd, label %iter.check, label %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.awe = or disjoint i64 %i.avv, 1
  %umax332 = call i64 @llvm.umax.i64(i64 %i.awe, i64 %i.avu) ; 2 uses
  %i.awf = sub i64 %umax332, %i.avv               ; 3 uses
  %min.iters.check = icmp ult i64 %i.awf, 4
  br i1 %min.iters.check, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.awg = or disjoint i64 %i.avv, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.awg, i64 %i.avu)
  %i.awh = xor i64 %i.avv, -1
  %i.awi = add i64 %umax, %i.awh                  ; 2 uses
  %i.awj = sext i32 %i.avs to i34                 ; 2 uses
  %i.awk = shl nsw i34 %i.awj, 2
  %i.awl = trunc i64 %i.awi to i34
  %i.awm = add i34 %i.awj, %i.awl
  %i.awn = shl i34 %i.awm, 2
  %i.awo = icmp slt i34 %i.awn, %i.awk
  %i.awp = icmp ugt i64 %i.awi, 4294967295
  %i.awq = or i1 %i.awo, %i.awp
  br i1 %i.awq, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awr = shl nsw i64 %i.avv, 2                  ; 2 uses
  %i.aws = add i64 %i.awr, %.sink.i.i330
  %i.awt = sext i32 %i.avs to i34
  %i.awu = shl nsw i34 %i.awt, 2
  %i.awv = sext i34 %i.awu to i64                 ; 2 uses
  %i.aww = add i64 %i.avx, %i.awv
  %i.awx = sub i64 %i.aww, %i.aws
  %diff.check = icmp ugt i64 %i.awx, -64
  %i.awy = add i64 %i.awr, %.sink.i.i330
  %i.awz = add i64 %i.awb, %i.awv
  %i.axa = sub i64 %i.awz, %i.awy
  %diff.check331 = icmp ugt i64 %i.axa, -64
  %conflict.rdx = or i1 %diff.check, %diff.check331
  br i1 %conflict.rdx, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check333 = icmp ult i64 %i.awf, 16
  %i.axb = and i64 %umax332, 1                    ; 3 uses
  %n.vec337 = sub i64 %i.awf, %i.axb              ; 3 uses
  %i.axc = add i64 %n.vec337, %i.avv              ; 2 uses
  br i1 %min.iters.check333, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.axd = add nuw i64 %index, %i.avv             ; 2 uses
  %i.axe = shl i64 %i.axd, 32
  %i.axf = ashr exact i64 %i.axe, 30              ; 2 uses
  %i.axg = getelementptr inbounds i8, ptr %i.avw, i64 %i.axf ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 32
  %wide.load = load <8 x float>, ptr %i.axg, align 4, !tbaa !418, !noalias !2327
  %wide.load334 = load <8 x float>, ptr %i.axh, align 4, !tbaa !418, !noalias !2327
  %i.axi = getelementptr inbounds i8, ptr %i.awa, i64 %i.axf ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 32
  %wide.load335 = load <8 x float>, ptr %i.axi, align 4, !tbaa !418, !noalias !2328
  %wide.load336 = load <8 x float>, ptr %i.axj, align 4, !tbaa !418, !noalias !2328
  %i.axk = fsub <8 x float> %wide.load, %wide.load335
  %i.axl = fsub <8 x float> %wide.load334, %wide.load336
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.axd ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 32
  store <8 x float> %i.axk, ptr %i.axm, align 4, !tbaa !418
  store <8 x float> %i.axl, ptr %i.axn, align 4, !tbaa !418
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.axo = icmp eq i64 %index.next, %n.vec337
  br i1 %i.axo, label %middle.block, label %vector.body, !llvm.loop !2278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.axb, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index338 = phi i64 [ %index.next341, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.axp = add nuw i64 %index338, %i.avv          ; 2 uses
  %i.axq = shl i64 %i.axp, 32
  %i.axr = ashr exact i64 %i.axq, 30              ; 2 uses
  %i.axs = getelementptr inbounds i8, ptr %i.avw, i64 %i.axr
  %wide.load339 = load <4 x float>, ptr %i.axs, align 4, !tbaa !418, !noalias !2327
  %i.axt = getelementptr inbounds i8, ptr %i.awa, i64 %i.axr
  %wide.load340 = load <4 x float>, ptr %i.axt, align 4, !tbaa !418, !noalias !2328
  %i.axu = fsub <4 x float> %wide.load339, %wide.load340
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.axp
  store <4 x float> %i.axu, ptr %i.axv, align 4, !tbaa !418
  %index.next341 = add nuw i64 %index338, 4       ; 2 uses
  %i.axw = icmp eq i64 %index.next341, %n.vec337
  br i1 %i.axw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2279

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n342 = icmp eq i64 %i.axb, 0
  br i1 %cmp.n342, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block, %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.axc, %middle.block ], [ %i.avv, %vector.scevcheck ], [ %i.avv, %vector.memcheck ], [ %i.avv, %iter.check ], [ %i.axc, %vec.epilog.middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aye, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext70.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axx = ashr exact i64 %sext70.i.i.i.i.i.i.i.i.i.i.i, 30 ; 2 uses
  %i.axy = getelementptr inbounds i8, ptr %i.avw, i64 %i.axx
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !418, !noalias !2327
  %i.aya = getelementptr inbounds i8, ptr %i.awa, i64 %i.axx
  %i.ayb = load float, ptr %i.aya, align 4, !tbaa !418, !noalias !2328
  %i.ayc = fsub float %i.axz, %i.ayb
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store float %i.ayc, ptr %i.ayd, align 4, !tbaa !418
  %i.aye = add nuw i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ayf = icmp ult i64 %i.aye, %i.avu
  br i1 %i.ayf, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2280

.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.ayg = load i8, ptr %i.auy, align 1, !tbaa !356, !range !125, !noalias !2328, !noundef !126
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %iter.check376, label %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check376:                                    ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.ayi = load i32, ptr %i.ava, align 8, !tbaa !357, !noalias !2328
  %i.ayj = sext i32 %i.ayi to i64                 ; 2 uses
  %i.ayk = getelementptr inbounds [4 x i8], ptr %i.awa, i64 %i.ayj ; 3 uses
  %i.ayl = or disjoint i64 %i.avv, 1
  %umax360 = call i64 @llvm.umax.i64(i64 %i.ayl, i64 %i.avu) ; 2 uses
  %i.aym = sub i64 %umax360, %i.avv               ; 3 uses
  %min.iters.check361 = icmp ult i64 %i.aym, 4
  br i1 %min.iters.check361, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck344

vector.scevcheck344:                              ; preds = %iter.check376
  %i.ayn = or disjoint i64 %i.avv, 1
  %umax345 = call i64 @llvm.umax.i64(i64 %i.ayn, i64 %i.avu)
  %i.ayo = xor i64 %i.avv, -1
  %i.ayp = add i64 %umax345, %i.ayo               ; 2 uses
  %i.ayq = sext i32 %i.avs to i34                 ; 2 uses
  %i.ayr = shl nsw i34 %i.ayq, 2
  %i.ays = trunc i64 %i.ayp to i34
  %i.ayt = add i34 %i.ayq, %i.ays
  %i.ayu = shl i34 %i.ayt, 2
  %i.ayv = icmp slt i34 %i.ayu, %i.ayr
  %i.ayw = icmp ugt i64 %i.ayp, 4294967295
  %i.ayx = or i1 %i.ayv, %i.ayw
  br i1 %i.ayx, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck349

vector.memcheck349:                               ; preds = %vector.scevcheck344
  %i.ayy = shl nsw i64 %i.avv, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayy ; 2 uses
  %i.ayz = or disjoint i64 %i.avv, 1
  %umax350 = call i64 @llvm.umax.i64(i64 %i.ayz, i64 %i.avu)
  %i.aza = shl nsw i64 %umax350, 2                ; 2 uses
  %scevgep351 = getelementptr i8, ptr %.sink.i.i, i64 %i.aza ; 2 uses
  %scevgep352 = getelementptr i8, ptr %i.awa, i64 4
  %i.azb = shl nsw i64 %i.ayj, 2
  %scevgep353 = getelementptr i8, ptr %scevgep352, i64 %i.azb
  %i.azc = sext i32 %i.avs to i34
  %i.azd = shl nsw i34 %i.azc, 2
  %i.aze = sext i34 %i.azd to i64                 ; 2 uses
  %scevgep354 = getelementptr i8, ptr %i.avw, i64 %i.aze
  %i.azf = add i64 %i.aza, %i.aze
  %i.azg = sub i64 %i.azf, %i.ayy
  %scevgep355 = getelementptr i8, ptr %i.avw, i64 %i.azg
  %bound0 = icmp ult ptr %scevgep, %scevgep353
  %bound1 = icmp ult ptr %i.ayk, %scevgep351
  %found.conflict = and i1 %bound0, %bound1
  %bound0356 = icmp ult ptr %scevgep, %scevgep355
  %bound1357 = icmp ult ptr %scevgep354, %scevgep351
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx359 = or i1 %found.conflict, %found.conflict358
  br i1 %conflict.rdx359, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check362

vector.main.loop.iter.check362:                   ; preds = %vector.memcheck349
  %min.iters.check363 = icmp ult i64 %i.aym, 32
  %i.azh = and i64 %umax360, 1                    ; 3 uses
  %n.vec381 = sub i64 %i.aym, %i.azh              ; 3 uses
  %i.azi = add i64 %n.vec381, %i.avv              ; 2 uses
  %i.azj = load float, ptr %i.ayk, align 4, !tbaa !418, !alias.scope !2329, !noalias !2328 ; 2 uses
  br i1 %min.iters.check363, label %vec.epilog.ph380, label %vector.ph364

vector.ph364:                                     ; preds = %vector.main.loop.iter.check362
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.azj, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.ph364, %vector.body366
  %index367 = phi i64 [ 0, %vector.ph364 ], [ %index.next372, %vector.body366 ] ; 2 uses
  %i.azk = add nuw i64 %index367, %i.avv          ; 2 uses
  %i.azl = shl i64 %i.azk, 32
  %i.azm = ashr exact i64 %i.azl, 30
  %i.azn = getelementptr inbounds i8, ptr %i.avw, i64 %i.azm ; 4 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 32
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azn, i64 64
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azn, i64 96
  %wide.load368 = load <8 x float>, ptr %i.azn, align 4, !tbaa !418, !alias.scope !2330, !noalias !2327
  %wide.load369 = load <8 x float>, ptr %i.azo, align 4, !tbaa !418, !alias.scope !2330, !noalias !2327
  %wide.load370 = load <8 x float>, ptr %i.azp, align 4, !tbaa !418, !alias.scope !2330, !noalias !2327
  %wide.load371 = load <8 x float>, ptr %i.azq, align 4, !tbaa !418, !alias.scope !2330, !noalias !2327
  %i.azr = fsub <8 x float> %wide.load368, %broadcast.splat
  %i.azs = fsub <8 x float> %wide.load369, %broadcast.splat
  %i.azt = fsub <8 x float> %wide.load370, %broadcast.splat
  %i.azu = fsub <8 x float> %wide.load371, %broadcast.splat
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.azk ; 4 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 32
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azv, i64 64
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azv, i64 96
  store <8 x float> %i.azr, ptr %i.azv, align 4, !tbaa !418, !alias.scope !2331, !noalias !2332
  store <8 x float> %i.azs, ptr %i.azw, align 4, !tbaa !418, !alias.scope !2331, !noalias !2332
  store <8 x float> %i.azt, ptr %i.azx, align 4, !tbaa !418, !alias.scope !2331, !noalias !2332
  store <8 x float> %i.azu, ptr %i.azy, align 4, !tbaa !418, !alias.scope !2331, !noalias !2332
  %index.next372 = add nuw i64 %index367, 32      ; 2 uses
  %i.azz = icmp eq i64 %index.next372, %n.vec381
  br i1 %i.azz, label %middle.block373, label %vector.body366, !llvm.loop !2285

middle.block373:                                  ; preds = %vector.body366
  %cmp.n374 = icmp eq i64 %i.azh, 0
  br i1 %cmp.n374, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph380:                                 ; preds = %vector.main.loop.iter.check362
  %broadcast.splatinsert385 = insertelement <4 x float> poison, float %i.azj, i64 0
  %broadcast.splat386 = shufflevector <4 x float> %broadcast.splatinsert385, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body382

vec.epilog.vector.body382:                        ; preds = %vec.epilog.vector.body382, %vec.epilog.ph380
  %index383 = phi i64 [ 0, %vec.epilog.ph380 ], [ %index.next387, %vec.epilog.vector.body382 ] ; 2 uses
  %i.baa = add nuw i64 %index383, %i.avv          ; 2 uses
  %i.bab = shl i64 %i.baa, 32
  %i.bac = ashr exact i64 %i.bab, 30
  %i.bad = getelementptr inbounds i8, ptr %i.avw, i64 %i.bac
  %wide.load384 = load <4 x float>, ptr %i.bad, align 4, !tbaa !418, !alias.scope !2330, !noalias !2327
  %i.bae = fsub <4 x float> %wide.load384, %broadcast.splat386
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.baa
  store <4 x float> %i.bae, ptr %i.baf, align 4, !tbaa !418, !alias.scope !2331, !noalias !2332
  %index.next387 = add nuw i64 %index383, 4       ; 2 uses
  %i.bag = icmp eq i64 %index.next387, %n.vec381
  br i1 %i.bag, label %vec.epilog.middle.block388, label %vec.epilog.vector.body382, !llvm.loop !2286

vec.epilog.middle.block388:                       ; preds = %vec.epilog.vector.body382
  %cmp.n389 = icmp eq i64 %i.azh, 0
  br i1 %cmp.n389, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block373, %iter.check376, %vector.scevcheck344, %vector.memcheck349, %vec.epilog.middle.block388
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.azi, %middle.block373 ], [ %i.avv, %vector.scevcheck344 ], [ %i.avv, %vector.memcheck349 ], [ %i.avv, %iter.check376 ], [ %i.azi, %vec.epilog.middle.block388 ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ban, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bah = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bai = getelementptr inbounds i8, ptr %i.avw, i64 %i.bah
  %i.baj = load float, ptr %i.bai, align 4, !tbaa !418, !noalias !2327
  %i.bak = load float, ptr %i.ayk, align 4, !tbaa !418, !noalias !2328
  %i.bal = fsub float %i.baj, %i.bak
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i
  store float %i.bal, ptr %i.bam, align 4, !tbaa !418
  %i.ban = add nuw i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bao = icmp ult i64 %i.ban, %i.avu
  br i1 %i.bao, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2287

.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bap = load ptr, ptr %i.auz, align 8, !tbaa !358, !noalias !2328
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avv, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bba, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.baq = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30 ; 2 uses
  %i.bar = getelementptr inbounds i8, ptr %i.avw, i64 %i.baq
  %i.bas = load float, ptr %i.bar, align 4, !tbaa !418, !noalias !2327
  %i.bat = getelementptr inbounds i8, ptr %i.bap, i64 %i.baq
  %i.bau = load i32, ptr %i.bat, align 4, !tbaa !55, !noalias !2328
  %i.bav = sext i32 %i.bau to i64
  %i.baw = getelementptr inbounds [4 x i8], ptr %i.awa, i64 %i.bav
  %i.bax = load float, ptr %i.baw, align 4, !tbaa !418, !noalias !2328
  %i.bay = fsub float %i.bas, %i.bax
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i
  store float %i.bay, ptr %i.baz, align 4, !tbaa !418
  %i.bba = add nuw i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbb = icmp ult i64 %i.bba, %i.avu
  br i1 %i.bbb, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2288

.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbc = load i8, ptr %i.avf, align 1, !tbaa !356, !range !125, !noalias !2327, !noundef !126
  %i.bbd = trunc nuw i8 %i.bbc to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avv, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbx, %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bbe = trunc i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.bbd, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bbf = load ptr, ptr %i.avd, align 8, !tbaa !358, !noalias !2327
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bbg = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bbh = getelementptr inbounds i8, ptr %i.bbf, i64 %i.bbg
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bbh, %bb.eb ], [ %i.ave, %bb.ea ]
  %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55, !noalias !2327
  %i.bbi = sext i32 %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbj = getelementptr inbounds [4 x i8], ptr %i.avw, i64 %i.bbi
  %i.bbk = load float, ptr %i.bbj, align 4, !tbaa !418, !noalias !2327
  br i1 %i.awd, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %i.bbl = load i8, ptr %i.auy, align 1, !tbaa !356, !range !125, !noalias !2328, !noundef !126
  %i.bbm = trunc nuw i8 %i.bbl to i1
  br i1 %i.bbm, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.bbn = load i32, ptr %i.ava, align 8, !tbaa !357, !noalias !2328
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bbo = load ptr, ptr %i.auz, align 8, !tbaa !358, !noalias !2328
  %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bbp = ashr exact i64 %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bbq = getelementptr inbounds i8, ptr %i.bbo, i64 %i.bbp
  %i.bbr = load i32, ptr %i.bbq, align 4, !tbaa !55, !noalias !2328
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbr, %bb.ee ], [ %i.bbn, %bb.ed ], [ %i.bbe, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbs = sext i32 %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbt = getelementptr inbounds [4 x i8], ptr %i.awa, i64 %i.bbs
  %i.bbu = load float, ptr %i.bbt, align 4, !tbaa !418, !noalias !2328
  %i.bbv = fsub float %i.bbk, %i.bbu
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i
  store float %i.bbv, ptr %i.bbw, align 4, !tbaa !418
  %i.bbx = add nuw i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bby = icmp ult i64 %i.bbx, %i.avu
  br i1 %i.bby, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2288

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i
  %.01586.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i ], [ %i.bda, %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01586.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bca = trunc nuw nsw i64 %i.bbz to i32
  %i.bcb = or disjoint i32 %i.avl, %i.bca         ; 3 uses
  %i.bcc = sext i32 %i.bcb to i64                 ; 3 uses
  br i1 %i.avo, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bcd = load i8, ptr %i.avf, align 1, !tbaa !356, !range !125, !noalias !2325, !noundef !126
  %i.bce = trunc nuw i8 %i.bcd to i1
  br i1 %i.bce, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bcf = load i32, ptr %i.ave, align 8, !tbaa !357, !noalias !2325
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bcg = load ptr, ptr %i.avd, align 8, !tbaa !358, !noalias !2325
  %i.bch = shl nsw i64 %i.bcc, 2
  %i.bci = getelementptr inbounds i8, ptr %i.bcg, i64 %i.bch
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !55, !noalias !2325
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bcj, %bb.ei ], [ %i.bcf, %bb.eh ], [ %i.bcb, %bb.ef ]
  %i.bck = sext i32 %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i to i64
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.aro = load i32, ptr %i.aqz, align 8, !tbaa !357, !noalias !2562
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.arp = load ptr, ptr %i.aqy, align 8, !tbaa !358, !noalias !2562
  %i.arq = shl nsw i64 %i.arl, 2
  %i.arr = getelementptr inbounds i8, ptr %i.arp, i64 %i.arq
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !55, !noalias !2562
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ars, %bb.dm ], [ %i.aro, %bb.dl ], [ %i.ark, %bb.dj ]
  %i.art = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.aqt, i64 %i.art
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !108, !noalias !2562
  br i1 %i.are, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.arw = load i8, ptr %i.arf, align 1, !tbaa !356, !range !125, !noalias !2563, !noundef !126
  %i.arx = trunc nuw i8 %i.arw to i1
  br i1 %i.arx, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ary = load i32, ptr %i.arh, align 8, !tbaa !357, !noalias !2563
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.arz = load ptr, ptr %i.arg, align 8, !tbaa !358, !noalias !2563
  %i.asa = shl nsw i64 %i.arl, 2
  %i.asb = getelementptr inbounds i8, ptr %i.arz, i64 %i.asa
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !55, !noalias !2563
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.asc, %bb.dp ], [ %i.ary, %bb.do ], [ %i.ark, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.asd = sext i32 %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ase = getelementptr inbounds [8 x i8], ptr %i.arb, i64 %i.asd
  %i.asf = load i64, ptr %i.ase, align 8, !tbaa !108, !noalias !2563
  %i.asg = sub nsw i64 %i.arv, %i.asf
  %i.ash = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.arl
  store i64 %i.asg, ptr %i.ash, align 8, !tbaa !108
  %i.asi = add nsw i64 %.035.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asj = and i64 %i.asi, %.035.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %i.asj, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i69, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.dj, !llvm.loop !2507

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.apv, %i.aqa
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ask = sdiv i32 %i.apv, 64                    ; 2 uses
  %i.asl = sub nsw i32 %i.aqa, %i.apv             ; 2 uses
  %i.asm = zext nneg i32 %i.asl to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.asm
  %i.asn = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.aso = sub nsw i32 64, %i.asl
  %i.asp = zext nneg i32 %i.aso to i64
  %i.asq = shl i64 %i.asn, %i.asp
  %i.asr = sext i32 %i.ask to i64
  %i.ass = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %i.asr
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !108
  %i.asu = and i64 %i.ast, %i.asq                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.asu, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.asv = shl nsw i32 %i.ask, 6
  %i.asw = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !354, !noalias !2564
  %i.asy = getelementptr inbounds nuw i8, ptr %i.alg, i64 58
  %i.asz = load i8, ptr %i.asy, align 2, !tbaa !355, !range !125, !noalias !2564, !noundef !126
  %i.ata = trunc nuw i8 %i.asz to i1
  %i.atb = getelementptr inbounds nuw i8, ptr %i.alg, i64 59
  %i.atc = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.atd = getelementptr inbounds nuw i8, ptr %i.alg, i64 64
  %i.ate = getelementptr inbounds nuw i8, ptr %i.amw, i64 16
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !354, !noalias !2565
  %i.atg = getelementptr inbounds nuw i8, ptr %i.amw, i64 58
  %i.ath = load i8, ptr %i.atg, align 2, !tbaa !355, !range !125, !noalias !2565, !noundef !126
  %i.ati = trunc nuw i8 %i.ath to i1
  %i.atj = getelementptr inbounds nuw i8, ptr %i.amw, i64 59
  %i.atk = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.amw, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.035.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asu, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.aun, %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.atm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atn = trunc nuw nsw i64 %i.atm to i32
  %i.ato = or disjoint i32 %i.asv, %i.atn         ; 3 uses
  %i.atp = sext i32 %i.ato to i64                 ; 3 uses
  br i1 %i.ata, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.atq = load i8, ptr %i.atb, align 1, !tbaa !356, !range !125, !noalias !2564, !noundef !126
  %i.atr = trunc nuw i8 %i.atq to i1
  br i1 %i.atr, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ats = load i32, ptr %i.atd, align 8, !tbaa !357, !noalias !2564
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.att = load ptr, ptr %i.atc, align 8, !tbaa !358, !noalias !2564
  %i.atu = shl nsw i64 %i.atp, 2
  %i.atv = getelementptr inbounds i8, ptr %i.att, i64 %i.atu
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !55, !noalias !2564
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.atw, %bb.dv ], [ %i.ats, %bb.du ], [ %i.ato, %bb.ds ]
  %i.atx = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aty = getelementptr inbounds [8 x i8], ptr %i.asx, i64 %i.atx
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !108, !noalias !2564
  br i1 %i.ati, label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.aua = load i8, ptr %i.atj, align 1, !tbaa !356, !range !125, !noalias !2565, !noundef !126
  %i.aub = trunc nuw i8 %i.aua to i1
  br i1 %i.aub, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.auc = load i32, ptr %i.atl, align 8, !tbaa !357, !noalias !2565
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.aud = load ptr, ptr %i.atk, align 8, !tbaa !358, !noalias !2565
  %i.aue = shl nsw i64 %i.atp, 2
  %i.auf = getelementptr inbounds i8, ptr %i.aud, i64 %i.aue
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !55, !noalias !2565
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aug, %bb.dy ], [ %i.auc, %bb.dx ], [ %i.ato, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.auh = sext i32 %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aui = getelementptr inbounds [8 x i8], ptr %i.atf, i64 %i.auh
  %i.auj = load i64, ptr %i.aui, align 8, !tbaa !108, !noalias !2565
  %i.auk = sub nsw i64 %i.atz, %i.auj
  %i.aul = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.atp
  store i64 %i.auk, ptr %i.aul, align 8, !tbaa !108
  %i.aum = add i64 %.035.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aun = and i64 %i.aum, %.035.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aun, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !2507

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.auo = add nsw i32 %i.aqa, 64                 ; 2 uses
  %.not3367.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.auo, %i.aqb
  br i1 %.not3367.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.aup = getelementptr inbounds nuw i8, ptr %i.amw, i64 16 ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.amw, i64 58 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.amw, i64 59 ; 3 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.amw, i64 8 ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.amw, i64 64 ; 3 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.alg, i64 16 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.alg, i64 58 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.alg, i64 8 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.alg, i64 64 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.alg, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.apx, %i.aqb
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.auz = phi i32 [ %i.bco, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auo, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aqa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ava = sdiv i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.avb = sext i32 %i.ava to i64
  %i.avc = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %i.avb
  %i.avd = load i64, ptr %i.avc, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.avd, label %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.ave = shl nsw i32 %i.ava, 6
  %i.avf = load ptr, ptr %i.auu, align 8, !tbaa !354, !noalias !2566
  %i.avg = load i8, ptr %i.auv, align 2, !tbaa !355, !range !125, !noalias !2566, !noundef !126
  %i.avh = trunc nuw i8 %i.avg to i1
  %i.avi = load ptr, ptr %i.aup, align 8, !tbaa !354, !noalias !2567
  %i.avj = load i8, ptr %i.auq, align 2, !tbaa !355, !range !125, !noalias !2567, !noundef !126
  %i.avk = trunc nuw i8 %i.avj to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avl = shl nsw i32 %i.ava, 6                  ; 6 uses
  %i.avm = add i32 %i.avl, 64
  %i.avn = sext i32 %i.avm to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i65 = add i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not90.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i65, 64
  br i1 %.not90.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph89.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph89.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avo = sext i32 %i.avl to i64                 ; 24 uses
  %i.avp = load ptr, ptr %i.auu, align 8, !tbaa !354, !noalias !2568 ; 10 uses
  %i.avq = ptrtoaddr ptr %i.avp to i64
  %i.avr = load i8, ptr %i.auv, align 2, !tbaa !355, !range !125, !noalias !2568, !noundef !126
  %i.avs = trunc nuw i8 %i.avr to i1
  %i.avt = load ptr, ptr %i.aup, align 8, !tbaa !354, !noalias !2569 ; 7 uses
  %i.avu = ptrtoaddr ptr %i.avt to i64
  %i.avv = load i8, ptr %i.auq, align 2, !tbaa !355, !range !125, !noalias !2569, !noundef !126
  %i.avw = trunc nuw i8 %i.avv to i1              ; 2 uses
  br i1 %i.avs, label %.lr.ph89.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph89.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph89.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph89.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.avw, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph89.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph89.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.avx = or disjoint i64 %i.avo, 1
  %i.avy = call i64 @llvm.umax.i64(i64 %i.avx, i64 %i.avn) ; 2 uses
  %i.avz = sub i64 %i.avy, %i.avo                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.avz, 36
  br i1 %min.iters.check, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.awa = or disjoint i64 %i.avo, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.awa, i64 %i.avn)
  %i.awb = xor i64 %i.avo, -1
  %i.awc = add i64 %umax, %i.awb                  ; 2 uses
  %i.awd = sext i32 %i.avl to i35                 ; 2 uses
  %i.awe = shl nsw i35 %i.awd, 3
  %i.awf = trunc i64 %i.awc to i35
  %i.awg = add i35 %i.awd, %i.awf
  %i.awh = shl i35 %i.awg, 3
  %i.awi = icmp slt i35 %i.awh, %i.awe
  %i.awj = icmp ugt i64 %i.awc, 4294967295
  %i.awk = or i1 %i.awi, %i.awj
  br i1 %i.awk, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awl = shl nsw i64 %i.avo, 3                  ; 2 uses
  %i.awm = add i64 %i.awl, %.sink.i.i330
  %i.awn = sext i32 %i.avl to i35
  %i.awo = shl nsw i35 %i.awn, 3
  %i.awp = sext i35 %i.awo to i64                 ; 2 uses
  %i.awq = add i64 %i.avq, %i.awp
  %i.awr = sub i64 %i.awq, %i.awm
  %diff.check = icmp ugt i64 %i.awr, -64
  %i.aws = add i64 %i.awl, %.sink.i.i330
  %i.awt = add i64 %i.avu, %i.awp
  %i.awu = sub i64 %i.awt, %i.aws
  %diff.check331 = icmp ugt i64 %i.awu, -64
  %conflict.rdx = or i1 %diff.check, %diff.check331
  br i1 %conflict.rdx, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.awv = and i64 %i.avy, 1                      ; 2 uses
  %n.vec = sub i64 %i.avz, %i.awv                 ; 2 uses
  %i.aww = add i64 %n.vec, %i.avo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awx = add nuw i64 %index, %i.avo             ; 2 uses
  %i.awy = shl i64 %i.awx, 32
  %i.awz = ashr exact i64 %i.awy, 29              ; 2 uses
  %i.axa = getelementptr inbounds i8, ptr %i.avp, i64 %i.awz ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 32
  %wide.load = load <4 x i64>, ptr %i.axa, align 8, !tbaa !108, !noalias !2568
  %wide.load332 = load <4 x i64>, ptr %i.axb, align 8, !tbaa !108, !noalias !2568
  %i.axc = getelementptr inbounds i8, ptr %i.avt, i64 %i.awz ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  %wide.load333 = load <4 x i64>, ptr %i.axc, align 8, !tbaa !108, !noalias !2569
  %wide.load334 = load <4 x i64>, ptr %i.axd, align 8, !tbaa !108, !noalias !2569
  %i.axe = sub nsw <4 x i64> %wide.load, %wide.load333
  %i.axf = sub nsw <4 x i64> %wide.load332, %wide.load334
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.awx ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 32
  store <4 x i64> %i.axe, ptr %i.axg, align 8, !tbaa !108
  store <4 x i64> %i.axf, ptr %i.axh, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.axi = icmp eq i64 %index.next, %n.vec
  br i1 %i.axi, label %middle.block, label %vector.body, !llvm.loop !2520

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awv, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669: ; preds = %vector.memcheck, %vector.scevcheck, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.avo, %vector.memcheck ], [ %i.avo, %vector.scevcheck ], [ %i.avo, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aww, %middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axq, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669 ] ; 3 uses
  %sext70.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axj = ashr exact i64 %sext70.i.i.i.i.i.i.i.i.i.i.i, 29 ; 2 uses
  %i.axk = getelementptr inbounds i8, ptr %i.avp, i64 %i.axj
  %i.axl = load i64, ptr %i.axk, align 8, !tbaa !108, !noalias !2568
  %i.axm = getelementptr inbounds i8, ptr %i.avt, i64 %i.axj
  %i.axn = load i64, ptr %i.axm, align 8, !tbaa !108, !noalias !2569
  %i.axo = sub nsw i64 %i.axl, %i.axn
  %i.axp = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.axo, ptr %i.axp, align 8, !tbaa !108
  %i.axq = add nuw i64 %.088.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axr = icmp ult i64 %i.axq, %i.avn
  br i1 %i.axr, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2521

.lr.ph89.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph89.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.axs = load i8, ptr %i.aur, align 1, !tbaa !356, !range !125, !noalias !2569, !noundef !126
  %i.axt = trunc nuw i8 %i.axs to i1
  br i1 %i.axt, label %iter.check, label %.lr.ph89.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph89.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.axu = load i32, ptr %i.aut, align 8, !tbaa !357, !noalias !2569
  %i.axv = sext i32 %i.axu to i64                 ; 2 uses
  %i.axw = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %i.axv ; 3 uses
  %i.axx = or disjoint i64 %i.avo, 1
  %umax351 = call i64 @llvm.umax.i64(i64 %i.axx, i64 %i.avn) ; 2 uses
  %i.axy = sub i64 %umax351, %i.avo               ; 3 uses
  %min.iters.check353 = icmp ult i64 %i.axy, 4
  br i1 %min.iters.check353, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck335

vector.scevcheck335:                              ; preds = %iter.check
  %i.axz = or disjoint i64 %i.avo, 1
  %umax336 = call i64 @llvm.umax.i64(i64 %i.axz, i64 %i.avn)
  %i.aya = xor i64 %i.avo, -1
  %i.ayb = add i64 %umax336, %i.aya               ; 2 uses
  %i.ayc = sext i32 %i.avl to i35                 ; 2 uses
  %i.ayd = shl nsw i35 %i.ayc, 3
  %i.aye = trunc i64 %i.ayb to i35
  %i.ayf = add i35 %i.ayc, %i.aye
  %i.ayg = shl i35 %i.ayf, 3
  %i.ayh = icmp slt i35 %i.ayg, %i.ayd
  %i.ayi = icmp ugt i64 %i.ayb, 4294967295
  %i.ayj = or i1 %i.ayh, %i.ayi
  br i1 %i.ayj, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck340

vector.memcheck340:                               ; preds = %vector.scevcheck335
  %i.ayk = shl nsw i64 %i.avo, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayk ; 2 uses
  %i.ayl = or disjoint i64 %i.avo, 1
  %umax341 = call i64 @llvm.umax.i64(i64 %i.ayl, i64 %i.avn)
  %i.aym = shl nsw i64 %umax341, 3                ; 2 uses
  %scevgep342 = getelementptr i8, ptr %.sink.i.i, i64 %i.aym ; 2 uses
  %scevgep343 = getelementptr i8, ptr %i.avt, i64 8
  %i.ayn = shl nsw i64 %i.axv, 3
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.ayn
  %i.ayo = sext i32 %i.avl to i35
  %i.ayp = shl nsw i35 %i.ayo, 3
  %i.ayq = sext i35 %i.ayp to i64                 ; 2 uses
  %scevgep345 = getelementptr i8, ptr %i.avp, i64 %i.ayq
  %i.ayr = add i64 %i.aym, %i.ayq
  %i.ays = sub i64 %i.ayr, %i.ayk
  %scevgep346 = getelementptr i8, ptr %i.avp, i64 %i.ays
  %bound0 = icmp ult ptr %scevgep, %scevgep344
  %bound1 = icmp ult ptr %i.axw, %scevgep342
  %found.conflict = and i1 %bound0, %bound1
  %bound0347 = icmp ult ptr %scevgep, %scevgep346
  %bound1348 = icmp ult ptr %scevgep345, %scevgep342
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %found.conflict, %found.conflict349
  br i1 %conflict.rdx350, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck340
  %min.iters.check354 = icmp ult i64 %i.axy, 16
  %i.ayt = and i64 %umax351, 1                    ; 3 uses
  %n.vec367 = sub i64 %i.axy, %i.ayt              ; 3 uses
  %i.ayu = add i64 %n.vec367, %i.avo              ; 2 uses
  %i.ayv = load i64, ptr %i.axw, align 8, !tbaa !108, !alias.scope !2570, !noalias !2569
  %broadcast.splatinsert370 = insertelement <4 x i64> poison, i64 %i.ayv, i64 0
  %broadcast.splat371 = shufflevector <4 x i64> %broadcast.splatinsert370, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check354, label %vec.epilog.vector.body, label %vector.body357

vector.body357:                                   ; preds = %vector.main.loop.iter.check, %vector.body357
  %index358 = phi i64 [ %index.next363, %vector.body357 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ayw = add nuw i64 %index358, %i.avo          ; 2 uses
  %i.ayx = shl i64 %i.ayw, 32
  %i.ayy = ashr exact i64 %i.ayx, 29
  %i.ayz = getelementptr inbounds i8, ptr %i.avp, i64 %i.ayy ; 4 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayz, i64 64
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 96
  %wide.load359 = load <4 x i64>, ptr %i.ayz, align 8, !tbaa !108, !alias.scope !2571, !noalias !2568
  %wide.load360 = load <4 x i64>, ptr %i.aza, align 8, !tbaa !108, !alias.scope !2571, !noalias !2568
  %wide.load361 = load <4 x i64>, ptr %i.azb, align 8, !tbaa !108, !alias.scope !2571, !noalias !2568
  %wide.load362 = load <4 x i64>, ptr %i.azc, align 8, !tbaa !108, !alias.scope !2571, !noalias !2568
  %i.azd = sub nsw <4 x i64> %wide.load359, %broadcast.splat371
  %i.aze = sub nsw <4 x i64> %wide.load360, %broadcast.splat371
  %i.azf = sub nsw <4 x i64> %wide.load361, %broadcast.splat371
  %i.azg = sub nsw <4 x i64> %wide.load362, %broadcast.splat371
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.ayw ; 4 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 32
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azh, i64 64
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azh, i64 96
  store <4 x i64> %i.azd, ptr %i.azh, align 8, !tbaa !108, !alias.scope !2572, !noalias !2573
  store <4 x i64> %i.aze, ptr %i.azi, align 8, !tbaa !108, !alias.scope !2572, !noalias !2573
  store <4 x i64> %i.azf, ptr %i.azj, align 8, !tbaa !108, !alias.scope !2572, !noalias !2573
  store <4 x i64> %i.azg, ptr %i.azk, align 8, !tbaa !108, !alias.scope !2572, !noalias !2573
  %index.next363 = add nuw i64 %index358, 16      ; 2 uses
  %i.azl = icmp eq i64 %index.next363, %n.vec367
  br i1 %i.azl, label %middle.block364, label %vector.body357, !llvm.loop !2526

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %i.ayt, 0
  br i1 %cmp.n365, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index368 = phi i64 [ %index.next372, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.azm = add nuw i64 %index368, %i.avo          ; 2 uses
  %i.azn = shl i64 %i.azm, 32
  %i.azo = ashr exact i64 %i.azn, 29
  %i.azp = getelementptr inbounds i8, ptr %i.avp, i64 %i.azo
  %wide.load369 = load <4 x i64>, ptr %i.azp, align 8, !tbaa !108, !alias.scope !2571, !noalias !2568
  %i.azq = sub nsw <4 x i64> %wide.load369, %broadcast.splat371
  %i.azr = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.azm
  store <4 x i64> %i.azq, ptr %i.azr, align 8, !tbaa !108, !alias.scope !2572, !noalias !2573
  %index.next372 = add nuw i64 %index368, 4       ; 2 uses
  %i.azs = icmp eq i64 %index.next372, %n.vec367
  br i1 %i.azs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2527

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n373 = icmp eq i64 %i.ayt, 0
  br i1 %cmp.n373, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block364, %iter.check, %vector.scevcheck335, %vector.memcheck340, %vec.epilog.middle.block
  %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ayu, %middle.block364 ], [ %i.avo, %vector.scevcheck335 ], [ %i.avo, %vector.memcheck340 ], [ %i.avo, %iter.check ], [ %i.ayu, %vec.epilog.middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i
  %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azz, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i ], [ %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.azt = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azu = getelementptr inbounds i8, ptr %i.avp, i64 %i.azt
  %i.azv = load i64, ptr %i.azu, align 8, !tbaa !108, !noalias !2568
  %i.azw = load i64, ptr %i.axw, align 8, !tbaa !108, !noalias !2569
  %i.azx = sub nsw i64 %i.azv, %i.azw
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.azx, ptr %i.azy, align 8, !tbaa !108
  %i.azz = add nuw i64 %.088.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.baa = icmp ult i64 %i.azz, %i.avn
  br i1 %i.baa, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2528

.lr.ph89.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph89.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bab = load ptr, ptr %i.aus, align 8, !tbaa !358, !noalias !2569
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph89.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.088.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avo, %.lr.ph89.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ban, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.us.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.bac = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.bad = getelementptr inbounds i8, ptr %i.avp, i64 %i.bac
  %i.bae = load i64, ptr %i.bad, align 8, !tbaa !108, !noalias !2568
  %i.baf = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bag = getelementptr inbounds i8, ptr %i.bab, i64 %i.baf
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !55, !noalias !2569
  %i.bai = sext i32 %i.bah to i64
  %i.baj = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %i.bai
  %i.bak = load i64, ptr %i.baj, align 8, !tbaa !108, !noalias !2569
  %i.bal = sub nsw i64 %i.bae, %i.bak
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.088.i.us.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bal, ptr %i.bam, align 8, !tbaa !108
  %i.ban = add nuw i64 %.088.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bao = icmp ult i64 %i.ban, %i.avn
  br i1 %i.bao, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2529

.lr.ph89.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph89.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bap = load i8, ptr %i.auy, align 1, !tbaa !356, !range !125, !noalias !2568, !noundef !126
  %i.baq = trunc nuw i8 %i.bap to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph89.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.088.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avo, %.lr.ph89.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbk, %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bar = trunc i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.baq, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bas = load ptr, ptr %i.auw, align 8, !tbaa !358, !noalias !2568
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bat = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bau = getelementptr inbounds i8, ptr %i.bas, i64 %i.bat
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bau, %bb.eb ], [ %i.aux, %bb.ea ]
  %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55, !noalias !2568
  %i.bav = sext i32 %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.baw = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bav
  %i.bax = load i64, ptr %i.baw, align 8, !tbaa !108, !noalias !2568
  br i1 %i.avw, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %i.bay = load i8, ptr %i.aur, align 1, !tbaa !356, !range !125, !noalias !2569, !noundef !126
  %i.baz = trunc nuw i8 %i.bay to i1
  br i1 %i.baz, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.bba = load i32, ptr %i.aut, align 8, !tbaa !357, !noalias !2569
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bbb = load ptr, ptr %i.aus, align 8, !tbaa !358, !noalias !2569
  %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bbc = ashr exact i64 %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bbd = getelementptr inbounds i8, ptr %i.bbb, i64 %i.bbc
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !55, !noalias !2569
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbe, %bb.ee ], [ %i.bba, %bb.ed ], [ %i.bar, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbf = sext i32 %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbg = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %i.bbf
  %i.bbh = load i64, ptr %i.bbg, align 8, !tbaa !108, !noalias !2569
  %i.bbi = sub nsw i64 %i.bax, %i.bbh
  %i.bbj = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bbi, ptr %i.bbj, align 8, !tbaa !108
  %i.bbk = add nuw i64 %.088.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbl = icmp ult i64 %i.bbk, %i.avn
  br i1 %i.bbl, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE7iterateIJNS3_12VectorReaderISE_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2529

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i
  %.01587.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avd, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i ], [ %i.bcn, %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01587.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbn = trunc nuw nsw i64 %i.bbm to i32
  %i.bbo = or disjoint i32 %i.ave, %i.bbn         ; 3 uses
  %i.bbp = sext i32 %i.bbo to i64                 ; 3 uses
  br i1 %i.avh, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bbq = load i8, ptr %i.auy, align 1, !tbaa !356, !range !125, !noalias !2566, !noundef !126
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bbs = load i32, ptr %i.aux, align 8, !tbaa !357, !noalias !2566
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bbt = load ptr, ptr %i.auw, align 8, !tbaa !358, !noalias !2566
  %i.bbu = shl nsw i64 %i.bbp, 2
  %i.bbv = getelementptr inbounds i8, ptr %i.bbt, i64 %i.bbu
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !55, !noalias !2566
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbw, %bb.ei ], [ %i.bbs, %bb.eh ], [ %i.bbo, %bb.ef ]
  %i.bbx = sext i32 %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bby = getelementptr inbounds [8 x i8], ptr %i.avf, i64 %i.bbx
  %i.bbz = load i64, ptr %i.bby, align 8, !tbaa !108, !noalias !2566
  br i1 %i.avk, label %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bca = load i8, ptr %i.aur, align 1, !tbaa !356, !range !125, !noalias !2567, !noundef !126
  %i.bcb = trunc nuw i8 %i.bca to i1
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.ark = load i32, ptr %i.aqv, align 8, !tbaa !357
  br label %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.arl = load ptr, ptr %i.aqu, align 8, !tbaa !358
  %i.arm = shl nsw i64 %i.arh, 2
  %i.arn = getelementptr inbounds i8, ptr %i.arl, i64 %i.arm
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !55
  br label %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i

.noexc12.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aro, %bb.dm ], [ %i.ark, %bb.dl ], [ %i.arg, %bb.dj ]
  %i.arp = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.arq = getelementptr inbounds [8 x i8], ptr %i.aqp, i64 %i.arp
  %i.arr = load double, ptr %i.arq, align 8, !tbaa !310
  br i1 %i.ara, label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ars = load i8, ptr %i.arb, align 1, !tbaa !356, !range !125, !noundef !126
  %i.art = trunc nuw i8 %i.ars to i1
  br i1 %i.art, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aru = load i32, ptr %i.ard, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.arv = load ptr, ptr %i.arc, align 8, !tbaa !358
  %i.arw = shl nsw i64 %i.arh, 2
  %i.arx = getelementptr inbounds i8, ptr %i.arv, i64 %i.arw
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ary, %bb.dp ], [ %i.aru, %bb.do ], [ %i.arg, %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.arz = sext i32 %.0.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.asa = getelementptr inbounds [8 x i8], ptr %i.aqx, i64 %i.arz
  %i.asb = load double, ptr %i.asa, align 8, !tbaa !310
  %i.asc = fmul double %i.arr, %i.asb
  %i.asd = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.arh
  store double %i.asc, ptr %i.asd, align 8, !tbaa !310
  %i.ase = add nsw i64 %.036.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asf = and i64 %i.ase, %.036.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i73 = icmp eq i64 %i.asf, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i73, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.dj, !llvm.loop !2972

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.apr, %i.apw
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.asg = sdiv i32 %i.apr, 64                    ; 2 uses
  %i.ash = sub nsw i32 %i.apw, %i.apr             ; 2 uses
  %i.asi = zext nneg i32 %i.ash to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.asi
  %i.asj = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.ask = sub nsw i32 64, %i.ash
  %i.asl = zext nneg i32 %i.ask to i64
  %i.asm = shl i64 %i.asj, %i.asl
  %i.asn = sext i32 %i.asg to i64
  %i.aso = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.asn
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !108
  %i.asq = and i64 %i.asp, %i.asm                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.asq, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.asr = shl nsw i32 %i.asg, 6
  %i.ass = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !354
  %i.asu = getelementptr inbounds nuw i8, ptr %i.alc, i64 58
  %i.asv = load i8, ptr %i.asu, align 2, !tbaa !355, !range !125, !noundef !126
  %i.asw = trunc nuw i8 %i.asv to i1
  %i.asx = getelementptr inbounds nuw i8, ptr %i.alc, i64 59
  %i.asy = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.asz = getelementptr inbounds nuw i8, ptr %i.alc, i64 64
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !354
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ams, i64 58
  %i.atd = load i8, ptr %i.atc, align 2, !tbaa !355, !range !125, !noundef !126
  %i.ate = trunc nuw i8 %i.atd to i1
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ams, i64 59
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.ams, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.036.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asq, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.auj, %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ati = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.036.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atj = trunc nuw nsw i64 %i.ati to i32
  %i.atk = or disjoint i32 %i.asr, %i.atj         ; 3 uses
  %i.atl = sext i32 %i.atk to i64                 ; 3 uses
  br i1 %i.asw, label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.atm = load i8, ptr %i.asx, align 1, !tbaa !356, !range !125, !noundef !126
  %i.atn = trunc nuw i8 %i.atm to i1
  br i1 %i.atn, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ato = load i32, ptr %i.asz, align 8, !tbaa !357
  br label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.atp = load ptr, ptr %i.asy, align 8, !tbaa !358
  %i.atq = shl nsw i64 %i.atl, 2
  %i.atr = getelementptr inbounds i8, ptr %i.atp, i64 %i.atq
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !55
  br label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i

.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ats, %bb.dv ], [ %i.ato, %bb.du ], [ %i.atk, %bb.ds ]
  %i.att = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.atu = getelementptr inbounds [8 x i8], ptr %i.ast, i64 %i.att
  %i.atv = load double, ptr %i.atu, align 8, !tbaa !310
  br i1 %i.ate, label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.atw = load i8, ptr %i.atf, align 1, !tbaa !356, !range !125, !noundef !126
  %i.atx = trunc nuw i8 %i.atw to i1
  br i1 %i.atx, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aty = load i32, ptr %i.ath, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.atz = load ptr, ptr %i.atg, align 8, !tbaa !358
  %i.aua = shl nsw i64 %i.atl, 2
  %i.aub = getelementptr inbounds i8, ptr %i.atz, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auc, %bb.dy ], [ %i.aty, %bb.dx ], [ %i.atk, %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aud = sext i32 %.0.i.i.i17.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aue = getelementptr inbounds [8 x i8], ptr %i.atb, i64 %i.aud
  %i.auf = load double, ptr %i.aue, align 8, !tbaa !310
  %i.aug = fmul double %i.atv, %i.auf
  %i.auh = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.atl
  store double %i.aug, ptr %i.auh, align 8, !tbaa !310
  %i.aui = add i64 %.036.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.auj = and i64 %i.aui, %.036.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.auj, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !2972

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.auk = add nsw i32 %i.apw, 64                 ; 2 uses
  %.not3366.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.auk, %i.apx
  br i1 %.not3366.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ams, i64 16 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ams, i64 58 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.ams, i64 59 ; 3 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.ams, i64 8 ; 3 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.ams, i64 64 ; 3 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.alc, i64 16 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.alc, i64 58 ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.alc, i64 8 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.alc, i64 64 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.alc, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.apt, %i.apx
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.auv = phi i32 [ %i.bck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auk, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.067.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auv, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.apw, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.auw = sdiv i32 %.067.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.aux = sext i32 %i.auw to i64
  %i.auy = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.aux
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.auz, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.ava = shl nsw i32 %i.auw, 6
  %i.avb = load ptr, ptr %i.auq, align 8, !tbaa !354
  %i.avc = load i8, ptr %i.aur, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avd = trunc nuw i8 %i.avc to i1
  %i.ave = load ptr, ptr %i.aul, align 8, !tbaa !354
  %i.avf = load i8, ptr %i.aum, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avg = trunc nuw i8 %i.avf to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avh = shl nsw i32 %i.auw, 6                  ; 6 uses
  %i.avi = add i32 %i.avh, 64
  %i.avj = sext i32 %i.avi to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i68 = add i32 %.067.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not93.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i68, 64
  br i1 %.not93.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avk = sext i32 %i.avh to i64                 ; 24 uses
  %i.avl = load ptr, ptr %i.auq, align 8, !tbaa !354 ; 10 uses
  %i.avm = ptrtoaddr ptr %i.avl to i64
  %i.avn = load i8, ptr %i.aur, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avo = trunc nuw i8 %i.avn to i1
  %i.avp = load ptr, ptr %i.aul, align 8, !tbaa !354 ; 7 uses
  %i.avq = ptrtoaddr ptr %i.avp to i64
  %i.avr = load i8, ptr %i.aum, align 2, !tbaa !355, !range !125, !noundef !126
  %i.avs = trunc nuw i8 %i.avr to i1              ; 2 uses
  br i1 %i.avo, label %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.avs, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.avt = or disjoint i64 %i.avk, 1
  %i.avu = call i64 @llvm.umax.i64(i64 %i.avt, i64 %i.avj) ; 2 uses
  %i.avv = sub i64 %i.avu, %i.avk                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.avv, 36
  br i1 %min.iters.check, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.avw = or disjoint i64 %i.avk, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.avw, i64 %i.avj)
  %i.avx = xor i64 %i.avk, -1
  %i.avy = add i64 %umax, %i.avx                  ; 2 uses
  %i.avz = sext i32 %i.avh to i35                 ; 2 uses
  %i.awa = shl nsw i35 %i.avz, 3
  %i.awb = trunc i64 %i.avy to i35
  %i.awc = add i35 %i.avz, %i.awb
  %i.awd = shl i35 %i.awc, 3
  %i.awe = icmp slt i35 %i.awd, %i.awa
  %i.awf = icmp ugt i64 %i.avy, 4294967295
  %i.awg = or i1 %i.awe, %i.awf
  br i1 %i.awg, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awh = shl nsw i64 %i.avk, 3                  ; 2 uses
  %i.awi = add i64 %i.awh, %.sink.i.i333
  %i.awj = sext i32 %i.avh to i35
  %i.awk = shl nsw i35 %i.awj, 3
  %i.awl = sext i35 %i.awk to i64                 ; 2 uses
  %i.awm = add i64 %i.avm, %i.awl
  %i.awn = sub i64 %i.awm, %i.awi
  %diff.check = icmp ugt i64 %i.awn, -64
  %i.awo = add i64 %i.awh, %.sink.i.i333
  %i.awp = add i64 %i.avq, %i.awl
  %i.awq = sub i64 %i.awp, %i.awo
  %diff.check334 = icmp ugt i64 %i.awq, -64
  %conflict.rdx = or i1 %diff.check, %diff.check334
  br i1 %conflict.rdx, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.awr = and i64 %i.avu, 1                      ; 2 uses
  %n.vec = sub i64 %i.avv, %i.awr                 ; 2 uses
  %i.aws = add i64 %n.vec, %i.avk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awt = add nuw i64 %index, %i.avk             ; 2 uses
  %i.awu = shl i64 %i.awt, 32
  %i.awv = ashr exact i64 %i.awu, 29              ; 2 uses
  %i.aww = getelementptr inbounds i8, ptr %i.avl, i64 %i.awv ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 32
  %wide.load = load <4 x double>, ptr %i.aww, align 8, !tbaa !310
  %wide.load335 = load <4 x double>, ptr %i.awx, align 8, !tbaa !310
  %i.awy = getelementptr inbounds i8, ptr %i.avp, i64 %i.awv ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 32
  %wide.load336 = load <4 x double>, ptr %i.awy, align 8, !tbaa !310
  %wide.load337 = load <4 x double>, ptr %i.awz, align 8, !tbaa !310
  %i.axa = fmul <4 x double> %wide.load, %wide.load336
  %i.axb = fmul <4 x double> %wide.load335, %wide.load337
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.awt ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  store <4 x double> %i.axa, ptr %i.axc, align 8, !tbaa !310
  store <4 x double> %i.axb, ptr %i.axd, align 8, !tbaa !310
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.axe = icmp eq i64 %index.next, %n.vec
  br i1 %i.axe, label %middle.block, label %vector.body, !llvm.loop !2973

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awr, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672: ; preds = %vector.memcheck, %vector.scevcheck, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.avk, %vector.memcheck ], [ %i.avk, %vector.scevcheck ], [ %i.avk, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aws, %middle.block ]
  br label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axm, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader672 ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axf = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 29 ; 2 uses
  %i.axg = getelementptr inbounds i8, ptr %i.avl, i64 %i.axf
  %i.axh = load double, ptr %i.axg, align 8, !tbaa !310
  %i.axi = getelementptr inbounds i8, ptr %i.avp, i64 %i.axf
  %i.axj = load double, ptr %i.axi, align 8, !tbaa !310
  %i.axk = fmul double %i.axh, %i.axj
  %i.axl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store double %i.axk, ptr %i.axl, align 8, !tbaa !310
  %i.axm = add nuw i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axn = icmp ult i64 %i.axm, %i.avj
  br i1 %i.axn, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2974

.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.axo = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noundef !126
  %i.axp = trunc nuw i8 %i.axo to i1
  br i1 %i.axp, label %iter.check, label %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.axq = load i32, ptr %i.aup, align 8, !tbaa !357
  %i.axr = sext i32 %i.axq to i64                 ; 2 uses
  %i.axs = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.axr ; 3 uses
  %i.axt = or disjoint i64 %i.avk, 1
  %umax354 = call i64 @llvm.umax.i64(i64 %i.axt, i64 %i.avj) ; 2 uses
  %i.axu = sub i64 %umax354, %i.avk               ; 3 uses
  %min.iters.check356 = icmp ult i64 %i.axu, 4
  br i1 %min.iters.check356, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck338

vector.scevcheck338:                              ; preds = %iter.check
  %i.axv = or disjoint i64 %i.avk, 1
  %umax339 = call i64 @llvm.umax.i64(i64 %i.axv, i64 %i.avj)
  %i.axw = xor i64 %i.avk, -1
  %i.axx = add i64 %umax339, %i.axw               ; 2 uses
  %i.axy = sext i32 %i.avh to i35                 ; 2 uses
  %i.axz = shl nsw i35 %i.axy, 3
  %i.aya = trunc i64 %i.axx to i35
  %i.ayb = add i35 %i.axy, %i.aya
  %i.ayc = shl i35 %i.ayb, 3
  %i.ayd = icmp slt i35 %i.ayc, %i.axz
  %i.aye = icmp ugt i64 %i.axx, 4294967295
  %i.ayf = or i1 %i.ayd, %i.aye
  br i1 %i.ayf, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %vector.scevcheck338
  %i.ayg = shl nsw i64 %i.avk, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayg ; 2 uses
  %i.ayh = or disjoint i64 %i.avk, 1
  %umax344 = call i64 @llvm.umax.i64(i64 %i.ayh, i64 %i.avj)
  %i.ayi = shl nsw i64 %umax344, 3                ; 2 uses
  %scevgep345 = getelementptr i8, ptr %.sink.i.i, i64 %i.ayi ; 2 uses
  %scevgep346 = getelementptr i8, ptr %i.avp, i64 8
  %i.ayj = shl nsw i64 %i.axr, 3
  %scevgep347 = getelementptr i8, ptr %scevgep346, i64 %i.ayj
  %i.ayk = sext i32 %i.avh to i35
  %i.ayl = shl nsw i35 %i.ayk, 3
  %i.aym = sext i35 %i.ayl to i64                 ; 2 uses
  %scevgep348 = getelementptr i8, ptr %i.avl, i64 %i.aym
  %i.ayn = add i64 %i.ayi, %i.aym
  %i.ayo = sub i64 %i.ayn, %i.ayg
  %scevgep349 = getelementptr i8, ptr %i.avl, i64 %i.ayo
  %bound0 = icmp ult ptr %scevgep, %scevgep347
  %bound1 = icmp ult ptr %i.axs, %scevgep345
  %found.conflict = and i1 %bound0, %bound1
  %bound0350 = icmp ult ptr %scevgep, %scevgep349
  %bound1351 = icmp ult ptr %scevgep348, %scevgep345
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %found.conflict, %found.conflict352
  br i1 %conflict.rdx353, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck343
  %min.iters.check357 = icmp ult i64 %i.axu, 16
  %i.ayp = and i64 %umax354, 1                    ; 3 uses
  %n.vec370 = sub i64 %i.axu, %i.ayp              ; 3 uses
  %i.ayq = add i64 %n.vec370, %i.avk              ; 2 uses
  %i.ayr = load double, ptr %i.axs, align 8, !tbaa !310, !alias.scope !3009
  %broadcast.splatinsert373 = insertelement <4 x double> poison, double %i.ayr, i64 0
  %broadcast.splat374 = shufflevector <4 x double> %broadcast.splatinsert373, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check357, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
  %index361 = phi i64 [ %index.next366, %vector.body360 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ays = add nuw i64 %index361, %i.avk          ; 2 uses
  %i.ayt = shl i64 %i.ays, 32
  %i.ayu = ashr exact i64 %i.ayt, 29
  %i.ayv = getelementptr inbounds i8, ptr %i.avl, i64 %i.ayu ; 4 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 64
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 96
  %wide.load362 = load <4 x double>, ptr %i.ayv, align 8, !tbaa !310, !alias.scope !3010
  %wide.load363 = load <4 x double>, ptr %i.ayw, align 8, !tbaa !310, !alias.scope !3010
  %wide.load364 = load <4 x double>, ptr %i.ayx, align 8, !tbaa !310, !alias.scope !3010
  %wide.load365 = load <4 x double>, ptr %i.ayy, align 8, !tbaa !310, !alias.scope !3010
  %i.ayz = fmul <4 x double> %wide.load362, %broadcast.splat374
  %i.aza = fmul <4 x double> %wide.load363, %broadcast.splat374
  %i.azb = fmul <4 x double> %wide.load364, %broadcast.splat374
  %i.azc = fmul <4 x double> %wide.load365, %broadcast.splat374
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.ays ; 4 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 32
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azd, i64 64
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azd, i64 96
  store <4 x double> %i.ayz, ptr %i.azd, align 8, !tbaa !310, !alias.scope !3011, !noalias !3012
  store <4 x double> %i.aza, ptr %i.aze, align 8, !tbaa !310, !alias.scope !3011, !noalias !3012
  store <4 x double> %i.azb, ptr %i.azf, align 8, !tbaa !310, !alias.scope !3011, !noalias !3012
  store <4 x double> %i.azc, ptr %i.azg, align 8, !tbaa !310, !alias.scope !3011, !noalias !3012
  %index.next366 = add nuw i64 %index361, 16      ; 2 uses
  %i.azh = icmp eq i64 %index.next366, %n.vec370
  br i1 %i.azh, label %middle.block367, label %vector.body360, !llvm.loop !2979

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.ayp, 0
  br i1 %cmp.n368, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index371 = phi i64 [ %index.next375, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.azi = add nuw i64 %index371, %i.avk          ; 2 uses
  %i.azj = shl i64 %i.azi, 32
  %i.azk = ashr exact i64 %i.azj, 29
  %i.azl = getelementptr inbounds i8, ptr %i.avl, i64 %i.azk
  %wide.load372 = load <4 x double>, ptr %i.azl, align 8, !tbaa !310, !alias.scope !3010
  %i.azm = fmul <4 x double> %wide.load372, %broadcast.splat374
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.azi
  store <4 x double> %i.azm, ptr %i.azn, align 8, !tbaa !310, !alias.scope !3011, !noalias !3012
  %index.next375 = add nuw i64 %index371, 4       ; 2 uses
  %i.azo = icmp eq i64 %index.next375, %n.vec370
  br i1 %i.azo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2980

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n376 = icmp eq i64 %i.ayp, 0
  br i1 %cmp.n376, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader

.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block367, %iter.check, %vector.scevcheck338, %vector.memcheck343, %vec.epilog.middle.block
  %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ayq, %middle.block367 ], [ %i.avk, %vector.scevcheck338 ], [ %i.avk, %vector.memcheck343 ], [ %i.avk, %iter.check ], [ %i.ayq, %vec.epilog.middle.block ]
  br label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azv, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i ], [ %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i.ph, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext68.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.azp = ashr exact i64 %sext68.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azq = getelementptr inbounds i8, ptr %i.avl, i64 %i.azp
  %i.azr = load double, ptr %i.azq, align 8, !tbaa !310
  %i.azs = load double, ptr %i.axs, align 8, !tbaa !310
  %i.azt = fmul double %i.azr, %i.azs
  %i.azu = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i
  store double %i.azt, ptr %i.azu, align 8, !tbaa !310
  %i.azv = add nuw i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.azw = icmp ult i64 %i.azv, %i.avj
  br i1 %i.azw, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2981

.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.azx = load ptr, ptr %i.auo, align 8, !tbaa !358
  br label %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.baj, %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.azy = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azz = getelementptr inbounds i8, ptr %i.avl, i64 %i.azy
  %i.baa = load double, ptr %i.azz, align 8, !tbaa !310
  %i.bab = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bac = getelementptr inbounds i8, ptr %i.azx, i64 %i.bab
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !55
  %i.bae = sext i32 %i.bad to i64
  %i.baf = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bae
  %i.bag = load double, ptr %i.baf, align 8, !tbaa !310
  %i.bah = fmul double %i.baa, %i.bag
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i
  store double %i.bah, ptr %i.bai, align 8, !tbaa !310
  %i.baj = add nuw i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bak = icmp ult i64 %i.baj, %i.avj
  br i1 %i.bak, label %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2982

.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bal = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bam = trunc nuw i8 %i.bal to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbg, %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ban = trunc i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.bam, label %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bao = load ptr, ptr %i.aus, align 8, !tbaa !358
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bap = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.baq = getelementptr inbounds i8, ptr %i.bao, i64 %i.bap
  br label %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i47.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.baq, %bb.eb ], [ %i.aut, %bb.ea ]
  %.0.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i47.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55
  %i.bar = sext i32 %.0.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bas = getelementptr inbounds [8 x i8], ptr %i.avl, i64 %i.bar
  %i.bat = load double, ptr %i.bas, align 8, !tbaa !310
  br i1 %i.avs, label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bau = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bav = trunc nuw i8 %i.bau to i1
  br i1 %i.bav, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.baw = load i32, ptr %i.aup, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bax = load ptr, ptr %i.auo, align 8, !tbaa !358
  %sext.i33.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bay = ashr exact i64 %sext.i33.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.baz = getelementptr inbounds i8, ptr %i.bax, i64 %i.bay
  %i.bba = load i32, ptr %i.baz, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bba, %bb.ee ], [ %i.baw, %bb.ed ], [ %i.ban, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbb = sext i32 %.0.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbc = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bbb
  %i.bbd = load double, ptr %i.bbc, align 8, !tbaa !310
  %i.bbe = fmul double %i.bat, %i.bbd
  %i.bbf = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i
  store double %i.bbe, ptr %i.bbf, align 8, !tbaa !310
  %i.bbg = add nuw i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbh = icmp ult i64 %i.bbg, %i.avj
  br i1 %i.bbh, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2982

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i
  %.01590.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.auz, %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i ], [ %i.bcj, %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01590.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbj = trunc nuw nsw i64 %i.bbi to i32
  %i.bbk = or disjoint i32 %i.ava, %i.bbj         ; 3 uses
  %i.bbl = sext i32 %i.bbk to i64                 ; 3 uses
  br i1 %i.avd, label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bbm = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bbn = trunc nuw i8 %i.bbm to i1
  br i1 %i.bbn, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bbo = load i32, ptr %i.aut, align 8, !tbaa !357
  br label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bbp = load ptr, ptr %i.aus, align 8, !tbaa !358
  %i.bbq = shl nsw i64 %i.bbl, 2
  %i.bbr = getelementptr inbounds i8, ptr %i.bbp, i64 %i.bbq
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !55
  br label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i

.noexc18.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbs, %bb.ei ], [ %i.bbo, %bb.eh ], [ %i.bbk, %bb.ef ]
  %i.bbt = sext i32 %.0.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbu = getelementptr inbounds [8 x i8], ptr %i.avb, i64 %i.bbt
  %i.bbv = load double, ptr %i.bbu, align 8, !tbaa !310
  br i1 %i.avg, label %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbw = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noundef !126
  %i.bbx = trunc nuw i8 %i.bbw to i1
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.arr = load i32, ptr %i.arc, align 8, !tbaa !357, !noalias !3242
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.ars = load ptr, ptr %i.arb, align 8, !tbaa !358, !noalias !3242
  %i.art = shl nsw i64 %i.aro, 2
  %i.aru = getelementptr inbounds i8, ptr %i.ars, i64 %i.art
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !55, !noalias !3242
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.arv, %bb.dm ], [ %i.arr, %bb.dl ], [ %i.arn, %bb.dj ]
  %i.arw = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.arx = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.arw
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !418, !noalias !3242
  br i1 %i.arh, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.arz = load i8, ptr %i.ari, align 1, !tbaa !356, !range !125, !noalias !3243, !noundef !126
  %i.asa = trunc nuw i8 %i.arz to i1
  br i1 %i.asa, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.asb = load i32, ptr %i.ark, align 8, !tbaa !357, !noalias !3243
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.asc = load ptr, ptr %i.arj, align 8, !tbaa !358, !noalias !3243
  %i.asd = shl nsw i64 %i.aro, 2
  %i.ase = getelementptr inbounds i8, ptr %i.asc, i64 %i.asd
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !55, !noalias !3243
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.asf, %bb.dp ], [ %i.asb, %bb.do ], [ %i.arn, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.asg = sext i32 %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ash = getelementptr inbounds [4 x i8], ptr %i.are, i64 %i.asg
  %i.asi = load float, ptr %i.ash, align 4, !tbaa !418, !noalias !3243
  %i.asj = fmul float %i.ary, %i.asi
  %i.ask = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.aro
  store float %i.asj, ptr %i.ask, align 4, !tbaa !418
  %i.asl = add nsw i64 %.034.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asm = and i64 %i.asl, %.034.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %i.asm, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i69, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.dj, !llvm.loop !3186

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.apy, %i.aqd
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.asn = sdiv i32 %i.apy, 64                    ; 2 uses
  %i.aso = sub nsw i32 %i.aqd, %i.apy             ; 2 uses
  %i.asp = zext nneg i32 %i.aso to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.asp
  %i.asq = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.asr = sub nsw i32 64, %i.aso
  %i.ass = zext nneg i32 %i.asr to i64
  %i.ast = shl i64 %i.asq, %i.ass
  %i.asu = sext i32 %i.asn to i64
  %i.asv = getelementptr inbounds [8 x i8], ptr %i.apw, i64 %i.asu
  %i.asw = load i64, ptr %i.asv, align 8, !tbaa !108
  %i.asx = and i64 %i.asw, %i.ast                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.asx, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.asy = shl nsw i32 %i.asn, 6
  %i.asz = getelementptr inbounds nuw i8, ptr %i.alj, i64 16
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !354, !noalias !3244
  %i.atb = getelementptr inbounds nuw i8, ptr %i.alj, i64 58
  %i.atc = load i8, ptr %i.atb, align 2, !tbaa !355, !range !125, !noalias !3244, !noundef !126
  %i.atd = trunc nuw i8 %i.atc to i1
  %i.ate = getelementptr inbounds nuw i8, ptr %i.alj, i64 59
  %i.atf = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  %i.atg = getelementptr inbounds nuw i8, ptr %i.alj, i64 64
  %i.ath = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !354, !noalias !3245
  %i.atj = getelementptr inbounds nuw i8, ptr %i.amz, i64 58
  %i.atk = load i8, ptr %i.atj, align 2, !tbaa !355, !range !125, !noalias !3245, !noundef !126
  %i.atl = trunc nuw i8 %i.atk to i1
  %i.atm = getelementptr inbounds nuw i8, ptr %i.amz, i64 59
  %i.atn = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.ato = getelementptr inbounds nuw i8, ptr %i.amz, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.034.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asx, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.auq, %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.atp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atq = trunc nuw nsw i64 %i.atp to i32
  %i.atr = or disjoint i32 %i.asy, %i.atq         ; 3 uses
  %i.ats = sext i32 %i.atr to i64                 ; 3 uses
  br i1 %i.atd, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.att = load i8, ptr %i.ate, align 1, !tbaa !356, !range !125, !noalias !3244, !noundef !126
  %i.atu = trunc nuw i8 %i.att to i1
  br i1 %i.atu, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.atv = load i32, ptr %i.atg, align 8, !tbaa !357, !noalias !3244
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.atw = load ptr, ptr %i.atf, align 8, !tbaa !358, !noalias !3244
  %i.atx = shl nsw i64 %i.ats, 2
  %i.aty = getelementptr inbounds i8, ptr %i.atw, i64 %i.atx
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !55, !noalias !3244
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.atz, %bb.dv ], [ %i.atv, %bb.du ], [ %i.atr, %bb.ds ]
  %i.aua = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.ata, i64 %i.aua
  %i.auc = load float, ptr %i.aub, align 4, !tbaa !418, !noalias !3244
  br i1 %i.atl, label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.aud = load i8, ptr %i.atm, align 1, !tbaa !356, !range !125, !noalias !3245, !noundef !126
  %i.aue = trunc nuw i8 %i.aud to i1
  br i1 %i.aue, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.auf = load i32, ptr %i.ato, align 8, !tbaa !357, !noalias !3245
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.aug = load ptr, ptr %i.atn, align 8, !tbaa !358, !noalias !3245
  %i.auh = shl nsw i64 %i.ats, 2
  %i.aui = getelementptr inbounds i8, ptr %i.aug, i64 %i.auh
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !55, !noalias !3245
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auj, %bb.dy ], [ %i.auf, %bb.dx ], [ %i.atr, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.auk = sext i32 %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aul = getelementptr inbounds [4 x i8], ptr %i.ati, i64 %i.auk
  %i.aum = load float, ptr %i.aul, align 4, !tbaa !418, !noalias !3245
  %i.aun = fmul float %i.auc, %i.aum
  %i.auo = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.ats
  store float %i.aun, ptr %i.auo, align 4, !tbaa !418
  %i.aup = add i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.auq = and i64 %i.aup, %.034.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.auq, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !3186

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.aur = add nsw i32 %i.aqd, 64                 ; 2 uses
  %.not3367.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aur, %i.aqe
  br i1 %.not3367.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.aus = getelementptr inbounds nuw i8, ptr %i.amz, i64 16 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.amz, i64 58 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.amz, i64 59 ; 3 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.amz, i64 8 ; 3 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.amz, i64 64 ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.alj, i64 16 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.alj, i64 58 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.alj, i64 8 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.alj, i64 64 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.alj, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.aqa, %i.aqe
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.avc = phi i32 [ %i.bcx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aur, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.avc, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aqd, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.avd = sdiv i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.ave = sext i32 %i.avd to i64
  %i.avf = getelementptr inbounds [8 x i8], ptr %i.apw, i64 %i.ave
  %i.avg = load i64, ptr %i.avf, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.avg, label %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avh = shl nsw i32 %i.avd, 6
  %i.avi = load ptr, ptr %i.aux, align 8, !tbaa !354, !noalias !3246
  %i.avj = load i8, ptr %i.auy, align 2, !tbaa !355, !range !125, !noalias !3246, !noundef !126
  %i.avk = trunc nuw i8 %i.avj to i1
  %i.avl = load ptr, ptr %i.aus, align 8, !tbaa !354, !noalias !3247
  %i.avm = load i8, ptr %i.aut, align 2, !tbaa !355, !range !125, !noalias !3247, !noundef !126
  %i.avn = trunc nuw i8 %i.avm to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avo = shl nsw i32 %i.avd, 6                  ; 6 uses
  %i.avp = add i32 %i.avo, 64
  %i.avq = sext i32 %i.avp to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i65 = add i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not89.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i65, 64
  br i1 %.not89.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avr = sext i32 %i.avo to i64                 ; 25 uses
  %i.avs = load ptr, ptr %i.aux, align 8, !tbaa !354, !noalias !3248 ; 11 uses
  %i.avt = ptrtoaddr ptr %i.avs to i64
  %i.avu = load i8, ptr %i.auy, align 2, !tbaa !355, !range !125, !noalias !3248, !noundef !126
  %i.avv = trunc nuw i8 %i.avu to i1
  %i.avw = load ptr, ptr %i.aus, align 8, !tbaa !354, !noalias !3249 ; 8 uses
  %i.avx = ptrtoaddr ptr %i.avw to i64
  %i.avy = load i8, ptr %i.aut, align 2, !tbaa !355, !range !125, !noalias !3249, !noundef !126
  %i.avz = trunc nuw i8 %i.avy to i1              ; 2 uses
  br i1 %i.avv, label %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.avz, label %iter.check, label %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.awa = or disjoint i64 %i.avr, 1
  %umax332 = call i64 @llvm.umax.i64(i64 %i.awa, i64 %i.avq) ; 2 uses
  %i.awb = sub i64 %umax332, %i.avr               ; 3 uses
  %min.iters.check = icmp ult i64 %i.awb, 4
  br i1 %min.iters.check, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.awc = or disjoint i64 %i.avr, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.awc, i64 %i.avq)
  %i.awd = xor i64 %i.avr, -1
  %i.awe = add i64 %umax, %i.awd                  ; 2 uses
  %i.awf = sext i32 %i.avo to i34                 ; 2 uses
  %i.awg = shl nsw i34 %i.awf, 2
  %i.awh = trunc i64 %i.awe to i34
  %i.awi = add i34 %i.awf, %i.awh
  %i.awj = shl i34 %i.awi, 2
  %i.awk = icmp slt i34 %i.awj, %i.awg
  %i.awl = icmp ugt i64 %i.awe, 4294967295
  %i.awm = or i1 %i.awk, %i.awl
  br i1 %i.awm, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awn = shl nsw i64 %i.avr, 2                  ; 2 uses
  %i.awo = add i64 %i.awn, %.sink.i.i330
  %i.awp = sext i32 %i.avo to i34
  %i.awq = shl nsw i34 %i.awp, 2
  %i.awr = sext i34 %i.awq to i64                 ; 2 uses
  %i.aws = add i64 %i.avt, %i.awr
  %i.awt = sub i64 %i.aws, %i.awo
  %diff.check = icmp ugt i64 %i.awt, -64
  %i.awu = add i64 %i.awn, %.sink.i.i330
  %i.awv = add i64 %i.avx, %i.awr
  %i.aww = sub i64 %i.awv, %i.awu
  %diff.check331 = icmp ugt i64 %i.aww, -64
  %conflict.rdx = or i1 %diff.check, %diff.check331
  br i1 %conflict.rdx, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check333 = icmp ult i64 %i.awb, 16
  %i.awx = and i64 %umax332, 1                    ; 3 uses
  %n.vec337 = sub i64 %i.awb, %i.awx              ; 3 uses
  %i.awy = add i64 %n.vec337, %i.avr              ; 2 uses
  br i1 %min.iters.check333, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.awz = add nuw i64 %index, %i.avr             ; 2 uses
  %i.axa = shl i64 %i.awz, 32
  %i.axb = ashr exact i64 %i.axa, 30              ; 2 uses
  %i.axc = getelementptr inbounds i8, ptr %i.avs, i64 %i.axb ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  %wide.load = load <8 x float>, ptr %i.axc, align 4, !tbaa !418, !noalias !3248
  %wide.load334 = load <8 x float>, ptr %i.axd, align 4, !tbaa !418, !noalias !3248
  %i.axe = getelementptr inbounds i8, ptr %i.avw, i64 %i.axb ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 32
  %wide.load335 = load <8 x float>, ptr %i.axe, align 4, !tbaa !418, !noalias !3249
  %wide.load336 = load <8 x float>, ptr %i.axf, align 4, !tbaa !418, !noalias !3249
  %i.axg = fmul <8 x float> %wide.load, %wide.load335
  %i.axh = fmul <8 x float> %wide.load334, %wide.load336
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.awz ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 32
  store <8 x float> %i.axg, ptr %i.axi, align 4, !tbaa !418
  store <8 x float> %i.axh, ptr %i.axj, align 4, !tbaa !418
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.axk = icmp eq i64 %index.next, %n.vec337
  br i1 %i.axk, label %middle.block, label %vector.body, !llvm.loop !3199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awx, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index338 = phi i64 [ %index.next341, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.axl = add nuw i64 %index338, %i.avr          ; 2 uses
  %i.axm = shl i64 %i.axl, 32
  %i.axn = ashr exact i64 %i.axm, 30              ; 2 uses
  %i.axo = getelementptr inbounds i8, ptr %i.avs, i64 %i.axn
  %wide.load339 = load <4 x float>, ptr %i.axo, align 4, !tbaa !418, !noalias !3248
  %i.axp = getelementptr inbounds i8, ptr %i.avw, i64 %i.axn
  %wide.load340 = load <4 x float>, ptr %i.axp, align 4, !tbaa !418, !noalias !3249
  %i.axq = fmul <4 x float> %wide.load339, %wide.load340
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.axl
  store <4 x float> %i.axq, ptr %i.axr, align 4, !tbaa !418
  %index.next341 = add nuw i64 %index338, 4       ; 2 uses
  %i.axs = icmp eq i64 %index.next341, %n.vec337
  br i1 %i.axs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n342 = icmp eq i64 %i.awx, 0
  br i1 %cmp.n342, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block, %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.awy, %middle.block ], [ %i.avr, %vector.scevcheck ], [ %i.avr, %vector.memcheck ], [ %i.avr, %iter.check ], [ %i.awy, %vec.epilog.middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aya, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext70.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axt = ashr exact i64 %sext70.i.i.i.i.i.i.i.i.i.i.i, 30 ; 2 uses
  %i.axu = getelementptr inbounds i8, ptr %i.avs, i64 %i.axt
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !418, !noalias !3248
  %i.axw = getelementptr inbounds i8, ptr %i.avw, i64 %i.axt
  %i.axx = load float, ptr %i.axw, align 4, !tbaa !418, !noalias !3249
  %i.axy = fmul float %i.axv, %i.axx
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store float %i.axy, ptr %i.axz, align 4, !tbaa !418
  %i.aya = add nuw i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ayb = icmp ult i64 %i.aya, %i.avq
  br i1 %i.ayb, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3201

.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.ayc = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noalias !3249, !noundef !126
  %i.ayd = trunc nuw i8 %i.ayc to i1
  br i1 %i.ayd, label %iter.check376, label %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check376:                                    ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.aye = load i32, ptr %i.auw, align 8, !tbaa !357, !noalias !3249
  %i.ayf = sext i32 %i.aye to i64                 ; 2 uses
  %i.ayg = getelementptr inbounds [4 x i8], ptr %i.avw, i64 %i.ayf ; 3 uses
  %i.ayh = or disjoint i64 %i.avr, 1
  %umax360 = call i64 @llvm.umax.i64(i64 %i.ayh, i64 %i.avq) ; 2 uses
  %i.ayi = sub i64 %umax360, %i.avr               ; 3 uses
  %min.iters.check361 = icmp ult i64 %i.ayi, 4
  br i1 %min.iters.check361, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck344

vector.scevcheck344:                              ; preds = %iter.check376
  %i.ayj = or disjoint i64 %i.avr, 1
  %umax345 = call i64 @llvm.umax.i64(i64 %i.ayj, i64 %i.avq)
  %i.ayk = xor i64 %i.avr, -1
  %i.ayl = add i64 %umax345, %i.ayk               ; 2 uses
  %i.aym = sext i32 %i.avo to i34                 ; 2 uses
  %i.ayn = shl nsw i34 %i.aym, 2
  %i.ayo = trunc i64 %i.ayl to i34
  %i.ayp = add i34 %i.aym, %i.ayo
  %i.ayq = shl i34 %i.ayp, 2
  %i.ayr = icmp slt i34 %i.ayq, %i.ayn
  %i.ays = icmp ugt i64 %i.ayl, 4294967295
  %i.ayt = or i1 %i.ayr, %i.ays
  br i1 %i.ayt, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck349

vector.memcheck349:                               ; preds = %vector.scevcheck344
  %i.ayu = shl nsw i64 %i.avr, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayu ; 2 uses
  %i.ayv = or disjoint i64 %i.avr, 1
  %umax350 = call i64 @llvm.umax.i64(i64 %i.ayv, i64 %i.avq)
  %i.ayw = shl nsw i64 %umax350, 2                ; 2 uses
  %scevgep351 = getelementptr i8, ptr %.sink.i.i, i64 %i.ayw ; 2 uses
  %scevgep352 = getelementptr i8, ptr %i.avw, i64 4
  %i.ayx = shl nsw i64 %i.ayf, 2
  %scevgep353 = getelementptr i8, ptr %scevgep352, i64 %i.ayx
  %i.ayy = sext i32 %i.avo to i34
  %i.ayz = shl nsw i34 %i.ayy, 2
  %i.aza = sext i34 %i.ayz to i64                 ; 2 uses
  %scevgep354 = getelementptr i8, ptr %i.avs, i64 %i.aza
  %i.azb = add i64 %i.ayw, %i.aza
  %i.azc = sub i64 %i.azb, %i.ayu
  %scevgep355 = getelementptr i8, ptr %i.avs, i64 %i.azc
  %bound0 = icmp ult ptr %scevgep, %scevgep353
  %bound1 = icmp ult ptr %i.ayg, %scevgep351
  %found.conflict = and i1 %bound0, %bound1
  %bound0356 = icmp ult ptr %scevgep, %scevgep355
  %bound1357 = icmp ult ptr %scevgep354, %scevgep351
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx359 = or i1 %found.conflict, %found.conflict358
  br i1 %conflict.rdx359, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check362

vector.main.loop.iter.check362:                   ; preds = %vector.memcheck349
  %min.iters.check363 = icmp ult i64 %i.ayi, 32
  %i.azd = and i64 %umax360, 1                    ; 3 uses
  %n.vec381 = sub i64 %i.ayi, %i.azd              ; 3 uses
  %i.aze = add i64 %n.vec381, %i.avr              ; 2 uses
  %i.azf = load float, ptr %i.ayg, align 4, !tbaa !418, !alias.scope !3250, !noalias !3249 ; 2 uses
  br i1 %min.iters.check363, label %vec.epilog.ph380, label %vector.ph364

vector.ph364:                                     ; preds = %vector.main.loop.iter.check362
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.azf, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.ph364, %vector.body366
  %index367 = phi i64 [ 0, %vector.ph364 ], [ %index.next372, %vector.body366 ] ; 2 uses
  %i.azg = add nuw i64 %index367, %i.avr          ; 2 uses
  %i.azh = shl i64 %i.azg, 32
  %i.azi = ashr exact i64 %i.azh, 30
  %i.azj = getelementptr inbounds i8, ptr %i.avs, i64 %i.azi ; 4 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 32
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azj, i64 64
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azj, i64 96
  %wide.load368 = load <8 x float>, ptr %i.azj, align 4, !tbaa !418, !alias.scope !3251, !noalias !3248
  %wide.load369 = load <8 x float>, ptr %i.azk, align 4, !tbaa !418, !alias.scope !3251, !noalias !3248
  %wide.load370 = load <8 x float>, ptr %i.azl, align 4, !tbaa !418, !alias.scope !3251, !noalias !3248
  %wide.load371 = load <8 x float>, ptr %i.azm, align 4, !tbaa !418, !alias.scope !3251, !noalias !3248
  %i.azn = fmul <8 x float> %wide.load368, %broadcast.splat
  %i.azo = fmul <8 x float> %wide.load369, %broadcast.splat
  %i.azp = fmul <8 x float> %wide.load370, %broadcast.splat
  %i.azq = fmul <8 x float> %wide.load371, %broadcast.splat
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.azg ; 4 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 32
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azr, i64 64
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azr, i64 96
  store <8 x float> %i.azn, ptr %i.azr, align 4, !tbaa !418, !alias.scope !3252, !noalias !3253
  store <8 x float> %i.azo, ptr %i.azs, align 4, !tbaa !418, !alias.scope !3252, !noalias !3253
  store <8 x float> %i.azp, ptr %i.azt, align 4, !tbaa !418, !alias.scope !3252, !noalias !3253
  store <8 x float> %i.azq, ptr %i.azu, align 4, !tbaa !418, !alias.scope !3252, !noalias !3253
  %index.next372 = add nuw i64 %index367, 32      ; 2 uses
  %i.azv = icmp eq i64 %index.next372, %n.vec381
  br i1 %i.azv, label %middle.block373, label %vector.body366, !llvm.loop !3206

middle.block373:                                  ; preds = %vector.body366
  %cmp.n374 = icmp eq i64 %i.azd, 0
  br i1 %cmp.n374, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph380:                                 ; preds = %vector.main.loop.iter.check362
  %broadcast.splatinsert385 = insertelement <4 x float> poison, float %i.azf, i64 0
  %broadcast.splat386 = shufflevector <4 x float> %broadcast.splatinsert385, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body382

vec.epilog.vector.body382:                        ; preds = %vec.epilog.vector.body382, %vec.epilog.ph380
  %index383 = phi i64 [ 0, %vec.epilog.ph380 ], [ %index.next387, %vec.epilog.vector.body382 ] ; 2 uses
  %i.azw = add nuw i64 %index383, %i.avr          ; 2 uses
  %i.azx = shl i64 %i.azw, 32
  %i.azy = ashr exact i64 %i.azx, 30
  %i.azz = getelementptr inbounds i8, ptr %i.avs, i64 %i.azy
  %wide.load384 = load <4 x float>, ptr %i.azz, align 4, !tbaa !418, !alias.scope !3251, !noalias !3248
  %i.baa = fmul <4 x float> %wide.load384, %broadcast.splat386
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.azw
  store <4 x float> %i.baa, ptr %i.bab, align 4, !tbaa !418, !alias.scope !3252, !noalias !3253
  %index.next387 = add nuw i64 %index383, 4       ; 2 uses
  %i.bac = icmp eq i64 %index.next387, %n.vec381
  br i1 %i.bac, label %vec.epilog.middle.block388, label %vec.epilog.vector.body382, !llvm.loop !3207

vec.epilog.middle.block388:                       ; preds = %vec.epilog.vector.body382
  %cmp.n389 = icmp eq i64 %i.azd, 0
  br i1 %cmp.n389, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block373, %iter.check376, %vector.scevcheck344, %vector.memcheck349, %vec.epilog.middle.block388
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.aze, %middle.block373 ], [ %i.avr, %vector.scevcheck344 ], [ %i.avr, %vector.memcheck349 ], [ %i.avr, %iter.check376 ], [ %i.aze, %vec.epilog.middle.block388 ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.baj, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bad = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bae = getelementptr inbounds i8, ptr %i.avs, i64 %i.bad
  %i.baf = load float, ptr %i.bae, align 4, !tbaa !418, !noalias !3248
  %i.bag = load float, ptr %i.ayg, align 4, !tbaa !418, !noalias !3249
  %i.bah = fmul float %i.baf, %i.bag
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i
  store float %i.bah, ptr %i.bai, align 4, !tbaa !418
  %i.baj = add nuw i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bak = icmp ult i64 %i.baj, %i.avq
  br i1 %i.bak, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3208

.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bal = load ptr, ptr %i.auv, align 8, !tbaa !358, !noalias !3249
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avr, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.baw, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bam = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30 ; 2 uses
  %i.ban = getelementptr inbounds i8, ptr %i.avs, i64 %i.bam
  %i.bao = load float, ptr %i.ban, align 4, !tbaa !418, !noalias !3248
  %i.bap = getelementptr inbounds i8, ptr %i.bal, i64 %i.bam
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !55, !noalias !3249
  %i.bar = sext i32 %i.baq to i64
  %i.bas = getelementptr inbounds [4 x i8], ptr %i.avw, i64 %i.bar
  %i.bat = load float, ptr %i.bas, align 4, !tbaa !418, !noalias !3249
  %i.bau = fmul float %i.bao, %i.bat
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i
  store float %i.bau, ptr %i.bav, align 4, !tbaa !418
  %i.baw = add nuw i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bax = icmp ult i64 %i.baw, %i.avq
  br i1 %i.bax, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3209

.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bay = load i8, ptr %i.avb, align 1, !tbaa !356, !range !125, !noalias !3248, !noundef !126
  %i.baz = trunc nuw i8 %i.bay to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avr, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbt, %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bba = trunc i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.baz, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bbb = load ptr, ptr %i.auz, align 8, !tbaa !358, !noalias !3248
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bbc = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bbd = getelementptr inbounds i8, ptr %i.bbb, i64 %i.bbc
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bbd, %bb.eb ], [ %i.ava, %bb.ea ]
  %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55, !noalias !3248
  %i.bbe = sext i32 %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbf = getelementptr inbounds [4 x i8], ptr %i.avs, i64 %i.bbe
  %i.bbg = load float, ptr %i.bbf, align 4, !tbaa !418, !noalias !3248
  br i1 %i.avz, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %i.bbh = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noalias !3249, !noundef !126
  %i.bbi = trunc nuw i8 %i.bbh to i1
  br i1 %i.bbi, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.bbj = load i32, ptr %i.auw, align 8, !tbaa !357, !noalias !3249
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bbk = load ptr, ptr %i.auv, align 8, !tbaa !358, !noalias !3249
  %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bbl = ashr exact i64 %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bbm = getelementptr inbounds i8, ptr %i.bbk, i64 %i.bbl
  %i.bbn = load i32, ptr %i.bbm, align 4, !tbaa !55, !noalias !3249
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbn, %bb.ee ], [ %i.bbj, %bb.ed ], [ %i.bba, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbo = sext i32 %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbp = getelementptr inbounds [4 x i8], ptr %i.avw, i64 %i.bbo
  %i.bbq = load float, ptr %i.bbp, align 4, !tbaa !418, !noalias !3249
  %i.bbr = fmul float %i.bbg, %i.bbq
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i
  store float %i.bbr, ptr %i.bbs, align 4, !tbaa !418
  %i.bbt = add nuw i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbu = icmp ult i64 %i.bbt, %i.avq
  br i1 %i.bbu, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3209

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i
  %.01586.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avg, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i ], [ %i.bcw, %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01586.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbw = trunc nuw nsw i64 %i.bbv to i32
  %i.bbx = or disjoint i32 %i.avh, %i.bbw         ; 3 uses
  %i.bby = sext i32 %i.bbx to i64                 ; 3 uses
  br i1 %i.avk, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bbz = load i8, ptr %i.avb, align 1, !tbaa !356, !range !125, !noalias !3246, !noundef !126
  %i.bca = trunc nuw i8 %i.bbz to i1
  br i1 %i.bca, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bcb = load i32, ptr %i.ava, align 8, !tbaa !357, !noalias !3246
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bcc = load ptr, ptr %i.auz, align 8, !tbaa !358, !noalias !3246
  %i.bcd = shl nsw i64 %i.bby, 2
  %i.bce = getelementptr inbounds i8, ptr %i.bcc, i64 %i.bcd
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !55, !noalias !3246
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bcf, %bb.ei ], [ %i.bcb, %bb.eh ], [ %i.bbx, %bb.ef ]
  %i.bcg = sext i32 %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i to i64
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.ark = load i32, ptr %i.aqv, align 8, !tbaa !357, !noalias !3483
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.arl = load ptr, ptr %i.aqu, align 8, !tbaa !358, !noalias !3483
  %i.arm = shl nsw i64 %i.arh, 2
  %i.arn = getelementptr inbounds i8, ptr %i.arl, i64 %i.arm
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !55, !noalias !3483
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aro, %bb.dm ], [ %i.ark, %bb.dl ], [ %i.arg, %bb.dj ]
  %i.arp = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.arq = getelementptr inbounds [8 x i8], ptr %i.aqp, i64 %i.arp
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !108, !noalias !3483
  br i1 %i.ara, label %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ars = load i8, ptr %i.arb, align 1, !tbaa !356, !range !125, !noalias !3484, !noundef !126
  %i.art = trunc nuw i8 %i.ars to i1
  br i1 %i.art, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aru = load i32, ptr %i.ard, align 8, !tbaa !357, !noalias !3484
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.arv = load ptr, ptr %i.arc, align 8, !tbaa !358, !noalias !3484
  %i.arw = shl nsw i64 %i.arh, 2
  %i.arx = getelementptr inbounds i8, ptr %i.arv, i64 %i.arw
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !55, !noalias !3484
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ary, %bb.dp ], [ %i.aru, %bb.do ], [ %i.arg, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.arz = sext i32 %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.asa = getelementptr inbounds [8 x i8], ptr %i.aqx, i64 %i.arz
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !108, !noalias !3484
  %i.asc = mul nsw i64 %i.asb, %i.arr
  %i.asd = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.arh
  store i64 %i.asc, ptr %i.asd, align 8, !tbaa !108
  %i.ase = add nsw i64 %.034.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asf = and i64 %i.ase, %.034.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %i.asf, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i69, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.dj, !llvm.loop !3428

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.apr, %i.apw
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.asg = sdiv i32 %i.apr, 64                    ; 2 uses
  %i.ash = sub nsw i32 %i.apw, %i.apr             ; 2 uses
  %i.asi = zext nneg i32 %i.ash to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.asi
  %i.asj = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.ask = sub nsw i32 64, %i.ash
  %i.asl = zext nneg i32 %i.ask to i64
  %i.asm = shl i64 %i.asj, %i.asl
  %i.asn = sext i32 %i.asg to i64
  %i.aso = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.asn
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !108
  %i.asq = and i64 %i.asp, %i.asm                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.asq, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.asr = shl nsw i32 %i.asg, 6
  %i.ass = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !354, !noalias !3485
  %i.asu = getelementptr inbounds nuw i8, ptr %i.alc, i64 58
  %i.asv = load i8, ptr %i.asu, align 2, !tbaa !355, !range !125, !noalias !3485, !noundef !126
  %i.asw = trunc nuw i8 %i.asv to i1
  %i.asx = getelementptr inbounds nuw i8, ptr %i.alc, i64 59
  %i.asy = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.asz = getelementptr inbounds nuw i8, ptr %i.alc, i64 64
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !354, !noalias !3486
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ams, i64 58
  %i.atd = load i8, ptr %i.atc, align 2, !tbaa !355, !range !125, !noalias !3486, !noundef !126
  %i.ate = trunc nuw i8 %i.atd to i1
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ams, i64 59
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.ams, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.034.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asq, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.auj, %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ati = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atj = trunc nuw nsw i64 %i.ati to i32
  %i.atk = or disjoint i32 %i.asr, %i.atj         ; 3 uses
  %i.atl = sext i32 %i.atk to i64                 ; 3 uses
  br i1 %i.asw, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.atm = load i8, ptr %i.asx, align 1, !tbaa !356, !range !125, !noalias !3485, !noundef !126
  %i.atn = trunc nuw i8 %i.atm to i1
  br i1 %i.atn, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ato = load i32, ptr %i.asz, align 8, !tbaa !357, !noalias !3485
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.atp = load ptr, ptr %i.asy, align 8, !tbaa !358, !noalias !3485
  %i.atq = shl nsw i64 %i.atl, 2
  %i.atr = getelementptr inbounds i8, ptr %i.atp, i64 %i.atq
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !55, !noalias !3485
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ats, %bb.dv ], [ %i.ato, %bb.du ], [ %i.atk, %bb.ds ]
  %i.att = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.atu = getelementptr inbounds [8 x i8], ptr %i.ast, i64 %i.att
  %i.atv = load i64, ptr %i.atu, align 8, !tbaa !108, !noalias !3485
  br i1 %i.ate, label %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.atw = load i8, ptr %i.atf, align 1, !tbaa !356, !range !125, !noalias !3486, !noundef !126
  %i.atx = trunc nuw i8 %i.atw to i1
  br i1 %i.atx, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aty = load i32, ptr %i.ath, align 8, !tbaa !357, !noalias !3486
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.atz = load ptr, ptr %i.atg, align 8, !tbaa !358, !noalias !3486
  %i.aua = shl nsw i64 %i.atl, 2
  %i.aub = getelementptr inbounds i8, ptr %i.atz, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !55, !noalias !3486
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auc, %bb.dy ], [ %i.aty, %bb.dx ], [ %i.atk, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aud = sext i32 %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aue = getelementptr inbounds [8 x i8], ptr %i.atb, i64 %i.aud
  %i.auf = load i64, ptr %i.aue, align 8, !tbaa !108, !noalias !3486
  %i.aug = mul nsw i64 %i.auf, %i.atv
  %i.auh = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.atl
  store i64 %i.aug, ptr %i.auh, align 8, !tbaa !108
  %i.aui = add i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.auj = and i64 %i.aui, %.034.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.auj, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !3428

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.auk = add nsw i32 %i.apw, 64                 ; 2 uses
  %.not3367.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.auk, %i.apx
  br i1 %.not3367.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ams, i64 16 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ams, i64 58 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.ams, i64 59 ; 3 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.ams, i64 8 ; 3 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.ams, i64 64 ; 3 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.alc, i64 16 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.alc, i64 58 ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.alc, i64 8 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.alc, i64 64 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.alc, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.apt, %i.apx
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.auv = phi i32 [ %i.bck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auk, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auv, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.apw, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.auw = sdiv i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.aux = sext i32 %i.auw to i64
  %i.auy = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.aux
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.auz, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.ava = shl nsw i32 %i.auw, 6
  %i.avb = load ptr, ptr %i.auq, align 8, !tbaa !354, !noalias !3487
  %i.avc = load i8, ptr %i.aur, align 2, !tbaa !355, !range !125, !noalias !3487, !noundef !126
  %i.avd = trunc nuw i8 %i.avc to i1
  %i.ave = load ptr, ptr %i.aul, align 8, !tbaa !354, !noalias !3488
  %i.avf = load i8, ptr %i.aum, align 2, !tbaa !355, !range !125, !noalias !3488, !noundef !126
  %i.avg = trunc nuw i8 %i.avf to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avh = shl nsw i32 %i.auw, 6                  ; 6 uses
  %i.avi = add i32 %i.avh, 64
  %i.avj = sext i32 %i.avi to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i65 = add i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not89.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i65, 64
  br i1 %.not89.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avk = sext i32 %i.avh to i64                 ; 24 uses
  %i.avl = load ptr, ptr %i.auq, align 8, !tbaa !354, !noalias !3489 ; 10 uses
  %i.avm = ptrtoaddr ptr %i.avl to i64
  %i.avn = load i8, ptr %i.aur, align 2, !tbaa !355, !range !125, !noalias !3489, !noundef !126
  %i.avo = trunc nuw i8 %i.avn to i1
  %i.avp = load ptr, ptr %i.aul, align 8, !tbaa !354, !noalias !3490 ; 7 uses
  %i.avq = ptrtoaddr ptr %i.avp to i64
  %i.avr = load i8, ptr %i.aum, align 2, !tbaa !355, !range !125, !noalias !3490, !noundef !126
  %i.avs = trunc nuw i8 %i.avr to i1              ; 2 uses
  br i1 %i.avo, label %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.avs, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.avt = or disjoint i64 %i.avk, 1
  %i.avu = call i64 @llvm.umax.i64(i64 %i.avt, i64 %i.avj) ; 2 uses
  %i.avv = sub i64 %i.avu, %i.avk                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.avv, 32
  br i1 %min.iters.check, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.avw = or disjoint i64 %i.avk, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.avw, i64 %i.avj)
  %i.avx = xor i64 %i.avk, -1
  %i.avy = add i64 %umax, %i.avx                  ; 2 uses
  %i.avz = sext i32 %i.avh to i35                 ; 2 uses
  %i.awa = shl nsw i35 %i.avz, 3
  %i.awb = trunc i64 %i.avy to i35
  %i.awc = add i35 %i.avz, %i.awb
  %i.awd = shl i35 %i.awc, 3
  %i.awe = icmp slt i35 %i.awd, %i.awa
  %i.awf = icmp ugt i64 %i.avy, 4294967295
  %i.awg = or i1 %i.awe, %i.awf
  br i1 %i.awg, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awh = shl nsw i64 %i.avk, 3                  ; 2 uses
  %i.awi = add i64 %i.awh, %.sink.i.i330
  %i.awj = sext i32 %i.avh to i35
  %i.awk = shl nsw i35 %i.awj, 3
  %i.awl = sext i35 %i.awk to i64                 ; 2 uses
  %i.awm = add i64 %i.avm, %i.awl
  %i.awn = sub i64 %i.awm, %i.awi
  %diff.check = icmp ugt i64 %i.awn, -64
  %i.awo = add i64 %i.awh, %.sink.i.i330
  %i.awp = add i64 %i.avq, %i.awl
  %i.awq = sub i64 %i.awp, %i.awo
  %diff.check331 = icmp ugt i64 %i.awq, -64
  %conflict.rdx = or i1 %diff.check, %diff.check331
  br i1 %conflict.rdx, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.awr = and i64 %i.avu, 1                      ; 2 uses
  %n.vec = sub i64 %i.avv, %i.awr                 ; 2 uses
  %i.aws = add i64 %n.vec, %i.avk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awt = add nuw i64 %index, %i.avk             ; 2 uses
  %i.awu = shl i64 %i.awt, 32
  %i.awv = ashr exact i64 %i.awu, 29              ; 2 uses
  %i.aww = getelementptr inbounds i8, ptr %i.avl, i64 %i.awv ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 32
  %wide.load = load <4 x i64>, ptr %i.aww, align 8, !tbaa !108, !noalias !3489
  %wide.load332 = load <4 x i64>, ptr %i.awx, align 8, !tbaa !108, !noalias !3489
  %i.awy = getelementptr inbounds i8, ptr %i.avp, i64 %i.awv ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 32
  %wide.load333 = load <4 x i64>, ptr %i.awy, align 8, !tbaa !108, !noalias !3490
  %wide.load334 = load <4 x i64>, ptr %i.awz, align 8, !tbaa !108, !noalias !3490
  %i.axa = mul nsw <4 x i64> %wide.load333, %wide.load
  %i.axb = mul nsw <4 x i64> %wide.load334, %wide.load332
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.awt ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  store <4 x i64> %i.axa, ptr %i.axc, align 8, !tbaa !108
  store <4 x i64> %i.axb, ptr %i.axd, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.axe = icmp eq i64 %index.next, %n.vec
  br i1 %i.axe, label %middle.block, label %vector.body, !llvm.loop !3441

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awr, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669: ; preds = %vector.memcheck, %vector.scevcheck, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.avk, %vector.memcheck ], [ %i.avk, %vector.scevcheck ], [ %i.avk, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aws, %middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axm, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669 ] ; 3 uses
  %sext70.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axf = ashr exact i64 %sext70.i.i.i.i.i.i.i.i.i.i.i, 29 ; 2 uses
  %i.axg = getelementptr inbounds i8, ptr %i.avl, i64 %i.axf
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !108, !noalias !3489
  %i.axi = getelementptr inbounds i8, ptr %i.avp, i64 %i.axf
  %i.axj = load i64, ptr %i.axi, align 8, !tbaa !108, !noalias !3490
  %i.axk = mul nsw i64 %i.axj, %i.axh
  %i.axl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.axk, ptr %i.axl, align 8, !tbaa !108
  %i.axm = add nuw i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axn = icmp ult i64 %i.axm, %i.avj
  br i1 %i.axn, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3442

.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.axo = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noalias !3490, !noundef !126
  %i.axp = trunc nuw i8 %i.axo to i1
  br i1 %i.axp, label %iter.check, label %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.axq = load i32, ptr %i.aup, align 8, !tbaa !357, !noalias !3490
  %i.axr = sext i32 %i.axq to i64                 ; 2 uses
  %i.axs = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.axr ; 3 uses
  %i.axt = or disjoint i64 %i.avk, 1
  %umax351 = call i64 @llvm.umax.i64(i64 %i.axt, i64 %i.avj) ; 2 uses
  %i.axu = sub i64 %umax351, %i.avk               ; 3 uses
  %min.iters.check353 = icmp ult i64 %i.axu, 4
  br i1 %min.iters.check353, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck335

vector.scevcheck335:                              ; preds = %iter.check
  %i.axv = or disjoint i64 %i.avk, 1
  %umax336 = call i64 @llvm.umax.i64(i64 %i.axv, i64 %i.avj)
  %i.axw = xor i64 %i.avk, -1
  %i.axx = add i64 %umax336, %i.axw               ; 2 uses
  %i.axy = sext i32 %i.avh to i35                 ; 2 uses
  %i.axz = shl nsw i35 %i.axy, 3
  %i.aya = trunc i64 %i.axx to i35
  %i.ayb = add i35 %i.axy, %i.aya
  %i.ayc = shl i35 %i.ayb, 3
  %i.ayd = icmp slt i35 %i.ayc, %i.axz
  %i.aye = icmp ugt i64 %i.axx, 4294967295
  %i.ayf = or i1 %i.ayd, %i.aye
  br i1 %i.ayf, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck340

vector.memcheck340:                               ; preds = %vector.scevcheck335
  %i.ayg = shl nsw i64 %i.avk, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayg ; 2 uses
  %i.ayh = or disjoint i64 %i.avk, 1
  %umax341 = call i64 @llvm.umax.i64(i64 %i.ayh, i64 %i.avj)
  %i.ayi = shl nsw i64 %umax341, 3                ; 2 uses
  %scevgep342 = getelementptr i8, ptr %.sink.i.i, i64 %i.ayi ; 2 uses
  %scevgep343 = getelementptr i8, ptr %i.avp, i64 8
  %i.ayj = shl nsw i64 %i.axr, 3
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.ayj
  %i.ayk = sext i32 %i.avh to i35
  %i.ayl = shl nsw i35 %i.ayk, 3
  %i.aym = sext i35 %i.ayl to i64                 ; 2 uses
  %scevgep345 = getelementptr i8, ptr %i.avl, i64 %i.aym
  %i.ayn = add i64 %i.ayi, %i.aym
  %i.ayo = sub i64 %i.ayn, %i.ayg
  %scevgep346 = getelementptr i8, ptr %i.avl, i64 %i.ayo
  %bound0 = icmp ult ptr %scevgep, %scevgep344
  %bound1 = icmp ult ptr %i.axs, %scevgep342
  %found.conflict = and i1 %bound0, %bound1
  %bound0347 = icmp ult ptr %scevgep, %scevgep346
  %bound1348 = icmp ult ptr %scevgep345, %scevgep342
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %found.conflict, %found.conflict349
  br i1 %conflict.rdx350, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck340
  %min.iters.check354 = icmp ult i64 %i.axu, 16
  %i.ayp = and i64 %umax351, 1                    ; 3 uses
  %n.vec367 = sub i64 %i.axu, %i.ayp              ; 3 uses
  %i.ayq = add i64 %n.vec367, %i.avk              ; 2 uses
  %i.ayr = load i64, ptr %i.axs, align 8, !tbaa !108, !alias.scope !3491, !noalias !3490
  %broadcast.splatinsert370 = insertelement <4 x i64> poison, i64 %i.ayr, i64 0
  %broadcast.splat371 = shufflevector <4 x i64> %broadcast.splatinsert370, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check354, label %vec.epilog.vector.body, label %vector.body357

vector.body357:                                   ; preds = %vector.main.loop.iter.check, %vector.body357
  %index358 = phi i64 [ %index.next363, %vector.body357 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ays = add nuw i64 %index358, %i.avk          ; 2 uses
  %i.ayt = shl i64 %i.ays, 32
  %i.ayu = ashr exact i64 %i.ayt, 29
  %i.ayv = getelementptr inbounds i8, ptr %i.avl, i64 %i.ayu ; 4 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 64
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 96
  %wide.load359 = load <4 x i64>, ptr %i.ayv, align 8, !tbaa !108, !alias.scope !3492, !noalias !3489
  %wide.load360 = load <4 x i64>, ptr %i.ayw, align 8, !tbaa !108, !alias.scope !3492, !noalias !3489
  %wide.load361 = load <4 x i64>, ptr %i.ayx, align 8, !tbaa !108, !alias.scope !3492, !noalias !3489
  %wide.load362 = load <4 x i64>, ptr %i.ayy, align 8, !tbaa !108, !alias.scope !3492, !noalias !3489
  %i.ayz = mul nsw <4 x i64> %broadcast.splat371, %wide.load359
  %i.aza = mul nsw <4 x i64> %broadcast.splat371, %wide.load360
  %i.azb = mul nsw <4 x i64> %broadcast.splat371, %wide.load361
  %i.azc = mul nsw <4 x i64> %broadcast.splat371, %wide.load362
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.ays ; 4 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 32
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azd, i64 64
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azd, i64 96
  store <4 x i64> %i.ayz, ptr %i.azd, align 8, !tbaa !108, !alias.scope !3493, !noalias !3494
  store <4 x i64> %i.aza, ptr %i.aze, align 8, !tbaa !108, !alias.scope !3493, !noalias !3494
  store <4 x i64> %i.azb, ptr %i.azf, align 8, !tbaa !108, !alias.scope !3493, !noalias !3494
  store <4 x i64> %i.azc, ptr %i.azg, align 8, !tbaa !108, !alias.scope !3493, !noalias !3494
  %index.next363 = add nuw i64 %index358, 16      ; 2 uses
  %i.azh = icmp eq i64 %index.next363, %n.vec367
  br i1 %i.azh, label %middle.block364, label %vector.body357, !llvm.loop !3447

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %i.ayp, 0
  br i1 %cmp.n365, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index368 = phi i64 [ %index.next372, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.azi = add nuw i64 %index368, %i.avk          ; 2 uses
  %i.azj = shl i64 %i.azi, 32
  %i.azk = ashr exact i64 %i.azj, 29
  %i.azl = getelementptr inbounds i8, ptr %i.avl, i64 %i.azk
  %wide.load369 = load <4 x i64>, ptr %i.azl, align 8, !tbaa !108, !alias.scope !3492, !noalias !3489
  %i.azm = mul nsw <4 x i64> %broadcast.splat371, %wide.load369
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.azi
  store <4 x i64> %i.azm, ptr %i.azn, align 8, !tbaa !108, !alias.scope !3493, !noalias !3494
  %index.next372 = add nuw i64 %index368, 4       ; 2 uses
  %i.azo = icmp eq i64 %index.next372, %n.vec367
  br i1 %i.azo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3448

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n373 = icmp eq i64 %i.ayp, 0
  br i1 %cmp.n373, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block364, %iter.check, %vector.scevcheck335, %vector.memcheck340, %vec.epilog.middle.block
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ayq, %middle.block364 ], [ %i.avk, %vector.scevcheck335 ], [ %i.avk, %vector.memcheck340 ], [ %i.avk, %iter.check ], [ %i.ayq, %vec.epilog.middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azv, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.azp = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azq = getelementptr inbounds i8, ptr %i.avl, i64 %i.azp
  %i.azr = load i64, ptr %i.azq, align 8, !tbaa !108, !noalias !3489
  %i.azs = load i64, ptr %i.axs, align 8, !tbaa !108, !noalias !3490
  %i.azt = mul nsw i64 %i.azs, %i.azr
  %i.azu = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.azt, ptr %i.azu, align 8, !tbaa !108
  %i.azv = add nuw i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.azw = icmp ult i64 %i.azv, %i.avj
  br i1 %i.azw, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3449

.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.azx = load ptr, ptr %i.auo, align 8, !tbaa !358, !noalias !3490
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.baj, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.azy = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azz = getelementptr inbounds i8, ptr %i.avl, i64 %i.azy
  %i.baa = load i64, ptr %i.azz, align 8, !tbaa !108, !noalias !3489
  %i.bab = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bac = getelementptr inbounds i8, ptr %i.azx, i64 %i.bab
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !55, !noalias !3490
  %i.bae = sext i32 %i.bad to i64
  %i.baf = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bae
  %i.bag = load i64, ptr %i.baf, align 8, !tbaa !108, !noalias !3490
  %i.bah = mul nsw i64 %i.bag, %i.baa
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bah, ptr %i.bai, align 8, !tbaa !108
  %i.baj = add nuw i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bak = icmp ult i64 %i.baj, %i.avj
  br i1 %i.bak, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3450

.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bal = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noalias !3489, !noundef !126
  %i.bam = trunc nuw i8 %i.bal to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbg, %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ban = trunc i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.bam, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bao = load ptr, ptr %i.aus, align 8, !tbaa !358, !noalias !3489
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bap = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.baq = getelementptr inbounds i8, ptr %i.bao, i64 %i.bap
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.baq, %bb.eb ], [ %i.aut, %bb.ea ]
  %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55, !noalias !3489
  %i.bar = sext i32 %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bas = getelementptr inbounds [8 x i8], ptr %i.avl, i64 %i.bar
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !108, !noalias !3489
  br i1 %i.avs, label %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %i.bau = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noalias !3490, !noundef !126
  %i.bav = trunc nuw i8 %i.bau to i1
  br i1 %i.bav, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.baw = load i32, ptr %i.aup, align 8, !tbaa !357, !noalias !3490
  br label %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bax = load ptr, ptr %i.auo, align 8, !tbaa !358, !noalias !3490
  %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bay = ashr exact i64 %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.baz = getelementptr inbounds i8, ptr %i.bax, i64 %i.bay
  %i.bba = load i32, ptr %i.baz, align 4, !tbaa !55, !noalias !3490
  br label %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bba, %bb.ee ], [ %i.baw, %bb.ed ], [ %i.ban, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbb = sext i32 %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbc = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bbb
  %i.bbd = load i64, ptr %i.bbc, align 8, !tbaa !108, !noalias !3490
  %i.bbe = mul nsw i64 %i.bbd, %i.bat
  %i.bbf = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bbe, ptr %i.bbf, align 8, !tbaa !108
  %i.bbg = add nuw i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbh = icmp ult i64 %i.bbg, %i.avj
  br i1 %i.bbh, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE7iterateIJNS3_12VectorReaderISE_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3450

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit63.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i
  %.01586.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.auz, %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i ], [ %i.bcj, %_ZN8facebook5velox6StatusD2Ev.exit63.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01586.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbj = trunc nuw nsw i64 %i.bbi to i32
  %i.bbk = or disjoint i32 %i.ava, %i.bbj         ; 3 uses
  %i.bbl = sext i32 %i.bbk to i64                 ; 3 uses
  br i1 %i.avd, label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bbm = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noalias !3487, !noundef !126
  %i.bbn = trunc nuw i8 %i.bbm to i1
  br i1 %i.bbn, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bbo = load i32, ptr %i.aut, align 8, !tbaa !357, !noalias !3487
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bbp = load ptr, ptr %i.aus, align 8, !tbaa !358, !noalias !3487
  %i.bbq = shl nsw i64 %i.bbl, 2
  %i.bbr = getelementptr inbounds i8, ptr %i.bbp, i64 %i.bbq
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !55, !noalias !3487
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbs, %bb.ei ], [ %i.bbo, %bb.eh ], [ %i.bbk, %bb.ef ]
  %i.bbt = sext i32 %.0.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbu = getelementptr inbounds [8 x i8], ptr %i.avb, i64 %i.bbt
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !108, !noalias !3487
  br i1 %i.avg, label %_ZN8facebook5velox6StatusD2Ev.exit63.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbw = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noalias !3488, !noundef !126
  %i.bbx = trunc nuw i8 %i.bbw to i1
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.ark = load i32, ptr %i.aqv, align 8, !tbaa !357, !noalias !3724
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.arl = load ptr, ptr %i.aqu, align 8, !tbaa !358, !noalias !3724
  %i.arm = shl nsw i64 %i.arh, 2
  %i.arn = getelementptr inbounds i8, ptr %i.arl, i64 %i.arm
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !55, !noalias !3724
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aro, %bb.dm ], [ %i.ark, %bb.dl ], [ %i.arg, %bb.dj ]
  %i.arp = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.arq = getelementptr inbounds [8 x i8], ptr %i.aqp, i64 %i.arp
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !108, !noalias !3724
  br i1 %i.ara, label %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ars = load i8, ptr %i.arb, align 1, !tbaa !356, !range !125, !noalias !3725, !noundef !126
  %i.art = trunc nuw i8 %i.ars to i1
  br i1 %i.art, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aru = load i32, ptr %i.ard, align 8, !tbaa !357, !noalias !3725
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.arv = load ptr, ptr %i.arc, align 8, !tbaa !358, !noalias !3725
  %i.arw = shl nsw i64 %i.arh, 2
  %i.arx = getelementptr inbounds i8, ptr %i.arv, i64 %i.arw
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !55, !noalias !3725
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ary, %bb.dp ], [ %i.aru, %bb.do ], [ %i.arg, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.arz = sext i32 %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.asa = getelementptr inbounds [8 x i8], ptr %i.aqx, i64 %i.arz
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !108, !noalias !3725
  %i.asc = mul nsw i64 %i.asb, %i.arr
  %i.asd = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.arh
  store i64 %i.asc, ptr %i.asd, align 8, !tbaa !108
  %i.ase = add nsw i64 %.034.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asf = and i64 %i.ase, %.034.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %i.asf, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i69, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.dj, !llvm.loop !3669

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.apr, %i.apw
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.asg = sdiv i32 %i.apr, 64                    ; 2 uses
  %i.ash = sub nsw i32 %i.apw, %i.apr             ; 2 uses
  %i.asi = zext nneg i32 %i.ash to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.asi
  %i.asj = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.ask = sub nsw i32 64, %i.ash
  %i.asl = zext nneg i32 %i.ask to i64
  %i.asm = shl i64 %i.asj, %i.asl
  %i.asn = sext i32 %i.asg to i64
  %i.aso = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.asn
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !108
  %i.asq = and i64 %i.asp, %i.asm                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.asq, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.asr = shl nsw i32 %i.asg, 6
  %i.ass = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !354, !noalias !3726
  %i.asu = getelementptr inbounds nuw i8, ptr %i.alc, i64 58
  %i.asv = load i8, ptr %i.asu, align 2, !tbaa !355, !range !125, !noalias !3726, !noundef !126
  %i.asw = trunc nuw i8 %i.asv to i1
  %i.asx = getelementptr inbounds nuw i8, ptr %i.alc, i64 59
  %i.asy = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.asz = getelementptr inbounds nuw i8, ptr %i.alc, i64 64
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !354, !noalias !3727
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ams, i64 58
  %i.atd = load i8, ptr %i.atc, align 2, !tbaa !355, !range !125, !noalias !3727, !noundef !126
  %i.ate = trunc nuw i8 %i.atd to i1
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ams, i64 59
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.ams, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.034.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asq, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.auj, %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ati = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.atj = trunc nuw nsw i64 %i.ati to i32
  %i.atk = or disjoint i32 %i.asr, %i.atj         ; 3 uses
  %i.atl = sext i32 %i.atk to i64                 ; 3 uses
  br i1 %i.asw, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.atm = load i8, ptr %i.asx, align 1, !tbaa !356, !range !125, !noalias !3726, !noundef !126
  %i.atn = trunc nuw i8 %i.atm to i1
  br i1 %i.atn, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ato = load i32, ptr %i.asz, align 8, !tbaa !357, !noalias !3726
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.atp = load ptr, ptr %i.asy, align 8, !tbaa !358, !noalias !3726
  %i.atq = shl nsw i64 %i.atl, 2
  %i.atr = getelementptr inbounds i8, ptr %i.atp, i64 %i.atq
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !55, !noalias !3726
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ats, %bb.dv ], [ %i.ato, %bb.du ], [ %i.atk, %bb.ds ]
  %i.att = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.atu = getelementptr inbounds [8 x i8], ptr %i.ast, i64 %i.att
  %i.atv = load i64, ptr %i.atu, align 8, !tbaa !108, !noalias !3726
  br i1 %i.ate, label %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.atw = load i8, ptr %i.atf, align 1, !tbaa !356, !range !125, !noalias !3727, !noundef !126
  %i.atx = trunc nuw i8 %i.atw to i1
  br i1 %i.atx, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aty = load i32, ptr %i.ath, align 8, !tbaa !357, !noalias !3727
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.atz = load ptr, ptr %i.atg, align 8, !tbaa !358, !noalias !3727
  %i.aua = shl nsw i64 %i.atl, 2
  %i.aub = getelementptr inbounds i8, ptr %i.atz, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !55, !noalias !3727
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auc, %bb.dy ], [ %i.aty, %bb.dx ], [ %i.atk, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aud = sext i32 %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aue = getelementptr inbounds [8 x i8], ptr %i.atb, i64 %i.aud
  %i.auf = load i64, ptr %i.aue, align 8, !tbaa !108, !noalias !3727
  %i.aug = mul nsw i64 %i.auf, %i.atv
  %i.auh = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.atl
  store i64 %i.aug, ptr %i.auh, align 8, !tbaa !108
  %i.aui = add i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.auj = and i64 %i.aui, %.034.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.auj, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !3669

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.auk = add nsw i32 %i.apw, 64                 ; 2 uses
  %.not3367.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.auk, %i.apx
  br i1 %.not3367.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ams, i64 16 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ams, i64 58 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.ams, i64 59 ; 3 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.ams, i64 8 ; 3 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.ams, i64 64 ; 3 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.alc, i64 16 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.alc, i64 58 ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.alc, i64 8 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.alc, i64 64 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.alc, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.apt, %i.apx
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.auv = phi i32 [ %i.bck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auk, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.auv, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.apw, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.auw = sdiv i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.aux = sext i32 %i.auw to i64
  %i.auy = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.aux
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.auz, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.ava = shl nsw i32 %i.auw, 6
  %i.avb = load ptr, ptr %i.auq, align 8, !tbaa !354, !noalias !3728
  %i.avc = load i8, ptr %i.aur, align 2, !tbaa !355, !range !125, !noalias !3728, !noundef !126
  %i.avd = trunc nuw i8 %i.avc to i1
  %i.ave = load ptr, ptr %i.aul, align 8, !tbaa !354, !noalias !3729
  %i.avf = load i8, ptr %i.aum, align 2, !tbaa !355, !range !125, !noalias !3729, !noundef !126
  %i.avg = trunc nuw i8 %i.avf to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.avh = shl nsw i32 %i.auw, 6                  ; 6 uses
  %i.avi = add i32 %i.avh, 64
  %i.avj = sext i32 %i.avi to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i65 = add i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not89.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i65, 64
  br i1 %.not89.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.avk = sext i32 %i.avh to i64                 ; 24 uses
  %i.avl = load ptr, ptr %i.auq, align 8, !tbaa !354, !noalias !3730 ; 10 uses
  %i.avm = ptrtoaddr ptr %i.avl to i64
  %i.avn = load i8, ptr %i.aur, align 2, !tbaa !355, !range !125, !noalias !3730, !noundef !126
  %i.avo = trunc nuw i8 %i.avn to i1
  %i.avp = load ptr, ptr %i.aul, align 8, !tbaa !354, !noalias !3731 ; 7 uses
  %i.avq = ptrtoaddr ptr %i.avp to i64
  %i.avr = load i8, ptr %i.aum, align 2, !tbaa !355, !range !125, !noalias !3731, !noundef !126
  %i.avs = trunc nuw i8 %i.avr to i1              ; 2 uses
  br i1 %i.avo, label %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.avs, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.avt = or disjoint i64 %i.avk, 1
  %i.avu = call i64 @llvm.umax.i64(i64 %i.avt, i64 %i.avj) ; 2 uses
  %i.avv = sub i64 %i.avu, %i.avk                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.avv, 32
  br i1 %min.iters.check, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.avw = or disjoint i64 %i.avk, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.avw, i64 %i.avj)
  %i.avx = xor i64 %i.avk, -1
  %i.avy = add i64 %umax, %i.avx                  ; 2 uses
  %i.avz = sext i32 %i.avh to i35                 ; 2 uses
  %i.awa = shl nsw i35 %i.avz, 3
  %i.awb = trunc i64 %i.avy to i35
  %i.awc = add i35 %i.avz, %i.awb
  %i.awd = shl i35 %i.awc, 3
  %i.awe = icmp slt i35 %i.awd, %i.awa
  %i.awf = icmp ugt i64 %i.avy, 4294967295
  %i.awg = or i1 %i.awe, %i.awf
  br i1 %i.awg, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awh = shl nsw i64 %i.avk, 3                  ; 2 uses
  %i.awi = add i64 %i.awh, %.sink.i.i330
  %i.awj = sext i32 %i.avh to i35
  %i.awk = shl nsw i35 %i.awj, 3
  %i.awl = sext i35 %i.awk to i64                 ; 2 uses
  %i.awm = add i64 %i.avm, %i.awl
  %i.awn = sub i64 %i.awm, %i.awi
  %diff.check = icmp ugt i64 %i.awn, -64
  %i.awo = add i64 %i.awh, %.sink.i.i330
  %i.awp = add i64 %i.avq, %i.awl
  %i.awq = sub i64 %i.awp, %i.awo
  %diff.check331 = icmp ugt i64 %i.awq, -64
  %conflict.rdx = or i1 %diff.check, %diff.check331
  br i1 %conflict.rdx, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.awr = and i64 %i.avu, 1                      ; 2 uses
  %n.vec = sub i64 %i.avv, %i.awr                 ; 2 uses
  %i.aws = add i64 %n.vec, %i.avk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awt = add nuw i64 %index, %i.avk             ; 2 uses
  %i.awu = shl i64 %i.awt, 32
  %i.awv = ashr exact i64 %i.awu, 29              ; 2 uses
  %i.aww = getelementptr inbounds i8, ptr %i.avl, i64 %i.awv ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 32
  %wide.load = load <4 x i64>, ptr %i.aww, align 8, !tbaa !108, !noalias !3730
  %wide.load332 = load <4 x i64>, ptr %i.awx, align 8, !tbaa !108, !noalias !3730
  %i.awy = getelementptr inbounds i8, ptr %i.avp, i64 %i.awv ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 32
  %wide.load333 = load <4 x i64>, ptr %i.awy, align 8, !tbaa !108, !noalias !3731
  %wide.load334 = load <4 x i64>, ptr %i.awz, align 8, !tbaa !108, !noalias !3731
  %i.axa = mul nsw <4 x i64> %wide.load333, %wide.load
  %i.axb = mul nsw <4 x i64> %wide.load334, %wide.load332
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.awt ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  store <4 x i64> %i.axa, ptr %i.axc, align 8, !tbaa !108
  store <4 x i64> %i.axb, ptr %i.axd, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.axe = icmp eq i64 %index.next, %n.vec
  br i1 %i.axe, label %middle.block, label %vector.body, !llvm.loop !3682

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awr, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669: ; preds = %vector.memcheck, %vector.scevcheck, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.avk, %vector.memcheck ], [ %i.avk, %vector.scevcheck ], [ %i.avk, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aws, %middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axm, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader669 ] ; 3 uses
  %sext70.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axf = ashr exact i64 %sext70.i.i.i.i.i.i.i.i.i.i.i, 29 ; 2 uses
  %i.axg = getelementptr inbounds i8, ptr %i.avl, i64 %i.axf
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !108, !noalias !3730
  %i.axi = getelementptr inbounds i8, ptr %i.avp, i64 %i.axf
  %i.axj = load i64, ptr %i.axi, align 8, !tbaa !108, !noalias !3731
  %i.axk = mul nsw i64 %i.axj, %i.axh
  %i.axl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.axk, ptr %i.axl, align 8, !tbaa !108
  %i.axm = add nuw i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axn = icmp ult i64 %i.axm, %i.avj
  br i1 %i.axn, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3683

.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.axo = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noalias !3731, !noundef !126
  %i.axp = trunc nuw i8 %i.axo to i1
  br i1 %i.axp, label %iter.check, label %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.axq = load i32, ptr %i.aup, align 8, !tbaa !357, !noalias !3731
  %i.axr = sext i32 %i.axq to i64                 ; 2 uses
  %i.axs = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.axr ; 3 uses
  %i.axt = or disjoint i64 %i.avk, 1
  %umax351 = call i64 @llvm.umax.i64(i64 %i.axt, i64 %i.avj) ; 2 uses
  %i.axu = sub i64 %umax351, %i.avk               ; 3 uses
  %min.iters.check353 = icmp ult i64 %i.axu, 4
  br i1 %min.iters.check353, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck335

vector.scevcheck335:                              ; preds = %iter.check
  %i.axv = or disjoint i64 %i.avk, 1
  %umax336 = call i64 @llvm.umax.i64(i64 %i.axv, i64 %i.avj)
  %i.axw = xor i64 %i.avk, -1
  %i.axx = add i64 %umax336, %i.axw               ; 2 uses
  %i.axy = sext i32 %i.avh to i35                 ; 2 uses
  %i.axz = shl nsw i35 %i.axy, 3
  %i.aya = trunc i64 %i.axx to i35
  %i.ayb = add i35 %i.axy, %i.aya
  %i.ayc = shl i35 %i.ayb, 3
  %i.ayd = icmp slt i35 %i.ayc, %i.axz
  %i.aye = icmp ugt i64 %i.axx, 4294967295
  %i.ayf = or i1 %i.ayd, %i.aye
  br i1 %i.ayf, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck340

vector.memcheck340:                               ; preds = %vector.scevcheck335
  %i.ayg = shl nsw i64 %i.avk, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.ayg ; 2 uses
  %i.ayh = or disjoint i64 %i.avk, 1
  %umax341 = call i64 @llvm.umax.i64(i64 %i.ayh, i64 %i.avj)
  %i.ayi = shl nsw i64 %umax341, 3                ; 2 uses
  %scevgep342 = getelementptr i8, ptr %.sink.i.i, i64 %i.ayi ; 2 uses
  %scevgep343 = getelementptr i8, ptr %i.avp, i64 8
  %i.ayj = shl nsw i64 %i.axr, 3
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.ayj
  %i.ayk = sext i32 %i.avh to i35
  %i.ayl = shl nsw i35 %i.ayk, 3
  %i.aym = sext i35 %i.ayl to i64                 ; 2 uses
  %scevgep345 = getelementptr i8, ptr %i.avl, i64 %i.aym
  %i.ayn = add i64 %i.ayi, %i.aym
  %i.ayo = sub i64 %i.ayn, %i.ayg
  %scevgep346 = getelementptr i8, ptr %i.avl, i64 %i.ayo
  %bound0 = icmp ult ptr %scevgep, %scevgep344
  %bound1 = icmp ult ptr %i.axs, %scevgep342
  %found.conflict = and i1 %bound0, %bound1
  %bound0347 = icmp ult ptr %scevgep, %scevgep346
  %bound1348 = icmp ult ptr %scevgep345, %scevgep342
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %found.conflict, %found.conflict349
  br i1 %conflict.rdx350, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck340
  %min.iters.check354 = icmp ult i64 %i.axu, 16
  %i.ayp = and i64 %umax351, 1                    ; 3 uses
  %n.vec367 = sub i64 %i.axu, %i.ayp              ; 3 uses
  %i.ayq = add i64 %n.vec367, %i.avk              ; 2 uses
  %i.ayr = load i64, ptr %i.axs, align 8, !tbaa !108, !alias.scope !3732, !noalias !3731
  %broadcast.splatinsert370 = insertelement <4 x i64> poison, i64 %i.ayr, i64 0
  %broadcast.splat371 = shufflevector <4 x i64> %broadcast.splatinsert370, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check354, label %vec.epilog.vector.body, label %vector.body357

vector.body357:                                   ; preds = %vector.main.loop.iter.check, %vector.body357
  %index358 = phi i64 [ %index.next363, %vector.body357 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ays = add nuw i64 %index358, %i.avk          ; 2 uses
  %i.ayt = shl i64 %i.ays, 32
  %i.ayu = ashr exact i64 %i.ayt, 29
  %i.ayv = getelementptr inbounds i8, ptr %i.avl, i64 %i.ayu ; 4 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 64
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 96
  %wide.load359 = load <4 x i64>, ptr %i.ayv, align 8, !tbaa !108, !alias.scope !3733, !noalias !3730
  %wide.load360 = load <4 x i64>, ptr %i.ayw, align 8, !tbaa !108, !alias.scope !3733, !noalias !3730
  %wide.load361 = load <4 x i64>, ptr %i.ayx, align 8, !tbaa !108, !alias.scope !3733, !noalias !3730
  %wide.load362 = load <4 x i64>, ptr %i.ayy, align 8, !tbaa !108, !alias.scope !3733, !noalias !3730
  %i.ayz = mul nsw <4 x i64> %broadcast.splat371, %wide.load359
  %i.aza = mul nsw <4 x i64> %broadcast.splat371, %wide.load360
  %i.azb = mul nsw <4 x i64> %broadcast.splat371, %wide.load361
  %i.azc = mul nsw <4 x i64> %broadcast.splat371, %wide.load362
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.ays ; 4 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 32
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azd, i64 64
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azd, i64 96
  store <4 x i64> %i.ayz, ptr %i.azd, align 8, !tbaa !108, !alias.scope !3734, !noalias !3735
  store <4 x i64> %i.aza, ptr %i.aze, align 8, !tbaa !108, !alias.scope !3734, !noalias !3735
  store <4 x i64> %i.azb, ptr %i.azf, align 8, !tbaa !108, !alias.scope !3734, !noalias !3735
  store <4 x i64> %i.azc, ptr %i.azg, align 8, !tbaa !108, !alias.scope !3734, !noalias !3735
  %index.next363 = add nuw i64 %index358, 16      ; 2 uses
  %i.azh = icmp eq i64 %index.next363, %n.vec367
  br i1 %i.azh, label %middle.block364, label %vector.body357, !llvm.loop !3688

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %i.ayp, 0
  br i1 %cmp.n365, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index368 = phi i64 [ %index.next372, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.azi = add nuw i64 %index368, %i.avk          ; 2 uses
  %i.azj = shl i64 %i.azi, 32
  %i.azk = ashr exact i64 %i.azj, 29
  %i.azl = getelementptr inbounds i8, ptr %i.avl, i64 %i.azk
  %wide.load369 = load <4 x i64>, ptr %i.azl, align 8, !tbaa !108, !alias.scope !3733, !noalias !3730
  %i.azm = mul nsw <4 x i64> %broadcast.splat371, %wide.load369
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.azi
  store <4 x i64> %i.azm, ptr %i.azn, align 8, !tbaa !108, !alias.scope !3734, !noalias !3735
  %index.next372 = add nuw i64 %index368, 4       ; 2 uses
  %i.azo = icmp eq i64 %index.next372, %n.vec367
  br i1 %i.azo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3689

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n373 = icmp eq i64 %i.ayp, 0
  br i1 %cmp.n373, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block364, %iter.check, %vector.scevcheck335, %vector.memcheck340, %vec.epilog.middle.block
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ayq, %middle.block364 ], [ %i.avk, %vector.scevcheck335 ], [ %i.avk, %vector.memcheck340 ], [ %i.avk, %iter.check ], [ %i.ayq, %vec.epilog.middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azv, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.azp = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azq = getelementptr inbounds i8, ptr %i.avl, i64 %i.azp
  %i.azr = load i64, ptr %i.azq, align 8, !tbaa !108, !noalias !3730
  %i.azs = load i64, ptr %i.axs, align 8, !tbaa !108, !noalias !3731
  %i.azt = mul nsw i64 %i.azs, %i.azr
  %i.azu = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.azt, ptr %i.azu, align 8, !tbaa !108
  %i.azv = add nuw i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.azw = icmp ult i64 %i.azv, %i.avj
  br i1 %i.azw, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3690

.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.azx = load ptr, ptr %i.auo, align 8, !tbaa !358, !noalias !3731
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.baj, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.azy = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.azz = getelementptr inbounds i8, ptr %i.avl, i64 %i.azy
  %i.baa = load i64, ptr %i.azz, align 8, !tbaa !108, !noalias !3730
  %i.bab = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.bac = getelementptr inbounds i8, ptr %i.azx, i64 %i.bab
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !55, !noalias !3731
  %i.bae = sext i32 %i.bad to i64
  %i.baf = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bae
  %i.bag = load i64, ptr %i.baf, align 8, !tbaa !108, !noalias !3731
  %i.bah = mul nsw i64 %i.bag, %i.baa
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bah, ptr %i.bai, align 8, !tbaa !108
  %i.baj = add nuw i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bak = icmp ult i64 %i.baj, %i.avj
  br i1 %i.bak, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3691

.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bal = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noalias !3730, !noundef !126
  %i.bam = trunc nuw i8 %i.bal to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbg, %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ban = trunc i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.bam, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bao = load ptr, ptr %i.aus, align 8, !tbaa !358, !noalias !3730
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bap = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.baq = getelementptr inbounds i8, ptr %i.bao, i64 %i.bap
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.baq, %bb.eb ], [ %i.aut, %bb.ea ]
  %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55, !noalias !3730
  %i.bar = sext i32 %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bas = getelementptr inbounds [8 x i8], ptr %i.avl, i64 %i.bar
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !108, !noalias !3730
  br i1 %i.avs, label %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %i.bau = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noalias !3731, !noundef !126
  %i.bav = trunc nuw i8 %i.bau to i1
  br i1 %i.bav, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.baw = load i32, ptr %i.aup, align 8, !tbaa !357, !noalias !3731
  br label %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.bax = load ptr, ptr %i.auo, align 8, !tbaa !358, !noalias !3731
  %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.bay = ashr exact i64 %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.baz = getelementptr inbounds i8, ptr %i.bax, i64 %i.bay
  %i.bba = load i32, ptr %i.baz, align 4, !tbaa !55, !noalias !3731
  br label %_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit38.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bba, %bb.ee ], [ %i.baw, %bb.ed ], [ %i.ban, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbb = sext i32 %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbc = getelementptr inbounds [8 x i8], ptr %i.avp, i64 %i.bbb
  %i.bbd = load i64, ptr %i.bbc, align 8, !tbaa !108, !noalias !3731
  %i.bbe = mul nsw i64 %i.bbd, %i.bat
  %i.bbf = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bbe, ptr %i.bbf, align 8, !tbaa !108
  %i.bbg = add nuw i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbh = icmp ult i64 %i.bbg, %i.avj
  br i1 %i.bbh, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSE_EEEJlSE_EEEE7iterateIJNS3_12VectorReaderIlEENSK_ISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3691

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit63.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i
  %.01586.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.auz, %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i ], [ %i.bcj, %_ZN8facebook5velox6StatusD2Ev.exit63.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bbi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01586.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbj = trunc nuw nsw i64 %i.bbi to i32
  %i.bbk = or disjoint i32 %i.ava, %i.bbj         ; 3 uses
  %i.bbl = sext i32 %i.bbk to i64                 ; 3 uses
  br i1 %i.avd, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bbm = load i8, ptr %i.auu, align 1, !tbaa !356, !range !125, !noalias !3728, !noundef !126
  %i.bbn = trunc nuw i8 %i.bbm to i1
  br i1 %i.bbn, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bbo = load i32, ptr %i.aut, align 8, !tbaa !357, !noalias !3728
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bbp = load ptr, ptr %i.aus, align 8, !tbaa !358, !noalias !3728
  %i.bbq = shl nsw i64 %i.bbl, 2
  %i.bbr = getelementptr inbounds i8, ptr %i.bbp, i64 %i.bbq
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !55, !noalias !3728
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbs, %bb.ei ], [ %i.bbo, %bb.eh ], [ %i.bbk, %bb.ef ]
  %i.bbt = sext i32 %.0.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbu = getelementptr inbounds [8 x i8], ptr %i.avb, i64 %i.bbt
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !108, !noalias !3728
  br i1 %i.avg, label %_ZN8facebook5velox6StatusD2Ev.exit63.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit48.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbw = load i8, ptr %i.aun, align 1, !tbaa !356, !range !125, !noalias !3729, !noundef !126
  %i.bbx = trunc nuw i8 %i.bbw to i1
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.aog = load i32, ptr %i.anr, align 8, !tbaa !357
  br label %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.aoh = load ptr, ptr %i.anq, align 8, !tbaa !358
  %i.aoi = shl nsw i64 %i.aod, 2
  %i.aoj = getelementptr inbounds i8, ptr %i.aoh, i64 %i.aoi
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !55
  br label %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i

.noexc12.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aok, %bb.dm ], [ %i.aog, %bb.dl ], [ %i.aoc, %bb.dj ]
  %i.aol = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aom = getelementptr inbounds [8 x i8], ptr %i.anl, i64 %i.aol
  %i.aon = load double, ptr %i.aom, align 8, !tbaa !310
  br i1 %i.anw, label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aoo = load i8, ptr %i.anx, align 1, !tbaa !356, !range !125, !noundef !126
  %i.aop = trunc nuw i8 %i.aoo to i1
  br i1 %i.aop, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aoq = load i32, ptr %i.anz, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.aor = load ptr, ptr %i.any, align 8, !tbaa !358
  %i.aos = shl nsw i64 %i.aod, 2
  %i.aot = getelementptr inbounds i8, ptr %i.aor, i64 %i.aos
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aou, %bb.dp ], [ %i.aoq, %bb.do ], [ %i.aoc, %.noexc12.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aov = sext i32 %.0.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aow = getelementptr inbounds [8 x i8], ptr %i.ant, i64 %i.aov
  %i.aox = load double, ptr %i.aow, align 8, !tbaa !310
  %i.aoy = fdiv double %i.aon, %i.aox
  %i.aoz = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.aod
  store double %i.aoy, ptr %i.aoz, align 8, !tbaa !310
  %i.apa = add nsw i64 %.036.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.apb = and i64 %i.apa, %.036.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i73 = icmp eq i64 %i.apb, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i73, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.dj, !llvm.loop !5187

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.amn, %i.ams
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.apc = sdiv i32 %i.amn, 64                    ; 2 uses
  %i.apd = sub nsw i32 %i.ams, %i.amn             ; 2 uses
  %i.ape = zext nneg i32 %i.apd to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.ape
  %i.apf = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.apg = sub nsw i32 64, %i.apd
  %i.aph = zext nneg i32 %i.apg to i64
  %i.api = shl i64 %i.apf, %i.aph
  %i.apj = sext i32 %i.apc to i64
  %i.apk = getelementptr inbounds [8 x i8], ptr %i.aml, i64 %i.apj
  %i.apl = load i64, ptr %i.apk, align 8, !tbaa !108
  %i.apm = and i64 %i.apl, %i.api                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.apm, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.apn = shl nsw i32 %i.apc, 6
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !354
  %i.apq = getelementptr inbounds nuw i8, ptr %i.ahy, i64 58
  %i.apr = load i8, ptr %i.apq, align 2, !tbaa !355, !range !125, !noundef !126
  %i.aps = trunc nuw i8 %i.apr to i1
  %i.apt = getelementptr inbounds nuw i8, ptr %i.ahy, i64 59
  %i.apu = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ahy, i64 64
  %i.apw = getelementptr inbounds nuw i8, ptr %i.ajo, i64 16
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !354
  %i.apy = getelementptr inbounds nuw i8, ptr %i.ajo, i64 58
  %i.apz = load i8, ptr %i.apy, align 2, !tbaa !355, !range !125, !noundef !126
  %i.aqa = trunc nuw i8 %i.apz to i1
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.ajo, i64 59
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.ajo, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.036.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.apm, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.arf, %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aqe = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.036.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aqf = trunc nuw nsw i64 %i.aqe to i32
  %i.aqg = or disjoint i32 %i.apn, %i.aqf         ; 3 uses
  %i.aqh = sext i32 %i.aqg to i64                 ; 3 uses
  br i1 %i.aps, label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aqi = load i8, ptr %i.apt, align 1, !tbaa !356, !range !125, !noundef !126
  %i.aqj = trunc nuw i8 %i.aqi to i1
  br i1 %i.aqj, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.aqk = load i32, ptr %i.apv, align 8, !tbaa !357
  br label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.aql = load ptr, ptr %i.apu, align 8, !tbaa !358
  %i.aqm = shl nsw i64 %i.aqh, 2
  %i.aqn = getelementptr inbounds i8, ptr %i.aql, i64 %i.aqm
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !55
  br label %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i

.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aqo, %bb.dv ], [ %i.aqk, %bb.du ], [ %i.aqg, %bb.ds ]
  %i.aqp = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aqq = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.aqp
  %i.aqr = load double, ptr %i.aqq, align 8, !tbaa !310
  br i1 %i.aqa, label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.aqs = load i8, ptr %i.aqb, align 1, !tbaa !356, !range !125, !noundef !126
  %i.aqt = trunc nuw i8 %i.aqs to i1
  br i1 %i.aqt, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aqu = load i32, ptr %i.aqd, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.aqv = load ptr, ptr %i.aqc, align 8, !tbaa !358
  %i.aqw = shl nsw i64 %i.aqh, 2
  %i.aqx = getelementptr inbounds i8, ptr %i.aqv, i64 %i.aqw
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aqy, %bb.dy ], [ %i.aqu, %bb.dx ], [ %i.aqg, %.noexc12.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aqz = sext i32 %.0.i.i.i17.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ara = getelementptr inbounds [8 x i8], ptr %i.apx, i64 %i.aqz
  %i.arb = load double, ptr %i.ara, align 8, !tbaa !310
  %i.arc = fdiv double %i.aqr, %i.arb
  %i.ard = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.aqh
  store double %i.arc, ptr %i.ard, align 8, !tbaa !310
  %i.are = add i64 %.036.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.arf = and i64 %i.are, %.036.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.arf, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !5187

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.arg = add nsw i32 %i.ams, 64                 ; 2 uses
  %.not3366.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.arg, %i.amt
  br i1 %.not3366.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.arh = getelementptr inbounds nuw i8, ptr %i.ajo, i64 16 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.ajo, i64 58 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ajo, i64 59 ; 3 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8 ; 3 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ajo, i64 64 ; 3 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ahy, i64 58 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8 ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ahy, i64 64 ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.ahy, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.amp, %i.amt
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.arr = phi i32 [ %i.ayn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.arg, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.067.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.arr, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ams, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ars = sdiv i32 %.067.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.art = sext i32 %i.ars to i64
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.aml, i64 %i.art
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.arv, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.arw = shl nsw i32 %i.ars, 6
  %i.arx = load ptr, ptr %i.arm, align 8, !tbaa !354
  %i.ary = load i8, ptr %i.arn, align 2, !tbaa !355, !range !125, !noundef !126
  %i.arz = trunc nuw i8 %i.ary to i1
  %i.asa = load ptr, ptr %i.arh, align 8, !tbaa !354
  %i.asb = load i8, ptr %i.ari, align 2, !tbaa !355, !range !125, !noundef !126
  %i.asc = trunc nuw i8 %i.asb to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.asd = shl nsw i32 %i.ars, 6                  ; 6 uses
  %i.ase = add i32 %i.asd, 64
  %i.asf = sext i32 %i.ase to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i68 = add i32 %.067.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not93.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i68, 64
  br i1 %.not93.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.asg = sext i32 %i.asd to i64                 ; 23 uses
  %i.ash = load ptr, ptr %i.arm, align 8, !tbaa !354 ; 9 uses
  %i.asi = ptrtoaddr ptr %i.ash to i64
  %i.asj = load i8, ptr %i.arn, align 2, !tbaa !355, !range !125, !noundef !126
  %i.ask = trunc nuw i8 %i.asj to i1
  %i.asl = load ptr, ptr %i.arh, align 8, !tbaa !354 ; 7 uses
  %i.asm = ptrtoaddr ptr %i.asl to i64
  %i.asn = load i8, ptr %i.ari, align 2, !tbaa !355, !range !125, !noundef !126
  %i.aso = trunc nuw i8 %i.asn to i1              ; 2 uses
  br i1 %i.ask, label %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aso, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.asp = or disjoint i64 %i.asg, 1
  %i.asq = call i64 @llvm.umax.i64(i64 %i.asp, i64 %i.asf) ; 2 uses
  %i.asr = sub i64 %i.asq, %i.asg                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.asr, 16
  br i1 %min.iters.check, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader537, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ass = or disjoint i64 %i.asg, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ass, i64 %i.asf)
  %i.ast = xor i64 %i.asg, -1
  %i.asu = add i64 %umax, %i.ast                  ; 2 uses
  %i.asv = sext i32 %i.asd to i35                 ; 2 uses
  %i.asw = shl nsw i35 %i.asv, 3
  %i.asx = trunc i64 %i.asu to i35
  %i.asy = add i35 %i.asv, %i.asx
  %i.asz = shl i35 %i.asy, 3
  %i.ata = icmp slt i35 %i.asz, %i.asw
  %i.atb = icmp ugt i64 %i.asu, 4294967295
  %i.atc = or i1 %i.ata, %i.atb
  br i1 %i.atc, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader537, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.atd = shl nsw i64 %i.asg, 3                  ; 2 uses
  %i.ate = add i64 %i.atd, %.sink.i.i333
  %i.atf = sext i32 %i.asd to i35
  %i.atg = shl nsw i35 %i.atf, 3
  %i.ath = sext i35 %i.atg to i64                 ; 2 uses
  %i.ati = add i64 %i.asi, %i.ath
  %i.atj = sub i64 %i.ati, %i.ate
  %diff.check = icmp ugt i64 %i.atj, -32
  %i.atk = add i64 %i.atd, %.sink.i.i333
  %i.atl = add i64 %i.asm, %i.ath
  %i.atm = sub i64 %i.atl, %i.atk
  %diff.check334 = icmp ugt i64 %i.atm, -32
  %conflict.rdx = or i1 %diff.check, %diff.check334
  br i1 %conflict.rdx, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader537, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.atn = and i64 %i.asq, 1                      ; 2 uses
  %n.vec = sub i64 %i.asr, %i.atn                 ; 2 uses
  %i.ato = add i64 %n.vec, %i.asg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.atp = add nuw i64 %index, %i.asg             ; 2 uses
  %i.atq = shl i64 %i.atp, 32
  %i.atr = ashr exact i64 %i.atq, 29              ; 2 uses
  %i.ats = getelementptr inbounds i8, ptr %i.ash, i64 %i.atr
  %wide.load = load <4 x double>, ptr %i.ats, align 8, !tbaa !310
  %i.att = getelementptr inbounds i8, ptr %i.asl, i64 %i.atr
  %wide.load335 = load <4 x double>, ptr %i.att, align 8, !tbaa !310
  %i.atu = fdiv <4 x double> %wide.load, %wide.load335
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.atp
  store <4 x double> %i.atu, ptr %i.atv, align 8, !tbaa !310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.atw = icmp eq i64 %index.next, %n.vec
  br i1 %i.atw, label %middle.block, label %vector.body, !llvm.loop !5188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.atn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader537

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader537: ; preds = %vector.memcheck, %vector.scevcheck, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.asg, %vector.memcheck ], [ %i.asg, %vector.scevcheck ], [ %i.asg, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ato, %middle.block ]
  br label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader537, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aue, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader537 ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.atx = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 29 ; 2 uses
  %i.aty = getelementptr inbounds i8, ptr %i.ash, i64 %i.atx
  %i.atz = load double, ptr %i.aty, align 8, !tbaa !310
  %i.aua = getelementptr inbounds i8, ptr %i.asl, i64 %i.atx
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !310
  %i.auc = fdiv double %i.atz, %i.aub
  %i.aud = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store double %i.auc, ptr %i.aud, align 8, !tbaa !310
  %i.aue = add nuw i64 %.091.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.auf = icmp ult i64 %i.aue, %i.asf
  br i1 %i.auf, label %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5189

.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph92.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.aug = load i8, ptr %i.arj, align 1, !tbaa !356, !range !125, !noundef !126
  %i.auh = trunc nuw i8 %i.aug to i1
  br i1 %i.auh, label %.lr.ph92.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph92.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.aui = load i32, ptr %i.arl, align 8, !tbaa !357
  %i.auj = sext i32 %i.aui to i64                 ; 2 uses
  %i.auk = getelementptr inbounds [8 x i8], ptr %i.asl, i64 %i.auj ; 3 uses
  %i.aul = or disjoint i64 %i.asg, 1
  %i.aum = call i64 @llvm.umax.i64(i64 %i.aul, i64 %i.asf) ; 2 uses
  %i.aun = sub i64 %i.aum, %i.asg                 ; 2 uses
  %min.iters.check353 = icmp ult i64 %i.aun, 16
  br i1 %min.iters.check353, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck336

vector.scevcheck336:                              ; preds = %.lr.ph92.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.auo = or disjoint i64 %i.asg, 1
  %umax337 = call i64 @llvm.umax.i64(i64 %i.auo, i64 %i.asf)
  %i.aup = xor i64 %i.asg, -1
  %i.auq = add i64 %umax337, %i.aup               ; 2 uses
  %i.aur = sext i32 %i.asd to i35                 ; 2 uses
  %i.aus = shl nsw i35 %i.aur, 3
  %i.aut = trunc i64 %i.auq to i35
  %i.auu = add i35 %i.aur, %i.aut
  %i.auv = shl i35 %i.auu, 3
  %i.auw = icmp slt i35 %i.auv, %i.aus
  %i.aux = icmp ugt i64 %i.auq, 4294967295
  %i.auy = or i1 %i.auw, %i.aux
  br i1 %i.auy, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck341

vector.memcheck341:                               ; preds = %vector.scevcheck336
  %i.auz = shl nsw i64 %i.asg, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.auz ; 2 uses
  %i.ava = or disjoint i64 %i.asg, 1
  %umax342 = call i64 @llvm.umax.i64(i64 %i.ava, i64 %i.asf)
  %i.avb = shl nsw i64 %umax342, 3                ; 2 uses
  %scevgep343 = getelementptr i8, ptr %.sink.i.i, i64 %i.avb ; 2 uses
  %scevgep344 = getelementptr i8, ptr %i.asl, i64 8
  %i.avc = shl nsw i64 %i.auj, 3
  %scevgep345 = getelementptr i8, ptr %scevgep344, i64 %i.avc
  %i.avd = sext i32 %i.asd to i35
  %i.ave = shl nsw i35 %i.avd, 3
  %i.avf = sext i35 %i.ave to i64                 ; 2 uses
  %scevgep346 = getelementptr i8, ptr %i.ash, i64 %i.avf
  %i.avg = add i64 %i.avb, %i.avf
  %i.avh = sub i64 %i.avg, %i.auz
  %scevgep347 = getelementptr i8, ptr %i.ash, i64 %i.avh
  %bound0 = icmp ult ptr %scevgep, %scevgep345
  %bound1 = icmp ult ptr %i.auk, %scevgep343
  %found.conflict = and i1 %bound0, %bound1
  %bound0348 = icmp ult ptr %scevgep, %scevgep347
  %bound1349 = icmp ult ptr %scevgep346, %scevgep343
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %found.conflict, %found.conflict350
  br i1 %conflict.rdx351, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck341
  %i.avi = and i64 %i.aum, 1                      ; 2 uses
  %n.vec355 = sub i64 %i.aun, %i.avi              ; 2 uses
  %i.avj = add i64 %n.vec355, %i.asg
  %i.avk = load double, ptr %i.auk, align 8, !tbaa !310, !alias.scope !5223
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.avk, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next359, %vector.body356 ] ; 2 uses
  %i.avl = add nuw i64 %index357, %i.asg          ; 2 uses
  %i.avm = shl i64 %i.avl, 32
  %i.avn = ashr exact i64 %i.avm, 29
  %i.avo = getelementptr inbounds i8, ptr %i.ash, i64 %i.avn
  %wide.load358 = load <4 x double>, ptr %i.avo, align 8, !tbaa !310, !alias.scope !5224
  %i.avp = fdiv <4 x double> %wide.load358, %broadcast.splat
  %i.avq = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.avl
  store <4 x double> %i.avp, ptr %i.avq, align 8, !tbaa !310, !alias.scope !5225, !noalias !5226
  %index.next359 = add nuw i64 %index357, 4       ; 2 uses
  %i.avr = icmp eq i64 %index.next359, %n.vec355
  br i1 %i.avr, label %middle.block360, label %vector.body356, !llvm.loop !5194

middle.block360:                                  ; preds = %vector.body356
  %cmp.n361 = icmp eq i64 %i.avi, 0
  br i1 %cmp.n361, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader

.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck341, %vector.scevcheck336, %.lr.ph92.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i, %middle.block360
  %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.asg, %vector.memcheck341 ], [ %i.asg, %vector.scevcheck336 ], [ %i.asg, %.lr.ph92.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.avj, %middle.block360 ]
  br label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avy, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i ], [ %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i.ph, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext68.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.avs = ashr exact i64 %sext68.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.avt = getelementptr inbounds i8, ptr %i.ash, i64 %i.avs
  %i.avu = load double, ptr %i.avt, align 8, !tbaa !310
  %i.avv = load double, ptr %i.auk, align 8, !tbaa !310
  %i.avw = fdiv double %i.avu, %i.avv
  %i.avx = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i
  store double %i.avw, ptr %i.avx, align 8, !tbaa !310
  %i.avy = add nuw i64 %.091.i.us.us63.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.avz = icmp ult i64 %i.avy, %i.asf
  br i1 %i.avz, label %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5195

.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph92.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.awa = load ptr, ptr %i.ark, align 8, !tbaa !358
  br label %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asg, %.lr.ph92.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.awm, %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.awb = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.awc = getelementptr inbounds i8, ptr %i.ash, i64 %i.awb
  %i.awd = load double, ptr %i.awc, align 8, !tbaa !310
  %i.awe = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.awf = getelementptr inbounds i8, ptr %i.awa, i64 %i.awe
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !55
  %i.awh = sext i32 %i.awg to i64
  %i.awi = getelementptr inbounds [8 x i8], ptr %i.asl, i64 %i.awh
  %i.awj = load double, ptr %i.awi, align 8, !tbaa !310
  %i.awk = fdiv double %i.awd, %i.awj
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i
  store double %i.awk, ptr %i.awl, align 8, !tbaa !310
  %i.awm = add nuw i64 %.091.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.awn = icmp ult i64 %i.awm, %i.asf
  br i1 %i.awn, label %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5196

.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph92.i.i.i.i.i.i.i.i.i.i.i.i
  %i.awo = load i8, ptr %i.arq, align 1, !tbaa !356, !range !125, !noundef !126
  %i.awp = trunc nuw i8 %i.awo to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.091.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asg, %.lr.ph92.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.axj, %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.awq = trunc i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.awp, label %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.awr = load ptr, ptr %i.aro, align 8, !tbaa !358
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.aws = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.awt = getelementptr inbounds i8, ptr %i.awr, i64 %i.aws
  br label %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i47.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.awt, %bb.eb ], [ %i.arp, %bb.ea ]
  %.0.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i47.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55
  %i.awu = sext i32 %.0.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.awv = getelementptr inbounds [8 x i8], ptr %i.ash, i64 %i.awu
  %i.aww = load double, ptr %i.awv, align 8, !tbaa !310
  br i1 %i.aso, label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %i.awx = load i8, ptr %i.arj, align 1, !tbaa !356, !range !125, !noundef !126
  %i.awy = trunc nuw i8 %i.awx to i1
  br i1 %i.awy, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.awz = load i32, ptr %i.arl, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.axa = load ptr, ptr %i.ark, align 8, !tbaa !358
  %sext.i33.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axb = ashr exact i64 %sext.i33.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.axc = getelementptr inbounds i8, ptr %i.axa, i64 %i.axb
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.axd, %bb.ee ], [ %i.awz, %bb.ed ], [ %i.awq, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.axe = sext i32 %.0.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.axf = getelementptr inbounds [8 x i8], ptr %i.asl, i64 %i.axe
  %i.axg = load double, ptr %i.axf, align 8, !tbaa !310
  %i.axh = fdiv double %i.aww, %i.axg
  %i.axi = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i
  store double %i.axh, ptr %i.axi, align 8, !tbaa !310
  %i.axj = add nuw i64 %.091.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axk = icmp ult i64 %i.axj, %i.asf
  br i1 %i.axk, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5196

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i
  %.01590.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.arv, %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i ], [ %i.aym, %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.axl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01590.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.axm = trunc nuw nsw i64 %i.axl to i32
  %i.axn = or disjoint i32 %i.arw, %i.axm         ; 3 uses
  %i.axo = sext i32 %i.axn to i64                 ; 3 uses
  br i1 %i.arz, label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.axp = load i8, ptr %i.arq, align 1, !tbaa !356, !range !125, !noundef !126
  %i.axq = trunc nuw i8 %i.axp to i1
  br i1 %i.axq, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.axr = load i32, ptr %i.arp, align 8, !tbaa !357
  br label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.axs = load ptr, ptr %i.aro, align 8, !tbaa !358
  %i.axt = shl nsw i64 %i.axo, 2
  %i.axu = getelementptr inbounds i8, ptr %i.axs, i64 %i.axt
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !55
  br label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i

.noexc18.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.axv, %bb.ei ], [ %i.axr, %bb.eh ], [ %i.axn, %bb.ef ]
  %i.axw = sext i32 %.0.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.axx = getelementptr inbounds [8 x i8], ptr %i.arx, i64 %i.axw
  %i.axy = load double, ptr %i.axx, align 8, !tbaa !310
  br i1 %i.asc, label %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.axz = load i8, ptr %i.arj, align 1, !tbaa !356, !range !125, !noundef !126
  %i.aya = trunc nuw i8 %i.axz to i1
  br i1 %i.aya, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.ayb = load i32, ptr %i.arl, align 8, !tbaa !357
  br label %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i

bb.el:                                            ; preds = %bb.ej
  %i.ayc = load ptr, ptr %i.ark, align 8, !tbaa !358
  %i.ayd = shl nsw i64 %i.axo, 2
  %i.aye = getelementptr inbounds i8, ptr %i.ayc, i64 %i.ayd
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !55
  br label %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.el, %bb.ek, %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i55.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ayf, %bb.el ], [ %i.ayb, %bb.ek ], [ %i.axn, %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ayg = sext i32 %.0.i.i.i55.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ayh = getelementptr inbounds [8 x i8], ptr %i.asa, i64 %i.ayg
  %i.ayi = load double, ptr %i.ayh, align 8, !tbaa !310
  %i.ayj = fdiv double %i.axy, %i.ayi
  %i.ayk = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.axo
  store double %i.ayj, ptr %i.ayk, align 8, !tbaa !310
  %i.ayl = add i64 %.01590.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aym = and i64 %i.ayl, %.01590.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i48.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %i.aym, 0
  br i1 %.not.i48.i.i.i.i.i.i.i.i.i.i.i69, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ef, !llvm.loop !5197

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit43.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.us.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.us.us62.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.us.us.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block360, %middle.block, %bb.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.ayn = add nsw i32 %i.arr, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i.i.i62 = icmp sgt i32 %i.ayn, %i.amt
  br i1 %.not33.i.i.i.i.i.i.i.i.i.i.i62, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61, !llvm.loop !5198

bb.em:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63
  %i.ayo = ashr i32 %i.amp, 6
  %i.ayp = and i32 %i.amp, 63
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.apm = load i32, ptr %i.aox, align 8, !tbaa !357, !noalias !5451
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.apn = load ptr, ptr %i.aow, align 8, !tbaa !358, !noalias !5451
  %i.apo = shl nsw i64 %i.apj, 2
  %i.app = getelementptr inbounds i8, ptr %i.apn, i64 %i.apo
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !55, !noalias !5451
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.apq, %bb.dm ], [ %i.apm, %bb.dl ], [ %i.api, %bb.dj ]
  %i.apr = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aps = getelementptr inbounds [4 x i8], ptr %i.aor, i64 %i.apr
  %i.apt = load float, ptr %i.aps, align 4, !tbaa !418, !noalias !5451
  br i1 %i.apc, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i71, label %bb.dn

bb.dn:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.apu = load i8, ptr %i.apd, align 1, !tbaa !356, !range !125, !noalias !5452, !noundef !126
  %i.apv = trunc nuw i8 %i.apu to i1
  br i1 %i.apv, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.apw = load i32, ptr %i.apf, align 8, !tbaa !357, !noalias !5452
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i71

bb.dp:                                            ; preds = %bb.dn
  %i.apx = load ptr, ptr %i.ape, align 8, !tbaa !358, !noalias !5452
  %i.apy = shl nsw i64 %i.apj, 2
  %i.apz = getelementptr inbounds i8, ptr %i.apx, i64 %i.apy
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !55, !noalias !5452
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i71

_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i71: ; preds = %bb.dp, %bb.do, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aqa, %bb.dp ], [ %i.apw, %bb.do ], [ %i.api, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aqb = sext i32 %.0.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aqc = getelementptr inbounds [4 x i8], ptr %i.aoz, i64 %i.aqb
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !418, !noalias !5452
  %i.aqe = fdiv float %i.apt, %i.aqd
  %i.aqf = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.apj
  store float %i.aqe, ptr %i.aqf, align 4, !tbaa !418
  %i.aqg = add nsw i64 %.034.i.i.i.i.i.i.i.i.i.i.i.i70, -1
  %i.aqh = and i64 %i.aqg, %.034.i.i.i.i.i.i.i.i.i.i.i.i70 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i72 = icmp eq i64 %i.aqh, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i72, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.dj, !llvm.loop !5396

bb.dq:                                            ; preds = %bb.dh
  %.not32.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %i.ant, %i.any
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aqi = sdiv i32 %i.ant, 64                    ; 2 uses
  %i.aqj = sub nsw i32 %i.any, %i.ant             ; 2 uses
  %i.aqk = zext nneg i32 %i.aqj to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 -1, %i.aqk
  %i.aql = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i58, -1
  %i.aqm = sub nsw i32 64, %i.aqj
  %i.aqn = zext nneg i32 %i.aqm to i64
  %i.aqo = shl i64 %i.aql, %i.aqn
  %i.aqp = sext i32 %i.aqi to i64
  %i.aqq = getelementptr inbounds [8 x i8], ptr %i.anr, i64 %i.aqp
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !108
  %i.aqs = and i64 %i.aqr, %i.aqo                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.aqs, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60:           ; preds = %bb.dr
  %i.aqt = shl nsw i32 %i.aqi, 6
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aje, i64 16
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !354, !noalias !5453
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aje, i64 58
  %i.aqx = load i8, ptr %i.aqw, align 2, !tbaa !355, !range !125, !noalias !5453, !noundef !126
  %i.aqy = trunc nuw i8 %i.aqx to i1
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aje, i64 59
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aje, i64 8
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aje, i64 64
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aku, i64 16
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !354, !noalias !5454
  %i.are = getelementptr inbounds nuw i8, ptr %i.aku, i64 58
  %i.arf = load i8, ptr %i.are, align 2, !tbaa !355, !range !125, !noalias !5454, !noundef !126
  %i.arg = trunc nuw i8 %i.arf to i1
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aku, i64 59
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aku, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60
  %.034.i39.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aqs, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.asl, %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ark = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.arl = trunc nuw nsw i64 %i.ark to i32
  %i.arm = or disjoint i32 %i.aqt, %i.arl         ; 3 uses
  %i.arn = sext i32 %i.arm to i64                 ; 3 uses
  br i1 %i.aqy, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aro = load i8, ptr %i.aqz, align 1, !tbaa !356, !range !125, !noalias !5453, !noundef !126
  %i.arp = trunc nuw i8 %i.aro to i1
  br i1 %i.arp, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.arq = load i32, ptr %i.arb, align 8, !tbaa !357, !noalias !5453
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.arr = load ptr, ptr %i.ara, align 8, !tbaa !358, !noalias !5453
  %i.ars = shl nsw i64 %i.arn, 2
  %i.art = getelementptr inbounds i8, ptr %i.arr, i64 %i.ars
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !55, !noalias !5453
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %bb.ds
  %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aru, %bb.dv ], [ %i.arq, %bb.du ], [ %i.arm, %bb.ds ]
  %i.arv = sext i32 %.0.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.arw = getelementptr inbounds [4 x i8], ptr %i.aqv, i64 %i.arv
  %i.arx = load float, ptr %i.arw, align 4, !tbaa !418, !noalias !5453
  br i1 %i.arg, label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.ary = load i8, ptr %i.arh, align 1, !tbaa !356, !range !125, !noalias !5454, !noundef !126
  %i.arz = trunc nuw i8 %i.ary to i1
  br i1 %i.arz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.asa = load i32, ptr %i.arj, align 8, !tbaa !357, !noalias !5454
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.asb = load ptr, ptr %i.ari, align 8, !tbaa !358, !noalias !5454
  %i.asc = shl nsw i64 %i.arn, 2
  %i.asd = getelementptr inbounds i8, ptr %i.asb, i64 %i.asc
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !55, !noalias !5454
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ase, %bb.dy ], [ %i.asa, %bb.dx ], [ %i.arm, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i40.i.i.i.i.i.i.i.i.i.i.i ]
  %i.asf = sext i32 %.0.i.i.i15.i43.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.ard, i64 %i.asf
  %i.ash = load float, ptr %i.asg, align 4, !tbaa !418, !noalias !5454
  %i.asi = fdiv float %i.arx, %i.ash
  %i.asj = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.arn
  store float %i.asi, ptr %i.asj, align 4, !tbaa !418
  %i.ask = add i64 %.034.i39.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.asl = and i64 %i.ask, %.034.i39.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.asl, 0
  br i1 %.not10.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, !llvm.loop !5396

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.asm = add nsw i32 %i.any, 64                 ; 2 uses
  %.not3367.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.asm, %i.anz
  br i1 %.not3367.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aku, i64 16 ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aku, i64 58 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aku, i64 59 ; 3 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aku, i64 8 ; 3 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aku, i64 64 ; 3 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aje, i64 16 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aje, i64 58 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aje, i64 8 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.aje, i64 64 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.aje, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i63:              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq i32 %i.anv, %i.anz
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i64, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.em

.lr.ph.i.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.asx = phi i32 [ %i.azs, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.asm, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.asx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.any, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.asy = sdiv i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.asz = sext i32 %i.asy to i64
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.anr, i64 %i.asz
  %i.atb = load i64, ptr %i.ata, align 8, !tbaa !108 ; 2 uses
  switch i64 %i.atb, label %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.dz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.atc = shl nsw i32 %i.asy, 6
  %i.atd = load ptr, ptr %i.ass, align 8, !tbaa !354, !noalias !5455
  %i.ate = load i8, ptr %i.ast, align 2, !tbaa !355, !range !125, !noalias !5455, !noundef !126
  %i.atf = trunc nuw i8 %i.ate to i1
  %i.atg = load ptr, ptr %i.asn, align 8, !tbaa !354, !noalias !5456
  %i.ath = load i8, ptr %i.aso, align 2, !tbaa !355, !range !125, !noalias !5456, !noundef !126
  %i.ati = trunc nuw i8 %i.ath to i1
  br label %bb.ef

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.atj = shl nsw i32 %i.asy, 6                  ; 6 uses
  %i.atk = add i32 %i.atj, 64
  %i.atl = sext i32 %i.atk to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i65 = add i32 %.068.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not89.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i65, 64
  br i1 %.not89.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dz
  %i.atm = sext i32 %i.atj to i64                 ; 23 uses
  %i.atn = load ptr, ptr %i.ass, align 8, !tbaa !354, !noalias !5457 ; 9 uses
  %i.ato = ptrtoaddr ptr %i.atn to i64
  %i.atp = load i8, ptr %i.ast, align 2, !tbaa !355, !range !125, !noalias !5457, !noundef !126
  %i.atq = trunc nuw i8 %i.atp to i1
  %i.atr = load ptr, ptr %i.asn, align 8, !tbaa !354, !noalias !5458 ; 7 uses
  %i.ats = ptrtoaddr ptr %i.atr to i64
  %i.att = load i8, ptr %i.aso, align 2, !tbaa !355, !range !125, !noalias !5458, !noundef !126
  %i.atu = trunc nuw i8 %i.att to i1              ; 2 uses
  br i1 %i.atq, label %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.atu, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.atv = or disjoint i64 %i.atm, 1
  %i.atw = call i64 @llvm.umax.i64(i64 %i.atv, i64 %i.atl) ; 2 uses
  %i.atx = sub i64 %i.atw, %i.atm                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.atx, 24
  br i1 %min.iters.check, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader580, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.aty = or disjoint i64 %i.atm, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.aty, i64 %i.atl)
  %i.atz = xor i64 %i.atm, -1
  %i.aua = add i64 %umax, %i.atz                  ; 2 uses
  %i.aub = sext i32 %i.atj to i34                 ; 2 uses
  %i.auc = shl nsw i34 %i.aub, 2
  %i.aud = trunc i64 %i.aua to i34
  %i.aue = add i34 %i.aub, %i.aud
  %i.auf = shl i34 %i.aue, 2
  %i.aug = icmp slt i34 %i.auf, %i.auc
  %i.auh = icmp ugt i64 %i.aua, 4294967295
  %i.aui = or i1 %i.aug, %i.auh
  br i1 %i.aui, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader580, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.auj = shl nsw i64 %i.atm, 2                  ; 2 uses
  %i.auk = add i64 %i.auj, %.sink.i.i334
  %i.aul = sext i32 %i.atj to i34
  %i.aum = shl nsw i34 %i.aul, 2
  %i.aun = sext i34 %i.aum to i64                 ; 2 uses
  %i.auo = add i64 %i.ato, %i.aun
  %i.aup = sub i64 %i.auo, %i.auk
  %diff.check = icmp ugt i64 %i.aup, -32
  %i.auq = add i64 %i.auj, %.sink.i.i334
  %i.aur = add i64 %i.ats, %i.aun
  %i.aus = sub i64 %i.aur, %i.auq
  %diff.check335 = icmp ugt i64 %i.aus, -32
  %conflict.rdx = or i1 %diff.check, %diff.check335
  br i1 %conflict.rdx, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader580, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aut = and i64 %i.atw, 1                      ; 2 uses
  %n.vec = sub i64 %i.atx, %i.aut                 ; 2 uses
  %i.auu = add i64 %n.vec, %i.atm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.auv = add nuw i64 %index, %i.atm             ; 2 uses
  %i.auw = shl i64 %i.auv, 32
  %i.aux = ashr exact i64 %i.auw, 30              ; 2 uses
  %i.auy = getelementptr inbounds i8, ptr %i.atn, i64 %i.aux
  %wide.load = load <8 x float>, ptr %i.auy, align 4, !tbaa !418, !noalias !5457
  %i.auz = getelementptr inbounds i8, ptr %i.atr, i64 %i.aux
  %wide.load336 = load <8 x float>, ptr %i.auz, align 4, !tbaa !418, !noalias !5458
  %i.ava = fdiv <8 x float> %wide.load, %wide.load336
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.auv
  store <8 x float> %i.ava, ptr %i.avb, align 4, !tbaa !418
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.avc = icmp eq i64 %index.next, %n.vec
  br i1 %i.avc, label %middle.block, label %vector.body, !llvm.loop !5409

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aut, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader580

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader580: ; preds = %vector.memcheck, %vector.scevcheck, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.atm, %vector.memcheck ], [ %i.atm, %vector.scevcheck ], [ %i.atm, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.auu, %middle.block ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader580, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avk, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i.preheader580 ] ; 3 uses
  %sext70.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.avd = ashr exact i64 %sext70.i.i.i.i.i.i.i.i.i.i.i, 30 ; 2 uses
  %i.ave = getelementptr inbounds i8, ptr %i.atn, i64 %i.avd
  %i.avf = load float, ptr %i.ave, align 4, !tbaa !418, !noalias !5457
  %i.avg = getelementptr inbounds i8, ptr %i.atr, i64 %i.avd
  %i.avh = load float, ptr %i.avg, align 4, !tbaa !418, !noalias !5458
  %i.avi = fdiv float %i.avf, %i.avh
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i
  store float %i.avi, ptr %i.avj, align 4, !tbaa !418
  %i.avk = add nuw i64 %.087.i.us.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.avl = icmp ult i64 %i.avk, %i.atl
  br i1 %i.avl, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5410

.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph88.i.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.avm = load i8, ptr %i.asp, align 1, !tbaa !356, !range !125, !noalias !5458, !noundef !126
  %i.avn = trunc nuw i8 %i.avm to i1
  br i1 %i.avn, label %.lr.ph88.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph88.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.avo = load i32, ptr %i.asr, align 8, !tbaa !357, !noalias !5458
  %i.avp = sext i32 %i.avo to i64                 ; 2 uses
  %i.avq = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.avp ; 3 uses
  %i.avr = or disjoint i64 %i.atm, 1
  %i.avs = call i64 @llvm.umax.i64(i64 %i.avr, i64 %i.atl) ; 2 uses
  %i.avt = sub i64 %i.avs, %i.atm                 ; 2 uses
  %min.iters.check354 = icmp ult i64 %i.avt, 24
  br i1 %min.iters.check354, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.scevcheck337

vector.scevcheck337:                              ; preds = %.lr.ph88.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.avu = or disjoint i64 %i.atm, 1
  %umax338 = call i64 @llvm.umax.i64(i64 %i.avu, i64 %i.atl)
  %i.avv = xor i64 %i.atm, -1
  %i.avw = add i64 %umax338, %i.avv               ; 2 uses
  %i.avx = sext i32 %i.atj to i34                 ; 2 uses
  %i.avy = shl nsw i34 %i.avx, 2
  %i.avz = trunc i64 %i.avw to i34
  %i.awa = add i34 %i.avx, %i.avz
  %i.awb = shl i34 %i.awa, 2
  %i.awc = icmp slt i34 %i.awb, %i.avy
  %i.awd = icmp ugt i64 %i.avw, 4294967295
  %i.awe = or i1 %i.awc, %i.awd
  br i1 %i.awe, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck342

vector.memcheck342:                               ; preds = %vector.scevcheck337
  %i.awf = shl nsw i64 %i.atm, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.awf ; 2 uses
  %i.awg = or disjoint i64 %i.atm, 1
  %umax343 = call i64 @llvm.umax.i64(i64 %i.awg, i64 %i.atl)
  %i.awh = shl nsw i64 %umax343, 2                ; 2 uses
  %scevgep344 = getelementptr i8, ptr %.sink.i.i, i64 %i.awh ; 2 uses
  %scevgep345 = getelementptr i8, ptr %i.atr, i64 4
  %i.awi = shl nsw i64 %i.avp, 2
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.awi
  %i.awj = sext i32 %i.atj to i34
  %i.awk = shl nsw i34 %i.awj, 2
  %i.awl = sext i34 %i.awk to i64                 ; 2 uses
  %scevgep347 = getelementptr i8, ptr %i.atn, i64 %i.awl
  %i.awm = add i64 %i.awh, %i.awl
  %i.awn = sub i64 %i.awm, %i.awf
  %scevgep348 = getelementptr i8, ptr %i.atn, i64 %i.awn
  %bound0 = icmp ult ptr %scevgep, %scevgep346
  %bound1 = icmp ult ptr %i.avq, %scevgep344
  %found.conflict = and i1 %bound0, %bound1
  %bound0349 = icmp ult ptr %scevgep, %scevgep348
  %bound1350 = icmp ult ptr %scevgep347, %scevgep344
  %found.conflict351 = and i1 %bound0349, %bound1350
  %conflict.rdx352 = or i1 %found.conflict, %found.conflict351
  br i1 %conflict.rdx352, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck342
  %i.awo = and i64 %i.avs, 1                      ; 2 uses
  %n.vec356 = sub i64 %i.avt, %i.awo              ; 2 uses
  %i.awp = add i64 %n.vec356, %i.atm
  %i.awq = load float, ptr %i.avq, align 4, !tbaa !418, !alias.scope !5459, !noalias !5458
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.awq, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next360, %vector.body357 ] ; 2 uses
  %i.awr = add nuw i64 %index358, %i.atm          ; 2 uses
  %i.aws = shl i64 %i.awr, 32
  %i.awt = ashr exact i64 %i.aws, 30
  %i.awu = getelementptr inbounds i8, ptr %i.atn, i64 %i.awt
  %wide.load359 = load <8 x float>, ptr %i.awu, align 4, !tbaa !418, !alias.scope !5460, !noalias !5457
  %i.awv = fdiv <8 x float> %wide.load359, %broadcast.splat
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %i.awr
  store <8 x float> %i.awv, ptr %i.aww, align 4, !tbaa !418, !alias.scope !5461, !noalias !5462
  %index.next360 = add nuw i64 %index358, 8       ; 2 uses
  %i.awx = icmp eq i64 %index.next360, %n.vec356
  br i1 %i.awx, label %middle.block361, label %vector.body357, !llvm.loop !5415

middle.block361:                                  ; preds = %vector.body357
  %cmp.n362 = icmp eq i64 %i.awo, 0
  br i1 %cmp.n362, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck342, %vector.scevcheck337, %.lr.ph88.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i, %middle.block361
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.atm, %vector.memcheck342 ], [ %i.atm, %vector.scevcheck337 ], [ %i.atm, %.lr.ph88.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.awp, %middle.block361 ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axe, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %sext69.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.awy = ashr exact i64 %sext69.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.awz = getelementptr inbounds i8, ptr %i.atn, i64 %i.awy
  %i.axa = load float, ptr %i.awz, align 4, !tbaa !418, !noalias !5457
  %i.axb = load float, ptr %i.avq, align 4, !tbaa !418, !noalias !5458
  %i.axc = fdiv float %i.axa, %i.axb
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i
  store float %i.axc, ptr %i.axd, align 4, !tbaa !418
  %i.axe = add nuw i64 %.087.i.us.us64.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axf = icmp ult i64 %i.axe, %i.atl
  br i1 %i.axf, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5416

.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph88.i.split.us.split.i.i.i.i.i.i.i.i.i.i.i
  %i.axg = load ptr, ptr %i.asq, align 8, !tbaa !358, !noalias !5458
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.atm, %.lr.ph88.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.axr, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axh = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i, 30 ; 2 uses
  %i.axi = getelementptr inbounds i8, ptr %i.atn, i64 %i.axh
  %i.axj = load float, ptr %i.axi, align 4, !tbaa !418, !noalias !5457
  %i.axk = getelementptr inbounds i8, ptr %i.axg, i64 %i.axh
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !55, !noalias !5458
  %i.axm = sext i32 %i.axl to i64
  %i.axn = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.axm
  %i.axo = load float, ptr %i.axn, align 4, !tbaa !418, !noalias !5458
  %i.axp = fdiv float %i.axj, %i.axo
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i
  store float %i.axp, ptr %i.axq, align 4, !tbaa !418
  %i.axr = add nuw i64 %.087.i.us.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.axs = icmp ult i64 %i.axr, %i.atl
  br i1 %i.axs, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5417

.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph88.i.i.i.i.i.i.i.i.i.i.i.i
  %i.axt = load i8, ptr %i.asw, align 1, !tbaa !356, !range !125, !noalias !5457, !noundef !126
  %i.axu = trunc nuw i8 %i.axt to i1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i66, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i
  %.087.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.atm, %.lr.ph88.i.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ayo, %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i66 ] ; 5 uses
  %i.axv = trunc i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.axu, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.axw = load ptr, ptr %i.asu, align 8, !tbaa !358, !noalias !5457
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.axx = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.axy = getelementptr inbounds i8, ptr %i.axw, i64 %i.axx
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.axy, %bb.eb ], [ %i.asv, %bb.ea ]
  %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i48.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !55, !noalias !5457
  %i.axz = sext i32 %.0.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aya = getelementptr inbounds [4 x i8], ptr %i.atn, i64 %i.axz
  %i.ayb = load float, ptr %i.aya, align 4, !tbaa !418, !noalias !5457
  br i1 %i.atu, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i66, label %bb.ec

bb.ec:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %i.ayc = load i8, ptr %i.asp, align 1, !tbaa !356, !range !125, !noalias !5458, !noundef !126
  %i.ayd = trunc nuw i8 %i.ayc to i1
  br i1 %i.ayd, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aye = load i32, ptr %i.asr, align 8, !tbaa !357, !noalias !5458
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i66

bb.ee:                                            ; preds = %bb.ec
  %i.ayf = load ptr, ptr %i.asq, align 8, !tbaa !358, !noalias !5458
  %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.ayg = ashr exact i64 %sext.i29.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.ayh = getelementptr inbounds i8, ptr %i.ayf, i64 %i.ayg
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !55, !noalias !5458
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i66

_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i66: ; preds = %bb.ee, %bb.ed, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ayi, %bb.ee ], [ %i.aye, %bb.ed ], [ %i.axv, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ayj = sext i32 %.0.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ayk = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.ayj
  %i.ayl = load float, ptr %i.ayk, align 4, !tbaa !418, !noalias !5458
  %i.aym = fdiv float %i.ayb, %i.ayl
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i
  store float %i.aym, ptr %i.ayn, align 4, !tbaa !418
  %i.ayo = add nuw i64 %.087.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ayp = icmp ult i64 %i.ayo, %i.atl
  br i1 %i.ayp, label %bb.ea, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5417

bb.ef:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i
  %.01586.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.atb, %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i ], [ %i.azr, %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ayq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01586.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ayr = trunc nuw nsw i64 %i.ayq to i32
  %i.ays = or disjoint i32 %i.atc, %i.ayr         ; 3 uses
  %i.ayt = sext i32 %i.ays to i64                 ; 3 uses
  br i1 %i.atf, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ayu = load i8, ptr %i.asw, align 1, !tbaa !356, !range !125, !noalias !5455, !noundef !126
  %i.ayv = trunc nuw i8 %i.ayu to i1
  br i1 %i.ayv, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ayw = load i32, ptr %i.asv, align 8, !tbaa !357, !noalias !5455
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.ayx = load ptr, ptr %i.asu, align 8, !tbaa !358, !noalias !5455
  %i.ayy = shl nsw i64 %i.ayt, 2
  %i.ayz = getelementptr inbounds i8, ptr %i.ayx, i64 %i.ayy
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !55, !noalias !5455
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef
  %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aza, %bb.ei ], [ %i.ayw, %bb.eh ], [ %i.ays, %bb.ef ]
  %i.azb = sext i32 %.0.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.azc = getelementptr inbounds [4 x i8], ptr %i.atd, i64 %i.azb
  %i.azd = load float, ptr %i.azc, align 4, !tbaa !418, !noalias !5455
  br i1 %i.ati, label %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aze = load i8, ptr %i.asp, align 1, !tbaa !356, !range !125, !noalias !5456, !noundef !126
  %i.azf = trunc nuw i8 %i.aze to i1
  br i1 %i.azf, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.azg = load i32, ptr %i.asr, align 8, !tbaa !357, !noalias !5456
  br label %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i

bb.el:                                            ; preds = %bb.ej
  %i.azh = load ptr, ptr %i.asq, align 8, !tbaa !358, !noalias !5456
  %i.azi = shl nsw i64 %i.ayt, 2
  %i.azj = getelementptr inbounds i8, ptr %i.azh, i64 %i.azi
  %i.azk = load i32, ptr %i.azj, align 4, !tbaa !55, !noalias !5456
  br label %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.el, %bb.ek, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i51.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.azk, %bb.el ], [ %i.azg, %bb.ek ], [ %i.ays, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit49.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.azl = sext i32 %.0.i.i.i51.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.azm = getelementptr inbounds [4 x i8], ptr %i.atg, i64 %i.azl
  %i.azn = load float, ptr %i.azm, align 4, !tbaa !418, !noalias !5456
  %i.azo = fdiv float %i.azd, %i.azn
  %i.azp = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.ayt
  store float %i.azo, ptr %i.azp, align 4, !tbaa !418
  %i.azq = add i64 %.01586.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.azr = and i64 %i.azq, %.01586.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i49.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.azr, 0
  br i1 %.not.i49.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ef, !llvm.loop !5418

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i.i66, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us63.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i47.us.us.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit64.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block361, %middle.block, %bb.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61
  %i.azs = add nsw i32 %i.asx, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i.i.i62 = icmp sgt i32 %i.azs, %i.anz
  br i1 %.not33.i.i.i.i.i.i.i.i.i.i.i62, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i61, !llvm.loop !5419

bb.em:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63
  %i.azt = ashr i32 %i.anv, 6
  %i.azu = and i32 %i.anv, 63
  %i.azv = zext nneg i32 %i.azu to i64
end_hunk_11
