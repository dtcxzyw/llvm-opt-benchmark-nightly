Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 157
begin_hunk_0_@process:bb.a
    i32 1, label %bb.fz
    i32 2, label %bb.ga
    i32 5, label %bb.gb
    i32 6, label %bb.gc
    i32 3, label %bb.gd
    i32 4, label %bb.ge
    i32 1024, label %bb.gf
    i32 1025, label %bb.gg
    i32 1026, label %bb.gh
    i32 1028, label %bb.gi
    i32 1027, label %bb.gd
    i32 1029, label %bb.ge
    i32 7, label %bb.gj
  ]

bb.fz:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.ga:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gb:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gc:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gd:                                            ; preds = %bb.fy, %bb.fy
  br label %_method_str.exit

bb.ge:                                            ; preds = %bb.fy, %bb.fy
  br label %_method_str.exit

bb.gf:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gg:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gh:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gi:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gj:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gk:                                            ; preds = %bb.fy
  br label %_method_str.exit

_method_str.exit:                                 ; preds = %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk
  %.0.i470 = phi ptr [ @.str.207, %bb.gk ], [ @.str.175, %bb.gj ], [ @.str.201, %bb.fz ], [ @.str.150, %bb.ga ], [ @.str.152, %bb.gb ], [ @.str.154, %bb.gc ], [ @.str.202, %bb.gd ], [ @.str.203, %bb.ge ], [ @.str.164, %bb.gf ], [ @.str.204, %bb.gg ], [ @.str.205, %bb.gh ], [ @.str.206, %bb.gi ], [ @.str.146, %bb.fy ]
  %i.amt = select i1 %spec.select432.not, ptr @.str.11, ptr @.str.17
  %i.amu = select i1 %i.dv, ptr @.str.18, ptr @.str.11
  %i.amv = select i1 %i.dy, ptr @.str.19, ptr @.str.11
  %i.amw = select i1 %i.cw, ptr @.str.20, ptr @.str.11
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.amp, ptr noundef nonnull %i.amq, ptr noundef nonnull %i.ams, ptr noundef nonnull %.0.i470, ptr noundef nonnull %i.amt, ptr noundef nonnull %i.amu, ptr noundef nonnull %i.amv, ptr noundef nonnull %i.amw, ptr noundef nonnull %i.amm, i32 noundef %.0682722, i32 noundef %.0686716, i32 noundef %.0688708713) #27
  br label %bb.gl

bb.gl:                                            ; preds = %bb.fx, %_method_str.exit, %.thread
  %.0682723 = phi i32 [ %.0682722, %bb.fx ], [ %.0682722, %_method_str.exit ], [ 1, %.thread ] ; 3 uses
  %.0684720 = phi i32 [ %.0684719, %bb.fx ], [ %.0684719, %_method_str.exit ], [ %i.bq, %.thread ] ; 3 uses
  %.0686717 = phi i32 [ %.0686716, %bb.fx ], [ %.0686716, %_method_str.exit ], [ %i.bq, %.thread ]
  %.0688708714 = phi i32 [ %.0688708713, %bb.fx ], [ %.0688708713, %_method_str.exit ], [ 0, %.thread ] ; 3 uses
  br i1 %i.dn, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.amx = sext i32 %i.bo to i64
  %i.amy = sext i32 %i.bq to i64
  %i.amz = shl nsw i64 %i.amx, 4
  %i.ana = mul i64 %i.amz, %i.amy
  %i.anb = tail call ptr @dt_alloc_aligned(i64 noundef %i.ana) #27 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anb, i64 64) ]
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm
  %i.anc = phi ptr [ %i.anb, %bb.gm ], [ %3, %bb.gl ] ; 8 uses
  %.not420 = icmp eq ptr %i.anc, null
  br i1 %.not420, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #27
  %i.and = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.and) #27
  br label %bb.ry

bb.gp:                                            ; preds = %bb.gn
  br i1 %i.dy, label %bb.gq, label %bb.gx

bb.gq:                                            ; preds = %bb.gp
  %i.ane = sitofp reassoc nsz arcp contract afn i32 %i.en to float
  %i.anf = fmul reassoc nnan nsz arcp contract afn float %i.ane, f0x38D1B717 ; 2 uses
  %i.ang = sext i32 %i.bo to i64
  %i.anh = sext i32 %i.bq to i64
  %i.ani = shl nsw i64 %i.ang, 2
  %i.anj = mul i64 %i.ani, %i.anh                 ; 2 uses
  %i.ank = tail call ptr @dt_alloc_aligned(i64 noundef %i.anj) #27 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ank, i64 64) ]
  %.not421 = icmp eq ptr %i.ank, null
  br i1 %.not421, label %bb.gw, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.anl = load i32, ptr %i.z, align 8, !tbaa !123
  switch i32 %i.anl, label %bb.gx [
    i32 2, label %bb.gs
    i32 1, label %bb.gt
    i32 3, label %bb.gu
  ]

bb.gs:                                            ; preds = %bb.gr
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.ank, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070)
  br label %bb.gx

bb.gt:                                            ; preds = %bb.gr
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.ank, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070, float noundef %i.anf)
  br label %bb.gx

bb.gu:                                            ; preds = %bb.gr
  %i.anm = tail call ptr @dt_alloc_aligned(i64 noundef %i.anj) #27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anm, i64 64) ]
  %.not422 = icmp eq ptr %i.anm, null
  br i1 %.not422, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.anm, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070)
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.ank, ptr noundef nonnull %i.anm, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070, float noundef %i.anf)
  tail call void @free(ptr noundef nonnull %i.anm) #27
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gq
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24) #27
  %i.ann = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ann) #27
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gr, %bb.gu, %bb.gv, %bb.gt, %bb.gs, %bb.gp
  %.1 = phi ptr [ %2, %bb.gp ], [ %2, %bb.gw ], [ %i.ank, %bb.gr ], [ %i.ank, %bb.gu ], [ %i.ank, %bb.gv ], [ %i.ank, %bb.gt ], [ %i.ank, %bb.gs ] ; 3 uses
  %.0387 = phi ptr [ null, %bb.gp ], [ null, %bb.gw ], [ %i.ank, %bb.gr ], [ %i.ank, %bb.gu ], [ %i.ank, %bb.gv ], [ %i.ank, %bb.gt ], [ %i.ank, %bb.gs ] ; 2 uses
  %.14125 = ptrtoaddr ptr %.1 to i64              ; 2 uses
  br i1 %.not75.i, label %bb.gy, label %.thread726

bb.gy:                                            ; preds = %bb.gx
  %i.ano = sext i32 %i.bo to i64
  %i.anp = sext i32 %.0686717 to i64
  %i.anq = shl nsw i64 %i.ano, 4
  %i.anr = mul i64 %i.anq, %i.anp
  %i.ans = tail call ptr @dt_alloc_aligned(i64 noundef %i.anr) #27 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ans, i64 64) ]
  %.not423 = icmp eq ptr %i.ans, null
  br i1 %.not423, label %bb.gz, label %.thread726

bb.gz:                                            ; preds = %bb.gy
  tail call void @free(ptr noundef %.0387) #27
  br i1 %i.dn, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  tail call void @free(ptr noundef nonnull %i.anc) #27
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #27
  %i.ant = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ant) #27
  br label %bb.ry

