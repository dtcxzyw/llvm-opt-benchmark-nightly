inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpression0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AIdentifier0x29:bb.a
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %bb.su
  %.012567 = phi i64 [ %.0.copyload.i15563, %bb.su ], [ %i.dkc, %bb.sv ] ; 8 uses
  %i.dke = icmp eq i32 %.0.copyload.i15560, %.0.copyload.i15561
  br i1 %i.dke, label %.loopexit15811, label %.preheader15810

.preheader15810:                                  ; preds = %bb.sw, %.preheader15810
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader15810 ], [ 0, %bb.sw ] ; 3 uses
  %.512585 = phi i32 [ %i.dkk, %.preheader15810 ], [ %.0.copyload.i15560, %bb.sw ] ; 2 uses
  %i.dkf = trunc nuw nsw i64 %indvars.iv to i32
  %.2412515 = add i32 %i.djw, %i.dkf
  %i.dkg = zext i32 %.512585 to i64
  %.val13460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkh = getelementptr inbounds nuw i8, ptr %.val13460, i64 %i.dkg
  %.0.copyload.i15565 = load i32, ptr %i.dkh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15565) #7, !srcloc !19
  %i.dki = zext i32 %.2412515 to i64
  %.val14141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkj = getelementptr inbounds nuw i8, ptr %.val14141, i64 %i.dki
  store i32 %.0.copyload.i15565, ptr %i.dkj, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dkk = add i32 %.512585, 4                    ; 3 uses
  %i.dkl = icmp ne i32 %i.dkk, %.0.copyload.i15561
  %i.dkm = icmp samesign ult i64 %indvars.iv, 57
  %or.cond13318 = select i1 %i.dkl, i1 %i.dkm, i1 false
  br i1 %or.cond13318, label %.preheader15810, label %.loopexit15811.loopexit

.loopexit15811.loopexit:                          ; preds = %.preheader15810
  %i.dkn = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit15811

.loopexit15811:                                   ; preds = %.loopexit15811.loopexit, %bb.sw
  %.612586 = phi i32 [ %.0.copyload.i15560, %bb.sw ], [ %i.dkk, %.loopexit15811.loopexit ] ; 2 uses
  %.512524 = phi i32 [ 0, %bb.sw ], [ %i.dkn, %.loopexit15811.loopexit ]
  %i.dko = icmp eq i32 %.612586, %.0.copyload.i15561
  br i1 %i.dko, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %.loopexit15811
  %i.dkp = tail call i64 @w2c_hermes_llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_short0x28char0x20const0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.djw, i32 noundef %.512524, i64 noundef %.012567) #7
  %i.dkq = trunc i64 %i.dkp to i32
  br label %bb.tk

