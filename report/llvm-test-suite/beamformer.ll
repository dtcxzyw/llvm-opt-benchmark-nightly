inline.NumInlined: 22
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 71
begin_hunk_0_@begin_StrictFP:bb.a
  %i.amx = fadd <4 x float> %i.alr, %i.amw
  %i.amy = fmul <4 x float> %broadcast.splat276, %i.amu
  %i.amz = fmul <4 x float> %i.amh, %broadcast.splat278
  %i.ana = fadd <4 x float> %i.amz, %i.amy
  %i.anb = fadd <4 x float> %i.alv, %i.ana
  %i.anc = getelementptr inbounds nuw i8, ptr %i.aeh, i64 56
  %i.and = getelementptr inbounds nuw i8, ptr %i.aei, i64 152
  %i.ane = getelementptr inbounds nuw i8, ptr %i.aek, i64 248
  %i.anf = getelementptr inbounds nuw i8, ptr %i.aem, i64 344
  %i.ang = load float, ptr %i.anc, align 8, !tbaa !21
  %i.anh = load float, ptr %i.and, align 8, !tbaa !21
  %i.ani = load float, ptr %i.ane, align 8, !tbaa !21
  %i.anj = load float, ptr %i.anf, align 8, !tbaa !21
  %i.ank = insertelement <4 x float> poison, float %i.ang, i64 0
  %i.anl = insertelement <4 x float> %i.ank, float %i.anh, i64 1
  %i.anm = insertelement <4 x float> %i.anl, float %i.ani, i64 2
  %i.ann = insertelement <4 x float> %i.anm, float %i.anj, i64 3 ; 2 uses
  %i.ano = fmul <4 x float> %broadcast.splat280, %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %i.aeh, i64 60
  %i.anq = getelementptr inbounds nuw i8, ptr %i.aei, i64 156
  %i.anr = getelementptr inbounds nuw i8, ptr %i.aek, i64 252
  %i.ans = getelementptr inbounds nuw i8, ptr %i.aem, i64 348
  %i.ant = load float, ptr %i.anp, align 4, !tbaa !21
  %i.anu = load float, ptr %i.anq, align 4, !tbaa !21
  %i.anv = load float, ptr %i.anr, align 4, !tbaa !21
  %i.anw = load float, ptr %i.ans, align 4, !tbaa !21
  %i.anx = insertelement <4 x float> poison, float %i.ant, i64 0
  %i.any = insertelement <4 x float> %i.anx, float %i.anu, i64 1
  %i.anz = insertelement <4 x float> %i.any, float %i.anv, i64 2
  %i.aoa = insertelement <4 x float> %i.anz, float %i.anw, i64 3 ; 2 uses
  %i.aob = fmul <4 x float> %broadcast.splat282, %i.aoa
  %i.aoc = fsub <4 x float> %i.ano, %i.aob
  %i.aod = fadd <4 x float> %i.amx, %i.aoc
  %i.aoe = fmul <4 x float> %broadcast.splat280, %i.aoa
  %i.aof = fmul <4 x float> %i.ann, %broadcast.splat282
  %i.aog = fadd <4 x float> %i.aof, %i.aoe
  %i.aoh = fadd <4 x float> %i.anb, %i.aog
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aeh, i64 64
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aei, i64 160
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aek, i64 256
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aem, i64 352
  %i.aom = load float, ptr %i.aoi, align 16, !tbaa !21
  %i.aon = load float, ptr %i.aoj, align 16, !tbaa !21
  %i.aoo = load float, ptr %i.aok, align 16, !tbaa !21
  %i.aop = load float, ptr %i.aol, align 16, !tbaa !21
  %i.aoq = insertelement <4 x float> poison, float %i.aom, i64 0
  %i.aor = insertelement <4 x float> %i.aoq, float %i.aon, i64 1
  %i.aos = insertelement <4 x float> %i.aor, float %i.aoo, i64 2
  %i.aot = insertelement <4 x float> %i.aos, float %i.aop, i64 3 ; 2 uses
  %i.aou = fmul <4 x float> %broadcast.splat284, %i.aot
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aeh, i64 68
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aei, i64 164
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aek, i64 260
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aem, i64 356
  %i.aoz = load float, ptr %i.aov, align 4, !tbaa !21
  %i.apa = load float, ptr %i.aow, align 4, !tbaa !21
  %i.apb = load float, ptr %i.aox, align 4, !tbaa !21
  %i.apc = load float, ptr %i.aoy, align 4, !tbaa !21
  %i.apd = insertelement <4 x float> poison, float %i.aoz, i64 0
  %i.ape = insertelement <4 x float> %i.apd, float %i.apa, i64 1
  %i.apf = insertelement <4 x float> %i.ape, float %i.apb, i64 2
  %i.apg = insertelement <4 x float> %i.apf, float %i.apc, i64 3 ; 2 uses
  %i.aph = fmul <4 x float> %broadcast.splat286, %i.apg
  %i.api = fsub <4 x float> %i.aou, %i.aph
  %i.apj = fadd <4 x float> %i.aod, %i.api
  %i.apk = fmul <4 x float> %broadcast.splat284, %i.apg
  %i.apl = fmul <4 x float> %i.aot, %broadcast.splat286
  %i.apm = fadd <4 x float> %i.apl, %i.apk
  %i.apn = fadd <4 x float> %i.aoh, %i.apm
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 72
  %i.app = getelementptr inbounds nuw i8, ptr %i.aei, i64 168
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aek, i64 264
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aem, i64 360
  %i.aps = load float, ptr %i.apo, align 8, !tbaa !21
  %i.apt = load float, ptr %i.app, align 8, !tbaa !21
  %i.apu = load float, ptr %i.apq, align 8, !tbaa !21
  %i.apv = load float, ptr %i.apr, align 8, !tbaa !21
  %i.apw = insertelement <4 x float> poison, float %i.aps, i64 0
  %i.apx = insertelement <4 x float> %i.apw, float %i.apt, i64 1
  %i.apy = insertelement <4 x float> %i.apx, float %i.apu, i64 2
  %i.apz = insertelement <4 x float> %i.apy, float %i.apv, i64 3 ; 2 uses
  %i.aqa = fmul <4 x float> %broadcast.splat288, %i.apz
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aeh, i64 76
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aei, i64 172
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aek, i64 268
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aem, i64 364
  %i.aqf = load float, ptr %i.aqb, align 4, !tbaa !21
  %i.aqg = load float, ptr %i.aqc, align 4, !tbaa !21
  %i.aqh = load float, ptr %i.aqd, align 4, !tbaa !21
  %i.aqi = load float, ptr %i.aqe, align 4, !tbaa !21
  %i.aqj = insertelement <4 x float> poison, float %i.aqf, i64 0
  %i.aqk = insertelement <4 x float> %i.aqj, float %i.aqg, i64 1
  %i.aql = insertelement <4 x float> %i.aqk, float %i.aqh, i64 2
  %i.aqm = insertelement <4 x float> %i.aql, float %i.aqi, i64 3 ; 2 uses
  %i.aqn = fmul <4 x float> %broadcast.splat290, %i.aqm
  %i.aqo = fsub <4 x float> %i.aqa, %i.aqn
  %i.aqp = fadd <4 x float> %i.apj, %i.aqo
  %i.aqq = fmul <4 x float> %broadcast.splat288, %i.aqm
  %i.aqr = fmul <4 x float> %i.apz, %broadcast.splat290
  %i.aqs = fadd <4 x float> %i.aqr, %i.aqq
  %i.aqt = fadd <4 x float> %i.apn, %i.aqs
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aeh, i64 80
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aei, i64 176
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aek, i64 272
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aem, i64 368
  %i.aqy = load float, ptr %i.aqu, align 16, !tbaa !21
  %i.aqz = load float, ptr %i.aqv, align 16, !tbaa !21
  %i.ara = load float, ptr %i.aqw, align 16, !tbaa !21
  %i.arb = load float, ptr %i.aqx, align 16, !tbaa !21
  %i.arc = insertelement <4 x float> poison, float %i.aqy, i64 0
  %i.ard = insertelement <4 x float> %i.arc, float %i.aqz, i64 1
  %i.are = insertelement <4 x float> %i.ard, float %i.ara, i64 2
  %i.arf = insertelement <4 x float> %i.are, float %i.arb, i64 3 ; 2 uses
  %i.arg = fmul <4 x float> %broadcast.splat292, %i.arf
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aeh, i64 84
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aei, i64 180
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aek, i64 276
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aem, i64 372
  %i.arl = load float, ptr %i.arh, align 4, !tbaa !21
  %i.arm = load float, ptr %i.ari, align 4, !tbaa !21
  %i.arn = load float, ptr %i.arj, align 4, !tbaa !21
  %i.aro = load float, ptr %i.ark, align 4, !tbaa !21
  %i.arp = insertelement <4 x float> poison, float %i.arl, i64 0
  %i.arq = insertelement <4 x float> %i.arp, float %i.arm, i64 1
  %i.arr = insertelement <4 x float> %i.arq, float %i.arn, i64 2
  %i.ars = insertelement <4 x float> %i.arr, float %i.aro, i64 3 ; 2 uses
  %i.art = fmul <4 x float> %broadcast.splat294, %i.ars
  %i.aru = fsub <4 x float> %i.arg, %i.art
  %i.arv = fadd <4 x float> %i.aqp, %i.aru
  %i.arw = fmul <4 x float> %broadcast.splat292, %i.ars
  %i.arx = fmul <4 x float> %i.arf, %broadcast.splat294
  %i.ary = fadd <4 x float> %i.arx, %i.arw
  %i.arz = fadd <4 x float> %i.aqt, %i.ary
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aeh, i64 88
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aei, i64 184
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aek, i64 280
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aem, i64 376
  %i.ase = load float, ptr %i.asa, align 8, !tbaa !21
  %i.asf = load float, ptr %i.asb, align 8, !tbaa !21
  %i.asg = load float, ptr %i.asc, align 8, !tbaa !21
  %i.ash = load float, ptr %i.asd, align 8, !tbaa !21
  %i.asi = insertelement <4 x float> poison, float %i.ase, i64 0
  %i.asj = insertelement <4 x float> %i.asi, float %i.asf, i64 1
  %i.ask = insertelement <4 x float> %i.asj, float %i.asg, i64 2
  %i.asl = insertelement <4 x float> %i.ask, float %i.ash, i64 3 ; 2 uses
  %i.asm = fmul <4 x float> %broadcast.splat296, %i.asl
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aeh, i64 92
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aei, i64 188
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aek, i64 284
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aem, i64 380
  %i.asr = load float, ptr %i.asn, align 4, !tbaa !21
  %i.ass = load float, ptr %i.aso, align 4, !tbaa !21
  %i.ast = load float, ptr %i.asp, align 4, !tbaa !21
  %i.asu = load float, ptr %i.asq, align 4, !tbaa !21
  %i.asv = insertelement <4 x float> poison, float %i.asr, i64 0
  %i.asw = insertelement <4 x float> %i.asv, float %i.ass, i64 1
  %i.asx = insertelement <4 x float> %i.asw, float %i.ast, i64 2
  %i.asy = insertelement <4 x float> %i.asx, float %i.asu, i64 3 ; 2 uses
  %i.asz = fmul <4 x float> %broadcast.splat298, %i.asy
  %i.ata = fsub <4 x float> %i.asm, %i.asz
  %i.atb = fadd <4 x float> %i.arv, %i.ata
  %i.atc = fmul <4 x float> %broadcast.splat296, %i.asy
  %i.atd = fmul <4 x float> %i.asl, %broadcast.splat298
  %i.ate = fadd <4 x float> %i.atd, %i.atc
  %i.atf = fadd <4 x float> %i.arz, %i.ate
  %interleaved.vec = shufflevector <4 x float> %i.atb, <4 x float> %i.atf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aep, align 16, !tbaa !21
  %index.next301 = add nuw i64 %index300, 4       ; 2 uses
  %i.atg = icmp eq i64 %index.next301, 512
  br i1 %i.atg, label %.preheader, label %vector.body299, !llvm.loop !30

