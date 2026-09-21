Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMAsmParser?download=true
inline.NumInlined: 13951
inline.NumDeleted: 2231
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN12_GLOBAL__N_112ARMAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstEPNS2_INS1_12NearMissInfoEEEbj:bb.a

bb.aau:                                           ; preds = %bb.bl
  %i.fxo = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.fxp = getelementptr inbounds nuw i8, ptr %i.fxo, i64 40
  %i.fxq = load ptr, ptr %i.fxp, align 8
  %i.fxr = call noundef zeroext i1 %i.fxq(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1291
  br i1 %i.fxr, label %bb.aav, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.aav:                                           ; preds = %bb.aau
  %i.fxs = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i1600.i = load ptr, ptr %i.fxs, align 8, !tbaa !60 ; 2 uses
  %i.fxt = load i8, ptr %.val.i1600.i, align 8, !tbaa !401
  %.not.i1601.i = icmp eq i8 %i.fxt, 1
  br i1 %.not.i1601.i, label %bb.aaw, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.aaw:                                           ; preds = %bb.aav
  %i.fxu = getelementptr inbounds nuw i8, ptr %.val.i1600.i, i64 16
  %i.fxv = load i64, ptr %i.fxu, align 8, !tbaa !403 ; 2 uses
  %i.fxw = icmp slt i64 %i.fxv, 4294967296
  %i.fxx = trunc i64 %i.fxv to i32
  %i.fxy = icmp ugt i32 %i.fxx, -4096
  %or.cond2185.i = and i1 %i.fxw, %i.fxy
  br i1 %or.cond2185.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.aax:                                           ; preds = %bb.bl
  %i.fxz = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %.val1120.i = load i32, ptr %i.fxz, align 8, !tbaa !71
  %i.fya = icmp eq i32 %.val1120.i, 3
  br i1 %i.fya, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.aay:                                           ; preds = %bb.bl
  %i.fyb = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %.val1121.i = load i32, ptr %i.fyb, align 8, !tbaa !71
  %i.fyc = icmp eq i32 %.val1121.i, 0
  br i1 %i.fyc, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.aaz:                                           ; preds = %bb.bl
  %i.fyd = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.fye = getelementptr inbounds nuw i8, ptr %i.fyd, i64 40
  %i.fyf = load ptr, ptr %i.fye, align 8
  %i.fyg = call noundef zeroext i1 %i.fyf(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1292
  br i1 %i.fyg, label %bb.aba, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread1952

bb.aba:                                           ; preds = %bb.aaz
  %i.fyh = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %i.fyi = load ptr, ptr %i.fyh, align 8, !tbaa !415 ; 2 uses
  %i.fyj = load i8, ptr %i.fyi, align 8, !tbaa !401
  switch i8 %i.fyj, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread1952 [
    i8 2, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread
    i8 1, label %_ZNK12_GLOBAL__N_110ARMOperand10isLEOffsetEv.exit
  ]

_ZNK12_GLOBAL__N_110ARMOperand10isLEOffsetEv.exit: ; preds = %bb.aba
  %i.fyk = getelementptr inbounds nuw i8, ptr %i.fyi, i64 16
  %i.fyl = load i64, ptr %i.fyk, align 8, !tbaa !403 ; 2 uses
  %or.cond.i426 = icmp ugt i64 %i.fyl, -4095
  %i.fym = and i64 %i.fyl, 1
  %i.fyn = icmp eq i64 %i.fym, 0
  %i.fyo = and i1 %or.cond.i426, %i.fyn
  %cond.fr1875 = freeze i1 %i.fyo
  br i1 %cond.fr1875, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread1952

bb.abb:                                           ; preds = %bb.bl
  %i.fyp = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.fyq = getelementptr inbounds nuw i8, ptr %i.fyp, i64 40
  %i.fyr = load ptr, ptr %i.fyq, align 8
  %i.fys = call noundef zeroext i1 %i.fyr(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1293
  br i1 %i.fys, label %bb.abc, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread1952

bb.abc:                                           ; preds = %bb.abb
  %i.fyt = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i1607.i = load ptr, ptr %i.fyt, align 8, !tbaa !60 ; 2 uses
  %i.fyu = load i8, ptr %.val.i1607.i, align 8, !tbaa !401
  %.not.i1608.i = icmp eq i8 %i.fyu, 1
  br i1 %.not.i1608.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isMVELongShiftEv.exit.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread1952

_ZNK12_GLOBAL__N_110ARMOperand14isMVELongShiftEv.exit.i: ; preds = %bb.abc
  %i.fyv = getelementptr inbounds nuw i8, ptr %.val.i1607.i, i64 16
  %i.fyw = load i64, ptr %i.fyv, align 8, !tbaa !403
  %i.fyx = add i64 %i.fyw, -1
  %i.fyy = icmp ult i64 %i.fyx, 32
  br i1 %i.fyy, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread1952

bb.abd:                                           ; preds = %bb.bl
  %i.fyz = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.fza = getelementptr inbounds nuw i8, ptr %i.fyz, i64 40
  %i.fzb = load ptr, ptr %i.fza, align 8
  %i.fzc = call noundef zeroext i1 %i.fzb(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1294
  br i1 %i.fzc, label %bb.abe, label %.loopexit.i414

bb.abe:                                           ; preds = %bb.abd
  %i.fzd = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i.i.i421 = load ptr, ptr %i.fzd, align 8, !tbaa !60 ; 2 uses
  %i.fze = load i8, ptr %.val.i.i.i421, align 8, !tbaa !401
  %.not.i.i.i422 = icmp eq i8 %i.fze, 1
  br i1 %.not.i.i.i422, label %bb.abf, label %.loopexit.i414

bb.abf:                                           ; preds = %bb.abe
  %i.fzf = getelementptr inbounds nuw i8, ptr %.val.i.i.i421, i64 16
  %i.fzg = load i64, ptr %i.fzf, align 8, !tbaa !403 ; 3 uses
  %.not29.i.i.i423 = icmp eq i64 %i.fzg, 0
  br i1 %.not29.i.i.i423, label %.loopexit.i414, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.abf
  %i.fzh = lshr i64 %i.fzg, 8
  %i.fzi = xor i64 %i.fzh, %i.fzg
  %i.fzj = and i64 %i.fzi, 255
  %.not32.i.i.i424 = icmp eq i64 %i.fzj, 0
  br i1 %.not32.i.i.i424, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %.loopexit.i414

.loopexit.i414:                                   ; preds = %.preheader.i.i, %bb.abf, %bb.abe, %bb.abd
  %i.fzk = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.fzl = getelementptr inbounds nuw i8, ptr %i.fzk, i64 40
  %i.fzm = load ptr, ptr %i.fzl, align 8
  %i.fzn = call noundef zeroext i1 %i.fzm(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1295
  br i1 %i.fzn, label %bb.abg, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abg:                                           ; preds = %.loopexit.i414
  %i.fzo = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i416 = load ptr, ptr %i.fzo, align 8, !tbaa !60 ; 2 uses
  %i.fzp = load i8, ptr %.val.i416, align 8, !tbaa !401
  %.not.i417 = icmp eq i8 %i.fzp, 1
  br i1 %.not.i417, label %bb.abh, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abh:                                           ; preds = %bb.abg
  %i.fzq = getelementptr inbounds nuw i8, ptr %.val.i416, i64 16
  %i.fzr = load i64, ptr %i.fzq, align 8, !tbaa !403
  %i.fzs = trunc i64 %i.fzr to i32                ; 4 uses
  %i.fzt = icmp ugt i32 %i.fzs, 65535
  br i1 %i.fzt, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.fzu = icmp eq i32 %i.fzs, 0
  br i1 %i.fzu, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isNEONi16splatEv.exit

_ZNK12_GLOBAL__N_110ARMOperand14isNEONi16splatEv.exit: ; preds = %bb.abi
  %i.fzv = and i32 %i.fzs, 255
  %.not.i.i5.i419 = icmp ne i32 %i.fzv, 0
  %.not.i.1.i.i420 = icmp samesign ugt i32 %i.fzs, 255
  %i.fzw = xor i1 %.not.i.1.i.i420, %.not.i.i5.i419
  br i1 %i.fzw, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abj:                                           ; preds = %bb.bl
  %i.fzx = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.fzy = getelementptr inbounds nuw i8, ptr %i.fzx, i64 40
  %i.fzz = load ptr, ptr %i.fzy, align 8
  %i.gaa = call noundef zeroext i1 %i.fzz(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1296
  br i1 %i.gaa, label %bb.abk, label %.loopexit.i394

bb.abk:                                           ; preds = %bb.abj
  %i.gab = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i.i.i405 = load ptr, ptr %i.gab, align 8, !tbaa !60 ; 2 uses
  %i.gac = load i8, ptr %.val.i.i.i405, align 8, !tbaa !401
  %.not.i.i.i406 = icmp eq i8 %i.gac, 1
  br i1 %.not.i.i.i406, label %bb.abl, label %.loopexit.i394

bb.abl:                                           ; preds = %bb.abk
  %i.gad = getelementptr inbounds nuw i8, ptr %.val.i.i.i405, i64 16
  %i.gae = load i64, ptr %i.gad, align 8, !tbaa !403 ; 7 uses
  %.not29.i.i.i407 = icmp eq i64 %i.gae, 0
  br i1 %.not29.i.i.i407, label %.loopexit.i394, label %.preheader.i.preheader.i408

.preheader.i.preheader.i408:                      ; preds = %bb.abl
  %i.gaf = lshr i64 %i.gae, 8
  %i.gag = xor i64 %i.gaf, %i.gae
  %i.gah = and i64 %i.gag, 255
  %.not32.i.i.i409 = icmp eq i64 %i.gah, 0
  br i1 %.not32.i.i.i409, label %.preheader.i.1.i410, label %.loopexit.i394

.preheader.i.1.i410:                              ; preds = %.preheader.i.preheader.i408
  %i.gai = lshr i64 %i.gae, 16
  %i.gaj = xor i64 %i.gai, %i.gae
  %i.gak = and i64 %i.gaj, 255
  %.not32.i.i.1.i411 = icmp eq i64 %i.gak, 0
  br i1 %.not32.i.i.1.i411, label %.preheader.i.2.i412, label %.loopexit.i394

.preheader.i.2.i412:                              ; preds = %.preheader.i.1.i410
  %i.gal = lshr i64 %i.gae, 24
  %i.gam = xor i64 %i.gal, %i.gae
  %i.gan = and i64 %i.gam, 255
  %.not32.i.i.2.i413 = icmp eq i64 %i.gan, 0
  br i1 %.not32.i.i.2.i413, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %.loopexit.i394

.loopexit.i394:                                   ; preds = %.preheader.i.2.i412, %.preheader.i.1.i410, %.preheader.i.preheader.i408, %bb.abl, %bb.abk, %bb.abj
  %i.gao = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.gap = getelementptr inbounds nuw i8, ptr %i.gao, i64 40
  %i.gaq = load ptr, ptr %i.gap, align 8
  %i.gar = call noundef zeroext i1 %i.gaq(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1297
  br i1 %i.gar, label %bb.abm, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abm:                                           ; preds = %.loopexit.i394
  %i.gas = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i396 = load ptr, ptr %i.gas, align 8, !tbaa !60 ; 2 uses
  %i.gat = load i8, ptr %.val.i396, align 8, !tbaa !401
  %.not.i397 = icmp eq i8 %i.gat, 1
  br i1 %.not.i397, label %bb.abn, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abn:                                           ; preds = %bb.abm
  %i.gau = getelementptr inbounds nuw i8, ptr %.val.i396, i64 16
  %i.gav = load i64, ptr %i.gau, align 8, !tbaa !403
  %i.gaw = trunc i64 %i.gav to i32                ; 5 uses
  %i.gax = icmp eq i32 %i.gaw, 0
  br i1 %i.gax, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isNEONi32splatEv.exit

_ZNK12_GLOBAL__N_110ARMOperand14isNEONi32splatEv.exit: ; preds = %bb.abn
  %16 = and i32 %i.gaw, 255
  %.not.i.i5.i = icmp ne i32 %16, 0
  %17 = zext i1 %.not.i.i5.i to i32
  %18 = and i32 %i.gaw, 65280
  %.not.i.1.i.i399 = icmp ne i32 %18, 0
  %19 = zext i1 %.not.i.1.i.i399 to i32
  %20 = and i32 %i.gaw, 16711680
  %.not.i.2.i.i400 = icmp ne i32 %20, 0
  %21 = zext i1 %.not.i.2.i.i400 to i32
  %.not.i.3.i.i401 = icmp ugt i32 %i.gaw, 16777215
  %22 = zext i1 %.not.i.3.i.i401 to i32
  %spec.select.i.1.i.i402 = add nuw nsw i32 %19, %22
  %spec.select.i.2.i.i403 = add nuw nsw i32 %spec.select.i.1.i.i402, %17
  %spec.select.i.3.i.i404 = add nuw nsw i32 %spec.select.i.2.i.i403, %21
  %i.gay = icmp eq i32 %spec.select.i.3.i.i404, 1
  br i1 %i.gay, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abo:                                           ; preds = %bb.bl
  %i.gaz = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.gba = getelementptr inbounds nuw i8, ptr %i.gaz, i64 40
  %i.gbb = load ptr, ptr %i.gba, align 8
  %i.gbc = call noundef zeroext i1 %i.gbb(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1298
  br i1 %i.gbc, label %bb.abp, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abp:                                           ; preds = %bb.abo
  %i.gbd = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i392 = load ptr, ptr %i.gbd, align 8, !tbaa !60 ; 2 uses
  %i.gbe = load i8, ptr %.val.i392, align 8, !tbaa !401
  %.not.i393 = icmp eq i8 %i.gbe, 1
  br i1 %.not.i393, label %bb.abq, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abq:                                           ; preds = %bb.abp
  %i.gbf = getelementptr inbounds nuw i8, ptr %.val.i392, i64 16
  %i.gbg = load i64, ptr %i.gbf, align 8, !tbaa !403 ; 8 uses
  %i.gbh = and i64 %i.gbg, 255
  %.off.i = add nsw i64 %i.gbh, -1
  %switch.i = icmp ult i64 %.off.i, 254
  br i1 %switch.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.gbi = lshr i64 %i.gbg, 8
  %i.gbj = and i64 %i.gbi, 255
  %.off.1.i = add nsw i64 %i.gbj, -1
  %switch.1.i = icmp ult i64 %.off.1.i, 254
  br i1 %switch.1.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  %i.gbk = lshr i64 %i.gbg, 16
  %i.gbl = and i64 %i.gbk, 255
  %.off.2.i = add nsw i64 %i.gbl, -1
  %switch.2.i = icmp ult i64 %.off.2.i, 254
  br i1 %switch.2.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %bb.abt

bb.abt:                                           ; preds = %bb.abs
  %i.gbm = lshr i64 %i.gbg, 24
  %i.gbn = and i64 %i.gbm, 255
  %.off.3.i = add nsw i64 %i.gbn, -1
  %switch.3.i = icmp ult i64 %.off.3.i, 254
  br i1 %switch.3.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.gbo = lshr i64 %i.gbg, 32
  %i.gbp = and i64 %i.gbo, 255
  %.off.4.i = add nsw i64 %i.gbp, -1
  %switch.4.i = icmp ult i64 %.off.4.i, 254
  br i1 %switch.4.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.gbq = lshr i64 %i.gbg, 40
  %i.gbr = and i64 %i.gbq, 255
  %.off.5.i = add nsw i64 %i.gbr, -1
  %switch.5.i = icmp ult i64 %.off.5.i, 254
  br i1 %switch.5.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.gbs = lshr i64 %i.gbg, 48
  %i.gbt = and i64 %i.gbs, 255
  %.off.6.i = add nsw i64 %i.gbt, -1
  %switch.6.i = icmp ult i64 %.off.6.i, 254
  br i1 %switch.6.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isNEONi64splatEv.exit

_ZNK12_GLOBAL__N_110ARMOperand14isNEONi64splatEv.exit: ; preds = %bb.abw
  %i.gbu = lshr i64 %i.gbg, 56
  %i.gbv = add nsw i64 %i.gbu, -255
  %switch.7.i = icmp ult i64 %i.gbv, -254
  br i1 %switch.7.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abx:                                           ; preds = %bb.bl
  %i.gbw = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.gbx = getelementptr inbounds nuw i8, ptr %i.gbw, i64 40
  %i.gby = load ptr, ptr %i.gbx, align 8
  %i.gbz = call noundef zeroext i1 %i.gby(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1299
  br i1 %i.gbz, label %bb.aby, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.aby:                                           ; preds = %bb.abx
  %i.gca = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i1614.i = load ptr, ptr %i.gca, align 8, !tbaa !60 ; 2 uses
  %i.gcb = load i8, ptr %.val.i1614.i, align 8, !tbaa !401
  %.not.i1615.i = icmp eq i8 %i.gcb, 1
  br i1 %.not.i1615.i, label %_ZNK12_GLOBAL__N_110ARMOperand13isNEONi8splatEv.exit.i, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

_ZNK12_GLOBAL__N_110ARMOperand13isNEONi8splatEv.exit.i: ; preds = %bb.aby
  %i.gcc = getelementptr inbounds nuw i8, ptr %.val.i1614.i, i64 16
  %i.gcd = load i64, ptr %i.gcc, align 8, !tbaa !403
  %i.gce = icmp ult i64 %i.gcd, 256
  br i1 %i.gce, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.abz:                                           ; preds = %bb.bl
  %i.gcf = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.gcg = getelementptr inbounds nuw i8, ptr %i.gcf, i64 40
  %i.gch = load ptr, ptr %i.gcg, align 8
  %i.gci = call noundef zeroext i1 %i.gch(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1300
  br i1 %i.gci, label %bb.aca, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.aca:                                           ; preds = %bb.abz
  %i.gcj = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i386 = load ptr, ptr %i.gcj, align 8, !tbaa !60 ; 2 uses
  %i.gck = load i8, ptr %.val.i386, align 8, !tbaa !401
  %.not.i387 = icmp eq i8 %i.gck, 1
  br i1 %.not.i387, label %bb.acb, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.acb:                                           ; preds = %bb.aca
  %i.gcl = getelementptr inbounds nuw i8, ptr %.val.i386, i64 16
  %i.gcm = load i64, ptr %i.gcl, align 8, !tbaa !403
  %i.gcn = trunc i64 %i.gcm to i32
  %i.gco = and i32 %i.gcn, 65535                  ; 2 uses
  %i.gcp = icmp eq i32 %i.gco, 65535
  br i1 %i.gcp, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand17isNEONi16splatNotEv.exit

_ZNK12_GLOBAL__N_110ARMOperand17isNEONi16splatNotEv.exit: ; preds = %bb.acb
  %i.gcq = xor i32 %i.gco, 65535                  ; 2 uses
  %i.gcr = and i32 %i.gcq, 255
  %.not.i.i.i389 = icmp ne i32 %i.gcr, 0
  %.not.i.1.i.i390 = icmp samesign ugt i32 %i.gcq, 255
  %i.gcs = xor i1 %.not.i.1.i.i390, %.not.i.i.i389
  br i1 %i.gcs, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.acc:                                           ; preds = %bb.bl
  %i.gct = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.gcu = getelementptr inbounds nuw i8, ptr %i.gct, i64 40
  %i.gcv = load ptr, ptr %i.gcu, align 8
  %i.gcw = call noundef zeroext i1 %i.gcv(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1301
  br i1 %i.gcw, label %bb.acd, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.acd:                                           ; preds = %bb.acc
  %i.gcx = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i382 = load ptr, ptr %i.gcx, align 8, !tbaa !60 ; 2 uses
  %i.gcy = load i8, ptr %.val.i382, align 8, !tbaa !401
  %.not.i383 = icmp eq i8 %i.gcy, 1
  br i1 %.not.i383, label %bb.ace, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.ace:                                           ; preds = %bb.acd
  %i.gcz = getelementptr inbounds nuw i8, ptr %.val.i382, i64 16
  %i.gda = load i64, ptr %i.gcz, align 8, !tbaa !403
  %i.gdb = trunc i64 %i.gda to i32                ; 5 uses
  %i.gdc = icmp eq i32 %i.gdb, -1
  br i1 %i.gdc, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand17isNEONi32splatNotEv.exit

_ZNK12_GLOBAL__N_110ARMOperand17isNEONi32splatNotEv.exit: ; preds = %bb.ace
  %i.gdd = and i32 %i.gdb, 255
  %.not.i.i.i384 = icmp ne i32 %i.gdd, 255
  %i.gde = zext i1 %.not.i.i.i384 to i32
  %i.gdf = and i32 %i.gdb, 65280
  %.not.i.1.i.i = icmp ne i32 %i.gdf, 65280
  %i.gdg = zext i1 %.not.i.1.i.i to i32
  %i.gdh = and i32 %i.gdb, 16711680
  %.not.i.2.i.i = icmp ne i32 %i.gdh, 16711680
  %i.gdi = zext i1 %.not.i.2.i.i to i32
  %.not.i.3.i.i = icmp ult i32 %i.gdb, -16777216
  %i.gdj = zext i1 %.not.i.3.i.i to i32
  %spec.select.i.1.i.i = add nuw nsw i32 %i.gdg, %i.gdj
  %spec.select.i.2.i.i = add nuw nsw i32 %spec.select.i.1.i.i, %i.gde
  %spec.select.i.3.i.i = add nuw nsw i32 %spec.select.i.2.i.i, %i.gdi
  %i.gdk = icmp eq i32 %spec.select.i.3.i.i, 1
  br i1 %i.gdk, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.thread, label %_ZNK12_GLOBAL__N_110ARMOperand14isAM2OffsetImmEv.exit.thread.i

bb.acf:                                           ; preds = %bb.bl
  %i.gdl = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.gdm = getelementptr inbounds nuw i8, ptr %i.gdl, i64 40
  %i.gdn = load ptr, ptr %i.gdm, align 8
  %i.gdo = call noundef zeroext i1 %i.gdn(ptr noundef nonnull align 8 dereferenceable(176) %i.gz) #29, !inline_history !1302
  br i1 %i.gdo, label %bb.acg, label %.loopexit.i

bb.acg:                                           ; preds = %bb.acf
  %i.gdp = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %.val.i.i.i379 = load ptr, ptr %i.gdp, align 8, !tbaa !60 ; 2 uses
  %i.gdq = load i8, ptr %.val.i.i.i379, align 8, !tbaa !401
  %.not.i.i.i380 = icmp eq i8 %i.gdq, 1
  br i1 %.not.i.i.i380, label %bb.ach, label %.loopexit.i

bb.ach:                                           ; preds = %bb.acg
  %i.gdr = getelementptr inbounds nuw i8, ptr %.val.i.i.i379, i64 16
  %i.gds = load i64, ptr %i.gdr, align 8, !tbaa !403 ; 7 uses
  %.not29.i.i.i = icmp eq i64 %i.gds, 0
  br i1 %.not29.i.i.i, label %.loopexit.i, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.ach
  %i.gdt = lshr i64 %i.gds, 8
  %i.gdu = xor i64 %i.gdt, %i.gds
  %i.gdv = and i64 %i.gdu, 255
  %.not32.i.i.i = icmp eq i64 %i.gdv, 0
  br i1 %.not32.i.i.i, label %.preheader.i.1.i, label %.loopexit.i

.preheader.i.1.i:                                 ; preds = %.preheader.i.preheader.i
  %i.gdw = lshr i64 %i.gds, 16
  %i.gdx = xor i64 %i.gdw, %i.gds
  %i.gdy = and i64 %i.gdx, 255
  %.not32.i.i.1.i = icmp eq i64 %i.gdy, 0
  br i1 %.not32.i.i.1.i, label %.preheader.i.2.i, label %.loopexit.i

.preheader.i.2.i:                                 ; preds = %.preheader.i.1.i
  %i.gdz = lshr i64 %i.gds, 24
  %i.gea = xor i64 %i.gdz, %i.gds
  %i.geb = and i64 %i.gea, 255
  %.not32.i.i.2.i = icmp eq i64 %i.geb, 0
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_ARMAsmParser.cpp:bb.a
  store ptr @.str.4, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 5, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 1, ptr %.sroa.11.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @.str.5, ptr %.sroa.13.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 28, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @.str.6, ptr %.sroa.15.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 3, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 2, ptr %.sroa.17.0..sroa_idx.i, align 8
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr @.str.7, ptr %.sroa.19.0..sroa_idx.i, align 8
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 30, ptr %.sroa.20.0..sroa_idx.i, align 8
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr @.str.8, ptr %.sroa.21.0..sroa_idx.i, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 5, ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.2351.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 3, ptr %.sroa.2351.0..sroa_idx.i, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr @.str.9, ptr %.sroa.25.0..sroa_idx.i, align 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 39, ptr %.sroa.26.0..sroa_idx.i, align 8
  store i32 4, ptr %i.b, align 8, !tbaa !61, !alias.scope !1437
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN12_GLOBAL__N_114ImplicitItModeE, i32 noundef 0, i32 noundef 0) #29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 120), align 8, !tbaa !91
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_116ImplicitItModeTyEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 128), align 8, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIN12_GLOBAL__N_116ImplicitItModeTyELb0ENS0_6parserIS3_EEEE, i64 16), ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, align 8, !tbaa !34
  store ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 152), align 8, !tbaa !1438
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 144), align 8, !tbaa !34
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 160), align 8, !tbaa !39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 168), align 8, !tbaa !61
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 172), align 4, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 560), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN12_GLOBAL__N_114ImplicitItModeE, ptr nonnull @.str, i64 15) #29
  %.val8.i.i.i = load ptr, ptr %1, align 8, !tbaa !39 ; 2 uses
  %.val9.i.i.i = load i32, ptr %i.b, align 8, !tbaa !61 ; 2 uses
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 120), align 8, !tbaa !91
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 140), align 4, !tbaa !93
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 136), align 8, !tbaa !94
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 32), align 8, !tbaa !81
  store i64 53, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 40), align 8, !tbaa !59
  %i.d = zext i32 %.val9.i.i.i to i64
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i.i = icmp eq i32 %.val9.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4llvm2cl3optIN12_GLOBAL__N_116ImplicitItModeTyELb0ENS0_6parserIS3_EEEC2IJA16_cNS0_11initializerIS3_EENS0_4descENS0_11ValuesClassEEEEDpRKT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.a
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i.i = phi ptr [ %.val8.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ae, %_ZN4llvm2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.02.i.i.i.i.i.i.i.i, align 8, !tbaa !81 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !81
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i, i64 32
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !59
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.k, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %0, align 8, !tbaa !81
  store i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !59
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.f, align 8, !tbaa !81
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_116ImplicitItModeTyEEE, i64 16), ptr %i.g, align 8, !tbaa !34
  store i8 1, ptr %i.h, align 4, !tbaa !93
  store i32 %.val.i.i.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !94
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 168), align 8, !tbaa !61 ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 172), align 4, !tbaa !62
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.m, %i.p
  %.val.pre1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 160), align 8, !tbaa !39 ; 4 uses
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i, label %bb.c, !prof !95

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %.val.pre1.i.i.i.i.i.i.i.i.i.i, i64 %i.n
  %i.r = icmp uge ptr %0, %.val.pre1.i.i.i.i.i.i.i.i.i.i
  %i.s = icmp ult ptr %0, %i.q
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.r, %i.s
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i, !prof !332

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %.val.pre1.i.i.i.i.i.i.i.i.i.i to i64
  %i.u = sub i64 %i.j, %i.t
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEE10OptionInfoELb0EE4growEm(i64 noundef %i.o)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 160), align 8, !tbaa !39 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.u
  br label %_ZN4llvm2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.c
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEE10OptionInfoELb0EE4growEm(i64 noundef %i.o)
  %.val.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 160), align 8, !tbaa !39
  br label %_ZN4llvm2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i