.thread726:                                       ; preds = %bb.gx, %bb.gy
  %i.anu = phi ptr [ %i.ans, %bb.gy ], [ %i.anc, %bb.gx ] ; 82 uses
  %i.anv = icmp sgt i32 %.0682723, 0
  br i1 %i.anv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread726
  %i.anw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh ; 4 uses
  %.not424 = icmp eq i32 %i.bj, 0
  %i.anx = add i32 %.0688708714, %.0684720
  %i.any = select i1 %.not424, i32 0, i32 2
  %i.anz = icmp slt i32 %i.bo, 1                  ; 3 uses
  %i.aoa = sext i32 %i.bo to i64                  ; 45 uses
  %i.aob = zext i32 %i.bo to i64                  ; 33 uses
  %i.aoc = shl nsw i64 %i.aoa, 2                  ; 2 uses
  %i.aod = icmp eq i32 %.0394, 2
  %or.cond31 = or i1 %i.bg, %i.aod
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.aof = icmp slt i32 %i.bo, 8
  %i.aog = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aok = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aol = add nsw i32 %i.bo, -17
  %i.aom = sdiv i32 %i.aol, 112                   ; 2 uses
  %invariant.op.i553 = fmul reassoc nnan nsz arcp contract afn float %i.anw, 6.553500e+04
  %i.aon = mul i32 %i.bo, 112
  %smax.i554 = tail call i32 @llvm.smax.i32(i32 %i.aom, i32 0)
  %i.aoo = icmp slt i32 %i.bo, 20
  %i.aop = add nsw i32 %i.bo, -21
  %i.aoq = sdiv i32 %i.aop, 92
  %i.aor = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.aos = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.aot = mul i32 %i.bo, 92
  %i.aou = shl i32 %i.bo, 2                       ; 10 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aow = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  %i.aoy = icmp eq i32 %.0394, 1026               ; 32 uses
  %i.aoz = select i1 %i.aoy, i32 3, i32 1
  %i.apa = icmp eq i32 %.0394, 1028
  %i.apb = add i32 %.0394, -1025
  %or.cond29 = icmp ult i32 %i.apb, 2
  %i.apc = zext i1 %i.aoy to i32
  %i.apd = shl nuw nsw i32 4, %i.apc              ; 2 uses
  %i.ape = select i1 %i.aoy, i64 2083776, i64 1131200
  %.neg.i511 = select i1 %i.aoy, i32 -17, i32 -12 ; 9 uses
  %i.apf = select i1 %i.aoy, i32 17, i32 12       ; 11 uses
  %i.apg = select i1 %i.aoy, i64 1428864, i64 714432 ; 10 uses
  %i.aph = select i1 %i.aoy, i64 119072, i64 59536 ; 2 uses
  %i.api = sub nsw i32 %i.bo, %i.apf              ; 2 uses
  %i.apj = icmp slt i32 %.neg.i511, %i.api
  %i.apk = add i32 %i.apf, %i.bo                  ; 3 uses
  %i.apl = shl nsw i32 %i.bo, 1                   ; 12 uses
  %i.apm = add i32 %i.apl, -2                     ; 10 uses
  %i.apn = select i1 %i.aoy, i32 5, i32 6         ; 5 uses
  %i.apo = add nuw nsw i32 %i.apn, 2              ; 2 uses
  %i.app = select i1 %i.aoy, i32 4, i32 8         ; 4 uses
  %i.apq = select i1 %i.aoy, i32 13, i32 8        ; 5 uses
  %i.apr = select i1 %i.aoy, i32 14, i32 9        ; 5 uses
  %i.aps = select i1 %i.aoy, i32 15, i32 10       ; 5 uses
  %i.apt = zext nneg i32 %i.apf to i64            ; 8 uses
  %i.apu = add nsw i32 %i.apf, -4
  %i.apv = add nsw i32 %i.apd, -4                 ; 2 uses
  %.not1292.i = icmp eq i32 %i.apv, 0
  %reass.sub955.i.neg = select i1 %i.aoy, i32 -88, i32 -98
  %reass.sub955.i = select i1 %i.aoy, i32 88, i32 98 ; 14 uses
  %i.apw = add nuw nsw i32 %.neg.i511, 3          ; 2 uses
  %i.apx = add nuw nsw i32 %.neg.i511, 6          ; 2 uses
  %i.apy = select i1 %i.aoy, i32 -12, i32 -6      ; 2 uses
  %i.apz = zext nneg i32 %i.apd to i64            ; 10 uses
  %i.aqa = select i1 %i.aoy, i32 -13, i32 -4      ; 2 uses
  %i.aqb = zext nneg i32 %i.apq to i64            ; 2 uses
  %i.aqc = zext nneg i32 %i.apr to i64            ; 7 uses
  %i.aqd = zext nneg i32 %i.aps to i64            ; 7 uses
  %i.aqe = add nsw i64 %i.apt, -4
  %wide.trip.count1496.i = zext i32 %i.apv to i64
  %i.aqf = icmp sgt i32 %i.bo, 0                  ; 4 uses
  %i.aqg = add i32 %i.bo, 13                      ; 5 uses
  %i.aqh = add nsw i32 %i.bo, -13
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = sext i32 %i.aqg to i64
  %gep1350.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %invariant.gep1344.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  %gep1350.1.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %invariant.gep1344.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %invariant.gep1344.3.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 4 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aql = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %invariant.gep1344.4.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %invariant.gep1344.5.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 3 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.aqo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.not123.i.i = icmp eq i32 %i.bo, 0
  %i.aqs = add nsw i32 %i.bo, -2
  %i.aqt = sext i32 %i.aqs to i64
  %i.aqu = sext i32 %i.apl to i64                 ; 2 uses
  %exitcond129.peel.not.i.i = icmp eq i32 %i.bo, 1
  %exitcond129.peel147.not.i.i = icmp eq i32 %i.bo, 2
  %i.aqv = add nsw i32 %i.bo, -3                  ; 2 uses
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = mul nuw nsw i32 %i.bo, 3               ; 8 uses
  %i.aqy = sub nsw i32 0, %i.aou
  %i.aqz = sub nuw nsw i32 -2, %i.aou
  %i.ara = sext i32 %i.aqz to i64                 ; 2 uses
  %i.arb = sub nsw i32 2, %i.aou
  %i.arc = sext i32 %i.arb to i64                 ; 2 uses
  %i.ard = sub nsw i32 0, %i.apl
  %i.are = sub nuw i32 -4, %i.apl
  %i.arf = sext i32 %i.are to i64                 ; 2 uses
  %i.arg = sub nsw i32 4, %i.apl
  %i.arh = sext i32 %i.arg to i64                 ; 2 uses
  %i.ari = zext nneg i32 %i.apl to i64            ; 4 uses
  %i.arj = zext nneg i32 %i.aou to i64            ; 2 uses
  %i.ark = xor i32 %i.aou, -1
  %i.arl = sext i32 %i.ark to i64                 ; 2 uses
  %i.arm = sub nsw i32 1, %i.aou
  %i.arn = sext i32 %i.arm to i64                 ; 2 uses
  %i.aro = sub nsw i32 0, %i.bo
  %i.arp = sub i32 -4, %i.bo
  %i.arq = sext i32 %i.arp to i64                 ; 2 uses
  %i.arr = sub i32 4, %i.bo
  %i.ars = sext i32 %i.arr to i64                 ; 2 uses
  %i.art = sext i32 %i.aqy to i64                 ; 2 uses
  %i.aru = sub nsw i32 0, %i.aqx
  %i.arv = sub nuw i32 -3, %i.aqx
  %i.arw = sext i32 %i.arv to i64                 ; 2 uses
  %i.arx = sub nsw i32 3, %i.aqx
  %i.ary = sext i32 %i.arx to i64                 ; 2 uses
  %i.arz = zext nneg i32 %i.aqx to i64            ; 2 uses
  %i.asa = sub nuw i32 -2, %i.aqx
  %i.asb = sext i32 %i.asa to i64                 ; 2 uses
  %i.asc = sub nsw i32 2, %i.aqx
  %i.asd = sext i32 %i.asc to i64                 ; 2 uses
  %i.ase = sub nuw i32 -3, %i.apl
  %i.asf = sext i32 %i.ase to i64                 ; 2 uses
  %i.asg = sub nsw i32 3, %i.apl
  %i.ash = sext i32 %i.asg to i64                 ; 2 uses
  %i.asi = xor i32 %i.aqx, -1
  %i.asj = sext i32 %i.asi to i64                 ; 2 uses
  %i.ask = sub nsw i32 1, %i.aqx
  %i.asl = sext i32 %i.ask to i64                 ; 2 uses
  %i.asm = sub i32 -3, %i.bo
  %i.asn = sext i32 %i.asm to i64                 ; 2 uses
  %i.aso = sub i32 3, %i.bo
  %i.asp = sext i32 %i.aso to i64                 ; 2 uses
  %i.asq = sext i32 %i.aru to i64                 ; 2 uses
  %i.asr = sub nuw nsw i32 -2, %i.apl
  %i.ass = sext i32 %i.asr to i64                 ; 2 uses
  %i.ast = sub nsw i32 2, %i.apl
  %i.asu = sext i32 %i.ast to i64                 ; 2 uses
  %i.asv = xor i32 %i.apl, -1
  %i.asw = sext i32 %i.asv to i64                 ; 4 uses
  %i.asx = sub nsw i32 1, %i.apl
  %i.asy = sext i32 %i.asx to i64                 ; 4 uses
  %i.asz = sub i32 -2, %i.bo
  %i.ata = sext i32 %i.asz to i64                 ; 4 uses
  %i.atb = sub i32 2, %i.bo
  %i.atc = sext i32 %i.atb to i64                 ; 4 uses
  %i.atd = sext i32 %i.ard to i64                 ; 4 uses
  %i.ate = xor i32 %i.bo, -1
  %i.atf = sext i32 %i.ate to i64                 ; 4 uses
  %i.atg = sub i32 1, %i.bo
  %i.ath = sext i32 %i.atg to i64                 ; 4 uses
  %i.ati = sext i32 %i.aro to i64                 ; 4 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.atk = icmp ne i32 %.1393, 0                  ; 2 uses
  %i.atl = shl nuw nsw i64 %i.aob, 2
  %i.atm = add nsw i32 %.neg.i511, -1             ; 2 uses
  %i.atn = zext i32 %.0684720 to i64
  %wide.trip.count = zext nneg i32 %.0682723 to i64
  %scevgep1695 = getelementptr i8, ptr %i.anu, i64 12 ; 5 uses
  %scevgep1789 = getelementptr i8, ptr %i.anu, i64 16 ; 2 uses
  %scevgep1845 = getelementptr i8, ptr %i.anu, i64 4 ; 2 uses
  %scevgep1846 = getelementptr i8, ptr %i.anu, i64 8 ; 2 uses
  %scevgep2077 = getelementptr i8, ptr %i.anu, i64 -4
  %i.ato = shl nsw i64 %i.aoa, 4
  %scevgep2079 = getelementptr i8, ptr %i.anu, i64 32 ; 2 uses
  %i.atp = shl nsw i64 %i.aoa, 2
  %scevgep2129 = getelementptr i8, ptr %i.anu, i64 -4
  %i.atq = shl nsw i64 %i.aoa, 4
  %i.atr = shl nsw i64 %i.aoa, 2
  %i.ats = mul i32 %i.bo, 384
  %i.att = shl i32 %i.bo, 2                       ; 2 uses
  %scevgep2234 = getelementptr i8, ptr %i.anu, i64 -212
  %i.atu = mul i32 %i.bo, 384
  %i.atv = select i1 %i.aoy, i64 1905152, i64 952576
  %i.atw = mul nuw nsw i64 %i.aqd, 488            ; 9 uses
  %i.atx = add nuw nsw i64 %i.aqd, 1
  %i.aty = add nsw i32 %.neg.i511, 122
  %i.atz = mul nuw nsw i64 %i.aqd, 492            ; 5 uses
  %i.aua = add nuw nsw i64 %i.apg, %i.atz         ; 2 uses
  %i.aub = select i1 %i.aoy, i64 1905152, i64 952576
  %i.auc = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aud = add nuw nsw i64 %i.apg, %i.atz         ; 2 uses
  %i.aue = select i1 %i.aoy, i64 1905152, i64 952576
  %i.auf = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aug = add nuw nsw i64 %i.apg, %i.atz         ; 2 uses
  %i.auh = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aui = select i1 %i.aoy, i64 1905152, i64 952576
  %i.auj = add nuw nsw i64 %i.apg, %i.atz         ; 2 uses
  %i.auk = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aul = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aum = select i1 %i.aoy, i64 1547936, i64 773968
  %i.aun = mul nuw nsw i64 %i.aqd, 122
  %i.auo = mul nuw nsw i64 %i.aqd, 123
  %i.aup = mul nuw nsw i64 %i.aqc, 492            ; 3 uses
  %i.auq = add nuw nsw i64 %i.apg, %i.aup
  %i.aur = add nuw nsw i64 %i.auq, 178608
  %i.aus = add nuw nsw i64 %i.apg, %i.aup
  %i.aut = add nuw nsw i64 %i.apg, %i.aup
  %scevgep3998 = getelementptr i8, ptr %i.d, i64 -8
  %i.auu = shl nuw nsw i64 %i.aob, 2
  %scevgep5097 = getelementptr i8, ptr %.1, i64 %i.auu
  %i.auv = shl nsw i64 %i.aoa, 2
  %i.auw = shl nuw nsw i64 %i.aob, 4
  %i.aux = insertelement <4 x ptr> poison, ptr %i.anu, i64 0
  %i.auy = shufflevector <4 x ptr> %i.aux, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.auz = getelementptr i8, ptr %i.anu, <4 x i64> <i64 12, i64 8, i64 4, i64 4> ; 2 uses
  %scevgep5100 = getelementptr i8, ptr %i.anu, i64 12
  %i.ava = shl nuw nsw i64 %i.aob, 4              ; 3 uses
  %i.avb = getelementptr i8, ptr %i.anu, i64 %i.ava
  %scevgep5101 = getelementptr i8, ptr %i.avb, i64 -4
  %i.avc = shl nsw i64 %i.aoa, 4
  %scevgep5103 = getelementptr i8, ptr %i.anu, i64 8 ; 2 uses
  %i.avd = getelementptr i8, ptr %i.anu, i64 %i.ava
  %scevgep5104 = getelementptr i8, ptr %i.avd, i64 -8
  %i.ave = getelementptr i8, ptr %i.anu, <2 x i64> <i64 4, i64 12>
  %i.avf = getelementptr i8, ptr %i.anu, i64 %i.ava
  %scevgep5107 = getelementptr i8, ptr %i.avf, i64 -12
  %i.avg = select i1 %i.aoy, i64 1547936, i64 773968
  %i.avh = mul nuw nsw i64 %i.apt, 123
  %i.avi = shufflevector <4 x ptr> %i.auz, <4 x ptr> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 poison>
  %i.avj = shufflevector <2 x ptr> %i.ave, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %min.iters.check5110 = icmp ult i32 %i.bo, 16
  %i.avk = insertelement <4 x ptr> %i.avj, ptr %scevgep5103, i64 3
  %n.vec5152 = and i64 %i.aob, 2147483640         ; 3 uses
  %cmp.n5170 = icmp eq i64 %n.vec5152, %i.aob
  %broadcast.splatinsert5014 = insertelement <8 x float> poison, float %i.anw, i64 0
  %broadcast.splat5015 = shufflevector <8 x float> %broadcast.splatinsert5014, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert5033 = insertelement <8 x float> poison, float %i.anw, i64 0
  %broadcast.splat5034 = shufflevector <8 x float> %broadcast.splatinsert5033, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert4202 = insertelement <8 x float> poison, float %i.eh, i64 0
  %broadcast.splat4203 = shufflevector <8 x float> %broadcast.splatinsert4202, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert4179 = insertelement <8 x float> poison, float %i.eh, i64 0 ; 2 uses
  %broadcast.splat4180 = shufflevector <8 x float> %broadcast.splatinsert4179, <8 x float> poison, <8 x i32> zeroinitializer
  %i.avl = shufflevector <8 x float> %broadcast.splatinsert4179, <8 x float> poison, <16 x i32> zeroinitializer
  %i.avm = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.avn = shufflevector <2 x float> %i.avm, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert4146 = insertelement <8 x float> poison, float %i.eh, i64 0
  %broadcast.splat4147 = shufflevector <8 x float> %broadcast.splatinsert4146, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.avo = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat4147
  %i.avp = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat4147
  %i.avq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat4147
  %i.avr = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat4147
  %broadcast.splatinsert4164 = insertelement <4 x float> poison, float %i.eh, i64 0
  %broadcast.splat4165 = shufflevector <4 x float> %broadcast.splatinsert4164, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avs = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat4165
  %i.avt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh
  %broadcast.splatinsert3218 = insertelement <8 x float> poison, float %i.eh, i64 0 ; 2 uses
  %broadcast.splat3219 = shufflevector <8 x float> %broadcast.splatinsert3218, <8 x float> poison, <8 x i32> zeroinitializer
  %i.avu = shufflevector <8 x float> %broadcast.splatinsert3218, <8 x float> poison, <16 x i32> zeroinitializer
  %i.avv = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.eh, i64 0
  %i.avw = shufflevector <4 x float> %i.avv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %broadcast.splatinsert3135 = insertelement <8 x i64> poison, i64 %i.aoa, i64 0
  %broadcast.splat3136 = shufflevector <8 x i64> %broadcast.splatinsert3135, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3137 = insertelement <8 x i32> poison, i32 %i.apm, i64 0
  %broadcast.splat3138 = shufflevector <8 x i32> %broadcast.splatinsert3137, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3184 = insertelement <4 x i64> poison, i64 %i.aoa, i64 0
  %broadcast.splat3185 = shufflevector <4 x i64> %broadcast.splatinsert3184, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3186 = insertelement <4 x i32> poison, i32 %i.apm, i64 0
  %broadcast.splat3187 = shufflevector <4 x i32> %broadcast.splatinsert3186, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3048 = insertelement <8 x i64> poison, i64 %i.aoa, i64 0
  %broadcast.splat3049 = shufflevector <8 x i64> %broadcast.splatinsert3048, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3050 = insertelement <8 x i32> poison, i32 %i.apm, i64 0
  %broadcast.splat3051 = shufflevector <8 x i32> %broadcast.splatinsert3050, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3097 = insertelement <4 x i64> poison, i64 %i.aoa, i64 0
  %broadcast.splat3098 = shufflevector <4 x i64> %broadcast.splatinsert3097, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3099 = insertelement <4 x i32> poison, i32 %i.apm, i64 0
  %broadcast.splat3100 = shufflevector <4 x i32> %broadcast.splatinsert3099, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.avx = add nuw nsw i64 %i.aqc, 1
  %n.vec2949 = and i64 %i.apz, 8
  %n.vec2813 = and i64 %i.apz, 8
  %n.vec2768 = and i64 %i.apz, 8
  %min.iters.check2134 = icmp ult i32 %i.bo, 9
  %stride.check2143 = icmp slt i32 %i.bo, 0
  %i.avy = and i64 %i.aoa, 7
  %i.avz = and i32 %i.bo, 7
  %i.awa = icmp eq i32 %i.avz, 0
  %i.awb = select i1 %i.awa, i64 8, i64 %i.avy
  %n.vec2150 = sub nsw i64 %i.aoa, %i.awb         ; 2 uses
  %i.awc = add nsw i64 %i.aoa, -2                 ; 3 uses
  %min.iters.check2085 = icmp ult i64 %i.awc, 9
  %stride.check2094 = icmp slt i32 %i.bo, 0
  %i.awd = and i64 %i.awc, 7                      ; 2 uses
  %i.awe = icmp eq i64 %i.awd, 0
  %i.awf = select i1 %i.awe, i64 8, i64 %i.awd
  %n.vec2101 = sub nsw i64 %i.awc, %i.awf         ; 2 uses
  %i.awg = add nsw i64 %n.vec2101, 2
  %broadcast.splatinsert1937 = insertelement <8 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat1938 = shufflevector <8 x i32> %broadcast.splatinsert1937, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1908 = insertelement <8 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat1909 = shufflevector <8 x i32> %broadcast.splatinsert1908, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.hc