.preheader:                                       ; preds = %vector.body299
  %i.ath = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvar ; 5 uses
  %i.ati = load i32, ptr %i.ath, align 16, !tbaa !14 ; 3 uses
  %i.atj = add nsw i32 %i.ati, -1                 ; 2 uses
  %i.atk = shl i32 %i.ati, 1                      ; 3 uses
  %i.atl = add nsw i32 %i.atk, -1
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ath, i64 8 ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ath, i64 24
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !20 ; 3 uses
  %i.atp = icmp slt i32 %i.ati, 1                 ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.ath, i64 4 ; 2 uses
  %.promoted126 = load i32, ptr %i.atm, align 8, !tbaa !18
  %.promoted128 = load i32, ptr %i.atq, align 4, !tbaa !17
  %i.atr = getelementptr inbounds nuw i8, ptr %i.ath, i64 16
  %i.ats = sext i32 %i.atk to i64
  %smax.i78 = tail call i32 @llvm.smax.i32(i32 %i.atk, i32 1)
  %i.att = zext nneg i32 %smax.i78 to i64
  %i.atu = shl nuw nsw i64 %i.att, 2
  br label %bb.bc

.lr.ph.i86.preheader:                             ; preds = %BeamFirFilter_StrictFP.exit85
  store i32 %i.avr, ptr %i.atm, align 8, !tbaa !18
  store i32 %i.avq, ptr %i.atq, align 4, !tbaa !17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i86.preheader
  %index = phi i64 [ 0, %.lr.ph.i86.preheader ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.atv = shl nuw nsw i64 %index, 3
  %i.atw = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.atv
  %wide.vec = load <8 x float>, ptr %i.atw, align 16, !tbaa !21 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec251 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %3 = fmul <4 x float> %strided.vec, %strided.vec
  %4 = fmul <4 x float> %strided.vec251, %strided.vec251
  %i.atx = fadd <4 x float> %3, %4
  %i.aty = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.atx)
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index
  store <4 x float> %i.aty, ptr %i.atz, align 16, !tbaa !21
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.aua = shl nuw nsw i64 %index.next, 3
  %i.aub = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aua
  %wide.vec.1 = load <8 x float>, ptr %i.aub, align 16, !tbaa !21 ; 2 uses
  %strided.vec.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec251.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %5 = fmul <4 x float> %strided.vec.1, %strided.vec.1
  %6 = fmul <4 x float> %strided.vec251.1, %strided.vec251.1
  %i.auc = fadd <4 x float> %5, %6
  %i.aud = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.auc)
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index.next
  store <4 x float> %i.aud, ptr %i.aue, align 16, !tbaa !21
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.auf = icmp eq i64 %index.next.1, 512
  br i1 %i.auf, label %Magnitude_StrictFP.exit, label %vector.body, !llvm.loop !33