bb.sy:                                            ; preds = %.loopexit15811
  %i.dkr = zext i32 %i.djw to i64                 ; 9 uses
  %i.dks = add nuw nsw i64 %i.dkr, 32             ; 2 uses
  %.val14486 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkt = getelementptr inbounds nuw i8, ptr %.val14486, i64 %i.dks
  %.0.copyload.i15566 = load i64, ptr %i.dkt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15566) #7, !srcloc !20
  %i.dku = lshr i64 %.012567, 47
  %i.dkv = xor i64 %i.dku, %.012567               ; 4 uses
  %i.dkw = xor i64 %.012567, -5435081209227447693 ; 3 uses
  %i.dkx = mul i64 %i.dkw, -7070675565921424023   ; 2 uses
  %i.dky = lshr i64 %i.dkx, 47
  %i.dkz = xor i64 %i.dkx, %i.dky
  %i.dla = xor i64 %i.dkz, -5435081209227447693
  %i.dlb = mul i64 %i.dla, -7070675565921424023   ; 2 uses
  %i.dlc = lshr i64 %i.dlb, 47
  %i.dld = xor i64 %i.dlc, %i.dlb
  %i.dle = mul i64 %i.dld, -7070675565921424023
  %i.dlf = add i64 %i.dle, %i.dkv                 ; 2 uses
  %i.dlg = tail call i64 @llvm.fshl.i64(i64 %i.dlf, i64 %i.dlf, i64 31)
  %i.dlh = mul i64 %i.dlg, -5435081209227447693   ; 2 uses
  %i.dli = mul i64 %.012567, -5435081209227447693
  %i.dlj = xor i64 %i.dkv, %i.dli
  %i.dlk = mul i64 %i.dlj, -7070675565921424023   ; 2 uses
  %i.dll = lshr i64 %i.dlk, 47
  %i.dlm = xor i64 %i.dkv, %i.dll
  %i.dln = xor i64 %i.dlm, %i.dlk
  %i.dlo = mul i64 %i.dln, -7070675565921424023   ; 2 uses
  %i.dlp = lshr i64 %i.dlo, 47
  %i.dlq = xor i64 %i.dlp, %i.dlo
  %i.dlr = mul i64 %i.dlq, -7070675565921424023   ; 2 uses
  %i.dls = add i64 %i.dlh, %i.dlr
  %i.dlt = add i64 %i.dls, %.0.copyload.i15566    ; 3 uses
  %i.dlu = add nuw nsw i64 %i.dkr, 40             ; 2 uses
  %.val14485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dlv = getelementptr inbounds nuw i8, ptr %.val14485, i64 %i.dlu
  %.0.copyload.i15567 = load i64, ptr %i.dlv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15567) #7, !srcloc !20
  %i.dlw = add nuw nsw i64 %i.dkr, 48             ; 2 uses
  %.val14484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dlx = getelementptr inbounds nuw i8, ptr %.val14484, i64 %i.dlw
  %.0.copyload.i15568 = load i64, ptr %i.dlx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15568) #7, !srcloc !20
  %i.dly = add i64 %.0.copyload.i15567, %i.dlt
  %i.dlz = add i64 %i.dly, %.0.copyload.i15568    ; 3 uses
  %i.dma = tail call i64 @llvm.fshl.i64(i64 %i.dlz, i64 %i.dlz, i64 20)
  %i.dmb = add i64 %i.dma, %i.dlt
  %i.dmc = add nuw nsw i64 %i.dkr, 56             ; 2 uses
  %.val14483 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dmd = getelementptr inbounds nuw i8, ptr %.val14483, i64 %i.dmc
  %.0.copyload.i15569 = load i64, ptr %i.dmd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15569) #7, !srcloc !20
  %i.dme = tail call i64 @llvm.fshl.i64(i64 %i.dkw, i64 %i.dkw, i64 15) ; 2 uses
  %i.dmf = add i64 %.0.copyload.i15567, %i.dme
  %i.dmg = mul i64 %.012567, -5435081209227447692
  %i.dmh = add i64 %.0.copyload.i15568, %i.dmg    ; 2 uses
  %i.dmi = tail call i64 @llvm.fshl.i64(i64 %i.dmh, i64 %i.dmh, i64 22)
  %i.dmj = mul i64 %i.dmi, -5435081209227447693
  %i.dmk = add i64 %i.dmf, %i.dmj                 ; 2 uses
  %i.dml = add nuw nsw i64 %i.dkr, 16             ; 2 uses
  %.val14482 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dmm = getelementptr inbounds nuw i8, ptr %.val14482, i64 %i.dml
  %.0.copyload.i15570 = load i64, ptr %i.dmm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15570) #7, !srcloc !20
  %i.dmn = add i64 %.0.copyload.i15569, %i.dlt
  %i.dmo = add i64 %i.dmn, %i.dmk
  %i.dmp = add i64 %i.dmo, %.0.copyload.i15570    ; 2 uses
  %i.dmq = tail call i64 @llvm.fshl.i64(i64 %i.dmp, i64 %i.dmp, i64 43)
  %i.dmr = add i64 %i.dmb, %i.dmq
  %i.dms = add i64 %.0.copyload.i15569, %i.dlz
  %.val14481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dmt = getelementptr inbounds nuw i8, ptr %.val14481, i64 %i.dkr
  %.0.copyload.i15571 = load i64, ptr %i.dmt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15571) #7, !srcloc !20
  %i.dmu = mul i64 %.012567, -7894485801551159383
  %i.dmv = add i64 %.0.copyload.i15571, %i.dmu    ; 3 uses
  %i.dmw = add nuw nsw i64 %i.dkr, 8              ; 2 uses
  %.val14480 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dmx = getelementptr inbounds nuw i8, ptr %.val14480, i64 %i.dmw
  %.0.copyload.i15572 = load i64, ptr %i.dmx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15572) #7, !srcloc !20
  %i.dmy = add i64 %i.dmv, %.0.copyload.i15570
  %i.dmz = add i64 %i.dmy, %.0.copyload.i15572    ; 3 uses
  %i.dna = tail call i64 @llvm.fshl.i64(i64 %i.dmz, i64 %i.dmz, i64 20)
  %i.dnb = add i64 %i.dna, %i.dmv
  %i.dnc = add nuw nsw i64 %i.dkr, 24             ; 2 uses
  %.val14479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dnd = getelementptr inbounds nuw i8, ptr %.val14479, i64 %i.dnc
  %.0.copyload.i15573 = load i64, ptr %i.dnd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15573) #7, !srcloc !20
  %i.dne = add i64 %i.dme, %.012567
  %i.dnf = add i64 %i.dne, %.0.copyload.i15572    ; 2 uses
  %i.dng = tail call i64 @llvm.fshl.i64(i64 %i.dnf, i64 %i.dnf, i64 27)
  %i.dnh = mul i64 %i.dng, -5435081209227447693
  %i.dni = xor i64 %i.dnh, %i.dlr                 ; 2 uses
  %i.dnj = add i64 %i.dmv, %i.dkv
  %i.dnk = add i64 %i.dnj, %.0.copyload.i15573
  %i.dnl = add i64 %i.dnk, %i.dni                 ; 2 uses
  %i.dnm = tail call i64 @llvm.fshl.i64(i64 %i.dnl, i64 %i.dnl, i64 43)
  %i.dnn = add i64 %i.dnb, %i.dnm
  %i.dno = add i64 %.0.copyload.i15573, %i.dmz
  br label %bb.sz

