Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wmavoice?download=true
inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 34
begin_hunk_0_@synth_superframe:bb.a
  %i.aot = sub i32 %i.amu, %i.aoq
  %i.aou = mul i32 %i.aot, %i.aoe
  %i.aov = add i32 %i.aos, %i.aou
  %i.aow = ashr i32 %i.aov, %i.amy
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i161
  store i32 %i.aow, ptr %i.aox, align 4, !tbaa !61
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i160
  br i1 %exitcond.not.i163, label %.loopexit, label %scalar.ph427, !llvm.loop !111

.loopexit:                                        ; preds = %scalar.ph427, %middle.block444
  %i.aoy = sub nsw i32 %i.ans, %i.aoe
  %i.aoz = shl nsw i32 %i.aoy, 11
  %i.apa = sdiv i32 %i.aoz, 5
  %i.apb = getelementptr inbounds nuw i8, ptr %i.ajy, i64 632
  store i32 %i.apa, ptr %i.apb, align 8, !tbaa !112
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit, %bb.ba
  %i.apc = phi i32 [ %i.ann, %.loopexit ], [ %i.amh, %bb.ba ] ; 6 uses
  %.0154.i = phi i32 [ %i.ans, %.loopexit ], [ undef, %bb.ba ]
  %i.apd = getelementptr inbounds nuw i8, ptr %i.amn, i64 3
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !113 ; 2 uses
  switch i8 %i.ape, label %aw_parse_coords.exit.i [
    i8 0, label %bb.bg
    i8 2, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.apf = lshr i32 %i.apc, 3
  %i.apg = zext nneg i32 %i.apf to i64
  %i.aph = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.apg
  %i.api = load i32, ptr %i.aph, align 1, !tbaa !32
  %i.apj = call i32 @llvm.bswap.i32(i32 %i.api)
  %i.apk = and i32 %i.apc, 7
  %i.apl = shl i32 %i.apj, %i.apk
  %i.apm = lshr i32 %i.apl, 24
  %i.apn = add i32 %i.apc, 8
  %i.apo = call i32 @llvm.umin.i32(i32 %i.akb, i32 %i.apn)
  store i32 %i.apo, ptr %i.at, align 8, !tbaa !56
  %i.app = zext nneg i32 %i.apm to i64
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_gain_silence, i64 %i.app
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !39
  %i.aps = getelementptr inbounds nuw i8, ptr %i.ajy, i64 636
  store float %i.apr, ptr %i.aps, align 4, !tbaa !114
  br label %aw_parse_coords.exit.i

bb.bh:                                            ; preds = %bb.bf
  %.val.i = load i32, ptr %i.f, align 16          ; 7 uses
  %.val173.i = load i32, ptr %i.afp, align 4      ; 5 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.ajy, i64 640 ; 2 uses
  store i32 0, ptr %i.apt, align 16, !tbaa !115
  %i.apu = lshr i32 %i.apc, 3
  %i.apv = zext nneg i32 %i.apu to i64
  %i.apw = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.apv
  %i.apx = load i32, ptr %i.apw, align 1, !tbaa !32
  %i.apy = call i32 @llvm.bswap.i32(i32 %i.apx)
  %i.apz = and i32 %i.apc, 7
  %i.aqa = shl i32 %i.apy, %i.apz                 ; 2 uses
  %i.aqb = lshr i32 %i.aqa, 26                    ; 3 uses
  %i.aqc = add i32 %i.apc, 6
  %i.aqd = call i32 @llvm.umin.i32(i32 %i.akb, i32 %i.aqc) ; 4 uses
  store i32 %i.aqd, ptr %i.at, align 8, !tbaa !56
  %i.aqe = icmp ugt i32 %i.aqa, -671088641
  br i1 %i.aqe, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 1, ptr %i.apt, align 16, !tbaa !115
  %i.aqf = mul nuw nsw i32 %i.aqb, 3
  %i.aqg = lshr i32 %i.aqd, 3
  %i.aqh = zext nneg i32 %i.aqg to i64
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.aqh
  %i.aqj = load i32, ptr %i.aqi, align 1, !tbaa !32
  %i.aqk = call i32 @llvm.bswap.i32(i32 %i.aqj)
  %i.aql = and i32 %i.aqd, 7
  %i.aqm = shl i32 %i.aqk, %i.aql
  %i.aqn = lshr i32 %i.aqm, 30
  %i.aqo = add i32 %i.aqd, 2
  %i.aqp = call i32 @llvm.umin.i32(i32 %i.akb, i32 %i.aqo)
  store i32 %i.aqp, ptr %i.at, align 8, !tbaa !56
  %i.aqq = add nuw nsw i32 %i.aqb, -162
  %i.aqr = add nsw i32 %i.aqq, %i.aqf
  %i.aqs = add nsw i32 %i.aqr, %i.aqn
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.043.i.i = phi i32 [ %i.aqs, %bb.bi ], [ %i.aqb, %bb.bh ] ; 3 uses
  %..i174.i = call i32 @llvm.smin.i32(i32 %.val.i, i32 %.val173.i)
  %i.aqt = icmp sgt i32 %..i174.i, 32             ; 2 uses
  %i.aqu = select i1 %i.aqt, i32 24, i32 16       ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.ajy, i64 644
  store i32 %i.aqu, ptr %i.aqv, align 4, !tbaa !116
  %i.aqw = zext nneg i32 %.043.i.i to i64
  %i.aqx = getelementptr inbounds nuw [2 x i8], ptr @aw_parse_coords.start_offset, i64 %i.aqw
  %i.aqy = load i16, ptr %i.aqx, align 2, !tbaa !63
  %i.aqz = sext i16 %i.aqy to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %.0.i175.i = phi i32 [ %i.aqz, %bb.bj ], [ %i.arb, %bb.bk ] ; 5 uses
  %i.ara = icmp slt i32 %.0.i175.i, 0
  %i.arb = add nsw i32 %.0.i175.i, %.val.i
  br i1 %i.ara, label %bb.bk, label %bb.bl, !llvm.loop !117

bb.bl:                                            ; preds = %bb.bk
  %.neg.i.i = select i1 %i.aqt, i32 -24, i32 -16  ; 4 uses
  %i.arc = add nsw i32 %.val.i, 79
  %i.ard = sub i32 %i.arc, %.0.i175.i
  %i.are = sdiv i32 %i.ard, %.val.i               ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ajy, i64 648
  store i32 %i.are, ptr %i.arf, align 8, !tbaa !61
  %.neg.neg.i.i = lshr exact i32 %i.aqu, 1        ; 2 uses
  %i.arg = sub nsw i32 %.0.i175.i, %.neg.neg.i.i  ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.ajy, i64 656 ; 2 uses
  store i32 %i.arg, ptr %i.arh, align 16, !tbaa !61
  %i.ari = mul nsw i32 %i.are, %.val.i
  %i.arj = add nsw i32 %i.ari, %.0.i175.i         ; 2 uses
  %i.ark = add nsw i32 %.val173.i, 159
  %i.arl = sub i32 %i.ark, %i.arj
  %i.arm = sdiv i32 %i.arl, %.val173.i
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ajy, i64 652
  store i32 %i.arm, ptr %i.arn, align 4, !tbaa !61
  %reass.sub7.i.i = sub i32 %i.arj, %.neg.neg.i.i
  %i.aro = add i32 %reass.sub7.i.i, -80           ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ajy, i64 660 ; 2 uses
  store i32 %i.aro, ptr %i.arp, align 4, !tbaa !61
  %i.arq = icmp ult i32 %.043.i.i, 54
  br i1 %i.arq, label %.preheader2.i.i, label %aw_parse_coords.exit.i

.preheader2.i.i:                                  ; preds = %bb.bl
  %i.arr = sub nsw i32 %i.aro, %.val173.i         ; 2 uses
  %i.ars = icmp sgt i32 %i.arr, %.neg.i.i
  br i1 %i.ars, label %.lr.ph.i.i, label %bb.bm

.lr.ph.i.i:                                       ; preds = %.preheader2.i.i, %.lr.ph.i.i
  %i.art = phi i32 [ %i.aru, %.lr.ph.i.i ], [ %i.arr, %.preheader2.i.i ] ; 2 uses
  %i.aru = sub nsw i32 %i.art, %.val173.i         ; 2 uses
  %i.arv = icmp sgt i32 %i.aru, %.neg.i.i
  br i1 %i.arv, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !118

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store i32 %i.art, ptr %i.arp, align 4, !tbaa !61
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i.i, %.preheader2.i.i
  %i.arw = icmp samesign ult i32 %.043.i.i, 6
  %i.arx = sub nsw i32 %i.arg, %.val.i            ; 2 uses
  %i.ary = icmp sgt i32 %i.arx, %.neg.i.i
  %or.cond.i.i = select i1 %i.arw, i1 %i.ary, i1 false
  br i1 %or.cond.i.i, label %.lr.ph5.i.i, label %aw_parse_coords.exit.i

.lr.ph5.i.i:                                      ; preds = %bb.bm, %.lr.ph5.i.i
  %i.arz = phi i32 [ %i.asa, %.lr.ph5.i.i ], [ %i.arx, %bb.bm ] ; 2 uses
  %i.asa = sub nsw i32 %i.arz, %.val.i            ; 2 uses
  %i.asb = icmp sgt i32 %i.asa, %.neg.i.i
  br i1 %i.asb, label %.lr.ph5.i.i, label %..loopexit_crit_edge.i.i, !llvm.loop !119

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph5.i.i
  store i32 %i.arz, ptr %i.arh, align 16, !tbaa !61
  br label %aw_parse_coords.exit.i

aw_parse_coords.exit.i:                           ; preds = %..loopexit_crit_edge.i.i, %bb.bm, %bb.bl, %bb.bg, %bb.bf
  %i.asc = load i8, ptr %i.amr, align 1, !tbaa !120 ; 3 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.ajy, i64 116
  %i.ase = getelementptr inbounds nuw i8, ptr %i.ajy, i64 118
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ajy, i64 120
  %i.asg = getelementptr inbounds nuw i8, ptr %i.ajy, i64 122
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ajy, i64 112 ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ajy, i64 108
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ajy, i64 100
  %i.ask = getelementptr inbounds nuw i8, ptr %i.ajy, i64 104
  %i.asl = icmp samesign ult i8 %i.amk, 2         ; 2 uses
  %.not.i154 = icmp eq i8 %i.amk, 0               ; 2 uses
  %i.asm = shl nuw nsw i32 %.zext.i, 2            ; 2 uses
  %i.asn = zext nneg i32 %i.asm to i64
  %i.aso = icmp eq i8 %i.amk, 2
  %i.asp = getelementptr inbounds nuw i8, ptr %i.amn, i64 1 ; 2 uses
  %i.asq = shl nuw i64 1, %i.amm                  ; 3 uses
  %i.asr = and i64 %i.asq, 18727
  %.not160.i.i.not.i = icmp eq i64 %i.asr, 0
  %i.ass = and i64 %i.asq, 112344
  %.not183.i = icmp eq i64 %i.ass, 0
  %i.ast = and i64 %i.asq, 74896
  %.not184.i = icmp eq i64 %i.ast, 0              ; 3 uses
  %i.asu = getelementptr i8, ptr %i.ajy, i64 640  ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ajy, i64 648 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ajy, i64 656 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ajy, i64 644 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ajy, i64 664 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 668 ; 4 uses
  %i.ata = zext i8 %i.amq to i16
  %.rhs.trunc.i.i37.i.i = sub nuw nsw i16 1000, %i.ata ; 2 uses
  %i.atb = getelementptr i8, ptr %i.ajy, i64 636  ; 8 uses
  %wide.trip.count.i38.i.i = zext i8 %i.amq to i64 ; 11 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ajy, i64 676 ; 6 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ajy, i64 624 ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.ajy, i64 632
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ajy, i64 76 ; 4 uses
  %i.atg = uitofp i8 %i.amo to double
  %wide.trip.count218.i = zext i8 %i.amo to i64   ; 2 uses
  %i.ath = shl nuw nsw i64 %wide.trip.count.i38.i.i, 2
  %i.ati = and i64 %wide.trip.count.i38.i.i, 248  ; 3 uses
  %min.iters.check416.not = icmp eq i64 %i.ati, %wide.trip.count.i38.i.i
  %n.vec404.a = and i64 %wide.trip.count.i38.i.i, 3 ; 2 uses
  %cmp.n413 = icmp eq i64 %n.vec404.a, 0
  %5 = shl nuw i64 1, %i.amm
  %xtraiter526 = and i64 %5, 129248
  %lcmp.mod527.not = icmp eq i64 %xtraiter526, 0
  %n.vec389 = and i64 %wide.trip.count.i38.i.i, 248 ; 3 uses
  %cmp.n398 = icmp eq i64 %n.vec389, %wide.trip.count.i38.i.i
  %i.atj = sub i64 %i.ajp, %i.d
  %diff.check372 = icmp ugt i64 %i.atj, -16
  br label %bb.bn

bb.bn:                                            ; preds = %synth_block.exit.i, %aw_parse_coords.exit.i
  %indvars.iv214.i = phi i64 [ 0, %aw_parse_coords.exit.i ], [ %indvars.iv.next215.i, %synth_block.exit.i ] ; 12 uses
  %.0152200.i = phi i32 [ undef, %aw_parse_coords.exit.i ], [ %.1153180.i, %synth_block.exit.i ] ; 5 uses
  %indvars216.i = trunc i64 %indvars.iv214.i to i32 ; 5 uses
  switch i8 %i.asc, label %bb.ca [
    i8 2, label %bb.bo
    i8 1, label %bb.bz
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.atk = load i16, ptr %i.ase, align 2, !tbaa !63
  %i.atl = zext i16 %i.atk to i32                 ; 3 uses
  %i.atm = load i16, ptr %i.asd, align 4, !tbaa !63
  %i.atn = zext i16 %i.atm to i32                 ; 2 uses
  %i.ato = sub nsw i32 %i.atl, %i.atn
  %i.atp = shl nsw i32 %i.ato, 2                  ; 2 uses
  %i.atq = load i16, ptr %i.asf, align 4, !tbaa !63
  %i.atr = zext i16 %i.atq to i32                 ; 3 uses
  %i.ats = sub nsw i32 %i.atr, %i.atl
  %i.att = shl nsw i32 %i.ats, 1                  ; 2 uses
  %i.atu = load i16, ptr %i.asg, align 2, !tbaa !63
  %i.atv = zext i16 %i.atu to i32                 ; 2 uses
  %i.atw = sub nsw i32 %i.atv, %i.atr
  %i.atx = icmp eq i64 %indvars.iv214.i, 0
  br i1 %i.atx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.aty = load i32, ptr %i.asj, align 4, !tbaa !68 ; 2 uses
  %i.atz = load i32, ptr %i.at, align 8, !tbaa !56 ; 3 uses
  %i.aua = load i32, ptr %i.ay, align 8, !tbaa !55
  %i.aub = load ptr, ptr %.0114, align 8, !tbaa !53
  %i.auc = lshr i32 %i.atz, 3
  %i.aud = zext nneg i32 %i.auc to i64
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aub, i64 %i.aud
  %i.auf = load i32, ptr %i.aue, align 1, !tbaa !32
  %i.aug = call i32 @llvm.bswap.i32(i32 %i.auf)
  %i.auh = and i32 %i.atz, 7
  %i.aui = shl i32 %i.aug, %i.auh
  %i.auj = sub nsw i32 32, %i.aty
  %i.auk = lshr i32 %i.aui, %i.auj
  %i.aul = add i32 %i.atz, %i.aty
  %i.aum = call i32 @llvm.umin.i32(i32 %i.aua, i32 %i.aul)
  %.pre.i = load i32, ptr %i.ash, align 16, !tbaa !65
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.aun = load i32, ptr %i.ash, align 16, !tbaa !65 ; 2 uses
  %i.auo = sub i32 %.0152200.i, %i.aun
  %i.aup = load i32, ptr %i.asi, align 4, !tbaa !66 ; 2 uses
  %i.auq = load i32, ptr %i.at, align 8, !tbaa !56 ; 3 uses
  %i.aur = load i32, ptr %i.ay, align 8, !tbaa !55
  %i.aus = load ptr, ptr %.0114, align 8, !tbaa !53
  %i.aut = lshr i32 %i.auq, 3
  %i.auu = zext nneg i32 %i.aut to i64
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aus, i64 %i.auu
  %i.auw = load i32, ptr %i.auv, align 1, !tbaa !32
  %i.aux = call i32 @llvm.bswap.i32(i32 %i.auw)
  %i.auy = and i32 %i.auq, 7
  %i.auz = shl i32 %i.aux, %i.auy
  %i.ava = sub nsw i32 32, %i.aup
  %i.avb = lshr i32 %i.auz, %i.ava
  %i.avc = add i32 %i.auq, %i.aup
  %i.avd = call i32 @llvm.umin.i32(i32 %i.aur, i32 %i.avc)
  %i.ave = add i32 %i.auo, %i.avb
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.avf = phi i32 [ %.pre.i, %bb.bp ], [ %i.aun, %bb.bq ] ; 3 uses
  %.sink.i = phi i32 [ %i.aum, %bb.bp ], [ %i.avd, %bb.bq ]
  %.0.i159 = phi i32 [ %i.auk, %bb.bp ], [ %i.ave, %bb.bq ] ; 5 uses
  store i32 %.sink.i, ptr %i.at, align 8, !tbaa !56
  %i.avg = load i32, ptr %i.ask, align 8, !tbaa !67
  %i.avh = sub nsw i32 %i.avg, %i.avf
  %i.avi = icmp slt i32 %.0.i159, %i.avf
  %..i.i = call i32 @llvm.smin.i32(i32 %.0.i159, i32 %i.avh)
  %.0.i.i = select i1 %i.avi, i32 %i.avf, i32 %..i.i
  %i.avj = icmp slt i32 %.0.i159, %i.atp
  br i1 %i.avj, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.avk = shl nuw nsw i32 %i.atn, 2
  %i.avl = add nsw i32 %.0.i159, %i.avk
  br label %bb.by

bb.bt:                                            ; preds = %bb.br
  %i.avm = sub nsw i32 %.0.i159, %i.atp           ; 3 uses
  %i.avn = icmp slt i32 %i.avm, %i.att
  br i1 %i.avn, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.avo = shl nuw nsw i32 %i.atl, 2
  %i.avp = shl nsw i32 %i.avm, 1
  %i.avq = add nsw i32 %i.avp, %i.avo
  br label %bb.by

bb.bv:                                            ; preds = %bb.bt
  %i.avr = sub nsw i32 %i.avm, %i.att             ; 2 uses
  %.not172.i = icmp sgt i32 %i.avr, %i.atw
  br i1 %.not172.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.avs = add nsw i32 %i.avr, %i.atr
  %i.avt = shl nsw i32 %i.avs, 2
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.avu = shl nuw nsw i32 %i.atv, 2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.bs
  %.0148.i = phi i32 [ %i.avl, %bb.bs ], [ %i.avq, %bb.bu ], [ %i.avt, %bb.bw ], [ %i.avu, %bb.bx ] ; 2 uses
  %i.avv = ashr i32 %.0148.i, 2
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv214.i
  store i32 %i.avv, ptr %i.avw, align 4, !tbaa !61
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bn
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv214.i
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !61
  %i.avz = shl i32 %i.avy, 2
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bn
  %i.awa = mul nuw nsw i64 %indvars.iv214.i, %wide.trip.count.i38.i.i ; 2 uses
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.awa ; 5 uses
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.awa ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  br i1 %i.asl, label %bb.cb, label %.thread252.i

.thread252.i:                                     ; preds = %bb.ca
  %i.awd = mul nuw nsw i32 %indvars216.i, %.zext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  br label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  br i1 %.not.i154, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.awe = load i32, ptr %i.asz, align 4, !tbaa !121
  %i.awf = mul i32 %indvars216.i, 1877
  %i.awg = add nsw i32 %i.awe, %i.awf             ; 3 uses
  %i.awh = icmp ugt i32 %i.awg, 65534
  %i.awi = add i32 %i.awg, -65535
  %spec.select.i.i.i.i = select i1 %i.awh, i32 %i.awi, i32 %i.awg ; 4 uses
  %i.awj = sext i32 %spec.select.i.i.i.i to i64
  %i.awk = mul nsw i64 %i.awj, 477218589
  %i.awl = lshr i64 %i.awk, 32
  %i.awm = trunc nuw i64 %i.awl to i32
  %.neg.i.i.i.i = mul i32 %i.awm, -9
  %i.awn = add i32 %.neg.i.i.i.i, %spec.select.i.i.i.i
  %i.awo = zext i32 %i.awn to i64
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr @pRNG.div_tbl, i64 %i.awo ; 2 uses
  %i.awq = load i32, ptr %i.awp, align 8, !tbaa !61
  %i.awr = mul i32 %spec.select.i.i.i.i, %i.awq
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awp, i64 4
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !61
  %i.awu = zext i32 %spec.select.i.i.i.i to i64
  %i.awv = zext i32 %i.awt to i64
  %i.aww = mul nuw i64 %i.awu, %i.awv
  %i.awx = lshr i64 %i.aww, 32
  %i.awy = trunc nuw i64 %i.awx to i32
  %i.awz = add i32 %i.awr, %i.awy
  %.lhs.trunc.i.i.i.i = trunc i32 %i.awz to i16
  %i.axa = urem i16 %.lhs.trunc.i.i.i.i, %.rhs.trunc.i.i37.i.i
  %.zext.i.i.i.i = zext nneg i16 %i.axa to i32
  br label %.lr.ph.preheader.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.axb = load i32, ptr %i.at, align 8, !tbaa !56 ; 3 uses
  %i.axc = load i32, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  %i.axd = load ptr, ptr %.0114, align 8, !tbaa !53 ; 2 uses
  %i.axe = lshr i32 %i.axb, 3
  %i.axf = zext nneg i32 %i.axe to i64
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axd, i64 %i.axf
  %i.axh = load i32, ptr %i.axg, align 1, !tbaa !32
  %i.axi = call i32 @llvm.bswap.i32(i32 %i.axh)
  %i.axj = and i32 %i.axb, 7
  %i.axk = shl i32 %i.axi, %i.axj
  %i.axl = lshr i32 %i.axk, 24
  %i.axm = add i32 %i.axb, 8
  %i.axn = call i32 @llvm.umin.i32(i32 %i.axc, i32 %i.axm) ; 4 uses
  store i32 %i.axn, ptr %i.at, align 8, !tbaa !56
  %i.axo = lshr i32 %i.axn, 3
  %i.axp = zext nneg i32 %i.axo to i64
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axd, i64 %i.axp
  %i.axr = load i32, ptr %i.axq, align 1, !tbaa !32
  %i.axs = call i32 @llvm.bswap.i32(i32 %i.axr)
  %i.axt = and i32 %i.axn, 7
  %i.axu = shl i32 %i.axs, %i.axt
  %i.axv = lshr i32 %i.axu, 26
  %i.axw = add i32 %i.axn, 6
end_hunk_0
begin_hunk_1_@synth_superframe:bb.a
  %i.bcs = and i32 %i.bcr, %..i114.i.i.i
  %.not71.i.i.i.i.3 = icmp eq i32 %i.bcs, 0
  %i.bct = select i1 %.not71.i.i.i.i.3, float 1.000000e+00, float -1.000000e+00
  %i.bcu = sext i32 %i.bcq to i64                 ; 2 uses
  %i.bcv = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.bcu
  store float %i.bct, ptr %i.bcv, align 4, !tbaa !39
  %i.bcw = and i32 %i.bcr, %.72.i.i.i.i
  %i.bcx = mul nuw nsw i32 %i.bcw, %.74.i.i.i.i
  %i.bcy = add i32 %.06279.i.i.i.i.3, %i.azo
  %i.bcz = add i32 %i.bcy, %i.bcx
  %i.bda = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bcu
  store i32 %i.bcz, ptr %i.bda, align 4, !tbaa !61
  %i.bdb = load i32, ptr %3, align 4, !tbaa !128  ; 2 uses
  %i.bdc = sext i32 %i.bdb to i64
  %i.bdd = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bdc ; 2 uses
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !61 ; 3 uses
  %i.bdf = icmp slt i32 %i.bde, 0
  br i1 %i.bdf, label %.lr.ph.i.i.i.i.3, label %._crit_edge.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %bb.cp, %.lr.ph.i.i.i.i.3
  %i.bdg = phi i32 [ %i.bdn, %.lr.ph.i.i.i.i.3 ], [ %i.bde, %bb.cp ]
  %i.bdh = phi ptr [ %i.bdm, %.lr.ph.i.i.i.i.3 ], [ %i.bdd, %bb.cp ]
  %i.bdi = load i32, ptr %i.afq, align 4, !tbaa !124
  %i.bdj = add nsw i32 %i.bdi, %i.bdg
  store i32 %i.bdj, ptr %i.bdh, align 4, !tbaa !61
  %i.bdk = load i32, ptr %3, align 4, !tbaa !128  ; 2 uses
  %i.bdl = sext i32 %i.bdk to i64
  %i.bdm = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bdl ; 2 uses
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !61 ; 3 uses
  %i.bdo = icmp slt i32 %i.bdn, 0
  br i1 %i.bdo, label %.lr.ph.i.i.i.i.3, label %._crit_edge.i.i.i.i.3, !llvm.loop !129

._crit_edge.i.i.i.i.3:                            ; preds = %.lr.ph.i.i.i.i.3, %bb.cp
  %i.bdp = phi i32 [ %i.bdb, %bb.cp ], [ %i.bdk, %.lr.ph.i.i.i.i.3 ] ; 2 uses
  %.lcssa.i.i.i.i.3 = phi i32 [ %i.bde, %bb.cp ], [ %i.bdn, %.lr.ph.i.i.i.i.3 ]
  %i.bdq = icmp samesign ult i32 %.lcssa.i.i.i.i.3, 80
  br i1 %i.bdq, label %bb.cq, label %aw_pulse_set1.exit.i.i.i

bb.cq:                                            ; preds = %._crit_edge.i.i.i.i.3
  %i.bdr = add nsw i32 %i.bdp, 1                  ; 2 uses
  store i32 %i.bdr, ptr %3, align 4, !tbaa !128
  br label %aw_pulse_set1.exit.i.i.i

bb.cr:                                            ; preds = %bb.ch
  %i.bds = lshr i32 %i.azg, 1
  %i.bdt = and i32 %i.bds, 255                    ; 4 uses
  %i.bdu = icmp samesign ult i32 %i.bdt, 79
  br i1 %i.bdu, label %aw_pulse_set1.exit.thread.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bdv = icmp samesign ult i32 %i.bdt, 156
  br i1 %i.bdv, label %aw_pulse_set1.exit.thread.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bdw = icmp samesign ult i32 %i.bdt, 231      ; 2 uses
  %.88.i.i.i.i = select i1 %i.bdw, i32 -151, i32 -224
  %.89.i.i.i.i = select i1 %i.bdw, i32 -5, i32 -7
  br label %aw_pulse_set1.exit.thread.i.i.i

aw_pulse_set1.exit.thread.i.i.i:                  ; preds = %bb.ct, %bb.cs, %bb.cr
  %.sink.i.i.i.i = phi i32 [ 1, %bb.cr ], [ -76, %bb.cs ], [ %.88.i.i.i.i, %bb.ct ]
  %.057.neg.i.i.i.i = phi i32 [ -1, %bb.cr ], [ -3, %bb.cs ], [ %.89.i.i.i.i, %bb.ct ]
  %i.bdx = add nsw i32 %.sink.i.i.i.i, %i.bdt     ; 2 uses
  %i.bdy = and i32 %i.azg, 512
  %.not69.i.i.i.i = icmp eq i32 %i.bdy, 0
  %i.bdz = select i1 %.not69.i.i.i.i, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  store i32 3, ptr %i.afs, align 4, !tbaa !127
  %i.bea = add nsw i32 %i.bdx, %.057.neg.i.i.i.i
  store i32 %i.bea, ptr %i.aft, align 4, !tbaa !61
  store float %i.bdz, ptr %i.afu, align 4, !tbaa !39
  store i32 %i.bdx, ptr %i.afv, align 4, !tbaa !61
  %i.beb = and i32 %i.azg, 1
  %.not70.i.i.i.i = icmp eq i32 %i.beb, 0
  %i.bec = fneg nsz float %i.bdz
  %i.bed = select nsz i1 %.not70.i.i.i.i, float %i.bdz, float %i.bec
  store float %i.bed, ptr %i.afw, align 4, !tbaa !39
  store i32 2, ptr %3, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %i.asw, i64 %indvars.iv214.i
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !61
  br label %.loopexit109.i.i.i.i

aw_pulse_set1.exit.i.i.i:                         ; preds = %._crit_edge.i.i.i.i.3, %bb.cq, %bb.co
  %.lcssa472 = phi i32 [ %i.bcq, %bb.co ], [ %i.bdp, %._crit_edge.i.i.i.i.3 ], [ %i.bdr, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.beg = add nsw i32 %i.azo, %i.azm
  %i.beh = icmp slt i32 %i.beg, 1
  br i1 %i.beh, label %.lr.ph.i118.i.i.i, label %.loopexit109.i.i.i.i

.lr.ph.i118.i.i.i:                                ; preds = %aw_pulse_set1.exit.i.i.i
  %i.bei = load i32, ptr %i.afq, align 4, !tbaa !124
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %.lr.ph.i118.i.i.i
  %.086111.i.i.i.i = phi i32 [ %i.azo, %.lr.ph.i118.i.i.i ], [ %i.bej, %bb.cu ]
  %i.bej = add nsw i32 %.086111.i.i.i.i, %i.bei   ; 3 uses
  %i.bek = add nsw i32 %i.bej, %i.azm
  %i.bel = icmp slt i32 %i.bek, 1
  br i1 %i.bel, label %bb.cu, label %.loopexit109.i.i.i.i, !llvm.loop !130

.loopexit109.i.i.i.i:                             ; preds = %bb.cu, %aw_pulse_set1.exit.i.i.i, %aw_pulse_set1.exit.thread.i.i.i
  %i.bem = phi i32 [ 2, %aw_pulse_set1.exit.thread.i.i.i ], [ %.lcssa472, %aw_pulse_set1.exit.i.i.i ], [ %.lcssa472, %bb.cu ]
  %.187.i.i.i.i = phi i32 [ %i.bef, %aw_pulse_set1.exit.thread.i.i.i ], [ %i.azo, %aw_pulse_set1.exit.i.i.i ], [ %i.bej, %bb.cu ] ; 2 uses
  %i.ben = load i32, ptr %i.asv, align 8, !tbaa !61
  %i.beo = icmp sgt i32 %i.ben, 0                 ; 2 uses
  br i1 %i.beo, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %.loopexit109.i.i.i.i
  %i.bep = icmp eq i64 %indvars.iv214.i, 0
  br i1 %i.bep, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.azl, label %.thread129.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.cw
  store i32 0, ptr %i.a, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.afx, i8 -1, i64 10, i1 false)
  store i32 0, ptr %i.afy, align 2
  br label %.preheader.lr.ph.i.i.i.i.a

.thread129.i.i.i.i:                               ; preds = %bb.cw
  %i.beq = load i32, ptr %i.asy, align 8, !tbaa !131 ; 2 uses
  %i.ber = add i32 %i.beq, -4
  store i32 0, ptr %i.a, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.afx, i8 -1, i64 10, i1 false)
  store i32 0, ptr %i.afy, align 2
  br label %.preheader106.i.i.i.i

bb.cx:                                            ; preds = %bb.cv, %.loopexit109.i.i.i.i
  %.080.neg.i.i.i.i = phi i32 [ -16, %bb.cv ], [ -8, %.loopexit109.i.i.i.i ]
  %i.bes = add i32 %.080.neg.i.i.i.i, %.187.i.i.i.i
  store i32 0, ptr %i.a, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.afx, i8 -1, i64 10, i1 false)
  store i32 0, ptr %i.afy, align 2
  br i1 %i.azl, label %.preheader106.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.a