bb.bc:                                            ; preds = %.preheader, %BeamFirFilter_StrictFP.exit85
  %indvars.iv193 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next194, %BeamFirFilter_StrictFP.exit85 ] ; 2 uses
  %i.aug = phi i32 [ %.promoted126, %.preheader ], [ %i.avr, %BeamFirFilter_StrictFP.exit85 ] ; 2 uses
  %i.auh = phi i32 [ %.promoted128, %.preheader ], [ %i.avq, %BeamFirFilter_StrictFP.exit85 ]
  %i.aui = shl nuw nsw i64 %indvars.iv193, 1      ; 2 uses
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aui
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aui
  %i.aul = sub nsw i32 %i.atj, %i.aug
  %i.aum = shl nsw i32 %i.aul, 1                  ; 2 uses
  %i.aun = sext i32 %i.aum to i64
  %i.auo = getelementptr inbounds [4 x i8], ptr %i.ato, i64 %i.aun
  %i.aup = load <2 x float>, ptr %i.auj, align 8, !tbaa !21
  store <2 x float> %i.aup, ptr %i.auo, align 4, !tbaa !21
  br i1 %i.atp, label %._crit_edge.i74, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.bc
  %i.auq = load ptr, ptr %i.atr, align 16, !tbaa !19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i79
  %indvars.iv.i80 = phi i64 [ 0, %.lr.ph.i79 ], [ %indvars.iv.next.i84, %bb.bd ] ; 2 uses
  %.05556.i83 = phi i32 [ %i.aum, %.lr.ph.i79 ], [ %i.avj, %bb.bd ] ; 2 uses
  %i.aur = phi <2 x float> [ zeroinitializer, %.lr.ph.i79 ], [ %i.avh, %bb.bd ]
  %i.aus = sext i32 %.05556.i83 to i64
  %i.aut = getelementptr inbounds [4 x i8], ptr %i.ato, i64 %i.aus
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.auq, i64 %indvars.iv.i80 ; 2 uses
  %i.auv = load float, ptr %i.auu, align 4, !tbaa !21
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auu, i64 4
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !21
  %i.auy = load <2 x float>, ptr %i.aut, align 4, !tbaa !21 ; 2 uses
  %i.auz = insertelement <2 x float> poison, float %i.auv, i64 0
  %i.ava = shufflevector <2 x float> %i.auz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avb = fmul <2 x float> %i.auy, %i.ava
  %i.avc = insertelement <2 x float> poison, float %i.aux, i64 0
  %i.avd = shufflevector <2 x float> %i.auy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ave = shufflevector <2 x float> %i.avc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avf = fmul <2 x float> %i.avd, %i.ave
  %i.avg = fadd <2 x float> %i.avb, %i.avf
  %i.avh = fadd <2 x float> %i.aur, %i.avg        ; 2 uses
  %i.avi = add nsw i32 %.05556.i83, 2
  %i.avj = and i32 %i.avi, %i.atl
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i80, 2 ; 2 uses
  %i.avk = icmp slt i64 %indvars.iv.next.i84, %i.ats
  br i1 %i.avk, label %bb.bd, label %._crit_edge.i74, !llvm.loop !25

._crit_edge.i74:                                  ; preds = %bb.bd, %bb.bc
  %i.avl = phi <2 x float> [ zeroinitializer, %bb.bc ], [ %i.avh, %bb.bd ]
  %i.avm = add nsw i32 %i.aug, 1
  %i.avn = and i32 %i.avm, %i.atj
  store <2 x float> %i.avl, ptr %i.auk, align 8, !tbaa !21
  %i.avo = add nsw i32 %i.auh, 1                  ; 2 uses
  %i.avp = icmp ne i32 %i.avo, 512                ; 3 uses
  %brmerge141 = or i1 %i.avp, %i.atp
  %.mux142 = select i1 %i.avp, i32 %i.avo, i32 0
  %.mux143 = select i1 %i.avp, i32 %i.avn, i32 0
  br i1 %brmerge141, label %BeamFirFilter_StrictFP.exit85, label %.lr.ph63.preheader.i77

.lr.ph63.preheader.i77:                           ; preds = %._crit_edge.i74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ato, i8 0, i64 %i.atu, i1 false), !tbaa !21
  br label %BeamFirFilter_StrictFP.exit85

BeamFirFilter_StrictFP.exit85:                    ; preds = %._crit_edge.i74, %.lr.ph63.preheader.i77
  %i.avq = phi i32 [ %.mux142, %._crit_edge.i74 ], [ 0, %.lr.ph63.preheader.i77 ] ; 2 uses
  %i.avr = phi i32 [ %.mux143, %._crit_edge.i74 ], [ 0, %.lr.ph63.preheader.i77 ] ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next194, 512
  br i1 %exitcond196.not, label %.lr.ph.i86.preheader, label %bb.bc, !llvm.loop !34

Magnitude_StrictFP.exit:                          ; preds = %vector.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %scevgep, ptr noundef nonnull align 16 dereferenceable(2048) %i.h, i64 2048, i1 false), !tbaa !21
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond198.not = icmp eq i64 %indvar.next, 4
  br i1 %exitcond198.not, label %bb.be, label %.preheader95, !llvm.loop !35

bb.be:                                            ; preds = %Magnitude_StrictFP.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @begin() local_unnamed_addr #4 {
bb.a:
  %0 = alloca [12 x %struct.BeamFirData], align 16 ; 4 uses
  %1 = alloca [12 x %struct.BeamFirData], align 16 ; 4 uses
  %2 = alloca [4 x %struct.BeamFirData], align 16 ; 23 uses
  %i.a = alloca [24576 x float], align 16         ; 40 uses
  %i.b = alloca [24576 x float], align 16         ; 4 uses
  %i.c = alloca [12 x [12288 x float]], align 16  ; 18 uses
  %i.d = alloca [4 x [24 x float]], align 16      ; 7 uses
  %i.e = alloca [12288 x float], align 16         ; 54 uses
  %i.f = alloca [1024 x float], align 16          ; 4 uses
  %i.g = alloca [1024 x float], align 16          ; 5 uses
  %i.h = alloca [512 x float], align 16           ; 5 uses
  %i.i = alloca [4 x [512 x float]], align 16     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  store i32 64, ptr %i.j, align 16, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !18
  %i.m = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #20 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.m, ptr %i.n, align 16, !tbaa !19
  %i.o = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !21
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %scevgep17.i = getelementptr i8, ptr %i.o, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(508) %i.q, i8 0, i64 508, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(508) %scevgep17.i, i8 0, i64 508, i1 false), !tbaa !21
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  store i32 64, ptr %i.r, align 16, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !18
  %i.u = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #20 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.u, ptr %i.v, align 16, !tbaa !19
  %i.w = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !21
  %i.y = getelementptr i8, ptr %i.u, i64 4
  %scevgep17.i70 = getelementptr i8, ptr %i.w, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(508) %i.y, i8 0, i64 508, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(508) %scevgep17.i70, i8 0, i64 508, i1 false), !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %.preheader120.preheader, label %bb.b, !llvm.loop !36

.preheader120.preheader:                          ; preds = %bb.b
  store i32 512, ptr %2, align 16, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !18
  %i.ab = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ab, ptr %i.ac, align 16, !tbaa !19
  %i.ad = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !21
  %i.af = getelementptr i8, ptr %i.ab, i64 4
  %scevgep17.i71 = getelementptr i8, ptr %i.ad, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %i.af, i8 0, i64 4092, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %scevgep17.i71, i8 0, i64 4092, i1 false), !tbaa !21
  call void @BeamFormWeights(i32 noundef 0, ptr noundef nonnull %i.d)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 512, ptr %i.ag, align 16, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.ah, align 4, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.ai, align 8, !tbaa !18
  %i.aj = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !19
  %i.al = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.al, ptr %i.am, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !21
  %i.an = getelementptr i8, ptr %i.aj, i64 4
  %scevgep17.i71.1 = getelementptr i8, ptr %i.al, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %i.an, i8 0, i64 4092, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %scevgep17.i71.1, i8 0, i64 4092, i1 false), !tbaa !21