._crit_edge:                                      ; preds = %bb.rq, %.thread726
  br i1 %.not75.i, label %bb.rr, label %bb.rs

bb.hc:                                            ; preds = %.lr.ph, %bb.rq
  %indvars.iv1249 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1250, %bb.rq ] ; 3 uses
  %indvars1251 = trunc i64 %indvars.iv1249 to i32 ; 2 uses
  %i.awh = mul i64 %indvars.iv1249, %i.atn        ; 2 uses
  %i.awi = mul nsw i32 %.0684720, %indvars1251
  %i.awj = trunc i64 %i.awh to i32                ; 2 uses
  %i.awk = add i32 %i.anx, %i.awj
  %. = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.awk) ; 2 uses
  %i.awl = trunc i64 %i.awh to i32
  %i.awm = sub i32 %i.awl, %.0688708714           ; 2 uses
  %i.awn = tail call i32 @llvm.smax.i32(i32 %i.awm, i32 0) ; 4 uses
  %i.awo = sub nsw i32 %., %i.awn                 ; 2 uses
  %i.awp = select i1 %.not75.i, i32 %i.awo, i32 %i.bq ; 64 uses
  %i.awq = tail call i32 @llvm.smin.i32(i32 %i.awm, i32 0)
  %i.awr = add nsw i32 %i.awq, %.0688708714       ; 2 uses
  %i.aws = sub nsw i32 %i.awp, %i.awr             ; 2 uses
  %i.awt = icmp sgt i32 %i.aws, 0
  br i1 %i.awt, label %bb.hd, label %bb.rq