.preheader106.i.i.i.i:                            ; preds = %bb.cx, %.thread129.i.i.i.i
  %i.bet = phi i32 [ %i.ber, %.thread129.i.i.i.i ], [ %i.bes, %bb.cx ] ; 2 uses
  %.288132.i.i.i.i = phi i32 [ %i.beq, %.thread129.i.i.i.i ], [ %.187.i.i.i.i, %bb.cx ] ; 2 uses
  %i.beu = icmp slt i32 %.288132.i.i.i.i, 80
  br i1 %i.beu, label %.lr.ph113.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.a

.lr.ph113.i.i.i.i:                                ; preds = %.preheader106.i.i.i.i
  %i.bev = load i32, ptr %i.asx, align 4, !tbaa !116
  %i.bew = load i32, ptr %i.afq, align 4, !tbaa !124
  br label %bb.cy

bb.cy:                                            ; preds = %bb.db, %.lr.ph113.i.i.i.i
  %.081112.i.i.i.i = phi i32 [ %.288132.i.i.i.i, %.lr.ph113.i.i.i.i ], [ %i.bfs, %bb.db ] ; 4 uses
  %i.bex = ashr i32 %.081112.i.i.i.i, 4
  %i.bey = sext i32 %i.bex to i64
  %i.bez = getelementptr inbounds [2 x i8], ptr %i.afx, i64 %i.bey ; 4 uses
  %i.bfa = and i32 %.081112.i.i.i.i, 15
  %.neg.i.i44.i.i = or i32 %.081112.i.i.i.i, -16
  %i.bfb = lshr exact i32 -65536, %i.bfa
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bez, i64 2 ; 2 uses
  %i.bfd = load i16, ptr %i.bez, align 2, !tbaa !63
  %i.bfe = trunc i32 %i.bfb to i16
  %i.bff = and i16 %i.bfd, %i.bfe
  store i16 %i.bff, ptr %i.bez, align 2, !tbaa !63
  %i.bfg = add i32 %.neg.i.i44.i.i, %i.bev        ; 3 uses
  %i.bfh = icmp sgt i32 %i.bfg, 15
  br i1 %i.bfh, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bez, i64 4 ; 2 uses
  %i.bfj = add nsw i32 %i.bfg, -16
  %i.bfk = lshr i32 65535, %i.bfj
  %i.bfl = load i16, ptr %i.bfi, align 2, !tbaa !63
  %i.bfm = trunc nuw i32 %i.bfk to i16
  %i.bfn = and i16 %i.bfl, %i.bfm
  store i16 %i.bfn, ptr %i.bfi, align 2, !tbaa !63
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.bfo = lshr i32 65535, %i.bfg
  %i.bfp = load i16, ptr %i.bfc, align 2, !tbaa !63
  %i.bfq = trunc nuw i32 %i.bfo to i16
  %i.bfr = and i16 %i.bfp, %i.bfq
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sink.i117.i.i.i = phi i16 [ 0, %bb.cz ], [ %i.bfr, %bb.da ]
  store i16 %.sink.i117.i.i.i, ptr %i.bfc, align 2, !tbaa !63
  %i.bfs = add nsw i32 %.081112.i.i.i.i, %i.bew   ; 2 uses
  %i.bft = icmp slt i32 %i.bfs, 80
  br i1 %i.bft, label %bb.cy, label %.preheader.lr.ph.i.i.i.i.a, !llvm.loop !132