end_hunk_0
begin_hunk_1_@begin:bb.a
  %i.amo = insertelement <4 x float> %i.amn, float %i.amk, i64 1
  %i.amp = insertelement <4 x float> %i.amo, float %i.aml, i64 2
  %i.amq = insertelement <4 x float> %i.amp, float %i.amm, i64 3 ; 2 uses
  %i.amr = fneg <4 x float> %i.amq
  %i.ams = fmul <4 x float> %broadcast.splat312, %i.amr
  %i.amt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat310, <4 x float> %i.ame, <4 x float> %i.ams)
  %i.amu = fadd <4 x float> %i.alp, %i.amt
  %i.amv = fmul <4 x float> %i.ame, %broadcast.splat312
  %i.amw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat310, <4 x float> %i.amq, <4 x float> %i.amv)
  %i.amx = fadd <4 x float> %i.als, %i.amw
  %i.amy = getelementptr inbounds nuw i8, ptr %i.aek, i64 56
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ael, i64 152
  %i.ana = getelementptr inbounds nuw i8, ptr %i.aen, i64 248
  %i.anb = getelementptr inbounds nuw i8, ptr %i.aep, i64 344
  %i.anc = load float, ptr %i.amy, align 8, !tbaa !21
  %i.and = load float, ptr %i.amz, align 8, !tbaa !21
  %i.ane = load float, ptr %i.ana, align 8, !tbaa !21
  %i.anf = load float, ptr %i.anb, align 8, !tbaa !21
  %i.ang = insertelement <4 x float> poison, float %i.anc, i64 0
  %i.anh = insertelement <4 x float> %i.ang, float %i.and, i64 1
  %i.ani = insertelement <4 x float> %i.anh, float %i.ane, i64 2
  %i.anj = insertelement <4 x float> %i.ani, float %i.anf, i64 3 ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.aek, i64 60
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ael, i64 156
  %i.anm = getelementptr inbounds nuw i8, ptr %i.aen, i64 252
  %i.ann = getelementptr inbounds nuw i8, ptr %i.aep, i64 348
  %i.ano = load float, ptr %i.ank, align 4, !tbaa !21
  %i.anp = load float, ptr %i.anl, align 4, !tbaa !21
  %i.anq = load float, ptr %i.anm, align 4, !tbaa !21
  %i.anr = load float, ptr %i.ann, align 4, !tbaa !21
  %i.ans = insertelement <4 x float> poison, float %i.ano, i64 0
  %i.ant = insertelement <4 x float> %i.ans, float %i.anp, i64 1
  %i.anu = insertelement <4 x float> %i.ant, float %i.anq, i64 2
  %i.anv = insertelement <4 x float> %i.anu, float %i.anr, i64 3 ; 2 uses
  %i.anw = fneg <4 x float> %i.anv
  %i.anx = fmul <4 x float> %broadcast.splat316, %i.anw
  %i.any = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat314, <4 x float> %i.anj, <4 x float> %i.anx)
  %i.anz = fadd <4 x float> %i.amu, %i.any
  %i.aoa = fmul <4 x float> %i.anj, %broadcast.splat316
  %i.aob = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat314, <4 x float> %i.anv, <4 x float> %i.aoa)
  %i.aoc = fadd <4 x float> %i.amx, %i.aob
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aek, i64 64
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.ael, i64 160
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aen, i64 256
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aep, i64 352
  %i.aoh = load float, ptr %i.aod, align 16, !tbaa !21
  %i.aoi = load float, ptr %i.aoe, align 16, !tbaa !21
  %i.aoj = load float, ptr %i.aof, align 16, !tbaa !21
  %i.aok = load float, ptr %i.aog, align 16, !tbaa !21
  %i.aol = insertelement <4 x float> poison, float %i.aoh, i64 0
  %i.aom = insertelement <4 x float> %i.aol, float %i.aoi, i64 1
  %i.aon = insertelement <4 x float> %i.aom, float %i.aoj, i64 2
  %i.aoo = insertelement <4 x float> %i.aon, float %i.aok, i64 3 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aek, i64 68
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.ael, i64 164
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aen, i64 260
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aep, i64 356
  %i.aot = load float, ptr %i.aop, align 4, !tbaa !21
  %i.aou = load float, ptr %i.aoq, align 4, !tbaa !21
  %i.aov = load float, ptr %i.aor, align 4, !tbaa !21
  %i.aow = load float, ptr %i.aos, align 4, !tbaa !21
  %i.aox = insertelement <4 x float> poison, float %i.aot, i64 0
  %i.aoy = insertelement <4 x float> %i.aox, float %i.aou, i64 1
  %i.aoz = insertelement <4 x float> %i.aoy, float %i.aov, i64 2
  %i.apa = insertelement <4 x float> %i.aoz, float %i.aow, i64 3 ; 2 uses
  %i.apb = fneg <4 x float> %i.apa
  %i.apc = fmul <4 x float> %broadcast.splat320, %i.apb
  %i.apd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat318, <4 x float> %i.aoo, <4 x float> %i.apc)
  %i.ape = fadd <4 x float> %i.anz, %i.apd
  %i.apf = fmul <4 x float> %i.aoo, %broadcast.splat320
  %i.apg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat318, <4 x float> %i.apa, <4 x float> %i.apf)
  %i.aph = fadd <4 x float> %i.aoc, %i.apg
  %i.api = getelementptr inbounds nuw i8, ptr %i.aek, i64 72
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ael, i64 168
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aen, i64 264
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aep, i64 360
  %i.apm = load float, ptr %i.api, align 8, !tbaa !21
  %i.apn = load float, ptr %i.apj, align 8, !tbaa !21
  %i.apo = load float, ptr %i.apk, align 8, !tbaa !21
  %i.app = load float, ptr %i.apl, align 8, !tbaa !21
  %i.apq = insertelement <4 x float> poison, float %i.apm, i64 0
  %i.apr = insertelement <4 x float> %i.apq, float %i.apn, i64 1
  %i.aps = insertelement <4 x float> %i.apr, float %i.apo, i64 2
  %i.apt = insertelement <4 x float> %i.aps, float %i.app, i64 3 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aek, i64 76
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ael, i64 172
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aen, i64 268
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aep, i64 364
  %i.apy = load float, ptr %i.apu, align 4, !tbaa !21
  %i.apz = load float, ptr %i.apv, align 4, !tbaa !21
  %i.aqa = load float, ptr %i.apw, align 4, !tbaa !21
  %i.aqb = load float, ptr %i.apx, align 4, !tbaa !21
  %i.aqc = insertelement <4 x float> poison, float %i.apy, i64 0
  %i.aqd = insertelement <4 x float> %i.aqc, float %i.apz, i64 1
  %i.aqe = insertelement <4 x float> %i.aqd, float %i.aqa, i64 2
  %i.aqf = insertelement <4 x float> %i.aqe, float %i.aqb, i64 3 ; 2 uses
  %i.aqg = fneg <4 x float> %i.aqf
  %i.aqh = fmul <4 x float> %broadcast.splat324, %i.aqg
  %i.aqi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.apt, <4 x float> %i.aqh)
  %i.aqj = fadd <4 x float> %i.ape, %i.aqi
  %i.aqk = fmul <4 x float> %i.apt, %broadcast.splat324
  %i.aql = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.aqf, <4 x float> %i.aqk)
  %i.aqm = fadd <4 x float> %i.aph, %i.aql
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aek, i64 80
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.ael, i64 176
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aen, i64 272
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aep, i64 368
  %i.aqr = load float, ptr %i.aqn, align 16, !tbaa !21
  %i.aqs = load float, ptr %i.aqo, align 16, !tbaa !21
  %i.aqt = load float, ptr %i.aqp, align 16, !tbaa !21
  %i.aqu = load float, ptr %i.aqq, align 16, !tbaa !21
  %i.aqv = insertelement <4 x float> poison, float %i.aqr, i64 0
  %i.aqw = insertelement <4 x float> %i.aqv, float %i.aqs, i64 1
  %i.aqx = insertelement <4 x float> %i.aqw, float %i.aqt, i64 2
  %i.aqy = insertelement <4 x float> %i.aqx, float %i.aqu, i64 3 ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aek, i64 84
  %i.ara = getelementptr inbounds nuw i8, ptr %i.ael, i64 180
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aen, i64 276
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aep, i64 372
  %i.ard = load float, ptr %i.aqz, align 4, !tbaa !21
  %i.are = load float, ptr %i.ara, align 4, !tbaa !21
  %i.arf = load float, ptr %i.arb, align 4, !tbaa !21
  %i.arg = load float, ptr %i.arc, align 4, !tbaa !21
  %i.arh = insertelement <4 x float> poison, float %i.ard, i64 0
  %i.ari = insertelement <4 x float> %i.arh, float %i.are, i64 1
  %i.arj = insertelement <4 x float> %i.ari, float %i.arf, i64 2
  %i.ark = insertelement <4 x float> %i.arj, float %i.arg, i64 3 ; 2 uses
  %i.arl = fneg <4 x float> %i.ark
  %i.arm = fmul <4 x float> %broadcast.splat328, %i.arl
  %i.arn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> %i.aqy, <4 x float> %i.arm)
  %i.aro = fadd <4 x float> %i.aqj, %i.arn
  %i.arp = fmul <4 x float> %i.aqy, %broadcast.splat328
  %i.arq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> %i.ark, <4 x float> %i.arp)
  %i.arr = fadd <4 x float> %i.aqm, %i.arq
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aek, i64 88
  %i.art = getelementptr inbounds nuw i8, ptr %i.ael, i64 184
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aen, i64 280
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aep, i64 376
  %i.arw = load float, ptr %i.ars, align 8, !tbaa !21
  %i.arx = load float, ptr %i.art, align 8, !tbaa !21
  %i.ary = load float, ptr %i.aru, align 8, !tbaa !21
  %i.arz = load float, ptr %i.arv, align 8, !tbaa !21
  %i.asa = insertelement <4 x float> poison, float %i.arw, i64 0
  %i.asb = insertelement <4 x float> %i.asa, float %i.arx, i64 1
  %i.asc = insertelement <4 x float> %i.asb, float %i.ary, i64 2
  %i.asd = insertelement <4 x float> %i.asc, float %i.arz, i64 3 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aek, i64 92
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ael, i64 188
  %i.asg = getelementptr inbounds nuw i8, ptr %i.aen, i64 284
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aep, i64 380
  %i.asi = load float, ptr %i.ase, align 4, !tbaa !21
  %i.asj = load float, ptr %i.asf, align 4, !tbaa !21
  %i.ask = load float, ptr %i.asg, align 4, !tbaa !21
  %i.asl = load float, ptr %i.ash, align 4, !tbaa !21
  %i.asm = insertelement <4 x float> poison, float %i.asi, i64 0
  %i.asn = insertelement <4 x float> %i.asm, float %i.asj, i64 1
  %i.aso = insertelement <4 x float> %i.asn, float %i.ask, i64 2
  %i.asp = insertelement <4 x float> %i.aso, float %i.asl, i64 3 ; 2 uses
  %i.asq = fneg <4 x float> %i.asp
  %i.asr = fmul <4 x float> %broadcast.splat332, %i.asq
  %i.ass = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.asd, <4 x float> %i.asr)
  %i.ast = fadd <4 x float> %i.aro, %i.ass
  %i.asu = fmul <4 x float> %i.asd, %broadcast.splat332
  %i.asv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.asp, <4 x float> %i.asu)
  %i.asw = fadd <4 x float> %i.arr, %i.asv
  %interleaved.vec = shufflevector <4 x float> %i.ast, <4 x float> %i.asw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aes, align 16, !tbaa !21
  %index.next335 = add nuw i64 %index334, 4       ; 2 uses
  %i.asx = icmp eq i64 %index.next335, 512
  br i1 %i.asx, label %.preheader110, label %vector.body333, !llvm.loop !44

