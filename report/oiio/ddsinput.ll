Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ddsinput?download=true
inline.NumInlined: 3419
inline.NumDeleted: 947
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@bcdec_bc6h_half:bb.a
  %i.arz = ashr exact i32 %i.ary, %i.aru
  store i32 %i.arz, ptr %i.b, align 16, !tbaa !3
  %i.asa = shl i32 %i.arn, %i.aru
  %i.asb = ashr exact i32 %i.asa, %i.aru          ; 2 uses
  store i32 %i.asb, ptr %i.c, align 16, !tbaa !3
  br label %.preheader861

bb.s:                                             ; preds = %bb.r
  br i1 %or.cond731740, label %.preheader861, label %.loopexit862..loopexit860_crit_edge

.preheader861:                                    ; preds = %.thread, %bb.s
  %i.asc = phi i32 [ %i.asb, %.thread ], [ %i.arn, %bb.s ] ; 3 uses
  %i.asd = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 14), i64 %.1122732738
  %i.ase = load i8, ptr %i.asd, align 1, !tbaa !9
  %i.asf = sext i8 %i.ase to i32
  %i.asg = sub nsw i32 32, %i.asf                 ; 6 uses
  %i.ash = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 28), i64 %.1122732738
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !9
  %i.asj = sext i8 %i.asi to i32
  %i.ask = sub nsw i32 32, %i.asj                 ; 6 uses
  %i.asl = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 42), i64 %.1122732738
  %i.asm = load i8, ptr %i.asl, align 1, !tbaa !9
  %i.asn = sext i8 %i.asm to i32
  %i.aso = sub nsw i32 32, %i.asn                 ; 6 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !3
  %i.asr = shl i32 %i.asq, %i.asg
  %i.ass = ashr exact i32 %i.asr, %i.asg
  store i32 %i.ass, ptr %i.asp, align 4, !tbaa !3
  %i.ast = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !3
  %i.asv = shl i32 %i.asu, %i.ask
  %i.asw = ashr exact i32 %i.asv, %i.ask
  store i32 %i.asw, ptr %i.ast, align 4, !tbaa !3
  %i.asx = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !3
  %i.asz = shl i32 %i.asy, %i.aso
  %i.ata = ashr exact i32 %i.asz, %i.aso
  store i32 %i.ata, ptr %i.asx, align 4, !tbaa !3
  br i1 %i.arp, label %.loopexit862, label %bb.t

bb.t:                                             ; preds = %.preheader861
  %i.atb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.atc = load i32, ptr %i.atb, align 8, !tbaa !3
  %i.atd = shl i32 %i.atc, %i.asg
  %i.ate = ashr exact i32 %i.atd, %i.asg
  store i32 %i.ate, ptr %i.atb, align 8, !tbaa !3
  %i.atf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 8, !tbaa !3
  %i.ath = shl i32 %i.atg, %i.ask
  %i.ati = ashr exact i32 %i.ath, %i.ask
  store i32 %i.ati, ptr %i.atf, align 8, !tbaa !3
  %i.atj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.atk = load i32, ptr %i.atj, align 8, !tbaa !3
  %i.atl = shl i32 %i.atk, %i.aso
  %i.atm = ashr exact i32 %i.atl, %i.aso
  store i32 %i.atm, ptr %i.atj, align 8, !tbaa !3
  %i.atn = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !3
  %i.atp = shl i32 %i.ato, %i.asg
  %i.atq = ashr exact i32 %i.atp, %i.asg
  store i32 %i.atq, ptr %i.atn, align 4, !tbaa !3
  %i.atr = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !3
  %i.att = shl i32 %i.ats, %i.ask
  %i.atu = ashr exact i32 %i.att, %i.ask
  store i32 %i.atu, ptr %i.atr, align 4, !tbaa !3
  %i.atv = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !3
  %i.atx = shl i32 %i.atw, %i.aso
  %i.aty = ashr exact i32 %i.atx, %i.aso
  store i32 %i.aty, ptr %i.atv, align 4, !tbaa !3
  br label %.loopexit862

.loopexit862:                                     ; preds = %bb.t, %.preheader861
  br i1 %or.cond731740, label %.preheader859, label %.loopexit862..loopexit860_crit_edge

.loopexit862..loopexit860_crit_edge:              ; preds = %bb.s, %.loopexit862
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 %.1122732738
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9
  %.pre906 = sext i8 %.pre to i32                 ; 2 uses
  %.pre907 = shl nsw i32 -1, %.pre906
  br label %.loopexit860