.preheader.lr.ph.i.i.i.i.a:                       ; preds = %bb.db, %.preheader106.i.i.i.i, %bb.cx, %.thread.i.i.i.i
  %i.bfu = phi i32 [ 0, %.thread.i.i.i.i ], [ 0, %bb.cx ], [ %i.bet, %.preheader106.i.i.i.i ], [ %i.bet, %bb.db ]
  %i.bfv = shl i32 %indvars216.i, 1
  %i.bfw = sub i32 5, %i.bfv
  %i.bfx = select i1 %i.beo, i32 %i.bfw, i32 4    ; 2 uses
  %i.bfy = lshr i32 %i.azi, 3
  %i.bfz = zext nneg i32 %i.bfy to i64
  %i.bga = getelementptr inbounds nuw i8, ptr %i.ayx, i64 %i.bfz
  %i.bgb = load i32, ptr %i.bga, align 1, !tbaa !32
  %i.bgc = call i32 @llvm.bswap.i32(i32 %i.bgb)
  %i.bgd = and i32 %i.azi, 7
  %i.bge = shl i32 %i.bgc, %i.bgd
  %i.bgf = sub nsw i32 32, %i.bfx
  %i.bgg = lshr i32 %i.bge, %i.bgf                ; 2 uses
  %i.bgh = add i32 %i.bfx, %i.azi
  %i.bgi = call i32 @llvm.umin.i32(i32 %i.ayw, i32 %i.bgh) ; 6 uses
  store i32 %i.bgi, ptr %i.at, align 8, !tbaa !56
  %.not117.i.i.i.i = icmp slt i32 %i.bgg, 0
  br i1 %.not117.i.i.i.i, label %aw_pulse_set2.exit.thread.i.i.i, label %.preheader.lr.ph.i.i.i.i

