Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z37?download=true
inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FontChange:bb.a
  %i.ant = zext nneg i16 %i.ans to i32
  %i.anu = load i32, ptr %i.z, align 4
  %i.anv = and i32 %i.anu, -4096
  %i.anw = or disjoint i32 %i.anv, %i.ant
  store i32 %i.anw, ptr %i.z, align 4
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.any = load i16, ptr %i.anx, align 4
  %i.anz = and i16 %i.any, 255
  %i.aoa = or disjoint i16 %i.anz, 9728
  store i16 %i.aoa, ptr %i.anx, align 4
  %i.aob = getelementptr inbounds nuw i8, ptr %.0326, i64 56
  %i.aoc = load i32, ptr %i.aob, align 8, !tbaa !8
  %i.aod = trunc i32 %i.aoc to i16
  %i.aoe = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.aod, ptr %i.aoe, align 2, !tbaa !8
  br label %.thread

bb.iy:                                            ; preds = %bb.iv
  %i.aof = load i32, ptr @font_count, align 4, !tbaa !4
  %i.aog = add i32 %i.aof, 1                      ; 3 uses
  store i32 %i.aog, ptr @font_count, align 4, !tbaa !4
  %i.aoh = load i32, ptr @finfo_size, align 4, !tbaa !4 ; 2 uses
  %.not375 = icmp ult i32 %i.aog, %i.aoh
  br i1 %.not375, label %bb.jd, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aoi = icmp ugt i32 %i.aog, 4096
  br i1 %i.aoi, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.aoj = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 51, ptr noundef nonnull @.str.36, i32 noundef 1, ptr noundef nonnull %i.af, i32 noundef 4096) #14 ; 0 uses
  %.pre580 = load i32, ptr @finfo_size, align 4, !tbaa !4
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.aok = phi i32 [ %.pre580, %bb.ja ], [ %i.aoh, %bb.iz ]
  %i.aol = shl nsw i32 %i.aok, 1                  ; 2 uses
  store i32 %i.aol, ptr @finfo_size, align 4, !tbaa !4
  %i.aom = load ptr, ptr @finfo, align 8, !tbaa !13
  %i.aon = sext i32 %i.aol to i64
  %i.aoo = mul nsw i64 %i.aon, 96
  %i.aop = call ptr @realloc(ptr noundef %i.aom, i64 noundef %i.aoo) #17 ; 2 uses
  store ptr %i.aop, ptr @finfo, align 8, !tbaa !13
  %i.aoq = icmp eq ptr %i.aop, null
  br i1 %i.aoq, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.aor = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 52, ptr noundef nonnull @.str.37, i32 noundef 1, ptr noundef nonnull %i.af) #14 ; 0 uses
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jb, %bb.jc, %bb.iy
  %i.aos = load ptr, ptr %i.akc, align 8, !tbaa !8
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !8
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !8
  br label %bb.je

bb.je:                                            ; preds = %bb.je, %bb.jd
  %.pn380 = phi ptr [ %i.aow, %bb.jd ], [ %.0315, %bb.je ]
  %.0315.in = getelementptr inbounds nuw i8, ptr %.pn380, i64 16
  %.0315 = load ptr, ptr %.0315.in, align 8, !tbaa !8 ; 9 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %.0315, i64 32
  %i.aoy = load i8, ptr %i.aox, align 8, !tbaa !8
  switch i8 %i.aoy, label %bb.jf [
    i8 0, label %bb.je
    i8 11, label %.loopexit436
    i8 12, label %.loopexit436
  ]

bb.jf:                                            ; preds = %bb.je
  %i.aoz = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.apa = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %i.aoz, ptr noundef nonnull @.str.38) #14 ; 0 uses
  br label %.loopexit436