bb.sz:                                            ; preds = %.loopexit15807, %bb.sy
  %.712587 = phi i32 [ %.612586, %bb.sy ], [ %i.dnu, %.loopexit15807 ]
  %.012573 = phi i32 [ 64, %bb.sy ], [ %i.dqx, %.loopexit15807 ]
  %.012570 = phi i64 [ %i.dmk, %bb.sy ], [ %i.dpr, %.loopexit15807 ] ; 2 uses
  %.012569 = phi i64 [ %i.dmr, %bb.sy ], [ %i.dqb, %.loopexit15807 ] ; 2 uses
  %.112568 = phi i64 [ %i.dnn, %bb.sy ], [ %i.dqv, %.loopexit15807 ] ; 2 uses
  %.012566 = phi i64 [ %i.dni, %bb.sy ], [ %i.dqq, %.loopexit15807 ]
  %.012565 = phi i64 [ %i.dno, %bb.sy ], [ %i.dqy, %.loopexit15807 ] ; 2 uses
  %.012564 = phi i64 [ %i.dms, %bb.sy ], [ %i.dqw, %.loopexit15807 ] ; 2 uses
  %.012563 = phi i64 [ %i.dlh, %bb.sy ], [ %i.dph, %.loopexit15807 ]
  br label %bb.ta