.preheader.lr.ph.i.i.i.i:                         ; preds = %.preheader.lr.ph.i.i.i.i.a
  %6 = load i32, ptr %i.afq, align 4
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.dk, %.preheader.lr.ph.i.i.i.i
  %.0120.i.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.dk ]
  %.083119.i.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i.i ], [ %.184.i.i.i.i, %bb.dk ] ; 2 uses
  %.085118.i.i.i.i = phi i32 [ %i.bfu, %.preheader.lr.ph.i.i.i.i ], [ %i.bhp, %bb.dk ] ; 4 uses
  %i.bgj = icmp slt i32 %.085118.i.i.i.i, 0
  br i1 %i.bgj, label %.lr.ph115.i.i.i.i, label %._crit_edge.i115.i.i.i

.lr.ph115.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.lr.ph115.i.i.i.i
  %.182114.i.i.i.i = phi i32 [ %i.bgk, %.lr.ph115.i.i.i.i ], [ %.085118.i.i.i.i, %.preheader.i.i.i.i ]
  %i.bgk = add nsw i32 %.182114.i.i.i.i, %6       ; 3 uses
  %i.bgl = icmp slt i32 %i.bgk, 0
  br i1 %i.bgl, label %.lr.ph115.i.i.i.i, label %._crit_edge.i115.i.i.i, !llvm.loop !133

._crit_edge.i115.i.i.i:                           ; preds = %.lr.ph115.i.i.i.i, %.preheader.i.i.i.i
  %.182.lcssa.i.i.i.i = phi i32 [ %.085118.i.i.i.i, %.preheader.i.i.i.i ], [ %i.bgk, %.lr.ph115.i.i.i.i ] ; 2 uses
  %i.bgm = icmp samesign ugt i32 %.182.lcssa.i.i.i.i, 79
  br i1 %i.bgm, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %._crit_edge.i115.i.i.i
  %i.bgn = load i16, ptr %i.afx, align 4, !tbaa !63
  %.not95.i.i.i.i = icmp eq i16 %i.bgn, 0
  br i1 %.not95.i.i.i.i, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.bgo = load i16, ptr %i.afz, align 2, !tbaa !63
  %.not96.i.i.i.i = icmp eq i16 %i.bgo, 0
  br i1 %.not96.i.i.i.i, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.bgp = load i16, ptr %i.aga, align 8, !tbaa !63
  %.not97.i.i.i.i = icmp eq i16 %i.bgp, 0
  br i1 %.not97.i.i.i.i, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.bgq = load i16, ptr %i.agb, align 2, !tbaa !63
  %.not98.i.i.i.i = icmp eq i16 %i.bgq, 0
  br i1 %.not98.i.i.i.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.bgr = load i16, ptr %i.agc, align 4, !tbaa !63
  %.not99.i.i.i.i = icmp eq i16 %i.bgr, 0
  br i1 %.not99.i.i.i.i, label %.lr.ph.i35.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc
  %.2.i.i.i.i = phi i32 [ 63, %bb.df ], [ 15, %bb.dc ], [ 31, %bb.dd ], [ 47, %bb.de ], [ 79, %bb.dg ] ; 2 uses
  %i.bgs = lshr i32 %.2.i.i.i.i, 4
  %i.bgt = zext nneg i32 %i.bgs to i64
  %i.bgu = getelementptr inbounds nuw [2 x i8], ptr %i.afx, i64 %i.bgt
  %i.bgv = load i16, ptr %i.bgu, align 2, !tbaa !63 ; 2 uses
  %i.bgw = zext i16 %i.bgv to i32                 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i16 %i.bgv, 256      ; 2 uses
  %i.bgx = lshr i32 %i.bgw, 8
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.bgw, i32 %i.bgx
  %spec.select7.i.neg123.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 -8
  %i.bgy = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.bgz = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bgy
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !32
  %i.bhb = zext i8 %i.bha to i32
  %.neg105.i.i.i.i = sub nsw i32 %.2.i.i.i.i, %i.bhb
  %i.bhc = add nsw i32 %.neg105.i.i.i.i, %spec.select7.i.neg123.i.i.i.i
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %._crit_edge.i115.i.i.i
  %.3.i.i.i.i = phi i32 [ %i.bhc, %bb.dh ], [ %.182.lcssa.i.i.i.i, %._crit_edge.i115.i.i.i ] ; 3 uses
  %i.bhd = ashr i32 %.3.i.i.i.i, 4
  %i.bhe = sext i32 %i.bhd to i64
  %i.bhf = getelementptr inbounds [2 x i8], ptr %i.afx, i64 %i.bhe ; 2 uses
  %i.bhg = load i16, ptr %i.bhf, align 2, !tbaa !63 ; 2 uses
  %i.bhh = zext i16 %i.bhg to i32
  %i.bhi = and i32 %.3.i.i.i.i, 15                ; 2 uses
  %i.bhj = lshr exact i32 32768, %i.bhi
  %i.bhk = and i32 %i.bhj, %i.bhh
  %.not100.i.i.i.i = icmp eq i32 %i.bhk, 0
  br i1 %.not100.i.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.bhl = ashr i32 -32769, %i.bhi
  %i.bhm = trunc i32 %i.bhl to i16
  %i.bhn = and i16 %i.bhg, %i.bhm
  store i16 %i.bhn, ptr %i.bhf, align 2, !tbaa !63
  %i.bho = add nsw i32 %.083119.i.i.i.i, 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.184.i.i.i.i = phi i32 [ %i.bho, %bb.dj ], [ %.083119.i.i.i.i, %bb.di ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %.3.i.i.i.i, %bb.dj ], [ %.0120.i.i.i.i, %bb.di ] ; 2 uses
  %i.bhp = add nsw i32 %.085118.i.i.i.i, 1
  %.not.i116.i.i.i = icmp sgt i32 %.184.i.i.i.i, %i.bgg
  br i1 %.not.i116.i.i.i, label %aw_pulse_set2.exit.thread.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !134

aw_pulse_set2.exit.thread.i.i.i:                  ; preds = %bb.dk, %.preheader.lr.ph.i.i.i.i.a
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i.i.a ], [ %.1.i.i.i.i, %bb.dk ] ; 2 uses
  %i.bhq = sext i32 %i.bem to i64
  %i.bhr = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bhq
  store i32 %.0.lcssa.i.i.i.i, ptr %i.bhr, align 4, !tbaa !61
  %i.bhs = lshr i32 %i.bgi, 3
  %i.bht = zext nneg i32 %i.bhs to i64
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.ayx, i64 %i.bht
  %i.bhv = load i8, ptr %i.bhu, align 1, !tbaa !32
  %i.bhw = icmp slt i32 %i.bgi, %i.ayw
  %i.bhx = zext i1 %i.bhw to i32
  %spec.select.i101.i.i.i.i = add i32 %i.bgi, %i.bhx
  %i.bhy = zext i8 %i.bhv to i32
  %i.bhz = and i32 %i.bgi, 7
  store i32 %spec.select.i101.i.i.i.i, ptr %i.at, align 8, !tbaa !56
  %i.bia = lshr exact i32 128, %i.bhz
  %i.bib = and i32 %i.bia, %i.bhy
  %.not93.i.i.i.i = icmp eq i32 %i.bib, 0
  %i.bic = select i1 %.not93.i.i.i.i, float 1.000000e+00, float -1.000000e+00
  %i.bid = load i32, ptr %3, align 4, !tbaa !128  ; 2 uses
  %i.bie = sext i32 %i.bid to i64
  %i.bif = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.bie
  store float %i.bic, ptr %i.bif, align 4, !tbaa !39
  %i.big = add nsw i32 %i.bid, 1
  store i32 %i.big, ptr %3, align 4, !tbaa !128
  %i.bih = sub nsw i32 80, %.0.lcssa.i.i.i.i
  %i.bii = load i32, ptr %i.afq, align 4, !tbaa !124 ; 2 uses
  %i.bij = srem i32 %i.bih, %i.bii                ; 2 uses
  %.not94.i.i.i.i = icmp eq i32 %i.bij, 0
  %i.bik = sub nsw i32 %i.bii, %i.bij
  %spec.select.i.i34.i.i = select i1 %.not94.i.i.i.i, i32 0, i32 %i.bik
  store i32 %spec.select.i.i34.i.i, ptr %i.asy, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit124.i.i.i

