Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %.not418 = icmp eq i32 %i.anj, 0
  br i1 %.not418, label %bb.hh, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ank = select i1 %.not75.i, ptr @.str.10, ptr @.str.11
  %i.anl = select i1 %i.dn, ptr @.str.12, ptr @.str.13
  %i.anm = select i1 %spec.select.not, ptr @.str.16, ptr @.str.15
  %i.ann = select i1 %i.bd, ptr @.str.14, ptr %i.anm
  switch i32 %.0394, label %bb.hg [
    i32 0, label %_method_str.exit
    i32 1, label %bb.gv
    i32 2, label %bb.gw
    i32 5, label %bb.gx
    i32 6, label %bb.gy
    i32 3, label %bb.gz
    i32 4, label %bb.ha
    i32 1024, label %bb.hb
    i32 1025, label %bb.hc
    i32 1026, label %bb.hd
    i32 1028, label %bb.he
    i32 1027, label %bb.gz
    i32 1029, label %bb.ha
    i32 7, label %bb.hf
  ]

bb.gv:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.gw:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.gx:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.gy:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.gz:                                            ; preds = %bb.gu, %bb.gu
  br label %_method_str.exit

bb.ha:                                            ; preds = %bb.gu, %bb.gu
  br label %_method_str.exit

bb.hb:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.hc:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.hd:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.he:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.hf:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.hg:                                            ; preds = %bb.gu
  br label %_method_str.exit

_method_str.exit:                                 ; preds = %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.hg
  %.0.i468 = phi ptr [ @.str.207, %bb.hg ], [ @.str.175, %bb.hf ], [ @.str.201, %bb.gv ], [ @.str.150, %bb.gw ], [ @.str.152, %bb.gx ], [ @.str.154, %bb.gy ], [ @.str.202, %bb.gz ], [ @.str.203, %bb.ha ], [ @.str.164, %bb.hb ], [ @.str.204, %bb.hc ], [ @.str.205, %bb.hd ], [ @.str.206, %bb.he ], [ @.str.146, %bb.gu ]
  %i.ano = select i1 %spec.select432.not, ptr @.str.11, ptr @.str.17
  %i.anp = select i1 %i.dv, ptr @.str.18, ptr @.str.11
  %i.anq = select i1 %i.dy, ptr @.str.19, ptr @.str.11
  %i.anr = select i1 %i.cw, ptr @.str.20, ptr @.str.11
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.ank, ptr noundef nonnull %i.anl, ptr noundef nonnull %i.ann, ptr noundef nonnull %.0.i468, ptr noundef nonnull %i.ano, ptr noundef nonnull %i.anp, ptr noundef nonnull %i.anq, ptr noundef nonnull %i.anr, ptr noundef nonnull %i.anh, i32 noundef %.0676714, i32 noundef %.0680708, i32 noundef %.0682700705) #27
  br label %bb.hh

bb.hh:                                            ; preds = %bb.gt, %_method_str.exit, %.thread
  %.0676715 = phi i32 [ %.0676714, %bb.gt ], [ %.0676714, %_method_str.exit ], [ 1, %.thread ] ; 3 uses
  %.0678712 = phi i32 [ %.0678711, %bb.gt ], [ %.0678711, %_method_str.exit ], [ %i.bq, %.thread ] ; 3 uses
  %.0680709 = phi i32 [ %.0680708, %bb.gt ], [ %.0680708, %_method_str.exit ], [ %i.bq, %.thread ]
  %.0682700706 = phi i32 [ %.0682700705, %bb.gt ], [ %.0682700705, %_method_str.exit ], [ 0, %.thread ] ; 3 uses
  br i1 %i.dn, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ans = sext i32 %i.bo to i64
  %i.ant = sext i32 %i.bq to i64
  %i.anu = shl nsw i64 %i.ans, 4
  %i.anv = mul i64 %i.anu, %i.ant
  %i.anw = tail call ptr @dt_alloc_aligned(i64 noundef %i.anv) #27 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anw, i64 64) ]
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hh, %bb.hi
  %i.anx = phi ptr [ %i.anw, %bb.hi ], [ %3, %bb.hh ] ; 8 uses
  %.not420 = icmp eq ptr %i.anx, null
  br i1 %.not420, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #27
  %i.any = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.any) #27
  br label %bb.ug

bb.hl:                                            ; preds = %bb.hj
  br i1 %i.dy, label %bb.hm, label %bb.ht

bb.hm:                                            ; preds = %bb.hl
  %i.anz = sitofp reassoc nsz arcp contract afn i32 %i.en to float
  %i.aoa = fmul reassoc nnan nsz arcp contract afn float %i.anz, f0x38D1B717 ; 2 uses
  %i.aob = sext i32 %i.bo to i64
  %i.aoc = sext i32 %i.bq to i64
  %i.aod = shl nsw i64 %i.aob, 2
  %i.aoe = mul i64 %i.aod, %i.aoc                 ; 2 uses
  %i.aof = tail call ptr @dt_alloc_aligned(i64 noundef %i.aoe) #27 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aof, i64 64) ]
  %.not421 = icmp eq ptr %i.aof, null
  br i1 %.not421, label %bb.hs, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aog = load i32, ptr %i.z, align 8, !tbaa !156
  switch i32 %i.aog, label %bb.ht [
    i32 2, label %bb.ho
    i32 1, label %bb.hp
    i32 3, label %bb.hq
  ]

bb.ho:                                            ; preds = %bb.hn
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.aof, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1043)
  br label %bb.ht

bb.hp:                                            ; preds = %bb.hn
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.aof, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1043, float noundef %i.aoa)
  br label %bb.ht

bb.hq:                                            ; preds = %bb.hn
  %i.aoh = tail call ptr @dt_alloc_aligned(i64 noundef %i.aoe) #27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aoh, i64 64) ]
  %.not422 = icmp eq ptr %i.aoh, null
  br i1 %.not422, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.aoh, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1043)
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.aof, ptr noundef nonnull %i.aoh, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1043, float noundef %i.aoa)
  tail call void @free(ptr noundef nonnull %i.aoh) #27
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hm
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24) #27
  %i.aoi = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.aoi) #27
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hn, %bb.hq, %bb.hr, %bb.hp, %bb.ho, %bb.hl
  %.1 = phi ptr [ %2, %bb.hl ], [ %2, %bb.hs ], [ %i.aof, %bb.hn ], [ %i.aof, %bb.hq ], [ %i.aof, %bb.hr ], [ %i.aof, %bb.hp ], [ %i.aof, %bb.ho ] ; 3 uses
  %.0387 = phi ptr [ null, %bb.hl ], [ null, %bb.hs ], [ %i.aof, %bb.hn ], [ %i.aof, %bb.hq ], [ %i.aof, %bb.hr ], [ %i.aof, %bb.hp ], [ %i.aof, %bb.ho ] ; 2 uses
  %.13630 = ptrtoaddr ptr %.1 to i64              ; 2 uses
  br i1 %.not75.i, label %bb.hu, label %.thread718

bb.hu:                                            ; preds = %bb.ht
  %i.aoj = sext i32 %i.bo to i64
  %i.aok = sext i32 %.0680709 to i64
  %i.aol = shl nsw i64 %i.aoj, 4
  %i.aom = mul i64 %i.aol, %i.aok
  %i.aon = tail call ptr @dt_alloc_aligned(i64 noundef %i.aom) #27 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aon, i64 64) ]
  %.not423 = icmp eq ptr %i.aon, null
  br i1 %.not423, label %bb.hv, label %.thread718

bb.hv:                                            ; preds = %bb.hu
  tail call void @free(ptr noundef %.0387) #27
  br i1 %i.dn, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  tail call void @free(ptr noundef nonnull %i.anx) #27
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #27
  %i.aoo = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.aoo) #27
  br label %bb.ug

.thread718:                                       ; preds = %bb.ht, %bb.hu
  %i.aop = phi ptr [ %i.aon, %bb.hu ], [ %i.anx, %bb.ht ] ; 112 uses
  %i.aoq = icmp sgt i32 %.0676715, 0
  br i1 %i.aoq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread718
  %i.aor = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh ; 4 uses
  %.not424 = icmp eq i32 %i.bj, 0
  %i.aos = add i32 %.0682700706, %.0678712
  %i.aot = select i1 %.not424, i32 0, i32 2
  %i.aou = icmp slt i32 %i.bo, 1                  ; 3 uses
  %i.aov = sext i32 %i.bo to i64                  ; 50 uses
  %i.aow = zext i32 %i.bo to i64                  ; 40 uses
  %i.aox = shl nsw i64 %i.aov, 2                  ; 2 uses
  %i.aoy = icmp eq i32 %.0394, 2
  %or.cond31 = or i1 %i.bg, %i.aoy
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.apa = icmp slt i32 %i.bo, 8
  %i.apb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.apd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ape = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.apf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.apg = add nsw i32 %i.bo, -17
  %i.aph = sdiv i32 %i.apg, 112
  %invariant.op.i551 = fmul reassoc nnan nsz arcp contract afn float %i.aor, 6.553500e+04 ; 3 uses
  %i.api = mul i32 %i.bo, 112
  %i.apj = icmp slt i32 %i.bo, 20
  %i.apk = add nsw i32 %i.bo, -21
  %i.apl = sdiv i32 %i.apk, 92
  %i.apm = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.apn = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.apo = mul i32 %i.bo, 92
  %i.app = shl i32 %i.bo, 2                       ; 10 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.apr = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  %i.apt = icmp eq i32 %.0394, 1026               ; 33 uses
  %i.apu = select i1 %i.apt, i32 3, i32 1
  %i.apv = icmp eq i32 %.0394, 1028
  %i.apw = add i32 %.0394, -1025
  %or.cond29 = icmp ult i32 %i.apw, 2
  %i.apx = zext i1 %i.apt to i32
  %i.apy = shl nuw nsw i32 4, %i.apx              ; 2 uses
  %i.apz = select i1 %i.apt, i64 2083776, i64 1131200
  %.neg.i508 = select i1 %i.apt, i32 -17, i32 -12 ; 9 uses
  %i.aqa = select i1 %i.apt, i32 17, i32 12       ; 11 uses
  %i.aqb = select i1 %i.apt, i64 1428864, i64 714432 ; 10 uses
  %i.aqc = select i1 %i.apt, i64 119072, i64 59536 ; 2 uses
  %i.aqd = sub nsw i32 %i.bo, %i.aqa              ; 2 uses
  %i.aqe = icmp slt i32 %.neg.i508, %i.aqd
  %i.aqf = add i32 %i.aqa, %i.bo                  ; 3 uses
  %i.aqg = select i1 %i.apt, i32 5, i32 6         ; 5 uses
  %i.aqh = add nuw nsw i32 %i.aqg, 2              ; 2 uses
  %i.aqi = select i1 %i.apt, i32 4, i32 8         ; 4 uses
  %i.aqj = select i1 %i.apt, i32 13, i32 8        ; 5 uses
  %i.aqk = select i1 %i.apt, i32 14, i32 9        ; 5 uses
  %i.aql = select i1 %i.apt, i32 15, i32 10       ; 5 uses
  %i.aqm = zext nneg i32 %i.aqa to i64            ; 11 uses
  %i.aqn = add nsw i32 %i.aqa, -4
  %i.aqo = add nsw i32 %i.apy, -4                 ; 2 uses
  %.not1286.i = icmp eq i32 %i.aqo, 0
  %reass.sub955.i.neg = select i1 %i.apt, i32 -88, i32 -98
  %reass.sub955.i = select i1 %i.apt, i32 88, i32 98 ; 14 uses
  %i.aqp = add nuw nsw i32 %.neg.i508, 3          ; 2 uses
  %i.aqq = add nuw nsw i32 %.neg.i508, 6          ; 2 uses
  %i.aqr = select i1 %i.apt, i32 -12, i32 -6      ; 2 uses
  %i.aqs = zext nneg i32 %i.apy to i64            ; 11 uses
  %i.aqt = select i1 %i.apt, i32 -13, i32 -4      ; 2 uses
  %i.aqu = zext nneg i32 %i.aqj to i64            ; 2 uses
  %i.aqv = zext nneg i32 %i.aqk to i64            ; 7 uses
  %i.aqw = zext nneg i32 %i.aql to i64            ; 7 uses
  %i.aqx = add nsw i64 %i.aqm, -4
  %wide.trip.count1489.i = zext i32 %i.aqo to i64
  %i.aqy = icmp sgt i32 %i.bo, 0                  ; 4 uses
  %i.aqz = add i32 %i.bo, 13                      ; 6 uses
  %i.ara = add nsw i32 %i.bo, -13
  %i.arb = sext i32 %i.ara to i64
  %i.arc = sext i32 %i.aqz to i64
  %gep1333.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %invariant.gep1327.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  %gep1333.1.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %invariant.gep1327.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %invariant.gep1327.3.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 4 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.are = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %invariant.gep1327.4.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %invariant.gep1327.5.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 3 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.arg = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.arh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 752
  %.not182.i = icmp eq i32 %.1391, 0
  %i.arj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ark = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.not123.i.i = icmp eq i32 %i.bo, 0
  %i.arl = add nsw i32 %i.bo, -2
  %i.arm = sext i32 %i.arl to i64
  %exitcond129.peel.not.i.i = icmp eq i32 %i.bo, 1
  %exitcond129.peel146.not.i.i = icmp eq i32 %i.bo, 2
  %i.arn = add nsw i32 %i.bo, -3                  ; 2 uses
  %i.aro = sext i32 %i.arn to i64
  %i.arp = sub nsw i32 0, %i.app
  %i.arq = sub nuw nsw i32 -2, %i.app
  %i.arr = sext i32 %i.arq to i64                 ; 2 uses
  %i.ars = sub i32 2, %i.app
  %i.art = sext i32 %i.ars to i64                 ; 2 uses
  %i.aru = sext i32 %i.app to i64                 ; 2 uses
  %i.arv = xor i32 %i.app, -1
  %i.arw = sext i32 %i.arv to i64                 ; 2 uses
  %i.arx = sub i32 1, %i.app
  %i.ary = sext i32 %i.arx to i64                 ; 2 uses
  %i.arz = sub nsw i32 0, %i.bo
  %i.asa = sub i32 -4, %i.bo
  %i.asb = sext i32 %i.asa to i64                 ; 2 uses
  %i.asc = sub i32 4, %i.bo
  %i.asd = sext i32 %i.asc to i64                 ; 2 uses
  %i.ase = sext i32 %i.arp to i64                 ; 2 uses
  %i.asf = sub i32 -3, %i.bo
  %i.asg = sext i32 %i.asf to i64                 ; 2 uses
  %i.ash = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %i.asi = shufflevector <4 x i32> %i.ash, <4 x i32> poison, <4 x i32> zeroinitializer
  %.neg4636 = mul <4 x i32> %i.asi, <i32 -3, i32 -1, i32 -2, i32 -3>
  %i.asj = mul nsw i32 %i.bo, 3                   ; 7 uses
  %i.ask = sub i32 -3, %i.asj
  %i.asl = add <4 x i32> %.neg4636, <i32 0, i32 3, i32 3, i32 -3>
  %i.asm = sext i32 %i.ask to i64
  %i.asn = sub i32 3, %i.asj
  %i.aso = sext i32 %i.asn to i64                 ; 2 uses
  %i.asp = sext i32 %i.asj to i64                 ; 2 uses
  %i.asq = sub i32 -2, %i.asj
  %i.asr = sext i32 %i.asq to i64                 ; 2 uses
  %i.ass = sub i32 2, %i.asj
  %i.ast = sext i32 %i.ass to i64                 ; 2 uses
  %i.asu = xor i32 %i.asj, -1
  %i.asv = sext i32 %i.asu to i64                 ; 2 uses
  %i.asw = sub i32 1, %i.asj
  %i.asx = sext i32 %i.asw to i64                 ; 2 uses
  %i.asy = sext <4 x i32> %i.asl to <4 x i64>     ; 3 uses
  %i.asz = sub i32 -2, %i.bo
  %i.ata = sext i32 %i.asz to i64                 ; 4 uses
  %i.atb = sub i32 2, %i.bo
  %i.atc = sext i32 %i.atb to i64                 ; 4 uses
  %i.atd = shl nsw i32 %i.bo, 1                   ; 10 uses
  %i.ate = insertelement <2 x i32> poison, i32 %i.bo, i64 0
  %i.atf = shufflevector <2 x i32> %i.ate, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.atg = shl nsw <4 x i32> %i.atf, <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.ath = add i32 %i.atd, -2                     ; 10 uses
  %i.ati = sext i32 %i.atd to i64                 ; 6 uses
  %i.atj = sub i32 -4, %i.atd
  %i.atk = sext i32 %i.atj to i64                 ; 2 uses
  %i.atl = sub i32 4, %i.atd
  %i.atm = sext i32 %i.atl to i64                 ; 2 uses
  %i.atn = sub i32 3, %i.atd
  %i.ato = sub i32 -3, %i.atd
  %i.atp = sext i32 %i.ato to i64                 ; 2 uses
  %i.atq = sext i32 %i.atn to i64
  %i.atr = sub nuw nsw i32 -2, %i.atd
  %i.ats = sub nsw <4 x i32> <i32 0, i32 poison, i32 poison, i32 -2>, %i.atg
  %i.att = xor <4 x i32> %i.atg, <i32 poison, i32 -1, i32 -1, i32 poison>
  %i.atu = shufflevector <4 x i32> %i.ats, <4 x i32> %i.att, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.atv = xor i32 %i.atd, -1
  %i.atw = sext i32 %i.atr to i64
  %i.atx = sub i32 2, %i.atd
  %i.aty = sext i32 %i.atx to i64                 ; 2 uses
  %i.atz = sext i32 %i.atv to i64                 ; 3 uses
  %i.aua = sub i32 1, %i.atd
  %i.aub = sext i32 %i.aua to i64                 ; 4 uses
  %i.auc = sext <4 x i32> %i.atu to <4 x i64>     ; 3 uses
  %i.aud = sub i32 1, %i.bo
  %i.aue = sext i32 %i.aud to i64                 ; 4 uses
  %i.auf = sext i32 %i.arz to i64                 ; 4 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.auh = icmp ne i32 %.1393, 0                  ; 2 uses
  %i.aui = shl nuw nsw i64 %i.aow, 2
  %i.auj = add nsw i32 %.neg.i508, -1             ; 2 uses
  %i.auk = zext i32 %.0678712 to i64
  %wide.trip.count = zext nneg i32 %.0676715 to i64
  %scevgep1673.a = getelementptr i8, ptr %i.aop, i64 12
  %i.aul = shl nuw nsw i64 %i.aow, 4
  %i.aum = shl nuw nsw i64 %i.aow, 2
  %i.aun = shl nuw nsw i64 %i.aow, 4
  %i.auo = shl nuw nsw i64 %i.aow, 2
  %scevgep1756.a = getelementptr i8, ptr %i.aop, i64 4 ; 2 uses
  %scevgep1757 = getelementptr i8, ptr %i.aop, i64 8 ; 2 uses
  %scevgep1758.a = getelementptr i8, ptr %i.aop, i64 12 ; 4 uses
  %i.aup = shl nsw i64 %i.aov, 2
  %i.auq = shl nsw i64 %i.aov, 4
  %scevgep1798.a = getelementptr i8, ptr %i.aop, i64 16
  %scevgep1821.a = getelementptr i8, ptr %i.aop, i64 16
  %i.aur = shl nsw i64 %i.aov, 2
  %i.aus = shl nsw i64 %i.aov, 2
  %scevgep1954.a = getelementptr i8, ptr %i.aop, i64 32 ; 2 uses
  %scevgep1955 = getelementptr i8, ptr %i.aop, i64 -4
  %i.aut = shl nsw i64 %i.aov, 4
  %i.auu = shl nsw i64 %i.aov, 2
  %scevgep1990 = getelementptr i8, ptr %i.aop, i64 -4
  %i.auv = shl nsw i64 %i.aov, 4
  %i.auw = mul i32 %i.bo, 384
  %i.aux = shl i32 %i.bo, 2
  %i.auy = mul i32 %i.bo, 384
  %i.auz = shl i32 %i.bo, 2
  %scevgep2039.a = getelementptr i8, ptr %i.aop, i64 -212
  %i.ava = mul nuw nsw i64 %i.aqw, 123
  %i.avb = select i1 %i.apt, i64 1547936, i64 773968
  %i.avc = mul nuw nsw i64 %i.aqw, 122
  %i.avd = add nuw nsw i64 %i.aqw, 1
  %i.ave = add nsw i32 %.neg.i508, 122
  %i.avf = mul nuw nsw i64 %i.aqw, 492            ; 5 uses
  %i.avg = select i1 %i.apt, i64 1905152, i64 952576
  %i.avh = mul nuw nsw i64 %i.aqw, 488            ; 9 uses
  %i.avi = add nuw nsw i64 %i.aqb, %i.avf         ; 2 uses
  %i.avj = select i1 %i.apt, i64 1905152, i64 952576
  %i.avk = select i1 %i.apt, i64 1905152, i64 952576
  %i.avl = add nuw nsw i64 %i.aqb, %i.avf         ; 2 uses
  %i.avm = select i1 %i.apt, i64 1905152, i64 952576
  %i.avn = select i1 %i.apt, i64 1905152, i64 952576
  %i.avo = add nuw nsw i64 %i.aqb, %i.avf         ; 2 uses
  %i.avp = select i1 %i.apt, i64 1905152, i64 952576
  %i.avq = select i1 %i.apt, i64 1905152, i64 952576
  %i.avr = add nuw nsw i64 %i.aqb, %i.avf         ; 2 uses
  %i.avs = select i1 %i.apt, i64 1905152, i64 952576
  %i.avt = select i1 %i.apt, i64 1905152, i64 952576
  %i.avu = mul nuw nsw i64 %i.aqv, 492            ; 3 uses
  %i.avv = add nuw nsw i64 %i.aqb, %i.avu
  %i.avw = add nuw nsw i64 %i.avv, 178608
  %i.avx = add nuw nsw i64 %i.aqb, %i.avu
end_hunk_0
begin_hunk_1_@process:bb.a
  br label %scalar.ph3344

vector.scevcheck3300:                             ; preds = %.lr.ph894.i
  %i.kov = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.kow = shl nuw nsw i64 %i.kov, 2              ; 7 uses
  %scevgep3320 = getelementptr i8, ptr %scevgep3319, i64 %i.kow ; 2 uses
  %scevgep3318 = getelementptr i8, ptr %scevgep3317.a, i64 %i.kow ; 2 uses
  %scevgep3316 = getelementptr i8, ptr %scevgep3315.a, i64 %i.kow ; 2 uses
  %scevgep3314 = getelementptr i8, ptr %scevgep3313.a, i64 %i.kow ; 2 uses
  %scevgep3312 = getelementptr i8, ptr %scevgep3311.a, i64 %i.kow ; 2 uses
  %scevgep3310 = getelementptr i8, ptr %scevgep3309.a, i64 %i.kow ; 2 uses
  %scevgep3305 = getelementptr i8, ptr %scevgep3304, i64 %i.kow ; 2 uses
  %i.kox = lshr exact i64 %i.kov, 1               ; 2 uses
  %i.koy = trunc nuw nsw i64 %i.kox to i32
  %i.koz = or disjoint i32 %i.koy, 1
  %i.kpa = add i32 %i.kcn, %i.koz
  %i.kpb = zext i32 %i.kpa to i64
  %i.kpc = xor i64 %i.kox, -2
  %i.kpd = add nsw i64 %i.kpc, %i.kpb             ; 2 uses
  %mul.result3307 = shl nsw i64 %i.kpd, 3         ; 7 uses
  %mul.overflow3308 = icmp ugt i64 %i.kpd, 2305843009213693951
  %i.kpe = getelementptr i8, ptr %scevgep3305, i64 %mul.result3307
  %i.kpf = icmp ult ptr %i.kpe, %scevgep3305
  %i.kpg = getelementptr i8, ptr %scevgep3310, i64 %mul.result3307
  %i.kph = icmp ult ptr %i.kpg, %scevgep3310
  %i.kpi = getelementptr i8, ptr %scevgep3312, i64 %mul.result3307
  %i.kpj = icmp ult ptr %i.kpi, %scevgep3312
  %i.kpk = or i1 %i.kpj, %mul.overflow3308
  %i.kpl = getelementptr i8, ptr %scevgep3314, i64 %mul.result3307
  %i.kpm = icmp ult ptr %i.kpl, %scevgep3314
  %i.kpn = getelementptr i8, ptr %scevgep3316, i64 %mul.result3307
  %i.kpo = icmp ult ptr %i.kpn, %scevgep3316
  %i.kpp = getelementptr i8, ptr %scevgep3318, i64 %mul.result3307
  %i.kpq = icmp ult ptr %i.kpp, %scevgep3318
  %i.kpr = getelementptr i8, ptr %scevgep3320, i64 %mul.result3307
  %i.kps = icmp ult ptr %i.kpr, %scevgep3320
  %i.kpt = or i1 %i.kph, %i.kpf
  %i.kpu = or i1 %i.kpt, %i.kpk
  %i.kpv = or i1 %i.kpm, %i.kpu
  %i.kpw = or i1 %i.kpo, %i.kpv
  %i.kpx = or i1 %i.kpq, %i.kpw
  %i.kpy = or i1 %i.kps, %i.kpx
  br i1 %i.kpy, label %scalar.ph3344.preheader, label %vector.memcheck3321

vector.memcheck3321:                              ; preds = %vector.scevcheck3300
  %bound03333 = icmp ult ptr %scevgep3322, %scevgep3328.a
  %bound13334 = icmp ult ptr %scevgep3327, %scevgep3326.a
  %found.conflict3335 = and i1 %bound03333, %bound13334
  %bound03336 = icmp ult ptr %scevgep3322, %scevgep3332
  %bound13337 = icmp ult ptr %scevgep3330.a, %scevgep3326.a
  %found.conflict3338 = and i1 %bound03336, %bound13337
  %conflict.rdx3339 = or i1 %found.conflict3335, %found.conflict3338
  %bound03340 = icmp ult ptr %scevgep3327, %scevgep3332
  %bound13341 = icmp ult ptr %scevgep3330.a, %scevgep3328.a
  %found.conflict3342 = and i1 %bound03340, %bound13341
  %conflict.rdx3343 = or i1 %conflict.rdx3339, %found.conflict3342
  br i1 %conflict.rdx3343, label %scalar.ph3344.preheader, label %vector.ph3346

vector.ph3346:                                    ; preds = %vector.memcheck3321
  %i.kpz = and i64 %i.kou, 7                      ; 2 uses
  %i.kqa = icmp eq i64 %i.kpz, 0
  %i.kqb = select i1 %i.kqa, i64 8, i64 %i.kpz
  %n.vec3347 = sub nsw i64 %i.kou, %i.kqb         ; 3 uses
  %i.kqc = shl nsw i64 %n.vec3347, 1
  %i.kqd = add nsw i64 %i.kqc, %i.kom
  %i.kqe = add nsw i64 %i.kon, %n.vec3347
  %broadcast.splatinsert3348 = insertelement <8 x i64> poison, i64 %i.kom, i64 0
  %broadcast.splat3349 = shufflevector <8 x i64> %broadcast.splatinsert3348, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3350 = add nuw nsw <8 x i64> %broadcast.splat3349, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3351

