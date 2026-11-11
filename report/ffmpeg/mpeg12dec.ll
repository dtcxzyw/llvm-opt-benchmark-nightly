Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg12dec?download=true
inline.NumInlined: 187
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@decode_chunks:bb.a
  %i.aok = load i8, ptr %i.aoj, align 1
  %i.aol = zext i8 %i.aok to i64
  %i.aom = or i64 %i.aoi, %i.aol
  %i.aon = icmp ne i64 %i.aom, 0
  %i.aoo = zext i1 %i.aon to i32
  %.not58.10.i = icmp eq i32 %i.aoo, 0
  br i1 %.not58.10.i, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.aop = getelementptr inbounds nuw i8, ptr %i.fm, i64 11 ; 2 uses
  %i.aoq = load i64, ptr %i.aop, align 1
  %i.aor = xor i64 %i.aoq, 6005626275690796032
  %i.aos = getelementptr i8, ptr %i.aop, i64 8
  %i.aot = load i8, ptr %i.aos, align 1
  %i.aou = zext i8 %i.aot to i64
  %i.aov = or i64 %i.aor, %i.aou
  %i.aow = icmp ne i64 %i.aov, 0
  %i.aox = zext i1 %i.aow to i32
  %.not58.11.i = icmp eq i32 %i.aox, 0
  br i1 %.not58.11.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.fm, i64 12 ; 2 uses
  %i.aoz = load i64, ptr %i.aoy, align 1
  %i.apa = xor i64 %i.aoz, 6005626275690796032
  %i.apb = getelementptr i8, ptr %i.aoy, i64 8
  %i.apc = load i8, ptr %i.apb, align 1
  %i.apd = zext i8 %i.apc to i64
  %i.ape = or i64 %i.apa, %i.apd
  %i.apf = icmp ne i64 %i.ape, 0
  %i.apg = zext i1 %i.apf to i32
  %.not58.12.i = icmp eq i32 %i.apg, 0
  br i1 %.not58.12.i, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.aph = getelementptr inbounds nuw i8, ptr %i.fm, i64 13 ; 2 uses
  %i.api = load i64, ptr %i.aph, align 1
  %i.apj = xor i64 %i.api, 6005626275690796032
  %i.apk = getelementptr i8, ptr %i.aph, i64 8
  %i.apl = load i8, ptr %i.apk, align 1
  %i.apm = zext i8 %i.apl to i64
  %i.apn = or i64 %i.apj, %i.apm
  %i.apo = icmp ne i64 %i.apn, 0
  %i.app = zext i1 %i.apo to i32
  %.not58.13.i = icmp eq i32 %i.app, 0
  br i1 %.not58.13.i, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.apq = getelementptr inbounds nuw i8, ptr %i.fm, i64 14 ; 2 uses
  %i.apr = load i64, ptr %i.apq, align 1
  %i.aps = xor i64 %i.apr, 6005626275690796032
  %i.apt = getelementptr i8, ptr %i.apq, i64 8
  %i.apu = load i8, ptr %i.apt, align 1
  %i.apv = zext i8 %i.apu to i64
  %i.apw = or i64 %i.aps, %i.apv
  %i.apx = icmp ne i64 %i.apw, 0
  %i.apy = zext i1 %i.apx to i32
  %.not58.14.i = icmp eq i32 %i.apy, 0
  br i1 %.not58.14.i, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.apz = getelementptr inbounds nuw i8, ptr %i.fm, i64 15 ; 2 uses
  %i.aqa = load i64, ptr %i.apz, align 1
  %i.aqb = xor i64 %i.aqa, 6005626275690796032
  %i.aqc = getelementptr i8, ptr %i.apz, i64 8
  %i.aqd = load i8, ptr %i.aqc, align 1
  %i.aqe = zext i8 %i.aqd to i64
  %i.aqf = or i64 %i.aqb, %i.aqe
  %i.aqg = icmp ne i64 %i.aqf, 0
  %i.aqh = zext i1 %i.aqg to i32
  %.not58.15.i = icmp eq i32 %i.aqh, 0
  br i1 %.not58.15.i, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.aqj = load i64, ptr %i.aqi, align 1
  %i.aqk = xor i64 %i.aqj, 6005626275690796032
  %i.aql = getelementptr i8, ptr %i.aqi, i64 8
  %i.aqm = load i8, ptr %i.aql, align 1
  %i.aqn = zext i8 %i.aqm to i64
  %i.aqo = or i64 %i.aqk, %i.aqn
  %i.aqp = icmp ne i64 %i.aqo, 0
  %i.aqq = zext i1 %i.aqp to i32
  %.not58.16.i = icmp eq i32 %i.aqq, 0
  br i1 %.not58.16.i, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.fm, i64 17 ; 2 uses
  %i.aqs = load i64, ptr %i.aqr, align 1
  %i.aqt = xor i64 %i.aqs, 6005626275690796032
  %i.aqu = getelementptr i8, ptr %i.aqr, i64 8
  %i.aqv = load i8, ptr %i.aqu, align 1
  %i.aqw = zext i8 %i.aqv to i64
  %i.aqx = or i64 %i.aqt, %i.aqw
  %i.aqy = icmp ne i64 %i.aqx, 0
  %i.aqz = zext i1 %i.aqy to i32
  %.not58.17.i = icmp eq i32 %i.aqz, 0
  br i1 %.not58.17.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.ara = getelementptr inbounds nuw i8, ptr %i.fm, i64 18 ; 2 uses
  %i.arb = load i64, ptr %i.ara, align 1
  %i.arc = xor i64 %i.arb, 6005626275690796032
  %i.ard = getelementptr i8, ptr %i.ara, i64 8
  %i.are = load i8, ptr %i.ard, align 1
  %i.arf = zext i8 %i.are to i64
  %i.arg = or i64 %i.arc, %i.arf
  %i.arh = icmp ne i64 %i.arg, 0
  %i.ari = zext i1 %i.arh to i32
  %.not58.18.i = icmp eq i32 %i.ari, 0
  br i1 %.not58.18.i, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.arj = getelementptr inbounds nuw i8, ptr %i.fm, i64 19 ; 2 uses
  %i.ark = load i64, ptr %i.arj, align 1
  %i.arl = xor i64 %i.ark, 6005626275690796032
  %i.arm = getelementptr i8, ptr %i.arj, i64 8
  %i.arn = load i8, ptr %i.arm, align 1
  %i.aro = zext i8 %i.arn to i64
  %i.arp = or i64 %i.arl, %i.aro
  %i.arq = icmp ne i64 %i.arp, 0
  %i.arr = zext i1 %i.arq to i32
  %.not58.19.i = icmp eq i32 %i.arr, 0
  br i1 %.not58.19.i, label %bb.gd, label %.loopexit.thread.i