bb.ta:                                            ; preds = %bb.ta, %bb.sz
  %indvars.iv15905 = phi i32 [ %indvars.iv.next15906, %bb.ta ], [ 5, %bb.sz ] ; 2 uses
  %indvars.iv15903 = phi i32 [ %indvars.iv.next15904, %bb.ta ], [ 3, %bb.sz ] ; 2 uses
  %indvars.iv15901 = phi i32 [ %indvars.iv.next15902, %bb.ta ], [ 59, %bb.sz ] ; 2 uses
  %indvars.iv15896 = phi i64 [ %indvars.iv.next15897, %bb.ta ], [ 4, %bb.sz ] ; 2 uses
  %indvars.iv15893 = phi i64 [ %indvars.iv.next15894, %bb.ta ], [ 0, %bb.sz ] ; 3 uses
  %.812588 = phi i32 [ %i.dnu, %bb.ta ], [ %.712587, %bb.sz ] ; 2 uses
  %i.dnp = trunc nuw nsw i64 %indvars.iv15893 to i32 ; 2 uses
  %.1112611 = add i32 %i.djw, %i.dnp
  %i.dnq = zext i32 %.812588 to i64
  %.val13459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dnr = getelementptr inbounds nuw i8, ptr %.val13459, i64 %i.dnq
  %.0.copyload.i15574 = load i32, ptr %i.dnr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15574) #7, !srcloc !19
  %i.dns = zext i32 %.1112611 to i64
  %.val14140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dnt = getelementptr inbounds nuw i8, ptr %.val14140, i64 %i.dns
  store i32 %.0.copyload.i15574, ptr %i.dnt, align 1
  %indvars.iv.next15894 = add nuw nsw i64 %indvars.iv15893, 4 ; 2 uses
  %i.dnu = add i32 %.812588, 4                    ; 4 uses
  %i.dnv = icmp ne i32 %i.dnu, %.0.copyload.i15561
  %i.dnw = icmp samesign ult i64 %indvars.iv15893, 57
  %or.cond13319 = select i1 %i.dnv, i1 %i.dnw, i1 false
  %indvars.iv.next15897 = add nuw nsw i64 %indvars.iv15896, 4
  %indvars.iv.next15902 = add nsw i32 %indvars.iv15901, -4
  %indvars.iv.next15904 = add nuw nsw i32 %indvars.iv15903, 4
  %indvars.iv.next15906 = add nuw nsw i32 %indvars.iv15905, 4
  br i1 %or.cond13319, label %bb.ta, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.dnx = trunc nuw nsw i64 %indvars.iv.next15894 to i32 ; 8 uses
  %i.dny = and i32 %i.dnx, 2147483580
  %.not13163 = icmp eq i32 %i.dny, 0
  br i1 %.not13163, label %.loopexit15807, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.dnz = sub nuw nsw i32 60, %i.dnp             ; 2 uses
  %i.doa = icmp eq i32 %i.dnz, %i.dnx
  br i1 %i.doa, label %.preheader15806.preheader, label %.preheader15809

.preheader15806.preheader:                        ; preds = %bb.tc
  %umin = tail call i32 @llvm.umin.i32(i32 %indvars.iv15901, i32 %indvars.iv15903)
  %i.dob = add nuw nsw i32 %umin, %indvars.iv15905
  %wide.trip.count = zext nneg i32 %i.dob to i64
  br label %.preheader15806

.preheader15806:                                  ; preds = %.preheader15806.preheader, %.preheader15806
  %indvars.iv15898 = phi i64 [ %indvars.iv15896, %.preheader15806.preheader ], [ %indvars.iv.next15899, %.preheader15806 ] ; 2 uses
  %.1512639 = phi i32 [ %i.djw, %.preheader15806.preheader ], [ %i.dok, %.preheader15806 ] ; 2 uses
  %i.doc = zext i32 %.1512639 to i64              ; 2 uses
  %.val14760 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dod = getelementptr inbounds nuw i8, ptr %.val14760, i64 %i.doc
  %.0.copyload.i15575 = load i8, ptr %i.dod, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i15575) #7, !srcloc !21
  %i.doe = trunc nuw nsw i64 %indvars.iv15898 to i32
  %i.dof = add i32 %i.djw, %i.doe
  %i.dog = zext i32 %i.dof to i64                 ; 2 uses
  %.val14759 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.doh = getelementptr inbounds nuw i8, ptr %.val14759, i64 %i.dog
  %.0.copyload.i15576 = load i8, ptr %i.doh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i15576) #7, !srcloc !21
  %.val14561 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.doi = getelementptr inbounds nuw i8, ptr %.val14561, i64 %i.doc
  store i8 %.0.copyload.i15576, ptr %i.doi, align 1
  %.val14560 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.doj = getelementptr inbounds nuw i8, ptr %.val14560, i64 %i.dog
  store i8 %.0.copyload.i15575, ptr %i.doj, align 1
  %i.dok = add i32 %.1512639, 1
  %indvars.iv.next15899 = add nuw nsw i64 %indvars.iv15898, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next15899, %wide.trip.count
  br i1 %exitcond, label %.loopexit15807, label %.preheader15806