.loopexit436:                                     ; preds = %bb.je, %bb.je, %bb.jf
  %i.apb = getelementptr inbounds nuw i8, ptr %.0315, i64 64
  %i.apc = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.apd = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %i.apb, ptr noundef %i.apc) #14 ; 10 uses
  %i.ape = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.apf = zext i8 %i.ape to i32                  ; 2 uses
  store i32 %i.apf, ptr @zz_size, align 4, !tbaa !4
  %i.apg = zext i8 %i.ape to i64
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.apg ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !9 ; 4 uses
  %i.apj = icmp eq ptr %i.api, null
  br i1 %i.apj, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %.loopexit436
  %i.apk = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.apl = call ptr @GetMemory(i32 noundef %i.apf, ptr noundef %i.apk) #14
  br label %bb.ji

bb.jh:                                            ; preds = %.loopexit436
  store ptr %i.api, ptr @zz_hold, align 8, !tbaa !9
  %i.apm = load ptr, ptr %i.api, align 8, !tbaa !8
  store ptr %i.apm, ptr %i.aph, align 8, !tbaa !9
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jg, %bb.jh
  %i.apn = phi ptr [ %i.apl, %bb.jg ], [ %i.api, %bb.jh ] ; 12 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 32
  store i8 0, ptr %i.apo, align 8, !tbaa !8
  %i.app = getelementptr inbounds nuw i8, ptr %i.apn, i64 24
  store ptr %i.apn, ptr %i.app, align 8, !tbaa !8
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apn, i64 16
  store ptr %i.apn, ptr %i.apq, align 8, !tbaa !8
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apn, i64 8
  store ptr %i.apn, ptr %i.apr, align 8, !tbaa !8
  store ptr %i.apn, ptr %i.apn, align 8, !tbaa !8
  store ptr %i.apn, ptr @xx_link, align 8, !tbaa !9
  store ptr %i.apn, ptr @zz_res, align 8, !tbaa !9
  store ptr %.2329, ptr @zz_hold, align 8, !tbaa !9
  %i.aps = load ptr, ptr %.2329, align 8, !tbaa !8
  store ptr %i.aps, ptr @zz_tmp, align 8, !tbaa !9
  %i.apt = load ptr, ptr %i.apn, align 8, !tbaa !8
  store ptr %i.apt, ptr %.2329, align 8, !tbaa !8
  %i.apu = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %i.apv = load ptr, ptr @zz_res, align 8, !tbaa !9 ; 2 uses
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !8
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  store ptr %i.apu, ptr %i.apx, align 8, !tbaa !8
  %i.apy = load ptr, ptr @zz_tmp, align 8, !tbaa !9 ; 2 uses
  store ptr %i.apy, ptr %i.apv, align 8, !tbaa !8
  %i.apz = load ptr, ptr @zz_res, align 8, !tbaa !9
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 8
  store ptr %i.apz, ptr %i.aqa, align 8, !tbaa !8
  %i.aqb = load ptr, ptr @xx_link, align 8, !tbaa !9 ; 4 uses
  store ptr %i.aqb, ptr @zz_res, align 8, !tbaa !9
  store ptr %i.apd, ptr @zz_hold, align 8, !tbaa !9
  %i.aqc = icmp eq ptr %i.apd, null
  %i.aqd = icmp eq ptr %i.aqb, null
  %or.cond15 = select i1 %i.aqc, i1 true, i1 %i.aqd
  br i1 %or.cond15, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apd, i64 16 ; 2 uses
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !8 ; 3 uses
  store ptr %i.aqf, ptr @zz_tmp, align 8, !tbaa !9
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqb, i64 16 ; 2 uses
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !8 ; 2 uses
  store ptr %i.aqh, ptr %i.aqe, align 8, !tbaa !8
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 24
  store ptr %i.apd, ptr %i.aqi, align 8, !tbaa !8
  store ptr %i.aqf, ptr %i.aqg, align 8, !tbaa !8
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqf, i64 24
  store ptr %i.aqb, ptr %i.aqj, align 8, !tbaa !8
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %i.aqk = load i32, ptr @font_count, align 4, !tbaa !4 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.apd, i64 40 ; 3 uses
  %i.aqm = trunc i32 %i.aqk to i16
  %i.aqn = load i16, ptr %i.aql, align 8
  %i.aqo = and i16 %i.aqm, 4095
  %i.aqp = and i16 %i.aqn, -4096
  %i.aqq = or disjoint i16 %i.aqp, %i.aqo
  store i16 %i.aqq, ptr %i.aql, align 8
  %i.aqr = load ptr, ptr @BackEnd, align 8, !tbaa !47
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 40
  %i.aqt = load i32, ptr %i.aqs, align 8, !tbaa !49
  %.not376 = icmp eq i32 %i.aqt, 0
  br i1 %.not376, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.aqu = getelementptr inbounds nuw i8, ptr %.0315, i64 48
  %i.aqv = load i32, ptr %i.aqu, align 8, !tbaa !8
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jk, %bb.jl
  %i.aqw = phi i32 [ %i.aqv, %bb.jl ], [ %i.anj, %bb.jk ] ; 3 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.apd, i64 48 ; 10 uses
  store i32 %i.aqw, ptr %i.aqx, align 8, !tbaa !8
  %i.aqy = getelementptr inbounds nuw i8, ptr %.0315, i64 48 ; 11 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %.0315, i64 52
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !8
  %i.arb = mul nsw i32 %i.ara, %i.aqw
  %i.arc = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.ard = sdiv i32 %i.arb, %i.arc
  %i.are = getelementptr inbounds nuw i8, ptr %i.apd, i64 52
  store i32 %i.ard, ptr %i.are, align 4, !tbaa !8
  %i.arf = getelementptr inbounds nuw i8, ptr %.0315, i64 60 ; 2 uses
  %i.arg = load i8, ptr %i.arf, align 4
  %i.arh = and i8 %i.arg, -128                    ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apd, i64 60 ; 3 uses
  %i.arj = load i8, ptr %i.ari, align 4
  %i.ark = and i8 %i.arj, 127
  %i.arl = or disjoint i8 %i.ark, %i.arh
  store i8 %i.arl, ptr %i.ari, align 4
  %i.arm = load i8, ptr %i.arf, align 4
  %i.arn = and i8 %i.arm, 127
  %i.aro = or disjoint i8 %i.arn, %i.arh
  store i8 %i.aro, ptr %i.ari, align 4
  %i.arp = getelementptr inbounds nuw i8, ptr %.0315, i64 56
  %i.arq = load i32, ptr %i.arp, align 8, !tbaa !8
  %i.arr = mul nsw i32 %i.arq, %i.aqw
  %i.ars = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.art = sdiv i32 %i.arr, %i.ars
  %i.aru = getelementptr inbounds nuw i8, ptr %i.apd, i64 56 ; 2 uses
  store i32 %i.art, ptr %i.aru, align 8, !tbaa !8
  %i.arv = load ptr, ptr @finfo, align 8, !tbaa !13 ; 4 uses
  %i.arw = zext i32 %i.aqk to i64                 ; 2 uses
  %i.arx = getelementptr inbounds nuw [96 x i8], ptr %i.arv, i64 %i.arw ; 5 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 40
  store ptr %i.apd, ptr %i.ary, align 8, !tbaa !23
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arx, i64 48
  store ptr %.2329, ptr %i.arz, align 8, !tbaa !69
  %i.asa = getelementptr inbounds nuw i8, ptr %.0315, i64 40 ; 11 uses
  %i.asb = load i16, ptr %i.asa, align 8
  %i.asc = and i16 %i.asb, 4095
  %i.asd = zext nneg i16 %i.asc to i64
  %i.ase = getelementptr inbounds nuw [96 x i8], ptr %i.arv, i64 %i.asd
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 56
  %i.asg = load i16, ptr %i.asf, align 8, !tbaa !70
  %i.ash = sext i16 %i.asg to i32
  %i.asi = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.asj = mul nsw i32 %i.asi, %i.ash
  %i.ask = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.asl = sdiv i32 %i.asj, %i.ask
  %i.asm = trunc i32 %i.asl to i16
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arx, i64 56
  store i16 %i.asm, ptr %i.asn, align 8, !tbaa !70
  %i.aso = load i16, ptr %i.asa, align 8
  %i.asp = and i16 %i.aso, 4095
  %i.asq = zext nneg i16 %i.asp to i64
  %i.asr = getelementptr inbounds nuw [96 x i8], ptr %i.arv, i64 %i.asq
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 58
  %i.ast = load i16, ptr %i.ass, align 2, !tbaa !71
  %i.asu = sext i16 %i.ast to i32
  %i.asv = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.asw = mul nsw i32 %i.asv, %i.asu
  %i.asx = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.asy = sdiv i32 %i.asw, %i.asx
  %i.asz = trunc i32 %i.asy to i16
  %i.ata = getelementptr inbounds nuw i8, ptr %i.arx, i64 58
  store i16 %i.asz, ptr %i.ata, align 2, !tbaa !71
  %i.atb = call noalias dereferenceable_or_null(2560) ptr @malloc(i64 noundef 2560) #15 ; 2 uses
  store ptr %i.atb, ptr %i.arx, align 8, !tbaa !72
  %i.atc = icmp eq ptr %i.atb, null
  br i1 %i.atc, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.atd = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 53, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %i.af) #14 ; 0 uses
  %.pre581 = load ptr, ptr @finfo, align 8, !tbaa !13
  %.pre582 = load i32, ptr @font_count, align 4, !tbaa !4
  %.pre588 = zext i32 %.pre582 to i64
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %.pre-phi589 = phi i64 [ %.pre588, %bb.jn ], [ %i.arw, %bb.jm ]
  %i.ate = phi ptr [ %.pre581, %bb.jn ], [ %i.arv, %bb.jm ] ; 7 uses
  %i.atf = load i16, ptr %i.asa, align 8
  %i.atg = and i16 %i.atf, 4095
  %i.ath = zext nneg i16 %i.atg to i64
  %i.ati = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 8
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !73 ; 2 uses
  %i.atl = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %.pre-phi589 ; 3 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 8
  store ptr %i.atk, ptr %i.atm, align 8, !tbaa !73
  %i.atn = load i16, ptr %i.aql, align 8
  %i.ato = and i16 %i.atn, 4095
  %i.atp = zext nneg i16 %i.ato to i64
  %i.atq = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.atp
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !72
  %i.ats = load i16, ptr %i.asa, align 8
  %i.att = and i16 %i.ats, 4095
  %i.atu = zext nneg i16 %i.att to i64
  %i.atv = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.atu
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !72
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jr
  %indvars.iv562 = phi i64 [ 0, %bb.jo ], [ %indvars.iv.next563, %bb.jr ] ; 4 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atk, i64 %indvars.iv562
  %i.aty = load i8, ptr %i.atx, align 1, !tbaa !8
  %.not379 = icmp eq i8 %i.aty, 1
  br i1 %.not379, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.atz = getelementptr inbounds nuw [10 x i8], ptr %i.atw, i64 %indvars.iv562 ; 5 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 4
  %i.aub = load i16, ptr %i.aua, align 2, !tbaa !87
  %i.auc = sext i16 %i.aub to i32
  %i.aud = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.aue = mul nsw i32 %i.aud, %i.auc
  %i.auf = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.aug = sdiv i32 %i.aue, %i.auf
  %i.auh = trunc i32 %i.aug to i16
  %i.aui = getelementptr inbounds nuw [10 x i8], ptr %i.atr, i64 %indvars.iv562 ; 5 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 4
  store i16 %i.auh, ptr %i.auj, align 2, !tbaa !87
  %i.auk = getelementptr inbounds nuw i8, ptr %i.atz, i64 6
  %i.aul = load i16, ptr %i.auk, align 2, !tbaa !58
  %i.aum = sext i16 %i.aul to i32
  %i.aun = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.auo = mul nsw i32 %i.aun, %i.aum
  %i.aup = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.auq = sdiv i32 %i.auo, %i.aup
  %i.aur = trunc i32 %i.auq to i16
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aui, i64 6
  store i16 %i.aur, ptr %i.aus, align 2, !tbaa !58
  %i.aut = getelementptr inbounds nuw i8, ptr %i.atz, i64 2
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !88
  %i.auv = sext i16 %i.auu to i32
  %i.auw = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.aux = mul nsw i32 %i.auw, %i.auv
  %i.auy = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.auz = sdiv i32 %i.aux, %i.auy
  %i.ava = trunc i32 %i.auz to i16
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aui, i64 2
  store i16 %i.ava, ptr %i.avb, align 2, !tbaa !88
  %i.avc = load i16, ptr %i.atz, align 2, !tbaa !89
  %i.avd = sext i16 %i.avc to i32
  %i.ave = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.avf = mul nsw i32 %i.ave, %i.avd
  %i.avg = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.avh = sdiv i32 %i.avf, %i.avg
  %i.avi = trunc i32 %i.avh to i16
  store i16 %i.avi, ptr %i.aui, align 2, !tbaa !89
  %i.avj = getelementptr inbounds nuw i8, ptr %i.atz, i64 8
  %i.avk = load i16, ptr %i.avj, align 2, !tbaa !90
  %i.avl = sext i16 %i.avk to i32
  %i.avm = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.avn = mul nsw i32 %i.avm, %i.avl
  %i.avo = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.avp = sdiv i32 %i.avn, %i.avo
  %i.avq = trunc i32 %i.avp to i16
  %i.avr = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  store i16 %i.avq, ptr %i.avr, align 2, !tbaa !90
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, 256
  br i1 %exitcond565.not, label %bb.js, label %bb.jp, !llvm.loop !91