.preheader859:                                    ; preds = %.loopexit862
  %i.atz = load i32, ptr %i.a, align 16, !tbaa !3 ; 3 uses
  %i.aua = getelementptr inbounds nuw i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 %.1122732738
  %i.aub = load i8, ptr %i.aua, align 1, !tbaa !9
  %i.auc = sext i8 %i.aub to i32                  ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.auc             ; 3 uses
  %i.aud = xor i32 %notmask.i, -1                 ; 9 uses
  %.not.i156 = icmp eq i32 %3, 0                  ; 9 uses
  %i.aue = sub nsw i32 32, %i.auc                 ; 18 uses
  %i.auf = load i32, ptr %i.b, align 16, !tbaa !3 ; 3 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !3
  %i.aui = add nsw i32 %i.atz, %i.auh             ; 2 uses
  %i.auj = and i32 %i.aui, %i.aud
  %i.auk = shl i32 %i.aui, %i.aue
  %i.aul = ashr exact i32 %i.auk, %i.aue
  %.0.i = select i1 %.not.i156, i32 %i.auj, i32 %i.aul
  store i32 %.0.i, ptr %i.aug, align 4, !tbaa !3
  %i.aum = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !3
  %i.auo = add nsw i32 %i.auf, %i.aun             ; 2 uses
  %i.aup = and i32 %i.auo, %i.aud
  %i.auq = shl i32 %i.auo, %i.aue
  %i.aur = ashr exact i32 %i.auq, %i.aue
  %.0.i159 = select i1 %.not.i156, i32 %i.aup, i32 %i.aur
  store i32 %.0.i159, ptr %i.aum, align 4, !tbaa !3
  %i.aus = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !3
  %i.auu = add nsw i32 %i.asc, %i.aut             ; 2 uses
  %i.auv = and i32 %i.auu, %i.aud
  %i.auw = shl i32 %i.auu, %i.aue
  %i.aux = ashr exact i32 %i.auw, %i.aue
  %.0.i162 = select i1 %.not.i156, i32 %i.auv, i32 %i.aux
  store i32 %.0.i162, ptr %i.aus, align 4, !tbaa !3
  br i1 %i.arp, label %.loopexit860, label %bb.u

bb.u:                                             ; preds = %.preheader859
  %i.auy = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.auz = load i32, ptr %i.auy, align 8, !tbaa !3
  %i.ava = add nsw i32 %i.atz, %i.auz             ; 2 uses
  %i.avb = and i32 %i.ava, %i.aud
  %i.avc = shl i32 %i.ava, %i.aue
  %i.avd = ashr exact i32 %i.avc, %i.aue
  %.0.i.1 = select i1 %.not.i156, i32 %i.avb, i32 %i.avd
  store i32 %.0.i.1, ptr %i.auy, align 8, !tbaa !3
  %i.ave = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.avf = load i32, ptr %i.ave, align 8, !tbaa !3
  %i.avg = add nsw i32 %i.auf, %i.avf             ; 2 uses
  %i.avh = and i32 %i.avg, %i.aud
  %i.avi = shl i32 %i.avg, %i.aue
  %i.avj = ashr exact i32 %i.avi, %i.aue
  %.0.i159.1 = select i1 %.not.i156, i32 %i.avh, i32 %i.avj
  store i32 %.0.i159.1, ptr %i.ave, align 8, !tbaa !3
  %i.avk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.avl = load i32, ptr %i.avk, align 8, !tbaa !3
  %i.avm = add nsw i32 %i.asc, %i.avl             ; 2 uses
  %i.avn = and i32 %i.avm, %i.aud
  %i.avo = shl i32 %i.avm, %i.aue
  %i.avp = ashr exact i32 %i.avo, %i.aue
  %.0.i162.1 = select i1 %.not.i156, i32 %i.avn, i32 %i.avp
  store i32 %.0.i162.1, ptr %i.avk, align 8, !tbaa !3
  %i.avq = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !3
  %i.avs = add nsw i32 %i.atz, %i.avr             ; 2 uses
  %i.avt = and i32 %i.avs, %i.aud
  %i.avu = shl i32 %i.avs, %i.aue
  %i.avv = ashr exact i32 %i.avu, %i.aue
  %.0.i.2 = select i1 %.not.i156, i32 %i.avt, i32 %i.avv
  store i32 %.0.i.2, ptr %i.avq, align 4, !tbaa !3
  %i.avw = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !3
  %i.avy = add nsw i32 %i.auf, %i.avx             ; 2 uses
  %i.avz = and i32 %i.avy, %i.aud
  %i.awa = shl i32 %i.avy, %i.aue
  %i.awb = ashr exact i32 %i.awa, %i.aue
  %.0.i159.2 = select i1 %.not.i156, i32 %i.avz, i32 %i.awb
  store i32 %.0.i159.2, ptr %i.avw, align 4, !tbaa !3
  %i.awc = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !3
  %i.awe = add nsw i32 %i.asc, %i.awd             ; 2 uses
  %i.awf = and i32 %i.awe, %i.aud
  %i.awg = shl i32 %i.awe, %i.aue
  %i.awh = ashr exact i32 %i.awg, %i.aue
  %.0.i162.2 = select i1 %.not.i156, i32 %i.awf, i32 %i.awh
  store i32 %.0.i162.2, ptr %i.awc, align 4, !tbaa !3
  br label %.loopexit860

.loopexit860:                                     ; preds = %.preheader859, %bb.u, %.loopexit862..loopexit860_crit_edge
  %notmask.i165.pre-phi = phi i32 [ %.pre907, %.loopexit862..loopexit860_crit_edge ], [ %notmask.i, %bb.u ], [ %notmask.i, %.preheader859 ] ; 6 uses
  %.pre-phi = phi i32 [ %.pre906, %.loopexit862..loopexit860_crit_edge ], [ %i.auc, %bb.u ], [ %i.auc, %.preheader859 ] ; 7 uses
  %.not.i164 = icmp eq i32 %3, 0                  ; 3 uses
  %i.awi = select i1 %i.arp, ptr @_ZZ9bcdec_bc7E8aWeight4, ptr @_ZZ9bcdec_bc7E8aWeight3
  %i.awj = getelementptr inbounds nuw [16 x i8], ptr @_ZZ15bcdec_bc6h_halfE14partition_sets, i64 %i.aro
  %i.awk = icmp eq i64 %.1122732738, 13           ; 2 uses
  %i.awl = add nsw i32 %.pre-phi, -1              ; 7 uses
  %notmask27.i = shl nsw i32 -1, %i.awl
  %i.awm = xor i32 %notmask27.i, -1               ; 6 uses
  %i.awn = sext i32 %2 to i64
  br label %.preheader857