.preheader15809:                                  ; preds = %bb.tc, %bb.te
  %.2512516 = phi i32 [ %i.dom, %bb.te ], [ %i.dnz, %bb.tc ] ; 4 uses
  %.1812482 = phi i32 [ %.2512516, %bb.te ], [ %i.dnx, %bb.tc ]
  %i.dol = icmp eq i32 %.2512516, 0
  br i1 %i.dol, label %bb.td, label %bb.te, !prof !30

bb.td:                                            ; preds = %.preheader15809
  tail call void @wasm_rt_trap(i32 noundef 3) #8
  unreachable

bb.te:                                            ; preds = %.preheader15809
  %i.dom = srem i32 %.1812482, %.2512516          ; 2 uses
  %.not13164 = icmp eq i32 %i.dom, 0
  br i1 %.not13164, label %bb.tf, label %.preheader15809

bb.tf:                                            ; preds = %bb.te
  %i.don = add i32 %.2512516, %i.djw
  %i.doo = add i32 %i.djw, %i.dnx
  br label %bb.tg

bb.tg:                                            ; preds = %bb.ti, %bb.tf
  %.1912483 = phi i32 [ %i.don, %bb.tf ], [ %i.dop, %bb.ti ]
  %i.dop = add i32 %.1912483, -1                  ; 6 uses
  %i.doq = add i32 %i.dop, %i.dnx
  %i.dor = zext i32 %i.dop to i64
  %.val14758 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dos = getelementptr inbounds nuw i8, ptr %.val14758, i64 %i.dor
  %.0.copyload.i15577 = load i8, ptr %i.dos, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i15577) #7, !srcloc !21
  br label %bb.th

bb.th:                                            ; preds = %bb.th, %bb.tg
  %.1612640 = phi i32 [ %i.dop, %bb.tg ], [ %.2612517, %bb.th ]
  %.2612517 = phi i32 [ %i.doq, %bb.tg ], [ %i.dpb, %bb.th ] ; 4 uses
  %i.dot = zext i32 %.2612517 to i64              ; 2 uses
  %.val14757 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dou = getelementptr inbounds nuw i8, ptr %.val14757, i64 %i.dot
  %.0.copyload.i15578 = load i8, ptr %i.dou, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i15578) #7, !srcloc !21
  %i.dov = zext i32 %.1612640 to i64
  %.val14559 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dow = getelementptr inbounds nuw i8, ptr %.val14559, i64 %i.dov
  store i8 %.0.copyload.i15578, ptr %i.dow, align 1
  %i.dox = add i32 %.2612517, %i.dnx
  %i.doy = sub i32 %i.djv, %.2612517              ; 2 uses
  %i.doz = sub i32 %i.doo, %i.doy
  %i.dpa = icmp sgt i32 %i.doy, %i.dnx
  %i.dpb = select i1 %i.dpa, i32 %i.dox, i32 %i.doz ; 2 uses
  %.not13165 = icmp eq i32 %i.dpb, %i.dop
  br i1 %.not13165, label %bb.ti, label %bb.th

bb.ti:                                            ; preds = %bb.th
  %.val14558 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpc = getelementptr inbounds nuw i8, ptr %.val14558, i64 %i.dot
  store i8 %.0.copyload.i15577, ptr %i.dpc, align 1
  %.not13166 = icmp eq i32 %i.dop, %i.djw
  br i1 %.not13166, label %.loopexit15807, label %bb.tg