bb.js:                                            ; preds = %bb.jr
  %i.avs = load i16, ptr %i.asa, align 8
  %i.avt = and i16 %i.avs, 4095
  %i.avu = zext nneg i16 %i.avt to i64
  %i.avv = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.avu
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 16
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !74
  %i.avy = getelementptr inbounds nuw i8, ptr %i.atl, i64 16
  store ptr %i.avx, ptr %i.avy, align 8, !tbaa !74
  %i.avz = load i16, ptr %i.asa, align 8
  %i.awa = and i16 %i.avz, 4095
  %i.awb = zext nneg i16 %i.awa to i64
  %i.awc = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.awb
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 32
  %i.awe = load i32, ptr %i.awd, align 8, !tbaa !76 ; 4 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.atl, i64 32
  store i32 %i.awe, ptr %i.awf, align 8, !tbaa !76
  %i.awg = load i16, ptr %i.asa, align 8
  %i.awh = and i16 %i.awg, 4095
  %i.awi = zext nneg i16 %i.awh to i64
  %i.awj = getelementptr inbounds nuw [96 x i8], ptr %i.ate, i64 %i.awi
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 24
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !75
  %i.awm = sext i32 %i.awe to i64
  %i.awn = mul nsw i64 %i.awm, 6
  %i.awo = call noalias ptr @malloc(i64 noundef %i.awn) #15 ; 3 uses
  %i.awp = icmp eq ptr %i.awo, null
  br i1 %i.awp, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.awq = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 54, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %i.af) #14 ; 0 uses
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.awr = icmp sgt i32 %i.awe, 1
  br i1 %i.awr, label %.lr.ph514.preheader, label %._crit_edge515