.preheader857:                                    ; preds = %.loopexit860, %bb.ca
  %indvars.iv898 = phi i64 [ 0, %.loopexit860 ], [ %indvars.iv.next899, %bb.ca ] ; 3 uses
  %.1876 = phi ptr [ %1, %.loopexit860 ], [ %i.bei, %bb.ca ] ; 2 uses
  %.sroa.0.2874 = phi i64 [ %.sroa.0.1730742, %.loopexit860 ], [ %i.axg, %bb.ca ]
  %.sroa.501.2873 = phi i64 [ %.sroa.501.1729744, %.loopexit860 ], [ 0, %bb.ca ]
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.awj, i64 %indvars.iv898
  br label %bb.v

bb.v:                                             ; preds = %.preheader857, %_Z24bcdec__finish_unquantizeii.exit227
  %indvars.iv894 = phi i64 [ 0, %.preheader857 ], [ %indvars.iv.next895, %_Z24bcdec__finish_unquantizeii.exit227 ] ; 4 uses
  %.sroa.0.3871 = phi i64 [ %.sroa.0.2874, %.preheader857 ], [ %i.axg, %_Z24bcdec__finish_unquantizeii.exit227 ] ; 2 uses
  %.sroa.501.3870 = phi i64 [ %.sroa.501.2873, %.preheader857 ], [ 0, %_Z24bcdec__finish_unquantizeii.exit227 ]
  br i1 %i.arp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.awp = or i64 %indvars.iv894, %indvars.iv898
  %4 = and i64 %i.awp, 4294967295
  %.not = icmp eq i64 %4, 0
  %i.awq = select i1 %.not, i32 128, i32 0
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awo, i64 %indvars.iv894
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !9
  %i.awt = zext i8 %i.aws to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.awu = phi i32 [ 4, %bb.w ], [ 3, %bb.x ]
  %i.awv = phi i32 [ %i.awq, %bb.w ], [ %i.awt, %bb.x ] ; 2 uses
  %.not125 = icmp samesign ugt i32 %i.awv, 127
  %i.aww = sext i1 %.not125 to i32
  %spec.select = add nsw i32 %i.awu, %i.aww       ; 2 uses
  %notmask.i163 = shl nsw i32 -1, %spec.select
  %i.awx = xor i32 %notmask.i163, -1              ; 2 uses
  %i.awy = zext nneg i32 %i.awx to i64
  %i.awz = trunc i64 %.sroa.0.3871 to i32
  %i.axa = and i32 %i.awx, %i.awz
  %i.axb = zext nneg i32 %spec.select to i64      ; 2 uses
  %i.axc = lshr i64 %.sroa.0.3871, %i.axb
  %i.axd = and i64 %.sroa.501.3870, %i.awy
  %i.axe = sub nuw nsw i64 64, %i.axb
  %i.axf = shl nuw i64 %i.axd, %i.axe
  %i.axg = or disjoint i64 %i.axf, %i.axc         ; 2 uses
  %i.axh = shl nuw nsw i32 %i.awv, 1
  %i.axi = and i32 %i.axh, 2                      ; 5 uses
  %i.axj = zext nneg i32 %i.axi to i64            ; 9 uses
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.axj
  %i.axl = load i32, ptr %i.axk, align 8, !tbaa !3 ; 8 uses
  br i1 %.not.i164, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  br i1 %i.awk, label %bb.bf, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not26.i = icmp eq i32 %i.axl, 0
  br i1 %.not26.i, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.axm = xor i32 %notmask.i165.pre-phi, %i.axl
  %i.axn = icmp eq i32 %i.axm, -1
  br i1 %i.axn, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.axo = shl i32 %i.axl, 16
  %i.axp = or disjoint i32 %i.axo, 32768
  %i.axq = ashr i32 %i.axp, %.pre-phi
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  br i1 %i.awk, label %.thread848, label %bb.ae

.thread848:                                       ; preds = %bb.ad
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.axj
  %i.axs = load i32, ptr %i.axr, align 8, !tbaa !3
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axj
  %i.axu = load i32, ptr %i.axt, align 8, !tbaa !3
  %i.axv = or disjoint i32 %i.axi, 1
  %i.axw = zext nneg i32 %i.axv to i64            ; 3 uses
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.axw
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !3
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.axw
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !3
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axw
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !3
  br label %_Z17bcdec__unquantizeiii.exit215

bb.ae:                                            ; preds = %bb.ad
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %i.axl, i1 true) ; 2 uses
  %i.ayd = icmp eq i32 %i.axl, 0
  br i1 %i.ayd, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not28.i = icmp samesign ult i32 %spec.select.i, %i.awm
  br i1 %.not28.i, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.aye = shl i32 %spec.select.i, 15
  %i.ayf = or disjoint i32 %i.aye, 16384
  %i.ayg = ashr i32 %i.ayf, %i.awl
  br label %bb.ak