.loopexit15807:                                   ; preds = %bb.ti, %.preheader15806, %bb.tb
  %.val14478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpd = getelementptr inbounds nuw i8, ptr %.val14478, i64 %i.dmc
  %.0.copyload.i15579 = load i64, ptr %i.dpd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15579) #7, !srcloc !20
  %.val14477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpe = getelementptr inbounds nuw i8, ptr %.val14477, i64 %i.dks
  %.0.copyload.i15580 = load i64, ptr %i.dpe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15580) #7, !srcloc !20
  %i.dpf = add i64 %.012564, %.012566             ; 2 uses
  %i.dpg = tail call i64 @llvm.fshl.i64(i64 %i.dpf, i64 %i.dpf, i64 31) ; 2 uses
  %i.dph = mul i64 %i.dpg, -5435081209227447693   ; 2 uses
  %i.dpi = add i64 %i.dph, %.012569
  %i.dpj = add i64 %i.dpi, %.0.copyload.i15580    ; 3 uses
  %.val14476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpk = getelementptr inbounds nuw i8, ptr %.val14476, i64 %i.dlu
  %.0.copyload.i15581 = load i64, ptr %i.dpk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15581) #7, !srcloc !20
  %i.dpl = add i64 %.0.copyload.i15581, %.012565
  %.val14475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpm = getelementptr inbounds nuw i8, ptr %.val14475, i64 %i.dlw
  %.0.copyload.i15582 = load i64, ptr %i.dpm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15582) #7, !srcloc !20
  %i.dpn = add i64 %.112568, %.012570
  %i.dpo = add i64 %i.dpn, %.0.copyload.i15582    ; 2 uses
  %i.dpp = tail call i64 @llvm.fshl.i64(i64 %i.dpo, i64 %i.dpo, i64 22)
  %i.dpq = mul i64 %i.dpp, -5435081209227447693
  %i.dpr = add i64 %i.dpl, %i.dpq                 ; 4 uses
  %.val14474 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dps = getelementptr inbounds nuw i8, ptr %.val14474, i64 %i.dml
  %.0.copyload.i15583 = load i64, ptr %i.dps, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15583) #7, !srcloc !20
  %i.dpt = add i64 %i.dpj, %.0.copyload.i15579
  %i.dpu = add i64 %i.dpt, %.0.copyload.i15583
  %i.dpv = add i64 %i.dpu, %i.dpr                 ; 2 uses
  %i.dpw = tail call i64 @llvm.fshl.i64(i64 %i.dpv, i64 %i.dpv, i64 43)
  %i.dpx = add i64 %.0.copyload.i15581, %i.dpj
  %i.dpy = add i64 %i.dpx, %.0.copyload.i15582    ; 3 uses
  %i.dpz = tail call i64 @llvm.fshl.i64(i64 %i.dpy, i64 %i.dpy, i64 20)
  %i.dqa = add i64 %i.dpz, %i.dpj
  %i.dqb = add i64 %i.dqa, %i.dpw                 ; 3 uses
  %.val14473 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dqc = getelementptr inbounds nuw i8, ptr %.val14473, i64 %i.dkr
  %.0.copyload.i15584 = load i64, ptr %i.dqc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15584) #7, !srcloc !20
  %i.dqd = mul i64 %.112568, -5435081209227447693
  %i.dqe = add i64 %.0.copyload.i15584, %i.dqd    ; 3 uses
  %.val14472 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dqf = getelementptr inbounds nuw i8, ptr %.val14472, i64 %i.dmw
  %.0.copyload.i15585 = load i64, ptr %i.dqf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15585) #7, !srcloc !20
  %i.dqg = add i64 %i.dqe, %.0.copyload.i15583
  %i.dqh = add i64 %i.dqg, %.0.copyload.i15585    ; 3 uses
  %i.dqi = tail call i64 @llvm.fshl.i64(i64 %i.dqh, i64 %i.dqh, i64 20)
  %i.dqj = add i64 %i.dqi, %i.dqe
  %.val14471 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dqk = getelementptr inbounds nuw i8, ptr %.val14471, i64 %i.dnc
  %.0.copyload.i15586 = load i64, ptr %i.dqk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15586) #7, !srcloc !20
  %i.dql = add i64 %.012565, %.012570
  %i.dqm = add i64 %i.dql, %.012563
  %i.dqn = add i64 %i.dqm, %.0.copyload.i15585    ; 2 uses
  %i.dqo = tail call i64 @llvm.fshl.i64(i64 %i.dqn, i64 %i.dqn, i64 27)
  %i.dqp = mul i64 %i.dqo, -5435081209227447693
  %i.dqq = xor i64 %i.dqp, %.012569               ; 3 uses
  %i.dqr = add i64 %i.dqe, %.012564
  %i.dqs = add i64 %i.dqr, %.0.copyload.i15586
  %i.dqt = add i64 %i.dqs, %i.dqq                 ; 2 uses
  %i.dqu = tail call i64 @llvm.fshl.i64(i64 %i.dqt, i64 %i.dqt, i64 43)
  %i.dqv = add i64 %i.dqj, %i.dqu                 ; 2 uses
  %i.dqw = add i64 %i.dpy, %.0.copyload.i15579    ; 3 uses
  %i.dqx = add i32 %.012573, %i.dnx               ; 2 uses
  %i.dqy = add i64 %.0.copyload.i15586, %i.dqh    ; 2 uses
  %.not13168 = icmp eq i32 %i.dnu, %.0.copyload.i15561
  br i1 %.not13168, label %bb.tj, label %bb.sz