.lr.ph514.preheader:                              ; preds = %bb.ju
  %wide.trip.count = zext nneg i32 %i.awe to i64
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %bb.jw
  %indvars.iv566 = phi i64 [ 1, %.lr.ph514.preheader ], [ %indvars.iv.next567, %bb.jw ] ; 3 uses
  %i.aws = getelementptr inbounds nuw [6 x i8], ptr %i.awl, i64 %indvars.iv566 ; 3 uses
  %i.awt = load i8, ptr %i.aws, align 2, !tbaa !62 ; 2 uses
  %i.awu = getelementptr inbounds nuw [6 x i8], ptr %i.awo, i64 %indvars.iv566 ; 3 uses
  store i8 %i.awt, ptr %i.awu, align 2, !tbaa !62
  %.not378 = icmp eq i8 %i.awt, 0
  br i1 %.not378, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %.lr.ph514
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aws, i64 2
  %i.aww = load i16, ptr %i.awv, align 2, !tbaa !64
  %i.awx = sext i16 %i.aww to i32
  %i.awy = load i32, ptr %i.aqx, align 8, !tbaa !8 ; 2 uses
  %i.awz = mul nsw i32 %i.awy, %i.awx
  %i.axa = load i32, ptr %i.aqy, align 8, !tbaa !8 ; 2 uses
  %i.axb = sdiv i32 %i.awz, %i.axa
  %i.axc = trunc i32 %i.axb to i16
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awu, i64 2
  store i16 %i.axc, ptr %i.axd, align 2, !tbaa !64
  %i.axe = getelementptr inbounds nuw i8, ptr %i.aws, i64 4
  %i.axf = load i16, ptr %i.axe, align 2, !tbaa !65
  %i.axg = sext i16 %i.axf to i32
  %i.axh = mul nsw i32 %i.awy, %i.axg
  %i.axi = sdiv i32 %i.axh, %i.axa
  %i.axj = trunc i32 %i.axi to i16
  %i.axk = getelementptr inbounds nuw i8, ptr %i.awu, i64 4
  store i16 %i.axj, ptr %i.axk, align 2, !tbaa !65
  br label %bb.jw