_ZN4llvm2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.b
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.pre1.i.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d ], [ %.val.pre.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.016.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %0, %bb.b ], [ %i.v, %bb.d ], [ %0, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 168), align 8, !tbaa !61
  %i.w = zext i32 %.val3.i.i.i.i.i.i.i.i.i.i to i64
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.w ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(48) %.016.i.i.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !109
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_116ImplicitItModeTyEEE, i64 16), ptr %i.y, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.aa, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_116ImplicitItModeTyEEE, i64 16), ptr %i.y, align 8, !tbaa !34
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 168), align 8, !tbaa !61
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 168), align 8, !tbaa !61
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 152), align 8, !tbaa !77, !nonnull !46, !align !78
  call void @_ZN4llvm2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  %i.ae = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm2cl3optIN12_GLOBAL__N_116ImplicitItModeTyELb0ENS0_6parserIS3_EEEC2IJA16_cNS0_11initializerIS3_EENS0_4descENS0_11ValuesClassEEEEDpRKT_.exit.i, label %bb.b

_ZN4llvm2cl3optIN12_GLOBAL__N_116ImplicitItModeTyELb0ENS0_6parserIS3_EEEC2IJA16_cNS0_11initializerIS3_EENS0_4descENS0_11ValuesClassEEEEDpRKT_.exit.i: ; preds = %_ZN4llvm2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i, %bb.a
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120) @_ZN12_GLOBAL__N_114ImplicitItModeE) #29
  %i.af = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %__cxx_global_var_init.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm2cl3optIN12_GLOBAL__N_116ImplicitItModeTyELb0ENS0_6parserIS3_EEEC2IJA16_cNS0_11initializerIS3_EENS0_4descENS0_11ValuesClassEEEEDpRKT_.exit.i
  call void @free(ptr noundef %i.af) #29
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %_ZN4llvm2cl3optIN12_GLOBAL__N_116ImplicitItModeTyELb0ENS0_6parserIS3_EEEC2IJA16_cNS0_11initializerIS3_EENS0_4descENS0_11ValuesClassEEEEDpRKT_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIN12_GLOBAL__N_116ImplicitItModeTyELb0ENS0_6parserIS3_EEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_114ImplicitItModeE, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN12_GLOBAL__N_118AddBuildAttributesE, i32 noundef 0, i32 noundef 0) #29
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118AddBuildAttributesE, i64 120), align 8, !tbaa !315
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118AddBuildAttributesE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118AddBuildAttributesE, i64 128), align 8, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN12_GLOBAL__N_118AddBuildAttributesE, align 8, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118AddBuildAttributesE, i64 144), align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118AddBuildAttributesE, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN12_GLOBAL__N_118AddBuildAttributesE, ptr nonnull align 1 dereferenceable(25) @.str.11, i64 24) #29
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118AddBuildAttributesE, i64 120), align 8, !tbaa !315
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118AddBuildAttributesE, i64 137), align 1, !tbaa !111
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118AddBuildAttributesE, i64 136), align 8, !tbaa !1439
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN12_GLOBAL__N_118AddBuildAttributesE) #29
  %i.ai = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_118AddBuildAttributesE, ptr nonnull @__dso_handle) #29 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <6 x i64> @llvm.ctpop.v6i64(<6 x i64>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v6i64(<6 x i64>) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin nounwind allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}