vector.body3351:                                  ; preds = %vector.body3351, %vector.ph3346
  %index3352 = phi i64 [ 0, %vector.ph3346 ], [ %index.next3381, %vector.body3351 ] ; 2 uses
  %vec.ind3353 = phi <8 x i64> [ %induction3350, %vector.ph3346 ], [ %vec.ind.next3382, %vector.body3351 ] ; 2 uses
  %i.kqf = add nuw i64 %i.kon, %index3352         ; 2 uses
  %wide.gep3354 = getelementptr [4 x i8], ptr %i.jhm, <8 x i64> %vec.ind3353 ; 9 uses
  %i.kqg = extractelement <8 x ptr> %wide.gep3354, i64 0 ; 6 uses
  %wide.gep3355.a = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -1356
  %wide.masked.gather3356.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3355.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %wide.gep3357 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -452
  %wide.masked.gather3358 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3357, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqh = getelementptr inbounds nuw i8, ptr %i.kqg, i64 452
  %wide.vec3359.a = load <16 x float>, ptr %i.kqh, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3360.a = shufflevector <16 x float> %wide.vec3359.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqi = getelementptr inbounds nuw i8, ptr %i.kqg, i64 1356
  %wide.vec3361 = load <16 x float>, ptr %i.kqi, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3362 = shufflevector <16 x float> %wide.vec3361, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3363 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -904
  %wide.masked.gather3364 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3363, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqj = getelementptr inbounds nuw i8, ptr %i.kqg, i64 904
  %wide.vec3365 = load <16 x float>, ptr %i.kqj, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3366 = shufflevector <16 x float> %wide.vec3365, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3366, %wide.masked.gather3364
  %i.kql = fmul reassoc nsz arcp contract afn <8 x float> %i.kqk, splat (float -3.000000e+00)
  %wide.masked.gather3367.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3354, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3367.a, splat (float 6.000000e+00)
  %i.kqn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3360.a, %wide.masked.gather3358
  %i.kqo = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3356.a, %i.kqn
  %i.kqp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3362, %i.kqo
  %i.kqq = fadd reassoc nsz arcp contract afn <8 x float> %i.kqp, %i.kql
  %i.kqr = fadd reassoc nsz arcp contract afn <8 x float> %i.kqq, %i.kqm ; 2 uses
  %i.kqs = fmul reassoc nsz arcp contract afn <8 x float> %i.kqr, %i.kqr
  %i.kqt = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %i.kqf
  store <8 x float> %i.kqs, ptr %i.kqt, align 4, !tbaa !22, !alias.scope !335, !noalias !337
  %wide.gep3368.a = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -1332
  %wide.masked.gather3369.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3368.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %wide.gep3370 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -444
  %wide.masked.gather3371 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3370, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqu = getelementptr inbounds nuw i8, ptr %i.kqg, i64 444
  %wide.vec3372.a = load <16 x float>, ptr %i.kqu, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3373.a = shufflevector <16 x float> %wide.vec3372.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqv = getelementptr inbounds nuw i8, ptr %i.kqg, i64 1332
  %wide.vec3374 = load <16 x float>, ptr %i.kqv, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3375 = shufflevector <16 x float> %wide.vec3374, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3376 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -888
  %wide.masked.gather3377 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3376, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqw = getelementptr inbounds nuw i8, ptr %i.kqg, i64 888
  %wide.vec3378 = load <16 x float>, ptr %i.kqw, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3379 = shufflevector <16 x float> %wide.vec3378, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqx = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3379, %wide.masked.gather3377
  %i.kqy = fmul reassoc nsz arcp contract afn <8 x float> %i.kqx, splat (float -3.000000e+00)
  %wide.masked.gather3380 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3354, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3380, splat (float 6.000000e+00)
  %i.kra = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3373.a, %wide.masked.gather3371
  %i.krb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3369.a, %i.kra
  %i.krc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3375, %i.krb
  %i.krd = fadd reassoc nsz arcp contract afn <8 x float> %i.krc, %i.kqy
  %i.kre = fadd reassoc nsz arcp contract afn <8 x float> %i.krd, %i.kqz ; 2 uses
  %i.krf = fmul reassoc nsz arcp contract afn <8 x float> %i.kre, %i.kre
  %i.krg = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %i.kqf
  store <8 x float> %i.krf, ptr %i.krg, align 4, !tbaa !22, !alias.scope !339, !noalias !340
  %index.next3381 = add nuw i64 %index3352, 8     ; 2 uses
  %vec.ind.next3382 = add nuw nsw <8 x i64> %vec.ind3353, splat (i64 16)
  %i.krh = icmp eq i64 %index.next3381, %n.vec3347
  br i1 %i.krh, label %scalar.ph3344.preheader, label %vector.body3351, !llvm.loop !341

._crit_edge895.i:                                 ; preds = %scalar.ph3344
  %i.kri = add nuw nsw i32 %.0767896.i, 1         ; 2 uses
  %i.krj = icmp slt i32 %i.kri, %i.jih
  %indvars.iv.next1010.i = add i32 %indvars.iv1009.i, 112
  br i1 %i.krj, label %.lr.ph894.i, label %.preheader829.i

scalar.ph3344:                                    ; preds = %scalar.ph3344.preheader, %scalar.ph3344
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %scalar.ph3344 ], [ %indvars.iv1013.i.ph, %scalar.ph3344.preheader ] ; 2 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %scalar.ph3344 ], [ %indvars.iv1011.i.ph, %scalar.ph3344.preheader ] ; 3 uses
  %i.krk = getelementptr [4 x i8], ptr %i.jhm, i64 %indvars.iv1013.i ; 14 uses
  %i.krl = getelementptr i8, ptr %i.krk, i64 -1356
  %i.krm = load float, ptr %i.krl, align 4, !tbaa !22, !noalias !277
  %i.krn = getelementptr i8, ptr %i.krk, i64 -452
  %i.kro = load float, ptr %i.krn, align 4, !tbaa !22, !noalias !277
  %i.krp = getelementptr inbounds nuw i8, ptr %i.krk, i64 452
  %i.krq = load float, ptr %i.krp, align 4, !tbaa !22, !noalias !277
  %i.krr = getelementptr inbounds nuw i8, ptr %i.krk, i64 1356
  %i.krs = load float, ptr %i.krr, align 4, !tbaa !22, !noalias !277
  %i.krt = getelementptr i8, ptr %i.krk, i64 -904
  %i.kru = load float, ptr %i.krt, align 4, !tbaa !22, !noalias !277
  %i.krv = getelementptr inbounds nuw i8, ptr %i.krk, i64 904
  %i.krw = load float, ptr %i.krv, align 4, !tbaa !22, !noalias !277
  %i.krx = fadd reassoc nsz arcp contract afn float %i.krw, %i.kru
  %.neg806.i = fmul reassoc nsz arcp contract afn float %i.krx, -3.000000e+00
  %i.kry = load float, ptr %i.krk, align 4, !tbaa !22, !noalias !277
  %i.krz = fmul reassoc nsz arcp contract afn float %i.kry, 6.000000e+00
  %i.ksa = fadd reassoc nsz arcp contract afn float %i.krq, %i.kro
  %.neg807.i = fsub reassoc nsz arcp contract afn float %i.krm, %i.ksa
  %i.ksb = fadd reassoc nsz arcp contract afn float %i.krs, %.neg807.i
  %i.ksc = fadd reassoc nsz arcp contract afn float %i.ksb, %.neg806.i
  %i.ksd = fadd reassoc nsz arcp contract afn float %i.ksc, %i.krz ; 2 uses
  %i.kse = fmul reassoc nsz arcp contract afn float %i.ksd, %i.ksd
  %i.ksf = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %indvars.iv1011.i
  store float %i.kse, ptr %i.ksf, align 4, !tbaa !22, !noalias !277
  %i.ksg = getelementptr i8, ptr %i.krk, i64 -1332
  %i.ksh = load float, ptr %i.ksg, align 4, !tbaa !22, !noalias !277
  %i.ksi = getelementptr i8, ptr %i.krk, i64 -444
  %i.ksj = load float, ptr %i.ksi, align 4, !tbaa !22, !noalias !277
  %i.ksk = getelementptr inbounds nuw i8, ptr %i.krk, i64 444
  %i.ksl = load float, ptr %i.ksk, align 4, !tbaa !22, !noalias !277
  %i.ksm = getelementptr inbounds nuw i8, ptr %i.krk, i64 1332
  %i.ksn = load float, ptr %i.ksm, align 4, !tbaa !22, !noalias !277
  %i.kso = getelementptr i8, ptr %i.krk, i64 -888
  %i.ksp = load float, ptr %i.kso, align 4, !tbaa !22, !noalias !277
  %i.ksq = getelementptr inbounds nuw i8, ptr %i.krk, i64 888
  %i.ksr = load float, ptr %i.ksq, align 4, !tbaa !22, !noalias !277
  %i.kss = fadd reassoc nsz arcp contract afn float %i.ksr, %i.ksp
  %.neg811.i = fmul reassoc nsz arcp contract afn float %i.kss, -3.000000e+00
  %i.kst = load float, ptr %i.krk, align 4, !tbaa !22, !noalias !277
  %i.ksu = fmul reassoc nsz arcp contract afn float %i.kst, 6.000000e+00
  %i.ksv = fadd reassoc nsz arcp contract afn float %i.ksl, %i.ksj
  %.neg812.i = fsub reassoc nsz arcp contract afn float %i.ksh, %i.ksv
  %i.ksw = fadd reassoc nsz arcp contract afn float %i.ksn, %.neg812.i
  %i.ksx = fadd reassoc nsz arcp contract afn float %i.ksw, %.neg811.i
  %i.ksy = fadd reassoc nsz arcp contract afn float %i.ksx, %i.ksu ; 2 uses
  %i.ksz = fmul reassoc nsz arcp contract afn float %i.ksy, %i.ksy
  %i.kta = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %indvars.iv1011.i
  store float %i.ksz, ptr %i.kta, align 4, !tbaa !22, !noalias !277
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 2
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 1 ; 2 uses
  %exitcond.not.i542 = icmp eq i64 %indvars.iv.next1012.i, %wide.trip.count.i
  br i1 %exitcond.not.i542, label %._crit_edge895.i, label %scalar.ph3344, !llvm.loop !342

bb.pg:                                            ; preds = %._crit_edge904.i, %.lr.ph906.i
  %indvar3266 = phi i32 [ %indvar.next3269, %._crit_edge904.i ], [ 0, %.lr.ph906.i ] ; 2 uses
  %indvar3268 = phi i32 [ %indvars.iv.next1030.i, %._crit_edge904.i ], [ 452, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1027.i.a = phi i32 [ %indvars.iv.next1028.i.a, %._crit_edge904.i ], [ 339, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1021.i = phi i32 [ %indvars.iv.next1022.i, %._crit_edge904.i ], [ 563, %.lr.ph906.i ] ; 2 uses
  %.0763905.i = phi i32 [ %i.kvf, %._crit_edge904.i ], [ 4, %.lr.ph906.i ] ; 2 uses
  %i.ktb = mul i32 %indvar3266, 112
  %i.ktc = add i32 %i.ktb, 448
  %i.ktd = zext i32 %i.ktc to i64
  %i.kte = shl nuw nsw i64 %i.ktd, 1
  %i.ktf = shl i32 %.0763905.i, 2
  %i.ktg = and i32 %i.ktf, 28
  %i.kth = lshr i32 %.fr1043, %i.ktg
  %i.kti = and i32 %i.kth, 1                      ; 4 uses
  %i.ktj = or disjoint i32 %i.kti, 4              ; 4 uses
  %i.ktk = icmp slt i32 %i.ktj, %i.knw
  br i1 %i.ktk, label %.lr.ph903.preheader.i, label %._crit_edge904.i

.lr.ph903.preheader.i:                            ; preds = %bb.pg
  %i.ktl = add i32 %i.kti, %indvars.iv1021.i
  %6 = lshr i32 %i.ktl, 1
  %7 = zext nneg i32 %6 to i64                    ; 5 uses
  %i.ktm = add i32 %i.kti, %indvars.iv1027.i.a
  %8 = sdiv i32 %i.ktm, 2
  %i.ktn = sext i32 %8 to i64                     ; 5 uses
  %i.kto = lshr exact i32 %indvar3268, 1
  %i.ktp = zext nneg i32 %i.kto to i64            ; 4 uses
  %i.ktq = sub i32 %i.knx, %i.kti                 ; 2 uses
  %i.ktr = lshr i32 %i.ktq, 1
  %narrow4583.a = add nuw i32 %i.ktr, 1
  %i.kts = zext i32 %narrow4583.a to i64          ; 2 uses
  %min.iters.check3282 = icmp ult i32 %i.ktq, 14
  br i1 %min.iters.check3282, label %.lr.ph903.i.preheader, label %vector.memcheck3267

vector.memcheck3267:                              ; preds = %.lr.ph903.preheader.i
  %i.ktt = insertelement <2 x i64> poison, i64 %7, i64 0
  %i.ktu = insertelement <2 x i64> %i.ktt, i64 %i.ktn, i64 1
  %i.ktv = shl nsw <2 x i64> %i.ktu, splat (i64 2)
  %i.ktw = shufflevector <2 x i64> %i.ktv, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ktx = insertelement <4 x i64> poison, i64 %i.kte, i64 0
  %i.kty = shufflevector <4 x i64> %i.ktx, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ktz = add <4 x i64> %i.jhy, %i.kty
  %i.kua = add <4 x i64> %i.ktw, %i.jia
  %i.kub = sub <4 x i64> %i.kua, %i.ktz
  %i.kuc = icmp ugt <4 x i64> %i.kub, splat (i64 -32)
  %i.kud = bitcast <4 x i1> %i.kuc to i4
  %.not = icmp eq i4 %i.kud, 0
  br i1 %.not, label %vector.ph3283, label %.lr.ph903.i.preheader

vector.ph3283:                                    ; preds = %vector.memcheck3267
  %n.vec3284 = and i64 %i.kts, 4294967288         ; 6 uses
  %i.kue = add nuw nsw i64 %n.vec3284, %i.ktp
  %i.kuf = add nsw i64 %n.vec3284, %i.ktn
  %i.kug = add nuw nsw i64 %n.vec3284, %7
  %i.kuh = trunc nuw i64 %n.vec3284 to i32
  %i.kui = shl i32 %i.kuh, 1
  %i.kuj = or disjoint i32 %i.ktj, %i.kui
  br label %vector.body3285

vector.body3285:                                  ; preds = %vector.body3285, %vector.ph3283
  %index3286 = phi i64 [ 0, %vector.ph3283 ], [ %index.next3293, %vector.body3285 ] ; 4 uses
  %i.kuk = add nuw i64 %index3286, %i.ktp         ; 3 uses
  %i.kul = add i64 %index3286, %i.ktn             ; 2 uses
  %i.kum = add nuw i64 %index3286, %7             ; 2 uses
  %i.kun = getelementptr inbounds [4 x i8], ptr %i.jho, i64 %i.kul
  %wide.load3287.a = load <8 x float>, ptr %i.kun, align 4, !tbaa !22, !noalias !277
  %i.kuo = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %i.kuk
  %wide.load3288.a = load <8 x float>, ptr %i.kuo, align 8, !tbaa !22, !noalias !277
  %i.kup = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3288.a, %wide.load3287.a
  %i.kuq = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %i.kum
  %i.kur = getelementptr inbounds nuw i8, ptr %i.kuq, i64 4
  %wide.load3289.a = load <8 x float>, ptr %i.kur, align 4, !tbaa !22, !noalias !277
  %i.kus = fadd reassoc nsz arcp contract afn <8 x float> %i.kup, %wide.load3289.a
  %i.kut = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kus, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.kuu = getelementptr [4 x i8], ptr %i.jhp, i64 %i.kul
  %i.kuv = getelementptr i8, ptr %i.kuu, i64 4
  %wide.load3290.a = load <8 x float>, ptr %i.kuv, align 4, !tbaa !22, !noalias !277
  %i.kuw = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %i.kuk
  %wide.load3291 = load <8 x float>, ptr %i.kuw, align 8, !tbaa !22, !noalias !277
  %i.kux = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3291, %wide.load3290.a
  %i.kuy = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %i.kum
  %wide.load3292 = load <8 x float>, ptr %i.kuy, align 4, !tbaa !22, !noalias !277
  %i.kuz = fadd reassoc nsz arcp contract afn <8 x float> %i.kux, %wide.load3292
  %i.kva = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kuz, <8 x float> splat (float 1.000000e-10))
  %i.kvb = fadd reassoc nsz arcp contract afn <8 x float> %i.kva, %i.kut
  %i.kvc = fdiv reassoc nsz arcp contract afn <8 x float> %i.kut, %i.kvb
  %i.kvd = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %i.kuk
  store <8 x float> %i.kvc, ptr %i.kvd, align 8, !tbaa !22, !noalias !277
  %index.next3293 = add nuw i64 %index3286, 8     ; 2 uses
  %i.kve = icmp eq i64 %index.next3293, %n.vec3284
  br i1 %i.kve, label %middle.block3294, label %vector.body3285, !llvm.loop !343

middle.block3294:                                 ; preds = %vector.body3285
  %cmp.n3295 = icmp eq i64 %n.vec3284, %i.kts
  br i1 %cmp.n3295, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %vector.memcheck3267, %.lr.ph903.preheader.i, %middle.block3294
  %indvars.iv1029.i.ph = phi i64 [ %i.ktp, %vector.memcheck3267 ], [ %i.ktp, %.lr.ph903.preheader.i ], [ %i.kue, %middle.block3294 ]
  %indvars.iv1025.i.ph = phi i64 [ %i.ktn, %vector.memcheck3267 ], [ %i.ktn, %.lr.ph903.preheader.i ], [ %i.kuf, %middle.block3294 ]
  %indvars.iv1023.i.ph = phi i64 [ %7, %vector.memcheck3267 ], [ %7, %.lr.ph903.preheader.i ], [ %i.kug, %middle.block3294 ]
  %.0762898.i.ph = phi i32 [ %i.ktj, %vector.memcheck3267 ], [ %i.ktj, %.lr.ph903.preheader.i ], [ %i.kuj, %middle.block3294 ]
  br label %.lr.ph903.i

._crit_edge904.i:                                 ; preds = %.lr.ph903.i, %middle.block3294, %bb.pg
  %i.kvf = add nuw nsw i32 %.0763905.i, 1         ; 2 uses
  %i.kvg = icmp slt i32 %i.kvf, %i.jik
  %indvars.iv.next1022.i = add i32 %indvars.iv1021.i, 112
  %indvars.iv.next1028.i.a = add i32 %indvars.iv1027.i.a, 112
  %indvars.iv.next1030.i = add i32 %indvar3268, 112
  %indvar.next3269 = add i32 %indvar3266, 1
  br i1 %i.kvg, label %bb.pg, label %.preheader828.i.preheader

.preheader828.i.preheader:                        ; preds = %._crit_edge904.i
  %i.kvh = add i32 %smin1147, -9
  %i.kvi = add i32 %smin1147, -9
  br label %.preheader828.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %indvars.iv1029.i = phi i64 [ %indvars.iv.next1030.i.a, %.lr.ph903.i ], [ %indvars.iv1029.i.ph, %.lr.ph903.i.preheader ] ; 4 uses
  %indvars.iv1025.i = phi i64 [ %indvars.iv.next1026.i, %.lr.ph903.i ], [ %indvars.iv1025.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %.lr.ph903.i ], [ %indvars.iv1023.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %.0762898.i = phi i32 [ %i.kwe, %.lr.ph903.i ], [ %.0762898.i.ph, %.lr.ph903.i.preheader ]
  %i.kvj = getelementptr inbounds [4 x i8], ptr %i.jho, i64 %indvars.iv1025.i
  %i.kvk = load float, ptr %i.kvj, align 4, !tbaa !22, !noalias !277
  %i.kvl = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %indvars.iv1029.i
  %i.kvm = load float, ptr %i.kvl, align 4, !tbaa !22, !noalias !277
  %i.kvn = fadd reassoc nsz arcp contract afn float %i.kvm, %i.kvk
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %i.kvo = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %indvars.iv.next1024.i
  %i.kvp = load float, ptr %i.kvo, align 4, !tbaa !22, !noalias !277
  %i.kvq = fadd reassoc nsz arcp contract afn float %i.kvn, %i.kvp
  %i.kvr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kvq, float 1.000000e-10) ; 2 uses
  %indvars.iv.next1026.i = add nsw i64 %indvars.iv1025.i, 1 ; 2 uses
  %i.kvs = getelementptr inbounds [4 x i8], ptr %i.jhp, i64 %indvars.iv.next1026.i
  %i.kvt = load float, ptr %i.kvs, align 4, !tbaa !22, !noalias !277
  %i.kvu = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %indvars.iv1029.i
  %i.kvv = load float, ptr %i.kvu, align 4, !tbaa !22, !noalias !277
  %i.kvw = fadd reassoc nsz arcp contract afn float %i.kvv, %i.kvt
  %i.kvx = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %indvars.iv1023.i
  %i.kvy = load float, ptr %i.kvx, align 4, !tbaa !22, !noalias !277
  %i.kvz = fadd reassoc nsz arcp contract afn float %i.kvw, %i.kvy
  %i.kwa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kvz, float 1.000000e-10)
  %i.kwb = fadd reassoc nsz arcp contract afn float %i.kwa, %i.kvr
  %i.kwc = fdiv reassoc nsz arcp contract afn float %i.kvr, %i.kwb
  %i.kwd = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %indvars.iv1029.i
  store float %i.kwc, ptr %i.kwd, align 4, !tbaa !22, !noalias !277
  %i.kwe = add nuw nsw i32 %.0762898.i, 2         ; 2 uses
  %indvars.iv.next1030.i.a = add nuw nsw i64 %indvars.iv1029.i, 1
  %i.kwf = icmp slt i32 %i.kwe, %i.knw
  br i1 %i.kwf, label %.lr.ph903.i, label %._crit_edge904.i, !llvm.loop !344