.preheader110:                                    ; preds = %vector.body333
  %i.asy = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvar ; 5 uses
  %i.asz = load i32, ptr %i.asy, align 16, !tbaa !14 ; 3 uses
  %i.ata = add nsw i32 %i.asz, -1                 ; 2 uses
  %i.atb = shl i32 %i.asz, 1                      ; 3 uses
  %i.atc = add nsw i32 %i.atb, -1
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asy, i64 8 ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asy, i64 24
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !20 ; 3 uses
  %i.atg = icmp slt i32 %i.asz, 1                 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asy, i64 4 ; 2 uses
  %.promoted144 = load i32, ptr %i.atd, align 8, !tbaa !18
  %.promoted146 = load i32, ptr %i.ath, align 4, !tbaa !17
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asy, i64 16
  %i.atj = sext i32 %i.atb to i64
  %smax.i90 = tail call i32 @llvm.smax.i32(i32 %i.atb, i32 1)
  %i.atk = zext nneg i32 %smax.i90 to i64
  %i.atl = shl nuw nsw i64 %i.atk, 2
  br label %bb.as

.lr.ph.i98.preheader:                             ; preds = %BeamFirFilter.exit97
  store i32 %i.avh, ptr %i.atd, align 8, !tbaa !18
  store i32 %i.avg, ptr %i.ath, align 4, !tbaa !17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i98.preheader
  %index = phi i64 [ 0, %.lr.ph.i98.preheader ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.atm = shl nuw nsw i64 %index, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.atm
  %wide.vec = load <8 x float>, ptr %i.atn, align 16, !tbaa !21 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec285 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %3 = fmul <4 x float> %strided.vec285, %strided.vec285
  %i.ato = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec, <4 x float> %3)
  %i.atp = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ato)
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index
  store <4 x float> %i.atp, ptr %i.atq, align 16, !tbaa !21
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.atr = shl nuw nsw i64 %index.next, 3
  %i.ats = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.atr
  %wide.vec.1 = load <8 x float>, ptr %i.ats, align 16, !tbaa !21 ; 2 uses
  %strided.vec.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec285.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %4 = fmul <4 x float> %strided.vec285.1, %strided.vec285.1
  %i.att = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec.1, <4 x float> %strided.vec.1, <4 x float> %4)
  %i.atu = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.att)
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index.next
  store <4 x float> %i.atu, ptr %i.atv, align 16, !tbaa !21
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.atw = icmp eq i64 %index.next.1, 512
  br i1 %i.atw, label %Magnitude.exit, label %vector.body, !llvm.loop !45

bb.as:                                            ; preds = %.preheader110, %BeamFirFilter.exit97
  %indvars.iv219 = phi i64 [ 0, %.preheader110 ], [ %indvars.iv.next220, %BeamFirFilter.exit97 ] ; 2 uses
  %i.atx = phi i32 [ %.promoted144, %.preheader110 ], [ %i.avh, %BeamFirFilter.exit97 ] ; 2 uses
  %i.aty = phi i32 [ %.promoted146, %.preheader110 ], [ %i.avg, %BeamFirFilter.exit97 ]
  %i.atz = shl nuw nsw i64 %indvars.iv219, 1      ; 2 uses
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.atz
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.atz
  %i.auc = sub nsw i32 %i.ata, %i.atx
  %i.aud = shl nsw i32 %i.auc, 1                  ; 2 uses
  %i.aue = sext i32 %i.aud to i64
  %i.auf = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %i.aue
  %i.aug = load <2 x float>, ptr %i.aua, align 8, !tbaa !21
  store <2 x float> %i.aug, ptr %i.auf, align 4, !tbaa !21
  br i1 %i.atg, label %._crit_edge.i86, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.as
  %i.auh = load ptr, ptr %i.ati, align 16, !tbaa !19
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i91
  %indvars.iv.i92 = phi i64 [ 0, %.lr.ph.i91 ], [ %indvars.iv.next.i96, %bb.at ] ; 2 uses
  %.05556.i95 = phi i32 [ %i.aud, %.lr.ph.i91 ], [ %i.auz, %bb.at ] ; 2 uses
  %i.aui = phi <2 x float> [ zeroinitializer, %.lr.ph.i91 ], [ %i.aux, %bb.at ]
  %i.auj = sext i32 %.05556.i95 to i64
  %i.auk = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %i.auj
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %i.auh, i64 %indvars.iv.i92 ; 2 uses
  %i.aum = load float, ptr %i.aul, align 4, !tbaa !21
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aul, i64 4
  %i.auo = load float, ptr %i.aun, align 4, !tbaa !21
  %i.aup = load <2 x float>, ptr %i.auk, align 4, !tbaa !21 ; 2 uses
  %i.auq = insertelement <2 x float> poison, float %i.auo, i64 0
  %i.aur = shufflevector <2 x float> %i.aup, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aus = shufflevector <2 x float> %i.auq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aut = fmul <2 x float> %i.aur, %i.aus
  %i.auu = insertelement <2 x float> poison, float %i.aum, i64 0
  %i.auv = shufflevector <2 x float> %i.auu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aup, <2 x float> %i.auv, <2 x float> %i.aut)
  %i.aux = fadd <2 x float> %i.aui, %i.auw        ; 2 uses
  %i.auy = add nsw i32 %.05556.i95, 2
  %i.auz = and i32 %i.auy, %i.atc
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %i.ava = icmp slt i64 %indvars.iv.next.i96, %i.atj
  br i1 %i.ava, label %bb.at, label %._crit_edge.i86, !llvm.loop !39

._crit_edge.i86:                                  ; preds = %bb.at, %bb.as
  %i.avb = phi <2 x float> [ zeroinitializer, %bb.as ], [ %i.aux, %bb.at ]
  %i.avc = add nsw i32 %i.atx, 1
  %i.avd = and i32 %i.avc, %i.ata
  store <2 x float> %i.avb, ptr %i.aub, align 8, !tbaa !21
  %i.ave = add nsw i32 %i.aty, 1                  ; 2 uses
  %i.avf = icmp ne i32 %i.ave, 512                ; 3 uses
  %brmerge163 = or i1 %i.avf, %i.atg
  %.mux164 = select i1 %i.avf, i32 %i.ave, i32 0
  %.mux165 = select i1 %i.avf, i32 %i.avd, i32 0
  br i1 %brmerge163, label %BeamFirFilter.exit97, label %.lr.ph63.preheader.i89