.lr.ph.i35.i.i:                                   ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bil = load i32, ptr %i.asz, align 4, !tbaa !121
  %i.bim = mul i32 %indvars216.i, 1877
  %i.bin = add nsw i32 %i.bil, %i.bim             ; 3 uses
  %i.bio = icmp ugt i32 %i.bin, 65534
  %i.bip = add i32 %i.bin, -65535
  %spec.select.i119.i.i.i = select i1 %i.bio, i32 %i.bip, i32 %i.bin ; 4 uses
  %i.biq = sext i32 %spec.select.i119.i.i.i to i64
  %i.bir = mul nsw i64 %i.biq, 477218589
  %i.bis = lshr i64 %i.bir, 32
  %i.bit = trunc nuw i64 %i.bis to i32
  %.neg.i120.i.i.i = mul i32 %i.bit, -9
  %i.biu = add i32 %.neg.i120.i.i.i, %spec.select.i119.i.i.i
  %i.biv = zext i32 %i.biu to i64
  %i.biw = getelementptr inbounds nuw [8 x i8], ptr @pRNG.div_tbl, i64 %i.biv ; 2 uses
  %i.bix = load i32, ptr %i.biw, align 8, !tbaa !61
  %i.biy = mul i32 %spec.select.i119.i.i.i, %i.bix
  %i.biz = zext i32 %spec.select.i119.i.i.i to i64
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biw, i64 4
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !61
  %i.bjc = zext i32 %i.bjb to i64
  %i.bjd = mul nuw i64 %i.biz, %i.bjc
  %i.bje = lshr i64 %i.bjd, 32
  %i.bjf = trunc nuw i64 %i.bje to i32
  %i.bjg = add i32 %i.biy, %i.bjf
  %.lhs.trunc.i.i36.i.i = trunc i32 %i.bjg to i16
  %i.bjh = urem i16 %.lhs.trunc.i.i36.i.i, %.rhs.trunc.i.i37.i.i
  %i.bji = zext nneg i16 %i.bjh to i64
  %invariant.gep.i39.i.i = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_std_codebook, i64 %i.bji ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ayq, i64 %i.ath
  %bound0 = icmp ult ptr %i.ayq, %i.asu
  %bound1 = icmp ult ptr %i.atb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph401.preheader, label %vector.ph403.a

vector.ph403.a:                                   ; preds = %.lr.ph.i35.i.i
  %i.bjj = load float, ptr %i.atb, align 4, !tbaa !114, !alias.scope !135
  %broadcast.splatinsert409 = insertelement <4 x float> poison, float %i.bjj, i64 0
  %broadcast.splat410 = shufflevector <4 x float> %broadcast.splatinsert409, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403.a
  %index406 = phi i64 [ 0, %vector.ph403.a ], [ %index.next411, %vector.body405 ] ; 3 uses
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %index406 ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 16
  %wide.load407 = load <4 x float>, ptr %i.bjk, align 4, !tbaa !39
  %wide.load408 = load <4 x float>, ptr %i.bjl, align 4, !tbaa !39
  %i.bjm = fmul nsz <4 x float> %wide.load407, %broadcast.splat410
  %i.bjn = fmul nsz <4 x float> %wide.load408, %broadcast.splat410
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %index406 ; 2 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 16
  store <4 x float> %i.bjm, ptr %i.bjo, align 4, !tbaa !39, !alias.scope !138, !noalias !135
  store <4 x float> %i.bjn, ptr %i.bjp, align 4, !tbaa !39, !alias.scope !138, !noalias !135
  %index.next411 = add nuw i64 %index406, 8       ; 2 uses
  %i.bjq = icmp eq i64 %index.next411, %i.ati
  br i1 %i.bjq, label %middle.block412, label %vector.body405, !llvm.loop !140

middle.block412:                                  ; preds = %vector.body405
  br i1 %min.iters.check416.not, label %._crit_edge.i.i.i, label %scalar.ph401.preheader

scalar.ph401.preheader:                           ; preds = %.lr.ph.i35.i.i, %middle.block412
  %indvars.iv.i40.i.i.ph = phi i64 [ 0, %.lr.ph.i35.i.i ], [ %i.ati, %middle.block412 ] ; 3 uses
  br i1 %cmp.n413, label %scalar.ph401.prol.loopexit, label %scalar.ph401.prol

scalar.ph401.prol:                                ; preds = %scalar.ph401.preheader, %scalar.ph401.prol
  %indvars.iv.i40.i.i.prol = phi i64 [ %indvars.iv.next.i42.i.i.prol, %scalar.ph401.prol ], [ %indvars.iv.i40.i.i.ph, %scalar.ph401.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph401.prol ], [ 0, %scalar.ph401.preheader ]
  %gep.i41.i.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.i40.i.i.prol
  %i.bjr = load float, ptr %gep.i41.i.i.prol, align 4, !tbaa !39
  %i.bjs = load float, ptr %i.atb, align 4, !tbaa !114
  %i.bjt = fmul nsz float %i.bjr, %i.bjs
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.i40.i.i.prol
  store float %i.bjt, ptr %i.bju, align 4, !tbaa !39
  %indvars.iv.next.i42.i.i.prol = add nuw nsw i64 %indvars.iv.i40.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %n.vec404.a
  br i1 %prol.iter.cmp.not, label %scalar.ph401.prol.loopexit, label %scalar.ph401.prol, !llvm.loop !141

scalar.ph401.prol.loopexit:                       ; preds = %scalar.ph401.prol, %scalar.ph401.preheader
  %indvars.iv.i40.i.i.unr = phi i64 [ %indvars.iv.i40.i.i.ph, %scalar.ph401.preheader ], [ %indvars.iv.next.i42.i.i.prol, %scalar.ph401.prol ]
  %i.bjv = sub nsw i64 %indvars.iv.i40.i.i.ph, %wide.trip.count.i38.i.i
  %i.bjw = icmp ugt i64 %i.bjv, -4
  br i1 %i.bjw, label %._crit_edge.i.i.i, label %scalar.ph401

scalar.ph401:                                     ; preds = %scalar.ph401.prol.loopexit, %scalar.ph401
  %indvars.iv.i40.i.i = phi i64 [ %indvars.iv.next.i42.i.i.3, %scalar.ph401 ], [ %indvars.iv.i40.i.i.unr, %scalar.ph401.prol.loopexit ] ; 6 uses
  %gep.i41.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.i40.i.i
  %i.bjx = load float, ptr %gep.i41.i.i, align 4, !tbaa !39
  %i.bjy = load float, ptr %i.atb, align 4, !tbaa !114
  %i.bjz = fmul nsz float %i.bjx, %i.bjy
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.i40.i.i
  store float %i.bjz, ptr %i.bka, align 4, !tbaa !39
  %indvars.iv.next.i42.i.i = add nuw nsw i64 %indvars.iv.i40.i.i, 1 ; 2 uses
  %gep.i41.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i
  %i.bkb = load float, ptr %gep.i41.i.i.1, align 4, !tbaa !39
  %i.bkc = load float, ptr %i.atb, align 4, !tbaa !114
  %i.bkd = fmul nsz float %i.bkb, %i.bkc
  %i.bke = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.next.i42.i.i
  store float %i.bkd, ptr %i.bke, align 4, !tbaa !39
  %indvars.iv.next.i42.i.i.1 = add nuw nsw i64 %indvars.iv.i40.i.i, 2 ; 2 uses
  %gep.i41.i.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i.1
  %i.bkf = load float, ptr %gep.i41.i.i.2, align 4, !tbaa !39
  %i.bkg = load float, ptr %i.atb, align 4, !tbaa !114
  %i.bkh = fmul nsz float %i.bkf, %i.bkg
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.next.i42.i.i.1
  store float %i.bkh, ptr %i.bki, align 4, !tbaa !39
  %indvars.iv.next.i42.i.i.2 = add nuw nsw i64 %indvars.iv.i40.i.i, 3 ; 2 uses
  %gep.i41.i.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i.2
  %i.bkj = load float, ptr %gep.i41.i.i.3, align 4, !tbaa !39
  %i.bkk = load float, ptr %i.atb, align 4, !tbaa !114
  %i.bkl = fmul nsz float %i.bkj, %i.bkk
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.next.i42.i.i.2
  store float %i.bkl, ptr %i.bkm, align 4, !tbaa !39
  %indvars.iv.next.i42.i.i.3 = add nuw nsw i64 %indvars.iv.i40.i.i, 4 ; 2 uses
  %exitcond.not.i43.i.i.3 = icmp eq i64 %indvars.iv.next.i42.i.i.3, %wide.trip.count.i38.i.i
  br i1 %exitcond.not.i43.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph401, !llvm.loop !143

._crit_edge.i.i.i:                                ; preds = %scalar.ph401.prol.loopexit, %scalar.ph401, %middle.block412
  %i.bkn = add i32 %i.bgi, 8
  %i.bko = call i32 @llvm.umin.i32(i32 %i.ayw, i32 %i.bkn)
  store i32 %i.bko, ptr %i.at, align 8, !tbaa !56
  br label %synth_block_fcb_acb.exit.i.i