.preheader828.i:                                  ; preds = %.preheader828.i.preheader, %._crit_edge914.i
  %indvar3055 = phi i32 [ 0, %.preheader828.i.preheader ], [ %indvar.next3058, %._crit_edge914.i ] ; 2 uses
  %indvar3057 = phi i32 [ 452, %.preheader828.i.preheader ], [ %indvars.iv.next1043.i, %._crit_edge914.i ] ; 4 uses
  %indvars.iv1038.i = phi i32 [ 339, %.preheader828.i.preheader ], [ %indvars.iv.next1039.i, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1032.i = phi i32 [ 563, %.preheader828.i.preheader ], [ %indvars.iv.next1033.i, %._crit_edge914.i ] ; 2 uses
  %.0755915.i = phi i32 [ 4, %.preheader828.i.preheader ], [ %i.lce, %._crit_edge914.i ] ; 2 uses
  %i.kwg = mul i32 %indvar3055, 112
  %i.kwh = add i32 %i.kwg, 448
  %i.kwi = zext i32 %i.kwh to i64
  %i.kwj = shl nuw nsw i64 %i.kwi, 1              ; 2 uses
  %scevgep3059.a = getelementptr i8, ptr %scevgep3056, i64 %i.kwj
  %i.kwk = shl nuw i32 %.0755915.i, 1
  %i.kwl = and i32 %i.kwk, 14                     ; 2 uses
  %i.kwm = shl nuw nsw i32 %i.kwl, 1
  %i.kwn = lshr i32 %.fr1043, %i.kwm
  %i.kwo = and i32 %i.kwn, 1                      ; 8 uses
  %i.kwp = or disjoint i32 %i.kwo, 4              ; 4 uses
  %i.kwq = icmp slt i32 %i.kwp, %i.knw
  br i1 %i.kwq, label %.lr.ph913.i, label %._crit_edge914.i

.lr.ph913.i:                                      ; preds = %.preheader828.i
  %i.kwr = or disjoint i32 %i.kwo, %i.kwl
  %i.kws = shl nuw nsw i32 %i.kwr, 1
  %i.kwt = lshr i32 %.fr1043, %i.kws              ; 2 uses
  %i.kwu = and i32 %i.kwt, 3
  %i.kwv = sub nsw i32 2, %i.kwu
  %i.kww = sext i32 %i.kwv to i64
  %i.kwx = getelementptr inbounds [50176 x i8], ptr %i.jhs, i64 %i.kww ; 10 uses
  %i.kwy = add i32 %i.kwo, %indvars.iv1032.i
  %i.kwz = lshr i32 %i.kwy, 1
  %i.kxa = zext nneg i32 %i.kwz to i64            ; 5 uses
  %9 = add i32 %i.kwo, %indvars.iv1038.i
  %10 = sdiv i32 %9, 2
  %i.kxb = sext i32 %10 to i64                    ; 5 uses
  %i.kxc = or disjoint i32 %i.kwo, %indvar3057
  %i.kxd = lshr exact i32 %indvar3057, 1
  %i.kxe = zext nneg i32 %i.kxd to i64            ; 4 uses
  %i.kxf = sext i32 %i.kxc to i64                 ; 5 uses
  %i.kxg = sub i32 %i.kvi, %i.kwo                 ; 2 uses
  %i.kxh = lshr i32 %i.kxg, 1
  %narrow4584.a = add nuw i32 %i.kxh, 1
  %i.kxi = zext i32 %narrow4584.a to i64          ; 2 uses
  %min.iters.check3210 = icmp ult i32 %i.kxg, 16
  br i1 %min.iters.check3210, label %scalar.ph3209.preheader, label %vector.memcheck3045

scalar.ph3209.preheader:                          ; preds = %vector.body3216, %vector.memcheck3045, %.lr.ph913.i
  %indvars.iv1042.i.ph = phi i64 [ %i.kxf, %vector.memcheck3045 ], [ %i.kxf, %.lr.ph913.i ], [ %i.kyg, %vector.body3216 ]
  %indvars.iv1040.i.ph.a = phi i64 [ %i.kxe, %vector.memcheck3045 ], [ %i.kxe, %.lr.ph913.i ], [ %i.kyh, %vector.body3216 ]
  %indvars.iv1036.i.ph.a = phi i64 [ %i.kxb, %vector.memcheck3045 ], [ %i.kxb, %.lr.ph913.i ], [ %i.kyi, %vector.body3216 ]
  %indvars.iv1034.i.ph = phi i64 [ %i.kxa, %vector.memcheck3045 ], [ %i.kxa, %.lr.ph913.i ], [ %i.kyj, %vector.body3216 ]
  %.0754907.i.ph = phi i32 [ %i.kwp, %vector.memcheck3045 ], [ %i.kwp, %.lr.ph913.i ], [ %i.kym, %vector.body3216 ]
  br label %scalar.ph3209

vector.memcheck3045:                              ; preds = %.lr.ph913.i
  %i.kxj = or disjoint i32 %indvar3057, %i.kwo
  %i.kxk = sext i32 %i.kxj to i64
  %i.kxl = shl nsw i64 %i.kxk, 2                  ; 12 uses
  %i.kxm = and i32 %i.kwt, 3
  %narrow4585 = mul nuw nsw i32 %i.kxm, 50176
  %i.kxn = zext nneg i32 %narrow4585 to i64       ; 2 uses
  %i.kxo = sub nsw i64 %i.kxl, %i.kxn             ; 9 uses
  %scevgep3047.a = getelementptr i8, ptr %scevgep3046.a, i64 %i.kxo ; 20 uses
  %i.kxp = sub i32 %i.kvh, %i.kwo
  %i.kxq = lshr i32 %i.kxp, 1
  %i.kxr = zext nneg i32 %i.kxq to i64            ; 2 uses
  %i.kxs = shl nuw nsw i64 %i.kxr, 3              ; 2 uses
  %i.kxt = add nsw i64 %i.kxs, %i.kxl
  %i.kxu = sub nsw i64 %i.kxt, %i.kxn             ; 9 uses
  %scevgep3049 = getelementptr i8, ptr %scevgep3048.a, i64 %i.kxu ; 20 uses
  %i.kxv = shl nuw nsw i64 %i.kxa, 2              ; 2 uses
  %scevgep3050.a = getelementptr i8, ptr %i.jhk, i64 %i.kxv
  %i.kxw = shl nuw nsw i64 %i.kxr, 2              ; 3 uses
  %i.kxx = getelementptr i8, ptr %scevgep3051.a, i64 %i.kxw
  %scevgep3052 = getelementptr i8, ptr %i.kxx, i64 %i.kxv
  %i.kxy = shl nsw i64 %i.kxb, 2                  ; 2 uses
  %scevgep3053.a = getelementptr i8, ptr %i.jhk, i64 %i.kxy
  %i.kxz = getelementptr i8, ptr %scevgep3054.a, i64 %i.kxw
  %scevgep3055 = getelementptr i8, ptr %i.kxz, i64 %i.kxy
  %i.kya = getelementptr i8, ptr %scevgep3060.a, i64 %i.kxw
  %scevgep3061.a = getelementptr i8, ptr %i.kya, i64 %i.kwj
  %scevgep3063.a = getelementptr i8, ptr %scevgep3062.a, i64 %i.kxo
  %scevgep3065.a = getelementptr i8, ptr %scevgep3064.a, i64 %i.kxu
  %scevgep3067.a = getelementptr i8, ptr %scevgep3066.a, i64 %i.kxo
  %scevgep3069.a = getelementptr i8, ptr %scevgep3068.a, i64 %i.kxu
  %scevgep3071.a = getelementptr i8, ptr %scevgep3070.a, i64 %i.kxo
  %scevgep3073.a = getelementptr i8, ptr %scevgep3072.a, i64 %i.kxu
  %scevgep3075.a = getelementptr i8, ptr %scevgep3074.a, i64 %i.kxl
  %i.kyb = add nsw i64 %i.kxs, %i.kxl             ; 9 uses
  %scevgep3077.a = getelementptr i8, ptr %scevgep3076.a, i64 %i.kyb
  %scevgep3079.a = getelementptr i8, ptr %scevgep3078.a, i64 %i.kxl
  %scevgep3081.a = getelementptr i8, ptr %scevgep3080.a, i64 %i.kyb
  %scevgep3083.a = getelementptr i8, ptr %scevgep3082.a, i64 %i.kxo
  %scevgep3085.a = getelementptr i8, ptr %scevgep3084.a, i64 %i.kxu
  %scevgep3087.a = getelementptr i8, ptr %scevgep3086.a, i64 %i.kxo
  %scevgep3089.a = getelementptr i8, ptr %scevgep3088.a, i64 %i.kxu
  %scevgep3091.a = getelementptr i8, ptr %scevgep3090.a, i64 %i.kxo
  %scevgep3093.a = getelementptr i8, ptr %scevgep3092.a, i64 %i.kxu
  %scevgep3095.a = getelementptr i8, ptr %scevgep3094.a, i64 %i.kxl
  %scevgep3097.a = getelementptr i8, ptr %scevgep3096.a, i64 %i.kyb
  %scevgep3099.a = getelementptr i8, ptr %scevgep3098.a, i64 %i.kxo
  %scevgep3101.a = getelementptr i8, ptr %scevgep3100.a, i64 %i.kxu
  %scevgep3103.a = getelementptr i8, ptr %scevgep3102.a, i64 %i.kxl
  %scevgep3105.a = getelementptr i8, ptr %scevgep3104.a, i64 %i.kyb
  %scevgep3107.a = getelementptr i8, ptr %scevgep3106.a, i64 %i.kxo
  %scevgep3109.a = getelementptr i8, ptr %scevgep3108.a, i64 %i.kxu
  %scevgep3111.a = getelementptr i8, ptr %scevgep3110.a, i64 %i.kxl
  %scevgep3113.a = getelementptr i8, ptr %scevgep3112.a, i64 %i.kyb
  %scevgep3115.a = getelementptr i8, ptr %scevgep3114.a, i64 %i.kxl
  %scevgep3117.a = getelementptr i8, ptr %scevgep3116.a, i64 %i.kyb
  %scevgep3119.a = getelementptr i8, ptr %scevgep3118.a, i64 %i.kxl
  %scevgep3121.a = getelementptr i8, ptr %scevgep3120.a, i64 %i.kyb
  %scevgep3123.a = getelementptr i8, ptr %scevgep3122.a, i64 %i.kxl
  %scevgep3125.a = getelementptr i8, ptr %scevgep3124.a, i64 %i.kyb
  %scevgep3127.a = getelementptr i8, ptr %scevgep3126.a, i64 %i.kxl
  %scevgep3129 = getelementptr i8, ptr %scevgep3128, i64 %i.kyb
  %bound03130 = icmp ult ptr %scevgep3047.a, %scevgep3052
  %bound13131 = icmp ult ptr %scevgep3050.a, %scevgep3049
  %found.conflict3132 = and i1 %bound03130, %bound13131
  %bound03133 = icmp ult ptr %scevgep3047.a, %scevgep3055
  %bound13134 = icmp ult ptr %scevgep3053.a, %scevgep3049
  %found.conflict3135 = and i1 %bound03133, %bound13134
  %conflict.rdx3136 = or i1 %found.conflict3132, %found.conflict3135
  %bound03137 = icmp ult ptr %scevgep3047.a, %scevgep3061.a
  %bound13138 = icmp ult ptr %scevgep3059.a, %scevgep3049
  %found.conflict3139 = and i1 %bound03137, %bound13138
  %conflict.rdx3140 = or i1 %conflict.rdx3136, %found.conflict3139
  %bound03141 = icmp ult ptr %scevgep3047.a, %scevgep3065.a
  %bound13142 = icmp ult ptr %scevgep3063.a, %scevgep3049
  %found.conflict3143 = and i1 %bound03141, %bound13142
  %conflict.rdx3144 = or i1 %conflict.rdx3140, %found.conflict3143
  %bound03145 = icmp ult ptr %scevgep3047.a, %scevgep3069.a
  %bound13146 = icmp ult ptr %scevgep3067.a, %scevgep3049
  %found.conflict3147 = and i1 %bound03145, %bound13146
  %conflict.rdx3148 = or i1 %conflict.rdx3144, %found.conflict3147
  %bound03149 = icmp ult ptr %scevgep3047.a, %scevgep3073.a
  %bound13150 = icmp ult ptr %scevgep3071.a, %scevgep3049
  %found.conflict3151 = and i1 %bound03149, %bound13150
  %conflict.rdx3152 = or i1 %conflict.rdx3148, %found.conflict3151
  %bound03153 = icmp ult ptr %scevgep3047.a, %scevgep3077.a
  %bound13154 = icmp ult ptr %scevgep3075.a, %scevgep3049
  %found.conflict3155 = and i1 %bound03153, %bound13154
  %conflict.rdx3156 = or i1 %conflict.rdx3152, %found.conflict3155
  %bound03157 = icmp ult ptr %scevgep3047.a, %scevgep3081.a
  %bound13158 = icmp ult ptr %scevgep3079.a, %scevgep3049
  %found.conflict3159 = and i1 %bound03157, %bound13158
  %conflict.rdx3160 = or i1 %conflict.rdx3156, %found.conflict3159
  %bound03161 = icmp ult ptr %scevgep3047.a, %scevgep3085.a
  %bound13162 = icmp ult ptr %scevgep3083.a, %scevgep3049
  %found.conflict3163 = and i1 %bound03161, %bound13162
  %conflict.rdx3164 = or i1 %conflict.rdx3160, %found.conflict3163
  %bound03165 = icmp ult ptr %scevgep3047.a, %scevgep3089.a
  %bound13166 = icmp ult ptr %scevgep3087.a, %scevgep3049
  %found.conflict3167 = and i1 %bound03165, %bound13166
  %conflict.rdx3168 = or i1 %conflict.rdx3164, %found.conflict3167
  %bound03169 = icmp ult ptr %scevgep3047.a, %scevgep3093.a
  %bound13170 = icmp ult ptr %scevgep3091.a, %scevgep3049
  %found.conflict3171 = and i1 %bound03169, %bound13170
  %conflict.rdx3172 = or i1 %conflict.rdx3168, %found.conflict3171
  %bound03173 = icmp ult ptr %scevgep3047.a, %scevgep3097.a
  %bound13174 = icmp ult ptr %scevgep3095.a, %scevgep3049
  %found.conflict3175 = and i1 %bound03173, %bound13174
  %conflict.rdx3176 = or i1 %conflict.rdx3172, %found.conflict3175
  %bound03177 = icmp ult ptr %scevgep3047.a, %scevgep3101.a
  %bound13178 = icmp ult ptr %scevgep3099.a, %scevgep3049
  %found.conflict3179 = and i1 %bound03177, %bound13178
  %conflict.rdx3180 = or i1 %conflict.rdx3176, %found.conflict3179
  %bound03181 = icmp ult ptr %scevgep3047.a, %scevgep3105.a
  %bound13182 = icmp ult ptr %scevgep3103.a, %scevgep3049
  %found.conflict3183 = and i1 %bound03181, %bound13182
  %conflict.rdx3184 = or i1 %conflict.rdx3180, %found.conflict3183
  %bound03185 = icmp ult ptr %scevgep3047.a, %scevgep3109.a
  %bound13186 = icmp ult ptr %scevgep3107.a, %scevgep3049
  %found.conflict3187 = and i1 %bound03185, %bound13186
  %conflict.rdx3188 = or i1 %conflict.rdx3184, %found.conflict3187
  %bound03189 = icmp ult ptr %scevgep3047.a, %scevgep3113.a
  %bound13190 = icmp ult ptr %scevgep3111.a, %scevgep3049
  %found.conflict3191 = and i1 %bound03189, %bound13190
  %conflict.rdx3192 = or i1 %conflict.rdx3188, %found.conflict3191
  %bound03193 = icmp ult ptr %scevgep3047.a, %scevgep3117.a
  %bound13194 = icmp ult ptr %scevgep3115.a, %scevgep3049
  %found.conflict3195 = and i1 %bound03193, %bound13194
  %conflict.rdx3196 = or i1 %conflict.rdx3192, %found.conflict3195
  %bound03197 = icmp ult ptr %scevgep3047.a, %scevgep3121.a
  %bound13198 = icmp ult ptr %scevgep3119.a, %scevgep3049
  %found.conflict3199 = and i1 %bound03197, %bound13198
  %conflict.rdx3200 = or i1 %conflict.rdx3196, %found.conflict3199
  %bound03201 = icmp ult ptr %scevgep3047.a, %scevgep3125.a
  %bound13202 = icmp ult ptr %scevgep3123.a, %scevgep3049
  %found.conflict3203 = and i1 %bound03201, %bound13202
  %conflict.rdx3204 = or i1 %conflict.rdx3200, %found.conflict3203
  %bound03205 = icmp ult ptr %scevgep3047.a, %scevgep3129
  %bound13206 = icmp ult ptr %scevgep3127.a, %scevgep3049
  %found.conflict3207 = and i1 %bound03205, %bound13206
  %conflict.rdx3208 = or i1 %conflict.rdx3204, %found.conflict3207
  br i1 %conflict.rdx3208, label %scalar.ph3209.preheader, label %vector.ph3211

vector.ph3211:                                    ; preds = %vector.memcheck3045
  %i.kyc = and i64 %i.kxi, 7                      ; 2 uses
  %i.kyd = icmp eq i64 %i.kyc, 0
  %i.kye = select i1 %i.kyd, i64 8, i64 %i.kyc
  %n.vec3212 = sub nsw i64 %i.kxi, %i.kye         ; 6 uses
  %i.kyf = shl nsw i64 %n.vec3212, 1
  %i.kyg = add nsw i64 %i.kyf, %i.kxf
  %i.kyh = add nsw i64 %n.vec3212, %i.kxe
  %i.kyi = add nsw i64 %n.vec3212, %i.kxb
  %i.kyj = add nsw i64 %n.vec3212, %i.kxa
  %i.kyk = trunc i64 %n.vec3212 to i32
  %i.kyl = shl i32 %i.kyk, 1
  %i.kym = add i32 %i.kwp, %i.kyl
  %broadcast.splatinsert3213 = insertelement <8 x i64> poison, i64 %i.kxf, i64 0
  %broadcast.splat3214 = shufflevector <8 x i64> %broadcast.splatinsert3213, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3215 = add nuw nsw <8 x i64> %broadcast.splat3214, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4905.a = getelementptr [4 x i8], ptr %i.jhk, i64 %i.kxe
  br label %vector.body3216

vector.body3216:                                  ; preds = %vector.body3216, %vector.ph3211
  %index3217 = phi i64 [ 0, %vector.ph3211 ], [ %index.next3259, %vector.body3216 ] ; 5 uses
  %vec.ind3218 = phi <8 x i64> [ %induction3215, %vector.ph3211 ], [ %vec.ind.next3260, %vector.body3216 ] ; 2 uses
  %i.kyn = shl nuw i64 %index3217, 1
  %i.kyo = add nuw i64 %i.kyn, %i.kxf             ; 5 uses
  %i.kyp = add i64 %index3217, %i.kxb             ; 2 uses
  %i.kyq = add nuw i64 %index3217, %i.kxa         ; 2 uses
  %gep4906.a = getelementptr [4 x i8], ptr %invariant.gep4905.a, i64 %index3217
  %wide.load3219.a = load <8 x float>, ptr %gep4906.a, align 8, !tbaa !22, !alias.scope !345, !noalias !277 ; 2 uses
  %i.kyr = getelementptr inbounds [4 x i8], ptr %i.jhk, i64 %i.kyp
  %wide.load3220.a = load <8 x float>, ptr %i.kyr, align 4, !tbaa !22, !alias.scope !348, !noalias !277
  %i.kys = getelementptr [4 x i8], ptr %i.jhk, i64 %i.kyp
  %i.kyt = getelementptr i8, ptr %i.kys, i64 4
  %wide.load3221.a = load <8 x float>, ptr %i.kyt, align 4, !tbaa !22, !alias.scope !348, !noalias !277
  %i.kyu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3221.a, %wide.load3220.a
  %i.kyv = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %i.kyq
  %wide.load3222 = load <8 x float>, ptr %i.kyv, align 4, !tbaa !22, !alias.scope !350, !noalias !277
  %i.kyw = fadd reassoc nsz arcp contract afn <8 x float> %i.kyu, %wide.load3222
  %i.kyx = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %i.kyq
  %i.kyy = getelementptr inbounds nuw i8, ptr %i.kyx, i64 4
  %wide.load3223 = load <8 x float>, ptr %i.kyy, align 4, !tbaa !22, !alias.scope !350, !noalias !277
  %i.kyz = fadd reassoc nsz arcp contract afn <8 x float> %i.kyw, %wide.load3223
  %i.kza = fmul reassoc nsz arcp contract afn <8 x float> %i.kyz, splat (float 2.500000e-01) ; 2 uses
  %i.kzb = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %wide.load3219.a
  %i.kzc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzb)
  %i.kzd = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kza
  %i.kze = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzd)
  %i.kzf = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.kzc, %i.kze
  %i.kzg = select reassoc nsz arcp contract afn <8 x i1> %i.kzf, <8 x float> %i.kza, <8 x float> %wide.load3219.a ; 3 uses
  %i.kzh = add nsw i64 %i.kyo, -113               ; 2 uses
  %i.kzi = getelementptr inbounds [4 x i8], ptr %i.kwx, i64 %i.kzh
  %wide.vec3224.a = load <16 x float>, ptr %i.kzi, align 4, !tbaa !22, !alias.scope !352, !noalias !277
  %strided.vec3225.a = shufflevector <16 x float> %wide.vec3224.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kzj = add nuw nsw i64 %i.kyo, 113            ; 2 uses
  %i.kzk = getelementptr inbounds nuw [4 x i8], ptr %i.kwx, i64 %i.kzj
  %wide.vec3226 = load <16 x float>, ptr %i.kzk, align 4, !tbaa !22, !alias.scope !354, !noalias !277
  %strided.vec3227 = shufflevector <16 x float> %wide.vec3226, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kzl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3225.a, %strided.vec3227
  %i.kzm = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzl)
  %i.kzn = fadd reassoc nsz arcp contract afn <8 x float> %i.kzm, splat (float f0x3727C5AC) ; 2 uses
  %wide.gep3228 = getelementptr [4 x i8], ptr %i.kwx, <8 x i64> %vec.ind3218 ; 2 uses
  %i.kzo = extractelement <8 x ptr> %wide.gep3228, i64 0 ; 4 uses
  %i.kzp = getelementptr i8, ptr %i.kzo, i64 -1356
  %wide.vec3229.a = load <16 x float>, ptr %i.kzp, align 4, !tbaa !22, !alias.scope !356, !noalias !277
  %strided.vec3230.a = shufflevector <16 x float> %wide.vec3229.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3225.a, %strided.vec3230.a
  %i.kzr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzq)
  %i.kzs = fadd reassoc nsz arcp contract afn <8 x float> %i.kzn, %i.kzr
  %i.kzt = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.kyo ; 5 uses
  %wide.vec3231.a = load <16 x float>, ptr %i.kzt, align 4, !tbaa !22, !alias.scope !358, !noalias !277
  %strided.vec3232.a = shufflevector <16 x float> %wide.vec3231.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 5 uses
  %i.kzu = getelementptr i8, ptr %i.kzt, i64 -904
  %wide.vec3233.a = load <16 x float>, ptr %i.kzu, align 4, !tbaa !22, !alias.scope !360, !noalias !277
  %strided.vec3234.a = shufflevector <16 x float> %wide.vec3233.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3232.a, %strided.vec3234.a
  %i.kzw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzv)
  %i.kzx = fadd reassoc nsz arcp contract afn <8 x float> %i.kzs, %i.kzw ; 2 uses
  %i.kzy = add nsw i64 %i.kyo, -111               ; 2 uses
  %i.kzz = getelementptr inbounds [4 x i8], ptr %i.kwx, i64 %i.kzy
  %wide.vec3235.a = load <16 x float>, ptr %i.kzz, align 4, !tbaa !22, !alias.scope !362, !noalias !277
  %strided.vec3236.a = shufflevector <16 x float> %wide.vec3235.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.laa = add nuw nsw i64 %i.kyo, 111            ; 2 uses
  %i.lab = getelementptr inbounds nuw [4 x i8], ptr %i.kwx, i64 %i.laa
  %wide.vec3237.a = load <16 x float>, ptr %i.lab, align 4, !tbaa !22, !alias.scope !364, !noalias !277
  %strided.vec3238.a = shufflevector <16 x float> %wide.vec3237.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lac = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236.a, %strided.vec3238.a
  %i.lad = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lac)
  %i.lae = fadd reassoc nsz arcp contract afn <8 x float> %i.lad, splat (float f0x3727C5AC) ; 2 uses
  %i.laf = getelementptr i8, ptr %i.kzo, i64 -1332
  %wide.vec3239.a = load <16 x float>, ptr %i.laf, align 4, !tbaa !22, !alias.scope !366, !noalias !277
  %strided.vec3240.a = shufflevector <16 x float> %wide.vec3239.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lag = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236.a, %strided.vec3240.a
  %i.lah = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lag)
  %i.lai = fadd reassoc nsz arcp contract afn <8 x float> %i.lae, %i.lah
  %i.laj = getelementptr i8, ptr %i.kzt, i64 -888
  %wide.vec3241.a = load <16 x float>, ptr %i.laj, align 4, !tbaa !22, !alias.scope !368, !noalias !277
  %strided.vec3242.a = shufflevector <16 x float> %wide.vec3241.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lak = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3232.a, %strided.vec3242.a
  %i.lal = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lak)
  %i.lam = fadd reassoc nsz arcp contract afn <8 x float> %i.lai, %i.lal ; 2 uses
  %i.lan = getelementptr inbounds nuw i8, ptr %i.kzo, i64 1332
  %wide.vec3243.a = load <16 x float>, ptr %i.lan, align 4, !tbaa !22, !alias.scope !370, !noalias !277
  %strided.vec3244.a = shufflevector <16 x float> %wide.vec3243.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lao = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3238.a, %strided.vec3244.a
  %i.lap = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lao)
  %i.laq = fadd reassoc nsz arcp contract afn <8 x float> %i.lap, %i.lae
  %i.lar = getelementptr inbounds nuw i8, ptr %i.kzt, i64 888
  %wide.vec3245.a = load <16 x float>, ptr %i.lar, align 4, !tbaa !22, !alias.scope !372, !noalias !277
  %strided.vec3246.a = shufflevector <16 x float> %wide.vec3245.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.las = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3232.a, %strided.vec3246.a
  %i.lat = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.las)
  %i.lau = fadd reassoc nsz arcp contract afn <8 x float> %i.laq, %i.lat ; 2 uses
  %i.lav = getelementptr inbounds nuw i8, ptr %i.kzo, i64 1356
  %wide.vec3247.a = load <16 x float>, ptr %i.lav, align 4, !tbaa !22, !alias.scope !374, !noalias !277
  %strided.vec3248.a = shufflevector <16 x float> %wide.vec3247.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.law = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3248.a
  %i.lax = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.law)
  %i.lay = fadd reassoc nsz arcp contract afn <8 x float> %i.lax, %i.kzn
  %i.laz = getelementptr inbounds nuw i8, ptr %i.kzt, i64 904
  %wide.vec3249.a = load <16 x float>, ptr %i.laz, align 4, !tbaa !22, !alias.scope !376, !noalias !277
  %strided.vec3250.a = shufflevector <16 x float> %wide.vec3249.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lba = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3232.a, %strided.vec3250.a
  %i.lbb = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lba)
  %i.lbc = fadd reassoc nsz arcp contract afn <8 x float> %i.lay, %i.lbb ; 2 uses
  %i.lbd = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.kzh
  %wide.vec3251.a = load <16 x float>, ptr %i.lbd, align 4, !tbaa !22, !alias.scope !378, !noalias !277
  %strided.vec3252.a = shufflevector <16 x float> %wide.vec3251.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbe = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3225.a, %strided.vec3252.a
  %i.lbf = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.kzy
  %wide.vec3253.a = load <16 x float>, ptr %i.lbf, align 4, !tbaa !22, !alias.scope !380, !noalias !277
  %strided.vec3254.a = shufflevector <16 x float> %wide.vec3253.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236.a, %strided.vec3254.a
  %i.lbh = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.laa
  %wide.vec3255.a = load <16 x float>, ptr %i.lbh, align 4, !tbaa !22, !alias.scope !382, !noalias !277
  %strided.vec3256.a = shufflevector <16 x float> %wide.vec3255.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbi = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3238.a, %strided.vec3256.a
  %i.lbj = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.kzj
  %wide.vec3257 = load <16 x float>, ptr %i.lbj, align 4, !tbaa !22, !alias.scope !384, !noalias !277
  %strided.vec3258 = shufflevector <16 x float> %wide.vec3257, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3258
  %i.lbl = fmul reassoc nsz arcp contract afn <8 x float> %i.lbk, %i.kzx
  %i.lbm = fmul reassoc nsz arcp contract afn <8 x float> %i.lbc, %i.lbe
  %i.lbn = fadd reassoc nsz arcp contract afn <8 x float> %i.lbl, %i.lbm
  %i.lbo = fadd reassoc nsz arcp contract afn <8 x float> %i.lbc, %i.kzx
  %i.lbp = fdiv reassoc nsz arcp contract afn <8 x float> %i.lbn, %i.lbo ; 2 uses
  %i.lbq = fmul reassoc nsz arcp contract afn <8 x float> %i.lbi, %i.lam
  %i.lbr = fmul reassoc nsz arcp contract afn <8 x float> %i.lbg, %i.lau
  %i.lbs = fadd reassoc nsz arcp contract afn <8 x float> %i.lbq, %i.lbr
  %i.lbt = fadd reassoc nsz arcp contract afn <8 x float> %i.lau, %i.lam
  %i.lbu = fdiv reassoc nsz arcp contract afn <8 x float> %i.lbs, %i.lbt
  %i.lbv = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kzg, zeroinitializer
  %i.lbw = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kzg, splat (float 1.000000e+00)
  %i.lbx = select reassoc nsz arcp contract afn <8 x i1> %i.lbw, <8 x float> %i.kzg, <8 x float> splat (float 1.000000e+00)
  %i.lby = select reassoc nsz arcp contract afn <8 x i1> %i.lbv, <8 x float> %i.lbx, <8 x float> zeroinitializer
  %i.lbz = fsub reassoc nsz arcp contract afn <8 x float> %i.lbu, %i.lbp
  %i.lca = fmul reassoc nsz arcp contract afn <8 x float> %i.lbz, %i.lby
  %i.lcb = fadd reassoc nsz arcp contract afn <8 x float> %i.lbp, %i.lca
  %i.lcc = fadd reassoc nsz arcp contract afn <8 x float> %i.lcb, %strided.vec3232.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.lcc, <8 x ptr> align 4 %wide.gep3228, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !386, !noalias !388
  %index.next3259 = add nuw i64 %index3217, 8     ; 2 uses
  %vec.ind.next3260 = add nuw nsw <8 x i64> %vec.ind3218, splat (i64 16)
  %i.lcd = icmp eq i64 %index.next3259, %n.vec3212
  br i1 %i.lcd, label %scalar.ph3209.preheader, label %vector.body3216, !llvm.loop !389

._crit_edge914.i:                                 ; preds = %scalar.ph3209, %.preheader828.i
  %i.lce = add nuw nsw i32 %.0755915.i, 1         ; 2 uses
  %i.lcf = icmp slt i32 %i.lce, %i.jik
  %indvars.iv.next1033.i = add i32 %indvars.iv1032.i, 112
  %indvars.iv.next1039.i = add i32 %indvars.iv1038.i, 112
  %indvars.iv.next1043.i = add i32 %indvar3057, 112
  %indvar.next3058 = add i32 %indvar3055, 1
  br i1 %i.lcf, label %.preheader828.i, label %.preheader.i541.preheader

.preheader.i541.preheader:                        ; preds = %._crit_edge914.i
  %i.lcg = add i32 %smin1147, -9
  %i.lch = add i32 %smin1147, -9
  br label %.preheader.i541