.lr.ph63.preheader.i89:                           ; preds = %._crit_edge.i86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.atf, i8 0, i64 %i.atl, i1 false), !tbaa !21
  br label %BeamFirFilter.exit97

BeamFirFilter.exit97:                             ; preds = %._crit_edge.i86, %.lr.ph63.preheader.i89
  %i.avg = phi i32 [ %.mux164, %._crit_edge.i86 ], [ 0, %.lr.ph63.preheader.i89 ] ; 2 uses
  %i.avh = phi i32 [ %.mux165, %._crit_edge.i86 ], [ 0, %.lr.ph63.preheader.i89 ] ; 2 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next220, 512
  br i1 %exitcond222.not, label %.lr.ph.i98.preheader, label %bb.as, !llvm.loop !46

Magnitude.exit:                                   ; preds = %vector.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %scevgep, ptr noundef nonnull align 16 dereferenceable(2048) %i.h, i64 2048, i1 false), !tbaa !21
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond224.not = icmp eq i64 %indvar.next, 4
  br i1 %exitcond224.not, label %.preheader, label %.preheader111, !llvm.loop !47

.preheader:                                       ; preds = %Magnitude.exit, %check_FP.exit.3
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %check_FP.exit.3 ], [ 0, %Magnitude.exit ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv229 ; 4 uses
  %invariant.gep150 = getelementptr inbounds nuw [4 x i8], ptr @detector_out_StrictFP, i64 %indvars.iv229 ; 4 uses
  %i.avi = load float, ptr %invariant.gep, align 4, !tbaa !21 ; 2 uses
  %i.avj = load float, ptr %invariant.gep150, align 4, !tbaa !21 ; 3 uses
  %i.avk = fsub float %i.avi, %i.avj
  %i.avl = tail call float @llvm.fabs.f32(float %i.avk)
  %i.avm = fpext float %i.avl to double
  %i.avn = fcmp ogt double %i.avm, 1.000000e-05
  br i1 %i.avn, label %bb.au, label %check_FP.exit

bb.au:                                            ; preds = %check_FP.exit.2, %check_FP.exit.1, %check_FP.exit, %.preheader
  %.lcssa180 = phi float [ %i.avi, %.preheader ], [ %i.avu, %check_FP.exit ], [ %i.awc, %check_FP.exit.1 ], [ %i.awk, %check_FP.exit.2 ]
  %.lcssa178 = phi float [ %i.avj, %.preheader ], [ %i.avv, %check_FP.exit ], [ %i.awd, %check_FP.exit.1 ], [ %i.awl, %check_FP.exit.2 ]
  %i.avo = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.avp = fpext float %.lcssa180 to double
  %i.avq = fpext float %.lcssa178 to double
  %i.avr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avo, ptr noundef nonnull @.str.2, double noundef %i.avp, double noundef %i.avq, double noundef 1.000000e-05) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

check_FP.exit:                                    ; preds = %.preheader
  %i.avs = fpext float %i.avj to double
  %i.avt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.avs) ; 0 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2048
  %i.avu = load float, ptr %gep.1, align 4, !tbaa !21 ; 2 uses
  %gep151.1 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 2048
  %i.avv = load float, ptr %gep151.1, align 4, !tbaa !21 ; 3 uses
  %i.avw = fsub float %i.avu, %i.avv
  %i.avx = tail call float @llvm.fabs.f32(float %i.avw)
  %i.avy = fpext float %i.avx to double
  %i.avz = fcmp ogt double %i.avy, 1.000000e-05
  br i1 %i.avz, label %bb.au, label %check_FP.exit.1

check_FP.exit.1:                                  ; preds = %check_FP.exit
  %i.awa = fpext float %i.avv to double
  %i.awb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.awa) ; 0 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4096
  %i.awc = load float, ptr %gep.2, align 4, !tbaa !21 ; 2 uses
  %gep151.2 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 4096
  %i.awd = load float, ptr %gep151.2, align 4, !tbaa !21 ; 3 uses
  %i.awe = fsub float %i.awc, %i.awd
  %i.awf = tail call float @llvm.fabs.f32(float %i.awe)
  %i.awg = fpext float %i.awf to double
  %i.awh = fcmp ogt double %i.awg, 1.000000e-05
  br i1 %i.awh, label %bb.au, label %check_FP.exit.2

check_FP.exit.2:                                  ; preds = %check_FP.exit.1
  %i.awi = fpext float %i.awd to double
  %i.awj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.awi) ; 0 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6144
  %i.awk = load float, ptr %gep.3, align 4, !tbaa !21 ; 2 uses
  %gep151.3 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 6144
  %i.awl = load float, ptr %gep151.3, align 4, !tbaa !21 ; 3 uses
  %i.awm = fsub float %i.awk, %i.awl
  %i.awn = tail call float @llvm.fabs.f32(float %i.awm)
  %i.awo = fpext float %i.awn to double
  %i.awp = fcmp ogt double %i.awo, 1.000000e-05
  br i1 %i.awp, label %bb.au, label %check_FP.exit.3

check_FP.exit.3:                                  ; preds = %check_FP.exit.2
  %i.awq = fpext float %i.awl to double
  %i.awr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.awq) ; 0 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next230, 512
  br i1 %exitcond232.not, label %.loopexit, label %.preheader, !llvm.loop !50

bb.av:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @BeamFirSetup(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 32)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !18
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.e, align 4, !tbaa !21
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 4
  %i.k = shl nuw i32 %1, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 2)
  %i.l = zext nneg i32 %smax to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nsw i64 %i.m, -4                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, i8 0, i64 %i.n, i1 false), !tbaa !21
  %scevgep17 = getelementptr i8, ptr %i.g, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep17, i8 0, i64 %i.n, i1 false), !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