bb.gd:                                            ; preds = %bb.gc
  store i32 1, ptr %i.aku, align 8, !tbaa !185
  br label %.loopexit.thread.i

.loopexit.i:                                      ; preds = %bb.eq
  %i.ars = icmp sgt i32 %i.fp, 4
  br i1 %i.ars, label %.loopexit.thread.i, label %.thread62.i

.loopexit.thread.i:                               ; preds = %.loopexit.i, %bb.gd, %bb.gc
  %i.art = load i8, ptr %i.fm, align 1, !tbaa !56 ; 3 uses
  %i.aru = icmp eq i8 %i.art, 68
  br i1 %i.aru, label %bb.ge, label %bb.gj

bb.ge:                                            ; preds = %.loopexit.thread.i
  %i.arv = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.arw = load i8, ptr %i.arv, align 1, !tbaa !56
  %i.arx = icmp eq i8 %i.arw, 84
  br i1 %i.arx, label %bb.gf, label %bb.gj

bb.gf:                                            ; preds = %bb.ge
  %i.ary = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.arz = load i8, ptr %i.ary, align 1, !tbaa !56
  %i.asa = icmp eq i8 %i.arz, 71
  br i1 %i.asa, label %bb.gg, label %bb.gj

bb.gg:                                            ; preds = %bb.gf
  %i.asb = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.asc = load i8, ptr %i.asb, align 1, !tbaa !56
  %i.asd = icmp eq i8 %i.asc, 49
  br i1 %i.asd, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  %i.ase = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !56 ; 2 uses
  %.not5680.i = icmp slt i8 %i.asf, 0
  %spec.select.v.i = select i1 %.not5680.i, i64 7, i64 5 ; 2 uses
  %i.asg = and i8 %i.asf, 64
  %.not57.i393 = icmp eq i8 %i.asg, 0
  %i.ash = icmp samesign uge i64 %spec.select.v.i, %i.akr
  %or.cond61.i = or i1 %.not57.i393, %i.ash
  br i1 %or.cond61.i, label %slice_end.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %spec.select.i394 = getelementptr inbounds nuw i8, ptr %i.fm, i64 %spec.select.v.i
  %i.asi = getelementptr inbounds nuw i8, ptr %i.aks, i64 6016
  store i32 1, ptr %i.asi, align 16, !tbaa !113
  %i.asj = load i8, ptr %spec.select.i394, align 1, !tbaa !56
  %i.ask = and i8 %i.asj, 15
  %i.asl = getelementptr inbounds nuw i8, ptr %i.aks, i64 6012
  store i8 %i.ask, ptr %i.asl, align 4, !tbaa !114
  br label %slice_end.exit