scalar.ph3209:                                    ; preds = %scalar.ph3209.preheader, %scalar.ph3209
  %indvars.iv1042.i = phi i64 [ %indvars.iv.next1043.i.a, %scalar.ph3209 ], [ %indvars.iv1042.i.ph, %scalar.ph3209.preheader ] ; 7 uses
  %indvars.iv1040.i.a = phi i64 [ %indvars.iv.next1041.i, %scalar.ph3209 ], [ %indvars.iv1040.i.ph.a, %scalar.ph3209.preheader ] ; 2 uses
  %indvars.iv1036.i.a = phi i64 [ %indvars.iv.next1037.i.a, %scalar.ph3209 ], [ %indvars.iv1036.i.ph.a, %scalar.ph3209.preheader ] ; 2 uses
  %indvars.iv1034.i = phi i64 [ %indvars.iv.next1035.i, %scalar.ph3209 ], [ %indvars.iv1034.i.ph, %scalar.ph3209.preheader ] ; 2 uses
  %.0754907.i = phi i32 [ %i.lgk, %scalar.ph3209 ], [ %.0754907.i.ph, %scalar.ph3209.preheader ]
  %i.lci = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %indvars.iv1040.i.a
  %i.lcj = load float, ptr %i.lci, align 4, !tbaa !22, !noalias !277 ; 2 uses
  %i.lck = getelementptr inbounds [4 x i8], ptr %i.jhk, i64 %indvars.iv1036.i.a
  %indvars.iv.next1037.i.a = add nsw i64 %indvars.iv1036.i.a, 1
  %i.lcl = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %indvars.iv1034.i
  %indvars.iv.next1035.i = add nuw nsw i64 %indvars.iv1034.i, 1
  %i.lcm = load <2 x float>, ptr %i.lck, align 4, !tbaa !22, !noalias !277
  %i.lcn = load <2 x float>, ptr %i.lcl, align 4, !tbaa !22, !noalias !277
  %i.lco = shufflevector <2 x float> %i.lcn, <2 x float> %i.lcm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lcp = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lco)
  %i.lcq = fmul reassoc nsz arcp contract afn float %i.lcp, 2.500000e-01 ; 2 uses
  %i.lcr = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lcj
  %i.lcs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcr)
  %i.lct = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lcq
  %i.lcu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lct)
  %i.lcv = fcmp reassoc nsz arcp contract afn olt float %i.lcs, %i.lcu
  %i.lcw = select reassoc nsz arcp contract afn i1 %i.lcv, float %i.lcq, float %i.lcj ; 3 uses
  %i.lcx = add nsw i64 %indvars.iv1042.i, -113    ; 2 uses
  %i.lcy = getelementptr inbounds [4 x i8], ptr %i.kwx, i64 %i.lcx
  %i.lcz = load float, ptr %i.lcy, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.lda = add nuw nsw i64 %indvars.iv1042.i, 113 ; 2 uses
  %i.ldb = getelementptr inbounds nuw [4 x i8], ptr %i.kwx, i64 %i.lda
  %i.ldc = load float, ptr %i.ldb, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.ldd = fsub reassoc nsz arcp contract afn float %i.lcz, %i.ldc
  %i.lde = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldd)
  %i.ldf = fadd reassoc nsz arcp contract afn float %i.lde, f0x3727C5AC ; 2 uses
  %i.ldg = getelementptr [4 x i8], ptr %i.kwx, i64 %indvars.iv1042.i ; 5 uses
  %i.ldh = getelementptr i8, ptr %i.ldg, i64 -1356
  %i.ldi = load float, ptr %i.ldh, align 4, !tbaa !22, !noalias !277
  %i.ldj = fsub reassoc nsz arcp contract afn float %i.lcz, %i.ldi
  %i.ldk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldj)
  %i.ldl = fadd reassoc nsz arcp contract afn float %i.ldf, %i.ldk
  %i.ldm = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %indvars.iv1042.i ; 5 uses
  %i.ldn = load float, ptr %i.ldm, align 4, !tbaa !22, !noalias !277 ; 5 uses
  %i.ldo = getelementptr i8, ptr %i.ldm, i64 -904
  %i.ldp = load float, ptr %i.ldo, align 4, !tbaa !22, !noalias !277
  %i.ldq = fsub reassoc nsz arcp contract afn float %i.ldn, %i.ldp
  %i.ldr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldq)
  %i.lds = fadd reassoc nsz arcp contract afn float %i.ldl, %i.ldr ; 2 uses
  %i.ldt = add nsw i64 %indvars.iv1042.i, -111    ; 2 uses
  %i.ldu = getelementptr inbounds [4 x i8], ptr %i.kwx, i64 %i.ldt
  %i.ldv = load float, ptr %i.ldu, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.ldw = add nuw nsw i64 %indvars.iv1042.i, 111 ; 2 uses
  %i.ldx = getelementptr inbounds nuw [4 x i8], ptr %i.kwx, i64 %i.ldw
  %i.ldy = load float, ptr %i.ldx, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.ldz = fsub reassoc nsz arcp contract afn float %i.ldv, %i.ldy
  %i.lea = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldz)
  %i.leb = fadd reassoc nsz arcp contract afn float %i.lea, f0x3727C5AC ; 2 uses
  %i.lec = getelementptr i8, ptr %i.ldg, i64 -1332
  %i.led = load float, ptr %i.lec, align 4, !tbaa !22, !noalias !277
  %i.lee = fsub reassoc nsz arcp contract afn float %i.ldv, %i.led
  %i.lef = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lee)
  %i.leg = fadd reassoc nsz arcp contract afn float %i.leb, %i.lef
  %i.leh = getelementptr i8, ptr %i.ldm, i64 -888
  %i.lei = load float, ptr %i.leh, align 4, !tbaa !22, !noalias !277
  %i.lej = fsub reassoc nsz arcp contract afn float %i.ldn, %i.lei
  %i.lek = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lej)
  %i.lel = fadd reassoc nsz arcp contract afn float %i.leg, %i.lek ; 2 uses
  %i.lem = getelementptr inbounds nuw i8, ptr %i.ldg, i64 1332
  %i.len = load float, ptr %i.lem, align 4, !tbaa !22, !noalias !277
  %i.leo = fsub reassoc nsz arcp contract afn float %i.ldy, %i.len
  %i.lep = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.leo)
  %i.leq = fadd reassoc nsz arcp contract afn float %i.lep, %i.leb
  %i.ler = getelementptr inbounds nuw i8, ptr %i.ldm, i64 888
  %i.les = load float, ptr %i.ler, align 4, !tbaa !22, !noalias !277
  %i.let = fsub reassoc nsz arcp contract afn float %i.ldn, %i.les
  %i.leu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.let)
  %i.lev = fadd reassoc nsz arcp contract afn float %i.leq, %i.leu ; 2 uses
  %i.lew = getelementptr inbounds nuw i8, ptr %i.ldg, i64 1356
  %i.lex = load float, ptr %i.lew, align 4, !tbaa !22, !noalias !277
  %i.ley = fsub reassoc nsz arcp contract afn float %i.ldc, %i.lex
  %i.lez = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ley)
  %i.lfa = fadd reassoc nsz arcp contract afn float %i.lez, %i.ldf
  %i.lfb = getelementptr inbounds nuw i8, ptr %i.ldm, i64 904
  %i.lfc = load float, ptr %i.lfb, align 4, !tbaa !22, !noalias !277
  %i.lfd = fsub reassoc nsz arcp contract afn float %i.ldn, %i.lfc
  %i.lfe = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lfd)
  %i.lff = fadd reassoc nsz arcp contract afn float %i.lfa, %i.lfe ; 2 uses
  %i.lfg = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.lcx
  %i.lfh = load float, ptr %i.lfg, align 4, !tbaa !22, !noalias !277
  %i.lfi = fsub reassoc nsz arcp contract afn float %i.lcz, %i.lfh
  %i.lfj = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.ldt
  %i.lfk = load float, ptr %i.lfj, align 4, !tbaa !22, !noalias !277
  %i.lfl = fsub reassoc nsz arcp contract afn float %i.ldv, %i.lfk
  %i.lfm = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.ldw
  %i.lfn = load float, ptr %i.lfm, align 4, !tbaa !22, !noalias !277
  %i.lfo = fsub reassoc nsz arcp contract afn float %i.ldy, %i.lfn
  %i.lfp = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.lda
  %i.lfq = load float, ptr %i.lfp, align 4, !tbaa !22, !noalias !277
  %i.lfr = fsub reassoc nsz arcp contract afn float %i.ldc, %i.lfq
  %i.lfs = fmul reassoc nsz arcp contract afn float %i.lfr, %i.lds
  %i.lft = fmul reassoc nsz arcp contract afn float %i.lff, %i.lfi
  %i.lfu = fadd reassoc nsz arcp contract afn float %i.lfs, %i.lft
  %i.lfv = fadd reassoc nsz arcp contract afn float %i.lff, %i.lds
  %i.lfw = fdiv reassoc nsz arcp contract afn float %i.lfu, %i.lfv ; 2 uses
  %i.lfx = fmul reassoc nsz arcp contract afn float %i.lfo, %i.lel
  %i.lfy = fmul reassoc nsz arcp contract afn float %i.lfl, %i.lev
  %i.lfz = fadd reassoc nsz arcp contract afn float %i.lfx, %i.lfy
  %i.lga = fadd reassoc nsz arcp contract afn float %i.lev, %i.lel
  %i.lgb = fdiv reassoc nsz arcp contract afn float %i.lfz, %i.lga
  %i.lgc = fcmp reassoc nsz arcp contract afn oge float %i.lcw, 0.000000e+00
  %i.lgd = fcmp reassoc nsz arcp contract afn ole float %i.lcw, 1.000000e+00
  %i.lge = select reassoc nsz arcp contract afn i1 %i.lgd, float %i.lcw, float 1.000000e+00
  %i.lgf = select reassoc nsz arcp contract afn i1 %i.lgc, float %i.lge, float 0.000000e+00
  %i.lgg = fsub reassoc nsz arcp contract afn float %i.lgb, %i.lfw
  %i.lgh = fmul reassoc nsz arcp contract afn float %i.lgg, %i.lgf
  %i.lgi = fadd reassoc nsz arcp contract afn float %i.lfw, %i.lgh
  %i.lgj = fadd reassoc nsz arcp contract afn float %i.lgi, %i.ldn
  store float %i.lgj, ptr %i.ldg, align 4, !tbaa !22, !noalias !277
  %i.lgk = add nuw nsw i32 %.0754907.i, 2         ; 2 uses
  %indvars.iv.next1043.i.a = add nuw nsw i64 %indvars.iv1042.i, 2
  %indvars.iv.next1041.i = add nuw nsw i64 %indvars.iv1040.i.a, 1
  %i.lgl = icmp slt i32 %i.lgk, %i.knw
  br i1 %i.lgl, label %scalar.ph3209, label %._crit_edge914.i, !llvm.loop !390

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.lgm = icmp eq i32 %.0745937.i, 0
  %i.lgn = select i1 %i.lgm, i32 9, i32 10        ; 4 uses
  %i.lgo = add nuw nsw i32 %i.lgn, %i.jke         ; 3 uses
  %i.lgp = icmp eq i32 %.0745937.i, %i.apl        ; 2 uses
  %.neg793.i = select i1 %i.lgp, i32 -9, i32 -10  ; 2 uses
  %i.lgq = add nsw i32 %i.jkg, %.neg793.i         ; 2 uses
  %i.lgr = icmp slt i32 %i.lgo, %i.lgq
  %or.cond944.i = select i1 %i.jit, i1 %i.lgr, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.lgs = add i32 %i.lgn, %indvars.iv1057.i
  %i.lgt = shl i32 %i.lgs, 2
  %i.lgu = or disjoint i32 %i.lgn, %i.jix
  %i.lgv = add i32 %.neg793.i, %i.jkg
  %i.lgw = add i32 %i.lgv, %i.jjv
  %i.lgx = sub i32 %i.lgw, %i.lgn                 ; 2 uses
  %i.lgy = zext i32 %i.lgx to i64
  %i.lgz = add nuw nsw i64 %i.lgy, 1              ; 2 uses
  %min.iters.check2941 = icmp ult i32 %i.lgx, 7
  %n.vec2943 = and i64 %i.lgz, 8589934584         ; 5 uses
  %i.lha = shl nuw nsw i64 %n.vec2943, 2
  %i.lhb = trunc i64 %n.vec2943 to i32
  %i.lhc = add i32 %i.lgo, %i.lhb
  %cmp.n2954 = icmp eq i64 %i.lgz, %n.vec2943
  br label %.lr.ph930.i

.preheader.i541:                                  ; preds = %.preheader.i541.preheader, %._crit_edge922.i
  %indvars.iv1050.i = phi i32 [ %indvars.iv.next1051.i, %._crit_edge922.i ], [ 452, %.preheader.i541.preheader ] ; 3 uses
  %.0744923.i = phi i32 [ %i.lnp, %._crit_edge922.i ], [ 4, %.preheader.i541.preheader ] ; 2 uses
  %i.lhd = shl i32 %.0744923.i, 2
  %i.lhe = and i32 %i.lhd, 28
  %i.lhf = or disjoint i32 %i.lhe, 2
  %i.lhg = lshr i32 %.fr1043, %i.lhf
  %i.lhh = and i32 %i.lhg, 1                      ; 5 uses
  %i.lhi = or disjoint i32 %i.lhh, 4              ; 4 uses
  %i.lhj = icmp slt i32 %i.lhi, %i.knw
  br i1 %i.lhj, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i541
  %i.lhk = or disjoint i32 %i.lhh, %indvars.iv1050.i
  %i.lhl = sext i32 %i.lhk to i64                 ; 5 uses
  %i.lhm = sub i32 %i.lch, %i.lhh                 ; 2 uses
  %i.lhn = lshr i32 %i.lhm, 1
  %narrow4586 = add nuw i32 %i.lhn, 1
  %i.lho = zext i32 %narrow4586 to i64            ; 2 uses
  %min.iters.check2971 = icmp ult i32 %i.lhm, 16
  br i1 %min.iters.check2971, label %.lr.ph921.i.preheader, label %vector.memcheck2958

.lr.ph921.i.preheader:                            ; preds = %vector.body2977, %vector.memcheck2958, %.lr.ph921.preheader.i
  %indvars.iv1052.i.ph = phi i64 [ %i.lhl, %vector.memcheck2958 ], [ %i.lhl, %.lr.ph921.preheader.i ], [ %i.lib, %vector.body2977 ]
  %.0743918.i.ph = phi i32 [ %i.lhi, %vector.memcheck2958 ], [ %i.lhi, %.lr.ph921.preheader.i ], [ %i.lie, %vector.body2977 ]
  br label %.lr.ph921.i

vector.memcheck2958:                              ; preds = %.lr.ph921.preheader.i
  %i.lhp = or disjoint i32 %indvars.iv1050.i, %i.lhh
  %i.lhq = sext i32 %i.lhp to i64
  %i.lhr = shl nsw i64 %i.lhq, 2                  ; 3 uses
  %scevgep2960.a = getelementptr i8, ptr %scevgep2959.a, i64 %i.lhr
  %i.lhs = sub i32 %i.lcg, %i.lhh
  %i.lht = lshr i32 %i.lhs, 1
  %i.lhu = zext nneg i32 %i.lht to i64
  %i.lhv = shl nuw nsw i64 %i.lhu, 3
  %i.lhw = add nsw i64 %i.lhv, %i.lhr             ; 2 uses
  %scevgep2962.a = getelementptr i8, ptr %scevgep2961.a, i64 %i.lhw
  %scevgep2964.a = getelementptr i8, ptr %scevgep2963.a, i64 %i.lhr
  %scevgep2966 = getelementptr i8, ptr %scevgep2965, i64 %i.lhw
  %bound02967 = icmp ult ptr %scevgep2960.a, %scevgep2966
  %bound12968 = icmp ult ptr %scevgep2964.a, %scevgep2962.a
  %found.conflict2969 = and i1 %bound02967, %bound12968
  br i1 %found.conflict2969, label %.lr.ph921.i.preheader, label %vector.ph2972
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.lua = fmul reassoc nsz arcp contract afn float %i.ltz, %i.lpw
  %i.lub = fadd reassoc nsz arcp contract afn float %i.ltt, %i.lua
  %i.luc = fadd reassoc nsz arcp contract afn float %i.lub, %i.loo
  store float %i.luc, ptr %i.lsn, align 4, !tbaa !22, !noalias !277
  %i.lud = add nuw nsw i32 %.0743918.i, 2         ; 2 uses
  %i.lue = icmp slt i32 %i.lud, %i.knw
  br i1 %i.lue, label %.lr.ph921.i, label %._crit_edge922.i, !llvm.loop !398

._crit_edge935.split.i:                           ; preds = %._crit_edge931.i, %._crit_edge925.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27, !noalias !282
  %i.luf = add nuw i32 %.0745937.i, 1
  %indvars.iv.next950.i = add i32 %indvars.iv949.i, 92
  %indvars.iv.next1017.i = add i32 %indvars.iv1016.i, 92
  %indvars.iv.next1019.i = add i32 %indvars.iv1018.i, -92
  %indvars.iv.next1058.i = add i32 %indvars.iv1057.i, 92
  br i1 %i.lgp, label %._crit_edge939.i, label %bb.pb

.lr.ph930.i:                                      ; preds = %._crit_edge931.i, %.lr.ph930.preheader.i
  %indvars.iv1063.i.a = phi i32 [ %i.lgu, %.lr.ph930.preheader.i ], [ %indvars.iv.next1064.i, %._crit_edge931.i ] ; 2 uses
  %indvars.iv1059.i = phi i32 [ %i.lgt, %.lr.ph930.preheader.i ], [ %indvars.iv.next1060.i, %._crit_edge931.i ] ; 2 uses
  %.0739932.i = phi i32 [ %i.jiq, %.lr.ph930.preheader.i ], [ %i.luv, %._crit_edge931.i ]
  %i.lug = sext i32 %indvars.iv1059.i to i64      ; 3 uses
  %i.luh = sext i32 %indvars.iv1063.i.a to i64    ; 3 uses
  br i1 %min.iters.check2941, label %scalar.ph2940.preheader, label %vector.ph2942

vector.ph2942:                                    ; preds = %.lr.ph930.i
  %i.lui = add nsw i64 %n.vec2943, %i.luh
  %i.luj = add nsw i64 %i.lha, %i.lug
  %invariant.gep4907 = getelementptr [4 x i8], ptr %i.aop, i64 %i.lug
  br label %vector.body2946

vector.body2946:                                  ; preds = %vector.body2946, %vector.ph2942
  %index2947 = phi i64 [ 0, %vector.ph2942 ], [ %index.next2952, %vector.body2946 ] ; 3 uses
  %i.luk = add i64 %index2947, %i.luh             ; 3 uses
  %i.lul = getelementptr inbounds [4 x i8], ptr %i.jhs, i64 %i.luk
  %wide.load2948.a = load <8 x float>, ptr %i.lul, align 4, !tbaa !22, !noalias !277
  %.idx4587 = shl i64 %index2947, 4
  %gep4908 = getelementptr i8, ptr %invariant.gep4907, i64 %.idx4587
  %i.lum = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.luk
  %wide.load2949 = load <8 x float>, ptr %i.lum, align 4, !tbaa !22, !noalias !277
  %i.lun = getelementptr inbounds [4 x i8], ptr %i.jhv, i64 %i.luk
  %wide.load2950 = load <8 x float>, ptr %i.lun, align 4, !tbaa !22, !noalias !277
  %i.luo = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load2950, <8 x float> zeroinitializer)
  %i.lup = fmul reassoc nsz arcp contract afn <8 x float> %i.luo, %broadcast.splat2945
  %i.luq = shufflevector <8 x float> %wide.load2948.a, <8 x float> %wide.load2949, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lur = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.luq, <16 x float> zeroinitializer)
  %i.lus = fmul reassoc nsz arcp contract afn <16 x float> %i.lur, %i.axc
  %i.lut = shufflevector <8 x float> %i.lup, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec2951 = shufflevector <16 x float> %i.lus, <16 x float> %i.lut, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec2951, ptr %gep4908, align 4, !tbaa !22, !alias.scope !277, !noalias !280
  %index.next2952 = add nuw i64 %index2947, 8     ; 2 uses
  %i.luu = icmp eq i64 %index.next2952, %n.vec2943
  br i1 %i.luu, label %middle.block2953, label %vector.body2946, !llvm.loop !399

middle.block2953:                                 ; preds = %vector.body2946
  br i1 %cmp.n2954, label %._crit_edge931.i, label %scalar.ph2940.preheader

scalar.ph2940.preheader:                          ; preds = %.lr.ph930.i, %middle.block2953
  %indvars.iv1065.i.ph.a = phi i64 [ %i.luh, %.lr.ph930.i ], [ %i.lui, %middle.block2953 ]
  %indvars.iv1061.i.ph = phi i64 [ %i.lug, %.lr.ph930.i ], [ %i.luj, %middle.block2953 ]
  %.0738926.i.ph = phi i32 [ %i.lgo, %.lr.ph930.i ], [ %i.lhc, %middle.block2953 ]
  br label %scalar.ph2940

._crit_edge931.i:                                 ; preds = %scalar.ph2940, %middle.block2953
  %i.luv = add nuw nsw i32 %.0739932.i, 1         ; 2 uses
  %i.luw = icmp slt i32 %i.luv, %i.jis
  %indvars.iv.next1060.i = add i32 %indvars.iv1059.i, %i.app
  %indvars.iv.next1064.i = add i32 %indvars.iv1063.i.a, 112
  br i1 %i.luw, label %.lr.ph930.i, label %._crit_edge935.split.i

scalar.ph2940:                                    ; preds = %scalar.ph2940.preheader, %scalar.ph2940
  %indvars.iv1065.i.a = phi i64 [ %indvars.iv.next1066.i, %scalar.ph2940 ], [ %indvars.iv1065.i.ph.a, %scalar.ph2940.preheader ] ; 4 uses
  %indvars.iv1061.i = phi i64 [ %indvars.iv.next1062.i, %scalar.ph2940 ], [ %indvars.iv1061.i.ph, %scalar.ph2940.preheader ] ; 2 uses
  %.0738926.i = phi i32 [ %i.lvl, %scalar.ph2940 ], [ %.0738926.i.ph, %scalar.ph2940.preheader ]
  %i.lux = getelementptr inbounds [4 x i8], ptr %i.jhs, i64 %indvars.iv1065.i.a
  %i.luy = load float, ptr %i.lux, align 4, !tbaa !22, !noalias !277
  %i.luz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.luy, float 0.000000e+00)
  %i.lva = getelementptr inbounds [4 x i8], ptr %i.aop, i64 %indvars.iv1061.i
  %i.lvb = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %indvars.iv1065.i.a
  %i.lvc = load float, ptr %i.lvb, align 4, !tbaa !22, !noalias !277
  %i.lvd = getelementptr inbounds [4 x i8], ptr %i.jhv, i64 %indvars.iv1065.i.a
  %i.lve = load float, ptr %i.lvd, align 4, !tbaa !22, !noalias !277
  %i.lvf = insertelement <4 x float> poison, float %i.lvc, i64 0
  %i.lvg = insertelement <4 x float> %i.lvf, float %i.lve, i64 1
  %i.lvh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.luz, i64 0
  %i.lvi = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lvg, <4 x float> <float 0.000000e+00, float 0.000000e+00, float undef, float undef>)
  %i.lvj = shufflevector <4 x float> %i.lvh, <4 x float> %i.lvi, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lvk = fmul reassoc nsz arcp contract afn <4 x float> %i.lvj, %i.axe
  store <4 x float> %i.lvk, ptr %i.lva, align 4, !tbaa !22, !alias.scope !277, !noalias !280
  %i.lvl = add nuw nsw i32 %.0738926.i, 1         ; 2 uses
  %indvars.iv.next1062.i = add nsw i64 %indvars.iv1061.i, 4
  %indvars.iv.next1066.i = add nsw i64 %indvars.iv1065.i.a, 1
  %i.lvm = icmp slt i32 %i.lvl, %i.lgq
  br i1 %i.lvm, label %scalar.ph2940, label %._crit_edge931.i, !llvm.loop !400

bb.ph:                                            ; preds = %bb.ox
  %i.lvn = load i32, ptr %i.aoz, align 4, !tbaa !401 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.aop, ptr noundef %i.ayn, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef range(i32 10, 9) %.fr1043, float noundef 0.000000e+00, i32 noundef 4)
  %i.lvo = icmp slt i32 %i.ayd, 8
  %or.cond.i549 = or i1 %i.apa, %i.lvo
  br i1 %or.cond.i549, label %demosaic_box3.exit, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.lvp = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !407, !noalias !408
  %.not.i550 = icmp eq ptr %i.lvp, null
  br i1 %.not.i550, label %bb.pj, label %.preheader1020.preheader.i

bb.pj:                                            ; preds = %bb.pi
  %i.lvq = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !402 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lvq, i64 64) ]
  store ptr %i.lvq, ptr @lmmse_gamma_in, align 8, !tbaa !407, !noalias !408
  %i.lvr = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !402 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lvr, i64 64) ]
  store ptr %i.lvr, ptr @lmmse_gamma_out, align 8, !tbaa !407, !noalias !408
  %i.lvs = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.lvt = icmp ne ptr %i.lvs, null
  %i.lvu = icmp ne ptr %i.lvr, null
  %or.cond.i.i568 = select i1 %i.lvt, i1 %i.lvu, i1 false
  br i1 %or.cond.i.i568, label %.preheader.i.i569, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  tail call void @free(ptr noundef %i.lvs) #27, !noalias !402
  tail call void @free(ptr noundef %i.lvr) #27, !noalias !402
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !407, !noalias !408
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !407, !noalias !408
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.212) #27, !noalias !402
  br label %.preheader1020.preheader.i

.preheader.i.i569:                                ; preds = %bb.pj, %bb.pq
  %indvars.iv.i.i570 = phi i64 [ %indvars.iv.next.i.i571, %bb.pq ], [ 0, %bb.pj ] ; 4 uses
  %i.lvv = trunc nuw nsw i64 %indvars.iv.i.i570 to i32
  %i.lvw = uitofp nneg i32 %i.lvv to double       ; 4 uses
  %i.lvx = fmul reassoc nnan nsz arcp contract afn double %i.lvw, f0x3EF0001000100010 ; 3 uses
  %i.lvy = fcmp reassoc nsz arcp contract afn ugt double %i.lvx, 1.867000e-03
  br i1 %i.lvy, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %.preheader.i.i569
  %i.lvz = fmul reassoc nnan nsz arcp contract afn double %i.lvw, f0x3F31001100110011
  br label %bb.pn

bb.pm:                                            ; preds = %.preheader.i.i569
  %i.lwa = tail call fast double @llvm.log.f64(double %i.lvx)
  %i.lwb = fmul reassoc nnan nsz arcp contract afn double %i.lwa, f0x3FDAAAAAAAAAAAAB
  %i.lwc = tail call reassoc nnan nsz arcp contract afn double @llvm.exp.f64(double %i.lwb)
  %i.lwd = fmul reassoc nnan nsz arcp contract afn double %i.lwc, f0x3FF0B60BF5D78812
  %i.lwe = fadd reassoc nsz arcp contract afn double %i.lwd, -4.444500e-02
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %i.lwf = phi reassoc nsz arcp contract afn double [ %i.lvz, %bb.pl ], [ %i.lwe, %bb.pm ]
  %i.lwg = fptrunc reassoc nsz arcp contract afn double %i.lwf to float
  %i.lwh = getelementptr inbounds nuw [4 x i8], ptr %i.lvs, i64 %indvars.iv.i.i570
  store float %i.lwg, ptr %i.lwh, align 4, !tbaa !22, !noalias !402
  %i.lwi = fcmp reassoc nsz arcp contract afn ugt double %i.lvx, 3.174600e-02
  br i1 %i.lwi, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.lwj = fmul reassoc nnan nsz arcp contract afn double %i.lvw, f0x3EAE1E3C3C5A5A78
  br label %bb.pq