end_hunk_1
begin_hunk_2_@BeamForm:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load float, ptr %i.az, align 4, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bs = load float, ptr %i.br, align 4, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.by = load float, ptr %i.bx, align 4, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.cp = fadd <2 x float> %i.p, %i.ag
  %i.cq = load <2 x float>, ptr %i.aj, align 4, !tbaa !21 ; 2 uses
  %i.cr = load float, ptr %i.am, align 4, !tbaa !21
  %i.cs = fneg float %i.cr
  %i.ct = fmul float %i.al, %i.cs
  %i.cu = extractelement <2 x float> %i.cq, i64 0
  %i.cv = fmul float %i.cu, %i.al
  %i.cw = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cv, i64 1
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cq, <2 x float> %i.cz)
  %i.db = fadd <2 x float> %i.cp, %i.da
  %i.dc = load float, ptr %i.as, align 4, !tbaa !21
  %i.dd = load <2 x float>, ptr %i.ap, align 4, !tbaa !21 ; 2 uses
  %i.de = fneg float %i.dc
  %i.df = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.di = insertelement <2 x float> %i.dh, float %i.de, i64 0
  %i.dj = fmul <2 x float> %i.dg, %i.di
  %i.dk = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dd, <2 x float> %i.dj)
  %i.dn = fadd <2 x float> %i.db, %i.dm
  %i.do = load float, ptr %i.ay, align 4, !tbaa !21
  %i.dp = load <2 x float>, ptr %i.av, align 4, !tbaa !21 ; 2 uses
  %i.dq = fneg float %i.do
  %i.dr = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.du = insertelement <2 x float> %i.dt, float %i.dq, i64 0
  %i.dv = fmul <2 x float> %i.ds, %i.du
  %i.dw = insertelement <2 x float> poison, float %i.au, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dp, <2 x float> %i.dv)
  %i.dz = fadd <2 x float> %i.dn, %i.dy
  %i.ea = load float, ptr %i.be, align 4, !tbaa !21
  %i.eb = load <2 x float>, ptr %i.bb, align 4, !tbaa !21 ; 2 uses
  %i.ec = fneg float %i.ea
  %i.ed = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eg = insertelement <2 x float> %i.ef, float %i.ec, i64 0
  %i.eh = fmul <2 x float> %i.ee, %i.eg
  %i.ei = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.eb, <2 x float> %i.eh)
  %i.el = fadd <2 x float> %i.dz, %i.ek
  %i.em = load float, ptr %i.bk, align 4, !tbaa !21
  %i.en = load <2 x float>, ptr %i.bh, align 4, !tbaa !21 ; 2 uses
  %i.eo = fneg float %i.em
  %i.ep = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.es = insertelement <2 x float> %i.er, float %i.eo, i64 0
  %i.et = fmul <2 x float> %i.eq, %i.es
  %i.eu = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.en, <2 x float> %i.et)
  %i.ex = fadd <2 x float> %i.el, %i.ew
  %i.ey = load float, ptr %i.bq, align 4, !tbaa !21
  %i.ez = load <2 x float>, ptr %i.bn, align 4, !tbaa !21 ; 2 uses
  %i.fa = fneg float %i.ey
  %i.fb = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fe = insertelement <2 x float> %i.fd, float %i.fa, i64 0
  %i.ff = fmul <2 x float> %i.fc, %i.fe
  %i.fg = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.ez, <2 x float> %i.ff)
  %i.fj = fadd <2 x float> %i.ex, %i.fi
  %i.fk = load float, ptr %i.bw, align 4, !tbaa !21
  %i.fl = load <2 x float>, ptr %i.bt, align 4, !tbaa !21 ; 2 uses
  %i.fm = fneg float %i.fk
  %i.fn = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fq = insertelement <2 x float> %i.fp, float %i.fm, i64 0
  %i.fr = fmul <2 x float> %i.fo, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fl, <2 x float> %i.fr)
  %i.fv = fadd <2 x float> %i.fj, %i.fu
  %i.fw = load float, ptr %i.cc, align 4, !tbaa !21
  %i.fx = load <2 x float>, ptr %i.bz, align 4, !tbaa !21 ; 2 uses
  %i.fy = fneg float %i.fw
  %i.fz = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gc = insertelement <2 x float> %i.gb, float %i.fy, i64 0
  %i.gd = fmul <2 x float> %i.ga, %i.gc
  %i.ge = insertelement <2 x float> poison, float %i.by, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.fx, <2 x float> %i.gd)
  %i.gh = fadd <2 x float> %i.fv, %i.gg
  %i.gi = load float, ptr %i.ci, align 4, !tbaa !21
  %i.gj = load <2 x float>, ptr %i.cf, align 4, !tbaa !21 ; 2 uses
  %i.gk = fneg float %i.gi
  %i.gl = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.go = insertelement <2 x float> %i.gn, float %i.gk, i64 0
  %i.gp = fmul <2 x float> %i.gm, %i.go
  %i.gq = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gj, <2 x float> %i.gp)
  %i.gt = fadd <2 x float> %i.gh, %i.gs
  %i.gu = load float, ptr %i.co, align 4, !tbaa !21
  %i.gv = load <2 x float>, ptr %i.cl, align 4, !tbaa !21 ; 2 uses
  %i.gw = fneg float %i.gu
  %i.gx = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ha = insertelement <2 x float> %i.gz, float %i.gw, i64 0
  %i.hb = fmul <2 x float> %i.gy, %i.ha
  %i.hc = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.gv, <2 x float> %i.hb)
  %i.hf = fadd <2 x float> %i.gt, %i.he
  store <2 x float> %i.hf, ptr %3, align 4, !tbaa !21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Magnitude(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 7 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.b
  %i.c = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep14 = getelementptr i8, ptr %0, i64 %i.c
  %bound0 = icmp ult ptr %1, %scevgep14
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = shl nuw nsw i64 %index, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %wide.vec = load <8 x float>, ptr %i.e, align 4, !tbaa !21, !alias.scope !51 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec15 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %3 = fmul <4 x float> %strided.vec15, %strided.vec15
  %i.f = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec, <4 x float> %3)
  %i.g = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.f)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.g, ptr %i.h, align 4, !tbaa !21, !alias.scope !54, !noalias !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader16
  %.idx.prol = shl nuw nsw i64 %indvars.iv.ph, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !21 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !21 ; 2 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.n)
  %sqrt.prol = tail call float @llvm.sqrt.f32(float %i.o)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  store float %sqrt.prol, ptr %i.p, align 4, !tbaa !21
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader16
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader16 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.q = add nsw i64 %wide.trip.count, -1
  %i.r = icmp eq i64 %indvars.iv.ph, %i.q
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !21 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !21 ; 2 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.x)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %sqrt, ptr %i.y, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !21 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !21 ; 2 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.aa, float %i.ad)
  %sqrt.1 = tail call float @llvm.sqrt.f32(float %i.ae)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %sqrt.1, ptr %i.af, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Detector(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #10 {
vector.memcheck:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x float>, ptr %i.d, align 4, !tbaa !21
  %wide.load18 = load <4 x float>, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x float> %wide.load, ptr %i.f, align 4, !tbaa !21
  store <4 x float> %wide.load18, ptr %i.g, align 4, !tbaa !21
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load.1 = load <4 x float>, ptr %i.h, align 4, !tbaa !21
  %wide.load18.1 = load <4 x float>, ptr %i.i, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x float> %wide.load.1, ptr %i.j, align 4, !tbaa !21
  store <4 x float> %wide.load18.1, ptr %i.k, align 4, !tbaa !21
  %index.next.1 = or disjoint i64 %index, 16      ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next.1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load.2 = load <4 x float>, ptr %i.l, align 4, !tbaa !21
  %wide.load18.2 = load <4 x float>, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next.1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> %wide.load.2, ptr %i.n, align 4, !tbaa !21
  store <4 x float> %wide.load18.2, ptr %i.o, align 4, !tbaa !21
  %index.next.2 = or disjoint i64 %index, 24      ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next.2 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load.3 = load <4 x float>, ptr %i.p, align 4, !tbaa !21
  %wide.load18.3 = load <4 x float>, ptr %i.q, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next.2 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %wide.load.3, ptr %i.r, align 4, !tbaa !21
  store <4 x float> %wide.load18.3, ptr %i.s, align 4, !tbaa !21
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.t = icmp eq i64 %index.next.3, 512
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !58

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.v, ptr %i.w, align 4, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.y = load float, ptr %i.x, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.y, ptr %i.z, align 4, !tbaa !21
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  store float %i.ab, ptr %i.ac, align 4, !tbaa !21
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  store float %i.ae, ptr %i.af, align 4, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 512
  br i1 %exitcond.not.3, label %middle.block, label %scalar.ph, !llvm.loop !59

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @BeamFirSetup_StrictFP(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 32)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !18
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.e, align 4, !tbaa !21
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 4
  %i.k = shl nuw i32 %1, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 2)
  %i.l = zext nneg i32 %smax to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nsw i64 %i.m, -4                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, i8 0, i64 %i.n, i1 false), !tbaa !21
  %scevgep17 = getelementptr i8, ptr %i.g, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep17, i8 0, i64 %i.n, i1 false), !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BeamFormWeights_StrictFP(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 96)) %1) local_unnamed_addr #6 {