bb.ah:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.1.i.ph.ph = phi i32 [ 65535, %bb.ab ], [ 0, %bb.aa ], [ %i.axq, %bb.ac ] ; 3 uses
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.axj
  %i.ayi = load i32, ptr %i.ayh, align 8, !tbaa !3 ; 3 uses
  %.not26.i173 = icmp eq i32 %i.ayi, 0
  br i1 %.not26.i173, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ayj = xor i32 %i.ayi, %notmask.i165.pre-phi
  %i.ayk = icmp eq i32 %i.ayj, -1
  br i1 %i.ayk, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ayl = shl i32 %i.ayi, 16
  %i.aym = or disjoint i32 %i.ayl, 32768
  %i.ayn = ashr i32 %i.aym, %.pre-phi
  br label %bb.an

bb.ak:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.020.i = phi i32 [ %i.ayg, %bb.ag ], [ 0, %bb.ae ], [ 32767, %bb.af ] ; 2 uses
  %i.ayo = sub nsw i32 0, %.020.i
  %i.ayp = icmp slt i32 %i.axl, 0
  %spec.select30.i = select i1 %i.ayp, i32 %i.ayo, i32 %.020.i
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.axj
  %i.ayr = load i32, ptr %i.ayq, align 8, !tbaa !3 ; 3 uses
  %spec.select.i167 = tail call i32 @llvm.abs.i32(i32 %i.ayr, i1 true) ; 2 uses
  %i.ays = icmp eq i32 %i.ayr, 0
  br i1 %i.ays, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not28.i169 = icmp samesign ult i32 %spec.select.i167, %i.awm
  br i1 %.not28.i169, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.ayt = shl i32 %spec.select.i167, 15
  %i.ayu = or disjoint i32 %i.ayt, 16384
  %i.ayv = ashr i32 %i.ayu, %i.awl
  br label %bb.aq

bb.an:                                            ; preds = %bb.ah, %bb.ai, %bb.aj
  %.1.i172.ph.ph = phi i32 [ 65535, %bb.ai ], [ 0, %bb.ah ], [ %i.ayn, %bb.aj ] ; 3 uses
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axj
  %i.ayx = load i32, ptr %i.ayw, align 8, !tbaa !3 ; 3 uses
  %.not26.i183 = icmp eq i32 %i.ayx, 0
  br i1 %.not26.i183, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ayy = xor i32 %i.ayx, %notmask.i165.pre-phi
  %i.ayz = icmp eq i32 %i.ayy, -1
  br i1 %i.ayz, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.aza = shl i32 %i.ayx, 16
  %i.azb = or disjoint i32 %i.aza, 32768
  %i.azc = ashr i32 %i.azb, %.pre-phi
  br label %bb.at

bb.aq:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.020.i170 = phi i32 [ %i.ayv, %bb.am ], [ 0, %bb.ak ], [ 32767, %bb.al ] ; 2 uses
  %i.azd = sub nsw i32 0, %.020.i170
  %i.aze = icmp slt i32 %i.ayr, 0
  %spec.select30.i171 = select i1 %i.aze, i32 %i.azd, i32 %.020.i170
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axj
  %i.azg = load i32, ptr %i.azf, align 8, !tbaa !3 ; 3 uses
  %spec.select.i177 = tail call i32 @llvm.abs.i32(i32 %i.azg, i1 true) ; 2 uses
  %i.azh = icmp eq i32 %i.azg, 0
  br i1 %i.azh, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not28.i179 = icmp samesign ult i32 %spec.select.i177, %i.awm
  br i1 %.not28.i179, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.azi = shl i32 %spec.select.i177, 15
  %i.azj = or disjoint i32 %i.azi, 16384
  %i.azk = ashr i32 %i.azj, %i.awl
  br label %bb.aw

bb.at:                                            ; preds = %bb.an, %bb.ao, %bb.ap
  %.1.i182.ph.ph = phi i32 [ 65535, %bb.ao ], [ 0, %bb.an ], [ %i.azc, %bb.ap ] ; 3 uses
  %i.azl = or disjoint i32 %i.axi, 1
  %i.azm = zext nneg i32 %i.azl to i64            ; 3 uses
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.azm
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !3 ; 3 uses
  %.not26.i193 = icmp eq i32 %i.azo, 0
  br i1 %.not26.i193, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.azp = xor i32 %i.azo, %notmask.i165.pre-phi
  %i.azq = icmp eq i32 %i.azp, -1
  br i1 %i.azq, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.azr = shl i32 %i.azo, 16
  %i.azs = or disjoint i32 %i.azr, 32768
  %i.azt = ashr i32 %i.azs, %.pre-phi
  br label %bb.az