bb.pp:                                            ; preds = %bb.pn
  %i.lwk = fmul reassoc nnan nsz arcp contract afn double %i.lvw, f0x3EEEA3850F60F739
  %i.lwl = fadd reassoc nnan nsz arcp contract afn double %i.lwk, f0x3FA5C99942418271
  %i.lwm = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.lwl)
  %i.lwn = fmul reassoc nnan nsz arcp contract afn double %i.lwm, 2.400000e+00
  %i.lwo = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.lwn)
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.po
  %i.lwp = phi reassoc nsz arcp contract afn double [ %i.lwj, %bb.po ], [ %i.lwo, %bb.pp ]
  %i.lwq = fptrunc reassoc nsz arcp contract afn double %i.lwp to float
  %i.lwr = getelementptr inbounds nuw [4 x i8], ptr %i.lvr, i64 %indvars.iv.i.i570
  store float %i.lwq, ptr %i.lwr, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next.i.i571 = add nuw nsw i64 %indvars.iv.i.i570, 1 ; 2 uses
  %exitcond.not.i.i572 = icmp eq i64 %indvars.iv.next.i.i571, 65536
  br i1 %exitcond.not.i.i572, label %.preheader1020.preheader.i, label %.preheader.i.i569

.preheader1020.preheader.i:                       ; preds = %bb.pq, %bb.pk, %bb.pi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !408
  %i.lws = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !402 ; 31 uses
  %i.lwt = ptrtoaddr ptr %i.lws to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lws, i64 64) ]
  store ptr %i.lws, ptr %i.b, align 16, !tbaa !407, !noalias !408
  %i.lwu = getelementptr inbounds nuw i8, ptr %i.lws, i64 73984 ; 14 uses
  store ptr %i.lwu, ptr %i.apb, align 8, !tbaa !407, !noalias !408
  %i.lwv = getelementptr inbounds nuw i8, ptr %i.lws, i64 147968 ; 6 uses
  store ptr %i.lwv, ptr %i.apc, align 16, !tbaa !407, !noalias !408
  %i.lww = getelementptr inbounds nuw i8, ptr %i.lws, i64 221952 ; 5 uses
  store ptr %i.lww, ptr %i.apd, align 8, !tbaa !407, !noalias !408
  %i.lwx = getelementptr inbounds nuw i8, ptr %i.lws, i64 295936 ; 5 uses
  store ptr %i.lwx, ptr %i.ape, align 16, !tbaa !407, !noalias !408
  %i.lwy = getelementptr inbounds nuw i8, ptr %i.lws, i64 369920 ; 10 uses
  store ptr %i.lwy, ptr %i.apf, align 8, !tbaa !407, !noalias !408
  %i.lwz = icmp ult i32 %i.lvn, 2
  %i.lxa = select i1 %i.lwz, i32 %i.lvn, i32 3    ; 2 uses
  %i.lxb = tail call i32 @llvm.usub.sat.i32(i32 %i.lvn, i32 2) ; 2 uses
  %i.lxc = add nsw i32 %i.ayd, -17
  %i.lxd = sdiv i32 %i.lxc, 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(443904) %i.lws, i8 0, i64 443904, i1 false), !noalias !402
  %.not1186.i = icmp eq i32 %i.lxa, 0
  %i.lxe = icmp sgt i32 %i.lxb, 0
  %scevgep3947.a = getelementptr i8, ptr %i.lws, i64 295400
  %scevgep4016.a = getelementptr i8, ptr %i.lws, i64 295400
  %i.lxf = add i64 %i.lwt, 372112
  %i.lxg = getelementptr inbounds nuw i8, ptr %i.ayn, i64 128
  %i.lxh = getelementptr inbounds nuw i8, ptr %i.ayn, i64 256
  %i.lxi = getelementptr inbounds nuw i8, ptr %i.ayn, i64 384
  br label %.preheader1020.i