bb.gj:                                            ; preds = %bb.gg, %bb.gf, %bb.ge, %.loopexit.thread.i
  %.not.i389 = icmp eq i32 %i.fp, 5
  br i1 %.not.i389, label %.thread.i392, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.asm = icmp eq i8 %i.art, 74
  br i1 %i.asm, label %bb.gl, label %bb.gv

bb.gl:                                            ; preds = %bb.gk
  %i.asn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !56
  %i.asp = icmp eq i8 %i.aso, 80
  br i1 %i.asp, label %bb.gm, label %bb.gv

bb.gm:                                            ; preds = %bb.gl
  %i.asq = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !56
  %i.ass = icmp eq i8 %i.asr, 51
  br i1 %i.ass, label %bb.gn, label %bb.gv

bb.gn:                                            ; preds = %bb.gm
  %i.ast = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !56
  %i.asv = icmp eq i8 %i.asu, 68
  br i1 %i.asv, label %bb.go, label %bb.gv

bb.go:                                            ; preds = %bb.gn
  %i.asw = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !56
  %i.asy = icmp eq i8 %i.asx, 3
  br i1 %i.asy, label %bb.gp, label %bb.gv

bb.gp:                                            ; preds = %bb.go
  %i.asz = getelementptr inbounds nuw i8, ptr %i.fm, i64 5
  %i.ata = load i8, ptr %i.asz, align 1, !tbaa !56
  %.fr.i = freeze i8 %i.ata                       ; 2 uses
  %i.atb = and i8 %.fr.i, 127                     ; 2 uses
  %i.atc = add nsw i8 %i.atb, -3
  %or.cond.i391 = icmp ult i8 %i.atc, 2
  br i1 %or.cond.i391, label %bb.gq, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.gp
  switch i8 %.fr.i, label %slice_end.exit [
    i8 -93, label %bb.gq
    i8 -120, label %bb.gq
    i8 35, label %bb.gq
    i8 8, label %bb.gq
  ]

bb.gq:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.gp
  %i.atd = getelementptr inbounds nuw i8, ptr %i.aks, i64 5996
  store i32 1, ptr %i.atd, align 4, !tbaa !115
  switch i8 %i.atb, label %slice_end.exit [
    i8 3, label %bb.gr
    i8 4, label %bb.gs
    i8 8, label %bb.gt
    i8 35, label %bb.gu
  ]

bb.gr:                                            ; preds = %bb.gq
  %i.ate = getelementptr inbounds nuw i8, ptr %i.aks, i64 5992
  store i32 1, ptr %i.ate, align 8, !tbaa !116
  br label %slice_end.exit

bb.gs:                                            ; preds = %bb.gq
  %i.atf = getelementptr inbounds nuw i8, ptr %i.aks, i64 5992
  store i32 2, ptr %i.atf, align 8, !tbaa !116
  br label %slice_end.exit

bb.gt:                                            ; preds = %bb.gq
  %i.atg = getelementptr inbounds nuw i8, ptr %i.aks, i64 5992
  store i32 0, ptr %i.atg, align 8, !tbaa !116
  br label %slice_end.exit

bb.gu:                                            ; preds = %bb.gq
  %i.ath = getelementptr inbounds nuw i8, ptr %i.aks, i64 5992
  store i32 5, ptr %i.ath, align 8, !tbaa !116
  br label %slice_end.exit

bb.gv:                                            ; preds = %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk
  %i.ati = getelementptr inbounds nuw i8, ptr %i.aks, i64 6008
  %i.atj = load i32, ptr %i.ati, align 8, !tbaa !204 ; 3 uses
  %.not.i.i390 = icmp eq i32 %i.atj, 0
  %i.atk = icmp ult i32 %i.atj, 2
  br i1 %i.atk, label %bb.gw, label %.thread75.i