bb.aw:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.020.i180 = phi i32 [ %i.azk, %bb.as ], [ 0, %bb.aq ], [ 32767, %bb.ar ] ; 2 uses
  %i.azu = sub nsw i32 0, %.020.i180
  %i.azv = icmp slt i32 %i.azg, 0
  %spec.select30.i181 = select i1 %i.azv, i32 %i.azu, i32 %.020.i180
  %i.azw = or disjoint i32 %i.axi, 1
  %i.azx = zext nneg i32 %i.azw to i64            ; 3 uses
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.azx
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !3 ; 3 uses
  %spec.select.i187 = tail call i32 @llvm.abs.i32(i32 %i.azz, i1 true) ; 2 uses
  %i.baa = icmp eq i32 %i.azz, 0
  br i1 %i.baa, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not28.i189 = icmp samesign ult i32 %spec.select.i187, %i.awm
  br i1 %.not28.i189, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
end_hunk_0
begin_hunk_1_@bcdec_bc7:bb.a
  store i8 %i.ajs, ptr %i.ajt, align 1, !tbaa !9
  %i.aju = trunc i32 %.1307.us.us.1 to i8
  %i.ajv = getelementptr inbounds nuw i8, ptr %.1379.us, i64 6
  store i8 %i.aju, ptr %i.ajv, align 1, !tbaa !9
  %i.ajw = trunc i32 %.1305.us.us.1 to i8
  %i.ajx = getelementptr inbounds nuw i8, ptr %.1379.us, i64 7
  store i8 %i.ajw, ptr %i.ajx, align 1, !tbaa !9
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.agc, i64 2
  %i.ajz = load i8, ptr %i.ajy, align 2, !tbaa !9
  %i.aka = shl i8 %i.ajz, 1
  %i.akb = and i8 %i.aka, 6
  %i.akc = zext nneg i8 %i.akb to i64
  %i.akd = getelementptr inbounds nuw i8, ptr %i.agb, i64 2
  %i.ake = load i8, ptr %i.akd, align 2, !tbaa !9
  %i.akf = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.akc ; 8 uses
  %i.akg = load i32, ptr %i.akf, align 16, !tbaa !3
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.aki = load i32, ptr %i.akh, align 16, !tbaa !3
  %i.akj = sext i8 %i.ake to i64
  %i.akk = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.akj
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !3 ; 5 uses
  %i.akm = sub nsw i32 64, %i.akl                 ; 4 uses
  %i.akn = mul nsw i32 %i.akm, %i.akg
  %i.ako = mul nsw i32 %i.akl, %i.aki
  %i.akp = add i32 %i.ako, 32
  %i.akq = add i32 %i.akp, %i.akn
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akf, i64 4
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !3
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akf, i64 20
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !3
  %i.akv = mul nsw i32 %i.akm, %i.aks
  %i.akw = mul nsw i32 %i.aku, %i.akl
  %i.akx = add i32 %i.akv, 32
  %i.aky = add i32 %i.akx, %i.akw
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %i.ala = load i32, ptr %i.akz, align 8, !tbaa !3
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akf, i64 24
  %i.alc = load i32, ptr %i.alb, align 8, !tbaa !3
  %i.ald = mul nsw i32 %i.ala, %i.akm
  %i.ale = mul nsw i32 %i.alc, %i.akl
  %i.alf = add i32 %i.ald, 32
  %i.alg = add i32 %i.alf, %i.ale
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akf, i64 12
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !3
  %i.alj = getelementptr inbounds nuw i8, ptr %i.akf, i64 28
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !3
  %i.all = mul nsw i32 %i.ali, %i.akm
  %i.alm = mul nsw i32 %i.alk, %i.akl
  %i.aln = add i32 %i.all, 32
  %i.alo = add i32 %i.aln, %i.alm
  %.0304.us.us.2 = ashr i32 %i.alo, 6             ; 4 uses
  %.0306.us.us.2 = ashr i32 %i.alg, 6             ; 4 uses
  %.0308.us.us.2 = ashr i32 %i.aky, 6             ; 4 uses
  %.0310.us.us.2 = ashr i32 %i.akq, 6             ; 4 uses
  switch i32 %.0239, label %default.unreachable [
    i32 1, label %bb.ar
    i32 2, label %bb.aq
    i32 3, label %bb.ap
    i32 0, label %bb.as
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.1311.us.us.2 = phi i32 [ %.0310.us.us.2, %bb.ao ], [ %.0304.us.us.2, %bb.ar ], [ %.0310.us.us.2, %bb.aq ], [ %.0310.us.us.2, %bb.ap ]
  %.1309.us.us.2 = phi i32 [ %.0308.us.us.2, %bb.ao ], [ %.0308.us.us.2, %bb.ar ], [ %.0304.us.us.2, %bb.aq ], [ %.0308.us.us.2, %bb.ap ]
  %.1307.us.us.2 = phi i32 [ %.0306.us.us.2, %bb.ao ], [ %.0306.us.us.2, %bb.ar ], [ %.0306.us.us.2, %bb.aq ], [ %.0304.us.us.2, %bb.ap ]
  %.1305.us.us.2 = phi i32 [ %.0304.us.us.2, %bb.ao ], [ %.0310.us.us.2, %bb.ar ], [ %.0308.us.us.2, %bb.aq ], [ %.0306.us.us.2, %bb.ap ]
  %i.alp = trunc i32 %.1311.us.us.2 to i8
  %i.alq = getelementptr inbounds nuw i8, ptr %.1379.us, i64 8
  store i8 %i.alp, ptr %i.alq, align 1, !tbaa !9
  %i.alr = trunc i32 %.1309.us.us.2 to i8
  %i.als = getelementptr inbounds nuw i8, ptr %.1379.us, i64 9
  store i8 %i.alr, ptr %i.als, align 1, !tbaa !9
  %i.alt = trunc i32 %.1307.us.us.2 to i8
  %i.alu = getelementptr inbounds nuw i8, ptr %.1379.us, i64 10
  store i8 %i.alt, ptr %i.alu, align 1, !tbaa !9
  %i.alv = trunc i32 %.1305.us.us.2 to i8
  %i.alw = getelementptr inbounds nuw i8, ptr %.1379.us, i64 11
  store i8 %i.alv, ptr %i.alw, align 1, !tbaa !9
  %i.alx = getelementptr inbounds nuw i8, ptr %i.agc, i64 3
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !9
  %i.alz = shl i8 %i.aly, 1
  %i.ama = and i8 %i.alz, 6
  %i.amb = zext nneg i8 %i.ama to i64
  %i.amc = getelementptr inbounds nuw i8, ptr %i.agb, i64 3
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !9
  %i.ame = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.amb ; 8 uses
  %i.amf = load i32, ptr %i.ame, align 16, !tbaa !3
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ame, i64 16
  %i.amh = load i32, ptr %i.amg, align 16, !tbaa !3
  %i.ami = sext i8 %i.amd to i64
  %i.amj = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.ami
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !3 ; 5 uses
  %i.aml = sub nsw i32 64, %i.amk                 ; 4 uses
  %i.amm = mul nsw i32 %i.aml, %i.amf
  %i.amn = mul nsw i32 %i.amk, %i.amh
  %i.amo = add i32 %i.amn, 32
  %i.amp = add i32 %i.amo, %i.amm
  %i.amq = getelementptr inbounds nuw i8, ptr %i.ame, i64 4
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !3
  %i.ams = getelementptr inbounds nuw i8, ptr %i.ame, i64 20
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !3
  %i.amu = mul nsw i32 %i.aml, %i.amr
  %i.amv = mul nsw i32 %i.amt, %i.amk
  %i.amw = add i32 %i.amu, 32
  %i.amx = add i32 %i.amw, %i.amv
  %i.amy = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amz = load i32, ptr %i.amy, align 8, !tbaa !3
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ame, i64 24
  %i.anb = load i32, ptr %i.ana, align 8, !tbaa !3
  %i.anc = mul nsw i32 %i.amz, %i.aml
  %i.and = mul nsw i32 %i.anb, %i.amk
  %i.ane = add i32 %i.anc, 32
  %i.anf = add i32 %i.ane, %i.and
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ame, i64 12
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !3
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ame, i64 28
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !3
  %i.ank = mul nsw i32 %i.anh, %i.aml
  %i.anl = mul nsw i32 %i.anj, %i.amk
  %i.anm = add i32 %i.ank, 32
  %i.ann = add i32 %i.anm, %i.anl
  %.0304.us.us.3 = ashr i32 %i.ann, 6             ; 4 uses
  %.0306.us.us.3 = ashr i32 %i.anf, 6             ; 4 uses
  %.0308.us.us.3 = ashr i32 %i.amx, 6             ; 4 uses
  %.0310.us.us.3 = ashr i32 %i.amp, 6             ; 4 uses
  switch i32 %.0239, label %default.unreachable [
    i32 1, label %bb.av
    i32 2, label %bb.au
    i32 3, label %bb.at
    i32 0, label %.split374.us.us.split
  ]

bb.at:                                            ; preds = %bb.as
  br label %.split374.us.us.split

bb.au:                                            ; preds = %bb.as
  br label %.split374.us.us.split

bb.av:                                            ; preds = %bb.as
  br label %.split374.us.us.split

.split374.us.us.split:                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %.1311.us.us.3 = phi i32 [ %.0310.us.us.3, %bb.as ], [ %.0304.us.us.3, %bb.av ], [ %.0310.us.us.3, %bb.au ], [ %.0310.us.us.3, %bb.at ]
  %.1309.us.us.3 = phi i32 [ %.0308.us.us.3, %bb.as ], [ %.0308.us.us.3, %bb.av ], [ %.0304.us.us.3, %bb.au ], [ %.0308.us.us.3, %bb.at ]
  %.1307.us.us.3 = phi i32 [ %.0306.us.us.3, %bb.as ], [ %.0306.us.us.3, %bb.av ], [ %.0306.us.us.3, %bb.au ], [ %.0304.us.us.3, %bb.at ]
  %.1305.us.us.3 = phi i32 [ %.0304.us.us.3, %bb.as ], [ %.0310.us.us.3, %bb.av ], [ %.0308.us.us.3, %bb.au ], [ %.0306.us.us.3, %bb.at ]
  %i.ano = trunc i32 %.1311.us.us.3 to i8
  %i.anp = getelementptr inbounds nuw i8, ptr %.1379.us, i64 12
  store i8 %i.ano, ptr %i.anp, align 1, !tbaa !9
  %i.anq = trunc i32 %.1309.us.us.3 to i8
  %i.anr = getelementptr inbounds nuw i8, ptr %.1379.us, i64 13
  store i8 %i.anq, ptr %i.anr, align 1, !tbaa !9
  %i.ans = trunc i32 %.1307.us.us.3 to i8
  %i.ant = getelementptr inbounds nuw i8, ptr %.1379.us, i64 14
  store i8 %i.ans, ptr %i.ant, align 1, !tbaa !9
  %i.anu = trunc i32 %.1305.us.us.3 to i8
  %i.anv = getelementptr inbounds nuw i8, ptr %.1379.us, i64 15
  store i8 %i.anu, ptr %i.anv, align 1, !tbaa !9
  %i.anw = getelementptr inbounds i8, ptr %.1379.us, i64 %i.aax
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 2 uses
  %exitcond502.not = icmp eq i64 %indvars.iv.next500, 4
  br i1 %exitcond502.not, label %.loopexit, label %.preheader.us, !llvm.loop !32

.preheader:                                       ; preds = %.preheader318, %.split374
  %indvars.iv491 = phi i64 [ %indvars.iv.next492, %.split374 ], [ 0, %.preheader318 ] ; 4 uses
  %.1379 = phi ptr [ %i.arj, %.split374 ], [ %1, %.preheader318 ] ; 2 uses
  %.sroa.0.12377 = phi i64 [ %i.aot, %.split374 ], [ %.us-phi369, %.preheader318 ]
  %.sroa.25.12376 = phi i64 [ %i.aou, %.split374 ], [ %.us-phi368, %.preheader318 ]
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv491
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv491
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.bf
  %indvars.iv487 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next488, %bb.bf ] ; 5 uses
  %.sroa.0.13371 = phi i64 [ %.sroa.0.12377, %.preheader ], [ %i.aot, %bb.bf ] ; 2 uses
  %.sroa.25.13370 = phi i64 [ %.sroa.25.12376, %.preheader ], [ %i.aou, %bb.bf ] ; 2 uses
  br i1 %i.lo, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 %indvars.iv487
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !9
  %i.aob = shl i8 %i.aoa, 1
  %i.aoc = and i8 %i.aob, 6
  %i.aod = zext nneg i8 %i.aoc to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.aoe = phi i64 [ %i.aod, %bb.ax ], [ 0, %bb.aw ]
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anx, i64 %indvars.iv487
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !9 ; 2 uses
  %i.aoh = or i64 %indvars.iv487, %indvars.iv491
  %3 = and i64 %i.aoh, 4294967295
  %.not261 = icmp eq i64 %3, 0
  %i.aoi = sext i1 %.not261 to i32
  %i.aoj = add nsw i32 %i.lj, %i.aoi              ; 3 uses
  %notmask.i268 = shl nsw i32 -1, %i.aoj
  %i.aok = xor i32 %notmask.i268, -1              ; 2 uses
  %i.aol = zext nneg i32 %i.aok to i64
  %i.aom = trunc i64 %.sroa.0.13371 to i32
  %i.aon = and i32 %i.aok, %i.aom                 ; 2 uses
  %i.aoo = zext nneg i32 %i.aoj to i64            ; 2 uses
  %i.aop = lshr i64 %.sroa.0.13371, %i.aoo
  %i.aoq = and i64 %.sroa.25.13370, %i.aol
  %narrow316 = sub nuw nsw i32 64, %i.aoj
  %i.aor = zext nneg i32 %narrow316 to i64
  %i.aos = shl i64 %i.aoq, %i.aor
  %i.aot = or i64 %i.aos, %i.aop                  ; 2 uses
  %i.aou = lshr i64 %.sroa.25.13370, %i.aoo       ; 2 uses
  %i.aov = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aoe ; 8 uses
  %i.aow = load i32, ptr %i.aov, align 16, !tbaa !3 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  %i.aoy = load i32, ptr %i.aox, align 16, !tbaa !3 ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aov, i64 4
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !3 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aov, i64 20
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !3 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.ape = load i32, ptr %i.apd, align 8, !tbaa !3 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aov, i64 24
  %i.apg = load i32, ptr %i.apf, align 8, !tbaa !3 ; 2 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aov, i64 12
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !3
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aov, i64 28
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !3
  br i1 %.0238, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.apl = sext i8 %i.aog to i64
  %i.apm = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.apl
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !3 ; 4 uses
  %i.apo = sub nsw i32 64, %i.apn                 ; 3 uses
  %i.app = mul nsw i32 %i.apo, %i.aow
  %i.apq = mul nsw i32 %i.apn, %i.aoy
  %i.apr = add i32 %i.apq, 32
  %i.aps = add i32 %i.apr, %i.app
  %i.apt = mul nsw i32 %i.apo, %i.apa
  %i.apu = mul nsw i32 %i.apc, %i.apn
  %i.apv = add i32 %i.apt, 32
  %i.apw = add i32 %i.apv, %i.apu
  %i.apx = mul nsw i32 %i.ape, %i.apo
  %i.apy = mul nsw i32 %i.apg, %i.apn
  %i.apz = add i32 %i.apx, 32
  %i.aqa = add i32 %i.apz, %i.apy
  %i.aqb = zext nneg i32 %i.aon to i64
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.aqb
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.aqd = zext nneg i32 %i.aon to i64
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.aqd
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !3 ; 4 uses
  %i.aqg = sub nsw i32 64, %i.aqf                 ; 3 uses
  %i.aqh = mul nsw i32 %i.aqg, %i.aow
  %i.aqi = mul nsw i32 %i.aqf, %i.aoy
  %i.aqj = add i32 %i.aqi, 32
  %i.aqk = add i32 %i.aqj, %i.aqh
  %i.aql = mul nsw i32 %i.aqg, %i.apa
  %i.aqm = mul nsw i32 %i.apc, %i.aqf
  %i.aqn = add i32 %i.aql, 32
  %i.aqo = add i32 %i.aqn, %i.aqm
  %i.aqp = mul nsw i32 %i.ape, %i.aqg
  %i.aqq = mul nsw i32 %i.apg, %i.aqf
  %i.aqr = add i32 %i.aqp, 32
  %i.aqs = add i32 %i.aqr, %i.aqq
  %i.aqt = sext i8 %i.aog to i64
  %i.aqu = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.aqt
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.sink609.in = phi ptr [ %i.aqc, %bb.az ], [ %i.aqu, %bb.ba ]
  %.0310.in = phi i32 [ %i.aps, %bb.az ], [ %i.aqk, %bb.ba ]
  %.0308.in = phi i32 [ %i.apw, %bb.az ], [ %i.aqo, %bb.ba ]
  %.0306.in = phi i32 [ %i.aqa, %bb.az ], [ %i.aqs, %bb.ba ]
  %.sink609 = load i32, ptr %.sink609.in, align 4, !tbaa !3 ; 2 uses
  %i.aqv = sub nsw i32 64, %.sink609
  %i.aqw = mul nsw i32 %i.aqv, %i.api
  %i.aqx = mul nsw i32 %.sink609, %i.apk
  %i.aqy = add i32 %i.aqx, 32
  %i.aqz = add i32 %i.aqy, %i.aqw
  %.0304 = ashr i32 %i.aqz, 6                     ; 4 uses
  %.0306 = ashr i32 %.0306.in, 6                  ; 4 uses
  %.0308 = ashr i32 %.0308.in, 6                  ; 4 uses
  %.0310 = ashr i32 %.0310.in, 6                  ; 4 uses
  switch i32 %.0239, label %default.unreachable [
    i32 1, label %bb.bc
    i32 2, label %bb.bd
    i32 3, label %bb.be
    i32 0, label %bb.bf
  ]