.preheader1020.i:                                 ; preds = %._crit_edge1180.i, %.preheader1020.preheader.i
  %indvars.iv1128 = phi i32 [ %indvars.iv.next1129, %._crit_edge1180.i ], [ 6, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1109 = phi i32 [ %indvars.iv.next1110, %._crit_edge1180.i ], [ 7, %.preheader1020.preheader.i ] ; 3 uses
  %indvars.iv1104 = phi i32 [ %indvars.iv.next1105, %._crit_edge1180.i ], [ 8, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1087 = phi i32 [ %indvars.iv.next1088, %._crit_edge1180.i ], [ 5, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1084 = phi i32 [ %indvars.iv.next1085, %._crit_edge1180.i ], [ 4, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge1180.i ], [ 128, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1304.i = phi i32 [ %indvars.iv.next1305.i, %._crit_edge1180.i ], [ 0, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv.i553 = phi i32 [ %indvars.iv.next.i558, %._crit_edge1180.i ], [ 0, %.preheader1020.preheader.i ] ; 2 uses
  %.08821182.i = phi i32 [ %i.lzs, %._crit_edge1180.i ], [ 0, %.preheader1020.preheader.i ] ; 4 uses
  %smin1133 = call i32 @llvm.smin.i32(i32 %i.ayd, i32 %indvars.iv) ; 5 uses
  %i.lxj = add i32 %smin1133, %indvars.iv1084
  %i.lxk = call i32 @llvm.smax.i32(i32 %i.lxj, i32 5)
  %smax1125 = zext nneg i32 %i.lxk to i64         ; 4 uses
  %i.lxl = add i32 %smin1133, %indvars.iv1109
  %i.lxm = call i32 @llvm.smax.i32(i32 %i.lxl, i32 2)
  %smax1117 = zext nneg i32 %i.lxm to i64         ; 3 uses
  %i.lxn = add i32 %smin1133, %indvars.iv1104
  %i.lxo = call i32 @llvm.smax.i32(i32 %i.lxn, i32 1)
  %smax1106 = zext nneg i32 %i.lxo to i64
  %i.lxp = add i32 %smin1133, %indvars.iv1087
  %i.lxq = call i32 @llvm.umax.i32(i32 %i.lxp, i32 2)
  %umax = zext i32 %i.lxq to i64
  %i.lxr = mul nuw nsw i32 %.08821182.i, 112      ; 4 uses
  %i.lxs = add nuw nsw i32 %i.lxr, 128
  %i.lxt = tail call i32 @llvm.smin.i32(i32 %i.lxs, i32 %i.ayd) ; 2 uses
  %i.lxu = sub nsw i32 %i.lxt, %i.lxr             ; 6 uses
  %i.lxv = add nsw i32 %i.lxu, 8
  %i.lxw = icmp sgt i32 %i.lxu, 0                 ; 3 uses
  %i.lxx = icmp sgt i32 %i.lxu, -4
  %i.lxy = add nsw i32 %i.lxr, -4
  %i.lxz = icmp sgt i32 %i.lxu, -8
  %i.lya = icmp sgt i32 %i.lxu, -6
  %i.lyb = icmp eq i32 %.08821182.i, 0            ; 2 uses
  %i.lyc = select i1 %i.lyb, i32 6, i32 0         ; 3 uses
  %i.lyd = icmp eq i32 %.08821182.i, %i.lxd       ; 3 uses
  %.neg949.i = select i1 %i.lyd, i32 -6, i32 0    ; 2 uses
  %i.lye = add nsw i32 %i.lxv, %.neg949.i         ; 2 uses
  %i.lyf = icmp slt i32 %i.lxu, -5
  %i.lyg = add nsw i32 %i.lye, -1
  %i.lyh = icmp slt i32 %i.lyc, %i.lyg
  %i.lyi = add nuw nsw i32 %i.lyc, 2
  %i.lyj = add nsw i32 %i.lye, -2
  %i.lyk = icmp slt i32 %i.lyi, %i.lyj
  %i.lyl = select i1 %i.lyb, i32 4, i32 8         ; 3 uses
  %i.lym = or disjoint i32 %i.lyl, %i.lxr
  %.neg950.i = select i1 %i.lyd, i32 -4, i32 -8
  %i.lyn = add nsw i32 %i.lxt, %.neg950.i         ; 2 uses
  %i.lyo = icmp slt i32 %i.lym, %i.lyn
  %i.lyp = zext nneg i32 %i.lyc to i64            ; 5 uses
  %i.lyq = add nuw nsw i64 %i.lyp, 2              ; 3 uses
  %narrow.i = add nuw nsw i32 %i.lyl, 4
  %i.lyr = or disjoint i32 %i.lyl, %indvars.iv1304.i
  %11 = zext nneg i32 %i.lyr to i64
  %i.lys = zext nneg i32 %i.lyn to i64
  %i.lyt = add i32 %.neg949.i, %smin1133          ; 2 uses
  %i.lyu = add i32 %i.lyt, %indvars.iv1109
  %i.lyv = sext i32 %i.lyu to i64                 ; 2 uses
  %i.lyw = add i32 %i.lyt, %indvars.iv1128
  %i.lyx = sext i32 %i.lyw to i64                 ; 3 uses
  %i.lyy = mul nuw nsw i64 %i.lyp, 544            ; 6 uses
  %i.lyz = mul nuw nsw i64 %i.lyp, 544            ; 8 uses
  %i.lza = add nuw nsw i64 %i.lyz, 552
  %i.lzb = add nuw nsw i64 %i.lyz, 1644
  %i.lzc = mul nuw nsw i64 %i.lyp, 544            ; 5 uses
  %scevgep3945 = getelementptr i8, ptr %i.lws, i64 %i.lzc
  %i.lzd = mul nsw i64 %i.lyv, 544                ; 2 uses
  %scevgep3948 = getelementptr i8, ptr %scevgep3947.a, i64 %i.lzd
  %i.lze = or disjoint i64 %i.lzc, 8
  %i.lzf = or disjoint i64 %i.lzc, 4
  %scevgep4014 = getelementptr i8, ptr %i.lws, i64 %i.lzc
  %scevgep4017.a = getelementptr i8, ptr %scevgep4016.a, i64 %i.lzd
  %invariant.op = or disjoint i64 %i.lzc, 4
  %i.lzg = getelementptr i8, ptr %i.lws, i64 %i.lyz
  %i.lzh = getelementptr i8, ptr %i.lzg, i64 74536
  %i.lzi = getelementptr i8, ptr %i.lws, i64 %i.lyz
  %i.lzj = getelementptr i8, ptr %i.lzi, i64 75628
  %i.lzk = getelementptr i8, ptr %i.lws, i64 %i.lyz
  %i.lzl = getelementptr i8, ptr %i.lzk, i64 73992
  %i.lzm = getelementptr i8, ptr %i.lws, i64 %i.lyz
  %i.lzn = getelementptr i8, ptr %i.lzm, i64 76172
  %i.lzo = getelementptr i8, ptr %i.lws, i64 %i.lyy
  %i.lzp = getelementptr i8, ptr %i.lzo, i64 74536
  %i.lzq = getelementptr i8, ptr %i.lws, i64 %i.lyy
  %i.lzr = getelementptr i8, ptr %i.lzq, i64 75628
  br label %bb.pr

._crit_edge1183.split.i:                          ; preds = %._crit_edge1180.i
  tail call void @free(ptr noundef %i.lws) #27, !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !408
  br label %demosaic_box3.exit

._crit_edge1180.i:                                ; preds = %._crit_edge1176.split.i
  %i.lzs = add nuw nsw i32 %.08821182.i, 1
  %indvars.iv.next.i558 = add i32 %indvars.iv.i553, %i.api
  %indvars.iv.next1305.i = add nuw i32 %indvars.iv1304.i, 112
  %indvars.iv.next = add i32 %indvars.iv, 112
  %indvars.iv.next1085 = add i32 %indvars.iv1084, -112
  %indvars.iv.next1088 = add i32 %indvars.iv1087, -112
  %indvars.iv.next1105 = add i32 %indvars.iv1104, -112
  %indvars.iv.next1110 = add i32 %indvars.iv1109, -112
  %indvars.iv.next1129 = add i32 %indvars.iv1128, -112
  br i1 %i.lyd, label %._crit_edge1183.split.i, label %.preheader1020.i

bb.pr:                                            ; preds = %._crit_edge1176.split.i, %.preheader1020.i
  %indvars.iv1093 = phi i32 [ %indvars.iv.next1094, %._crit_edge1176.split.i ], [ 0, %.preheader1020.i ] ; 8 uses
  %indvars.iv1090 = phi i32 [ %indvars.iv.next1091, %._crit_edge1176.split.i ], [ 128, %.preheader1020.i ] ; 6 uses
  %indvars.iv1207.i = phi i32 [ %indvars.iv.next1208.i, %._crit_edge1176.split.i ], [ %indvars.iv.i553, %.preheader1020.i ] ; 2 uses
  %.08871178.i = phi i32 [ %i.psa, %._crit_edge1176.split.i ], [ 0, %.preheader1020.i ] ; 6 uses
  %smin4756 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.lzt = add i32 %smin4756, %indvars.iv1093
  %smin4757 = call i32 @llvm.smin.i32(i32 %i.lzt, i32 128) ; 2 uses
  %i.lzu = add nsw i32 %smin4757, 3
  %i.lzv = zext i32 %i.lzu to i64
  %i.lzw = add nsw i64 %i.lzv, -3                 ; 2 uses
  %smin4747 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.lzx = add i32 %smin4747, %indvars.iv1093
  %smin4739 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.lzy = add i32 %smin4739, %indvars.iv1093
  %i.lzz = mul i32 %.08871178.i, 112
  %i.maa = add i32 %i.lzz, 128
  %smin4731 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.maa)
  %i.mab = mul i32 %.08871178.i, -112
  %i.mac = add i32 %smin4731, %i.mab
  %smin4429 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.mad = add i32 %smin4429, %indvars.iv1093
  %smin4430 = call i32 @llvm.smin.i32(i32 %i.mad, i32 128)
  %i.mae = add i32 %smin4430, -1                  ; 3 uses
  %i.maf = zext i32 %i.mae to i64
  %i.mag = add nuw nsw i64 %i.maf, 1              ; 5 uses
  %i.mah = add i32 %indvars.iv1093, -1
  %i.mai = add i32 %indvars.iv1093, -1
  %smin1121.a = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.maj = add i32 %smin1121.a, %indvars.iv1093
  %smin1122 = call i32 @llvm.smin.i32(i32 %i.maj, i32 128)
  %i.mak = add nsw i32 %smin1122, 3
  %i.mal = zext i32 %i.mak to i64                 ; 2 uses
  %i.mam = mul i32 %.08871178.i, 112              ; 5 uses
  %i.man = add i32 %i.mam, 128
  %i.mao = tail call i32 @llvm.smin.i32(i32 %i.man, i32 %i.bo) ; 3 uses
  %i.map = sub i32 %i.mao, %i.mam                 ; 7 uses
  %i.maq = tail call i32 @llvm.smin.i32(i32 %i.map, i32 128) ; 24 uses
  %i.mar = add nsw i32 %i.maq, 8                  ; 2 uses
  br i1 %i.lxw, label %.lr.ph1031.i, label %.preheader1019.i

.lr.ph1031.i:                                     ; preds = %bb.pr
  %i.mas = add nsw i32 %i.maq, 4                  ; 2 uses
  %i.mat = icmp sgt i32 %i.map, 0
  %i.mau = load ptr, ptr @lmmse_gamma_in, align 8, !noalias !408 ; 4 uses
  %i.mav = icmp eq ptr %i.mau, null
  br i1 %i.mat, label %.lr.ph.i563.preheader, label %.lr.ph1042.i

.lr.ph.i563.preheader:                            ; preds = %.lr.ph1031.i
  %xtraiter4733 = and i32 %i.maq, 1
  %i.maw = icmp eq i32 %i.mac, 1
  %unroll_iter4737 = and i32 %i.maq, 254
  %lcmp.mod4735.not = icmp eq i32 %xtraiter4733, 0
  %lcmp.mod4736 = trunc i32 %i.maq to i1
  %min.iters.check4432.a = icmp ult i32 %i.mae, 7
  %min.iters.check4434 = icmp ult i32 %i.mae, 31
  %i.max = and i64 %i.mag, 24
  %n.vec4436 = and i64 %i.mag, 8589934560         ; 8 uses
  %i.may = shl nuw nsw i64 %n.vec4436, 2
  %i.maz = trunc i64 %n.vec4436 to i32
  %i.mba = or disjoint i32 %i.maz, 4
  %i.mbb = icmp eq i64 %n.vec4436, 32
  %i.mbc = icmp eq i64 %n.vec4436, 64
  %i.mbd = icmp eq i64 %n.vec4436, 96
  %cmp.n4448 = icmp eq i64 %i.mag, %n.vec4436
  %min.epilog.iters.check4456 = icmp eq i64 %i.max, 0
  %n.vec4458 = and i64 %i.mag, 8589934584         ; 5 uses
  %i.mbe = shl nuw nsw i64 %n.vec4458, 2
  %i.mbf = trunc i64 %n.vec4458 to i32
  %i.mbg = or disjoint i32 %i.mbf, 4
  %cmp.n4467 = icmp eq i64 %i.mag, %n.vec4458
  br label %.lr.ph.i563

.preheader1019.i:                                 ; preds = %._crit_edge.i567, %bb.pr
  br i1 %i.lxx, label %.preheader1019.i..lr.ph1042.i_crit_edge, label %._crit_edge1053.i

.preheader1019.i..lr.ph1042.i_crit_edge:          ; preds = %.preheader1019.i
  %.pre1239 = add nsw i32 %i.maq, 4
  br label %.lr.ph1042.i

.lr.ph1042.i:                                     ; preds = %.preheader1019.i..lr.ph1042.i_crit_edge, %.lr.ph1031.i
  %.pre-phi1240 = phi i32 [ %.pre1239, %.preheader1019.i..lr.ph1042.i_crit_edge ], [ %i.mas, %.lr.ph1031.i ] ; 2 uses
  %i.mbh = add nsw i32 %i.maq, 6
  %i.mbi = sext i32 %i.mbh to i64                 ; 4 uses
  br label %bb.py

.lr.ph.i563:                                      ; preds = %.lr.ph.i563.preheader, %._crit_edge.i567
  %indvar4426 = phi i64 [ %indvar.next4427, %._crit_edge.i567 ], [ 0, %.lr.ph.i563.preheader ] ; 2 uses
  %indvars.iv1217.i = phi i64 [ %indvars.iv.next1218.i, %._crit_edge.i567 ], [ 4, %.lr.ph.i563.preheader ] ; 2 uses
  %indvars.iv1209.i = phi i32 [ %indvars.iv.next1210.i, %._crit_edge.i567 ], [ %indvars.iv1207.i, %.lr.ph.i563.preheader ] ; 3 uses
  %i.mbj = zext i32 %indvars.iv1209.i to i64      ; 10 uses
  %.idx.i564 = mul nuw nsw i64 %indvars.iv1217.i, 544
  %i.mbk = getelementptr inbounds nuw i8, ptr %i.lwy, i64 %.idx.i564 ; 16 uses
  %i.mbl = getelementptr inbounds nuw i8, ptr %i.mbk, i64 16 ; 7 uses
  br i1 %i.mav, label %iter.check4453, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i563
  br i1 %i.maw, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i

iter.check4453:                                   ; preds = %.lr.ph.i563
  %i.mbm = zext i32 %indvars.iv1209.i to i64
  %i.mbn = add nsw i64 %i.aym, %i.mbm
  %i.mbo = shl nsw i64 %i.mbn, 2
  %i.mbp = add i64 %i.mbo, %.13630
  %i.mbq = mul nuw nsw i64 %indvar4426, 544
  %i.mbr = add i64 %i.lxf, %i.mbq
  %i.mbs = sub i64 %i.mbp, %i.mbr
  %diff.check4428 = icmp ugt i64 %i.mbs, -128
  %or.cond4590 = select i1 %min.iters.check4432.a, i1 true, i1 %diff.check4428
  br i1 %or.cond4590, label %_calc_gamma.exit.us.i.preheader, label %vector.main.loop.iter.check4433

vector.main.loop.iter.check4433:                  ; preds = %iter.check4453
  br i1 %min.iters.check4434, label %vec.epilog.ph4457, label %vector.ph4435

vector.ph4435:                                    ; preds = %vector.main.loop.iter.check4433
  %i.mbt = add nuw nsw i64 %n.vec4436, %i.mbj
  %i.mbu = getelementptr i8, ptr %i.mbl, i64 %i.may
  %i.mbv = getelementptr inbounds nuw [4 x i8], ptr %i.ayn, i64 %i.mbj ; 4 uses
  %i.mbw = getelementptr inbounds nuw i8, ptr %i.mbv, i64 32
  %i.mbx = getelementptr inbounds nuw i8, ptr %i.mbv, i64 64
  %i.mby = getelementptr inbounds nuw i8, ptr %i.mbv, i64 96
  %wide.load4442.a = load <8 x float>, ptr %i.mbv, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4443.a = load <8 x float>, ptr %i.mbw, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4444 = load <8 x float>, ptr %i.mbx, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4445 = load <8 x float>, ptr %i.mby, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mbz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4442.a, %broadcast.splat4438
  %i.mca = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4443.a, %broadcast.splat4438
  %i.mcb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4444, %broadcast.splat4438
  %i.mcc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4445, %broadcast.splat4438
  %i.mcd = getelementptr i8, ptr %i.mbk, i64 48
  %i.mce = getelementptr i8, ptr %i.mbk, i64 80
  %i.mcf = getelementptr i8, ptr %i.mbk, i64 112
  store <8 x float> %i.mbz, ptr %i.mbl, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mca, ptr %i.mcd, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcb, ptr %i.mce, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcc, ptr %i.mcf, align 16, !tbaa !22, !noalias !402
  br i1 %i.mbb, label %middle.block4447, label %vector.body4439.1

vector.body4439.1:                                ; preds = %vector.ph4435
  %next.gep4441.1 = getelementptr i8, ptr %i.mbk, i64 144
  %i.mcg = getelementptr inbounds nuw [4 x i8], ptr %i.lxg, i64 %i.mbj ; 4 uses
  %i.mch = getelementptr inbounds nuw i8, ptr %i.mcg, i64 32
  %i.mci = getelementptr inbounds nuw i8, ptr %i.mcg, i64 64
  %i.mcj = getelementptr inbounds nuw i8, ptr %i.mcg, i64 96
  %wide.load4442.1.a = load <8 x float>, ptr %i.mcg, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4443.1.a = load <8 x float>, ptr %i.mch, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4444.1 = load <8 x float>, ptr %i.mci, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4445.1 = load <8 x float>, ptr %i.mcj, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mck = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4442.1.a, %broadcast.splat4438
  %i.mcl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4443.1.a, %broadcast.splat4438
  %i.mcm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4444.1, %broadcast.splat4438
  %i.mcn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4445.1, %broadcast.splat4438
  %i.mco = getelementptr i8, ptr %i.mbk, i64 176
  %i.mcp = getelementptr i8, ptr %i.mbk, i64 208
  %i.mcq = getelementptr i8, ptr %i.mbk, i64 240
  store <8 x float> %i.mck, ptr %next.gep4441.1, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcl, ptr %i.mco, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcm, ptr %i.mcp, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcn, ptr %i.mcq, align 16, !tbaa !22, !noalias !402
  br i1 %i.mbc, label %middle.block4447, label %vector.body4439.2

vector.body4439.2:                                ; preds = %vector.body4439.1
  %next.gep4441.2 = getelementptr i8, ptr %i.mbk, i64 272
  %i.mcr = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.mbj ; 4 uses
  %i.mcs = getelementptr inbounds nuw i8, ptr %i.mcr, i64 32
  %i.mct = getelementptr inbounds nuw i8, ptr %i.mcr, i64 64
  %i.mcu = getelementptr inbounds nuw i8, ptr %i.mcr, i64 96
  %wide.load4442.2.a = load <8 x float>, ptr %i.mcr, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4443.2.a = load <8 x float>, ptr %i.mcs, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4444.2 = load <8 x float>, ptr %i.mct, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4445.2 = load <8 x float>, ptr %i.mcu, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mcv = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4442.2.a, %broadcast.splat4438
  %i.mcw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4443.2.a, %broadcast.splat4438
  %i.mcx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4444.2, %broadcast.splat4438
  %i.mcy = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4445.2, %broadcast.splat4438
  %i.mcz = getelementptr i8, ptr %i.mbk, i64 304
  %i.mda = getelementptr i8, ptr %i.mbk, i64 336
  %i.mdb = getelementptr i8, ptr %i.mbk, i64 368
  store <8 x float> %i.mcv, ptr %next.gep4441.2, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcw, ptr %i.mcz, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcx, ptr %i.mda, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcy, ptr %i.mdb, align 16, !tbaa !22, !noalias !402
  br i1 %i.mbd, label %middle.block4447, label %vector.body4439.3

vector.body4439.3:                                ; preds = %vector.body4439.2
  %next.gep4441.3 = getelementptr i8, ptr %i.mbk, i64 400
  %i.mdc = getelementptr inbounds nuw [4 x i8], ptr %i.lxi, i64 %i.mbj ; 4 uses
  %i.mdd = getelementptr inbounds nuw i8, ptr %i.mdc, i64 32
  %i.mde = getelementptr inbounds nuw i8, ptr %i.mdc, i64 64
  %i.mdf = getelementptr inbounds nuw i8, ptr %i.mdc, i64 96
  %wide.load4442.3.a = load <8 x float>, ptr %i.mdc, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4443.3.a = load <8 x float>, ptr %i.mdd, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4444.3 = load <8 x float>, ptr %i.mde, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4445.3 = load <8 x float>, ptr %i.mdf, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mdg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4442.3.a, %broadcast.splat4438
  %i.mdh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4443.3.a, %broadcast.splat4438
  %i.mdi = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4444.3, %broadcast.splat4438
  %i.mdj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4445.3, %broadcast.splat4438
  %i.mdk = getelementptr i8, ptr %i.mbk, i64 432
  %i.mdl = getelementptr i8, ptr %i.mbk, i64 464
  %i.mdm = getelementptr i8, ptr %i.mbk, i64 496
  store <8 x float> %i.mdg, ptr %next.gep4441.3, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdh, ptr %i.mdk, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdi, ptr %i.mdl, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdj, ptr %i.mdm, align 16, !tbaa !22, !noalias !402
  br label %middle.block4447

middle.block4447:                                 ; preds = %vector.body4439.3, %vector.body4439.2, %vector.body4439.1, %vector.ph4435
  br i1 %cmp.n4448, label %._crit_edge.i567, label %vec.epilog.iter.check4455

vec.epilog.iter.check4455:                        ; preds = %middle.block4447
  br i1 %min.epilog.iters.check4456, label %_calc_gamma.exit.us.i.preheader, label %vec.epilog.ph4457, !prof !409

vec.epilog.ph4457:                                ; preds = %vector.main.loop.iter.check4433, %vec.epilog.iter.check4455
  %vec.epilog.resume.val4449 = phi i64 [ %n.vec4436, %vec.epilog.iter.check4455 ], [ 0, %vector.main.loop.iter.check4433 ]
  %i.mdn = add nuw nsw i64 %n.vec4458, %i.mbj
  %i.mdo = getelementptr i8, ptr %i.mbl, i64 %i.mbe
  %invariant.gep4877.a = getelementptr [4 x i8], ptr %i.ayn, i64 %i.mbj
  br label %vec.epilog.vector.body4461

vec.epilog.vector.body4461:                       ; preds = %vec.epilog.vector.body4461, %vec.epilog.ph4457
  %index4462 = phi i64 [ %vec.epilog.resume.val4449, %vec.epilog.ph4457 ], [ %index.next4465, %vec.epilog.vector.body4461 ] ; 3 uses
  %i.mdp = shl i64 %index4462, 2
  %next.gep4463 = getelementptr i8, ptr %i.mbl, i64 %i.mdp
  %gep4878.a = getelementptr [4 x i8], ptr %invariant.gep4877.a, i64 %index4462
  %wide.load4464 = load <8 x float>, ptr %gep4878.a, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mdq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4464, %broadcast.splat4460
  store <8 x float> %i.mdq, ptr %next.gep4463, align 16, !tbaa !22, !noalias !402
  %index.next4465 = add nuw i64 %index4462, 8     ; 2 uses
  %i.mdr = icmp eq i64 %index.next4465, %n.vec4458
  br i1 %i.mdr, label %vec.epilog.middle.block4466, label %vec.epilog.vector.body4461, !llvm.loop !410

vec.epilog.middle.block4466:                      ; preds = %vec.epilog.vector.body4461
  br i1 %cmp.n4467, label %._crit_edge.i567, label %_calc_gamma.exit.us.i.preheader

end_hunk_2
begin_hunk_3_@process:bb.a
  %indvars.iv1256.i = phi i64 [ %indvars.iv.next1257.i, %._crit_edge1068.i ], [ 1, %.lr.ph1070.i ] ; 3 uses
  %i.nlc = mul nuw nsw i64 %indvar4182, 544       ; 6 uses
  %i.nld = getelementptr i8, ptr %i.lws, i64 %i.nlc
  %scevgep4189.a = getelementptr i8, ptr %i.nld, i64 73988
  %i.nle = getelementptr i8, ptr %i.lws, i64 %i.nlc
  %scevgep4191 = getelementptr i8, ptr %i.nle, i64 75080
  %indvars.iv1256.tr.i = trunc i64 %indvars.iv1256.i to i32
  %i.nlf = shl i32 %indvars.iv1256.tr.i, 1
  %i.nlg = and i32 %i.nlf, 14                     ; 2 uses
  %i.nlh = shl nuw nsw i32 %i.nlg, 1
  %i.nli = lshr i32 %.fr1043, %i.nlh              ; 3 uses
  %i.nlj = and i32 %i.nli, 1                      ; 3 uses
  %i.nlk = icmp slt i32 %i.nlj, %i.nht
  br i1 %i.nlk, label %.lr.ph1067.i, label %._crit_edge1068.i

.lr.ph1067.i:                                     ; preds = %bb.qy
  %i.nll = or disjoint i32 %i.nlj, %i.nlg
  %i.nlm = shl nuw nsw i32 %i.nll, 1
  %i.nln = lshr i32 %.fr1043, %i.nlm
  %i.nlo = and i32 %i.nln, 3                      ; 2 uses
  %i.nlp = zext nneg i32 %i.nlo to i64
  %i.nlq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nlp
  %i.nlr = load ptr, ptr %i.nlq, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nls = mul nuw nsw i64 %indvars.iv1256.i, 136 ; 3 uses
  %i.nlt = getelementptr inbounds nuw [4 x i8], ptr %i.nlr, i64 %i.nls ; 2 uses
  %i.nlu = getelementptr inbounds nuw [4 x i8], ptr %i.lwu, i64 %i.nls ; 2 uses
  %i.nlv = sub nsw i32 2, %i.nlo
  %i.nlw = sext i32 %i.nlv to i64
  %i.nlx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nlw
  %i.nly = load ptr, ptr %i.nlx, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nlz = getelementptr inbounds nuw [4 x i8], ptr %i.nly, i64 %i.nls ; 2 uses
  %narrow1347.i = add nuw nsw i32 %i.nlj, 1
  %i.nma = zext nneg i32 %narrow1347.i to i64     ; 5 uses
  %i.nmb = and i32 %i.nli, 1
  %i.nmc = zext nneg i32 %i.nmb to i64            ; 2 uses
  %i.nmd = add nuw nsw i64 %i.nmc, 3
  %i.nme = call i64 @llvm.smax.i64(i64 %i.nhs, i64 %i.nmd)
  %i.nmf = add nsw i64 %i.nme, -2
  %i.nmg = sub i64 %i.nmf, %i.nmc                 ; 2 uses
  %i.nmh = lshr i64 %i.nmg, 1
  %i.nmi = add nuw nsw i64 %i.nmh, 1              ; 2 uses
  %min.iters.check4205 = icmp ult i64 %i.nmg, 16
  br i1 %min.iters.check4205, label %scalar.ph4204.preheader, label %vector.memcheck4181

scalar.ph4204.preheader:                          ; preds = %vector.body4211, %vector.memcheck4181, %.lr.ph1067.i
  %indvars.iv1253.i.ph = phi i64 [ %i.nma, %vector.memcheck4181 ], [ %i.nma, %.lr.ph1067.i ], [ %i.nng, %vector.body4211 ]
  br label %scalar.ph4204

vector.memcheck4181:                              ; preds = %.lr.ph1067.i
  %i.nmj = and i32 %i.nli, 1
  %i.nmk = zext nneg i32 %i.nmj to i64            ; 3 uses
  %i.nml = shl nuw nsw i64 %i.nmk, 2              ; 6 uses
  %i.nmm = getelementptr i8, ptr %i.nlr, i64 %i.nlc
  %i.nmn = getelementptr i8, ptr %i.nmm, i64 544
  %scevgep4184.a = getelementptr i8, ptr %i.nmn, i64 %i.nml ; 2 uses
  %i.nmo = add nuw nsw i64 %i.nmk, 3
  %smax4185 = call i64 @llvm.smax.i64(i64 %i.nhs, i64 %i.nmo)
  %i.nmp = add nsw i64 %smax4185, -2
  %i.nmq = sub i64 %i.nmp, %i.nmk
  %i.nmr = shl nuw nsw i64 %i.nmq, 2
  %i.nms = and i64 %i.nmr, 9223372036854775800    ; 3 uses
  %i.nmt = getelementptr i8, ptr %i.nlr, i64 %i.nlc
  %i.nmu = getelementptr i8, ptr %i.nmt, i64 556
  %i.nmv = getelementptr i8, ptr %i.nmu, i64 %i.nms
  %scevgep4186.a = getelementptr i8, ptr %i.nmv, i64 %i.nml ; 2 uses
  %i.nmw = getelementptr i8, ptr %i.nly, i64 %i.nlc
  %i.nmx = getelementptr i8, ptr %i.nmw, i64 4
  %scevgep4187 = getelementptr i8, ptr %i.nmx, i64 %i.nml ; 2 uses
  %i.nmy = getelementptr i8, ptr %i.nly, i64 %i.nlc
  %i.nmz = getelementptr i8, ptr %i.nmy, i64 1096
  %i.nna = getelementptr i8, ptr %i.nmz, i64 %i.nms
  %scevgep4188.a = getelementptr i8, ptr %i.nna, i64 %i.nml ; 2 uses
  %scevgep4190.a = getelementptr i8, ptr %scevgep4189.a, i64 %i.nml ; 2 uses
  %i.nnb = getelementptr i8, ptr %scevgep4191, i64 %i.nms
  %scevgep4192 = getelementptr i8, ptr %i.nnb, i64 %i.nml ; 2 uses
  %bound04193 = icmp ult ptr %scevgep4184.a, %scevgep4188.a
  %bound14194 = icmp ult ptr %scevgep4187, %scevgep4186.a
  %found.conflict4195 = and i1 %bound04193, %bound14194
  %bound04196 = icmp ult ptr %scevgep4184.a, %scevgep4192
  %bound14197 = icmp ult ptr %scevgep4190.a, %scevgep4186.a
  %found.conflict4198 = and i1 %bound04196, %bound14197
  %conflict.rdx4199 = or i1 %found.conflict4195, %found.conflict4198
  %bound04200 = icmp ult ptr %scevgep4187, %scevgep4192
  %bound14201 = icmp ult ptr %scevgep4190.a, %scevgep4188.a
  %found.conflict4202 = and i1 %bound04200, %bound14201
  %conflict.rdx4203 = or i1 %conflict.rdx4199, %found.conflict4202
  br i1 %conflict.rdx4203, label %scalar.ph4204.preheader, label %vector.ph4206

vector.ph4206:                                    ; preds = %vector.memcheck4181
  %i.nnc = and i64 %i.nmi, 7                      ; 2 uses
  %i.nnd = icmp eq i64 %i.nnc, 0
  %i.nne = select i1 %i.nnd, i64 8, i64 %i.nnc
  %n.vec4207 = sub nsw i64 %i.nmi, %i.nne         ; 2 uses
  %i.nnf = shl i64 %n.vec4207, 1
  %i.nng = add i64 %i.nnf, %i.nma
  %broadcast.splatinsert4208 = insertelement <8 x i64> poison, i64 %i.nma, i64 0
  %broadcast.splat4209 = shufflevector <8 x i64> %broadcast.splatinsert4208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4210 = add nuw nsw <8 x i64> %broadcast.splat4209, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4883.a = getelementptr [4 x i8], ptr %i.nlu, i64 %i.nma
  br label %vector.body4211

vector.body4211:                                  ; preds = %vector.body4211, %vector.ph4206
  %index4212 = phi i64 [ 0, %vector.ph4206 ], [ %index.next4234, %vector.body4211 ] ; 2 uses
  %vec.ind4213 = phi <8 x i64> [ %induction4210, %vector.ph4206 ], [ %vec.ind.next4235, %vector.body4211 ] ; 3 uses
  %wide.gep4214 = getelementptr inbounds nuw [4 x i8], ptr %i.nlt, <8 x i64> %vec.ind4213 ; 2 uses
  %i.nnh = extractelement <8 x ptr> %wide.gep4214, i64 0 ; 2 uses
  %.idx4572 = shl nuw i64 %index4212, 3
  %gep4884.a = getelementptr i8, ptr %invariant.gep4883.a, i64 %.idx4572 ; 4 uses
  %i.nni = getelementptr inbounds i8, ptr %gep4884.a, i64 -4
  %wide.vec4215 = load <16 x float>, ptr %i.nni, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4216 = shufflevector <16 x float> %wide.vec4215, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4217.a = shufflevector <16 x float> %wide.vec4215, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nnj = getelementptr inbounds i8, ptr %i.nnh, i64 -4
  %wide.vec4218.a = load <16 x float>, ptr %i.nnj, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4219.a = shufflevector <16 x float> %wide.vec4218.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nnk = getelementptr inbounds nuw i8, ptr %i.nnh, i64 4
  %wide.vec4220.a = load <16 x float>, ptr %i.nnk, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4221.a = shufflevector <16 x float> %wide.vec4220.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4222 = load <16 x float>, ptr %gep4884.a, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4223 = shufflevector <16 x float> %wide.vec4222, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4224 = shufflevector <16 x float> %wide.vec4222, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nnl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4219.a, %strided.vec4221.a
  %i.nnm = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4216, %strided.vec4224
  %i.nnn = fsub reassoc nsz arcp contract afn <8 x float> %i.nnl, %i.nnm
  %i.nno = fmul reassoc nsz arcp contract afn <8 x float> %i.nnn, splat (float 5.000000e-01)
  %i.nnp = fadd reassoc nsz arcp contract afn <8 x float> %i.nno, %strided.vec4217.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nnp, <8 x ptr> align 4 %wide.gep4214, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !423, !noalias !425
  %wide.gep4225 = getelementptr inbounds nuw [4 x i8], ptr %i.nlz, <8 x i64> %vec.ind4213 ; 2 uses
  %i.nnq = extractelement <8 x ptr> %wide.gep4225, i64 0 ; 2 uses
  %i.nnr = getelementptr inbounds i8, ptr %i.nnq, i64 -544
  %wide.vec4226.a = load <16 x float>, ptr %i.nnr, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4227.a = shufflevector <16 x float> %wide.vec4226.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nns = getelementptr inbounds i8, ptr %gep4884.a, i64 -544
  %wide.vec4228.a = load <16 x float>, ptr %i.nns, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4229.a = shufflevector <16 x float> %wide.vec4228.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nnt = getelementptr inbounds nuw i8, ptr %i.nnq, i64 544
  %wide.vec4230.a = load <16 x float>, ptr %i.nnt, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4231.a = shufflevector <16 x float> %wide.vec4230.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nnu = getelementptr inbounds nuw i8, ptr %gep4884.a, i64 544
  %wide.vec4232 = load <16 x float>, ptr %i.nnu, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4233 = shufflevector <16 x float> %wide.vec4232, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nnv = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4227.a, %strided.vec4231.a
  %i.nnw = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4229.a, %strided.vec4233
  %i.nnx = fsub reassoc nsz arcp contract afn <8 x float> %i.nnv, %i.nnw
  %i.nny = fmul reassoc nsz arcp contract afn <8 x float> %i.nnx, splat (float 5.000000e-01)
  %i.nnz = fadd reassoc nsz arcp contract afn <8 x float> %i.nny, %strided.vec4223
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nnz, <8 x ptr> align 4 %wide.gep4225, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !427, !noalias !428
  %index.next4234 = add nuw i64 %index4212, 8     ; 2 uses
  %vec.ind.next4235 = add nuw nsw <8 x i64> %vec.ind4213, splat (i64 16)
  %i.noa = icmp eq i64 %index.next4234, %n.vec4207
  br i1 %i.noa, label %scalar.ph4204.preheader, label %vector.body4211, !llvm.loop !429

._crit_edge1068.i:                                ; preds = %scalar.ph4204, %bb.qy
  %indvars.iv.next1257.i = add nuw nsw i64 %indvars.iv1256.i, 1 ; 2 uses
  %exitcond1112.not = icmp eq i64 %indvars.iv.next1257.i, %smax1117
  %indvar.next4183 = add i64 %indvar4182, 1
  br i1 %exitcond1112.not, label %.preheader1015.i, label %bb.qy

scalar.ph4204:                                    ; preds = %scalar.ph4204.preheader, %scalar.ph4204
  %indvars.iv1253.i = phi i64 [ %indvars.iv.next1254.i, %scalar.ph4204 ], [ %indvars.iv1253.i.ph, %scalar.ph4204.preheader ] ; 4 uses
  %i.nob = getelementptr inbounds nuw [4 x i8], ptr %i.nlt, i64 %indvars.iv1253.i ; 3 uses
  %i.noc = getelementptr inbounds nuw [4 x i8], ptr %i.nlu, i64 %indvars.iv1253.i ; 6 uses
  %i.nod = load float, ptr %i.noc, align 4, !tbaa !22, !noalias !402
  %i.noe = getelementptr inbounds i8, ptr %i.nob, i64 -4
  %i.nof = load float, ptr %i.noe, align 4, !tbaa !22, !noalias !402
  %i.nog = getelementptr inbounds i8, ptr %i.noc, i64 -4
  %i.noh = load float, ptr %i.nog, align 4, !tbaa !22, !noalias !402
  %i.noi = getelementptr inbounds nuw i8, ptr %i.nob, i64 4
  %i.noj = load float, ptr %i.noi, align 4, !tbaa !22, !noalias !402
  %i.nok = getelementptr inbounds nuw i8, ptr %i.noc, i64 4
  %i.nol = load float, ptr %i.nok, align 4, !tbaa !22, !noalias !402
  %i.nom = fadd reassoc nsz arcp contract afn float %i.nof, %i.noj
  %i.non = fadd reassoc nsz arcp contract afn float %i.noh, %i.nol
  %i.noo = fsub reassoc nsz arcp contract afn float %i.nom, %i.non
  %i.nop = fmul reassoc nsz arcp contract afn float %i.noo, 5.000000e-01
  %i.noq = fadd reassoc nsz arcp contract afn float %i.nop, %i.nod
  store float %i.noq, ptr %i.nob, align 4, !tbaa !22, !noalias !402
  %i.nor = getelementptr inbounds nuw [4 x i8], ptr %i.nlz, i64 %indvars.iv1253.i ; 3 uses
  %i.nos = load float, ptr %i.noc, align 4, !tbaa !22, !noalias !402
  %i.not = getelementptr inbounds i8, ptr %i.nor, i64 -544
  %i.nou = load float, ptr %i.not, align 4, !tbaa !22, !noalias !402
  %i.nov = getelementptr inbounds i8, ptr %i.noc, i64 -544
  %i.now = load float, ptr %i.nov, align 4, !tbaa !22, !noalias !402
  %i.nox = getelementptr inbounds nuw i8, ptr %i.nor, i64 544
  %i.noy = load float, ptr %i.nox, align 4, !tbaa !22, !noalias !402
  %i.noz = getelementptr inbounds nuw i8, ptr %i.noc, i64 544
  %i.npa = load float, ptr %i.noz, align 4, !tbaa !22, !noalias !402
  %i.npb = fadd reassoc nsz arcp contract afn float %i.nou, %i.noy
  %i.npc = fadd reassoc nsz arcp contract afn float %i.now, %i.npa
  %i.npd = fsub reassoc nsz arcp contract afn float %i.npb, %i.npc
  %i.npe = fmul reassoc nsz arcp contract afn float %i.npd, 5.000000e-01
  %i.npf = fadd reassoc nsz arcp contract afn float %i.npe, %i.nos
  store float %i.npf, ptr %i.nor, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1254.i = add nuw nsw i64 %indvars.iv1253.i, 2 ; 2 uses
  %i.npg = icmp slt i64 %indvars.iv.next1254.i, %i.nhs
  br i1 %i.npg, label %scalar.ph4204, label %._crit_edge1068.i, !llvm.loop !430

._crit_edge1078.i:                                ; preds = %._crit_edge1075.i, %.preheader1016.i, %._crit_edge1053.i
  %i.nph = icmp eq i32 %.08871178.i, 0            ; 2 uses
  %i.npi = select i1 %i.nph, i32 6, i32 0         ; 21 uses
  %i.npj = icmp eq i32 %.08871178.i, %i.aph       ; 3 uses
  %.neg.i554 = select i1 %i.npj, i32 -6, i32 0    ; 10 uses
  %i.npk = add nsw i32 %i.mar, %.neg.i554         ; 4 uses
  br i1 %.not1186.i, label %.preheader1014.i, label %.preheader1011.lr.ph.i

.preheader1011.lr.ph.i:                           ; preds = %._crit_edge1078.i
  %i.npl = icmp slt i32 %i.map, -5
  %i.npm = zext nneg i32 %i.npi to i64            ; 11 uses
  %invariant.gep.i555 = getelementptr inbounds nuw [4 x i8], ptr %i.lws, i64 %i.npm
  %invariant.gep1124.i = getelementptr inbounds nuw [4 x i8], ptr %i.lwu, i64 %i.npm
  %invariant.gep1126.i = getelementptr inbounds nuw [4 x i8], ptr %i.lwv, i64 %i.npm
  %invariant.gep1128.i = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.npm
  %invariant.gep1130.i = getelementptr inbounds nuw [4 x i8], ptr %i.lwx, i64 %i.npm
  %i.npn = add nsw i32 %i.npk, -1                 ; 3 uses
  %i.npo = icmp slt i32 %i.npi, %i.npn            ; 2 uses
  %brmerge.i556 = select i1 %i.lyf, i1 true, i1 %i.npl
  %i.npp = add nsw i32 %i.maq, 6                  ; 3 uses
  %i.npq = sext i32 %i.npp to i64                 ; 6 uses
  %i.npr = shl nuw nsw i64 %i.npm, 2              ; 4 uses
  %scevgep3946 = getelementptr i8, ptr %scevgep3945, i64 %i.npr ; 2 uses
  %i.nps = add nsw i32 %.neg.i554, 6
  %i.npt = add i32 %i.nps, %i.maq
  %i.npu = sub i32 %i.npt, %i.npi
  %i.npv = lshr i32 %i.npu, 1
  %i.npw = zext nneg i32 %i.npv to i64
  %i.npx = shl nuw nsw i64 %i.npw, 3              ; 2 uses
  %i.npy = getelementptr i8, ptr %scevgep3948, i64 %i.npx
  %scevgep3949 = getelementptr i8, ptr %i.npy, i64 %i.npr ; 2 uses
  %.reass = or disjoint i64 %i.npr, %invariant.op
  %i.npz = add nuw nsw i64 %i.lze, %i.npx
  %i.nqa = add nuw nsw i64 %i.npz, %i.npr
  %i.nqb = add nsw i32 %.neg.i554, 6
  %i.nqc = add i32 %i.nqb, %i.maq
  %i.nqd = sub i32 %i.nqc, %i.npi
  %i.nqe = lshr i32 %i.nqd, 1
  %i.nqf = zext nneg i32 %i.nqe to i64
  %i.nqg = shl nuw nsw i64 %i.nqf, 3              ; 2 uses
  %i.nqh = add nuw nsw i64 %i.lzf, %i.nqg
  %i.nqi = shl nuw nsw i64 %i.npm, 2              ; 3 uses
  %i.nqj = add nuw nsw i64 %i.nqh, %i.nqi
  %scevgep4015 = getelementptr i8, ptr %scevgep4014, i64 %i.nqi ; 2 uses
  %i.nqk = getelementptr i8, ptr %scevgep4017.a, i64 %i.nqg
  %scevgep4018 = getelementptr i8, ptr %i.nqk, i64 %i.nqi ; 2 uses
  %min.iters.check4109 = icmp ult i32 %i.npp, 8
  %n.vec4111 = and i64 %i.npq, -8                 ; 3 uses
  %i.nql = or disjoint i64 %n.vec4111, 1
  %cmp.n4134 = icmp eq i64 %n.vec4111, %i.npq
  %min.iters.check4081 = icmp ult i32 %i.npp, 8
  %n.vec4083 = and i64 %i.npq, -8                 ; 3 uses
  %i.nqm = or disjoint i64 %n.vec4083, 1
  %cmp.n4106 = icmp eq i64 %n.vec4083, %i.npq
  %i.nqn = add i32 %.neg.i554, %i.maq
  %i.nqo = add i32 %i.nqn, 6
  %i.nqp = sub i32 %i.nqo, %i.npi                 ; 2 uses
  %i.nqq = lshr i32 %i.nqp, 1
  %narrow = add nuw i32 %i.nqq, 1
  %i.nqr = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check4032 = icmp ult i32 %i.nqp, 16
  %i.nqs = and i64 %i.nqr, 7                      ; 2 uses
  %i.nqt = icmp eq i64 %i.nqs, 0
  %i.nqu = select i1 %i.nqt, i64 8, i64 %i.nqs
  %n.vec4034 = sub nsw i64 %i.nqr, %i.nqu         ; 3 uses
  %i.nqv = trunc i64 %n.vec4034 to i32
  %i.nqw = shl i32 %i.nqv, 1
  %i.nqx = add i32 %i.npi, %i.nqw
  %i.nqy = shl nsw i64 %n.vec4034, 3              ; 7 uses
  %i.nqz = add i32 %.neg.i554, %i.maq
  %i.nra = add i32 %i.nqz, 6
  %i.nrb = sub i32 %i.nra, %i.npi                 ; 2 uses
  %i.nrc = lshr i32 %i.nrb, 1
  %narrow4574 = add nuw i32 %i.nrc, 1
  %i.nrd = zext i32 %narrow4574 to i64            ; 2 uses
  %min.iters.check3968 = icmp ult i32 %i.nrb, 16
  %i.nre = and i64 %i.nrd, 7                      ; 2 uses
  %i.nrf = icmp eq i64 %i.nre, 0
  %i.nrg = select i1 %i.nrf, i64 8, i64 %i.nre
  %n.vec3970 = sub nsw i64 %i.nrd, %i.nrg         ; 3 uses
  %i.nrh = shl nsw i64 %n.vec3970, 3              ; 7 uses
  %i.nri = trunc i64 %n.vec3970 to i32
  %i.nrj = shl i32 %i.nri, 1
  %i.nrk = add i32 %i.npi, %i.nrj
  br label %.preheader1011.i

bb.qz:                                            ; preds = %._crit_edge1075.i, %.preheader1015.i
  %indvar4137 = phi i64 [ %indvar.next4138, %._crit_edge1075.i ], [ 0, %.preheader1015.i ] ; 2 uses
  %indvars.iv1262.i = phi i64 [ %indvars.iv.next1263.i, %._crit_edge1075.i ], [ 1, %.preheader1015.i ] ; 3 uses
  %i.nrl = mul nuw nsw i64 %indvar4137, 544       ; 4 uses
  %i.nrm = getelementptr i8, ptr %i.lws, i64 %i.nrl
  %scevgep4142.a = getelementptr i8, ptr %i.nrm, i64 73988
  %i.nrn = getelementptr i8, ptr %i.lws, i64 %i.nrl
  %scevgep4144 = getelementptr i8, ptr %i.nrn, i64 75080
  %indvars.iv1262.tr.i = trunc i64 %indvars.iv1262.i to i32
  %i.nro = shl i32 %indvars.iv1262.tr.i, 1
  %i.nrp = and i32 %i.nro, 14                     ; 2 uses
  %.tr.i961.i = shl nuw nsw i32 %i.nrp, 1
  %i.nrq = or disjoint i32 %.tr.i961.i, 2
  %i.nrr = lshr i32 %.fr1043, %i.nrq              ; 3 uses
  %i.nrs = and i32 %i.nrr, 1
  %i.nrt = add nuw nsw i32 %i.nrs, 1              ; 3 uses
  %i.nru = icmp slt i32 %i.nrt, %i.nhr
  br i1 %i.nru, label %.lr.ph1074.i, label %._crit_edge1075.i

.lr.ph1074.i:                                     ; preds = %bb.qz
  %i.nrv = and i32 %i.nrt, 1
  %i.nrw = or disjoint i32 %i.nrv, %i.nrp
  %i.nrx = shl nuw nsw i32 %i.nrw, 1
  %i.nry = lshr i32 %.fr1043, %i.nrx
  %i.nrz = and i32 %i.nry, 3
  %i.nsa = sub nsw i32 2, %i.nrz
  %i.nsb = sext i32 %i.nsa to i64
  %i.nsc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nsb
  %i.nsd = load ptr, ptr %i.nsc, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nse = mul nuw nsw i64 %indvars.iv1262.i, 136 ; 2 uses
  %i.nsf = getelementptr inbounds nuw [4 x i8], ptr %i.nsd, i64 %i.nse ; 2 uses
  %i.nsg = getelementptr inbounds nuw [4 x i8], ptr %i.lwu, i64 %i.nse ; 2 uses
  %i.nsh = zext nneg i32 %i.nrt to i64            ; 5 uses
  %i.nsi = and i32 %i.nrr, 1
  %i.nsj = zext nneg i32 %i.nsi to i64            ; 2 uses
  %i.nsk = add nuw nsw i64 %i.nsj, 3
  %i.nsl = call i64 @llvm.umax.i64(i64 %i.nsk, i64 %i.nlb)
  %i.nsm = add nsw i64 %i.nsl, -2
  %i.nsn = sub nsw i64 %i.nsm, %i.nsj             ; 2 uses
  %i.nso = lshr i64 %i.nsn, 1
  %i.nsp = add nuw nsw i64 %i.nso, 1              ; 2 uses
  %min.iters.check4150 = icmp ult i64 %i.nsn, 8
  br i1 %min.iters.check4150, label %scalar.ph4149.preheader, label %vector.memcheck4136

scalar.ph4149.preheader:                          ; preds = %vector.body4156, %vector.memcheck4136, %.lr.ph1074.i
  %indvars.iv1259.i.ph = phi i64 [ %i.nsh, %vector.memcheck4136 ], [ %i.nsh, %.lr.ph1074.i ], [ %i.nti, %vector.body4156 ]
  br label %scalar.ph4149

vector.memcheck4136:                              ; preds = %.lr.ph1074.i
  %i.nsq = and i32 %i.nrr, 1
  %i.nsr = zext nneg i32 %i.nsq to i64            ; 3 uses
  %i.nss = shl nuw nsw i64 %i.nsr, 2              ; 4 uses
  %i.nst = getelementptr i8, ptr %i.nsd, i64 %i.nrl
  %i.nsu = getelementptr i8, ptr %i.nst, i64 4
  %scevgep4139.a = getelementptr i8, ptr %i.nsu, i64 %i.nss
  %i.nsv = add nuw nsw i64 %i.nsr, 3
  %umax4140 = call i64 @llvm.umax.i64(i64 %i.nsv, i64 %i.nlb)
  %i.nsw = add nsw i64 %umax4140, -2
  %i.nsx = sub nsw i64 %i.nsw, %i.nsr
  %i.nsy = shl nuw nsw i64 %i.nsx, 2
  %i.nsz = and i64 %i.nsy, 9223372036854775800    ; 2 uses
  %i.nta = getelementptr i8, ptr %i.nsd, i64 %i.nrl
  %i.ntb = getelementptr i8, ptr %i.nta, i64 1096
  %i.ntc = getelementptr i8, ptr %i.ntb, i64 %i.nsz
  %scevgep4141.a = getelementptr i8, ptr %i.ntc, i64 %i.nss
  %scevgep4143.a = getelementptr i8, ptr %scevgep4142.a, i64 %i.nss
  %i.ntd = getelementptr i8, ptr %scevgep4144, i64 %i.nsz
  %scevgep4145 = getelementptr i8, ptr %i.ntd, i64 %i.nss
  %bound04146 = icmp ult ptr %scevgep4139.a, %scevgep4145
  %bound14147 = icmp ult ptr %scevgep4143.a, %scevgep4141.a
  %found.conflict4148 = and i1 %bound04146, %bound14147
  br i1 %found.conflict4148, label %scalar.ph4149.preheader, label %vector.ph4151

vector.ph4151:                                    ; preds = %vector.memcheck4136
  %i.nte = and i64 %i.nsp, 3                      ; 2 uses
  %i.ntf = icmp eq i64 %i.nte, 0
  %i.ntg = select i1 %i.ntf, i64 4, i64 %i.nte
  %n.vec4152 = sub nsw i64 %i.nsp, %i.ntg         ; 2 uses
  %i.nth = shl i64 %n.vec4152, 1
  %i.nti = add i64 %i.nth, %i.nsh
  %broadcast.splatinsert4153 = insertelement <4 x i64> poison, i64 %i.nsh, i64 0
  %broadcast.splat4154 = shufflevector <4 x i64> %broadcast.splatinsert4153, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction4155 = add nuw nsw <4 x i64> %broadcast.splat4154, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4885.a = getelementptr [4 x i8], ptr %i.nsg, i64 %i.nsh
  br label %vector.body4156

vector.body4156:                                  ; preds = %vector.body4156, %vector.ph4151
  %index4157 = phi i64 [ 0, %vector.ph4151 ], [ %index.next4177, %vector.body4156 ] ; 2 uses
  %vec.ind4158 = phi <4 x i64> [ %induction4155, %vector.ph4151 ], [ %vec.ind.next4178, %vector.body4156 ] ; 2 uses
  %wide.gep4159 = getelementptr inbounds nuw [4 x i8], ptr %i.nsf, <4 x i64> %vec.ind4158 ; 2 uses
  %i.ntj = extractelement <4 x ptr> %wide.gep4159, i64 0 ; 4 uses
  %.idx4573 = shl nuw i64 %index4157, 3
  %gep4886.a = getelementptr i8, ptr %invariant.gep4885.a, i64 %.idx4573 ; 4 uses
  %wide.vec4160 = load <8 x float>, ptr %gep4886.a, align 4, !tbaa !22, !alias.scope !431, !noalias !402 ; 2 uses
  %strided.vec4161 = shufflevector <8 x float> %wide.vec4160, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec4162.a = shufflevector <8 x float> %wide.vec4160, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ntk = getelementptr inbounds i8, ptr %i.ntj, i64 -544
  %wide.vec4163.a = load <8 x float>, ptr %i.ntk, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4164.a = shufflevector <8 x float> %wide.vec4163.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntl = getelementptr inbounds i8, ptr %gep4886.a, i64 -544
  %wide.vec4165.a = load <8 x float>, ptr %i.ntl, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4166.a = shufflevector <8 x float> %wide.vec4165.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntm = getelementptr inbounds i8, ptr %i.ntj, i64 -4
  %wide.vec4167.a = load <8 x float>, ptr %i.ntm, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4168.a = shufflevector <8 x float> %wide.vec4167.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntn = getelementptr inbounds i8, ptr %gep4886.a, i64 -4
  %wide.vec4169.a = load <8 x float>, ptr %i.ntn, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4170.a = shufflevector <8 x float> %wide.vec4169.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nto = getelementptr inbounds nuw i8, ptr %i.ntj, i64 4
  %wide.vec4171.a = load <8 x float>, ptr %i.nto, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4172.a = shufflevector <8 x float> %wide.vec4171.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntp = getelementptr inbounds nuw i8, ptr %i.ntj, i64 544
  %wide.vec4173.a = load <8 x float>, ptr %i.ntp, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4174.a = shufflevector <8 x float> %wide.vec4173.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntq = getelementptr inbounds nuw i8, ptr %gep4886.a, i64 544
  %wide.vec4175 = load <8 x float>, ptr %i.ntq, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4176 = shufflevector <8 x float> %wide.vec4175, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntr = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4164.a, %strided.vec4168.a
end_hunk_3
begin_hunk_4_@process:bb.a
  %i.pna = getelementptr i8, ptr %i.pmz, i64 %i.pmw
  %scevgep3749.a = getelementptr i8, ptr %i.pna, i64 %i.pmn ; 2 uses
  %i.pnb = getelementptr i8, ptr %i.plx, i64 %i.lyy
  %i.pnc = getelementptr i8, ptr %i.pnb, i64 8
  %i.pnd = getelementptr i8, ptr %i.pnc, i64 %i.plc
  %scevgep3750 = getelementptr i8, ptr %i.pnd, i64 %i.pmn
  %i.pne = getelementptr i8, ptr %i.plx, i64 %i.lyy
  %i.pnf = getelementptr i8, ptr %i.pne, i64 2188
  %i.png = getelementptr i8, ptr %i.pnf, i64 %i.plc
  %i.pnh = getelementptr i8, ptr %i.png, i64 %i.pmw
  %scevgep3751.a = getelementptr i8, ptr %i.pnh, i64 %i.pmn
  %scevgep3753.a = getelementptr i8, ptr %scevgep3752.a, i64 %i.pmn
  %i.pni = getelementptr i8, ptr %scevgep3754, i64 %i.pmw
  %scevgep3755 = getelementptr i8, ptr %i.pni, i64 %i.pmn
  %bound03756 = icmp ult ptr %scevgep3747.a, %scevgep3751.a
  %bound13757 = icmp ult ptr %scevgep3750, %scevgep3749.a
  %found.conflict3758 = and i1 %bound03756, %bound13757
  %bound03759 = icmp ult ptr %scevgep3747.a, %scevgep3755
  %bound13760 = icmp ult ptr %scevgep3753.a, %scevgep3749.a
  %found.conflict3761 = and i1 %bound03759, %bound13760
  %conflict.rdx3762 = or i1 %found.conflict3758, %found.conflict3761
  br i1 %conflict.rdx3762, label %scalar.ph3763.preheader, label %vector.ph3765

vector.ph3765:                                    ; preds = %vector.memcheck3744
  %i.pnj = and i64 %i.pmj, 3                      ; 2 uses
  %i.pnk = icmp eq i64 %i.pnj, 0
  %i.pnl = select i1 %i.pnk, i64 4, i64 %i.pnj
  %n.vec3766 = sub i64 %i.pmj, %i.pnl             ; 2 uses
  %i.pnm = shl i64 %n.vec3766, 1
  %i.pnn = add i64 %i.pnm, %i.plz
  %broadcast.splatinsert3767 = insertelement <4 x i64> poison, i64 %i.plz, i64 0
  %broadcast.splat3768 = shufflevector <4 x i64> %broadcast.splatinsert3767, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3769 = add nuw nsw <4 x i64> %broadcast.splat3768, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body3770

vector.body3770:                                  ; preds = %vector.body3770, %vector.ph3765
  %index3771 = phi i64 [ 0, %vector.ph3765 ], [ %index.next3801, %vector.body3770 ] ; 2 uses
  %vec.ind3772 = phi <4 x i64> [ %induction3769, %vector.ph3765 ], [ %vec.ind.next3802, %vector.body3770 ] ; 2 uses
  %i.pno = shl nuw i64 %index3771, 1
  %i.pnp = add nuw i64 %i.pno, %i.plz             ; 2 uses
  %i.pnq = getelementptr inbounds nuw [4 x i8], ptr %i.plq, i64 %i.pnp ; 4 uses
  %wide.gep3773 = getelementptr inbounds nuw [4 x i8], ptr %i.plu, <4 x i64> %vec.ind3772 ; 2 uses
  %i.pnr = extractelement <4 x ptr> %wide.gep3773, i64 0 ; 4 uses
  %i.pns = getelementptr inbounds nuw [4 x i8], ptr %i.ply, i64 %i.pnp ; 5 uses
  %i.pnt = getelementptr inbounds i8, ptr %i.pns, i64 -8
  %wide.vec3774.a = load <8 x float>, ptr %i.pnt, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3775.a = shufflevector <8 x float> %wide.vec3774.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3776.a = load <8 x float>, ptr %i.pns, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3777.a = shufflevector <8 x float> %wide.vec3776.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %i.pnu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3775.a, %strided.vec3777.a
  %i.pnv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pnu)
  %i.pnw = getelementptr inbounds nuw i8, ptr %i.pnq, i64 4
  %wide.vec3778.a = load <8 x float>, ptr %i.pnw, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3779.a = shufflevector <8 x float> %wide.vec3778.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pnx = getelementptr inbounds i8, ptr %i.pnq, i64 -4
  %wide.vec3780 = load <8 x float>, ptr %i.pnx, align 4, !tbaa !22, !alias.scope !488, !noalias !402 ; 2 uses
  %strided.vec3781 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3782.a = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pny = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779.a, %strided.vec3781
  %i.pnz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pny)
  %i.poa = fadd reassoc nsz arcp contract afn <4 x float> %i.pnz, splat (float 1.000000e+00) ; 2 uses
  %i.pob = fadd reassoc nsz arcp contract afn <4 x float> %i.poa, %i.pnv
  %i.poc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pob ; 2 uses
  %i.pod = getelementptr inbounds nuw i8, ptr %i.pns, i64 8
  %wide.vec3783.a = load <8 x float>, ptr %i.pod, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3784.a = shufflevector <8 x float> %wide.vec3783.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.poe = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3784.a, %strided.vec3777.a
  %i.pof = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.poe)
  %i.pog = fadd reassoc nsz arcp contract afn <4 x float> %i.poa, %i.pof
  %i.poh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pog ; 2 uses
  %i.poi = getelementptr inbounds i8, ptr %i.pns, i64 -1088
  %wide.vec3785.a = load <8 x float>, ptr %i.poi, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3786.a = shufflevector <8 x float> %wide.vec3785.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.poj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3786.a, %strided.vec3777.a
  %i.pok = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.poj)
  %i.pol = getelementptr inbounds nuw i8, ptr %i.pnq, i64 544
  %wide.vec3787.a = load <8 x float>, ptr %i.pol, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3788.a = shufflevector <8 x float> %wide.vec3787.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pom = getelementptr inbounds i8, ptr %i.pnq, i64 -544
  %wide.vec3789.a = load <8 x float>, ptr %i.pom, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3790.a = shufflevector <8 x float> %wide.vec3789.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pon = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788.a, %strided.vec3790.a
  %i.poo = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pon)
  %i.pop = fadd reassoc nsz arcp contract afn <4 x float> %i.poo, splat (float 1.000000e+00) ; 2 uses
  %i.poq = fadd reassoc nsz arcp contract afn <4 x float> %i.pop, %i.pok
  %i.por = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poq ; 2 uses
  %i.pos = getelementptr inbounds nuw i8, ptr %i.pns, i64 1088
  %wide.vec3791.a = load <8 x float>, ptr %i.pos, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3792.a = shufflevector <8 x float> %wide.vec3791.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pot = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3792.a, %strided.vec3777.a
  %i.pou = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pot)
  %i.pov = fadd reassoc nsz arcp contract afn <4 x float> %i.pop, %i.pou
  %i.pow = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pov ; 2 uses
  %i.pox = getelementptr inbounds i8, ptr %i.pnr, i64 -4
  %wide.vec3793.a = load <8 x float>, ptr %i.pox, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3794.a = shufflevector <8 x float> %wide.vec3793.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.poy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3781, %strided.vec3794.a
  %i.poz = fmul reassoc nsz arcp contract afn <4 x float> %i.poy, %i.poc
  %i.ppa = getelementptr inbounds nuw i8, ptr %i.pnr, i64 4
  %wide.vec3795.a = load <8 x float>, ptr %i.ppa, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3796.a = shufflevector <8 x float> %wide.vec3795.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779.a, %strided.vec3796.a
  %i.ppc = fmul reassoc nsz arcp contract afn <4 x float> %i.ppb, %i.poh
  %i.ppd = fadd reassoc nsz arcp contract afn <4 x float> %i.poz, %i.ppc
  %i.ppe = getelementptr inbounds i8, ptr %i.pnr, i64 -544
  %wide.vec3797.a = load <8 x float>, ptr %i.ppe, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3798.a = shufflevector <8 x float> %wide.vec3797.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppf = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3790.a, %strided.vec3798.a
  %i.ppg = fmul reassoc nsz arcp contract afn <4 x float> %i.ppf, %i.por
  %i.pph = fadd reassoc nsz arcp contract afn <4 x float> %i.ppd, %i.ppg
  %i.ppi = getelementptr inbounds nuw i8, ptr %i.pnr, i64 544
  %wide.vec3799 = load <8 x float>, ptr %i.ppi, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3800 = shufflevector <8 x float> %wide.vec3799, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788.a, %strided.vec3800
  %i.ppk = fmul reassoc nsz arcp contract afn <4 x float> %i.ppj, %i.pow
  %i.ppl = fadd reassoc nsz arcp contract afn <4 x float> %i.pph, %i.ppk
  %i.ppm = fadd reassoc nsz arcp contract afn <4 x float> %i.poh, %i.poc
  %i.ppn = fadd reassoc nsz arcp contract afn <4 x float> %i.ppm, %i.por
  %i.ppo = fadd reassoc nsz arcp contract afn <4 x float> %i.ppn, %i.pow
  %i.ppp = fdiv reassoc nsz arcp contract afn <4 x float> %i.ppl, %i.ppo
  %i.ppq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3782.a, %i.ppp
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ppq, <4 x ptr> align 4 %wide.gep3773, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !490, !noalias !492
  %index.next3801 = add nuw i64 %index3771, 4     ; 2 uses
  %vec.ind.next3802 = add nuw nsw <4 x i64> %vec.ind3772, splat (i64 8)
  %i.ppr = icmp eq i64 %index.next3801, %n.vec3766
  br i1 %i.ppr, label %scalar.ph3763.preheader, label %vector.body3770, !llvm.loop !493