bb.hd:                                            ; preds = %bb.hc
  br i1 %.not75.i, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.awu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.awv = and i32 %i.awu, 25165824
  %or.cond434.not = icmp eq i32 %i.awv, 25165824
  br i1 %or.cond434.not, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, i32 noundef %indvars1251, i32 noundef %.0682723, i32 noundef %i.awi, i32 noundef %i.awn, i32 noundef %., i32 noundef %i.awo) #27
  br label %bb.hg

bb.hg:                                            ; preds = %bb.he, %bb.hf, %bb.hd
  %i.aww = mul nsw i32 %i.awn, %i.bo
  %i.awx = shl i32 %i.aww, %i.any
  %i.awy = sext i32 %i.awx to i64                 ; 4 uses
  %i.awz = getelementptr [4 x i8], ptr %.1, i64 %i.awy ; 62 uses
  br i1 %i.cv, label %bb.hh, label %bb.hv

bb.hh:                                            ; preds = %bb.hg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.axa = icmp slt i32 %i.awp, 1
  %brmerge = select i1 %i.axa, i1 true, i1 %i.anz
  br i1 %brmerge, label %demosaic_box3.exit, label %.preheader59.preheader.i

.preheader59.preheader.i:                         ; preds = %bb.hh
  %wide.trip.count76.i = zext nneg i32 %i.awp to i64
  br label %.preheader59.i

.preheader59.i:                                   ; preds = %._crit_edge.i, %.preheader59.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.preheader59.preheader.i ], [ %indvars.iv.next74.i, %._crit_edge.i ] ; 5 uses
  %i.axb = mul nuw nsw i64 %indvars.iv73.i, %i.aob
  %i.axc = trunc i64 %indvars.iv73.i to i32       ; 16 uses
  %i.axd = add i32 %i.axc, -1                     ; 11 uses
  %i.axe = icmp slt i32 %i.axd, %i.awp
  %i.axf = shl i32 %i.axd, 1
  %i.axg = and i32 %i.axf, 14                     ; 3 uses
  %i.axh = zext nneg i32 %i.axd to i64
  %i.axi = mul nuw nsw i64 %i.axh, %i.aob
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.axi ; 3 uses
  %i.axk = icmp slt i32 %i.axc, 2147483646
  %i.axl = icmp sgt i32 %i.awp, %i.axc
  %i.axm = shl i32 %i.axc, 1
  %i.axn = and i32 %i.axm, 14                     ; 3 uses
  %i.axo = and i64 %indvars.iv73.i, 4294967295
  %i.axp = mul nuw nsw i64 %i.axo, %i.aob
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.axp ; 3 uses
  %i.axr = add nsw i32 %i.axc, 1                  ; 6 uses
  %i.axs = icmp slt i32 %i.axr, %i.awp
  %i.axt = shl i32 %i.axr, 1
  %i.axu = and i32 %i.axt, 14                     ; 3 uses
  %i.axv = zext nneg i32 %i.axr to i64
  %i.axw = mul nuw nsw i64 %i.axv, %i.aob
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.axw ; 3 uses
  %i.axy = icmp slt i32 %i.axd, %i.awp