end_hunk_2
begin_hunk_3_@BeamForm_StrictFP:bb.a
  %i.z = fadd float %i.j, %i.y
  %i.aa = fmul float %i.p, %i.w
  %i.ab = fmul float %i.r, %i.u
  %i.ac = fadd float %i.ab, %i.aa
  %i.ad = fadd float %i.n, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !21 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !21 ; 2 uses
  %i.ai = fmul float %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !21 ; 2 uses
  %i.an = fmul float %i.ak, %i.am
  %i.ao = fsub float %i.ai, %i.an
  %i.ap = fadd float %i.z, %i.ao
  %i.aq = fmul float %i.af, %i.am
  %i.ar = fmul float %i.ah, %i.ak
  %i.as = fadd float %i.ar, %i.aq
  %i.at = fadd float %i.ad, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load float, ptr %i.au, align 4, !tbaa !21 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !21 ; 2 uses
  %i.ay = fmul float %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ba = load float, ptr %i.az, align 4, !tbaa !21 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !21 ; 2 uses
  %i.bd = fmul float %i.ba, %i.bc
  %i.be = fsub float %i.ay, %i.bd
  %i.bf = fadd float %i.ap, %i.be
  %i.bg = fmul float %i.av, %i.bc
  %i.bh = fmul float %i.ax, %i.ba
  %i.bi = fadd float %i.bh, %i.bg
  %i.bj = fadd float %i.at, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !21 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !21 ; 2 uses
  %i.bo = fmul float %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !21 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bs = load float, ptr %i.br, align 4, !tbaa !21 ; 2 uses
  %i.bt = fmul float %i.bq, %i.bs
  %i.bu = fsub float %i.bo, %i.bt
  %i.bv = fadd float %i.bf, %i.bu
  %i.bw = fmul float %i.bl, %i.bs
  %i.bx = fmul float %i.bn, %i.bq
  %i.by = fadd float %i.bx, %i.bw
  %i.bz = fadd float %i.bj, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !21 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !21 ; 2 uses
  %i.ce = fmul float %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !21 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !21 ; 2 uses
  %i.cj = fmul float %i.cg, %i.ci
  %i.ck = fsub float %i.ce, %i.cj
  %i.cl = fadd float %i.bv, %i.ck
  %i.cm = fmul float %i.cb, %i.ci
  %i.cn = fmul float %i.cd, %i.cg
  %i.co = fadd float %i.cn, %i.cm
  %i.cp = fadd float %i.bz, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !21 ; 2 uses
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !21 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !21 ; 2 uses
  %i.cz = fmul float %i.cw, %i.cy
  %i.da = fsub float %i.cu, %i.cz
  %i.db = fadd float %i.cl, %i.da
  %i.dc = fmul float %i.cr, %i.cy
  %i.dd = fmul float %i.ct, %i.cw
  %i.de = fadd float %i.dd, %i.dc
  %i.df = fadd float %i.cp, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !21 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dj = load float, ptr %i.di, align 4, !tbaa !21 ; 2 uses
  %i.dk = fmul float %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !21 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.do = load float, ptr %i.dn, align 4, !tbaa !21 ; 2 uses
  %i.dp = fmul float %i.dm, %i.do
  %i.dq = fsub float %i.dk, %i.dp
  %i.dr = fadd float %i.db, %i.dq
  %i.ds = fmul float %i.dh, %i.do
  %i.dt = fmul float %i.dj, %i.dm
  %i.du = fadd float %i.dt, %i.ds
  %i.dv = fadd float %i.df, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !21 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !21 ; 2 uses
  %i.ea = fmul float %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !21 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !21 ; 2 uses
  %i.ef = fmul float %i.ec, %i.ee
  %i.eg = fsub float %i.ea, %i.ef
  %i.eh = fadd float %i.dr, %i.eg
  %i.ei = fmul float %i.dx, %i.ee
  %i.ej = fmul float %i.dz, %i.ec
  %i.ek = fadd float %i.ej, %i.ei
  %i.el = fadd float %i.dv, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.en = load float, ptr %i.em, align 4, !tbaa !21 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !21 ; 2 uses
  %i.eq = fmul float %i.en, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.es = load float, ptr %i.er, align 4, !tbaa !21 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.eu = load float, ptr %i.et, align 4, !tbaa !21 ; 2 uses
  %i.ev = fmul float %i.es, %i.eu
  %i.ew = fsub float %i.eq, %i.ev
  %i.ex = fadd float %i.eh, %i.ew
  %i.ey = fmul float %i.en, %i.eu
  %i.ez = fmul float %i.ep, %i.es
  %i.fa = fadd float %i.ez, %i.ey
  %i.fb = fadd float %i.el, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !21 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !21 ; 2 uses
  %i.fg = fmul float %i.fd, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !21 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !21 ; 2 uses
  %i.fl = fmul float %i.fi, %i.fk
  %i.fm = fsub float %i.fg, %i.fl
  %i.fn = fadd float %i.ex, %i.fm
  %i.fo = fmul float %i.fd, %i.fk
  %i.fp = fmul float %i.ff, %i.fi
  %i.fq = fadd float %i.fp, %i.fo
  %i.fr = fadd float %i.fb, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !21 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !21 ; 2 uses
  %i.fw = fmul float %i.ft, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !21 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !21 ; 2 uses
  %i.gb = fmul float %i.fy, %i.ga
  %i.gc = fsub float %i.fw, %i.gb
  %i.gd = fadd float %i.fn, %i.gc
  %i.ge = fmul float %i.ft, %i.ga
  %i.gf = fmul float %i.fv, %i.fy
  %i.gg = fadd float %i.gf, %i.ge
  %i.gh = fadd float %i.fr, %i.gg
  store float %i.gd, ptr %3, align 4, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.gh, ptr %i.gi, align 4, !tbaa !21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Magnitude_StrictFP(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 7 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.b
  %i.c = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep14 = getelementptr i8, ptr %0, i64 %i.c
  %bound0 = icmp ult ptr %1, %scevgep14
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = shl nuw nsw i64 %index, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %wide.vec = load <8 x float>, ptr %i.e, align 4, !tbaa !21, !alias.scope !60 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec15 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %3 = fmul <4 x float> %strided.vec, %strided.vec
  %4 = fmul <4 x float> %strided.vec15, %strided.vec15
  %i.f = fadd <4 x float> %3, %4
  %i.g = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.f)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.g, ptr %i.h, align 4, !tbaa !21, !alias.scope !63, !noalias !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17
  %.idx.prol = shl nuw nsw i64 %indvars.iv.ph, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !21 ; 2 uses
  %i.l = fmul <2 x float> %i.k, %i.k              ; 2 uses
  %shift.prol = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.prol = fadd <2 x float> %i.l, %shift.prol
  %i.m = extractelement <2 x float> %foldExtExtBinop.prol, i64 0
  %sqrt.prol = tail call float @llvm.sqrt.f32(float %i.m)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  store float %sqrt.prol, ptr %i.n, align 4, !tbaa !21
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader17 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.o = add nsw i64 %wide.trip.count, -1
  %i.p = icmp eq i64 %indvars.iv.ph, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !21 ; 2 uses
  %i.s = fmul <2 x float> %i.r, %i.r              ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %sqrt = tail call float @llvm.sqrt.f32(float %i.t)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %sqrt, ptr %i.u, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !21 ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.w              ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x float> %i.x, %shift.1
  %i.y = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %sqrt.1 = tail call float @llvm.sqrt.f32(float %i.y)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %sqrt.1, ptr %i.z, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Detector_StrictFP(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #10 {
vector.memcheck:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x float>, ptr %i.d, align 4, !tbaa !21
  %wide.load18 = load <4 x float>, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x float> %wide.load, ptr %i.f, align 4, !tbaa !21
  store <4 x float> %wide.load18, ptr %i.g, align 4, !tbaa !21
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load.1 = load <4 x float>, ptr %i.h, align 4, !tbaa !21
  %wide.load18.1 = load <4 x float>, ptr %i.i, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x float> %wide.load.1, ptr %i.j, align 4, !tbaa !21
  store <4 x float> %wide.load18.1, ptr %i.k, align 4, !tbaa !21
  %index.next.1 = or disjoint i64 %index, 16      ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next.1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load.2 = load <4 x float>, ptr %i.l, align 4, !tbaa !21
  %wide.load18.2 = load <4 x float>, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next.1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> %wide.load.2, ptr %i.n, align 4, !tbaa !21
  store <4 x float> %wide.load18.2, ptr %i.o, align 4, !tbaa !21
  %index.next.2 = or disjoint i64 %index, 24      ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next.2 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load.3 = load <4 x float>, ptr %i.p, align 4, !tbaa !21
  %wide.load18.3 = load <4 x float>, ptr %i.q, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next.2 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %wide.load.3, ptr %i.r, align 4, !tbaa !21
  store <4 x float> %wide.load18.3, ptr %i.s, align 4, !tbaa !21
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.t = icmp eq i64 %index.next.3, 512
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !67

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.v, ptr %i.w, align 4, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.y = load float, ptr %i.x, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.y, ptr %i.z, align 4, !tbaa !21
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  store float %i.ab, ptr %i.ac, align 4, !tbaa !21
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  store float %i.ae, ptr %i.af, align 4, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 512
  br i1 %exitcond.not.3, label %middle.block, label %scalar.ph, !llvm.loop !68

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
end_hunk_3