._crit_edge1155.i:                                ; preds = %scalar.ph3763, %.lr.ph1157.i
  %indvars.iv.next1300.i = add nuw nsw i64 %indvars.iv1299.i, 1 ; 2 uses
  %exitcond1134.not = icmp eq i64 %indvars.iv.next1300.i, %i.lyx
  %indvar.next3746 = add i64 %indvar3745, 1
  br i1 %exitcond1134.not, label %._crit_edge1158.i.loopexit, label %.lr.ph1157.i

scalar.ph3763:                                    ; preds = %scalar.ph3763.preheader, %scalar.ph3763
  %indvars.iv1296.i = phi i64 [ %indvars.iv.next1297.i, %scalar.ph3763 ], [ %indvars.iv1296.i.ph, %scalar.ph3763.preheader ] ; 4 uses
  %i.pps = getelementptr inbounds nuw [4 x i8], ptr %i.plq, i64 %indvars.iv1296.i ; 5 uses
  %i.ppt = getelementptr inbounds nuw [4 x i8], ptr %i.plu, i64 %indvars.iv1296.i ; 5 uses
  %i.ppu = getelementptr inbounds nuw [4 x i8], ptr %i.ply, i64 %indvars.iv1296.i ; 5 uses
  %i.ppv = load float, ptr %i.pps, align 4, !tbaa !22, !noalias !402
  %i.ppw = getelementptr inbounds nuw i8, ptr %i.pps, i64 544
  %i.ppx = getelementptr inbounds i8, ptr %i.pps, i64 -544
  %i.ppy = getelementptr inbounds nuw i8, ptr %i.pps, i64 4
  %i.ppz = getelementptr inbounds i8, ptr %i.pps, i64 -4
  %i.pqa = load float, ptr %i.ppw, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqb = load float, ptr %i.ppx, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqc = load float, ptr %i.ppy, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqd = load float, ptr %i.ppz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqe = fsub reassoc nsz arcp contract afn float %i.pqa, %i.pqb
  %i.pqf = fsub reassoc nsz arcp contract afn float %i.pqc, %i.pqd
  %i.pqg = insertelement <2 x float> poison, float %i.pqf, i64 0
  %i.pqh = insertelement <2 x float> %i.pqg, float %i.pqe, i64 1
  %i.pqi = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pqh)
  %i.pqj = fadd reassoc nsz arcp contract afn <2 x float> %i.pqi, splat (float 1.000000e+00)
  %i.pqk = shufflevector <2 x float> %i.pqj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pql = load float, ptr %i.ppu, align 4, !tbaa !22, !noalias !402
  %i.pqm = getelementptr inbounds nuw i8, ptr %i.ppu, i64 1088
  %i.pqn = getelementptr inbounds i8, ptr %i.ppu, i64 -1088
  %i.pqo = getelementptr inbounds nuw i8, ptr %i.ppu, i64 8
  %i.pqp = getelementptr inbounds i8, ptr %i.ppu, i64 -8
  %i.pqq = load float, ptr %i.pqm, align 4, !tbaa !22, !noalias !402
  %i.pqr = load float, ptr %i.pqn, align 4, !tbaa !22, !noalias !402
  %i.pqs = load float, ptr %i.pqo, align 4, !tbaa !22, !noalias !402
  %i.pqt = load float, ptr %i.pqp, align 4, !tbaa !22, !noalias !402
  %i.pqu = insertelement <4 x float> poison, float %i.pqt, i64 0
  %i.pqv = insertelement <4 x float> %i.pqu, float %i.pqs, i64 1
  %i.pqw = insertelement <4 x float> %i.pqv, float %i.pqr, i64 2
  %i.pqx = insertelement <4 x float> %i.pqw, float %i.pqq, i64 3
  %i.pqy = insertelement <4 x float> poison, float %i.pql, i64 0
  %i.pqz = shufflevector <4 x float> %i.pqy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pra = fsub reassoc nsz arcp contract afn <4 x float> %i.pqx, %i.pqz
  %i.prb = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pra)
  %i.prc = fadd reassoc nsz arcp contract afn <4 x float> %i.pqk, %i.prb
  %i.prd = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.prc ; 2 uses
  %i.pre = getelementptr inbounds nuw i8, ptr %i.ppt, i64 544
  %i.prf = getelementptr inbounds i8, ptr %i.ppt, i64 -544
  %i.prg = getelementptr inbounds nuw i8, ptr %i.ppt, i64 4
  %i.prh = getelementptr inbounds i8, ptr %i.ppt, i64 -4
  %i.pri = load float, ptr %i.pre, align 4, !tbaa !22, !noalias !402
  %i.prj = load float, ptr %i.prf, align 4, !tbaa !22, !noalias !402
  %i.prk = load float, ptr %i.prg, align 4, !tbaa !22, !noalias !402
  %i.prl = load float, ptr %i.prh, align 4, !tbaa !22, !noalias !402
  %i.prm = fsub reassoc nsz arcp contract afn float %i.pqa, %i.pri
  %i.prn = fsub reassoc nsz arcp contract afn float %i.pqb, %i.prj
  %i.pro = fsub reassoc nsz arcp contract afn float %i.pqc, %i.prk
  %i.prp = fsub reassoc nsz arcp contract afn float %i.pqd, %i.prl
  %i.prq = insertelement <4 x float> poison, float %i.prp, i64 0
  %i.prr = insertelement <4 x float> %i.prq, float %i.pro, i64 1
  %i.prs = insertelement <4 x float> %i.prr, float %i.prn, i64 2
  %i.prt = insertelement <4 x float> %i.prs, float %i.prm, i64 3
  %i.pru = fmul reassoc nsz arcp contract afn <4 x float> %i.prt, %i.prd
  %i.prv = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pru)
  %i.prw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.prd)
  %i.prx = fdiv reassoc nsz arcp contract afn float %i.prv, %i.prw
  %i.pry = fsub reassoc nsz arcp contract afn float %i.ppv, %i.prx
  store float %i.pry, ptr %i.ppt, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1297.i = add nuw nsw i64 %indvars.iv1296.i, 2 ; 2 uses
  %i.prz = icmp slt i64 %indvars.iv.next1297.i, %i.oqw
  br i1 %i.prz, label %scalar.ph3763, label %._crit_edge1155.i, !llvm.loop !494

._crit_edge1176.split.i:                          ; preds = %._crit_edge1169.i, %.lr.ph1175.i, %._crit_edge1161.i
  %i.psa = add i32 %.08871178.i, 1
  %indvars.iv.next1208.i = add i32 %indvars.iv1207.i, 112
  %indvars.iv.next1091 = add i32 %indvars.iv1090, 112
  %indvars.iv.next1094 = add i32 %indvars.iv1093, -112
  br i1 %i.npj, label %._crit_edge1180.i, label %bb.pr

.lr.ph1168.i:                                     ; preds = %.lr.ph1168.i.preheader, %._crit_edge1169.i
  %indvars.iv1306.i = phi i64 [ %indvars.iv.next1307.i, %._crit_edge1169.i ], [ %11, %.lr.ph1168.i.preheader ] ; 2 uses
  %indvars.iv1302.i = phi i32 [ %indvars.iv.next1303.i, %._crit_edge1169.i ], [ %narrow.i, %.lr.ph1168.i.preheader ] ; 2 uses
  %i.psb = trunc i64 %indvars.iv1306.i to i32
  %i.psc = mul i32 %i.bo, %i.psb
  %i.psd = add i32 %i.psc, %i.oud
  %i.pse = shl nsw i32 %i.psd, 2
  %i.psf = zext nneg i32 %i.pse to i64
  %i.psg = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.psf ; 6 uses
  %i.psh = mul i32 %indvars.iv1302.i, 136
  %i.psi = add i32 %.reass1171.i, %i.psh
  %i.psj = sext i32 %i.psi to i64                 ; 3 uses
  %i.psk = getelementptr inbounds [4 x i8], ptr %i.lws, i64 %i.psj ; 6 uses
  %i.psl = getelementptr inbounds [4 x i8], ptr %i.lwu, i64 %i.psj ; 6 uses
  %i.psm = getelementptr inbounds [4 x i8], ptr %i.lwv, i64 %i.psj ; 6 uses
  br i1 %i.ouh, label %_calc_gamma.exit975.us.i.preheader, label %.lr.ph1168.split.i.preheader

.lr.ph1168.split.i.preheader:                     ; preds = %.lr.ph1168.i
  br i1 %min.iters.check3703, label %.lr.ph1168.split.i.preheader4646, label %vector.ph3704

vector.ph3704:                                    ; preds = %.lr.ph1168.split.i.preheader
  %i.psn = getelementptr i8, ptr %i.psm, i64 %i.out
  %i.pso = getelementptr i8, ptr %i.psl, i64 %i.out
  %i.psp = getelementptr i8, ptr %i.psk, i64 %i.out
  %i.psq = getelementptr i8, ptr %i.psg, i64 %i.ouu
  br label %vector.body3708