bb.jw:                                            ; preds = %.lr.ph514, %bb.jv
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count
  br i1 %exitcond569.not, label %._crit_edge515, label %.lr.ph514, !llvm.loop !92

._crit_edge515:                                   ; preds = %bb.jw, %bb.ju
  %i.axl = load ptr, ptr @finfo, align 8, !tbaa !13 ; 5 uses
  %i.axm = load i32, ptr @font_count, align 4, !tbaa !4
  %i.axn = zext i32 %i.axm to i64
  %i.axo = getelementptr inbounds nuw [96 x i8], ptr %i.axl, i64 %i.axn ; 6 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 24
  store ptr %i.awo, ptr %i.axp, align 8, !tbaa !75
  %i.axq = load i16, ptr %i.asa, align 8
  %i.axr = and i16 %i.axq, 4095
  %i.axs = zext nneg i16 %i.axr to i64
  %i.axt = getelementptr inbounds nuw [96 x i8], ptr %i.axl, i64 %i.axs
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 64
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !77
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axo, i64 64
  store ptr %i.axv, ptr %i.axw, align 8, !tbaa !77
  %i.axx = load i16, ptr %i.asa, align 8
  %i.axy = and i16 %i.axx, 4095
  %i.axz = zext nneg i16 %i.axy to i64
  %i.aya = getelementptr inbounds nuw [96 x i8], ptr %i.axl, i64 %i.axz
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 72
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !78
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axo, i64 72
  store ptr %i.ayc, ptr %i.ayd, align 8, !tbaa !78
  %i.aye = load i16, ptr %i.asa, align 8
  %i.ayf = and i16 %i.aye, 4095
  %i.ayg = zext nneg i16 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [96 x i8], ptr %i.axl, i64 %i.ayg
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 80
  %i.ayj = load ptr, ptr %i.ayi, align 8, !tbaa !79
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axo, i64 80
  store ptr %i.ayj, ptr %i.ayk, align 8, !tbaa !79
  %i.ayl = load i16, ptr %i.asa, align 8
  %i.aym = and i16 %i.ayl, 4095
  %i.ayn = zext nneg i16 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw [96 x i8], ptr %i.axl, i64 %i.ayn
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 88
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !80 ; 5 uses
  %.not377 = icmp eq ptr %i.ayq, null
  br i1 %.not377, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %._crit_edge515
  %i.ayr = load i16, ptr %i.ayq, align 2, !tbaa !34 ; 5 uses
  %wide.trip.count573 = zext i16 %i.ayr to i64
  %i.ays = sext i16 %i.ayr to i64
  %i.ayt = shl nsw i64 %i.ays, 1
  %i.ayu = call noalias ptr @malloc(i64 noundef %i.ayt) #15 ; 6 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.axo, i64 88
  store ptr %i.ayu, ptr %i.ayv, align 8, !tbaa !80
  %i.ayw = icmp eq ptr %i.ayu, null
  br i1 %i.ayw, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.ayx = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 55, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %i.af) #14 ; 0 uses
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  store i16 %i.ayr, ptr %i.ayu, align 2, !tbaa !34
  %i.ayy = icmp sgt i16 %i.ayr, 1
  br i1 %i.ayy, label %.lr.ph518.preheader, label %.loopexit