!llvm.errno.tbaa = !{!32}

!0 = distinct !{null}
!1 = distinct !{!1, !73}
!2 = distinct !{ptr @_ZN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEE5eraseEPKS5_, null, null, null, null, null, null, null, null, null, null}
!3 = distinct !{!3, !73}
!4 = distinct !{ptr @_ZN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEE5eraseEPKS5_, null, null, null}
!5 = distinct !{!5, !73}
!6 = distinct !{!6, !73}
!7 = distinct !{null, null}
!8 = distinct !{null, null, null, null}
!9 = distinct !{!9, !73}
!10 = distinct !{!10, !73}
!11 = distinct !{!11, !73}
!12 = distinct !{null, null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{!15, !73}
!16 = distinct !{null}
!17 = distinct !{null, null, null, null}
!18 = distinct !{null}
!19 = distinct !{!19, !73}
!20 = distinct !{null}
!21 = distinct !{!21, !73}
!22 = distinct !{!22, !73}
!23 = distinct !{!23, !73}
!24 = distinct !{!24, !73}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!"omnipotent char", !28, i64 0}
!30 = !{!"int", !29, i64 0}
!31 = !{!"__libc_errno", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"vtable pointer", !28, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"any pointer", !29, i64 0}
!36 = !{!"_ZTSSt14_Function_base", !29, i64 0, !35, i64 16}
!37 = !{!36, !35, i64 16}
!38 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !35, i64 0, !30, i64 8, !30, i64 12}
!39 = !{!38, !35, i64 0}
!40 = !{ptr @_ZN4llvm2cl6parserIN12_GLOBAL__N_116ImplicitItModeTyEED2Ev}
!41 = !{!"any p2 pointer", !35, i64 0}
!42 = !{!"bool", !29, i64 0}
!43 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !41, i64 0, !30, i64 8, !30, i64 12, !42, i64 16}
!44 = !{!43, !42, i64 16}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!43, !41, i64 0}
!48 = !{!"p1 _ZTSN4llvm18MCParsedAsmOperandE", !35, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"p1 omnipotent char", !35, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!52 = !{!"long", !29, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !52, i64 8, !29, i64 16}
!54 = !{!"_ZTSN4llvm18MCParsedAsmOperandE", !30, i64 8, !53, i64 16}
!55 = !{!54, !30, i64 8}
!56 = !{!51, !50, i64 0}
!57 = !{!53, !50, i64 0}
!58 = !{!53, !52, i64 8}
!59 = !{!52, !52, i64 0}
!60 = !{!29, !29, i64 0}
!61 = !{!38, !30, i64 8}
!62 = !{!38, !30, i64 12}
!63 = !{!"_ZTSN4llvm5SMLocE", !50, i64 0}
!64 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_10MCRegisterEvEE", !38, i64 0}
!65 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EEE", !64, i64 0}
!66 = !{!"_ZTSN4llvm15SmallVectorImplINS_10MCRegisterEEE", !65, i64 0}
!67 = !{!"_ZTSN4llvm18SmallVectorStorageINS_10MCRegisterELj8EEE", !29, i64 0}
!68 = !{!"_ZTSN4llvm11SmallVectorINS_10MCRegisterELj8EEE", !66, i64 0, !67, i64 16}
!69 = !{!"p1 _ZTSN12_GLOBAL__N_112ARMAsmParserE", !35, i64 0}
!70 = !{!"_ZTSN12_GLOBAL__N_110ARMOperandE", !54, i64 0, !29, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !68, i64 80, !69, i64 128, !29, i64 136}
!71 = !{!70, !29, i64 48}
!72 = !{ptr @_ZN12_GLOBAL__N_110ARMOperandD2Ev}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!30, !30, i64 0}
!75 = !{!"p1 _ZTSN4llvm2cl6OptionE", !35, i64 0}
!76 = !{!"_ZTSN4llvm2cl19generic_parser_baseE", !75, i64 8}
!77 = !{!76, !75, i64 8}
!78 = !{i64 8}
!79 = !{!"_ZTSN4llvm9StringRefE", !50, i64 0, !52, i64 8}
!80 = !{!79, !52, i64 8}
!81 = !{!50, !50, i64 0}
!82 = !{!"_ZTSN4llvm5Twine8NodeKindE", !29, i64 0}
!83 = !{!"_ZTSN4llvm5TwineE", !29, i64 0, !29, i64 16, !82, i64 32, !82, i64 33}
!84 = !{!83, !82, i64 32}
!85 = !{!83, !82, i64 33}
!86 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!87 = !{!"_ZTSN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_116ImplicitItModeTyEEE", !86, i64 0, !29, i64 8, !42, i64 12}
!88 = !{!"_ZTSN4llvm2cl15OptionValueBaseIN12_GLOBAL__N_116ImplicitItModeTyELb0EEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm2cl11OptionValueIN12_GLOBAL__N_116ImplicitItModeTyEEE", !88, i64 0}
!90 = !{!"_ZTSN4llvm2cl11opt_storageIN12_GLOBAL__N_116ImplicitItModeTyELb0ELb0EEE", !29, i64 0, !89, i64 8}
!91 = !{!90, !29, i64 0}
!92 = !{!"short", !29, i64 0}
!93 = !{!87, !42, i64 12}
!94 = !{!87, !29, i64 8}
!95 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!96 = !{!82, !82, i64 0}
!97 = !{i64 0, i64 16, !60, i64 16, i64 16, !60, i64 32, i64 1, !96, i64 33, i64 1, !96}
!98 = !{!"_ZTSN4llvm10MCRegisterE", !30, i64 0}
!99 = !{!98, !30, i64 0}
!100 = !{!"_ZTSN4llvm11LaneBitmaskE", !52, i64 0}
!101 = !{!"_ZTSN4llvm15MCRegisterClassE", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !92, i64 16, !92, i64 18, !92, i64 20, !29, i64 22, !42, i64 23, !42, i64 24, !30, i64 28, !30, i64 32, !100, i64 40, !29, i64 48, !42, i64 49, !29, i64 50, !29, i64 51, !42, i64 52, !42, i64 53, !30, i64 56, !92, i64 60}
!102 = !{!101, !92, i64 18}
!103 = !{!101, !30, i64 4}
!104 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !29, i64 0}
!105 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !29, i64 0}
!106 = !{!"_ZTSN4llvm11raw_ostreamE", !104, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !42, i64 40, !105, i64 44}
!107 = !{!106, !50, i64 24}
!108 = !{!106, !50, i64 32}
!109 = !{i64 0, i64 8, !81, i64 8, i64 8, !59, i64 16, i64 8, !81, i64 24, i64 8, !59}
!110 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !86, i64 0, !42, i64 8, !42, i64 9}
!111 = !{!110, !42, i64 9}
!112 = !{!"p1 _ZTSN4llvm11MCAsmParserE", !35, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !41, i64 0}
!115 = !{!"_ZTSN4llvm13StringMapImplE", !114, i64 0, !30, i64 8, !30, i64 12, !30, i64 16}
!116 = !{!115, !114, i64 0}
!117 = !{!"p1 _ZTSN4llvm18StringMapEntryBaseE", !35, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!"_ZTSN4llvm18StringMapEntryBaseE", !52, i64 0}
!120 = !{!119, !52, i64 0}
!121 = !{!115, !30, i64 12}
!122 = !{!"_ZTSN4llvm20MCAsmParserExtensionE", !112, i64 8, !42, i64 16}
!123 = !{!122, !112, i64 8}
!124 = !{!"p1 _ZTSN4llvm17MCTargetAsmParserE", !35, i64 0}
!125 = !{!"p1 _ZTSN4llvm9MCContextE", !35, i64 0}
!126 = !{!"p1 _ZTSN4llvm10MCStreamerE", !35, i64 0}
!127 = !{!"p1 _ZTSN4llvm9SourceMgrE", !35, i64 0}
!128 = !{!"p1 _ZTSN4llvm9MCAsmInfoE", !35, i64 0}
!129 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_8AsmTokenEvEE", !38, i64 0}
!130 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EEE", !129, i64 0}
!131 = !{!"_ZTSN4llvm15SmallVectorImplINS_8AsmTokenEEE", !130, i64 0}
!132 = !{!"_ZTSN4llvm18SmallVectorStorageINS_8AsmTokenELj1EEE", !29, i64 0}
!133 = !{!"_ZTSN4llvm11SmallVectorINS_8AsmTokenELj1EEE", !131, i64 0, !132, i64 16}
!134 = !{!"p1 _ZTSN4llvm18AsmCommentConsumerE", !35, i64 0}
!135 = !{!"_ZTSN4llvm8AsmLexerE", !133, i64 0, !50, i64 56, !79, i64 64, !63, i64 80, !53, i64 88, !128, i64 120, !42, i64 128, !42, i64 129, !42, i64 130, !42, i64 131, !50, i64 136, !42, i64 144, !42, i64 145, !42, i64 146, !42, i64 147, !42, i64 148, !42, i64 149, !42, i64 150, !42, i64 151, !42, i64 152, !30, i64 156, !42, i64 160, !42, i64 161, !134, i64 168}
!136 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_11MCAsmParser14MCPendingErrorEvEE", !38, i64 0}
!137 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EEE", !136, i64 0}
!138 = !{!"_ZTSN4llvm15SmallVectorImplINS_11MCAsmParser14MCPendingErrorEEE", !137, i64 0}
!139 = !{!"_ZTSN4llvm11SmallVectorINS_11MCAsmParser14MCPendingErrorELj0EEE", !138, i64 0}
!140 = !{!"_ZTSN4llvm11MCAsmParserE", !124, i64 8, !125, i64 16, !126, i64 24, !127, i64 32, !128, i64 40, !135, i64 48, !139, i64 224, !42, i64 240, !42, i64 241, !42, i64 242}
!141 = !{!140, !125, i64 16}
!142 = !{!"_ZTSN4llvm9MCContext11EnvironmentE", !29, i64 0}
!143 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !29, i64 0}
!144 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !29, i64 0}
!145 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !29, i64 0}
!146 = !{!"_ZTSN4llvm6Triple6OSTypeE", !29, i64 0}
!147 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !29, i64 0}
!148 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !29, i64 0}
!149 = !{!"_ZTSN4llvm6TripleE", !53, i64 0, !143, i64 32, !144, i64 36, !145, i64 40, !146, i64 44, !147, i64 48, !148, i64 52}
!150 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm9SourceMgrELb0EE", !127, i64 0}
!151 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm9SourceMgrESt14default_deleteIS1_EEE", !150, i64 0}
!152 = !{!"_ZTSSt5tupleIJPN4llvm9SourceMgrESt14default_deleteIS1_EEE", !151, i64 0}
!153 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm9SourceMgrESt14default_deleteIS1_EE", !152, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm9SourceMgrESt14default_deleteIS1_ELb1ELb1EE", !153, i64 0}
!155 = !{!"_ZTSSt10unique_ptrIN4llvm9SourceMgrESt14default_deleteIS1_EE", !154, i64 0}
!156 = !{!"p2 _ZTSN4llvm6MDNodeE", !41, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!158 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE12_Vector_implE", !157, i64 0}
!159 = !{!"_ZTSSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE", !158, i64 0}
!160 = !{!"_ZTSSt6vectorIPKN4llvm6MDNodeESaIS3_EE", !159, i64 0}
end_hunk_1