vector.body3708:                                  ; preds = %vector.body3708, %vector.ph3704
  %index3709 = phi i64 [ 0, %vector.ph3704 ], [ %index.next3736, %vector.body3708 ] ; 3 uses
  %i.psr = shl i64 %index3709, 2                  ; 3 uses
  %next.gep3710.a = getelementptr i8, ptr %i.psm, i64 %i.psr
  %next.gep3711.a = getelementptr i8, ptr %i.psl, i64 %i.psr
  %next.gep3712 = getelementptr i8, ptr %i.psk, i64 %i.psr
  %i.pss = shl i64 %index3709, 4
  %next.gep3713 = getelementptr i8, ptr %i.psg, i64 %i.pss
  %wide.load3714 = load <8 x float>, ptr %next.gep3712, align 4, !tbaa !22, !noalias !402
  %i.pst = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3714, splat (float 6.553500e+04) ; 4 uses
  %i.psu = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.pst, zeroinitializer ; 2 uses
  %i.psv = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.pst, splat (float f0x477FFEFD)
  %i.psw = and <8 x i1> %i.psu, %i.psv            ; 3 uses
  %i.psx = fptosi <8 x float> %i.pst to <8 x i32> ; 2 uses
  %i.psy = sitofp reassoc nsz arcp contract afn <8 x i32> %i.psx to <8 x float>
  %i.psz = fsub reassoc nsz arcp contract afn <8 x float> %i.pst, %i.psy
  %i.pta = sext <8 x i32> %i.psx to <8 x i64>
  %wide.gep3715.a = getelementptr inbounds [4 x i8], ptr %i.oug, <8 x i64> %i.pta ; 2 uses
  %wide.masked.gather3716.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3715.a, <8 x i1> %i.psw, <8 x float> poison), !tbaa !22, !noalias !402 ; 2 uses
  %wide.gep3717 = getelementptr i8, <8 x ptr> %wide.gep3715.a, i64 4
  %wide.masked.gather3718 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3717, <8 x i1> %i.psw, <8 x float> poison), !tbaa !22, !noalias !402
  %i.ptb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3718, %wide.masked.gather3716.a
  %i.ptc = fmul reassoc nsz arcp contract afn <8 x float> %i.ptb, %i.psz
  %i.ptd = fadd reassoc nsz arcp contract afn <8 x float> %i.ptc, %wide.masked.gather3716.a
  %predphi3719 = select <8 x i1> %i.psw, <8 x float> %i.ptd, <8 x float> splat (float 1.000000e+00)
  %predphi3720 = select <8 x i1> %i.psu, <8 x float> %predphi3719, <8 x float> zeroinitializer
  %i.pte = fmul reassoc nsz arcp contract afn <8 x float> %predphi3720, %broadcast.splat3707
  %wide.load3721 = load <8 x float>, ptr %next.gep3711.a, align 4, !tbaa !22, !noalias !402
  %i.ptf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3721, splat (float 6.553500e+04) ; 4 uses
  %i.ptg = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.ptf, zeroinitializer ; 2 uses
  %i.pth = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ptf, splat (float f0x477FFEFD)
  %i.pti = and <8 x i1> %i.ptg, %i.pth            ; 3 uses
  %i.ptj = fptosi <8 x float> %i.ptf to <8 x i32> ; 2 uses
  %i.ptk = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ptj to <8 x float>
  %i.ptl = fsub reassoc nsz arcp contract afn <8 x float> %i.ptf, %i.ptk
  %i.ptm = sext <8 x i32> %i.ptj to <8 x i64>
  %wide.gep3722.a = getelementptr inbounds [4 x i8], ptr %i.oug, <8 x i64> %i.ptm ; 2 uses
  %wide.masked.gather3723.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3722.a, <8 x i1> %i.pti, <8 x float> poison), !tbaa !22, !noalias !402 ; 2 uses
  %wide.gep3724 = getelementptr i8, <8 x ptr> %wide.gep3722.a, i64 4
  %wide.masked.gather3725 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3724, <8 x i1> %i.pti, <8 x float> poison), !tbaa !22, !noalias !402
  %i.ptn = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3725, %wide.masked.gather3723.a
  %i.pto = fmul reassoc nsz arcp contract afn <8 x float> %i.ptn, %i.ptl
  %i.ptp = fadd reassoc nsz arcp contract afn <8 x float> %i.pto, %wide.masked.gather3723.a
  %predphi3726 = select <8 x i1> %i.pti, <8 x float> %i.ptp, <8 x float> splat (float 1.000000e+00)
  %predphi3727 = select <8 x i1> %i.ptg, <8 x float> %predphi3726, <8 x float> zeroinitializer
  %i.ptq = fmul reassoc nsz arcp contract afn <8 x float> %predphi3727, %broadcast.splat3707
  %wide.load3728 = load <8 x float>, ptr %next.gep3710.a, align 4, !tbaa !22, !noalias !402
  %i.ptr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3728, splat (float 6.553500e+04) ; 4 uses
  %i.pts = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.ptr, zeroinitializer ; 2 uses
  %i.ptt = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ptr, splat (float f0x477FFEFD)
  %i.ptu = and <8 x i1> %i.pts, %i.ptt            ; 3 uses
  %i.ptv = fptosi <8 x float> %i.ptr to <8 x i32> ; 2 uses
  %i.ptw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ptv to <8 x float>
  %i.ptx = fsub reassoc nsz arcp contract afn <8 x float> %i.ptr, %i.ptw
  %i.pty = sext <8 x i32> %i.ptv to <8 x i64>
  %wide.gep3729.a = getelementptr inbounds [4 x i8], ptr %i.oug, <8 x i64> %i.pty ; 2 uses
  %wide.masked.gather3730.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3729.a, <8 x i1> %i.ptu, <8 x float> poison), !tbaa !22, !noalias !402 ; 2 uses
  %wide.gep3731 = getelementptr i8, <8 x ptr> %wide.gep3729.a, i64 4
  %wide.masked.gather3732 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3731, <8 x i1> %i.ptu, <8 x float> poison), !tbaa !22, !noalias !402
  %i.ptz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3732, %wide.masked.gather3730.a
  %i.pua = fmul reassoc nsz arcp contract afn <8 x float> %i.ptz, %i.ptx
  %i.pub = fadd reassoc nsz arcp contract afn <8 x float> %i.pua, %wide.masked.gather3730.a
  %predphi3733 = select nsz <8 x i1> %i.ptu, <8 x float> %i.pub, <8 x float> splat (float 1.000000e+00)
  %predphi3734 = select nsz <8 x i1> %i.pts, <8 x float> %predphi3733, <8 x float> zeroinitializer
  %i.puc = fmul reassoc nsz arcp contract afn <8 x float> %predphi3734, %broadcast.splat3707
  %i.pud = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.puc, <8 x float> zeroinitializer)
  %i.pue = shufflevector <8 x float> %i.pte, <8 x float> %i.ptq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.puf = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pue, <16 x float> zeroinitializer)
  %i.pug = shufflevector <8 x float> %i.pud, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3735 = shufflevector <16 x float> %i.puf, <16 x float> %i.pug, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3735, ptr %next.gep3713, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %index.next3736 = add nuw i64 %index3709, 8     ; 2 uses
  %i.puh = icmp eq i64 %index.next3736, %n.vec3705
  br i1 %i.puh, label %middle.block3737, label %vector.body3708, !llvm.loop !495

middle.block3737:                                 ; preds = %vector.body3708
  br i1 %cmp.n3738, label %._crit_edge1169.i, label %.lr.ph1168.split.i.preheader4646

.lr.ph1168.split.i.preheader4646:                 ; preds = %.lr.ph1168.split.i.preheader, %middle.block3737
  %.01166.i.ph = phi i32 [ %i.oud, %.lr.ph1168.split.i.preheader ], [ %i.ous, %middle.block3737 ]
  %.08731165.i.ph = phi ptr [ %i.psm, %.lr.ph1168.split.i.preheader ], [ %i.psn, %middle.block3737 ]
  %.08741164.i.ph = phi ptr [ %i.psl, %.lr.ph1168.split.i.preheader ], [ %i.pso, %middle.block3737 ]
  %.08751163.i.ph = phi ptr [ %i.psk, %.lr.ph1168.split.i.preheader ], [ %i.psp, %middle.block3737 ]
  %.08761162.i.ph = phi ptr [ %i.psg, %.lr.ph1168.split.i.preheader ], [ %i.psq, %middle.block3737 ]
  br label %.lr.ph1168.split.i

_calc_gamma.exit975.us.i.preheader:               ; preds = %.lr.ph1168.i
  br i1 %min.iters.check3680, label %_calc_gamma.exit975.us.i.preheader4645, label %vector.ph3681

vector.ph3681:                                    ; preds = %_calc_gamma.exit975.us.i.preheader
  %i.pui = getelementptr i8, ptr %i.psm, i64 %i.oux
  %i.puj = getelementptr i8, ptr %i.psl, i64 %i.oux
  %i.puk = getelementptr i8, ptr %i.psk, i64 %i.oux
  %i.pul = getelementptr i8, ptr %i.psg, i64 %i.ouy
  br label %vector.body3685

vector.body3685:                                  ; preds = %vector.body3685, %vector.ph3681
  %index3686 = phi i64 [ 0, %vector.ph3681 ], [ %index.next3694, %vector.body3685 ] ; 3 uses
  %i.pum = shl i64 %index3686, 2                  ; 3 uses
  %next.gep = getelementptr i8, ptr %i.psm, i64 %i.pum
  %next.gep3687.a = getelementptr i8, ptr %i.psl, i64 %i.pum
  %next.gep3688 = getelementptr i8, ptr %i.psk, i64 %i.pum
  %i.pun = shl i64 %index3686, 4
  %next.gep3689 = getelementptr i8, ptr %i.psg, i64 %i.pun
  %wide.load3690.a = load <8 x float>, ptr %next.gep3688, align 4, !tbaa !22, !noalias !402
  %wide.load3691 = load <8 x float>, ptr %next.gep3687.a, align 4, !tbaa !22, !noalias !402
  %wide.load3692 = load <8 x float>, ptr %next.gep, align 4, !tbaa !22, !noalias !402
  %i.puo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3692, %broadcast.splat3684
  %i.pup = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.puo, <8 x float> zeroinitializer)
  %i.puq = shufflevector <8 x float> %wide.load3690.a, <8 x float> %wide.load3691, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pur = fmul reassoc nsz arcp contract afn <16 x float> %i.puq, %i.awt
  %i.pus = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pur, <16 x float> zeroinitializer)
  %i.put = shufflevector <8 x float> %i.pup, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3693 = shufflevector <16 x float> %i.pus, <16 x float> %i.put, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3693, ptr %next.gep3689, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %index.next3694 = add nuw i64 %index3686, 8     ; 2 uses
  %i.puu = icmp eq i64 %index.next3694, %n.vec3682
  br i1 %i.puu, label %middle.block3695, label %vector.body3685, !llvm.loop !496

middle.block3695:                                 ; preds = %vector.body3685
  br i1 %cmp.n3696, label %._crit_edge1169.i, label %_calc_gamma.exit975.us.i.preheader4645

_calc_gamma.exit975.us.i.preheader4645:           ; preds = %_calc_gamma.exit975.us.i.preheader, %middle.block3695
  %.01166.us.i.ph = phi i32 [ %i.oud, %_calc_gamma.exit975.us.i.preheader ], [ %i.ouw, %middle.block3695 ]
  %.08731165.us.i.ph = phi ptr [ %i.psm, %_calc_gamma.exit975.us.i.preheader ], [ %i.pui, %middle.block3695 ]
  %.08741164.us.i.ph = phi ptr [ %i.psl, %_calc_gamma.exit975.us.i.preheader ], [ %i.puj, %middle.block3695 ]
  %.08751163.us.i.ph = phi ptr [ %i.psk, %_calc_gamma.exit975.us.i.preheader ], [ %i.puk, %middle.block3695 ]
  %.08761162.us.i.ph = phi ptr [ %i.psg, %_calc_gamma.exit975.us.i.preheader ], [ %i.pul, %middle.block3695 ]
  br label %_calc_gamma.exit975.us.i

_calc_gamma.exit975.us.i:                         ; preds = %_calc_gamma.exit975.us.i.preheader4645, %_calc_gamma.exit975.us.i
  %.01166.us.i = phi i32 [ %i.pvg, %_calc_gamma.exit975.us.i ], [ %.01166.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ]
  %.08731165.us.i = phi ptr [ %i.pvk, %_calc_gamma.exit975.us.i ], [ %.08731165.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 2 uses
  %.08741164.us.i = phi ptr [ %i.pvj, %_calc_gamma.exit975.us.i ], [ %.08741164.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 2 uses
  %.08751163.us.i = phi ptr [ %i.pvi, %_calc_gamma.exit975.us.i ], [ %.08751163.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 2 uses
  %.08761162.us.i = phi ptr [ %i.pvh, %_calc_gamma.exit975.us.i ], [ %.08761162.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 4 uses
  %i.puv = load float, ptr %.08751163.us.i, align 4, !tbaa !22, !noalias !402
  %i.puw = load float, ptr %.08741164.us.i, align 4, !tbaa !22, !noalias !402
  %i.pux = insertelement <2 x float> poison, float %i.puv, i64 0
  %i.puy = insertelement <2 x float> %i.pux, float %i.puw, i64 1
  %i.puz = fmul reassoc nsz arcp contract afn <2 x float> %i.puy, %i.awv
  %i.pva = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.puz, <2 x float> zeroinitializer)
  store <2 x float> %i.pva, ptr %.08761162.us.i, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pvb = load float, ptr %.08731165.us.i, align 4, !tbaa !22, !noalias !402
  %i.pvc = fmul reassoc nsz arcp contract afn float %i.pvb, %i.eh
  %i.pvd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pvc, float 0.000000e+00)
  %i.pve = getelementptr inbounds nuw i8, ptr %.08761162.us.i, i64 8
  store float %i.pvd, ptr %i.pve, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pvf = getelementptr inbounds nuw i8, ptr %.08761162.us.i, i64 12
  store float 0.000000e+00, ptr %i.pvf, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pvg = add nuw nsw i32 %.01166.us.i, 1        ; 2 uses
  %i.pvh = getelementptr inbounds nuw i8, ptr %.08761162.us.i, i64 16
  %i.pvi = getelementptr inbounds nuw i8, ptr %.08751163.us.i, i64 4
  %i.pvj = getelementptr inbounds nuw i8, ptr %.08741164.us.i, i64 4
  %i.pvk = getelementptr inbounds nuw i8, ptr %.08731165.us.i, i64 4
  %i.pvl = icmp slt i32 %i.pvg, %i.oue
  br i1 %i.pvl, label %_calc_gamma.exit975.us.i, label %._crit_edge1169.i, !llvm.loop !497

._crit_edge1169.i:                                ; preds = %_calc_gamma.exit977.i, %_calc_gamma.exit975.us.i, %middle.block3737, %middle.block3695
  %indvars.iv.next1307.i = add nuw nsw i64 %indvars.iv1306.i, 1 ; 2 uses
  %indvars.iv.next1303.i = add i32 %indvars.iv1302.i, 1
  %12 = icmp samesign ult i64 %indvars.iv.next1307.i, %i.lys
  br i1 %12, label %.lr.ph1168.i, label %._crit_edge1176.split.i

.lr.ph1168.split.i:                               ; preds = %.lr.ph1168.split.i.preheader4646, %_calc_gamma.exit977.i
  %.01166.i = phi i32 [ %i.pxo, %_calc_gamma.exit977.i ], [ %.01166.i.ph, %.lr.ph1168.split.i.preheader4646 ]
  %.08731165.i = phi ptr [ %i.pxs, %_calc_gamma.exit977.i ], [ %.08731165.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 2 uses
  %.08741164.i = phi ptr [ %i.pxr, %_calc_gamma.exit977.i ], [ %.08741164.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 2 uses
  %.08751163.i = phi ptr [ %i.pxq, %_calc_gamma.exit977.i ], [ %.08751163.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 2 uses
  %.08761162.i = phi ptr [ %i.pxp, %_calc_gamma.exit977.i ], [ %.08761162.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 5 uses
  %i.pvm = load float, ptr %.08751163.i, align 4, !tbaa !22, !noalias !402
  %i.pvn = fmul reassoc nsz arcp contract afn float %i.pvm, 6.553500e+04 ; 4 uses
  %i.pvo = fcmp reassoc nsz arcp contract afn olt float %i.pvn, 0.000000e+00
  br i1 %i.pvo, label %bb.rj, label %bb.rh

bb.rh:                                            ; preds = %.lr.ph1168.split.i
  %i.pvp = fcmp reassoc nsz arcp contract afn ogt float %i.pvn, f0x477FFEFD
  br i1 %i.pvp, label %bb.rj, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.pvq = fptosi float %i.pvn to i32             ; 2 uses
  %i.pvr = sitofp reassoc nsz arcp contract afn i32 %i.pvq to float
  %i.pvs = fsub reassoc nsz arcp contract afn float %i.pvn, %i.pvr
  %i.pvt = sext i32 %i.pvq to i64
  %i.pvu = getelementptr inbounds [4 x i8], ptr %i.oug, i64 %i.pvt ; 2 uses
  %i.pvv = load float, ptr %i.pvu, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pvw = getelementptr i8, ptr %i.pvu, i64 4
  %i.pvx = load float, ptr %i.pvw, align 4, !tbaa !22, !noalias !402
  %i.pvy = fsub reassoc nsz arcp contract afn float %i.pvx, %i.pvv
  %i.pvz = fmul reassoc nsz arcp contract afn float %i.pvy, %i.pvs
  %i.pwa = fadd reassoc nsz arcp contract afn float %i.pvz, %i.pvv
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %bb.rh, %.lr.ph1168.split.i
  %.1.i972.ph.i = phi float [ 1.000000e+00, %bb.rh ], [ 0.000000e+00, %.lr.ph1168.split.i ], [ %i.pwa, %bb.ri ]
  %i.pwb = fmul reassoc nsz arcp contract afn float %.1.i972.ph.i, %i.eh
  %i.pwc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pwb, float 0.000000e+00)
  store float %i.pwc, ptr %.08761162.i, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pwd = load float, ptr %.08741164.i, align 4, !tbaa !22, !noalias !402
  %i.pwe = fmul reassoc nsz arcp contract afn float %i.pwd, 6.553500e+04 ; 4 uses
  %i.pwf = fcmp reassoc nsz arcp contract afn olt float %i.pwe, 0.000000e+00
  br i1 %i.pwf, label %bb.rm, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.pwg = fcmp reassoc nsz arcp contract afn ogt float %i.pwe, f0x477FFEFD
  br i1 %i.pwg, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.pwh = fptosi float %i.pwe to i32             ; 2 uses
  %i.pwi = sitofp reassoc nsz arcp contract afn i32 %i.pwh to float
  %i.pwj = fsub reassoc nsz arcp contract afn float %i.pwe, %i.pwi
  %i.pwk = sext i32 %i.pwh to i64
  %i.pwl = getelementptr inbounds [4 x i8], ptr %i.oug, i64 %i.pwk ; 2 uses
  %i.pwm = load float, ptr %i.pwl, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pwn = getelementptr i8, ptr %i.pwl, i64 4
  %i.pwo = load float, ptr %i.pwn, align 4, !tbaa !22, !noalias !402
  %i.pwp = fsub reassoc nsz arcp contract afn float %i.pwo, %i.pwm
  %i.pwq = fmul reassoc nsz arcp contract afn float %i.pwp, %i.pwj
  %i.pwr = fadd reassoc nsz arcp contract afn float %i.pwq, %i.pwm
  br label %bb.rm

bb.rm:                                            ; preds = %bb.rl, %bb.rk, %bb.rj
  %.1.i974.ph.i = phi float [ 1.000000e+00, %bb.rk ], [ 0.000000e+00, %bb.rj ], [ %i.pwr, %bb.rl ]
  %i.pws = fmul reassoc nsz arcp contract afn float %.1.i974.ph.i, %i.eh
  %i.pwt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pws, float 0.000000e+00)
  %i.pwu = getelementptr inbounds nuw i8, ptr %.08761162.i, i64 4
  store float %i.pwt, ptr %i.pwu, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pwv = load float, ptr %.08731165.i, align 4, !tbaa !22, !noalias !402
  %i.pww = fmul reassoc nsz arcp contract afn float %i.pwv, 6.553500e+04 ; 4 uses
  %i.pwx = fcmp reassoc nsz arcp contract afn olt float %i.pww, 0.000000e+00
  br i1 %i.pwx, label %_calc_gamma.exit977.i, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.pwy = fcmp reassoc nsz arcp contract afn ogt float %i.pww, f0x477FFEFD
  br i1 %i.pwy, label %_calc_gamma.exit977.i, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.pwz = fptosi float %i.pww to i32             ; 2 uses
  %i.pxa = sitofp reassoc nsz arcp contract afn i32 %i.pwz to float
  %i.pxb = fsub reassoc nsz arcp contract afn float %i.pww, %i.pxa
  %i.pxc = sext i32 %i.pwz to i64
  %i.pxd = getelementptr inbounds [4 x i8], ptr %i.oug, i64 %i.pxc ; 2 uses
  %i.pxe = load float, ptr %i.pxd, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pxf = getelementptr i8, ptr %i.pxd, i64 4
  %i.pxg = load float, ptr %i.pxf, align 4, !tbaa !22, !noalias !402
  %i.pxh = fsub reassoc nsz arcp contract afn float %i.pxg, %i.pxe
  %i.pxi = fmul reassoc nsz arcp contract afn float %i.pxh, %i.pxb
  %i.pxj = fadd reassoc nsz arcp contract afn float %i.pxi, %i.pxe
  br label %_calc_gamma.exit977.i

_calc_gamma.exit977.i:                            ; preds = %bb.ro, %bb.rn, %bb.rm
  %.1.i976.i = phi nsz float [ 1.000000e+00, %bb.rn ], [ %i.pxj, %bb.ro ], [ 0.000000e+00, %bb.rm ]
  %i.pxk = fmul reassoc nsz arcp contract afn float %.1.i976.i, %i.eh
  %i.pxl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pxk, float 0.000000e+00)
  %i.pxm = getelementptr inbounds nuw i8, ptr %.08761162.i, i64 8
  store float %i.pxl, ptr %i.pxm, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pxn = getelementptr inbounds nuw i8, ptr %.08761162.i, i64 12
  store float 0.000000e+00, ptr %i.pxn, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pxo = add nuw nsw i32 %.01166.i, 1           ; 2 uses
  %i.pxp = getelementptr inbounds nuw i8, ptr %.08761162.i, i64 16
  %i.pxq = getelementptr inbounds nuw i8, ptr %.08751163.i, i64 4
  %i.pxr = getelementptr inbounds nuw i8, ptr %.08741164.i, i64 4
  %i.pxs = getelementptr inbounds nuw i8, ptr %.08731165.i, i64 4
  %i.pxt = icmp slt i32 %i.pxo, %i.oue
  br i1 %i.pxt, label %.lr.ph1168.split.i, label %._crit_edge1169.i, !llvm.loop !498

bb.rp:                                            ; preds = %bb.ox
  %i.pxu = load float, ptr %i.apq, align 8, !tbaa !499
  tail call fastcc void @demosaic_ppg(ptr noundef %i.aop, ptr noundef %i.ayn, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef %.fr1043, float noundef %i.pxu, i32 noundef 100000)
  br label %demosaic_box3.exit

bb.rq:                                            ; preds = %bb.ox
  tail call void @amaze_demosaic(ptr noundef %i.ayn, ptr noundef nonnull %i.aop, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef %.fr1043, float noundef %i.ek) #27
  br label %demosaic_box3.exit

demosaic_box3.exit:                               ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %._crit_edge.i475, %._crit_edge.i, %bb.iu, %bb.it, %bb.id, %._crit_edge1183.split.i, %bb.ph, %._crit_edge942.split.i, %bb.oy, %xtrans_fdc_interpolate.exit, %bb.ot, %xtrans_markesteijn_interpolate.exit, %bb.is, %bb.ow, %bb.ov, %bb.rq, %bb.rp
  br i1 %i.dv, label %bb.rr, label %_capture_sharpen.exit

bb.rr:                                            ; preds = %demosaic_box3.exit
  %i.pxv = load i32, ptr %4, align 4, !tbaa !53
  %i.pxw = load i32, ptr %i.arh, align 4, !tbaa !54
  %i.pxx = add nsw i32 %i.pxw, %i.ayb
  %.val452 = load ptr, ptr %i.r, align 8, !tbaa !55 ; 7 uses
  %.val453 = load ptr, ptr %i.y, align 16, !tbaa !82 ; 6 uses
  %i.pxy = sext i32 %i.ayd to i64                 ; 11 uses
  %i.pxz = mul nsw i64 %i.pxy, %i.aov             ; 17 uses
  %i.pya = load ptr, ptr %i.ari, align 16, !tbaa !500
  %i.pyb = getelementptr i8, ptr %.val452, i64 644
  %.val.i573 = load i32, ptr %i.pyb, align 4, !tbaa !66
  %i.pyc = and i32 %.val.i573, 8
  %.not.i574 = icmp eq i32 %i.pyc, 0
  br i1 %.not.i574, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.pyd = getelementptr inbounds nuw i8, ptr %.val452, i64 544
  %i.pye = load i32, ptr %i.pyd, align 16, !tbaa !501
  %i.pyf = getelementptr inbounds nuw i8, ptr %.val452, i64 548
  %i.pyg = load i32, ptr %i.pyf, align 4, !tbaa !502
  %i.pyh = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.pye, i32 noundef %i.pyg) #27
  %i.pyi = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.187) #27
  %i.pyj = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.pyi) #27
  %.not16.i = icmp ult i32 %i.pyh, %i.pyj
  br i1 %.not16.i, label %_capture_sharpen.exit, label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rr
  %i.pyk = getelementptr inbounds nuw i8, ptr %.val453, i64 144
  %i.pyl = load i32, ptr %i.pyk, align 8, !tbaa !116
  %i.pym = or i32 %.0389, %i.pyl
  %or.cond3.not.i = icmp eq i32 %i.pym, 0
  br i1 %or.cond3.not.i, label %_capture_sharpen.exit, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.pyn = getelementptr inbounds nuw i8, ptr %.val452, i64 240
  %i.pyo = load i32, ptr %i.pyn, align 16, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %.not184.i = icmp eq i32 %i.pyo, 0
  br i1 %.not184.i, label %.thread1.i, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.pyp = getelementptr inbounds nuw i8, ptr %.val452, i64 256
  %i.pyq = load <2 x float>, ptr %i.pyp, align 16, !tbaa !22
  %i.pyr = fmul reassoc nsz arcp contract afn <2 x float> %i.pyq, splat (float f0x3F666666)
  %i.pys = getelementptr inbounds nuw i8, ptr %.val452, i64 264
  %i.pyt = load float, ptr %i.pys, align 8, !tbaa !22
  %i.pyu = fmul reassoc nsz arcp contract afn float %i.pyt, f0x3F666666
  br label %.thread1.i

.thread1.i:                                       ; preds = %bb.ru, %bb.rv
  %i.pyv = phi reassoc nsz arcp contract afn float [ %i.pyu, %bb.rv ], [ f0x3F666666, %bb.ru ]
  %i.pyw = phi <2 x float> [ %i.pyr, %bb.rv ], [ splat (float f0x3F666666), %bb.ru ]
  store <2 x float> %i.pyw, ptr %i.a, align 16, !tbaa !22
  store float %i.pyv, ptr %i.arj, align 8, !tbaa !22
  store float 0.000000e+00, ptr %i.ark, align 4, !tbaa !22
  %i.pyx = mul i64 %i.aox, %i.pxy                 ; 4 uses
  %i.pyy = tail call ptr @dt_alloc_aligned(i64 noundef %i.pyx) #27 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pyy, i64 64) ]
  %i.pyz = tail call ptr @dt_alloc_aligned(i64 noundef %i.pyx) #27 ; 36 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pyz, i64 64) ]
  %i.pza = tail call ptr @dt_alloc_aligned(i64 noundef %i.pyx) #27 ; 34 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pza, i64 64) ]
  %i.pzb = tail call ptr @dt_alloc_aligned(i64 noundef %i.pyx) #27 ; 23 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pzb, i64 64) ]
  %i.pzc = icmp ne ptr %i.pyy, null
  %i.pzd = icmp ne ptr %i.pyz, null
  %or.cond5.i576 = select i1 %i.pzc, i1 %i.pzd, i1 false
  %i.pze = icmp ne ptr %i.pza, null
  %or.cond7.i577 = select i1 %or.cond5.i576, i1 %i.pze, i1 false
  %i.pzf = icmp ne ptr %i.pzb, null
  %or.cond9.i = select i1 %or.cond7.i577, i1 %i.pzf, i1 false
  br i1 %or.cond9.i, label %bb.rw, label %bb.ts

bb.rw:                                            ; preds = %.thread1.i
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.pyz, float noundef 1.000000e+00, i64 noundef %i.aov, i64 noundef %i.pxy, i64 noundef 1) #27
  %.not122.i.i = icmp eq i32 %i.ayd, 0
  br i1 %.not122.i.i, label %_modify_blend.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.rw
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.pyz, i64 %i.aov
  %i.pzg = add nsw i32 %i.ayd, -2
  %i.pzh = sext i32 %i.pzg to i64
  %invariant.gep115.i.i = getelementptr [4 x i8], ptr %i.pyz, i64 %i.ati
  br i1 %.not123.i.i, label %_prepare_blend.exit.i, label %.preheader.i.i580.preheader

end_hunk_4