bb.bc:                                            ; preds = %bb.bb
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bb, %bb.be, %bb.bd, %bb.bc
  %.1311 = phi i32 [ %.0310, %bb.bb ], [ %.0304, %bb.bc ], [ %.0310, %bb.bd ], [ %.0310, %bb.be ]
  %.1309 = phi i32 [ %.0308, %bb.bb ], [ %.0308, %bb.bc ], [ %.0304, %bb.bd ], [ %.0308, %bb.be ]
  %.1307 = phi i32 [ %.0306, %bb.bb ], [ %.0306, %bb.bc ], [ %.0306, %bb.bd ], [ %.0304, %bb.be ]
  %.1305 = phi i32 [ %.0304, %bb.bb ], [ %.0310, %bb.bc ], [ %.0308, %bb.bd ], [ %.0306, %bb.be ]
  %i.ara = trunc i32 %.1311 to i8
  %i.arb = shl nuw nsw i64 %indvars.iv487, 2
  %i.arc = getelementptr inbounds nuw i8, ptr %.1379, i64 %i.arb ; 4 uses
  store i8 %i.ara, ptr %i.arc, align 1, !tbaa !9
  %i.ard = trunc i32 %.1309 to i8
  %i.are = getelementptr inbounds nuw i8, ptr %i.arc, i64 1
  store i8 %i.ard, ptr %i.are, align 1, !tbaa !9
  %i.arf = trunc i32 %.1307 to i8
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arc, i64 2
  store i8 %i.arf, ptr %i.arg, align 1, !tbaa !9
  %i.arh = trunc i32 %.1305 to i8
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arc, i64 3
  store i8 %i.arh, ptr %i.ari, align 1, !tbaa !9
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %exitcond490.not = icmp eq i64 %indvars.iv.next488, 4
  br i1 %exitcond490.not, label %.split374, label %bb.aw, !llvm.loop !33