end_hunk_0
begin_hunk_1_@process:bb.a
  %.not1125.3.i = icmp samesign ugt i32 %i.eyr, %i.eyo ; 2 uses
  %i.eyv = fadd reassoc nsz arcp contract afn float %.1984.2.i, 1.000000e+00
  %i.eyw = fadd reassoc nsz arcp contract afn float %.1982.2.i, 5.000000e-01
  %.1984.3.i = select nsz i1 %.not1125.3.i, float %.1984.2.i, float %i.eyv
  %.1982.3.i = select nsz i1 %.not1125.3.i, float %.1982.2.i, float %i.eyw
  %i.eyx = add nuw nsw i64 %indvars.iv1855.i, %.11085.i
  %i.eyy = trunc nuw i64 %i.eyx to i32
  %i.eyz = urem i32 %i.eyy, 6
  %i.eza = zext nneg i32 %i.eyz to i64
  %i.ezb = getelementptr inbounds nuw [64 x i8], ptr %i.ehg, i64 %i.eza ; 16 uses
  %i.ezc = load float, ptr %i.ezb, align 16       ; 3 uses
  %i.ezd = getelementptr inbounds nuw i8, ptr %i.ezb, i64 4
  %i.eze = load float, ptr %i.ezd, align 4        ; 3 uses
  %i.ezf = getelementptr inbounds nuw i8, ptr %i.ezb, i64 8
  %i.ezg = load float, ptr %i.ezf, align 8        ; 3 uses
  %i.ezh = getelementptr inbounds nuw i8, ptr %i.ezb, i64 12
  %i.ezi = load float, ptr %i.ezh, align 4        ; 3 uses
  %i.ezj = getelementptr inbounds nuw i8, ptr %i.ezb, i64 16
  %i.ezk = load float, ptr %i.ezj, align 16
  %i.ezl = getelementptr inbounds nuw i8, ptr %i.ezb, i64 20
  %i.ezm = load float, ptr %i.ezl, align 4
  %i.ezn = getelementptr inbounds nuw i8, ptr %i.ezb, i64 24
  %i.ezo = load float, ptr %i.ezn, align 8
  %i.ezp = getelementptr inbounds nuw i8, ptr %i.ezb, i64 28
  %i.ezq = load float, ptr %i.ezp, align 4
  %i.ezr = getelementptr inbounds nuw i8, ptr %i.ezb, i64 32
  %i.ezs = load float, ptr %i.ezr, align 16
  %i.ezt = getelementptr inbounds nuw i8, ptr %i.ezb, i64 36
  %i.ezu = load float, ptr %i.ezt, align 4
  %i.ezv = getelementptr inbounds nuw i8, ptr %i.ezb, i64 40
  %i.ezw = load float, ptr %i.ezv, align 8
  %i.ezx = getelementptr inbounds nuw i8, ptr %i.ezb, i64 44
  %i.ezy = load float, ptr %i.ezx, align 4
  %i.ezz = getelementptr inbounds nuw i8, ptr %i.ezb, i64 48
  %i.faa = load float, ptr %i.ezz, align 16       ; 4 uses
  %i.fab = getelementptr inbounds nuw i8, ptr %i.ezb, i64 52
  %i.fac = load float, ptr %i.fab, align 4        ; 4 uses
  %i.fad = getelementptr inbounds nuw i8, ptr %i.ezb, i64 56
  %i.fae = load float, ptr %i.fad, align 8        ; 2 uses
  %i.faf = getelementptr inbounds nuw i8, ptr %i.ezb, i64 60
  %i.fag = load float, ptr %i.faf, align 4        ; 2 uses
  %i.fah = fdiv reassoc nsz arcp contract afn float %.1982.3.i, %.1984.3.i ; 3 uses
  %i.fai = fmul reassoc nsz arcp contract afn float %i.eyk, %i.fah ; 2 uses
  %i.faj = fmul reassoc nsz arcp contract afn float %i.eyi, %i.fah ; 2 uses
  %i.fak = fmul reassoc nsz arcp contract afn float %i.ezc, %i.fai
  %i.fal = fmul reassoc nsz arcp contract afn float %i.eze, %i.faj
  %i.fam = fmul reassoc nsz arcp contract afn float %i.eze, %i.fai
  %i.fan = fmul reassoc nsz arcp contract afn float %i.ezc, %i.faj
  %i.fao = fsub reassoc nsz arcp contract afn float %i.fak, %i.fal
  %i.fap = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fah ; 2 uses
  %i.faq = fmul reassoc nsz arcp contract afn float %i.emd, %i.fap ; 2 uses
  %i.far = fmul reassoc nsz arcp contract afn float %i.eme, %i.fap ; 2 uses
  %i.fas = fmul reassoc nsz arcp contract afn float %i.ezg, %i.faq
  %i.fat = fmul reassoc nsz arcp contract afn float %i.ezi, %i.far
  %i.fau = fsub reassoc nsz arcp contract afn float %i.fat, %i.fas
  %i.fav = fadd reassoc nsz arcp contract afn float %i.fau, %i.fao ; 5 uses
  %.neg1160.i.neg = fmul reassoc nsz arcp contract afn float %i.ezg, %i.far
  %.neg1161.i.neg = fmul reassoc nsz arcp contract afn float %i.ezi, %i.faq
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg1161.i.neg, %.neg1160.i.neg
  %i.faw = fadd reassoc nsz arcp contract afn float %i.fam, %i.fan
  %i.fax = fsub reassoc nsz arcp contract afn float %i.faw, %reass.add ; 6 uses
  %i.fay = fmul reassoc nsz arcp contract afn float %i.faa, %i.eqf
  %i.faz = fmul reassoc nsz arcp contract afn float %i.fac, %i.eqg
  %i.fba = fmul reassoc nsz arcp contract afn float %i.fac, %i.eqf
  %i.fbb = fmul reassoc nsz arcp contract afn float %i.faa, %i.eqg
  %i.fbc = fsub reassoc nsz arcp contract afn float %i.fay, %i.faz ; 5 uses
  %i.fbd = fadd reassoc nsz arcp contract afn float %i.fba, %i.fbb ; 7 uses
  %i.fbe = fmul reassoc nsz arcp contract afn float %i.fae, %i.eui
  %i.fbf = fmul reassoc nsz arcp contract afn float %i.fag, %i.esh
  %i.fbg = fmul reassoc nsz arcp contract afn float %i.fag, %i.eui
  %i.fbh = fmul reassoc nsz arcp contract afn float %i.fae, %i.esh
  %i.fbi = fsub reassoc nsz arcp contract afn float %i.fbe, %i.fbf ; 2 uses
  %i.fbj = fadd reassoc nsz arcp contract afn float %i.fbg, %i.fbh
  %i.fbk = fsub reassoc nsz arcp contract afn float %i.ezc, %i.ezg ; 2 uses
  %i.fbl = fsub reassoc nsz arcp contract afn float %i.ezi, %i.eze ; 2 uses
  %i.fbm = fmul reassoc nsz arcp contract afn float %i.fax, %i.fbl
  %i.fbn = fsub reassoc nsz arcp contract afn float %i.ezk, %i.ezo ; 2 uses
  %i.fbo = fsub reassoc nsz arcp contract afn float %i.ezm, %i.ezq ; 2 uses
  %i.fbp = fmul reassoc nsz arcp contract afn float %i.fbn, %i.fax
  %i.fbq = fadd reassoc nsz arcp contract afn float %i.ezw, %i.ezs
  %i.fbr = fadd reassoc nsz arcp contract afn float %i.ezy, %i.ezu
  %i.fbs = fmul reassoc nsz arcp contract afn float %i.fbd, %i.faa
  %i.fbt = getelementptr inbounds nuw [4 x i8], ptr %i.ehi, i64 %indvars.iv1855.i
  %i.fbu = load float, ptr %i.fbt, align 4, !tbaa !12
  %.neg1163.i = fmul reassoc nsz arcp contract afn float %i.esh, -2.000000e+00
  %.neg954 = fmul reassoc nsz arcp contract afn float %i.fbc, %i.fbq
  %i.fbv = fmul reassoc nsz arcp contract afn float %i.fbr, %i.fbd
  %reass.add992 = fsub reassoc nsz arcp contract afn float %.neg954, %i.fbv
  %reass.mul993 = fmul reassoc nsz arcp contract afn float %reass.add992, 5.000000e-01
  %reass.add1198.i = fsub reassoc nsz arcp contract afn float %reass.mul993, %i.eui
  %reass.mul1199.i = fmul reassoc nsz arcp contract afn float %reass.add1198.i, 2.000000e+00
  %reass.add1200.i = fadd reassoc nsz arcp contract afn float %i.fbo, %i.fbl
  %reass.mul1201.i.neg = fmul reassoc nsz arcp contract afn float %reass.add1200.i, %i.fav
  %.neg1164.i.neg = fmul reassoc nsz arcp contract afn float %i.fax, %i.fbk
  %.neg1187.i.neg = fmul reassoc nsz arcp contract afn float %i.fbc, %i.fac
  %reass.add999 = fadd reassoc nsz arcp contract afn float %reass.mul1201.i.neg, %.neg1164.i.neg
  %reass.add1000 = fadd reassoc nsz arcp contract afn float %reass.add999, %.neg1187.i.neg
  %.neg1170.i = fadd reassoc nsz arcp contract afn float %i.fbs, %i.fbp
  %i.fbw = fadd reassoc nsz arcp contract afn float %.neg1163.i, %.neg1170.i
  %i.fbx = fadd reassoc nsz arcp contract afn float %i.eqg, %reass.add1000
  %i.fby = fsub reassoc nsz arcp contract afn float %i.fbw, %i.fbx
  %.neg957 = fmul reassoc nsz arcp contract afn float %i.fby, -0.000000e+00
  %.neg1178.i.neg = fmul reassoc nsz arcp contract afn float %i.fbo, %i.fax
  %.neg1173.i.neg = fmul reassoc nsz arcp contract afn float %i.fbd, %i.fac
  %.neg1172.i.neg = fmul reassoc nsz arcp contract afn float %i.fbc, %i.faa
  %i.fbz = fadd reassoc nsz arcp contract afn float %i.fbn, %i.fbk
  %reass.add994 = fmul reassoc nsz arcp contract afn float %i.fbz, %i.fav
  %reass.add995 = fadd reassoc nsz arcp contract afn float %reass.add994, %.neg1178.i.neg
  %reass.add996 = fadd reassoc nsz arcp contract afn float %reass.add995, %.neg1172.i.neg
  %reass.add997 = fadd reassoc nsz arcp contract afn float %reass.add996, %.neg1173.i.neg
  %i.fca = fadd reassoc nsz arcp contract afn float %reass.mul1199.i, %i.fbu
  %.neg960 = fadd reassoc nsz arcp contract afn float %i.fca, %.neg957
  %i.fcb = fadd reassoc nsz arcp contract afn float %i.fbm, %.neg960
  %i.fcc = fadd reassoc nsz arcp contract afn float %i.eqf, %reass.add997
  %i.fcd = fsub reassoc nsz arcp contract afn float %i.fcb, %i.fcc ; 2 uses
  %.neg964 = fmul reassoc nsz arcp contract afn float %i.fbj, -0.000000e+00 ; 2 uses
  %.neg961 = fmul reassoc nsz arcp contract afn float %i.fbd, 6.495190e-01
  %.neg963 = fmul reassoc nsz arcp contract afn float %i.fbc, 3.750000e-01 ; 3 uses
  %.neg965 = fadd reassoc nsz arcp contract afn float %.neg963, %.neg961
  %i.fce = fsub reassoc nsz arcp contract afn float %.neg965, %i.fbi
  %i.fcf = fadd reassoc nsz arcp contract afn float %i.fce, %.neg964
  %i.fcg = fadd reassoc nsz arcp contract afn float %i.fcf, %i.fcd ; 2 uses
  %.neg968 = fmul reassoc nsz arcp contract afn float %i.fbd, f0x3E5DB3D7 ; 2 uses
  %.neg966 = fmul reassoc nsz arcp contract afn float %i.fbd, f0x3EDDB3D7 ; 2 uses
  %factor = fmul reassoc nsz arcp contract afn float %i.fav, 1.500000e+00
  %factor972 = fmul reassoc nsz arcp contract afn float %i.fax, f0x402646E1
  %i.fch = fadd reassoc nsz arcp contract afn float %.neg963, %factor972
  %i.fci = fadd reassoc nsz arcp contract afn float %i.fch, %factor
  %i.fcj = fadd reassoc nsz arcp contract afn float %i.fci, %.neg968
  %i.fck = fadd reassoc nsz arcp contract afn float %i.fcj, %.neg966
  %i.fcl = fadd reassoc nsz arcp contract afn float %i.fck, %i.fcg ; 2 uses
  %i.fcm = fmul reassoc nsz arcp contract afn float %i.fbi, 8.000000e-01
  %reass.mul1004 = fmul reassoc nsz arcp contract afn float %i.fbd, f0xBF850582
  %reass.mul1008 = fmul reassoc nsz arcp contract afn float %i.fav, 0.000000e+00
  %reass.mul1010 = fmul reassoc nsz arcp contract afn float %i.fbc, -6.000000e-01
  %i.fcn = fadd reassoc nsz arcp contract afn float %.neg964, %i.fcm
  %i.fco = fadd reassoc nsz arcp contract afn float %i.fcn, %i.fcd
  %i.fcp = fadd reassoc nsz arcp contract afn float %i.fco, %reass.mul1004
  %i.fcq = fadd reassoc nsz arcp contract afn float %i.fcp, %reass.mul1008
  %i.fcr = fadd reassoc nsz arcp contract afn float %i.fcq, %reass.mul1010
  %factor990 = fmul reassoc nsz arcp contract afn float %i.fav, -1.500000e+00
  %factor991 = fmul reassoc nsz arcp contract afn float %i.fax, f0xC02646E1
  %i.fcs = fadd reassoc nsz arcp contract afn float %.neg963, %factor991
  %i.fct = fadd reassoc nsz arcp contract afn float %i.fcs, %factor990
  %i.fcu = fadd reassoc nsz arcp contract afn float %i.fct, %.neg968
  %i.fcv = fadd reassoc nsz arcp contract afn float %i.fcu, %.neg966
  %i.fcw = fadd reassoc nsz arcp contract afn float %i.fcv, %i.fcg ; 2 uses
  %i.fcx = fmul reassoc nsz arcp contract afn float %i.fcl, 2.627000e-01
  %i.fcy = fmul reassoc nsz arcp contract afn float %i.fcr, f0x3F2D9168
  %i.fcz = fadd reassoc nsz arcp contract afn float %i.fcy, %i.fcx
  %i.fda = fmul reassoc nsz arcp contract afn float %i.fcw, 5.930000e-02
  %i.fdb = fadd reassoc nsz arcp contract afn float %i.fcz, %i.fda ; 2 uses
  %i.fdc = fsub reassoc nsz arcp contract afn float %i.fcw, %i.fdb
  %i.fdd = fmul reassoc nsz arcp contract afn float %i.fdc, 5.643300e-01
  %i.fde = fsub reassoc nsz arcp contract afn float %i.fcl, %i.fdb
  %i.fdf = fmul reassoc nsz arcp contract afn float %i.fde, f0x3F2D9B3D
  %invariant.gep1477.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1475.i, i64 %indvars.iv1855.i ; 2 uses
  store float %i.fdd, ptr %invariant.gep1477.i, align 4, !tbaa !12
  %gep1478.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1477.i, i64 59536
  store float %i.fdf, ptr %gep1478.1.i, align 4, !tbaa !12
  %indvars.iv.next1856.i = add nuw nsw i64 %indvars.iv1855.i, 1
  %exitcond1237.not = icmp eq i64 %indvars.iv1774.i, %i.ech
  br i1 %exitcond1237.not, label %._crit_edge1482.i, label %vector.ph2619