.lr.ph518.preheader:                              ; preds = %bb.jz
  %.pre583 = load i32, ptr %i.aqx, align 8, !tbaa !8 ; 3 uses
  %.pre584 = load i32, ptr %i.aqy, align 8, !tbaa !8 ; 3 uses
  %i.ayz = add nsw i64 %wide.trip.count573, -1    ; 3 uses
  %xtraiter765 = and i64 %i.ayz, 1
  %i.aza = icmp eq i16 %i.ayr, 2
  br i1 %i.aza, label %.lr.ph518.epil.preheader, label %.lr.ph518.preheader.new

.lr.ph518.preheader.new:                          ; preds = %.lr.ph518.preheader
  %unroll_iter = and i64 %i.ayz, -2
  br label %.lr.ph518

.lr.ph518:                                        ; preds = %.lr.ph518, %.lr.ph518.preheader.new
  %indvars.iv570 = phi i64 [ 1, %.lr.ph518.preheader.new ], [ %indvars.iv.next571.1, %.lr.ph518 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph518.preheader.new ], [ %niter.next.1, %.lr.ph518 ]
  %i.azb = getelementptr inbounds nuw [2 x i8], ptr %i.ayq, i64 %indvars.iv570
  %i.azc = load i16, ptr %i.azb, align 2, !tbaa !34
  %i.azd = sext i16 %i.azc to i32
  %i.aze = mul nsw i32 %.pre583, %i.azd
  %i.azf = sdiv i32 %i.aze, %.pre584
  %i.azg = trunc i32 %i.azf to i16
  %i.azh = getelementptr inbounds nuw [2 x i8], ptr %i.ayu, i64 %indvars.iv570
  store i16 %i.azg, ptr %i.azh, align 2, !tbaa !34
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.azi = getelementptr inbounds nuw [2 x i8], ptr %i.ayq, i64 %indvars.iv.next571
  %i.azj = load i16, ptr %i.azi, align 2, !tbaa !34
  %i.azk = sext i16 %i.azj to i32
  %i.azl = mul nsw i32 %.pre583, %i.azk
  %i.azm = sdiv i32 %i.azl, %.pre584
  %i.azn = trunc i32 %i.azm to i16
  %i.azo = getelementptr inbounds nuw [2 x i8], ptr %i.ayu, i64 %indvars.iv.next571
  store i16 %i.azn, ptr %i.azo, align 2, !tbaa !34
  %indvars.iv.next571.1 = add nuw nsw i64 %indvars.iv570, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph518, !llvm.loop !93