.thread.i392:                                     ; preds = %bb.gj
  %i.atl = getelementptr inbounds nuw i8, ptr %i.aks, i64 6008
  %i.atm = load i32, ptr %i.atl, align 8, !tbaa !204 ; 2 uses
  %.not.i103.i = icmp eq i32 %i.atm, 0
  br i1 %.not.i103.i, label %.thread276.i.i, label %.thread75.i

.thread62.i:                                      ; preds = %.loopexit.i
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aks, i64 6008
  %i.ato = load i32, ptr %i.atn, align 8, !tbaa !204 ; 2 uses
  %.not.i63.i = icmp eq i32 %i.ato, 0
  br i1 %.not.i63.i, label %bb.hm, label %.thread75.i

bb.gw:                                            ; preds = %bb.gv
  %i.atp = icmp eq i8 %i.art, 71
  br i1 %i.atp, label %bb.gx, label %bb.hl

bb.gx:                                            ; preds = %bb.gw
  %i.atq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !56
  %i.ats = icmp eq i8 %i.atr, 65
  br i1 %i.ats, label %bb.gy, label %bb.hl

bb.gy:                                            ; preds = %bb.gx
  %i.att = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !56
  %i.atv = icmp eq i8 %i.atu, 57
  br i1 %i.atv, label %bb.gz, label %bb.hl

bb.gz:                                            ; preds = %bb.gy
  %i.atw = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.atx = load i8, ptr %i.atw, align 1, !tbaa !56
  %i.aty = icmp eq i8 %i.atx, 52
  br i1 %i.aty, label %bb.ha, label %bb.hl

bb.ha:                                            ; preds = %bb.gz
  %i.atz = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.aua = load i8, ptr %i.atz, align 1, !tbaa !56
  %i.aub = icmp eq i8 %i.aua, 3
  br i1 %i.aub, label %bb.hb, label %bb.hl

bb.hb:                                            ; preds = %bb.ha
  %i.auc = getelementptr inbounds nuw i8, ptr %i.fm, i64 5
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !56
  %i.aue = zext i8 %i.aud to i32                  ; 2 uses
  %i.auf = and i32 %i.aue, 64
  %.not229.i.i = icmp eq i32 %i.auf, 0
  br i1 %.not229.i.i, label %bb.hl, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aug = and i32 %i.aue, 31                     ; 2 uses
  %.not241.i.i = icmp eq i32 %i.aug, 0
  br i1 %.not241.i.i, label %slice_end.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.auh = mul nuw nsw i32 %i.aug, 3              ; 2 uses
  %i.aui = add nuw nsw i32 %i.auh, 7
  %.not242.i.i = icmp samesign ugt i32 %i.aui, %i.fp
  br i1 %.not242.i.i, label %slice_end.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aks, i64 6000 ; 3 uses
  %i.auk = load ptr, ptr %i.auj, align 16, !tbaa !117 ; 2 uses
  %.not243.i.i = icmp eq ptr %i.auk, null
  br i1 %.not243.i.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 16
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !207
  %i.aun = shl i64 %i.aum, 32
  %i.auo = ashr exact i64 %i.aun, 32
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.aup = phi i64 [ %i.auo, %bb.hf ], [ 0, %bb.he ] ; 2 uses
  %i.auq = zext nneg i32 %i.auh to i64            ; 2 uses
  %i.aur = add nsw i64 %i.aup, %i.auq             ; 2 uses
  %i.aus = icmp ult i64 %i.aur, 6001
  br i1 %i.aus, label %bb.hh, label %slice_end.exit

bb.hh:                                            ; preds = %bb.hg
  %i.aut = call i32 @av_buffer_realloc(ptr noundef nonnull %i.auj, i64 noundef %i.aur) #11
  %i.auu = icmp sgt i32 %i.aut, -1
  br i1 %i.auu, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.auv = load ptr, ptr %i.auj, align 16, !tbaa !117
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 8
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !208
  %i.auy = getelementptr inbounds i8, ptr %i.aux, i64 %i.aup
  %i.auz = getelementptr inbounds nuw i8, ptr %i.fm, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.auy, ptr nonnull readonly align 1 %i.auz, i64 %i.auq, i1 false)
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.ava = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 6008 ; 2 uses
  %i.avc = load i32, ptr %i.avb, align 8, !tbaa !204
  %.not.i.i.i = icmp eq i32 %i.avc, 0
  br i1 %.not.i.i.i, label %bb.hk, label %slice_end.exit

bb.hk:                                            ; preds = %bb.hj
  store i32 1, ptr %i.avb, align 8, !tbaa !204
end_hunk_0