.preheader1257.i:                                 ; preds = %.preheader1257.i.preheader, %._crit_edge1501.i
  %indvar2163 = phi i32 [ %indvar.next2164, %._crit_edge1501.i ], [ 0, %.preheader1257.i.preheader ] ; 3 uses
  %indvars.iv1887.i = phi i64 [ %indvars.iv.next1888.i, %._crit_edge1501.i ], [ 13, %.preheader1257.i.preheader ] ; 5 uses
  %invariant.gep1484.i = getelementptr inbounds nuw [122 x i8], ptr %i.bwn, i64 %indvars.iv1887.i ; 2 uses
  %invariant.gep1492.i = getelementptr inbounds nuw [1464 x i8], ptr %i.bml, i64 %indvars.iv1887.i ; 2 uses
  %i.fdg = trunc i64 %indvars.iv1887.i to i32
  %i.fdh = mul i32 %i.fdg, 122                    ; 3 uses
  %i.fdi = add i32 %i.fdh, -122
  %i.fdj = sext i32 %i.fdi to i64                 ; 3 uses
  %i.fdk = zext i32 %i.fdh to i64                 ; 3 uses
  %i.fdl = add i32 %i.fdh, 122
  %i.fdm = sext i32 %i.fdl to i64                 ; 3 uses
  %i.fdn = add nsw i64 %indvars.iv1887.i, %indvars.iv1583.i
  %i.fdo = trunc i64 %i.fdn to i32
  %i.fdp = mul i32 %i.bo, %i.fdo
  %i.fdq = add i32 %i.fdp, %i.cbe                 ; 2 uses
  %i.fdr = getelementptr inbounds [4 x i8], ptr %i.bwp, i64 %i.fdj ; 2 uses
  %i.fds = getelementptr inbounds nuw [4 x i8], ptr %i.bwp, i64 %i.fdk ; 2 uses
  %i.fdt = getelementptr inbounds [4 x i8], ptr %i.bwp, i64 %i.fdm ; 2 uses
  %i.fdu = getelementptr inbounds [4 x i8], ptr %i.bxm, i64 %i.fdj ; 2 uses
  %i.fdv = getelementptr inbounds nuw [4 x i8], ptr %i.bxm, i64 %i.fdk ; 2 uses
  %i.fdw = getelementptr inbounds [4 x i8], ptr %i.bxm, i64 %i.fdm ; 2 uses
  br i1 %min.iters.check2240, label %scalar.ph2239.preheader, label %vector.scevcheck2160

vector.scevcheck2160:                             ; preds = %.preheader1257.i
  %i.fdx = mul i32 %i.att, %indvar2163
  %i.fdy = add i32 %i.cam, %i.fdx                 ; 2 uses
  %i.fdz = add i32 %i.fdy, %mul.result2166
  %i.fea = icmp slt i32 %i.fdz, %i.fdy
  %i.feb = or i1 %i.fea, %mul.overflow2167
  br i1 %i.feb, label %scalar.ph2239.preheader, label %vector.memcheck2241

vector.memcheck2241:                              ; preds = %vector.scevcheck2160
  %i.fec = shl nsw i64 %i.fdm, 2                  ; 2 uses
  %i.fed = getelementptr i8, ptr %scevgep2238, i64 %i.fec
  %i.fee = getelementptr i8, ptr %scevgep2237, i64 %i.fec
  %i.fef = mul i32 %indvar2163, %i.att
  %i.feg = add i32 %i.cah, %i.fef
  %i.feh = sext i32 %i.feg to i64
  %i.fei = shl nsw i64 %i.feh, 2                  ; 2 uses
  %i.fej = getelementptr i8, ptr %i.anu, i64 %i.fei ; 5 uses
  %i.fek = getelementptr i8, ptr %scevgep2235, i64 %i.fei ; 5 uses
  %i.fel = shl nuw nsw i64 %i.fdk, 2              ; 2 uses
  %i.fem = getelementptr i8, ptr %scevgep2233, i64 %i.fel
  %i.fen = getelementptr i8, ptr %scevgep2232, i64 %i.fel
  %i.feo = shl nsw i64 %i.fdj, 2                  ; 2 uses
  %i.fep = getelementptr i8, ptr %scevgep2238, i64 %i.feo
  %i.feq = getelementptr i8, ptr %scevgep2237, i64 %i.feo
  %bound02242 = icmp ult ptr %i.fed, %i.fek
  %bound12243 = icmp ult ptr %i.fej, %i.fee
  %found.conflict2244 = and i1 %bound02242, %bound12243
  %bound02245 = icmp ult ptr %i.fem, %i.fek
  %bound12246 = icmp ult ptr %i.fej, %i.fen
  %found.conflict2247 = and i1 %bound02245, %bound12246
  %conflict.rdx2248 = or i1 %found.conflict2244, %found.conflict2247
  %bound02249 = icmp ult ptr %i.fep, %i.fek
  %bound12250 = icmp ult ptr %i.fej, %i.feq
  %found.conflict2251 = and i1 %bound02249, %bound12250
  %conflict.rdx2252 = or i1 %conflict.rdx2248, %found.conflict2251
  %bound02253 = icmp ult ptr %scevgep2230, %i.fek
  %bound12254 = icmp ult ptr %i.fej, %scevgep2229
  %found.conflict2255 = and i1 %bound02253, %bound12254
  %conflict.rdx2256 = or i1 %conflict.rdx2252, %found.conflict2255
  %bound02257 = icmp ult ptr %scevgep2226, %i.fek
  %bound12258 = icmp ult ptr %i.fej, %scevgep2225
  %found.conflict2259 = and i1 %bound02257, %bound12258
  %conflict.rdx2260 = or i1 %conflict.rdx2256, %found.conflict2259
  br i1 %conflict.rdx2260, label %scalar.ph2239.preheader, label %vector.ph2261