bb.ka:                                            ; preds = %._crit_edge515
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axo, i64 88
  store ptr null, ptr %i.azp, align 8, !tbaa !80
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph518
  %lcmp.mod766.not = icmp eq i64 %xtraiter765, 0
  br i1 %lcmp.mod766.not, label %.loopexit, label %.lr.ph518.epil.preheader

.lr.ph518.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph518.preheader
  %indvars.iv570.epil.init = phi i64 [ 1, %.lr.ph518.preheader ], [ %indvars.iv.next571.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod767 = trunc i64 %i.ayz to i1
  call void @llvm.assume(i1 %lcmp.mod767)
  %i.azq = getelementptr inbounds nuw [2 x i8], ptr %i.ayq, i64 %indvars.iv570.epil.init
  %i.azr = load i16, ptr %i.azq, align 2, !tbaa !34
  %i.azs = sext i16 %i.azr to i32
  %i.azt = mul nsw i32 %.pre583, %i.azs
  %i.azu = sdiv i32 %i.azt, %.pre584
  %i.azv = trunc i32 %i.azu to i16
  %i.azw = getelementptr inbounds nuw [2 x i8], ptr %i.ayu, i64 %indvars.iv570.epil.init
  store i16 %i.azv, ptr %i.azw, align 2, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph518.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.jz, %bb.ka
  %i.azx = load i32, ptr @font_count, align 4, !tbaa !4
  %i.azy = load i32, ptr %i.z, align 4
  %i.azz = and i32 %i.azx, 4095
  %i.baa = and i32 %i.azy, -4096
  %i.bab = or disjoint i32 %i.baa, %i.azz
  store i32 %i.bab, ptr %i.z, align 4
  %i.bac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bad = load i16, ptr %i.bac, align 4
  %i.bae = and i16 %i.bad, 255
  %i.baf = or disjoint i16 %i.bae, 9728
  store i16 %i.baf, ptr %i.bac, align 4
  %i.bag = load i32, ptr %i.aru, align 8, !tbaa !8
  %i.bah = trunc i32 %i.bag to i16
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.bah, ptr %i.bai, align 2, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.preheader448, %bb.h, %bb.g, %bb.e, %bb.c, %bb.ia, %bb.ib, %._crit_edge, %.loopexit, %bb.ix, %bb.iu, %bb.aa, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @GetGap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @FontWordSize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8
  %.off = add i8 %i.c, -11
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.e = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %i.d, ptr noundef nonnull @.str.40) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !8
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = and i32 %i.i, 4095
  %i.k = load i32, ptr @font_count, align 4
  %i.l = freeze i32 %i.k
  %i.m = add nsw i32 %i.j, -1
  %or.cond.not = icmp ult i32 %i.m, %i.l
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 56, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #14 ; 0 uses
  %.pre = load i32, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = phi i32 [ %i.i, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %i.p = and i32 %i.o, 4190208
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @BackEnd, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !94
  %.not159 = icmp eq i32 %i.t, 0
  br i1 %.not159, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 57, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #14 ; 0 uses
  %.pre202 = load i32, ptr %i.h, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.v = phi i32 [ %.pre202, %bb.h ], [ %i.o, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  %i.w = and i32 %i.v, 528482304
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 58, ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #14 ; 0 uses
  %.pre203 = load i32, ptr %i.h, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i32 [ %.pre203, %bb.j ], [ %i.v, %bb.i ]
  %i.aa = load ptr, ptr @finfo, align 8, !tbaa !13
  %i.ab = and i32 %i.z, 4095
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.aa, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, 127
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !95
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2945 ; 3 uses
  %.pre204 = load i8, ptr %i.f, align 8, !tbaa !8
  br label %bb.l
end_hunk_0