bb.tj:                                            ; preds = %.loopexit15807
  %i.dqz = zext i32 %i.dqx to i64
  %i.dra = add i64 %i.dpg, %i.dqz
  %i.drb = mul i64 %i.dra, -5435081209227447693
  %i.drc = xor i64 %i.dqv, %i.dqb
  %i.drd = mul i64 %i.drc, -7070675565921424023   ; 2 uses
  %i.dre = lshr i64 %i.drd, 47
  %i.drf = xor i64 %i.dqb, %i.dre
  %i.drg = xor i64 %i.drf, %i.drd
  %i.drh = mul i64 %i.drg, -7070675565921424023   ; 2 uses
  %i.dri = lshr i64 %i.drh, 47
  %i.drj = xor i64 %i.dri, %i.drh
  %i.drk = mul i64 %i.drj, -7070675565921424023
  %i.drl = add i64 %i.drk, %i.drb                 ; 2 uses
  %i.drm = lshr i64 %i.dpr, 47
  %i.drn = xor i64 %i.drm, %i.dpr
  %i.dro = mul i64 %i.drn, -5435081209227447693
  %i.drp = add i64 %i.dqq, %i.dro
  %i.drq = xor i64 %i.dqy, %i.dqw
  %i.drr = mul i64 %i.drq, -7070675565921424023   ; 2 uses
  %i.drs = lshr i64 %i.drr, 47
  %i.drt = xor i64 %i.dqw, %i.drs
  %i.dru = xor i64 %i.drt, %i.drr
  %i.drv = mul i64 %i.dru, -7070675565921424023   ; 2 uses
  %i.drw = lshr i64 %i.drv, 47
  %i.drx = xor i64 %i.drw, %i.drv
  %i.dry = mul i64 %i.drx, -7070675565921424023
  %i.drz = add i64 %i.drp, %i.dry
  %i.dsa = xor i64 %i.drl, %i.drz
  %i.dsb = mul i64 %i.dsa, -7070675565921424023   ; 2 uses
  %i.dsc = lshr i64 %i.dsb, 47
  %i.dsd = xor i64 %i.drl, %i.dsc
  %i.dse = xor i64 %i.dsd, %i.dsb
  %i.dsf = mul i64 %i.dse, -7070675565921424023   ; 2 uses
  %i.dsg = lshr i64 %i.dsf, 47
  %i.dsh = xor i64 %i.dsg, %i.dsf
  %i.dsi = trunc i64 %i.dsh to i32
  %i.dsj = mul i32 %i.dsi, -348639895
end_hunk_0