bb.dl:                                            ; preds = %bb.cg
  %i.bkp = load i8, ptr %i.asp, align 1, !tbaa !107
  %i.bkq = zext i8 %i.bkp to i32                  ; 2 uses
  %i.bkr = sub nsw i32 5, %i.bkq                  ; 10 uses
  store i32 -1, ptr %i.afs, align 4, !tbaa !127
  %i.bks = load ptr, ptr %.0114, align 8, !tbaa !53 ; 15 uses
  %i.bkt = load i32, ptr %i.ay, align 8, !tbaa !55 ; 15 uses
  %i.bku = add nuw nsw i32 %i.bkq, 27             ; 10 uses
  %.promoted.i.i.i = load i32, ptr %i.at, align 8, !tbaa !56 ; 4 uses
  %i.bkv = lshr i32 %.promoted.i.i.i, 3
  %i.bkw = zext nneg i32 %i.bkv to i64
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bkw
  %i.bky = load i8, ptr %i.bkx, align 1, !tbaa !32
  %i.bkz = icmp slt i32 %.promoted.i.i.i, %i.bkt
  %i.bla = zext i1 %i.bkz to i32
  %spec.select.i121.i.i.i = add i32 %.promoted.i.i.i, %i.bla ; 4 uses
  %i.blb = zext i8 %i.bky to i32
  %i.blc = and i32 %.promoted.i.i.i, 7
  store i32 %spec.select.i121.i.i.i, ptr %i.at, align 8, !tbaa !56
  %i.bld = lshr exact i32 128, %i.blc
  %i.ble = and i32 %i.bld, %i.blb
  %.not.i32.i.i = icmp eq i32 %i.ble, 0
  %i.blf = select i1 %.not.i32.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.blg = lshr i32 %spec.select.i121.i.i.i, 3
  %i.blh = zext nneg i32 %i.blg to i64
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.blh
  %i.blj = load i32, ptr %i.bli, align 1, !tbaa !32
  %i.blk = call i32 @llvm.bswap.i32(i32 %i.blj)
  %i.bll = and i32 %spec.select.i121.i.i.i, 7
  %i.blm = shl i32 %i.blk, %i.bll
  %i.bln = lshr i32 %i.blm, %i.bku                ; 2 uses
  %i.blo = add i32 %spec.select.i121.i.i.i, %i.bkr
  %i.blp = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.blo) ; 5 uses
  store i32 %i.blp, ptr %i.at, align 8, !tbaa !56
  %i.blq = mul nuw nsw i32 %i.bln, 5
  store i32 %i.blq, ptr %i.aft, align 4, !tbaa !61
  store i32 1, ptr %3, align 4, !tbaa !128
  store float %i.blf, ptr %i.afu, align 4, !tbaa !39
  br i1 %.not160.i.i.not.i, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.blr = lshr i32 %i.blp, 3
  %i.bls = zext nneg i32 %i.blr to i64
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bls
  %i.blu = load i32, ptr %i.blt, align 1, !tbaa !32
  %i.blv = call i32 @llvm.bswap.i32(i32 %i.blu)
  %i.blw = and i32 %i.blp, 7
  %i.blx = shl i32 %i.blv, %i.blw
  %i.bly = lshr i32 %i.blx, %i.bku                ; 2 uses
  %i.blz = add i32 %i.blp, %i.bkr
  %i.bma = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.blz) ; 2 uses
  store i32 %i.bma, ptr %i.at, align 8, !tbaa !56
  %i.bmb = mul nuw nsw i32 %i.bly, 5
  store i32 %i.bmb, ptr %i.afv, align 4, !tbaa !61
  %i.bmc = icmp samesign ult i32 %i.bln, %i.bly
  %i.bmd = fneg nsz float %i.blf
  %i.bme = select nsz i1 %i.bmc, float %i.bmd, float %i.blf
  store i32 2, ptr %3, align 4, !tbaa !128
  store float %i.bme, ptr %i.afw, align 4, !tbaa !39
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.bmf = phi i32 [ 2, %bb.dm ], [ 1, %bb.dl ]   ; 3 uses
  %i.bmg = phi i32 [ %i.bma, %bb.dm ], [ %i.blp, %bb.dl ] ; 4 uses
  %i.bmh = lshr i32 %i.bmg, 3
  %i.bmi = zext nneg i32 %i.bmh to i64
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bmi
  %i.bmk = load i8, ptr %i.bmj, align 1, !tbaa !32
  %i.bml = icmp slt i32 %i.bmg, %i.bkt
  %i.bmm = zext i1 %i.bml to i32
  %spec.select.i121.1.i.i.i = add i32 %i.bmg, %i.bmm ; 4 uses
  %i.bmn = zext i8 %i.bmk to i32
  %i.bmo = and i32 %i.bmg, 7
  store i32 %spec.select.i121.1.i.i.i, ptr %i.at, align 8, !tbaa !56
  %i.bmp = lshr exact i32 128, %i.bmo
  %i.bmq = and i32 %i.bmp, %i.bmn
  %.not.1.i.i.i = icmp eq i32 %i.bmq, 0
  %i.bmr = select i1 %.not.1.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bms = lshr i32 %spec.select.i121.1.i.i.i, 3
  %i.bmt = zext nneg i32 %i.bms to i64
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bmt
  %i.bmv = load i32, ptr %i.bmu, align 1, !tbaa !32
  %i.bmw = call i32 @llvm.bswap.i32(i32 %i.bmv)
  %i.bmx = and i32 %spec.select.i121.1.i.i.i, 7
  %i.bmy = shl i32 %i.bmw, %i.bmx
  %i.bmz = lshr i32 %i.bmy, %i.bku                ; 2 uses
  %i.bna = add i32 %spec.select.i121.1.i.i.i, %i.bkr
  %i.bnb = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bna) ; 5 uses
  store i32 %i.bnb, ptr %i.at, align 8, !tbaa !56
  %i.bnc = mul nuw nsw i32 %i.bmz, 5
  %i.bnd = add nuw nsw i32 %i.bnc, 1
  %i.bne = zext nneg i32 %i.bmf to i64            ; 2 uses
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bne
  store i32 %i.bnd, ptr %i.bnf, align 4, !tbaa !61
  %i.bng = add nuw nsw i32 %i.bmf, 1              ; 3 uses
  store i32 %i.bng, ptr %3, align 4, !tbaa !128
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.bne
  store float %i.bmr, ptr %i.bnh, align 4, !tbaa !39
  br i1 %.not183.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.bni = lshr i32 %i.bnb, 3
  %i.bnj = zext nneg i32 %i.bni to i64
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bnj
  %i.bnl = load i32, ptr %i.bnk, align 1, !tbaa !32
  %i.bnm = call i32 @llvm.bswap.i32(i32 %i.bnl)
  %i.bnn = and i32 %i.bnb, 7
  %i.bno = shl i32 %i.bnm, %i.bnn
  %i.bnp = lshr i32 %i.bno, %i.bku                ; 2 uses
  %i.bnq = add i32 %i.bnb, %i.bkr
  %i.bnr = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bnq) ; 2 uses
  store i32 %i.bnr, ptr %i.at, align 8, !tbaa !56
  %i.bns = mul nuw nsw i32 %i.bnp, 5
  %i.bnt = add nuw nsw i32 %i.bns, 1
  %i.bnu = zext nneg i32 %i.bng to i64            ; 2 uses
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bnu
  store i32 %i.bnt, ptr %i.bnv, align 4, !tbaa !61
  %i.bnw = icmp samesign ult i32 %i.bmz, %i.bnp
  %i.bnx = fneg nsz float %i.bmr
  %i.bny = select nsz i1 %i.bnw, float %i.bnx, float %i.bmr
  %i.bnz = add nuw nsw i32 %i.bmf, 2              ; 2 uses
  store i32 %i.bnz, ptr %3, align 4, !tbaa !128
  %i.boa = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.bnu
  store float %i.bny, ptr %i.boa, align 4, !tbaa !39
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.bob = phi i32 [ %i.bnz, %bb.do ], [ %i.bng, %bb.dn ] ; 3 uses
  %i.boc = phi i32 [ %i.bnr, %bb.do ], [ %i.bnb, %bb.dn ] ; 4 uses
  %i.bod = lshr i32 %i.boc, 3
  %i.boe = zext nneg i32 %i.bod to i64
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.boe
  %i.bog = load i8, ptr %i.bof, align 1, !tbaa !32
  %i.boh = icmp slt i32 %i.boc, %i.bkt
  %i.boi = zext i1 %i.boh to i32
  %spec.select.i121.2.i.i.i = add i32 %i.boc, %i.boi ; 4 uses
  %i.boj = zext i8 %i.bog to i32
  %i.bok = and i32 %i.boc, 7
  store i32 %spec.select.i121.2.i.i.i, ptr %i.at, align 8, !tbaa !56
  %i.bol = lshr exact i32 128, %i.bok
  %i.bom = and i32 %i.bol, %i.boj
  %.not.2.i.i.i = icmp eq i32 %i.bom, 0
  %i.bon = select i1 %.not.2.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.boo = lshr i32 %spec.select.i121.2.i.i.i, 3
  %i.bop = zext nneg i32 %i.boo to i64
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bop
  %i.bor = load i32, ptr %i.boq, align 1, !tbaa !32
  %i.bos = call i32 @llvm.bswap.i32(i32 %i.bor)
  %i.bot = and i32 %spec.select.i121.2.i.i.i, 7
  %i.bou = shl i32 %i.bos, %i.bot
  %i.bov = lshr i32 %i.bou, %i.bku                ; 2 uses
  %i.bow = add i32 %spec.select.i121.2.i.i.i, %i.bkr
  %i.box = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bow) ; 5 uses