vector.ph2261:                                    ; preds = %vector.memcheck2241
  %broadcast.splatinsert2263 = insertelement <8 x i32> poison, i32 %i.fdq, i64 0
  %broadcast.splat2264 = shufflevector <8 x i32> %broadcast.splatinsert2263, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body2269

vector.body2269:                                  ; preds = %vector.body2269, %vector.ph2261
  %index2270 = phi i64 [ 0, %vector.ph2261 ], [ %index.next2330, %vector.body2269 ] ; 2 uses
  %vec.ind2271 = phi <8 x i64> [ <i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20>, %vector.ph2261 ], [ %vec.ind.next2331, %vector.body2269 ] ; 2 uses
  %vec.ind2272 = phi <8 x i32> [ <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20>, %vector.ph2261 ], [ %vec.ind.next2332, %vector.body2269 ] ; 2 uses
  %i.fer = add nuw i64 %index2270, 13             ; 7 uses
  %i.fes = getelementptr inbounds nuw i8, ptr %invariant.gep1484.i, i64 %i.fer ; 4 uses
  %wide.load2273 = load <8 x i8>, ptr %i.fes, align 1, !tbaa !133, !alias.scope !475, !noalias !476
  %i.fet = zext <8 x i8> %wide.load2273 to <8 x i32> ; 2 uses
  %i.feu = getelementptr inbounds nuw i8, ptr %i.fes, i64 14884
  %wide.load2274 = load <8 x i8>, ptr %i.feu, align 1, !tbaa !133, !alias.scope !475, !noalias !476
  %i.fev = zext <8 x i8> %wide.load2274 to <8 x i32> ; 2 uses
  %i.few = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.fet, <8 x i32> %i.fev)
  %i.fex = getelementptr inbounds nuw i8, ptr %i.fes, i64 29768
  %wide.load2275 = load <8 x i8>, ptr %i.fex, align 1, !tbaa !133, !alias.scope !475, !noalias !476
  %i.fey = zext <8 x i8> %wide.load2275 to <8 x i32> ; 2 uses
  %i.fez = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.few, <8 x i32> %i.fey)
  %i.ffa = getelementptr inbounds nuw i8, ptr %i.fes, i64 44652
  %wide.load2276 = load <8 x i8>, ptr %i.ffa, align 1, !tbaa !133, !alias.scope !475, !noalias !476
  %i.ffb = zext <8 x i8> %wide.load2276 to <8 x i32> ; 2 uses
  %i.ffc = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.fez, <8 x i32> %i.ffb) ; 2 uses
  %i.ffd = lshr <8 x i32> %i.ffc, splat (i32 3)
  %i.ffe = sub nuw nsw <8 x i32> %i.ffc, %i.ffd   ; 4 uses
  %wide.gep2277 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep1492.i, <8 x i64> %vec.ind2271 ; 12 uses
  %i.fff = icmp samesign ule <8 x i32> %i.ffe, %i.fet ; 4 uses
  %wide.masked.gather2278 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2277, <8 x i1> %i.fff, <8 x float> zeroinitializer), !tbaa !12, !alias.scope !477, !noalias !476 ; 2 uses
  %wide.gep2279 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 4
  %wide.masked.gather2280 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2279, <8 x i1> %i.fff, <8 x float> zeroinitializer), !tbaa !12, !alias.scope !477, !noalias !476 ; 2 uses
  %wide.gep2281 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 8
  %wide.masked.gather2282 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2281, <8 x i1> %i.fff, <8 x float> zeroinitializer), !tbaa !12, !alias.scope !477, !noalias !476 ; 2 uses
  %predphi2286 = select nsz <8 x i1> %i.fff, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer ; 2 uses
  %i.ffg = icmp samesign ule <8 x i32> %i.ffe, %i.fev ; 7 uses
  %wide.gep2287 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 178608
  %wide.masked.gather2288 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2287, <8 x i1> %i.ffg, <8 x float> poison), !tbaa !12, !alias.scope !477, !noalias !476
  %i.ffh = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2288, %wide.masked.gather2278
  %wide.gep2289 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 178612
  %wide.masked.gather2290 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2289, <8 x i1> %i.ffg, <8 x float> poison), !tbaa !12, !alias.scope !477, !noalias !476
  %i.ffi = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2290, %wide.masked.gather2280
  %wide.gep2291 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 178616
  %wide.masked.gather2292 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2291, <8 x i1> %i.ffg, <8 x float> poison), !tbaa !12, !alias.scope !477, !noalias !476
  %i.ffj = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2292, %wide.masked.gather2282
  %i.ffk = fadd reassoc nsz arcp contract afn <8 x float> %predphi2286, splat (float 1.000000e+00)
  %predphi2293 = select nsz <8 x i1> %i.ffg, <8 x float> %i.ffh, <8 x float> %wide.masked.gather2278 ; 2 uses
  %predphi2294 = select nsz <8 x i1> %i.ffg, <8 x float> %i.ffi, <8 x float> %wide.masked.gather2280 ; 2 uses
  %predphi2295 = select nsz <8 x i1> %i.ffg, <8 x float> %i.ffj, <8 x float> %wide.masked.gather2282 ; 2 uses
  %predphi2296 = select nsz <8 x i1> %i.ffg, <8 x float> %i.ffk, <8 x float> %predphi2286 ; 2 uses
  %i.ffl = icmp samesign ule <8 x i32> %i.ffe, %i.fey ; 7 uses
  %wide.gep2297 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 357216
  %wide.masked.gather2298 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2297, <8 x i1> %i.ffl, <8 x float> poison), !tbaa !12, !alias.scope !477, !noalias !476
  %i.ffm = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2298, %predphi2293
  %wide.gep2299 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 357220
  %wide.masked.gather2300 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2299, <8 x i1> %i.ffl, <8 x float> poison), !tbaa !12, !alias.scope !477, !noalias !476
  %i.ffn = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2300, %predphi2294
  %wide.gep2301 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 357224
  %wide.masked.gather2302 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2301, <8 x i1> %i.ffl, <8 x float> poison), !tbaa !12, !alias.scope !477, !noalias !476
  %i.ffo = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2302, %predphi2295
  %i.ffp = fadd reassoc nsz arcp contract afn <8 x float> %predphi2296, splat (float 1.000000e+00)
  %predphi2303 = select nsz <8 x i1> %i.ffl, <8 x float> %i.ffm, <8 x float> %predphi2293 ; 2 uses
  %predphi2304 = select nsz <8 x i1> %i.ffl, <8 x float> %i.ffn, <8 x float> %predphi2294 ; 2 uses
  %predphi2305 = select nsz <8 x i1> %i.ffl, <8 x float> %i.ffo, <8 x float> %predphi2295 ; 2 uses
  %predphi2306 = select nsz <8 x i1> %i.ffl, <8 x float> %i.ffp, <8 x float> %predphi2296 ; 2 uses
  %i.ffq = icmp samesign ule <8 x i32> %i.ffe, %i.ffb ; 7 uses
  %wide.gep2307 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 535824
  %wide.masked.gather2308 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2307, <8 x i1> %i.ffq, <8 x float> poison), !tbaa !12, !alias.scope !477, !noalias !476
  %i.ffr = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2308, %predphi2303
  %wide.gep2309 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 535828
  %wide.masked.gather2310 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2309, <8 x i1> %i.ffq, <8 x float> poison), !tbaa !12, !alias.scope !477, !noalias !476
  %i.ffs = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2310, %predphi2304
  %wide.gep2311 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2277, i64 535832
  %wide.masked.gather2312 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2311, <8 x i1> %i.ffq, <8 x float> poison), !tbaa !12, !alias.scope !477, !noalias !476
  %i.fft = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2312, %predphi2305
  %i.ffu = fadd reassoc nsz arcp contract afn <8 x float> %predphi2306, splat (float 1.000000e+00)
  %predphi2313 = select nsz <8 x i1> %i.ffq, <8 x float> %i.ffr, <8 x float> %predphi2303
  %predphi2314 = select nsz <8 x i1> %i.ffq, <8 x float> %i.ffs, <8 x float> %predphi2304
  %predphi2315 = select nsz <8 x i1> %i.ffq, <8 x float> %i.fft, <8 x float> %predphi2305
  %predphi2316 = select nsz <8 x i1> %i.ffq, <8 x float> %i.ffu, <8 x float> %predphi2306 ; 3 uses
  %i.ffv = fdiv reassoc nsz arcp contract afn <8 x float> %predphi2313, %predphi2316 ; 2 uses
  %i.ffw = fdiv reassoc nsz arcp contract afn <8 x float> %predphi2315, %predphi2316 ; 2 uses
  %i.ffx = getelementptr inbounds nuw [4 x i8], ptr %i.fdr, i64 %i.fer
  %wide.load2317 = load <8 x float>, ptr %i.ffx, align 4, !alias.scope !478, !noalias !476 ; 3 uses
  %i.ffy = getelementptr [4 x i8], ptr %i.fds, i64 %i.fer ; 3 uses
  %i.ffz = getelementptr i8, ptr %i.ffy, i64 -4
  %wide.load2318 = load <8 x float>, ptr %i.ffz, align 8, !alias.scope !479, !noalias !476 ; 3 uses
  %wide.load2319 = load <8 x float>, ptr %i.ffy, align 4, !alias.scope !479, !noalias !476 ; 3 uses
  %i.fga = getelementptr i8, ptr %i.ffy, i64 4
  %wide.load2320 = load <8 x float>, ptr %i.fga, align 8, !alias.scope !479, !noalias !476 ; 3 uses
  %i.fgb = getelementptr inbounds nuw [4 x i8], ptr %i.fdt, i64 %i.fer
  %wide.load2321 = load <8 x float>, ptr %i.fgb, align 4, !alias.scope !480, !noalias !476 ; 3 uses
  %i.fgc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2317, %wide.load2318 ; 2 uses
  %i.fgd = select nsz <8 x i1> %i.fgc, <8 x float> %wide.load2317, <8 x float> %wide.load2318 ; 2 uses
  %i.fge = select nsz <8 x i1> %i.fgc, <8 x float> %wide.load2318, <8 x float> %wide.load2317 ; 2 uses
  %i.fgf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2320, %wide.load2321 ; 2 uses
  %i.fgg = select nsz <8 x i1> %i.fgf, <8 x float> %wide.load2320, <8 x float> %wide.load2321 ; 2 uses
  %i.fgh = select nsz <8 x i1> %i.fgf, <8 x float> %wide.load2321, <8 x float> %wide.load2320 ; 2 uses
  %i.fgi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fge, %i.fgh
  %i.fgj = select nsz <8 x i1> %i.fgi, <8 x float> %i.fge, <8 x float> %i.fgh ; 2 uses
  %i.fgk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fgd, %i.fgg
  %i.fgl = select nsz <8 x i1> %i.fgk, <8 x float> %i.fgg, <8 x float> %i.fgd ; 3 uses
  %i.fgm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fgl, %wide.load2319 ; 2 uses
  %i.fgn = select nsz <8 x i1> %i.fgm, <8 x float> %i.fgl, <8 x float> %wide.load2319 ; 2 uses
  %i.fgo = select nsz <8 x i1> %i.fgm, <8 x float> %wide.load2319, <8 x float> %i.fgl ; 2 uses
  %i.fgp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fgn, %i.fgj
  %i.fgq = select nsz <8 x i1> %i.fgp, <8 x float> %i.fgj, <8 x float> %i.fgn ; 2 uses
  %i.fgr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fgo, %i.fgq
  %i.fgs = select nsz <8 x i1> %i.fgr, <8 x float> %i.fgo, <8 x float> %i.fgq ; 5 uses
  %i.fgt = getelementptr inbounds nuw [4 x i8], ptr %i.fdu, i64 %i.fer
  %wide.load2322 = load <8 x float>, ptr %i.fgt, align 4, !alias.scope !478, !noalias !476 ; 3 uses
  %i.fgu = getelementptr [4 x i8], ptr %i.fdv, i64 %i.fer ; 3 uses
  %i.fgv = getelementptr i8, ptr %i.fgu, i64 -4
  %wide.load2323 = load <8 x float>, ptr %i.fgv, align 8, !alias.scope !479, !noalias !476 ; 3 uses
  %wide.load2324 = load <8 x float>, ptr %i.fgu, align 4, !alias.scope !479, !noalias !476 ; 3 uses
  %i.fgw = getelementptr i8, ptr %i.fgu, i64 4
  %wide.load2325 = load <8 x float>, ptr %i.fgw, align 8, !alias.scope !479, !noalias !476 ; 3 uses
  %i.fgx = getelementptr inbounds nuw [4 x i8], ptr %i.fdw, i64 %i.fer
  %wide.load2326 = load <8 x float>, ptr %i.fgx, align 4, !alias.scope !480, !noalias !476 ; 3 uses
  %i.fgy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2322, %wide.load2323 ; 2 uses
  %i.fgz = select nsz <8 x i1> %i.fgy, <8 x float> %wide.load2322, <8 x float> %wide.load2323 ; 2 uses
  %i.fha = select nsz <8 x i1> %i.fgy, <8 x float> %wide.load2323, <8 x float> %wide.load2322 ; 2 uses
  %i.fhb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2325, %wide.load2326 ; 2 uses
  %i.fhc = select nsz <8 x i1> %i.fhb, <8 x float> %wide.load2325, <8 x float> %wide.load2326 ; 2 uses
  %i.fhd = select nsz <8 x i1> %i.fhb, <8 x float> %wide.load2326, <8 x float> %wide.load2325 ; 2 uses
  %i.fhe = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fha, %i.fhd
  %i.fhf = select nsz <8 x i1> %i.fhe, <8 x float> %i.fha, <8 x float> %i.fhd ; 2 uses
  %i.fhg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fgz, %i.fhc
  %i.fhh = select nsz <8 x i1> %i.fhg, <8 x float> %i.fhc, <8 x float> %i.fgz ; 3 uses
  %i.fhi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fhh, %wide.load2324 ; 2 uses
  %i.fhj = select nsz <8 x i1> %i.fhi, <8 x float> %i.fhh, <8 x float> %wide.load2324 ; 2 uses
  %i.fhk = select nsz <8 x i1> %i.fhi, <8 x float> %wide.load2324, <8 x float> %i.fhh ; 2 uses
  %i.fhl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fhj, %i.fhf
  %i.fhm = select nsz <8 x i1> %i.fhl, <8 x float> %i.fhf, <8 x float> %i.fhj ; 2 uses
  %i.fhn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fhk, %i.fhm
  %i.fho = select nsz <8 x i1> %i.fhn, <8 x float> %i.fhk, <8 x float> %i.fhm ; 5 uses
  %i.fhp = fmul reassoc nsz arcp contract afn <8 x float> %i.ffv, splat (float 2.627000e-01)
  %i.fhq = fmul reassoc nsz arcp contract afn <8 x float> %predphi2314, splat (float f0x3F2D9168)
  %i.fhr = fdiv reassoc nsz arcp contract afn <8 x float> %i.fhq, %predphi2316
  %i.fhs = fadd reassoc nsz arcp contract afn <8 x float> %i.fhr, %i.fhp
  %i.fht = fmul reassoc nsz arcp contract afn <8 x float> %i.ffw, splat (float 5.930000e-02)
  %i.fhu = fadd reassoc nsz arcp contract afn <8 x float> %i.fhs, %i.fht ; 5 uses
  %i.fhv = fsub reassoc nsz arcp contract afn <8 x float> %i.ffw, %i.fhu
  %i.fhw = fmul reassoc nsz arcp contract afn <8 x float> %i.fhv, splat (float 5.643300e-01) ; 2 uses
  %i.fhx = fsub reassoc nsz arcp contract afn <8 x float> %i.ffv, %i.fhu
  %i.fhy = fmul reassoc nsz arcp contract afn <8 x float> %i.fhx, splat (float f0x3F2D9B3D) ; 4 uses
  %i.fhz = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fgs, zeroinitializer
  %i.fia = fneg reassoc nsz arcp contract afn <8 x float> %i.fgs
  %i.fib = select reassoc nsz arcp contract afn <8 x i1> %i.fhz, <8 x float> %i.fia, <8 x float> %i.fgs ; 2 uses
  %i.fic = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fhw)
  %i.fid = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fib, %i.fic
  %i.fie = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fho, zeroinitializer
  %i.fif = fneg reassoc nsz arcp contract afn <8 x float> %i.fho
  %i.fig = select reassoc nsz arcp contract afn <8 x i1> %i.fie, <8 x float> %i.fif, <8 x float> %i.fho ; 2 uses
  %i.fih = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fhy, zeroinitializer
  %i.fii = fneg reassoc nsz arcp contract afn <8 x float> %i.fhy
  %i.fij = select reassoc nsz arcp contract afn <8 x i1> %i.fih, <8 x float> %i.fii, <8 x float> %i.fhy ; 2 uses
  %i.fik = fmul reassoc nsz arcp contract afn <8 x float> %i.fij, splat (float 1.020000e+00) ; 2 uses
  %i.fil = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fig, %i.fik
  %i.fim = and <8 x i1> %i.fid, %i.fil
  %i.fin = select reassoc nsz arcp contract afn <8 x i1> %i.fim, <8 x float> %i.fgs, <8 x float> %i.fhw
  %i.fio = fmul reassoc nsz arcp contract afn <8 x float> %i.fin, %broadcast.splat2266
  %i.fip = fmul reassoc nsz arcp contract afn <8 x float> %i.fgs, %broadcast.splat2268
  %i.fiq = fadd reassoc nsz arcp contract afn <8 x float> %i.fio, %i.fip ; 2 uses
  %i.fir = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fig, %i.fij
  %i.fis = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fib, %i.fik
  %i.fit = and <8 x i1> %i.fis, %i.fir
  %i.fiu = select reassoc nsz arcp contract afn <8 x i1> %i.fit, <8 x float> %i.fho, <8 x float> %i.fhy
end_hunk_1