.split374:                                        ; preds = %bb.bf
  %i.arj = getelementptr inbounds i8, ptr %.1379, i64 %i.aax
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond494.not = icmp eq i64 %indvars.iv.next492, 4
  br i1 %exitcond494.not, label %.loopexit, label %.preheader, !llvm.loop !32

.loopexit:                                        ; preds = %.split374, %.split374.us.us.split, %.split374.us.us.split.us.us, %.critedge.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_124dds_input_imageio_createEv() local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef 448) ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18DDSInputC2Ev(ptr noundef nonnull align 8 dereferenceable(448) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %i.a) #34
  resume { ptr, i32 } %i.b
}

declare noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18DDSInputC2Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIhSaIhEE5clearEv.exit.i:
  tail call void @_ZN11OpenImageIO4v3_110ImageInputC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 344) (i8, ptr @_ZTVN11OpenImageIO4v3_18DDSInputE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.c, align 8, !tbaa !40
  store i8 0, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 0, ptr %i.e, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 -1, ptr %i.f, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 -1, ptr %i.g, align 4, !tbaa !84
  invoke void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(448) %0)
          to label %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit unwind label %bb.a

_ZN11OpenImageIO4v3_18DDSInput4initEv.exit:       ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i
  ret void

bb.a:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

end_hunk_1