end_hunk_1
begin_hunk_2_@synth_superframe:bb.a
  %i.bpc = add nuw nsw i32 %i.bob, 1              ; 3 uses
  store i32 %i.bpc, ptr %3, align 4, !tbaa !128
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.bpa
  store float %i.bon, ptr %i.bpd, align 4, !tbaa !39
  br i1 %.not184.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bpe = lshr i32 %i.box, 3
  %i.bpf = zext nneg i32 %i.bpe to i64
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bpf
  %i.bph = load i32, ptr %i.bpg, align 1, !tbaa !32
  %i.bpi = call i32 @llvm.bswap.i32(i32 %i.bph)
  %i.bpj = and i32 %i.box, 7
  %i.bpk = shl i32 %i.bpi, %i.bpj
  %i.bpl = lshr i32 %i.bpk, %i.bku                ; 2 uses
  %i.bpm = add i32 %i.box, %i.bkr
  %i.bpn = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bpm) ; 2 uses
  store i32 %i.bpn, ptr %i.at, align 8, !tbaa !56
  %i.bpo = mul nuw nsw i32 %i.bpl, 5
  %i.bpp = add nuw nsw i32 %i.bpo, 2
  %i.bpq = zext nneg i32 %i.bpc to i64            ; 2 uses
  %i.bpr = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bpq
  store i32 %i.bpp, ptr %i.bpr, align 4, !tbaa !61
  %i.bps = icmp samesign ult i32 %i.bov, %i.bpl
  %i.bpt = fneg nsz float %i.bon
  %i.bpu = select nsz i1 %i.bps, float %i.bpt, float %i.bon
  %i.bpv = add nuw nsw i32 %i.bob, 2              ; 2 uses
  store i32 %i.bpv, ptr %3, align 4, !tbaa !128
  %i.bpw = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.bpq
  store float %i.bpu, ptr %i.bpw, align 4, !tbaa !39
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.bpx = phi i32 [ %i.bpv, %bb.dq ], [ %i.bpc, %bb.dp ] ; 3 uses
  %i.bpy = phi i32 [ %i.bpn, %bb.dq ], [ %i.box, %bb.dp ] ; 4 uses
  %i.bpz = lshr i32 %i.bpy, 3
  %i.bqa = zext nneg i32 %i.bpz to i64
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bqa
  %i.bqc = load i8, ptr %i.bqb, align 1, !tbaa !32
  %i.bqd = icmp slt i32 %i.bpy, %i.bkt
  %i.bqe = zext i1 %i.bqd to i32
  %spec.select.i121.3.i.i.i = add i32 %i.bpy, %i.bqe ; 4 uses
  %i.bqf = zext i8 %i.bqc to i32
  %i.bqg = and i32 %i.bpy, 7
  store i32 %spec.select.i121.3.i.i.i, ptr %i.at, align 8, !tbaa !56
  %i.bqh = lshr exact i32 128, %i.bqg
  %i.bqi = and i32 %i.bqh, %i.bqf
  %.not.3.i.i.i = icmp eq i32 %i.bqi, 0
  %i.bqj = select i1 %.not.3.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bqk = lshr i32 %spec.select.i121.3.i.i.i, 3
  %i.bql = zext nneg i32 %i.bqk to i64
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bql
  %i.bqn = load i32, ptr %i.bqm, align 1, !tbaa !32
  %i.bqo = call i32 @llvm.bswap.i32(i32 %i.bqn)
  %i.bqp = and i32 %spec.select.i121.3.i.i.i, 7
  %i.bqq = shl i32 %i.bqo, %i.bqp
  %i.bqr = lshr i32 %i.bqq, %i.bku                ; 2 uses
  %i.bqs = add i32 %spec.select.i121.3.i.i.i, %i.bkr
  %i.bqt = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bqs) ; 5 uses
  store i32 %i.bqt, ptr %i.at, align 8, !tbaa !56
  %i.bqu = mul nuw nsw i32 %i.bqr, 5
  %i.bqv = add nuw nsw i32 %i.bqu, 3
  %i.bqw = zext nneg i32 %i.bpx to i64            ; 2 uses
  %i.bqx = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bqw
  store i32 %i.bqv, ptr %i.bqx, align 4, !tbaa !61
  %i.bqy = add nuw nsw i32 %i.bpx, 1              ; 3 uses
  store i32 %i.bqy, ptr %3, align 4, !tbaa !128
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.bqw
  store float %i.bqj, ptr %i.bqz, align 4, !tbaa !39
  br i1 %.not184.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.bra = lshr i32 %i.bqt, 3
  %i.brb = zext nneg i32 %i.bra to i64
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.brb
  %i.brd = load i32, ptr %i.brc, align 1, !tbaa !32
  %i.bre = call i32 @llvm.bswap.i32(i32 %i.brd)
  %i.brf = and i32 %i.bqt, 7
  %i.brg = shl i32 %i.bre, %i.brf
  %i.brh = lshr i32 %i.brg, %i.bku                ; 2 uses
  %i.bri = add i32 %i.bqt, %i.bkr
  %i.brj = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bri) ; 2 uses
  store i32 %i.brj, ptr %i.at, align 8, !tbaa !56
  %i.brk = mul nuw nsw i32 %i.brh, 5
  %i.brl = add nuw nsw i32 %i.brk, 3
  %i.brm = zext nneg i32 %i.bqy to i64            ; 2 uses
  %i.brn = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.brm
  store i32 %i.brl, ptr %i.brn, align 4, !tbaa !61
  %i.bro = icmp samesign ult i32 %i.bqr, %i.brh
  %i.brp = fneg nsz float %i.bqj
  %i.brq = select nsz i1 %i.bro, float %i.brp, float %i.bqj
  %i.brr = add nuw nsw i32 %i.bpx, 2              ; 2 uses
  store i32 %i.brr, ptr %3, align 4, !tbaa !128
  %i.brs = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.brm
  store float %i.brq, ptr %i.brs, align 4, !tbaa !39
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.brt = phi i32 [ %i.brr, %bb.ds ], [ %i.bqy, %bb.dr ] ; 3 uses
  %i.bru = phi i32 [ %i.brj, %bb.ds ], [ %i.bqt, %bb.dr ] ; 4 uses
  %i.brv = lshr i32 %i.bru, 3
  %i.brw = zext nneg i32 %i.brv to i64
  %i.brx = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.brw
  %i.bry = load i8, ptr %i.brx, align 1, !tbaa !32
  %i.brz = icmp slt i32 %i.bru, %i.bkt
  %i.bsa = zext i1 %i.brz to i32
  %spec.select.i121.4.i.i.i = add i32 %i.bru, %i.bsa ; 4 uses
  %i.bsb = zext i8 %i.bry to i32
  %i.bsc = and i32 %i.bru, 7
  store i32 %spec.select.i121.4.i.i.i, ptr %i.at, align 8, !tbaa !56
  %i.bsd = lshr exact i32 128, %i.bsc
  %i.bse = and i32 %i.bsd, %i.bsb
  %.not.4.i.i.i = icmp eq i32 %i.bse, 0
  %i.bsf = select i1 %.not.4.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bsg = lshr i32 %spec.select.i121.4.i.i.i, 3
  %i.bsh = zext nneg i32 %i.bsg to i64
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bsh
  %i.bsj = load i32, ptr %i.bsi, align 1, !tbaa !32
  %i.bsk = call i32 @llvm.bswap.i32(i32 %i.bsj)
  %i.bsl = and i32 %spec.select.i121.4.i.i.i, 7
  %i.bsm = shl i32 %i.bsk, %i.bsl
  %i.bsn = lshr i32 %i.bsm, %i.bku                ; 2 uses
  %i.bso = add i32 %spec.select.i121.4.i.i.i, %i.bkr
  %i.bsp = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bso) ; 4 uses
  store i32 %i.bsp, ptr %i.at, align 8, !tbaa !56
  %i.bsq = mul nuw nsw i32 %i.bsn, 5
  %i.bsr = add nuw nsw i32 %i.bsq, 4
  %i.bss = zext nneg i32 %i.brt to i64
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bss
  store i32 %i.bsr, ptr %i.bst, align 4, !tbaa !61
  %i.bsu = add nuw nsw i32 %i.brt, 1              ; 2 uses
  store i32 %i.bsu, ptr %3, align 4, !tbaa !128
  %i.bsv = zext nneg i32 %i.brt to i64
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.bsv
  store float %i.bsf, ptr %i.bsw, align 4, !tbaa !39
  br i1 %.not184.i, label %.loopexit124.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bsx = lshr i32 %i.bsp, 3
  %i.bsy = zext nneg i32 %i.bsx to i64
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bsy
  %i.bta = load i32, ptr %i.bsz, align 1, !tbaa !32
  %i.btb = call i32 @llvm.bswap.i32(i32 %i.bta)
  %i.btc = and i32 %i.bsp, 7
  %i.btd = shl i32 %i.btb, %i.btc
  %i.bte = lshr i32 %i.btd, %i.bku                ; 2 uses
  %i.btf = add i32 %i.bsp, %i.bkr
  %i.btg = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.btf)
  store i32 %i.btg, ptr %i.at, align 8, !tbaa !56
  %i.bth = mul nuw nsw i32 %i.bte, 5
  %i.bti = add nuw nsw i32 %i.bth, 4
  %i.btj = zext nneg i32 %i.bsu to i64
  %i.btk = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.btj
  store i32 %i.bti, ptr %i.btk, align 4, !tbaa !61
  %i.btl = icmp samesign ult i32 %i.bsn, %i.bte
  %i.btm = fneg nsz float %i.bsf
  %i.btn = select nsz i1 %i.btl, float %i.btm, float %i.bsf
  %i.bto = load i32, ptr %3, align 4, !tbaa !128  ; 2 uses
  %i.btp = add nsw i32 %i.bto, 1
  store i32 %i.btp, ptr %3, align 4, !tbaa !128
  %i.btq = sext i32 %i.bto to i64
  %i.btr = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.btq
  store float %i.btn, ptr %i.btr, align 4, !tbaa !39
  br label %.loopexit124.i.i.i

.loopexit124.i.i.i:                               ; preds = %bb.du, %bb.dt, %aw_pulse_set2.exit.thread.i.i.i
  call void @ff_set_fixed_vector(ptr noundef nonnull %i.b, ptr noundef nonnull %3, float noundef 1.000000e+00, i32 noundef range(i32 0, 161) %.zext.i) #12
  %i.bts = load i32, ptr %i.at, align 8, !tbaa !56 ; 3 uses
  %i.btt = load i32, ptr %i.ay, align 8, !tbaa !55
  %i.btu = load ptr, ptr %.0114, align 8, !tbaa !53
  %i.btv = lshr i32 %i.bts, 3
  %i.btw = zext nneg i32 %i.btv to i64
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btu, i64 %i.btw
  %i.bty = load i32, ptr %i.btx, align 1, !tbaa !32
  %i.btz = call i32 @llvm.bswap.i32(i32 %i.bty)
  %i.bua = and i32 %i.bts, 7
  %i.bub = shl i32 %i.btz, %i.bua
  %i.buc = lshr i32 %i.bub, 25
  %i.bud = add i32 %i.bts, 7
  %i.bue = call i32 @llvm.umin.i32(i32 %i.btt, i32 %i.bud)
  store i32 %i.bue, ptr %i.at, align 8, !tbaa !56
  %i.buf = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.atc, ptr noundef nonnull @synth_block_fcb_acb.gain_coeff, i32 noundef 6) #12
  %i.bug = zext nneg i32 %i.buc to i64            ; 2 uses
  %i.buh = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_gain_codebook_fcb, i64 %i.bug
  %i.bui = load float, ptr %i.buh, align 4, !tbaa !39 ; 3 uses
  %i.buj = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_gain_codebook_acb, i64 %i.bug
  %i.buk = load float, ptr %i.buj, align 4, !tbaa !39
  %i.bul = fcmp nsz ogt float %i.bui, f0xC03FBA14
  %i.bum = select nsz i1 %i.bul, float %i.bui, float f0xC03FBA14 ; 2 uses
  %i.bun = fcmp nsz ogt float %i.bum, f0x3FCE0210
  %..i113.i.i.i = select nsz i1 %i.bun, float f0x3FCE0210, float %i.bum ; 2 uses
  %i.buo = load i8, ptr %i.asp, align 1, !tbaa !107
  %i.bup = zext nneg i8 %i.buo to i32
  %i.buq = lshr i32 8, %i.bup                     ; 2 uses
  %i.bur = zext nneg i32 %i.buq to i64            ; 4 uses
  %i.bus = getelementptr inbounds nuw [4 x i8], ptr %i.atc, i64 %i.bur
  %i.but = sub nsw i32 6, %i.buq
  %i.buu = sext i32 %i.but to i64
  %i.buv = shl nsw i64 %i.buu, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bus, ptr nonnull align 4 %i.atc, i64 %i.buv, i1 false)
  br i1 %lcmp.mod527.not, label %vector.ph417, label %.lr.ph132.i.i.i.preheader

vector.ph417:                                     ; preds = %.loopexit124.i.i.i
  %n.vec418 = and i64 %i.bur, 12                  ; 3 uses
  %broadcast.splatinsert419 = insertelement <4 x float> poison, float %..i113.i.i.i, i64 0
  %broadcast.splat420 = shufflevector <4 x float> %broadcast.splatinsert419, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph417
  %index422 = phi i64 [ 0, %vector.ph417 ], [ %index.next423, %vector.body421 ] ; 2 uses
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr %i.atc, i64 %index422
  store <4 x float> %broadcast.splat420, ptr %i.buw, align 4, !tbaa !39
  %index.next423 = add nuw i64 %index422, 4       ; 2 uses
  %i.bux = icmp eq i64 %index.next423, %n.vec418
  br i1 %i.bux, label %middle.block424, label %vector.body421, !llvm.loop !144

middle.block424:                                  ; preds = %vector.body421
  %cmp.n425 = icmp eq i64 %n.vec418, %i.bur
  br i1 %cmp.n425, label %._crit_edge133.i.i.i, label %.lr.ph132.i.i.i.preheader

.lr.ph132.i.i.i.preheader:                        ; preds = %.loopexit124.i.i.i, %middle.block424
  %indvars.iv143.i.i.i.ph = phi i64 [ 0, %.loopexit124.i.i.i ], [ %n.vec418, %middle.block424 ]
  br label %.lr.ph132.i.i.i

.lr.ph132.i.i.i:                                  ; preds = %.lr.ph132.i.i.i.preheader, %.lr.ph132.i.i.i
  %indvars.iv143.i.i.i = phi i64 [ %indvars.iv.next144.i.i.i, %.lr.ph132.i.i.i ], [ %indvars.iv143.i.i.i.ph, %.lr.ph132.i.i.i.preheader ] ; 2 uses
  %i.buy = getelementptr inbounds nuw [4 x i8], ptr %i.atc, i64 %indvars.iv143.i.i.i
  store float %..i113.i.i.i, ptr %i.buy, align 4, !tbaa !39
  %indvars.iv.next144.i.i.i = add nuw nsw i64 %indvars.iv143.i.i.i, 1 ; 2 uses
  %exitcond147.not.i.i.i = icmp eq i64 %indvars.iv.next144.i.i.i, %i.bur
  br i1 %exitcond147.not.i.i.i, label %._crit_edge133.i.i.i, label %.lr.ph132.i.i.i, !llvm.loop !145

._crit_edge133.i.i.i:                             ; preds = %.lr.ph132.i.i.i, %middle.block424
  %i.buz = fpext nsz float %i.buf to double
  %i.bva = fadd nsz double %i.buz, f0xC014F6B2BA15D4C2
  %i.bvb = fpext nsz float %i.bui to double
  %i.bvc = fadd nsz double %i.bva, %i.bvb
  %i.bvd = fptrunc nsz double %i.bvc to float
  %i.bve = call nsz float @llvm.exp.f32(float %i.bvd)
  br i1 %i.amt, label %.lr.ph135.i.i.i, label %bb.dx

.lr.ph135.i.i.i:                                  ; preds = %._crit_edge133.i.i.i, %bb.dw
  %.3134.i.i.i = phi i32 [ %i.bwe, %bb.dw ], [ 0, %._crit_edge133.i.i.i ] ; 5 uses
  %i.bvf = add nsw i32 %.3134.i.i.i, %i.ayp
  %i.bvg = load i32, ptr %i.atd, align 16, !tbaa !109
  %i.bvh = shl i32 %i.bvg, 16
  %i.bvi = load i32, ptr %i.ate, align 8, !tbaa !112 ; 4 uses
  %i.bvj = mul nsw i32 %i.bvi, %i.bvf
  %i.bvk = add nsw i32 %i.bvj, %i.bvh             ; 2 uses
  %i.bvl = add nsw i32 %i.bvk, 28671              ; 2 uses
  %i.bvm = ashr i32 %i.bvl, 16
  %i.bvn = and i32 %i.bvl, -65536
  %i.bvo = sub nsw i32 %i.bvn, %i.bvk
  %i.bvp = shl nsw i32 %i.bvo, 3                  ; 2 uses
  %i.bvq = add nsw i32 %i.bvp, 360448             ; 3 uses
  %i.bvr = ashr i32 %i.bvq, 16
  %.not112.i.i.i = icmp eq i32 %i.bvi, 0
  br i1 %.not112.i.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph135.i.i.i
  %i.bvs = icmp sgt i32 %i.bvi, 0
  %i.bvt = add nsw i32 %i.bvp, 425984
  %.0.in.i.i.i = select i1 %i.bvs, i32 %i.bvq, i32 %i.bvt
  %.0.i33.i.i = and i32 %.0.in.i.i.i, -65536
  %i.bvu = sub nsw i32 %i.bvq, %.0.i33.i.i
  %i.bvv = sdiv i32 %i.bvu, %i.bvi                ; 2 uses
  %i.bvw = sdiv i32 %i.bvv, 8
  %i.bvx = sub nsw i32 %.zext.i, %.3134.i.i.i
  %i.bvy = icmp slt i32 %i.bvv, 8
  %..i.i.i.i = call i32 @llvm.smin.i32(i32 %i.bvw, i32 %i.bvx)
  %.0.i.i.i.i = select i1 %i.bvy, i32 1, i32 %..i.i.i.i
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph135.i.i.i
  %.0105.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.dv ], [ %.zext.i, %.lr.ph135.i.i.i ] ; 2 uses
  %i.bvz = sext i32 %.3134.i.i.i to i64
  %i.bwa = getelementptr inbounds [4 x i8], ptr %i.ayq, i64 %i.bvz
  %i.bwb = sub nsw i32 %.3134.i.i.i, %i.bvm
  %i.bwc = sext i32 %i.bwb to i64
  %i.bwd = getelementptr inbounds [4 x i8], ptr %i.ayq, i64 %i.bwc
  call void @ff_acelp_interpolatef(ptr noundef nonnull %i.bwa, ptr noundef nonnull %i.bwd, ptr noundef nonnull @wmavoice_ipol1_coeffs, i32 noundef 17, i32 noundef %i.bvr, i32 noundef 9, i32 noundef %.0105.i.i.i) #12
  %i.bwe = add nsw i32 %.0105.i.i.i, %.3134.i.i.i ; 2 uses
  %i.bwf = icmp slt i32 %i.bwe, %.zext.i
  br i1 %i.bwf, label %.lr.ph135.i.i.i, label %.loopexit.i.i.i, !llvm.loop !146

bb.dx:                                            ; preds = %._crit_edge133.i.i.i
  %i.bwg = and i32 %.1182255.i, 3                 ; 2 uses
  %.not111.i.i.i = icmp eq i32 %i.bwg, 0
  br i1 %.not111.i.i.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bwh = sub nsw i32 0, %i.ays
  %i.bwi = sext i32 %i.bwh to i64
  %i.bwj = getelementptr inbounds [4 x i8], ptr %i.ayq, i64 %i.bwi
  call void @ff_acelp_interpolatef(ptr noundef nonnull %i.ayq, ptr noundef nonnull %i.bwj, ptr noundef nonnull @wmavoice_ipol2_coeffs, i32 noundef 4, i32 noundef %i.bwg, i32 noundef 8, i32 noundef range(i32 0, 161) %.zext.i) #12
  br label %.loopexit.i.i.i

bb.dz:                                            ; preds = %bb.dx
  call void @av_memcpy_backptr(ptr noundef nonnull %i.ayq, i32 noundef %.1182255.i, i32 noundef %i.asm) #12
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.dw, %bb.dz, %bb.dy
  call void @ff_weighted_vector_sumf(ptr noundef nonnull %i.ayq, ptr noundef nonnull %i.ayq, ptr noundef nonnull %i.b, float noundef %i.buk, float noundef %i.bve, i32 noundef range(i32 0, 161) %.zext.i) #12
  br label %synth_block_fcb_acb.exit.i.i

synth_block_fcb_acb.exit.i.i:                     ; preds = %.loopexit.i.i.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %synth_block_hardcoded.exit.i.i

synth_block_hardcoded.exit.i.i:                   ; preds = %.lr.ph.i.i.i, %middle.block397, %synth_block_fcb_acb.exit.i.i
  %i.bwk = phi ptr [ %i.ayr, %synth_block_fcb_acb.exit.i.i ], [ %i.awc, %middle.block397 ], [ %i.awc, %.lr.ph.i.i.i ]
  %i.bwl = phi ptr [ %i.ayq, %synth_block_fcb_acb.exit.i.i ], [ %i.awb, %middle.block397 ], [ %i.awb, %.lr.ph.i.i.i ]
  %.1153180.i = phi i32 [ %.1153181256.i, %synth_block_fcb_acb.exit.i.i ], [ %.0152200.i, %middle.block397 ], [ %.0152200.i, %.lr.ph.i.i.i ]
  %i.bwm = load i32, ptr %i.atf, align 4, !tbaa !47 ; 4 uses
  %i.bwn = icmp sgt i32 %i.bwm, 0
  br i1 %i.bwn, label %.lr.ph.i177.i, label %synth_block.exit.i

.lr.ph.i177.i:                                    ; preds = %synth_block_hardcoded.exit.i.i
  %i.bwo = uitofp nneg i32 %indvars216.i to double
  %i.bwp = fadd nsz double %i.bwo, 5.000000e-01
  %i.bwq = fdiv nsz double %i.bwp, %i.atg
  %i.bwr = fptrunc nsz double %i.bwq to float
  %i.bws = fpext nsz float %i.bwr to double       ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bwm to i64 ; 5 uses
  %min.iters.check375 = icmp eq i32 %i.bwm, 1
  %or.cond = select i1 %min.iters.check375, i1 true, i1 %diff.check372
  br i1 %or.cond, label %scalar.ph374.preheader, label %vector.ph376

vector.ph376:                                     ; preds = %.lr.ph.i177.i
  %n.vec377 = and i64 %wide.trip.count.i.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bws, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph376
  %index379 = phi i64 [ 0, %vector.ph376 ], [ %index.next382, %vector.body378 ] ; 4 uses
  %i.bwt = getelementptr inbounds nuw [8 x i8], ptr %i.ajo, i64 %index379
  %wide.load380 = load <2 x double>, ptr %i.bwt, align 8, !tbaa !48 ; 2 uses
  %i.bwu = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %index379
  %wide.load381 = load <2 x double>, ptr %i.bwu, align 16, !tbaa !48
  %i.bwv = fsub nsz <2 x double> %wide.load381, %wide.load380
  %i.bww = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.bwv, <2 x double> %wide.load380)
  %i.bwx = call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.bww)
  %i.bwy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index379
  store <2 x double> %i.bwx, ptr %i.bwy, align 16, !tbaa !48
  %index.next382 = add nuw i64 %index379, 2       ; 2 uses
  %i.bwz = icmp eq i64 %index.next382, %n.vec377
  br i1 %i.bwz, label %middle.block383, label %vector.body378, !llvm.loop !147

middle.block383:                                  ; preds = %vector.body378
  %cmp.n384 = icmp eq i64 %n.vec377, %wide.trip.count.i.i
  br i1 %cmp.n384, label %synth_block.exit.i, label %scalar.ph374.preheader

scalar.ph374.preheader:                           ; preds = %.lr.ph.i177.i, %middle.block383
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i177.i ], [ %n.vec377, %middle.block383 ] ; 6 uses
  %xtraiter528 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod529.not, label %scalar.ph374.prol.loopexit, label %scalar.ph374.prol

scalar.ph374.prol:                                ; preds = %scalar.ph374.preheader
  %i.bxa = getelementptr inbounds nuw [8 x i8], ptr %i.ajo, i64 %indvars.iv.i.i.ph
  %i.bxb = load double, ptr %i.bxa, align 8, !tbaa !48 ; 2 uses
  %i.bxc = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %indvars.iv.i.i.ph
  %i.bxd = load double, ptr %i.bxc, align 16, !tbaa !48
  %i.bxe = fsub nsz double %i.bxd, %i.bxb
  %i.bxf = call nsz double @llvm.fmuladd.f64(double %i.bws, double %i.bxe, double %i.bxb)
  %i.bxg = call nsz double @llvm.cos.f64(double %i.bxf)
  %i.bxh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i.ph
  store double %i.bxg, ptr %i.bxh, align 16, !tbaa !48
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph374.prol.loopexit

scalar.ph374.prol.loopexit:                       ; preds = %scalar.ph374.prol, %scalar.ph374.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph374.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph374.prol ]
  %i.bxi = add nsw i64 %wide.trip.count.i.i, -1
  %i.bxj = icmp eq i64 %indvars.iv.i.i.ph, %i.bxi
  br i1 %i.bxj, label %synth_block.exit.i, label %scalar.ph374

scalar.ph374:                                     ; preds = %scalar.ph374.prol.loopexit, %scalar.ph374
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph374 ], [ %indvars.iv.i.i.unr, %scalar.ph374.prol.loopexit ] ; 5 uses
  %i.bxk = getelementptr inbounds nuw [8 x i8], ptr %i.ajo, i64 %indvars.iv.i.i
  %i.bxl = load double, ptr %i.bxk, align 8, !tbaa !48 ; 2 uses
  %i.bxm = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %indvars.iv.i.i
  %i.bxn = load double, ptr %i.bxm, align 8, !tbaa !48
  %i.bxo = fsub nsz double %i.bxn, %i.bxl
  %i.bxp = call nsz double @llvm.fmuladd.f64(double %i.bws, double %i.bxo, double %i.bxl)
  %i.bxq = call nsz double @llvm.cos.f64(double %i.bxp)
  %i.bxr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i
  store double %i.bxq, ptr %i.bxr, align 8, !tbaa !48
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.bxs = getelementptr inbounds nuw [8 x i8], ptr %i.ajo, i64 %indvars.iv.next.i.i
  %i.bxt = load double, ptr %i.bxs, align 8, !tbaa !48 ; 2 uses
  %i.bxu = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %indvars.iv.next.i.i
  %i.bxv = load double, ptr %i.bxu, align 8, !tbaa !48
  %i.bxw = fsub nsz double %i.bxv, %i.bxt
  %i.bxx = call nsz double @llvm.fmuladd.f64(double %i.bws, double %i.bxw, double %i.bxt)
  %i.bxy = call nsz double @llvm.cos.f64(double %i.bxx)
  %i.bxz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i
  store double %i.bxy, ptr %i.bxz, align 8, !tbaa !48
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
end_hunk_2
