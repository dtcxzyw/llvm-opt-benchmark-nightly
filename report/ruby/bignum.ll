Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@bary_mul_toom3:bb.a
  br i1 %epil.iter3455.cmp.not, label %bary_small_lshift.exit1064, label %bb.as, !llvm.loop !215

bary_small_lshift.exit1064:                       ; preds = %bb.as, %bary_small_lshift.exit1064.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit1056, label %.lr.ph.i.i1066.preheader

.lr.ph.i.i1066.preheader:                         ; preds = %bary_small_lshift.exit1064
  %xtraiter3460 = and i64 %i.g, 1
  %.off3603 = add i64 %5, -1
  %i.apo = icmp ult i64 %.off3603, 3
  br i1 %i.apo, label %.lr.ph.i.i1066.epil.preheader, label %.lr.ph.i.i1066.preheader.new

.lr.ph.i.i1066.preheader.new:                     ; preds = %.lr.ph.i.i1066.preheader
  %unroll_iter3465 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i1066

.lr.ph.i.i1066:                                   ; preds = %.lr.ph.i.i1066, %.lr.ph.i.i1066.preheader.new
  %.078.i.i1067 = phi i64 [ 0, %.lr.ph.i.i1066.preheader.new ], [ %i.aqk, %.lr.ph.i.i1066 ] ; 4 uses
  %.06277.i.i1068 = phi i64 [ 0, %.lr.ph.i.i1066.preheader.new ], [ %i.aqj, %.lr.ph.i.i1066 ]
  %niter3466 = phi i64 [ 0, %.lr.ph.i.i1066.preheader.new ], [ %niter3466.next.1, %.lr.ph.i.i1066 ]
  %i.app = getelementptr [4 x i8], ptr %i.ae, i64 %.078.i.i1067 ; 2 uses
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !44
  %i.apr = zext i32 %i.apq to i64
  %i.aps = getelementptr [4 x i8], ptr %.0557, i64 %.078.i.i1067
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !44
  %i.apu = zext i32 %i.apt to i64
  %i.apv = sub nsw i64 %i.apr, %i.apu
  %i.apw = add nsw i64 %i.apv, %.06277.i.i1068    ; 2 uses
  %i.apx = trunc i64 %i.apw to i32
  store i32 %i.apx, ptr %i.app, align 4, !tbaa !44
  %i.apy = ashr i64 %i.apw, 32
  %i.apz = or disjoint i64 %.078.i.i1067, 1       ; 2 uses
  %i.aqa = getelementptr [4 x i8], ptr %i.ae, i64 %i.apz ; 2 uses
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !44
  %i.aqc = zext i32 %i.aqb to i64
  %i.aqd = getelementptr [4 x i8], ptr %.0557, i64 %i.apz
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !44
  %i.aqf = zext i32 %i.aqe to i64
  %i.aqg = sub nsw i64 %i.aqc, %i.aqf
  %i.aqh = add nsw i64 %i.aqg, %i.apy             ; 2 uses
  %i.aqi = trunc i64 %i.aqh to i32
  store i32 %i.aqi, ptr %i.aqa, align 4, !tbaa !44
  %i.aqj = ashr i64 %i.aqh, 32                    ; 3 uses
  %i.aqk = add nuw nsw i64 %.078.i.i1067, 2       ; 2 uses
  %niter3466.next.1 = add i64 %niter3466, 2       ; 2 uses
  %niter3466.ncmp.1 = icmp eq i64 %niter3466.next.1, %unroll_iter3465
  br i1 %niter3466.ncmp.1, label %.lr.ph82.i.i1092.unr-lcssa, label %.lr.ph.i.i1066, !llvm.loop !5

.lr.ph82.i.i1092.unr-lcssa:                       ; preds = %.lr.ph.i.i1066
  %lcmp.mod3462.not = icmp eq i64 %xtraiter3460, 0
  br i1 %lcmp.mod3462.not, label %.lr.ph82.i.i1092, label %.lr.ph.i.i1066.epil.preheader

.lr.ph.i.i1066.epil.preheader:                    ; preds = %.lr.ph82.i.i1092.unr-lcssa, %.lr.ph.i.i1066.preheader
  %.078.i.i1067.epil.init = phi i64 [ 0, %.lr.ph.i.i1066.preheader ], [ %i.aqk, %.lr.ph82.i.i1092.unr-lcssa ] ; 2 uses
  %.06277.i.i1068.epil.init = phi i64 [ 0, %.lr.ph.i.i1066.preheader ], [ %i.aqj, %.lr.ph82.i.i1092.unr-lcssa ]
  %lcmp.mod3464 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3464)
  %i.aql = getelementptr [4 x i8], ptr %i.ae, i64 %.078.i.i1067.epil.init ; 2 uses
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !44
  %i.aqn = zext i32 %i.aqm to i64
  %i.aqo = getelementptr [4 x i8], ptr %.0557, i64 %.078.i.i1067.epil.init
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !44
  %i.aqq = zext i32 %i.aqp to i64
  %i.aqr = sub nsw i64 %i.aqn, %i.aqq
  %i.aqs = add nsw i64 %i.aqr, %.06277.i.i1068.epil.init ; 2 uses
  %i.aqt = trunc i64 %i.aqs to i32
  store i32 %i.aqt, ptr %i.aql, align 4, !tbaa !44
  %i.aqu = ashr i64 %i.aqs, 32
  br label %.lr.ph82.i.i1092

.lr.ph82.i.i1092:                                 ; preds = %.lr.ph82.i.i1092.unr-lcssa, %.lr.ph.i.i1066.epil.preheader
  %.lcssa3272 = phi i64 [ %i.aqj, %.lr.ph82.i.i1092.unr-lcssa ], [ %i.aqu, %.lr.ph.i.i1066.epil.preheader ]
  %i.aqv = icmp eq i64 %.lcssa3272, 0
  br i1 %i.aqv, label %bary_add.exit1056, label %.loopexit71.i.i1074

.loopexit71.i.i1074:                              ; preds = %.lr.ph82.i.i1092
  %i.aqw = getelementptr [4 x i8], ptr %i.ae, i64 %i.g ; 2 uses
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !44
  %i.aqy = zext i32 %i.aqx to i64
  %i.aqz = add nsw i64 %i.aqy, -1                 ; 2 uses
  %i.ara = trunc i64 %i.aqz to i32
  store i32 %i.ara, ptr %i.aqw, align 4, !tbaa !44
  %i.arb = icmp ult i64 %i.aqz, 4294967296
  br i1 %i.arb, label %bary_add.exit1056, label %.lr.ph.i1101

.lr.ph.i1101:                                     ; preds = %.loopexit71.i.i1074, %bb.at
  %.023.i1102 = phi i64 [ %i.are, %bb.at ], [ 0, %.loopexit71.i.i1074 ] ; 9 uses
  %i.arc = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1102
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !44 ; 2 uses
  %.not.i1103 = icmp eq i32 %i.ard, 0
  br i1 %.not.i1103, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i1101
  %i.are = add nuw nsw i64 %.023.i1102, 1
  %exitcond.not.i1110 = icmp eq i64 %.023.i1102, %i.g
  br i1 %exitcond.not.i1110, label %bary_add.exit1056, label %.lr.ph.i1101, !llvm.loop !8

bb.au:                                            ; preds = %.lr.ph.i1101
  %i.arf = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1102
  %i.arg = sub i32 0, %i.ard
  store i32 %i.arg, ptr %i.arf, align 4, !tbaa !44
  %i.arh = icmp samesign ult i64 %.023.i1102, %i.g
  br i1 %i.arh, label %.lr.ph26.i1106.preheader, label %bary_add.exit1056

.lr.ph26.i1106.preheader:                         ; preds = %bb.au
  %i.ari = sub nuw nsw i64 %i.g, %.023.i1102      ; 3 uses
  %min.iters.check2978 = icmp samesign ult i64 %i.ari, 8
  br i1 %min.iters.check2978, label %.lr.ph26.i1106.preheader3267, label %vector.ph2979

vector.ph2979:                                    ; preds = %.lr.ph26.i1106.preheader
  %n.vec2980 = and i64 %i.ari, 9223372036854775800 ; 3 uses
  %i.arj = add nuw i64 %.023.i1102, %n.vec2980
  %i.ark = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1102
  br label %vector.body2981

vector.body2981:                                  ; preds = %vector.body2981, %vector.ph2979
  %index2982 = phi i64 [ 0, %vector.ph2979 ], [ %index.next2985, %vector.body2981 ] ; 2 uses
  %i.arl = getelementptr [4 x i8], ptr %i.ark, i64 %index2982 ; 2 uses
  %i.arm = getelementptr i8, ptr %i.arl, i64 4    ; 2 uses
  %i.arn = getelementptr i8, ptr %i.arl, i64 20   ; 2 uses
  %wide.load2983 = load <4 x i32>, ptr %i.arm, align 4, !tbaa !44
  %wide.load2984 = load <4 x i32>, ptr %i.arn, align 4, !tbaa !44
  %i.aro = xor <4 x i32> %wide.load2983, splat (i32 -1)
  %i.arp = xor <4 x i32> %wide.load2984, splat (i32 -1)
  store <4 x i32> %i.aro, ptr %i.arm, align 4, !tbaa !44
  store <4 x i32> %i.arp, ptr %i.arn, align 4, !tbaa !44
  %index.next2985 = add nuw i64 %index2982, 8     ; 2 uses
  %i.arq = icmp eq i64 %index.next2985, %n.vec2980
  br i1 %i.arq, label %middle.block2986, label %vector.body2981, !llvm.loop !216

middle.block2986:                                 ; preds = %vector.body2981
  %cmp.n2987 = icmp eq i64 %i.ari, %n.vec2980
  br i1 %cmp.n2987, label %bary_add.exit1056, label %.lr.ph26.i1106.preheader3267

.lr.ph26.i1106.preheader3267:                     ; preds = %.lr.ph26.i1106.preheader, %middle.block2986
  %.125.i1107.in.ph = phi i64 [ %.023.i1102, %.lr.ph26.i1106.preheader ], [ %i.arj, %middle.block2986 ]
  br label %.lr.ph26.i1106

.lr.ph26.i1106:                                   ; preds = %.lr.ph26.i1106.preheader3267, %.lr.ph26.i1106
  %.125.i1107.in = phi i64 [ %.125.i1107, %.lr.ph26.i1106 ], [ %.125.i1107.in.ph, %.lr.ph26.i1106.preheader3267 ]
  %.125.i1107 = add nuw nsw i64 %.125.i1107.in, 1 ; 3 uses
  %i.arr = getelementptr [4 x i8], ptr %i.ae, i64 %.125.i1107 ; 2 uses
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !44
  %i.art = xor i32 %i.ars, -1
  store i32 %i.art, ptr %i.arr, align 4, !tbaa !44
  %exitcond31.not.i1109 = icmp eq i64 %.125.i1107, %i.g
  br i1 %exitcond31.not.i1109, label %bary_add.exit1056, label %.lr.ph26.i1106, !llvm.loop !217

bary_add.exit1056:                                ; preds = %bb.at, %.lr.ph26.i1106, %middle.block2986, %bary_small_lshift.exit1064, %bary_small_lshift.exit1021, %.lr.ph83.i.i1052, %bb.aq, %.lr.ph82.i.i1092, %.loopexit71.i.i1074, %bb.au, %bary_add.exit759
  %.0548 = phi ptr [ %.0560, %bary_add.exit759 ], [ %i.ac, %.lr.ph83.i.i1052 ], [ %i.ac, %.lr.ph82.i.i1092 ], [ %i.ac, %bary_small_lshift.exit1021 ], [ %i.ac, %bb.au ], [ %i.ac, %.loopexit71.i.i1074 ], [ %i.ac, %bb.aq ], [ %i.ac, %bary_small_lshift.exit1064 ], [ %i.ac, %middle.block2986 ], [ %i.ac, %.lr.ph26.i1106 ], [ %i.ac, %bb.at ]
  %.0545 = phi ptr [ %i.aa, %bary_add.exit759 ], [ %i.ad, %.lr.ph83.i.i1052 ], [ %i.ad, %.lr.ph82.i.i1092 ], [ %i.ad, %bary_small_lshift.exit1021 ], [ %i.ad, %bb.au ], [ %i.ad, %.loopexit71.i.i1074 ], [ %i.ad, %bb.aq ], [ %i.ad, %bary_small_lshift.exit1064 ], [ %i.ad, %middle.block2986 ], [ %i.ad, %.lr.ph26.i1106 ], [ %i.ad, %bb.at ]
  %.1544 = phi i32 [ %.0552242124252427, %bary_add.exit759 ], [ %.0543245824622465, %.lr.ph83.i.i1052 ], [ %.0543245824622464, %.lr.ph82.i.i1092 ], [ %.0543245824622465, %bary_small_lshift.exit1021 ], [ %.0543245824622464, %bb.au ], [ %.0543245824622464, %.loopexit71.i.i1074 ], [ %.0543245824622465, %bb.aq ], [ %.0543245824622464, %bary_small_lshift.exit1064 ], [ %.0543245824622464, %middle.block2986 ], [ %.0543245824622464, %.lr.ph26.i1106 ], [ %.0543245824622464, %bb.at ]
  %.0541 = phi ptr [ %i.ab, %bary_add.exit759 ], [ %i.ae, %.lr.ph83.i.i1052 ], [ %i.ae, %.lr.ph82.i.i1092 ], [ %i.ae, %bary_small_lshift.exit1021 ], [ %i.ae, %bb.au ], [ %i.ae, %.loopexit71.i.i1074 ], [ %i.ae, %bb.aq ], [ %i.ae, %bary_small_lshift.exit1064 ], [ %i.ae, %middle.block2986 ], [ %i.ae, %.lr.ph26.i1106 ], [ %i.ae, %bb.at ]
  %.1540 = phi i32 [ %.1551, %bary_add.exit759 ], [ 0, %.lr.ph83.i.i1052 ], [ 1, %.lr.ph82.i.i1092 ], [ 0, %bary_small_lshift.exit1021 ], [ 0, %bb.au ], [ 1, %.loopexit71.i.i1074 ], [ 0, %bb.aq ], [ 1, %bary_small_lshift.exit1064 ], [ 0, %middle.block2986 ], [ 0, %.lr.ph26.i1106 ], [ 0, %bb.at ]
  call void @bary_mul_toom3_start(ptr noundef %i.af, i64 noundef %i.j, ptr noundef %2, i64 noundef %i.g, ptr noundef %.0557, i64 noundef %i.g, ptr noundef %i.an, i64 noundef %i.ao)
  call void @bary_mul_toom3_start(ptr noundef %i.ag, i64 noundef %i.k, ptr noundef %.0560, i64 noundef %i.h, ptr noundef %.0548, i64 noundef %i.h, ptr noundef %i.an, i64 noundef %i.ao)
  call void @bary_mul_toom3_start(ptr noundef %i.ah, i64 noundef %i.k, ptr noundef %i.aa, i64 noundef %i.h, ptr noundef %.0545, i64 noundef %i.h, ptr noundef %i.an, i64 noundef %i.ao)
  %i.aru = icmp eq i32 %.0552242124252427, %.1544 ; 2 uses
  call void @bary_mul_toom3_start(ptr noundef %i.ai, i64 noundef %i.k, ptr noundef %i.ab, i64 noundef %i.h, ptr noundef %.0541, i64 noundef %i.h, ptr noundef %i.an, i64 noundef %i.ao)
  %i.arv = icmp eq i32 %.1551, %.1540
  call void @bary_mul_toom3_start(ptr noundef %i.aj, i64 noundef %i.j, ptr noundef %i.at, i64 noundef %i.ar, ptr noundef %.0553, i64 noundef %.0554, ptr noundef %i.an, i64 noundef %i.ao)
  br i1 %i.arv, label %.lr.ph.i.i1113.preheader, label %.lr.ph.i.i1164.preheader

.lr.ph.i.i1164.preheader:                         ; preds = %bary_add.exit1056
  %i.arw = icmp ult i64 %i.f, 3
  br i1 %i.arw, label %.lr.ph.i.i1164.epil, label %.lr.ph.i.i1164

.lr.ph.i.i1113.preheader:                         ; preds = %bary_add.exit1056
  %i.arx = icmp ult i64 %i.f, 3
  br i1 %i.arx, label %.lr.ph.i.i1113.epil, label %.lr.ph.i.i1113

.lr.ph.i.i1113:                                   ; preds = %.lr.ph.i.i1113.preheader, %.lr.ph.i.i1113
  %.078.i.i1114 = phi i64 [ %i.asv, %.lr.ph.i.i1113 ], [ 0, %.lr.ph.i.i1113.preheader ] ; 5 uses
  %.06277.i.i1115 = phi i64 [ %i.asu, %.lr.ph.i.i1113 ], [ 0, %.lr.ph.i.i1113.preheader ]
  %niter3479 = phi i64 [ %niter3479.next.1, %.lr.ph.i.i1113 ], [ 0, %.lr.ph.i.i1113.preheader ]
  %i.ary = getelementptr [4 x i8], ptr %i.ai, i64 %.078.i.i1114
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !44
  %i.asa = zext i32 %i.arz to i64
  %i.asb = getelementptr [4 x i8], ptr %i.ag, i64 %.078.i.i1114
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !44
  %i.asd = zext i32 %i.asc to i64
  %i.ase = sub nsw i64 %i.asa, %i.asd
  %i.asf = add nsw i64 %i.ase, %.06277.i.i1115    ; 2 uses
  %i.asg = trunc i64 %i.asf to i32
  %i.ash = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1114
  store i32 %i.asg, ptr %i.ash, align 4, !tbaa !44
  %i.asi = ashr i64 %i.asf, 32
  %i.asj = or disjoint i64 %.078.i.i1114, 1       ; 3 uses
  %i.ask = getelementptr [4 x i8], ptr %i.ai, i64 %i.asj
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !44
  %i.asm = zext i32 %i.asl to i64
  %i.asn = getelementptr [4 x i8], ptr %i.ag, i64 %i.asj
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !44
  %i.asp = zext i32 %i.aso to i64
  %i.asq = sub nsw i64 %i.asm, %i.asp
  %i.asr = add nsw i64 %i.asq, %i.asi             ; 2 uses
  %i.ass = trunc i64 %i.asr to i32
  %i.ast = getelementptr [4 x i8], ptr %i.am, i64 %i.asj
  store i32 %i.ass, ptr %i.ast, align 4, !tbaa !44
  %i.asu = ashr i64 %i.asr, 32                    ; 2 uses
  %i.asv = add nuw i64 %.078.i.i1114, 2           ; 2 uses
  %niter3479.next.1 = add nuw i64 %niter3479, 2   ; 2 uses
  %niter3479.ncmp.1 = icmp eq i64 %niter3479.next.1, %i.j
  br i1 %niter3479.ncmp.1, label %.lr.ph.i.i1113.epil, label %.lr.ph.i.i1113, !llvm.loop !5

.lr.ph.i.i1113.epil:                              ; preds = %.lr.ph.i.i1113.preheader, %.lr.ph.i.i1113
  %.078.i.i1114.epil.init = phi i64 [ 0, %.lr.ph.i.i1113.preheader ], [ %i.asv, %.lr.ph.i.i1113 ] ; 3 uses
  %.06277.i.i1115.epil.init = phi i64 [ 0, %.lr.ph.i.i1113.preheader ], [ %i.asu, %.lr.ph.i.i1113 ]
  %i.asw = getelementptr [4 x i8], ptr %i.ai, i64 %.078.i.i1114.epil.init
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !44
  %i.asy = zext i32 %i.asx to i64
  %i.asz = getelementptr [4 x i8], ptr %i.ag, i64 %.078.i.i1114.epil.init
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !44
  %i.atb = zext i32 %i.ata to i64
  %i.atc = sub nsw i64 %i.asy, %i.atb
  %i.atd = add nsw i64 %i.atc, %.06277.i.i1115.epil.init ; 2 uses
  %i.ate = trunc i64 %i.atd to i32
  %i.atf = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1114.epil.init
  store i32 %i.ate, ptr %i.atf, align 4, !tbaa !44
  %i.atg = icmp ult i64 %i.atd, 4294967296
  br i1 %i.atg, label %bary_2comp.exit1158, label %.lr.ph.i1148

.lr.ph.i1148:                                     ; preds = %.lr.ph.i.i1113.epil, %bb.av
  %.023.i1149 = phi i64 [ %i.atj, %bb.av ], [ 0, %.lr.ph.i.i1113.epil ] ; 9 uses
  %i.ath = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1149
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !44 ; 2 uses
  %.not.i1150 = icmp eq i32 %i.ati, 0
  br i1 %.not.i1150, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i1148
  %i.atj = add nuw i64 %.023.i1149, 1
  %exitcond.not.i1157 = icmp eq i64 %.023.i1149, %i.j
  br i1 %exitcond.not.i1157, label %bary_2comp.exit1158, label %.lr.ph.i1148, !llvm.loop !8

bb.aw:                                            ; preds = %.lr.ph.i1148
  %i.atk = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1149
  %i.atl = sub i32 0, %i.ati
  store i32 %i.atl, ptr %i.atk, align 4, !tbaa !44
  %i.atm = icmp ult i64 %.023.i1149, %i.j
  br i1 %i.atm, label %.lr.ph26.i1153.preheader, label %bary_2comp.exit1158

.lr.ph26.i1153.preheader:                         ; preds = %bb.aw
  %i.atn = sub nuw i64 %i.j, %.023.i1149          ; 3 uses
  %min.iters.check2990 = icmp ult i64 %i.atn, 8
  br i1 %min.iters.check2990, label %.lr.ph26.i1153.preheader3260, label %vector.ph2991

vector.ph2991:                                    ; preds = %.lr.ph26.i1153.preheader
  %n.vec2992 = and i64 %i.atn, -8                 ; 3 uses
  %i.ato = add i64 %.023.i1149, %n.vec2992
  %i.atp = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1149
  br label %vector.body2993

vector.body2993:                                  ; preds = %vector.body2993, %vector.ph2991
  %index2994 = phi i64 [ 0, %vector.ph2991 ], [ %index.next2997, %vector.body2993 ] ; 2 uses
  %i.atq = getelementptr [4 x i8], ptr %i.atp, i64 %index2994 ; 2 uses
  %i.atr = getelementptr i8, ptr %i.atq, i64 4    ; 2 uses
  %i.ats = getelementptr i8, ptr %i.atq, i64 20   ; 2 uses
  %wide.load2995 = load <4 x i32>, ptr %i.atr, align 4, !tbaa !44
  %wide.load2996 = load <4 x i32>, ptr %i.ats, align 4, !tbaa !44
  %i.att = xor <4 x i32> %wide.load2995, splat (i32 -1)
  %i.atu = xor <4 x i32> %wide.load2996, splat (i32 -1)
  store <4 x i32> %i.att, ptr %i.atr, align 4, !tbaa !44
  store <4 x i32> %i.atu, ptr %i.ats, align 4, !tbaa !44
  %index.next2997 = add nuw i64 %index2994, 8     ; 2 uses
  %i.atv = icmp eq i64 %index.next2997, %n.vec2992
  br i1 %i.atv, label %middle.block2998, label %vector.body2993, !llvm.loop !218

middle.block2998:                                 ; preds = %vector.body2993
  %cmp.n2999 = icmp eq i64 %i.atn, %n.vec2992
  br i1 %cmp.n2999, label %bary_2comp.exit1158, label %.lr.ph26.i1153.preheader3260

.lr.ph26.i1153.preheader3260:                     ; preds = %.lr.ph26.i1153.preheader, %middle.block2998
  %.125.i1154.in.ph = phi i64 [ %.023.i1149, %.lr.ph26.i1153.preheader ], [ %i.ato, %middle.block2998 ]
  br label %.lr.ph26.i1153

.lr.ph26.i1153:                                   ; preds = %.lr.ph26.i1153.preheader3260, %.lr.ph26.i1153
  %.125.i1154.in = phi i64 [ %.125.i1154, %.lr.ph26.i1153 ], [ %.125.i1154.in.ph, %.lr.ph26.i1153.preheader3260 ]
  %.125.i1154 = add nuw i64 %.125.i1154.in, 1     ; 3 uses
  %i.atw = getelementptr [4 x i8], ptr %i.am, i64 %.125.i1154 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !44
  %i.aty = xor i32 %i.atx, -1
  store i32 %i.aty, ptr %i.atw, align 4, !tbaa !44
  %exitcond31.not.i1156 = icmp eq i64 %.125.i1154, %i.j
  br i1 %exitcond31.not.i1156, label %bary_2comp.exit1158, label %.lr.ph26.i1153, !llvm.loop !219

.lr.ph.i.i1164:                                   ; preds = %.lr.ph.i.i1164.preheader, %.lr.ph.i.i1164
  %.05779.i.i1165 = phi i64 [ %i.auw, %.lr.ph.i.i1164 ], [ 0, %.lr.ph.i.i1164.preheader ] ; 5 uses
  %.05878.i.i1166 = phi i64 [ %i.auv, %.lr.ph.i.i1164 ], [ 0, %.lr.ph.i.i1164.preheader ]
  %niter3472 = phi i64 [ %niter3472.next.1, %.lr.ph.i.i1164 ], [ 0, %.lr.ph.i.i1164.preheader ]
  %i.atz = getelementptr [4 x i8], ptr %i.ai, i64 %.05779.i.i1165
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !44
  %i.aub = zext i32 %i.aua to i64
  %i.auc = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1165
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !44
  %i.aue = zext i32 %i.aud to i64
  %i.auf = add nuw nsw i64 %.05878.i.i1166, %i.aub
  %i.aug = add nuw nsw i64 %i.auf, %i.aue         ; 2 uses
  %i.auh = trunc i64 %i.aug to i32
  %i.aui = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1165
  store i32 %i.auh, ptr %i.aui, align 4, !tbaa !44
  %i.auj = lshr i64 %i.aug, 32
  %i.auk = or disjoint i64 %.05779.i.i1165, 1     ; 3 uses
  %i.aul = getelementptr [4 x i8], ptr %i.ai, i64 %i.auk
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !44
  %i.aun = zext i32 %i.aum to i64
  %i.auo = getelementptr [4 x i8], ptr %i.ag, i64 %i.auk
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !44
  %i.auq = zext i32 %i.aup to i64
  %i.aur = add nuw nsw i64 %i.auj, %i.aun
  %i.aus = add nuw nsw i64 %i.aur, %i.auq         ; 2 uses
  %i.aut = trunc i64 %i.aus to i32
  %i.auu = getelementptr [4 x i8], ptr %i.am, i64 %i.auk
  store i32 %i.aut, ptr %i.auu, align 4, !tbaa !44
  %i.auv = lshr i64 %i.aus, 32                    ; 2 uses
  %i.auw = add nuw i64 %.05779.i.i1165, 2         ; 2 uses
  %niter3472.next.1 = add nuw i64 %niter3472, 2   ; 2 uses
  %niter3472.ncmp.1 = icmp eq i64 %niter3472.next.1, %i.j
  br i1 %niter3472.ncmp.1, label %.lr.ph.i.i1164.epil, label %.lr.ph.i.i1164, !llvm.loop !3

.lr.ph.i.i1164.epil:                              ; preds = %.lr.ph.i.i1164.preheader, %.lr.ph.i.i1164
  %.05779.i.i1165.epil.init = phi i64 [ 0, %.lr.ph.i.i1164.preheader ], [ %i.auw, %.lr.ph.i.i1164 ] ; 3 uses
  %.05878.i.i1166.epil.init = phi i64 [ 0, %.lr.ph.i.i1164.preheader ], [ %i.auv, %.lr.ph.i.i1164 ]
  %i.aux = getelementptr [4 x i8], ptr %i.ai, i64 %.05779.i.i1165.epil.init
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !44
  %i.auz = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1165.epil.init
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !44
  %i.avb = trunc nuw nsw i64 %.05878.i.i1166.epil.init to i32
  %i.avc = add i32 %i.auy, %i.avb
  %i.avd = add i32 %i.avc, %i.ava
  %i.ave = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1165.epil.init
  store i32 %i.avd, ptr %i.ave, align 4, !tbaa !44
  br label %bary_2comp.exit1158

bary_2comp.exit1158:                              ; preds = %bb.av, %.lr.ph26.i1153, %.lr.ph.i.i1164.epil, %middle.block2998, %.lr.ph.i.i1113.epil, %bb.aw
  %.0533.shrunk = phi i1 [ true, %.lr.ph.i.i1113.epil ], [ false, %middle.block2998 ], [ false, %.lr.ph.i.i1164.epil ], [ false, %bb.aw ], [ false, %.lr.ph26.i1153 ], [ false, %bb.av ] ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bary_2comp.exit1158
  %.030.i.i = phi i64 [ 0, %bary_2comp.exit1158 ], [ %i.avn, %bb.ax ]
  %.02629.i.i = phi i64 [ 0, %bary_2comp.exit1158 ], [ %i.avo, %bb.ax ] ; 3 uses
  %i.avf = shl nuw nsw i64 %.030.i.i, 32
  %i.avg = xor i64 %.02629.i.i, -1
  %i.avh = getelementptr [4 x i8], ptr %i.an, i64 %i.avg ; 2 uses
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !44
  %i.avj = zext i32 %i.avi to i64
  %i.avk = or disjoint i64 %i.avf, %i.avj         ; 2 uses
  %i.avl = udiv i64 %i.avk, 3
  %i.avm = trunc nuw i64 %i.avl to i32
  store i32 %i.avm, ptr %i.avh, align 4, !tbaa !44
  %i.avn = urem i64 %i.avk, 3
  %i.avo = add nuw i64 %.02629.i.i, 1
  %exitcond.not.i.i1196 = icmp eq i64 %.02629.i.i, %i.j
  br i1 %exitcond.not.i.i1196, label %bigdivrem_single.exit, label %bb.ax, !llvm.loop !11

bigdivrem_single.exit:                            ; preds = %bb.ax
  br i1 %i.aru, label %.lr.ph.i.i1198.preheader, label %.lr.ph.i.i1249.preheader

.lr.ph.i.i1249.preheader:                         ; preds = %bigdivrem_single.exit
  %i.avp = icmp ult i64 %i.f, 3
  br i1 %i.avp, label %.lr.ph.i.i1249.epil, label %.lr.ph.i.i1249

.lr.ph.i.i1198.preheader:                         ; preds = %bigdivrem_single.exit
  %i.avq = icmp ult i64 %i.f, 3
  br i1 %i.avq, label %.lr.ph.i.i1198.epil, label %.lr.ph.i.i1198

.lr.ph.i.i1198:                                   ; preds = %.lr.ph.i.i1198.preheader, %.lr.ph.i.i1198
  %.078.i.i1199 = phi i64 [ %i.awo, %.lr.ph.i.i1198 ], [ 0, %.lr.ph.i.i1198.preheader ] ; 5 uses
  %.06277.i.i1200 = phi i64 [ %i.awn, %.lr.ph.i.i1198 ], [ 0, %.lr.ph.i.i1198.preheader ]
  %niter3492 = phi i64 [ %niter3492.next.1, %.lr.ph.i.i1198 ], [ 0, %.lr.ph.i.i1198.preheader ]
  %i.avr = getelementptr [4 x i8], ptr %i.ag, i64 %.078.i.i1199
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !44
  %i.avt = zext i32 %i.avs to i64
  %i.avu = getelementptr [4 x i8], ptr %i.ah, i64 %.078.i.i1199
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !44
  %i.avw = zext i32 %i.avv to i64
  %i.avx = sub nsw i64 %i.avt, %i.avw
  %i.avy = add nsw i64 %i.avx, %.06277.i.i1200    ; 2 uses
  %i.avz = trunc i64 %i.avy to i32
  %i.awa = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1199
  store i32 %i.avz, ptr %i.awa, align 4, !tbaa !44
  %i.awb = ashr i64 %i.avy, 32
  %i.awc = or disjoint i64 %.078.i.i1199, 1       ; 3 uses
  %i.awd = getelementptr [4 x i8], ptr %i.ag, i64 %i.awc
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !44
  %i.awf = zext i32 %i.awe to i64
  %i.awg = getelementptr [4 x i8], ptr %i.ah, i64 %i.awc
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !44
  %i.awi = zext i32 %i.awh to i64
  %i.awj = sub nsw i64 %i.awf, %i.awi
  %i.awk = add nsw i64 %i.awj, %i.awb             ; 2 uses
  %i.awl = trunc i64 %i.awk to i32
  %i.awm = getelementptr [4 x i8], ptr %i.ak, i64 %i.awc
  store i32 %i.awl, ptr %i.awm, align 4, !tbaa !44
  %i.awn = ashr i64 %i.awk, 32                    ; 2 uses
  %i.awo = add nuw i64 %.078.i.i1199, 2           ; 2 uses
  %niter3492.next.1 = add nuw i64 %niter3492, 2   ; 2 uses
  %niter3492.ncmp.1 = icmp eq i64 %niter3492.next.1, %i.j
  br i1 %niter3492.ncmp.1, label %.lr.ph.i.i1198.epil, label %.lr.ph.i.i1198, !llvm.loop !5

.lr.ph.i.i1198.epil:                              ; preds = %.lr.ph.i.i1198.preheader, %.lr.ph.i.i1198
  %.078.i.i1199.epil.init = phi i64 [ 0, %.lr.ph.i.i1198.preheader ], [ %i.awo, %.lr.ph.i.i1198 ] ; 3 uses
  %.06277.i.i1200.epil.init = phi i64 [ 0, %.lr.ph.i.i1198.preheader ], [ %i.awn, %.lr.ph.i.i1198 ]
  %i.awp = getelementptr [4 x i8], ptr %i.ag, i64 %.078.i.i1199.epil.init
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !44
  %i.awr = zext i32 %i.awq to i64
  %i.aws = getelementptr [4 x i8], ptr %i.ah, i64 %.078.i.i1199.epil.init
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !44
  %i.awu = zext i32 %i.awt to i64
  %i.awv = sub nsw i64 %i.awr, %i.awu
  %i.aww = add nsw i64 %i.awv, %.06277.i.i1200.epil.init ; 2 uses
  %i.awx = trunc i64 %i.aww to i32
  %i.awy = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1199.epil.init
  store i32 %i.awx, ptr %i.awy, align 4, !tbaa !44
  %i.awz = icmp ult i64 %i.aww, 4294967296
  br i1 %i.awz, label %bary_2comp.exit1243, label %.lr.ph.i1233

.lr.ph.i1233:                                     ; preds = %.lr.ph.i.i1198.epil, %bb.ay
  %.023.i1234 = phi i64 [ %i.axc, %bb.ay ], [ 0, %.lr.ph.i.i1198.epil ] ; 9 uses
  %i.axa = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1234
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !44 ; 2 uses
  %.not.i1235 = icmp eq i32 %i.axb, 0
  br i1 %.not.i1235, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i1233
  %i.axc = add nuw i64 %.023.i1234, 1
  %exitcond.not.i1242 = icmp eq i64 %.023.i1234, %i.j
  br i1 %exitcond.not.i1242, label %bary_2comp.exit1243, label %.lr.ph.i1233, !llvm.loop !8

bb.az:                                            ; preds = %.lr.ph.i1233
  %i.axd = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1234
  %i.axe = sub i32 0, %i.axb
  store i32 %i.axe, ptr %i.axd, align 4, !tbaa !44
  %i.axf = icmp ult i64 %.023.i1234, %i.j
  br i1 %i.axf, label %.lr.ph26.i1238.preheader, label %bary_2comp.exit1243

.lr.ph26.i1238.preheader:                         ; preds = %bb.az
  %i.axg = sub nuw i64 %i.j, %.023.i1234          ; 3 uses
  %min.iters.check3002 = icmp ult i64 %i.axg, 8
  br i1 %min.iters.check3002, label %.lr.ph26.i1238.preheader3253, label %vector.ph3003

vector.ph3003:                                    ; preds = %.lr.ph26.i1238.preheader
  %n.vec3004 = and i64 %i.axg, -8                 ; 3 uses
  %i.axh = add i64 %.023.i1234, %n.vec3004
  %i.axi = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1234
  br label %vector.body3005

vector.body3005:                                  ; preds = %vector.body3005, %vector.ph3003
  %index3006 = phi i64 [ 0, %vector.ph3003 ], [ %index.next3009, %vector.body3005 ] ; 2 uses
  %i.axj = getelementptr [4 x i8], ptr %i.axi, i64 %index3006 ; 2 uses
  %i.axk = getelementptr i8, ptr %i.axj, i64 4    ; 2 uses
  %i.axl = getelementptr i8, ptr %i.axj, i64 20   ; 2 uses
  %wide.load3007 = load <4 x i32>, ptr %i.axk, align 4, !tbaa !44
  %wide.load3008 = load <4 x i32>, ptr %i.axl, align 4, !tbaa !44
  %i.axm = xor <4 x i32> %wide.load3007, splat (i32 -1)
  %i.axn = xor <4 x i32> %wide.load3008, splat (i32 -1)
  store <4 x i32> %i.axm, ptr %i.axk, align 4, !tbaa !44
  store <4 x i32> %i.axn, ptr %i.axl, align 4, !tbaa !44
  %index.next3009 = add nuw i64 %index3006, 8     ; 2 uses
  %i.axo = icmp eq i64 %index.next3009, %n.vec3004
  br i1 %i.axo, label %middle.block3010, label %vector.body3005, !llvm.loop !220

middle.block3010:                                 ; preds = %vector.body3005
  %cmp.n3011 = icmp eq i64 %i.axg, %n.vec3004
  br i1 %cmp.n3011, label %bary_2comp.exit1243, label %.lr.ph26.i1238.preheader3253

.lr.ph26.i1238.preheader3253:                     ; preds = %.lr.ph26.i1238.preheader, %middle.block3010
  %.125.i1239.in.ph = phi i64 [ %.023.i1234, %.lr.ph26.i1238.preheader ], [ %i.axh, %middle.block3010 ]
  br label %.lr.ph26.i1238

.lr.ph26.i1238:                                   ; preds = %.lr.ph26.i1238.preheader3253, %.lr.ph26.i1238
  %.125.i1239.in = phi i64 [ %.125.i1239, %.lr.ph26.i1238 ], [ %.125.i1239.in.ph, %.lr.ph26.i1238.preheader3253 ]
  %.125.i1239 = add nuw i64 %.125.i1239.in, 1     ; 3 uses
  %i.axp = getelementptr [4 x i8], ptr %i.ak, i64 %.125.i1239 ; 2 uses
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !44
  %i.axr = xor i32 %i.axq, -1
  store i32 %i.axr, ptr %i.axp, align 4, !tbaa !44
  %exitcond31.not.i1241 = icmp eq i64 %.125.i1239, %i.j
  br i1 %exitcond31.not.i1241, label %bary_2comp.exit1243, label %.lr.ph26.i1238, !llvm.loop !221

.lr.ph.i.i1249:                                   ; preds = %.lr.ph.i.i1249.preheader, %.lr.ph.i.i1249
  %.05779.i.i1250 = phi i64 [ %i.ayp, %.lr.ph.i.i1249 ], [ 0, %.lr.ph.i.i1249.preheader ] ; 5 uses
  %.05878.i.i1251 = phi i64 [ %i.ayo, %.lr.ph.i.i1249 ], [ 0, %.lr.ph.i.i1249.preheader ]
  %niter3485 = phi i64 [ %niter3485.next.1, %.lr.ph.i.i1249 ], [ 0, %.lr.ph.i.i1249.preheader ]
  %i.axs = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1250
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !44
  %i.axu = zext i32 %i.axt to i64
  %i.axv = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1250
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !44
  %i.axx = zext i32 %i.axw to i64
  %i.axy = add nuw nsw i64 %.05878.i.i1251, %i.axu
  %i.axz = add nuw nsw i64 %i.axy, %i.axx         ; 2 uses
  %i.aya = trunc i64 %i.axz to i32
  %i.ayb = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1250
  store i32 %i.aya, ptr %i.ayb, align 4, !tbaa !44
  %i.ayc = lshr i64 %i.axz, 32
  %i.ayd = or disjoint i64 %.05779.i.i1250, 1     ; 3 uses
  %i.aye = getelementptr [4 x i8], ptr %i.ag, i64 %i.ayd
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !44
  %i.ayg = zext i32 %i.ayf to i64
  %i.ayh = getelementptr [4 x i8], ptr %i.ah, i64 %i.ayd
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !44
  %i.ayj = zext i32 %i.ayi to i64
  %i.ayk = add nuw nsw i64 %i.ayc, %i.ayg
  %i.ayl = add nuw nsw i64 %i.ayk, %i.ayj         ; 2 uses
  %i.aym = trunc i64 %i.ayl to i32
  %i.ayn = getelementptr [4 x i8], ptr %i.ak, i64 %i.ayd
  store i32 %i.aym, ptr %i.ayn, align 4, !tbaa !44
  %i.ayo = lshr i64 %i.ayl, 32                    ; 2 uses
  %i.ayp = add nuw i64 %.05779.i.i1250, 2         ; 2 uses
  %niter3485.next.1 = add nuw i64 %niter3485, 2   ; 2 uses
  %niter3485.ncmp.1 = icmp eq i64 %niter3485.next.1, %i.j
  br i1 %niter3485.ncmp.1, label %.lr.ph.i.i1249.epil, label %.lr.ph.i.i1249, !llvm.loop !3

.lr.ph.i.i1249.epil:                              ; preds = %.lr.ph.i.i1249.preheader, %.lr.ph.i.i1249
  %.05779.i.i1250.epil.init = phi i64 [ 0, %.lr.ph.i.i1249.preheader ], [ %i.ayp, %.lr.ph.i.i1249 ] ; 3 uses
  %.05878.i.i1251.epil.init = phi i64 [ 0, %.lr.ph.i.i1249.preheader ], [ %i.ayo, %.lr.ph.i.i1249 ]
  %i.ayq = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1250.epil.init
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !44
  %i.ays = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1250.epil.init
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !44
  %i.ayu = trunc nuw nsw i64 %.05878.i.i1251.epil.init to i32
  %i.ayv = add i32 %i.ayr, %i.ayu
  %i.ayw = add i32 %i.ayv, %i.ayt
  %i.ayx = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1250.epil.init
  store i32 %i.ayw, ptr %i.ayx, align 4, !tbaa !44
  br label %bary_2comp.exit1243

bary_2comp.exit1243:                              ; preds = %bb.ay, %.lr.ph26.i1238, %.lr.ph.i.i1249.epil, %middle.block3010, %.lr.ph.i.i1198.epil, %bb.az
  %.not587 = phi i32 [ 0, %.lr.ph.i.i1198.epil ], [ 1, %middle.block3010 ], [ 0, %.lr.ph.i.i1249.epil ], [ 1, %bb.az ], [ 1, %.lr.ph26.i1238 ], [ 1, %bb.ay ] ; 4 uses
  %.0537 = phi i32 [ 1, %.lr.ph.i.i1198.epil ], [ 0, %middle.block3010 ], [ 1, %.lr.ph.i.i1249.epil ], [ 0, %bb.az ], [ 0, %.lr.ph26.i1238 ], [ 0, %bb.ay ] ; 5 uses
  %min.iters.check3014 = icmp ult i64 %i.f, 12
  br i1 %min.iters.check3014, label %scalar.ph3013.preheader, label %vector.ph3015

vector.ph3015:                                    ; preds = %bary_2comp.exit1243
  %n.vec3016 = and i64 %i.j, -8                   ; 2 uses
  br label %vector.body3017

vector.body3017:                                  ; preds = %vector.body3017, %vector.ph3015
  %index3018 = phi i64 [ 0, %vector.ph3015 ], [ %index.next3024, %vector.body3017 ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph3015 ], [ %i.azd, %vector.body3017 ]
  %i.ayy = xor i64 %index3018, -1
  %i.ayz = getelementptr [4 x i8], ptr %i.al, i64 %i.ayy ; 2 uses
  %i.aza = getelementptr i8, ptr %i.ayz, i64 -12  ; 2 uses
  %i.azb = getelementptr i8, ptr %i.ayz, i64 -28  ; 2 uses
  %wide.load3019 = load <4 x i32>, ptr %i.aza, align 4, !tbaa !44
  %wide.load3020 = load <4 x i32>, ptr %i.azb, align 4, !tbaa !44
  %reverse = shufflevector <4 x i32> %wide.load3019, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3021 = shufflevector <4 x i32> %wide.load3020, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.azc = zext <4 x i32> %reverse to <4 x i64>   ; 3 uses
  %i.azd = zext <4 x i32> %reverse3021 to <4 x i64> ; 4 uses
  %i.aze = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.azc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.azf = shufflevector <4 x i64> %i.azc, <4 x i64> %i.azd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.azg = shl nuw <4 x i64> %i.aze, splat (i64 32)
  %i.azh = shl nuw <4 x i64> %i.azf, splat (i64 32)
  %i.azi = or disjoint <4 x i64> %i.azg, %i.azc
  %i.azj = or disjoint <4 x i64> %i.azh, %i.azd
  %i.azk = lshr <4 x i64> %i.azi, splat (i64 1)
  %i.azl = lshr <4 x i64> %i.azj, splat (i64 1)
  %i.azm = trunc <4 x i64> %i.azk to <4 x i32>
  %i.azn = trunc <4 x i64> %i.azl to <4 x i32>
  %reverse3022 = shufflevector <4 x i32> %i.azm, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3023 = shufflevector <4 x i32> %i.azn, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse3022, ptr %i.aza, align 4, !tbaa !44
  store <4 x i32> %reverse3023, ptr %i.azb, align 4, !tbaa !44
  %index.next3024 = add nuw i64 %index3018, 8     ; 2 uses
  %i.azo = icmp eq i64 %index.next3024, %n.vec3016
  br i1 %i.azo, label %middle.block3025, label %vector.body3017, !llvm.loop !222

middle.block3025:                                 ; preds = %vector.body3017
  %vector.recur.extract = extractelement <4 x i64> %i.azd, i64 3
  br label %scalar.ph3013.preheader

scalar.ph3013.preheader:                          ; preds = %middle.block3025, %bary_2comp.exit1243
  %.017.i1281.ph = phi i64 [ 0, %bary_2comp.exit1243 ], [ %n.vec3016, %middle.block3025 ]
  %.014.in16.i.ph = phi i64 [ 0, %bary_2comp.exit1243 ], [ %vector.recur.extract, %middle.block3025 ]
  br label %scalar.ph3013

scalar.ph3013:                                    ; preds = %scalar.ph3013.preheader, %scalar.ph3013
  %.017.i1281 = phi i64 [ %i.azw, %scalar.ph3013 ], [ %.017.i1281.ph, %scalar.ph3013.preheader ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.azs, %scalar.ph3013 ], [ %.014.in16.i.ph, %scalar.ph3013.preheader ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.azp = xor i64 %.017.i1281, -1
  %i.azq = getelementptr [4 x i8], ptr %i.al, i64 %i.azp ; 2 uses
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !44
  %i.azs = zext i32 %i.azr to i64                 ; 2 uses
  %i.azt = or disjoint i64 %.014.i, %i.azs
  %i.azu = lshr i64 %i.azt, 1
  %i.azv = trunc i64 %i.azu to i32
  store i32 %i.azv, ptr %i.azq, align 4, !tbaa !44
  %i.azw = add nuw i64 %.017.i1281, 1
  %exitcond.not.i1282 = icmp eq i64 %.017.i1281, %i.j
  br i1 %exitcond.not.i1282, label %bary_small_rshift.exit, label %scalar.ph3013, !llvm.loop !223

bary_small_rshift.exit:                           ; preds = %scalar.ph3013
  br i1 %i.aru, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit74.i.i1299, label %.lr.ph.i.i1284

.lr.ph.i.i1284:                                   ; preds = %bb.ba, %.lr.ph.i.i1284
  %.078.i.i1285 = phi i64 [ %i.bau, %.lr.ph.i.i1284 ], [ 0, %bb.ba ] ; 5 uses
  %.06277.i.i1286 = phi i64 [ %i.bat, %.lr.ph.i.i1284 ], [ 0, %bb.ba ]
  %i.azx = getelementptr [4 x i8], ptr %i.ah, i64 %.078.i.i1285
  %i.azy = load i32, ptr %i.azx, align 4, !tbaa !44
  %i.azz = zext i32 %i.azy to i64
  %i.baa = getelementptr [4 x i8], ptr %i.af, i64 %.078.i.i1285
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !44
  %i.bac = zext i32 %i.bab to i64
  %i.bad = sub nsw i64 %i.azz, %i.bac
  %i.bae = add nsw i64 %i.bad, %.06277.i.i1286    ; 2 uses
  %i.baf = trunc i64 %i.bae to i32
  %i.bag = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1285
  store i32 %i.baf, ptr %i.bag, align 4, !tbaa !44
  %i.bah = ashr i64 %i.bae, 32
  %i.bai = or disjoint i64 %.078.i.i1285, 1       ; 3 uses
  %i.baj = getelementptr [4 x i8], ptr %i.ah, i64 %i.bai
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !44
  %i.bal = zext i32 %i.bak to i64
  %i.bam = getelementptr [4 x i8], ptr %i.af, i64 %i.bai
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !44
  %i.bao = zext i32 %i.ban to i64
  %i.bap = sub nsw i64 %i.bal, %i.bao
  %i.baq = add nsw i64 %i.bap, %i.bah             ; 2 uses
  %i.bar = trunc i64 %i.baq to i32
  %i.bas = getelementptr [4 x i8], ptr %i.al, i64 %i.bai
  store i32 %i.bar, ptr %i.bas, align 4, !tbaa !44
  %i.bat = ashr i64 %i.baq, 32                    ; 2 uses
  %i.bau = add nuw i64 %.078.i.i1285, 2           ; 2 uses
  %exitcond.not.i.i1287.1 = icmp eq i64 %i.bau, %i.j
  br i1 %exitcond.not.i.i1287.1, label %.lr.ph82.i.i1310, label %.lr.ph.i.i1284, !llvm.loop !5

.lr.ph82.i.i1310:                                 ; preds = %.lr.ph.i.i1284
  %i.bav = icmp eq i64 %i.bat, 0
  br i1 %i.bav, label %.loopexit74.i.i1299, label %.loopexit71.i.i1292

.loopexit71.i.i1292:                              ; preds = %.lr.ph82.i.i1310
  %i.baw = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !44
  %i.bay = zext i32 %i.bax to i64
  %i.baz = add nsw i64 %i.bay, -1                 ; 2 uses
  %i.bba = trunc i64 %i.baz to i32
  %i.bbb = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %i.bba, ptr %i.bbb, align 4, !tbaa !44
  %i.bbc = icmp ult i64 %i.baz, 4294967296
  br i1 %i.bbc, label %.loopexit74.i.i1299, label %.lr.ph.i1319

.loopexit74.i.i1299:                              ; preds = %bb.ba, %.lr.ph82.i.i1310, %.loopexit71.i.i1292
  %.5.i.i1300 = phi i64 [ %i.l, %.loopexit71.i.i1292 ], [ %i.j, %.lr.ph82.i.i1310 ], [ %i.j, %bb.ba ] ; 6 uses
  %i.bbd = icmp ne ptr %i.ah, %i.al
  %i.bbe = icmp ule i64 %.5.i.i1300, %i.j
  %or.cond1990 = and i1 %i.bbd, %i.bbe
  br i1 %or.cond1990, label %.lr.ph93.i.i1307.preheader, label %bary_2comp.exit1329

.lr.ph93.i.i1307.preheader:                       ; preds = %.loopexit74.i.i1299
  %i.bbf = or disjoint i64 %i.j, 1
  %i.bbg = sub nuw i64 %i.bbf, %.5.i.i1300        ; 3 uses
  %min.iters.check3043 = icmp ult i64 %i.bbg, 12
  br i1 %min.iters.check3043, label %.lr.ph93.i.i1307.preheader3244, label %vector.memcheck3044

vector.memcheck3044:                              ; preds = %.lr.ph93.i.i1307.preheader
  %i.bbh = shl i64 %i.g, 5
  %i.bbi = or disjoint i64 %i.bbh, 19
  %diff.check3045 = icmp ult i64 %i.bbi, 31
  br i1 %diff.check3045, label %.lr.ph93.i.i1307.preheader3244, label %vector.ph3046

vector.ph3046:                                    ; preds = %vector.memcheck3044
  %n.vec3047 = and i64 %i.bbg, -8                 ; 3 uses
  %i.bbj = add i64 %.5.i.i1300, %n.vec3047
  br label %vector.body3048

vector.body3048:                                  ; preds = %vector.body3048, %vector.ph3046
  %index3049 = phi i64 [ 0, %vector.ph3046 ], [ %index.next3052, %vector.body3048 ] ; 2 uses
  %i.bbk = add nuw i64 %.5.i.i1300, %index3049    ; 2 uses
  %i.bbl = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbk ; 2 uses
  %i.bbm = getelementptr i8, ptr %i.bbl, i64 16
  %wide.load3050 = load <4 x i32>, ptr %i.bbl, align 4, !tbaa !44
  %wide.load3051 = load <4 x i32>, ptr %i.bbm, align 4, !tbaa !44
  %i.bbn = getelementptr [4 x i8], ptr %i.al, i64 %i.bbk ; 2 uses
  %i.bbo = getelementptr i8, ptr %i.bbn, i64 16
  store <4 x i32> %wide.load3050, ptr %i.bbn, align 4, !tbaa !44
  store <4 x i32> %wide.load3051, ptr %i.bbo, align 4, !tbaa !44
  %index.next3052 = add nuw i64 %index3049, 8     ; 2 uses
  %i.bbp = icmp eq i64 %index.next3052, %n.vec3047
  br i1 %i.bbp, label %middle.block3053, label %vector.body3048, !llvm.loop !224

middle.block3053:                                 ; preds = %vector.body3048
  %cmp.n3054 = icmp eq i64 %i.bbg, %n.vec3047
  br i1 %cmp.n3054, label %bary_2comp.exit1329, label %.lr.ph93.i.i1307.preheader3244

.lr.ph93.i.i1307.preheader3244:                   ; preds = %vector.memcheck3044, %.lr.ph93.i.i1307.preheader, %middle.block3053
  %.692.i.i1308.ph = phi i64 [ %.5.i.i1300, %vector.memcheck3044 ], [ %.5.i.i1300, %.lr.ph93.i.i1307.preheader ], [ %i.bbj, %middle.block3053 ] ; 4 uses
  %i.bbq = or disjoint i64 %i.j, 1
  %i.bbr = sub i64 %i.bbq, %.692.i.i1308.ph
  %i.bbs = sub i64 %i.j, %.692.i.i1308.ph
  %xtraiter3493 = and i64 %i.bbr, 3               ; 2 uses
  %lcmp.mod3494.not = icmp eq i64 %xtraiter3493, 0
  br i1 %lcmp.mod3494.not, label %.lr.ph93.i.i1307.prol.loopexit, label %.lr.ph93.i.i1307.prol

.lr.ph93.i.i1307.prol:                            ; preds = %.lr.ph93.i.i1307.preheader3244, %.lr.ph93.i.i1307.prol
  %.692.i.i1308.prol = phi i64 [ %i.bbw, %.lr.ph93.i.i1307.prol ], [ %.692.i.i1308.ph, %.lr.ph93.i.i1307.preheader3244 ] ; 3 uses
  %prol.iter3495 = phi i64 [ %prol.iter3495.next, %.lr.ph93.i.i1307.prol ], [ 0, %.lr.ph93.i.i1307.preheader3244 ]
  %i.bbt = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1308.prol
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !44
  %i.bbv = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1308.prol
  store i32 %i.bbu, ptr %i.bbv, align 4, !tbaa !44
  %i.bbw = add nuw i64 %.692.i.i1308.prol, 1      ; 2 uses
  %prol.iter3495.next = add i64 %prol.iter3495, 1 ; 2 uses
  %prol.iter3495.cmp.not = icmp eq i64 %prol.iter3495.next, %xtraiter3493
  br i1 %prol.iter3495.cmp.not, label %.lr.ph93.i.i1307.prol.loopexit, label %.lr.ph93.i.i1307.prol, !llvm.loop !225

.lr.ph93.i.i1307.prol.loopexit:                   ; preds = %.lr.ph93.i.i1307.prol, %.lr.ph93.i.i1307.preheader3244
  %.692.i.i1308.unr = phi i64 [ %.692.i.i1308.ph, %.lr.ph93.i.i1307.preheader3244 ], [ %i.bbw, %.lr.ph93.i.i1307.prol ]
  %i.bbx = icmp ult i64 %i.bbs, 3
  br i1 %i.bbx, label %bary_2comp.exit1329, label %.lr.ph93.i.i1307

.lr.ph93.i.i1307:                                 ; preds = %.lr.ph93.i.i1307.prol.loopexit, %.lr.ph93.i.i1307
  %.692.i.i1308 = phi i64 [ %i.bcn, %.lr.ph93.i.i1307 ], [ %.692.i.i1308.unr, %.lr.ph93.i.i1307.prol.loopexit ] ; 6 uses
  %i.bby = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1308
  %i.bbz = load i32, ptr %i.bby, align 4, !tbaa !44
  %i.bca = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1308
  store i32 %i.bbz, ptr %i.bca, align 4, !tbaa !44
  %i.bcb = add nuw i64 %.692.i.i1308, 1           ; 2 uses
  %i.bcc = getelementptr [4 x i8], ptr %i.ah, i64 %i.bcb
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !44
  %i.bce = getelementptr [4 x i8], ptr %i.al, i64 %i.bcb
  store i32 %i.bcd, ptr %i.bce, align 4, !tbaa !44
  %i.bcf = add nuw i64 %.692.i.i1308, 2           ; 2 uses
  %i.bcg = getelementptr [4 x i8], ptr %i.ah, i64 %i.bcf
  %i.bch = load i32, ptr %i.bcg, align 4, !tbaa !44
  %i.bci = getelementptr [4 x i8], ptr %i.al, i64 %i.bcf
  store i32 %i.bch, ptr %i.bci, align 4, !tbaa !44
  %i.bcj = add nuw i64 %.692.i.i1308, 3           ; 3 uses
  %i.bck = getelementptr [4 x i8], ptr %i.ah, i64 %i.bcj
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !44
  %i.bcm = getelementptr [4 x i8], ptr %i.al, i64 %i.bcj
  store i32 %i.bcl, ptr %i.bcm, align 4, !tbaa !44
  %i.bcn = add nuw i64 %.692.i.i1308, 4
  %exitcond111.not.i.i1309.3 = icmp eq i64 %i.bcj, %i.j
  br i1 %exitcond111.not.i.i1309.3, label %bary_2comp.exit1329, label %.lr.ph93.i.i1307, !llvm.loop !226

.lr.ph.i1319:                                     ; preds = %.loopexit71.i.i1292, %bb.bb
  %.023.i1320 = phi i64 [ %i.bcq, %bb.bb ], [ 0, %.loopexit71.i.i1292 ] ; 9 uses
  %i.bco = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1320
  %i.bcp = load i32, ptr %i.bco, align 4, !tbaa !44 ; 2 uses
  %.not.i1321 = icmp eq i32 %i.bcp, 0
  br i1 %.not.i1321, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i1319
  %i.bcq = add nuw i64 %.023.i1320, 1
  %exitcond.not.i1328 = icmp eq i64 %.023.i1320, %i.j
  br i1 %exitcond.not.i1328, label %bary_2comp.exit1329.thr_comm, label %.lr.ph.i1319, !llvm.loop !8

bb.bc:                                            ; preds = %.lr.ph.i1319
  %i.bcr = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1320
  %i.bcs = sub i32 0, %i.bcp
  store i32 %i.bcs, ptr %i.bcr, align 4, !tbaa !44
  %i.bct = icmp ult i64 %.023.i1320, %i.j
  br i1 %i.bct, label %.lr.ph26.i1324.preheader, label %bary_2comp.exit1329.thr_comm

.lr.ph26.i1324.preheader:                         ; preds = %bb.bc
  %i.bcu = sub nuw i64 %i.j, %.023.i1320          ; 3 uses
  %min.iters.check3029 = icmp ult i64 %i.bcu, 8
  br i1 %min.iters.check3029, label %.lr.ph26.i1324.preheader3245, label %vector.ph3030

vector.ph3030:                                    ; preds = %.lr.ph26.i1324.preheader
  %n.vec3031 = and i64 %i.bcu, -8                 ; 3 uses
  %i.bcv = add i64 %.023.i1320, %n.vec3031
  %i.bcw = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1320
  br label %vector.body3032

vector.body3032:                                  ; preds = %vector.body3032, %vector.ph3030
  %index3033 = phi i64 [ 0, %vector.ph3030 ], [ %index.next3036, %vector.body3032 ] ; 2 uses
  %i.bcx = getelementptr [4 x i8], ptr %i.bcw, i64 %index3033 ; 2 uses
  %i.bcy = getelementptr i8, ptr %i.bcx, i64 4    ; 2 uses
  %i.bcz = getelementptr i8, ptr %i.bcx, i64 20   ; 2 uses
  %wide.load3034 = load <4 x i32>, ptr %i.bcy, align 4, !tbaa !44
  %wide.load3035 = load <4 x i32>, ptr %i.bcz, align 4, !tbaa !44
  %i.bda = xor <4 x i32> %wide.load3034, splat (i32 -1)
  %i.bdb = xor <4 x i32> %wide.load3035, splat (i32 -1)
  store <4 x i32> %i.bda, ptr %i.bcy, align 4, !tbaa !44
  store <4 x i32> %i.bdb, ptr %i.bcz, align 4, !tbaa !44
  %index.next3036 = add nuw i64 %index3033, 8     ; 2 uses
  %i.bdc = icmp eq i64 %index.next3036, %n.vec3031
  br i1 %i.bdc, label %middle.block3037, label %vector.body3032, !llvm.loop !227

middle.block3037:                                 ; preds = %vector.body3032
  %cmp.n3038 = icmp eq i64 %i.bcu, %n.vec3031
  br i1 %cmp.n3038, label %bary_2comp.exit1329.thr_comm, label %.lr.ph26.i1324.preheader3245

.lr.ph26.i1324.preheader3245:                     ; preds = %.lr.ph26.i1324.preheader, %middle.block3037
  %.125.i1325.in.ph = phi i64 [ %.023.i1320, %.lr.ph26.i1324.preheader ], [ %i.bcv, %middle.block3037 ]
  br label %.lr.ph26.i1324

.lr.ph26.i1324:                                   ; preds = %.lr.ph26.i1324.preheader3245, %.lr.ph26.i1324
  %.125.i1325.in = phi i64 [ %.125.i1325, %.lr.ph26.i1324 ], [ %.125.i1325.in.ph, %.lr.ph26.i1324.preheader3245 ]
  %.125.i1325 = add nuw i64 %.125.i1325.in, 1     ; 3 uses
  %i.bdd = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1325 ; 2 uses
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !44
  %i.bdf = xor i32 %i.bde, -1
  store i32 %i.bdf, ptr %i.bdd, align 4, !tbaa !44
  %exitcond31.not.i1327 = icmp eq i64 %.125.i1325, %i.j
  br i1 %exitcond31.not.i1327, label %bary_2comp.exit1329.thr_comm, label %.lr.ph26.i1324, !llvm.loop !228

bb.bd:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit71.i.i1349, label %.lr.ph.i.i1335

.lr.ph.i.i1335:                                   ; preds = %bb.bd, %.lr.ph.i.i1335
  %.05779.i.i1336 = phi i64 [ %i.bed, %.lr.ph.i.i1335 ], [ 0, %bb.bd ] ; 5 uses
  %.05878.i.i1337 = phi i64 [ %i.bec, %.lr.ph.i.i1335 ], [ 0, %bb.bd ]
  %i.bdg = getelementptr [4 x i8], ptr %i.af, i64 %.05779.i.i1336
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !44
  %i.bdi = zext i32 %i.bdh to i64
  %i.bdj = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1336
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !44
  %i.bdl = zext i32 %i.bdk to i64
  %i.bdm = add nuw nsw i64 %.05878.i.i1337, %i.bdi
  %i.bdn = add nuw nsw i64 %i.bdm, %i.bdl         ; 2 uses
  %i.bdo = trunc i64 %i.bdn to i32
  %i.bdp = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1336
  store i32 %i.bdo, ptr %i.bdp, align 4, !tbaa !44
  %i.bdq = lshr i64 %i.bdn, 32
  %i.bdr = or disjoint i64 %.05779.i.i1336, 1     ; 3 uses
  %i.bds = getelementptr [4 x i8], ptr %i.af, i64 %i.bdr
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !44
  %i.bdu = zext i32 %i.bdt to i64
  %i.bdv = getelementptr [4 x i8], ptr %i.ah, i64 %i.bdr
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !44
  %i.bdx = zext i32 %i.bdw to i64
  %i.bdy = add nuw nsw i64 %i.bdq, %i.bdu
  %i.bdz = add nuw nsw i64 %i.bdy, %i.bdx         ; 2 uses
  %i.bea = trunc i64 %i.bdz to i32
  %i.beb = getelementptr [4 x i8], ptr %i.al, i64 %i.bdr
  store i32 %i.bea, ptr %i.beb, align 4, !tbaa !44
  %i.bec = lshr i64 %i.bdz, 32                    ; 2 uses
  %i.bed = add nuw i64 %.05779.i.i1336, 2         ; 2 uses
  %exitcond.not.i.i1338.1 = icmp eq i64 %i.bed, %i.j
  br i1 %exitcond.not.i.i1338.1, label %.lr.ph83.i.i1360, label %.lr.ph.i.i1335, !llvm.loop !3

.lr.ph83.i.i1360:                                 ; preds = %.lr.ph.i.i1335
  %i.bee = icmp eq i64 %i.bec, 0
  br i1 %i.bee, label %.loopexit71.i.i1349, label %bary_2comp.exit1329.thr_comm.loopexit2023

bary_2comp.exit1329.thr_comm.loopexit2023:        ; preds = %.lr.ph83.i.i1360
  %i.bef = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.beg = load i32, ptr %i.bef, align 4, !tbaa !44
  %i.beh = add i32 %i.beg, 1
  br label %bary_2comp.exit1329.thr_comm.sink.split

.loopexit71.i.i1349:                              ; preds = %bb.bd, %.lr.ph83.i.i1360
  %i.bei = icmp eq ptr %i.ah, %i.al
  br i1 %i.bei, label %bary_2comp.exit1329.thr_comm, label %.lr.ph91.i.i1357

.lr.ph91.i.i1357:                                 ; preds = %.loopexit71.i.i1349
  %i.bej = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bek = load i32, ptr %i.bej, align 4, !tbaa !44
  br label %bary_2comp.exit1329.thr_comm.sink.split

bary_2comp.exit1329.thr_comm.sink.split:          ; preds = %bary_2comp.exit1329.thr_comm.loopexit2023, %.lr.ph91.i.i1357
  %.sink = phi i32 [ %i.bek, %.lr.ph91.i.i1357 ], [ %i.beh, %bary_2comp.exit1329.thr_comm.loopexit2023 ]
  %i.bel = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %.sink, ptr %i.bel, align 4, !tbaa !44
  br label %bary_2comp.exit1329.thr_comm

bary_2comp.exit1329.thr_comm:                     ; preds = %bb.bb, %.lr.ph26.i1324, %middle.block3037, %bary_2comp.exit1329.thr_comm.sink.split, %.loopexit71.i.i1349, %bb.bc
  br i1 %.0533.shrunk, label %bb.bh, label %bb.be

bary_2comp.exit1329:                              ; preds = %.lr.ph93.i.i1307.prol.loopexit, %.lr.ph93.i.i1307, %middle.block3053, %.loopexit74.i.i1299
  br i1 %.0533.shrunk, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bary_2comp.exit1329.thr_comm, %bary_2comp.exit1329
  %.05341976 = phi i32 [ 0, %bary_2comp.exit1329.thr_comm ], [ 1, %bary_2comp.exit1329 ] ; 3 uses
  %.0534.shrunk1972 = phi i1 [ false, %bary_2comp.exit1329.thr_comm ], [ true, %bary_2comp.exit1329 ] ; 3 uses
  %i.bem = icmp ult i64 %i.f, 3
  br i1 %i.bem, label %.lr.ph.i.i1366.epil, label %.lr.ph.i.i1366

.lr.ph.i.i1366:                                   ; preds = %bb.be, %.lr.ph.i.i1366
  %.078.i.i1367 = phi i64 [ %i.bfi, %.lr.ph.i.i1366 ], [ 0, %bb.be ] ; 4 uses
  %.06277.i.i1368 = phi i64 [ %i.bfh, %.lr.ph.i.i1366 ], [ 0, %bb.be ]
  %niter3511 = phi i64 [ %niter3511.next.1, %.lr.ph.i.i1366 ], [ 0, %bb.be ]
  %i.ben = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1367
  %i.beo = load i32, ptr %i.ben, align 4, !tbaa !44
  %i.bep = zext i32 %i.beo to i64
  %i.beq = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1367 ; 2 uses
  %i.ber = load i32, ptr %i.beq, align 4, !tbaa !44
  %i.bes = zext i32 %i.ber to i64
  %i.bet = sub nsw i64 %i.bep, %i.bes
  %i.beu = add nsw i64 %i.bet, %.06277.i.i1368    ; 2 uses
  %i.bev = trunc i64 %i.beu to i32
  store i32 %i.bev, ptr %i.beq, align 4, !tbaa !44
  %i.bew = ashr i64 %i.beu, 32
  %i.bex = or disjoint i64 %.078.i.i1367, 1       ; 2 uses
  %i.bey = getelementptr [4 x i8], ptr %i.al, i64 %i.bex
  %i.bez = load i32, ptr %i.bey, align 4, !tbaa !44
  %i.bfa = zext i32 %i.bez to i64
  %i.bfb = getelementptr [4 x i8], ptr %i.am, i64 %i.bex ; 2 uses
  %i.bfc = load i32, ptr %i.bfb, align 4, !tbaa !44
  %i.bfd = zext i32 %i.bfc to i64
  %i.bfe = sub nsw i64 %i.bfa, %i.bfd
  %i.bff = add nsw i64 %i.bfe, %i.bew             ; 2 uses
  %i.bfg = trunc i64 %i.bff to i32
  store i32 %i.bfg, ptr %i.bfb, align 4, !tbaa !44
  %i.bfh = ashr i64 %i.bff, 32                    ; 2 uses
  %i.bfi = add nuw i64 %.078.i.i1367, 2           ; 2 uses
  %niter3511.next.1 = add nuw i64 %niter3511, 2   ; 2 uses
  %niter3511.ncmp.1 = icmp eq i64 %niter3511.next.1, %i.j
  br i1 %niter3511.ncmp.1, label %.lr.ph.i.i1366.epil, label %.lr.ph.i.i1366, !llvm.loop !5

.lr.ph.i.i1366.epil:                              ; preds = %bb.be, %.lr.ph.i.i1366
  %.078.i.i1367.epil.init = phi i64 [ 0, %bb.be ], [ %i.bfi, %.lr.ph.i.i1366 ] ; 2 uses
  %.06277.i.i1368.epil.init = phi i64 [ 0, %bb.be ], [ %i.bfh, %.lr.ph.i.i1366 ]
  %i.bfj = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1367.epil.init
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !44
  %i.bfl = zext i32 %i.bfk to i64
  %i.bfm = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1367.epil.init ; 2 uses
  %i.bfn = load i32, ptr %i.bfm, align 4, !tbaa !44
  %i.bfo = zext i32 %i.bfn to i64
  %i.bfp = sub nsw i64 %i.bfl, %i.bfo
  %i.bfq = add nsw i64 %i.bfp, %.06277.i.i1368.epil.init ; 2 uses
  %i.bfr = trunc i64 %i.bfq to i32
  store i32 %i.bfr, ptr %i.bfm, align 4, !tbaa !44
  %i.bfs = icmp ult i64 %i.bfq, 4294967296
  br i1 %i.bfs, label %bary_sub.exit1400.thread, label %.lr.ph.i1401

.lr.ph.i1401:                                     ; preds = %.lr.ph.i.i1366.epil, %bb.bf
  %.023.i1402 = phi i64 [ %i.bfv, %bb.bf ], [ 0, %.lr.ph.i.i1366.epil ] ; 9 uses
  %i.bft = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1402
  %i.bfu = load i32, ptr %i.bft, align 4, !tbaa !44 ; 2 uses
  %.not.i1403 = icmp eq i32 %i.bfu, 0
  br i1 %.not.i1403, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i1401
  %i.bfv = add nuw i64 %.023.i1402, 1
  %exitcond.not.i1410 = icmp eq i64 %.023.i1402, %i.j
  br i1 %exitcond.not.i1410, label %bary_2comp.exit1411, label %.lr.ph.i1401, !llvm.loop !8

bb.bg:                                            ; preds = %.lr.ph.i1401
  %i.bfw = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1402
  %i.bfx = sub i32 0, %i.bfu
  store i32 %i.bfx, ptr %i.bfw, align 4, !tbaa !44
  %i.bfy = icmp ult i64 %.023.i1402, %i.j
  br i1 %i.bfy, label %.lr.ph26.i1406.preheader, label %bary_2comp.exit1411

.lr.ph26.i1406.preheader:                         ; preds = %bb.bg
  %i.bfz = sub nuw i64 %i.j, %.023.i1402          ; 3 uses
  %min.iters.check3057 = icmp ult i64 %i.bfz, 8
  br i1 %min.iters.check3057, label %.lr.ph26.i1406.preheader3238, label %vector.ph3058

vector.ph3058:                                    ; preds = %.lr.ph26.i1406.preheader
  %n.vec3059 = and i64 %i.bfz, -8                 ; 3 uses
  %i.bga = add i64 %.023.i1402, %n.vec3059
  %i.bgb = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1402
  br label %vector.body3060

vector.body3060:                                  ; preds = %vector.body3060, %vector.ph3058
  %index3061 = phi i64 [ 0, %vector.ph3058 ], [ %index.next3064, %vector.body3060 ] ; 2 uses
  %i.bgc = getelementptr [4 x i8], ptr %i.bgb, i64 %index3061 ; 2 uses
  %i.bgd = getelementptr i8, ptr %i.bgc, i64 4    ; 2 uses
  %i.bge = getelementptr i8, ptr %i.bgc, i64 20   ; 2 uses
  %wide.load3062 = load <4 x i32>, ptr %i.bgd, align 4, !tbaa !44
  %wide.load3063 = load <4 x i32>, ptr %i.bge, align 4, !tbaa !44
  %i.bgf = xor <4 x i32> %wide.load3062, splat (i32 -1)
  %i.bgg = xor <4 x i32> %wide.load3063, splat (i32 -1)
  store <4 x i32> %i.bgf, ptr %i.bgd, align 4, !tbaa !44
  store <4 x i32> %i.bgg, ptr %i.bge, align 4, !tbaa !44
  %index.next3064 = add nuw i64 %index3061, 8     ; 2 uses
  %i.bgh = icmp eq i64 %index.next3064, %n.vec3059
  br i1 %i.bgh, label %middle.block3065, label %vector.body3060, !llvm.loop !229

middle.block3065:                                 ; preds = %vector.body3060
  %cmp.n3066 = icmp eq i64 %i.bfz, %n.vec3059
  br i1 %cmp.n3066, label %bary_2comp.exit1411, label %.lr.ph26.i1406.preheader3238

.lr.ph26.i1406.preheader3238:                     ; preds = %.lr.ph26.i1406.preheader, %middle.block3065
  %.125.i1407.in.ph = phi i64 [ %.023.i1402, %.lr.ph26.i1406.preheader ], [ %i.bga, %middle.block3065 ]
  br label %.lr.ph26.i1406

.lr.ph26.i1406:                                   ; preds = %.lr.ph26.i1406.preheader3238, %.lr.ph26.i1406
  %.125.i1407.in = phi i64 [ %.125.i1407, %.lr.ph26.i1406 ], [ %.125.i1407.in.ph, %.lr.ph26.i1406.preheader3238 ]
  %.125.i1407 = add nuw i64 %.125.i1407.in, 1     ; 3 uses
  %i.bgi = getelementptr [4 x i8], ptr %i.am, i64 %.125.i1407 ; 2 uses
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !44
  %i.bgk = xor i32 %i.bgj, -1
  store i32 %i.bgk, ptr %i.bgi, align 4, !tbaa !44
  %exitcond31.not.i1409 = icmp eq i64 %.125.i1407, %i.j
  br i1 %exitcond31.not.i1409, label %bary_2comp.exit1411, label %.lr.ph26.i1406, !llvm.loop !230

bary_2comp.exit1411:                              ; preds = %bb.bf, %.lr.ph26.i1406, %middle.block3065, %bb.bg
  %i.bgl = xor i1 %.0534.shrunk1972, true
  %i.bgm = zext i1 %i.bgl to i32
  br label %bary_sub.exit1400.thread

bb.bh:                                            ; preds = %bary_2comp.exit1329.thr_comm, %bary_2comp.exit1329
  %.05341977 = phi i32 [ 0, %bary_2comp.exit1329.thr_comm ], [ 1, %bary_2comp.exit1329 ] ; 2 uses
  %.0534.shrunk1974 = phi i1 [ false, %bary_2comp.exit1329.thr_comm ], [ true, %bary_2comp.exit1329 ]
  %i.bgn = icmp ult i64 %i.f, 3
  br i1 %i.bgn, label %.lr.ph.i.i1417.epil, label %.lr.ph.i.i1417

.lr.ph.i.i1417:                                   ; preds = %bb.bh, %.lr.ph.i.i1417
  %.05779.i.i1418 = phi i64 [ %i.bhj, %.lr.ph.i.i1417 ], [ 0, %bb.bh ] ; 4 uses
  %.05878.i.i1419 = phi i64 [ %i.bhi, %.lr.ph.i.i1417 ], [ 0, %bb.bh ]
  %niter3502 = phi i64 [ %niter3502.next.1, %.lr.ph.i.i1417 ], [ 0, %bb.bh ]
  %i.bgo = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1418
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !44
  %i.bgq = zext i32 %i.bgp to i64
  %i.bgr = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1418 ; 2 uses
  %i.bgs = load i32, ptr %i.bgr, align 4, !tbaa !44
  %i.bgt = zext i32 %i.bgs to i64
  %i.bgu = add nuw nsw i64 %.05878.i.i1419, %i.bgq
  %i.bgv = add nuw nsw i64 %i.bgu, %i.bgt         ; 2 uses
  %i.bgw = trunc i64 %i.bgv to i32
  store i32 %i.bgw, ptr %i.bgr, align 4, !tbaa !44
  %i.bgx = lshr i64 %i.bgv, 32
  %i.bgy = or disjoint i64 %.05779.i.i1418, 1     ; 2 uses
  %i.bgz = getelementptr [4 x i8], ptr %i.al, i64 %i.bgy
  %i.bha = load i32, ptr %i.bgz, align 4, !tbaa !44
  %i.bhb = zext i32 %i.bha to i64
  %i.bhc = getelementptr [4 x i8], ptr %i.am, i64 %i.bgy ; 2 uses
  %i.bhd = load i32, ptr %i.bhc, align 4, !tbaa !44
  %i.bhe = zext i32 %i.bhd to i64
  %i.bhf = add nuw nsw i64 %i.bgx, %i.bhb
  %i.bhg = add nuw nsw i64 %i.bhf, %i.bhe         ; 2 uses
  %i.bhh = trunc i64 %i.bhg to i32
  store i32 %i.bhh, ptr %i.bhc, align 4, !tbaa !44
  %i.bhi = lshr i64 %i.bhg, 32                    ; 2 uses
  %i.bhj = add nuw i64 %.05779.i.i1418, 2         ; 2 uses
  %niter3502.next.1 = add nuw i64 %niter3502, 2   ; 2 uses
  %niter3502.ncmp.1 = icmp eq i64 %niter3502.next.1, %i.j
  br i1 %niter3502.ncmp.1, label %.lr.ph.i.i1417.epil, label %.lr.ph.i.i1417, !llvm.loop !3

.lr.ph.i.i1417.epil:                              ; preds = %bb.bh, %.lr.ph.i.i1417
  %.05779.i.i1418.epil.init = phi i64 [ 0, %bb.bh ], [ %i.bhj, %.lr.ph.i.i1417 ] ; 2 uses
  %.05878.i.i1419.epil.init = phi i64 [ 0, %bb.bh ], [ %i.bhi, %.lr.ph.i.i1417 ]
  %i.bhk = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1418.epil.init
  %i.bhl = load i32, ptr %i.bhk, align 4, !tbaa !44
  %i.bhm = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1418.epil.init ; 2 uses
  %i.bhn = load i32, ptr %i.bhm, align 4, !tbaa !44
  %i.bho = trunc nuw nsw i64 %.05878.i.i1419.epil.init to i32
  %i.bhp = add i32 %i.bhl, %i.bho
  %i.bhq = add i32 %i.bhp, %i.bhn
  store i32 %i.bhq, ptr %i.bhm, align 4, !tbaa !44
  br label %bary_sub.exit1400.thread

bary_sub.exit1400.thread:                         ; preds = %.lr.ph.i.i1417.epil, %.lr.ph.i.i1366.epil, %bary_2comp.exit1411
  %.05341975 = phi i32 [ %.05341976, %bary_2comp.exit1411 ], [ %.05341976, %.lr.ph.i.i1366.epil ], [ %.05341977, %.lr.ph.i.i1417.epil ] ; 2 uses
  %.0534.shrunk1973 = phi i1 [ %.0534.shrunk1972, %bary_2comp.exit1411 ], [ %.0534.shrunk1972, %.lr.ph.i.i1366.epil ], [ %.0534.shrunk1974, %.lr.ph.i.i1417.epil ]
  %.1 = phi i32 [ %i.bgm, %bary_2comp.exit1411 ], [ %.05341976, %.lr.ph.i.i1366.epil ], [ %.05341977, %.lr.ph.i.i1417.epil ]
  %min.iters.check3069 = icmp ult i64 %i.f, 12
  br i1 %min.iters.check3069, label %scalar.ph3068.preheader, label %vector.ph3070

vector.ph3070:                                    ; preds = %bary_sub.exit1400.thread
  %n.vec3071 = and i64 %i.j, -8                   ; 2 uses
  br label %vector.body3072

vector.body3072:                                  ; preds = %vector.body3072, %vector.ph3070
  %index3073 = phi i64 [ 0, %vector.ph3070 ], [ %index.next3081, %vector.body3072 ] ; 2 uses
  %vector.recur3074 = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph3070 ], [ %i.bhw, %vector.body3072 ]
  %i.bhr = xor i64 %index3073, -1
  %i.bhs = getelementptr [4 x i8], ptr %i.an, i64 %i.bhr ; 2 uses
  %i.bht = getelementptr i8, ptr %i.bhs, i64 -12  ; 2 uses
  %i.bhu = getelementptr i8, ptr %i.bhs, i64 -28  ; 2 uses
  %wide.load3075 = load <4 x i32>, ptr %i.bht, align 4, !tbaa !44
  %wide.load3076 = load <4 x i32>, ptr %i.bhu, align 4, !tbaa !44
  %reverse3077 = shufflevector <4 x i32> %wide.load3075, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3078 = shufflevector <4 x i32> %wide.load3076, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bhv = zext <4 x i32> %reverse3077 to <4 x i64> ; 3 uses
  %i.bhw = zext <4 x i32> %reverse3078 to <4 x i64> ; 4 uses
  %i.bhx = shufflevector <4 x i64> %vector.recur3074, <4 x i64> %i.bhv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bhy = shufflevector <4 x i64> %i.bhv, <4 x i64> %i.bhw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bhz = shl nuw <4 x i64> %i.bhx, splat (i64 32)
  %i.bia = shl nuw <4 x i64> %i.bhy, splat (i64 32)
  %i.bib = or disjoint <4 x i64> %i.bhz, %i.bhv
  %i.bic = or disjoint <4 x i64> %i.bia, %i.bhw
  %i.bid = lshr <4 x i64> %i.bib, splat (i64 1)
  %i.bie = lshr <4 x i64> %i.bic, splat (i64 1)
  %i.bif = trunc <4 x i64> %i.bid to <4 x i32>
  %i.big = trunc <4 x i64> %i.bie to <4 x i32>
  %reverse3079 = shufflevector <4 x i32> %i.bif, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3080 = shufflevector <4 x i32> %i.big, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse3079, ptr %i.bht, align 4, !tbaa !44
  store <4 x i32> %reverse3080, ptr %i.bhu, align 4, !tbaa !44
  %index.next3081 = add nuw i64 %index3073, 8     ; 2 uses
  %i.bih = icmp eq i64 %index.next3081, %n.vec3071
  br i1 %i.bih, label %middle.block3082, label %vector.body3072, !llvm.loop !231

middle.block3082:                                 ; preds = %vector.body3072
  %vector.recur.extract3083 = extractelement <4 x i64> %i.bhw, i64 3
  br label %scalar.ph3068.preheader

scalar.ph3068.preheader:                          ; preds = %middle.block3082, %bary_sub.exit1400.thread
  %.017.i1449.ph = phi i64 [ 0, %bary_sub.exit1400.thread ], [ %n.vec3071, %middle.block3082 ]
  %.014.in16.i1450.ph = phi i64 [ 0, %bary_sub.exit1400.thread ], [ %vector.recur.extract3083, %middle.block3082 ]
  br label %scalar.ph3068

scalar.ph3068:                                    ; preds = %scalar.ph3068.preheader, %scalar.ph3068
  %.017.i1449 = phi i64 [ %i.bip, %scalar.ph3068 ], [ %.017.i1449.ph, %scalar.ph3068.preheader ] ; 3 uses
  %.014.in16.i1450 = phi i64 [ %i.bil, %scalar.ph3068 ], [ %.014.in16.i1450.ph, %scalar.ph3068.preheader ]
  %.014.i1451 = shl nuw i64 %.014.in16.i1450, 32
  %i.bii = xor i64 %.017.i1449, -1
  %i.bij = getelementptr [4 x i8], ptr %i.an, i64 %i.bii ; 2 uses
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !44
  %i.bil = zext i32 %i.bik to i64                 ; 2 uses
  %i.bim = or disjoint i64 %.014.i1451, %i.bil
  %i.bin = lshr i64 %i.bim, 1
  %i.bio = trunc i64 %i.bin to i32
  store i32 %i.bio, ptr %i.bij, align 4, !tbaa !44
  %i.bip = add nuw i64 %.017.i1449, 1
  %exitcond.not.i1452 = icmp eq i64 %.017.i1449, %i.j
  br i1 %exitcond.not.i1452, label %bary_small_rshift.exit1453, label %scalar.ph3068, !llvm.loop !232

bary_small_rshift.exit1453:                       ; preds = %scalar.ph3068
  %.not581 = icmp eq i32 %.1, 0
  br i1 %.not581, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bary_small_rshift.exit1453
  br i1 %.not97.i.i, label %bary_2comp.exit1471, label %.lr.ph.i1454

.preheader.i:                                     ; preds = %bb.bj
  %i.biq = icmp eq i64 %i.bjb, 0
  br i1 %i.biq, label %bary_2comp.exit1471, label %.lr.ph41.i

.lr.ph.i1454:                                     ; preds = %bb.bi, %.lr.ph.i1454.backedge
  %.036.i = phi i64 [ %.036.i.be, %.lr.ph.i1454.backedge ], [ 0, %bb.bi ] ; 4 uses
  %.03035.i = phi i64 [ %.03035.i.be, %.lr.ph.i1454.backedge ], [ 0, %bb.bi ]
  %i.bir = getelementptr [4 x i8], ptr %i.aj, i64 %.036.i
  %i.bis = load i32, ptr %i.bir, align 4, !tbaa !44
  %i.bit = zext i32 %i.bis to i64
  %i.biu = shl nuw nsw i64 %i.bit, 1
  %i.biv = add nuw nsw i64 %i.biu, %.03035.i      ; 2 uses
  %.not.i1455 = icmp eq i64 %i.biv, 0
  br i1 %.not.i1455, label %.thread2490, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i1454
  %i.biw = getelementptr [4 x i8], ptr %i.am, i64 %.036.i ; 2 uses
  %i.bix = load i32, ptr %i.biw, align 4, !tbaa !44
  %i.biy = zext i32 %i.bix to i64
  %i.biz = add nuw nsw i64 %i.biv, %i.biy         ; 2 uses
  %i.bja = trunc i64 %i.biz to i32
  store i32 %i.bja, ptr %i.biw, align 4, !tbaa !44
  %i.bjb = lshr i64 %i.biz, 32                    ; 3 uses
  %i.bjc = add nuw i64 %.036.i, 1                 ; 2 uses
  %exitcond.not.i1456 = icmp eq i64 %i.bjc, %i.j
  br i1 %exitcond.not.i1456, label %.preheader.i, label %.lr.ph.i1454.backedge

.lr.ph.i1454.backedge:                            ; preds = %bb.bj, %.thread2490
  %.036.i.be = phi i64 [ %i.bjd, %.thread2490 ], [ %i.bjc, %bb.bj ]
  %.03035.i.be = phi i64 [ 0, %.thread2490 ], [ %i.bjb, %bb.bj ]
  br label %.lr.ph.i1454, !llvm.loop !0

.thread2490:                                      ; preds = %.lr.ph.i1454
  %i.bjd = add nuw i64 %.036.i, 1                 ; 2 uses
  %exitcond.not.i14562492 = icmp eq i64 %i.bjd, %i.j
  br i1 %exitcond.not.i14562492, label %bary_2comp.exit1471, label %.lr.ph.i1454.backedge

.lr.ph41.i:                                       ; preds = %.preheader.i
  %i.bje = getelementptr [4 x i8], ptr %i.am, i64 %i.j ; 2 uses
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !44
  %i.bjg = trunc nuw nsw i64 %i.bjb to i32
  %i.bjh = add i32 %i.bjf, %i.bjg
  store i32 %i.bjh, ptr %i.bje, align 4, !tbaa !44
  br label %bary_2comp.exit1471

bb.bk:                                            ; preds = %bary_small_rshift.exit1453
  %umax.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -6148914691236517205) %i.j, i64 1)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %bb.bk
  %.023.i.i = phi i64 [ 0, %bb.bk ], [ %i.bjw, %bb.bn ] ; 3 uses
  %.022.i.i = phi i64 [ 0, %bb.bk ], [ %i.bjv, %bb.bn ]
  %.0.i.i1457 = phi i64 [ 0, %bb.bk ], [ %i.bju, %bb.bn ] ; 2 uses
  %i.bji = getelementptr [4 x i8], ptr %i.aj, i64 %.023.i.i
  %i.bjj = load i32, ptr %i.bji, align 4, !tbaa !44
  %i.bjk = zext i32 %i.bjj to i64
  %i.bjl = shl nuw nsw i64 %i.bjk, 1
  %i.bjm = add nuw nsw i64 %i.bjl, %.022.i.i      ; 2 uses
  %i.bjn = and i64 %i.bjm, 4294967295             ; 2 uses
  %i.bjo = sub nsw i64 %.0.i.i1457, %i.bjn
  %i.bjp = getelementptr [4 x i8], ptr %i.am, i64 %.023.i.i ; 2 uses
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !44
  %i.bjr = zext i32 %i.bjq to i64
  %i.bjs = add nsw i64 %i.bjo, %i.bjr             ; 2 uses
  %.not.i.i1458 = icmp eq i64 %.0.i.i1457, %i.bjn
  br i1 %.not.i.i1458, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.bjt = trunc i64 %i.bjs to i32
  store i32 %i.bjt, ptr %i.bjp, align 4, !tbaa !44
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.bju = ashr i64 %i.bjs, 32                    ; 2 uses
  %i.bjv = lshr i64 %i.bjm, 32                    ; 2 uses
  %i.bjw = add nuw i64 %.023.i.i, 1               ; 2 uses
  %exitcond.not.i.i1459 = icmp eq i64 %i.bjw, %umax.i.i
  br i1 %exitcond.not.i.i1459, label %bary_mulsub_1xN.exit, label %bb.bl, !llvm.loop !12

bary_mulsub_1xN.exit:                             ; preds = %bb.bn
  %i.bjx = sub nsw i64 %i.bju, %i.bjv
  %i.bjy = getelementptr [4 x i8], ptr %i.am, i64 %i.j ; 2 uses
  %i.bjz = load i32, ptr %i.bjy, align 4, !tbaa !44
  %i.bka = zext i32 %i.bjz to i64
  %i.bkb = add nsw i64 %i.bjx, %i.bka             ; 2 uses
  %i.bkc = trunc i64 %i.bkb to i32
  store i32 %i.bkc, ptr %i.bjy, align 4, !tbaa !44
  %.not.i1460 = icmp ult i64 %i.bkb, 4294967296
  br i1 %.not.i1460, label %bary_2comp.exit1471, label %.lr.ph.i1461

.lr.ph.i1461:                                     ; preds = %bary_mulsub_1xN.exit, %bb.bo
  %.023.i1462 = phi i64 [ %i.bkf, %bb.bo ], [ 0, %bary_mulsub_1xN.exit ] ; 9 uses
  %i.bkd = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1462
  %i.bke = load i32, ptr %i.bkd, align 4, !tbaa !44 ; 2 uses
  %.not.i1463 = icmp eq i32 %i.bke, 0
  br i1 %.not.i1463, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i1461
  %i.bkf = add nuw i64 %.023.i1462, 1
  %exitcond.not.i1470 = icmp eq i64 %.023.i1462, %i.j
  br i1 %exitcond.not.i1470, label %bary_2comp.exit1471, label %.lr.ph.i1461, !llvm.loop !8

bb.bp:                                            ; preds = %.lr.ph.i1461
  %i.bkg = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1462
  %i.bkh = sub i32 0, %i.bke
  store i32 %i.bkh, ptr %i.bkg, align 4, !tbaa !44
  %i.bki = icmp ult i64 %.023.i1462, %i.j
  br i1 %i.bki, label %.lr.ph26.i1466.preheader, label %bary_2comp.exit1471

.lr.ph26.i1466.preheader:                         ; preds = %bb.bp
  %i.bkj = sub nuw i64 %i.j, %.023.i1462          ; 3 uses
  %min.iters.check3088 = icmp ult i64 %i.bkj, 8
  br i1 %min.iters.check3088, label %.lr.ph26.i1466.preheader3228, label %vector.ph3089

vector.ph3089:                                    ; preds = %.lr.ph26.i1466.preheader
  %n.vec3090 = and i64 %i.bkj, -8                 ; 3 uses
  %i.bkk = add i64 %.023.i1462, %n.vec3090
  %i.bkl = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1462
  br label %vector.body3091

vector.body3091:                                  ; preds = %vector.body3091, %vector.ph3089
  %index3092 = phi i64 [ 0, %vector.ph3089 ], [ %index.next3095, %vector.body3091 ] ; 2 uses
  %i.bkm = getelementptr [4 x i8], ptr %i.bkl, i64 %index3092 ; 2 uses
  %i.bkn = getelementptr i8, ptr %i.bkm, i64 4    ; 2 uses
  %i.bko = getelementptr i8, ptr %i.bkm, i64 20   ; 2 uses
  %wide.load3093 = load <4 x i32>, ptr %i.bkn, align 4, !tbaa !44
  %wide.load3094 = load <4 x i32>, ptr %i.bko, align 4, !tbaa !44
  %i.bkp = xor <4 x i32> %wide.load3093, splat (i32 -1)
  %i.bkq = xor <4 x i32> %wide.load3094, splat (i32 -1)
  store <4 x i32> %i.bkp, ptr %i.bkn, align 4, !tbaa !44
  store <4 x i32> %i.bkq, ptr %i.bko, align 4, !tbaa !44
  %index.next3095 = add nuw i64 %index3092, 8     ; 2 uses
  %i.bkr = icmp eq i64 %index.next3095, %n.vec3090
  br i1 %i.bkr, label %middle.block3096, label %vector.body3091, !llvm.loop !233

middle.block3096:                                 ; preds = %vector.body3091
  %cmp.n3097 = icmp eq i64 %i.bkj, %n.vec3090
  br i1 %cmp.n3097, label %bary_2comp.exit1471, label %.lr.ph26.i1466.preheader3228

.lr.ph26.i1466.preheader3228:                     ; preds = %.lr.ph26.i1466.preheader, %middle.block3096
  %.125.i1467.in.ph = phi i64 [ %.023.i1462, %.lr.ph26.i1466.preheader ], [ %i.bkk, %middle.block3096 ]
  br label %.lr.ph26.i1466

.lr.ph26.i1466:                                   ; preds = %.lr.ph26.i1466.preheader3228, %.lr.ph26.i1466
  %.125.i1467.in = phi i64 [ %.125.i1467, %.lr.ph26.i1466 ], [ %.125.i1467.in.ph, %.lr.ph26.i1466.preheader3228 ]
  %.125.i1467 = add nuw i64 %.125.i1467.in, 1     ; 3 uses
  %i.bks = getelementptr [4 x i8], ptr %i.am, i64 %.125.i1467 ; 2 uses
  %i.bkt = load i32, ptr %i.bks, align 4, !tbaa !44
  %i.bku = xor i32 %i.bkt, -1
  store i32 %i.bku, ptr %i.bks, align 4, !tbaa !44
  %exitcond31.not.i1469 = icmp eq i64 %.125.i1467, %i.j
  br i1 %exitcond31.not.i1469, label %bary_2comp.exit1471, label %.lr.ph26.i1466, !llvm.loop !234

bary_2comp.exit1471:                              ; preds = %.thread2490, %bb.bo, %.lr.ph26.i1466, %middle.block3096, %.lr.ph41.i, %.preheader.i, %bb.bi, %bb.bp, %bary_mulsub_1xN.exit
  %.not592 = phi i1 [ false, %middle.block3096 ], [ true, %bary_mulsub_1xN.exit ], [ false, %.lr.ph41.i ], [ false, %bb.bp ], [ false, %bb.bi ], [ false, %.preheader.i ], [ false, %bb.bo ], [ false, %.lr.ph26.i1466 ], [ false, %.thread2490 ]
  %.2 = phi i32 [ 1, %middle.block3096 ], [ 0, %bary_mulsub_1xN.exit ], [ 1, %.lr.ph41.i ], [ 1, %bb.bp ], [ 1, %bb.bi ], [ 1, %.preheader.i ], [ 1, %bb.bo ], [ 1, %.lr.ph26.i1466 ], [ 1, %.thread2490 ]
  %i.bkv = icmp eq i32 %.0537, %.05341975
  br i1 %i.bkv, label %.lr.ph.i.i1477.preheader, label %.lr.ph.i.i1508.preheader

.lr.ph.i.i1508.preheader:                         ; preds = %bary_2comp.exit1471
  %i.bkw = icmp ult i64 %i.f, 3
  br i1 %i.bkw, label %.lr.ph.i.i1508.epil, label %.lr.ph.i.i1508

.lr.ph.i.i1477.preheader:                         ; preds = %bary_2comp.exit1471
  %i.bkx = icmp ult i64 %i.f, 3
  br i1 %i.bkx, label %.lr.ph.i.i1477.epil, label %.lr.ph.i.i1477

.lr.ph.i.i1477:                                   ; preds = %.lr.ph.i.i1477.preheader, %.lr.ph.i.i1477
  %.05779.i.i1478 = phi i64 [ %i.blt, %.lr.ph.i.i1477 ], [ 0, %.lr.ph.i.i1477.preheader ] ; 4 uses
  %.05878.i.i1479 = phi i64 [ %i.bls, %.lr.ph.i.i1477 ], [ 0, %.lr.ph.i.i1477.preheader ]
  %niter3524 = phi i64 [ %niter3524.next.1, %.lr.ph.i.i1477 ], [ 0, %.lr.ph.i.i1477.preheader ]
  %i.bky = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1478 ; 2 uses
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !44
  %i.bla = zext i32 %i.bkz to i64
  %i.blb = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1478
  %i.blc = load i32, ptr %i.blb, align 4, !tbaa !44
  %i.bld = zext i32 %i.blc to i64
  %i.ble = add nuw nsw i64 %.05878.i.i1479, %i.bla
  %i.blf = add nuw nsw i64 %i.ble, %i.bld         ; 2 uses
  %i.blg = trunc i64 %i.blf to i32
  store i32 %i.blg, ptr %i.bky, align 4, !tbaa !44
  %i.blh = lshr i64 %i.blf, 32
  %i.bli = or disjoint i64 %.05779.i.i1478, 1     ; 2 uses
  %i.blj = getelementptr [4 x i8], ptr %i.al, i64 %i.bli ; 2 uses
  %i.blk = load i32, ptr %i.blj, align 4, !tbaa !44
  %i.bll = zext i32 %i.blk to i64
  %i.blm = getelementptr [4 x i8], ptr %i.ak, i64 %i.bli
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !44
  %i.blo = zext i32 %i.bln to i64
  %i.blp = add nuw nsw i64 %i.blh, %i.bll
  %i.blq = add nuw nsw i64 %i.blp, %i.blo         ; 2 uses
  %i.blr = trunc i64 %i.blq to i32
  store i32 %i.blr, ptr %i.blj, align 4, !tbaa !44
  %i.bls = lshr i64 %i.blq, 32                    ; 2 uses
  %i.blt = add nuw i64 %.05779.i.i1478, 2         ; 2 uses
  %niter3524.next.1 = add nuw i64 %niter3524, 2   ; 2 uses
  %niter3524.ncmp.1 = icmp eq i64 %niter3524.next.1, %i.j
  br i1 %niter3524.ncmp.1, label %.lr.ph.i.i1477.epil, label %.lr.ph.i.i1477, !llvm.loop !3

.lr.ph.i.i1508:                                   ; preds = %.lr.ph.i.i1508.preheader, %.lr.ph.i.i1508
  %.078.i.i1509 = phi i64 [ %i.bmp, %.lr.ph.i.i1508 ], [ 0, %.lr.ph.i.i1508.preheader ] ; 4 uses
  %.06277.i.i1510 = phi i64 [ %i.bmo, %.lr.ph.i.i1508 ], [ 0, %.lr.ph.i.i1508.preheader ]
  %niter3518 = phi i64 [ %niter3518.next.1, %.lr.ph.i.i1508 ], [ 0, %.lr.ph.i.i1508.preheader ]
  %i.blu = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1509 ; 2 uses
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !44
  %i.blw = zext i32 %i.blv to i64
  %i.blx = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1509
  %i.bly = load i32, ptr %i.blx, align 4, !tbaa !44
  %i.blz = zext i32 %i.bly to i64
  %i.bma = sub nsw i64 %i.blw, %i.blz
  %i.bmb = add nsw i64 %i.bma, %.06277.i.i1510    ; 2 uses
  %i.bmc = trunc i64 %i.bmb to i32
  store i32 %i.bmc, ptr %i.blu, align 4, !tbaa !44
  %i.bmd = ashr i64 %i.bmb, 32
  %i.bme = or disjoint i64 %.078.i.i1509, 1       ; 2 uses
  %i.bmf = getelementptr [4 x i8], ptr %i.al, i64 %i.bme ; 2 uses
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !44
  %i.bmh = zext i32 %i.bmg to i64
  %i.bmi = getelementptr [4 x i8], ptr %i.ak, i64 %i.bme
  %i.bmj = load i32, ptr %i.bmi, align 4, !tbaa !44
  %i.bmk = zext i32 %i.bmj to i64
  %i.bml = sub nsw i64 %i.bmh, %i.bmk
  %i.bmm = add nsw i64 %i.bml, %i.bmd             ; 2 uses
  %i.bmn = trunc i64 %i.bmm to i32
  store i32 %i.bmn, ptr %i.bmf, align 4, !tbaa !44
  %i.bmo = ashr i64 %i.bmm, 32                    ; 2 uses
  %i.bmp = add nuw i64 %.078.i.i1509, 2           ; 2 uses
  %niter3518.next.1 = add nuw i64 %niter3518, 2   ; 2 uses
  %niter3518.ncmp.1 = icmp eq i64 %niter3518.next.1, %i.j
  br i1 %niter3518.ncmp.1, label %.lr.ph.i.i1508.epil, label %.lr.ph.i.i1508, !llvm.loop !5

.lr.ph.i.i1508.epil:                              ; preds = %.lr.ph.i.i1508.preheader, %.lr.ph.i.i1508
  %.078.i.i1509.epil.init = phi i64 [ 0, %.lr.ph.i.i1508.preheader ], [ %i.bmp, %.lr.ph.i.i1508 ] ; 2 uses
  %.06277.i.i1510.epil.init = phi i64 [ 0, %.lr.ph.i.i1508.preheader ], [ %i.bmo, %.lr.ph.i.i1508 ]
  %i.bmq = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1509.epil.init ; 2 uses
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !44
  %i.bms = zext i32 %i.bmr to i64
  %i.bmt = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1509.epil.init
  %i.bmu = load i32, ptr %i.bmt, align 4, !tbaa !44
  %i.bmv = zext i32 %i.bmu to i64
  %i.bmw = sub nsw i64 %i.bms, %i.bmv
  %i.bmx = add nsw i64 %i.bmw, %.06277.i.i1510.epil.init ; 2 uses
  %i.bmy = trunc i64 %i.bmx to i32
  store i32 %i.bmy, ptr %i.bmq, align 4, !tbaa !44
  %i.bmz = icmp ult i64 %i.bmx, 4294967296
  br i1 %i.bmz, label %bary_sub.exit1542.thread, label %.lr.ph.i1543

.lr.ph.i1543:                                     ; preds = %.lr.ph.i.i1508.epil, %bb.bq
  %.023.i1544 = phi i64 [ %i.bnc, %bb.bq ], [ 0, %.lr.ph.i.i1508.epil ] ; 9 uses
  %i.bna = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1544
  %i.bnb = load i32, ptr %i.bna, align 4, !tbaa !44 ; 2 uses
  %.not.i1545 = icmp eq i32 %i.bnb, 0
  br i1 %.not.i1545, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i1543
  %i.bnc = add nuw i64 %.023.i1544, 1
  %exitcond.not.i1552 = icmp eq i64 %.023.i1544, %i.j
  br i1 %exitcond.not.i1552, label %bary_2comp.exit1553, label %.lr.ph.i1543, !llvm.loop !8

bb.br:                                            ; preds = %.lr.ph.i1543
  %i.bnd = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1544
  %i.bne = sub i32 0, %i.bnb
  store i32 %i.bne, ptr %i.bnd, align 4, !tbaa !44
  %i.bnf = icmp ult i64 %.023.i1544, %i.j
  br i1 %i.bnf, label %.lr.ph26.i1548.preheader, label %bary_2comp.exit1553

.lr.ph26.i1548.preheader:                         ; preds = %bb.br
  %i.bng = sub nuw i64 %i.j, %.023.i1544          ; 3 uses
  %min.iters.check3100 = icmp ult i64 %i.bng, 8
  br i1 %min.iters.check3100, label %.lr.ph26.i1548.preheader3222, label %vector.ph3101

vector.ph3101:                                    ; preds = %.lr.ph26.i1548.preheader
  %n.vec3102 = and i64 %i.bng, -8                 ; 3 uses
  %i.bnh = add i64 %.023.i1544, %n.vec3102
  %i.bni = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1544
  br label %vector.body3103

vector.body3103:                                  ; preds = %vector.body3103, %vector.ph3101
  %index3104 = phi i64 [ 0, %vector.ph3101 ], [ %index.next3107, %vector.body3103 ] ; 2 uses
  %i.bnj = getelementptr [4 x i8], ptr %i.bni, i64 %index3104 ; 2 uses
  %i.bnk = getelementptr i8, ptr %i.bnj, i64 4    ; 2 uses
  %i.bnl = getelementptr i8, ptr %i.bnj, i64 20   ; 2 uses
  %wide.load3105 = load <4 x i32>, ptr %i.bnk, align 4, !tbaa !44
  %wide.load3106 = load <4 x i32>, ptr %i.bnl, align 4, !tbaa !44
  %i.bnm = xor <4 x i32> %wide.load3105, splat (i32 -1)
  %i.bnn = xor <4 x i32> %wide.load3106, splat (i32 -1)
  store <4 x i32> %i.bnm, ptr %i.bnk, align 4, !tbaa !44
  store <4 x i32> %i.bnn, ptr %i.bnl, align 4, !tbaa !44
  %index.next3107 = add nuw i64 %index3104, 8     ; 2 uses
  %i.bno = icmp eq i64 %index.next3107, %n.vec3102
  br i1 %i.bno, label %middle.block3108, label %vector.body3103, !llvm.loop !235

middle.block3108:                                 ; preds = %vector.body3103
  %cmp.n3109 = icmp eq i64 %i.bng, %n.vec3102
  br i1 %cmp.n3109, label %bary_2comp.exit1553, label %.lr.ph26.i1548.preheader3222

.lr.ph26.i1548.preheader3222:                     ; preds = %.lr.ph26.i1548.preheader, %middle.block3108
  %.125.i1549.in.ph = phi i64 [ %.023.i1544, %.lr.ph26.i1548.preheader ], [ %i.bnh, %middle.block3108 ]
  br label %.lr.ph26.i1548

.lr.ph26.i1548:                                   ; preds = %.lr.ph26.i1548.preheader3222, %.lr.ph26.i1548
  %.125.i1549.in = phi i64 [ %.125.i1549, %.lr.ph26.i1548 ], [ %.125.i1549.in.ph, %.lr.ph26.i1548.preheader3222 ]
  %.125.i1549 = add nuw i64 %.125.i1549.in, 1     ; 3 uses
  %i.bnp = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1549 ; 2 uses
  %i.bnq = load i32, ptr %i.bnp, align 4, !tbaa !44
  %i.bnr = xor i32 %i.bnq, -1
  store i32 %i.bnr, ptr %i.bnp, align 4, !tbaa !44
  %exitcond31.not.i1551 = icmp eq i64 %.125.i1549, %i.j
  br i1 %exitcond31.not.i1551, label %bary_2comp.exit1553, label %.lr.ph26.i1548, !llvm.loop !236

bary_2comp.exit1553:                              ; preds = %bb.bq, %.lr.ph26.i1548, %middle.block3108, %bb.br
  %i.bns = xor i1 %.0534.shrunk1973, true
  %i.bnt = zext i1 %i.bns to i32
  br label %bary_sub.exit1542.thread

.lr.ph.i.i1477.epil:                              ; preds = %.lr.ph.i.i1477.preheader, %.lr.ph.i.i1477
  %.05779.i.i1478.epil.init = phi i64 [ 0, %.lr.ph.i.i1477.preheader ], [ %i.blt, %.lr.ph.i.i1477 ] ; 2 uses
  %.05878.i.i1479.epil.init = phi i64 [ 0, %.lr.ph.i.i1477.preheader ], [ %i.bls, %.lr.ph.i.i1477 ]
  %i.bnu = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1478.epil.init ; 2 uses
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !44
  %i.bnw = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1478.epil.init
  %i.bnx = load i32, ptr %i.bnw, align 4, !tbaa !44
  %i.bny = trunc nuw nsw i64 %.05878.i.i1479.epil.init to i32
  %i.bnz = add i32 %i.bnv, %i.bny
  %i.boa = add i32 %i.bnz, %i.bnx
  store i32 %i.boa, ptr %i.bnu, align 4, !tbaa !44
  br label %bary_sub.exit1542.thread

bary_sub.exit1542.thread:                         ; preds = %.lr.ph.i.i1477.epil, %.lr.ph.i.i1508.epil, %bary_2comp.exit1553
  %.1535 = phi i32 [ %.05341975, %.lr.ph.i.i1508.epil ], [ %i.bnt, %bary_2comp.exit1553 ], [ %.0537, %.lr.ph.i.i1477.epil ]
  %.not584 = icmp eq i32 %.1535, 0
  br i1 %.not584, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bary_sub.exit1542.thread
  br i1 %.not97.i.i, label %bary_2comp.exit1600, label %.lr.ph.i.i1555

.lr.ph.i.i1555:                                   ; preds = %bb.bs, %.lr.ph.i.i1555
  %.078.i.i1556 = phi i64 [ %i.bow, %.lr.ph.i.i1555 ], [ 0, %bb.bs ] ; 4 uses
  %.06277.i.i1557 = phi i64 [ %i.bov, %.lr.ph.i.i1555 ], [ 0, %bb.bs ]
  %i.bob = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1556 ; 2 uses
  %i.boc = load i32, ptr %i.bob, align 4, !tbaa !44
  %i.bod = zext i32 %i.boc to i64
  %i.boe = getelementptr [4 x i8], ptr %i.aj, i64 %.078.i.i1556
  %i.bof = load i32, ptr %i.boe, align 4, !tbaa !44
  %i.bog = zext i32 %i.bof to i64
  %i.boh = sub nsw i64 %i.bod, %i.bog
  %i.boi = add nsw i64 %i.boh, %.06277.i.i1557    ; 2 uses
  %i.boj = trunc i64 %i.boi to i32
  store i32 %i.boj, ptr %i.bob, align 4, !tbaa !44
  %i.bok = ashr i64 %i.boi, 32
  %i.bol = or disjoint i64 %.078.i.i1556, 1       ; 2 uses
  %i.bom = getelementptr [4 x i8], ptr %i.al, i64 %i.bol ; 2 uses
  %i.bon = load i32, ptr %i.bom, align 4, !tbaa !44
  %i.boo = zext i32 %i.bon to i64
  %i.bop = getelementptr [4 x i8], ptr %i.aj, i64 %i.bol
  %i.boq = load i32, ptr %i.bop, align 4, !tbaa !44
  %i.bor = zext i32 %i.boq to i64
  %i.bos = sub nsw i64 %i.boo, %i.bor
  %i.bot = add nsw i64 %i.bos, %i.bok             ; 2 uses
  %i.bou = trunc i64 %i.bot to i32
  store i32 %i.bou, ptr %i.bom, align 4, !tbaa !44
  %i.bov = ashr i64 %i.bot, 32                    ; 2 uses
  %i.bow = add nuw i64 %.078.i.i1556, 2           ; 2 uses
  %exitcond.not.i.i1558.1 = icmp eq i64 %i.bow, %i.j
  br i1 %exitcond.not.i.i1558.1, label %.lr.ph82.i.i1581, label %.lr.ph.i.i1555, !llvm.loop !5

.lr.ph82.i.i1581:                                 ; preds = %.lr.ph.i.i1555
  %i.box = icmp eq i64 %i.bov, 0
  br i1 %i.box, label %bary_2comp.exit1600, label %.loopexit71.i.i1563

.loopexit71.i.i1563:                              ; preds = %.lr.ph82.i.i1581
  %i.boy = getelementptr [4 x i8], ptr %i.al, i64 %i.j ; 2 uses
  %i.boz = load i32, ptr %i.boy, align 4, !tbaa !44
  %i.bpa = zext i32 %i.boz to i64
  %i.bpb = add nsw i64 %i.bpa, -1                 ; 2 uses
  %i.bpc = trunc i64 %i.bpb to i32
  store i32 %i.bpc, ptr %i.boy, align 4, !tbaa !44
  %i.bpd = icmp ult i64 %i.bpb, 4294967296
  br i1 %i.bpd, label %bary_2comp.exit1600, label %.lr.ph.i1590

.lr.ph.i1590:                                     ; preds = %.loopexit71.i.i1563, %bb.bt
  %.023.i1591 = phi i64 [ %i.bpg, %bb.bt ], [ 0, %.loopexit71.i.i1563 ] ; 9 uses
  %i.bpe = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1591
  %i.bpf = load i32, ptr %i.bpe, align 4, !tbaa !44 ; 2 uses
  %.not.i1592 = icmp eq i32 %i.bpf, 0
  br i1 %.not.i1592, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i1590
  %i.bpg = add nuw i64 %.023.i1591, 1
  %exitcond.not.i1599 = icmp eq i64 %.023.i1591, %i.j
  br i1 %exitcond.not.i1599, label %bary_2comp.exit1600, label %.lr.ph.i1590, !llvm.loop !8

bb.bu:                                            ; preds = %.lr.ph.i1590
  %i.bph = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1591
  %i.bpi = sub i32 0, %i.bpf
  store i32 %i.bpi, ptr %i.bph, align 4, !tbaa !44
  %i.bpj = icmp ult i64 %.023.i1591, %i.j
  br i1 %i.bpj, label %.lr.ph26.i1595.preheader, label %bary_2comp.exit1600

.lr.ph26.i1595.preheader:                         ; preds = %bb.bu
  %i.bpk = sub nuw i64 %i.j, %.023.i1591          ; 3 uses
  %min.iters.check3112 = icmp ult i64 %i.bpk, 8
  br i1 %min.iters.check3112, label %.lr.ph26.i1595.preheader3216, label %vector.ph3113

vector.ph3113:                                    ; preds = %.lr.ph26.i1595.preheader
  %n.vec3114 = and i64 %i.bpk, -8                 ; 3 uses
  %i.bpl = add i64 %.023.i1591, %n.vec3114
  %i.bpm = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1591
  br label %vector.body3115

vector.body3115:                                  ; preds = %vector.body3115, %vector.ph3113
  %index3116 = phi i64 [ 0, %vector.ph3113 ], [ %index.next3119, %vector.body3115 ] ; 2 uses
  %i.bpn = getelementptr [4 x i8], ptr %i.bpm, i64 %index3116 ; 2 uses
  %i.bpo = getelementptr i8, ptr %i.bpn, i64 4    ; 2 uses
  %i.bpp = getelementptr i8, ptr %i.bpn, i64 20   ; 2 uses
  %wide.load3117 = load <4 x i32>, ptr %i.bpo, align 4, !tbaa !44
  %wide.load3118 = load <4 x i32>, ptr %i.bpp, align 4, !tbaa !44
  %i.bpq = xor <4 x i32> %wide.load3117, splat (i32 -1)
  %i.bpr = xor <4 x i32> %wide.load3118, splat (i32 -1)
  store <4 x i32> %i.bpq, ptr %i.bpo, align 4, !tbaa !44
  store <4 x i32> %i.bpr, ptr %i.bpp, align 4, !tbaa !44
  %index.next3119 = add nuw i64 %index3116, 8     ; 2 uses
  %i.bps = icmp eq i64 %index.next3119, %n.vec3114
  br i1 %i.bps, label %middle.block3120, label %vector.body3115, !llvm.loop !237

middle.block3120:                                 ; preds = %vector.body3115
  %cmp.n3121 = icmp eq i64 %i.bpk, %n.vec3114
  br i1 %cmp.n3121, label %bary_2comp.exit1600, label %.lr.ph26.i1595.preheader3216

.lr.ph26.i1595.preheader3216:                     ; preds = %.lr.ph26.i1595.preheader, %middle.block3120
  %.125.i1596.in.ph = phi i64 [ %.023.i1591, %.lr.ph26.i1595.preheader ], [ %i.bpl, %middle.block3120 ]
  br label %.lr.ph26.i1595

.lr.ph26.i1595:                                   ; preds = %.lr.ph26.i1595.preheader3216, %.lr.ph26.i1595
  %.125.i1596.in = phi i64 [ %.125.i1596, %.lr.ph26.i1595 ], [ %.125.i1596.in.ph, %.lr.ph26.i1595.preheader3216 ]
  %.125.i1596 = add nuw i64 %.125.i1596.in, 1     ; 3 uses
  %i.bpt = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1596 ; 2 uses
  %i.bpu = load i32, ptr %i.bpt, align 4, !tbaa !44
  %i.bpv = xor i32 %i.bpu, -1
  store i32 %i.bpv, ptr %i.bpt, align 4, !tbaa !44
  %exitcond31.not.i1598 = icmp eq i64 %.125.i1596, %i.j
  br i1 %exitcond31.not.i1598, label %bary_2comp.exit1600, label %.lr.ph26.i1595, !llvm.loop !238

bb.bv:                                            ; preds = %bary_sub.exit1542.thread
  br i1 %.not97.i.i, label %bary_2comp.exit1600, label %.lr.ph.i.i1606

.lr.ph.i.i1606:                                   ; preds = %bb.bv, %.lr.ph.i.i1606
  %.05779.i.i1607 = phi i64 [ %i.bqr, %.lr.ph.i.i1606 ], [ 0, %bb.bv ] ; 4 uses
  %.05878.i.i1608 = phi i64 [ %i.bqq, %.lr.ph.i.i1606 ], [ 0, %bb.bv ]
  %i.bpw = getelementptr [4 x i8], ptr %i.aj, i64 %.05779.i.i1607
  %i.bpx = load i32, ptr %i.bpw, align 4, !tbaa !44
  %i.bpy = zext i32 %i.bpx to i64
  %i.bpz = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1607 ; 2 uses
  %i.bqa = load i32, ptr %i.bpz, align 4, !tbaa !44
  %i.bqb = zext i32 %i.bqa to i64
  %i.bqc = add nuw nsw i64 %.05878.i.i1608, %i.bpy
  %i.bqd = add nuw nsw i64 %i.bqc, %i.bqb         ; 2 uses
  %i.bqe = trunc i64 %i.bqd to i32
  store i32 %i.bqe, ptr %i.bpz, align 4, !tbaa !44
  %i.bqf = lshr i64 %i.bqd, 32
  %i.bqg = or disjoint i64 %.05779.i.i1607, 1     ; 2 uses
  %i.bqh = getelementptr [4 x i8], ptr %i.aj, i64 %i.bqg
  %i.bqi = load i32, ptr %i.bqh, align 4, !tbaa !44
  %i.bqj = zext i32 %i.bqi to i64
  %i.bqk = getelementptr [4 x i8], ptr %i.al, i64 %i.bqg ; 2 uses
  %i.bql = load i32, ptr %i.bqk, align 4, !tbaa !44
  %i.bqm = zext i32 %i.bql to i64
  %i.bqn = add nuw nsw i64 %i.bqf, %i.bqj
  %i.bqo = add nuw nsw i64 %i.bqn, %i.bqm         ; 2 uses
  %i.bqp = trunc i64 %i.bqo to i32
  store i32 %i.bqp, ptr %i.bqk, align 4, !tbaa !44
  %i.bqq = lshr i64 %i.bqo, 32                    ; 2 uses
  %i.bqr = add nuw i64 %.05779.i.i1607, 2         ; 2 uses
  %exitcond.not.i.i1609.1 = icmp eq i64 %i.bqr, %i.j
  br i1 %exitcond.not.i.i1609.1, label %.lr.ph83.i.i1631, label %.lr.ph.i.i1606, !llvm.loop !3

.lr.ph83.i.i1631:                                 ; preds = %.lr.ph.i.i1606
  %i.bqs = icmp eq i64 %i.bqq, 0
  br i1 %i.bqs, label %bary_2comp.exit1600, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph83.i.i1631
  %i.bqt = getelementptr [4 x i8], ptr %i.al, i64 %i.j ; 2 uses
  %i.bqu = load i32, ptr %i.bqt, align 4, !tbaa !44
  %i.bqv = add i32 %i.bqu, 1
  store i32 %i.bqv, ptr %i.bqt, align 4, !tbaa !44
  br label %bary_2comp.exit1600, !llvm.loop !4

bary_2comp.exit1600:                              ; preds = %bb.bt, %.lr.ph26.i1595, %middle.block3120, %bb.bv, %bb.bs, %.lr.ph82.i.i1581, %.lr.ph83.i.i1631, %bb.bw, %.loopexit71.i.i1563, %bb.bu
  %.not591 = phi i1 [ false, %bb.bs ], [ false, %.loopexit71.i.i1563 ], [ true, %.lr.ph83.i.i1631 ], [ true, %bb.bu ], [ false, %.lr.ph82.i.i1581 ], [ true, %bb.bw ], [ true, %bb.bv ], [ true, %middle.block3120 ], [ true, %.lr.ph26.i1595 ], [ true, %bb.bt ]
  %i.bqw = icmp eq i32 %.0537, %.2
  br i1 %i.bqw, label %.lr.ph.i.i1637.preheader, label %.lr.ph.i.i1688.preheader

.lr.ph.i.i1688.preheader:                         ; preds = %bary_2comp.exit1600
  %i.bqx = icmp ult i64 %i.f, 3
  br i1 %i.bqx, label %.lr.ph.i.i1688.epil, label %.lr.ph.i.i1688

.lr.ph.i.i1637.preheader:                         ; preds = %bary_2comp.exit1600
  %i.bqy = icmp ult i64 %i.f, 3
  br i1 %i.bqy, label %.lr.ph.i.i1637.epil, label %.lr.ph.i.i1637

.lr.ph.i.i1637:                                   ; preds = %.lr.ph.i.i1637.preheader, %.lr.ph.i.i1637
  %.078.i.i1638 = phi i64 [ %i.bru, %.lr.ph.i.i1637 ], [ 0, %.lr.ph.i.i1637.preheader ] ; 4 uses
  %.06277.i.i1639 = phi i64 [ %i.brt, %.lr.ph.i.i1637 ], [ 0, %.lr.ph.i.i1637.preheader ]
  %niter3537 = phi i64 [ %niter3537.next.1, %.lr.ph.i.i1637 ], [ 0, %.lr.ph.i.i1637.preheader ]
  %i.bqz = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1638 ; 2 uses
  %i.bra = load i32, ptr %i.bqz, align 4, !tbaa !44
  %i.brb = zext i32 %i.bra to i64
  %i.brc = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1638
  %i.brd = load i32, ptr %i.brc, align 4, !tbaa !44
  %i.bre = zext i32 %i.brd to i64
  %i.brf = sub nsw i64 %i.brb, %i.bre
  %i.brg = add nsw i64 %i.brf, %.06277.i.i1639    ; 2 uses
  %i.brh = trunc i64 %i.brg to i32
  store i32 %i.brh, ptr %i.bqz, align 4, !tbaa !44
  %i.bri = ashr i64 %i.brg, 32
  %i.brj = or disjoint i64 %.078.i.i1638, 1       ; 2 uses
  %i.brk = getelementptr [4 x i8], ptr %i.ak, i64 %i.brj ; 2 uses
  %i.brl = load i32, ptr %i.brk, align 4, !tbaa !44
  %i.brm = zext i32 %i.brl to i64
  %i.brn = getelementptr [4 x i8], ptr %i.am, i64 %i.brj
  %i.bro = load i32, ptr %i.brn, align 4, !tbaa !44
  %i.brp = zext i32 %i.bro to i64
  %i.brq = sub nsw i64 %i.brm, %i.brp
  %i.brr = add nsw i64 %i.brq, %i.bri             ; 2 uses
  %i.brs = trunc i64 %i.brr to i32
  store i32 %i.brs, ptr %i.brk, align 4, !tbaa !44
  %i.brt = ashr i64 %i.brr, 32                    ; 2 uses
  %i.bru = add nuw i64 %.078.i.i1638, 2           ; 2 uses
  %niter3537.next.1 = add nuw i64 %niter3537, 2   ; 2 uses
  %niter3537.ncmp.1 = icmp eq i64 %niter3537.next.1, %i.j
  br i1 %niter3537.ncmp.1, label %.lr.ph.i.i1637.epil, label %.lr.ph.i.i1637, !llvm.loop !5

.lr.ph.i.i1637.epil:                              ; preds = %.lr.ph.i.i1637.preheader, %.lr.ph.i.i1637
  %.078.i.i1638.epil.init = phi i64 [ 0, %.lr.ph.i.i1637.preheader ], [ %i.bru, %.lr.ph.i.i1637 ] ; 2 uses
  %.06277.i.i1639.epil.init = phi i64 [ 0, %.lr.ph.i.i1637.preheader ], [ %i.brt, %.lr.ph.i.i1637 ]
  %i.brv = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1638.epil.init ; 2 uses
  %i.brw = load i32, ptr %i.brv, align 4, !tbaa !44
  %i.brx = zext i32 %i.brw to i64
  %i.bry = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1638.epil.init
  %i.brz = load i32, ptr %i.bry, align 4, !tbaa !44
  %i.bsa = zext i32 %i.brz to i64
  %i.bsb = sub nsw i64 %i.brx, %i.bsa
  %i.bsc = add nsw i64 %i.bsb, %.06277.i.i1639.epil.init ; 2 uses
  %i.bsd = trunc i64 %i.bsc to i32
  store i32 %i.bsd, ptr %i.brv, align 4, !tbaa !44
  %i.bse = icmp ult i64 %i.bsc, 4294967296
  br i1 %i.bse, label %bary_2comp.exit1682, label %.lr.ph.i1672

.lr.ph.i1672:                                     ; preds = %.lr.ph.i.i1637.epil, %bb.bx
  %.023.i1673 = phi i64 [ %i.bsh, %bb.bx ], [ 0, %.lr.ph.i.i1637.epil ] ; 9 uses
  %i.bsf = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1673
  %i.bsg = load i32, ptr %i.bsf, align 4, !tbaa !44 ; 2 uses
  %.not.i1674 = icmp eq i32 %i.bsg, 0
  br i1 %.not.i1674, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph.i1672
  %i.bsh = add nuw i64 %.023.i1673, 1
  %exitcond.not.i1681 = icmp eq i64 %.023.i1673, %i.j
  br i1 %exitcond.not.i1681, label %bary_2comp.exit1682, label %.lr.ph.i1672, !llvm.loop !8

bb.by:                                            ; preds = %.lr.ph.i1672
  %i.bsi = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1673
  %i.bsj = sub i32 0, %i.bsg
  store i32 %i.bsj, ptr %i.bsi, align 4, !tbaa !44
  %i.bsk = icmp ult i64 %.023.i1673, %i.j
  br i1 %i.bsk, label %.lr.ph26.i1677.preheader, label %bary_2comp.exit1682

.lr.ph26.i1677.preheader:                         ; preds = %bb.by
  %i.bsl = sub nuw i64 %i.j, %.023.i1673          ; 3 uses
  %min.iters.check3124 = icmp ult i64 %i.bsl, 8
  br i1 %min.iters.check3124, label %.lr.ph26.i1677.preheader3208, label %vector.ph3125

vector.ph3125:                                    ; preds = %.lr.ph26.i1677.preheader
  %n.vec3126 = and i64 %i.bsl, -8                 ; 3 uses
  %i.bsm = add i64 %.023.i1673, %n.vec3126
  %i.bsn = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1673
  br label %vector.body3127

vector.body3127:                                  ; preds = %vector.body3127, %vector.ph3125
  %index3128 = phi i64 [ 0, %vector.ph3125 ], [ %index.next3131, %vector.body3127 ] ; 2 uses
  %i.bso = getelementptr [4 x i8], ptr %i.bsn, i64 %index3128 ; 2 uses
  %i.bsp = getelementptr i8, ptr %i.bso, i64 4    ; 2 uses
  %i.bsq = getelementptr i8, ptr %i.bso, i64 20   ; 2 uses
  %wide.load3129 = load <4 x i32>, ptr %i.bsp, align 4, !tbaa !44
  %wide.load3130 = load <4 x i32>, ptr %i.bsq, align 4, !tbaa !44
  %i.bsr = xor <4 x i32> %wide.load3129, splat (i32 -1)
  %i.bss = xor <4 x i32> %wide.load3130, splat (i32 -1)
  store <4 x i32> %i.bsr, ptr %i.bsp, align 4, !tbaa !44
  store <4 x i32> %i.bss, ptr %i.bsq, align 4, !tbaa !44
  %index.next3131 = add nuw i64 %index3128, 8     ; 2 uses
  %i.bst = icmp eq i64 %index.next3131, %n.vec3126
  br i1 %i.bst, label %middle.block3132, label %vector.body3127, !llvm.loop !239

middle.block3132:                                 ; preds = %vector.body3127
  %cmp.n3133 = icmp eq i64 %i.bsl, %n.vec3126
  br i1 %cmp.n3133, label %bary_2comp.exit1682, label %.lr.ph26.i1677.preheader3208

.lr.ph26.i1677.preheader3208:                     ; preds = %.lr.ph26.i1677.preheader, %middle.block3132
  %.125.i1678.in.ph = phi i64 [ %.023.i1673, %.lr.ph26.i1677.preheader ], [ %i.bsm, %middle.block3132 ]
  br label %.lr.ph26.i1677

.lr.ph26.i1677:                                   ; preds = %.lr.ph26.i1677.preheader3208, %.lr.ph26.i1677
  %.125.i1678.in = phi i64 [ %.125.i1678, %.lr.ph26.i1677 ], [ %.125.i1678.in.ph, %.lr.ph26.i1677.preheader3208 ]
  %.125.i1678 = add nuw i64 %.125.i1678.in, 1     ; 3 uses
  %i.bsu = getelementptr [4 x i8], ptr %i.ak, i64 %.125.i1678 ; 2 uses
  %i.bsv = load i32, ptr %i.bsu, align 4, !tbaa !44
  %i.bsw = xor i32 %i.bsv, -1
  store i32 %i.bsw, ptr %i.bsu, align 4, !tbaa !44
  %exitcond31.not.i1680 = icmp eq i64 %.125.i1678, %i.j
  br i1 %exitcond31.not.i1680, label %bary_2comp.exit1682, label %.lr.ph26.i1677, !llvm.loop !240

.lr.ph.i.i1688:                                   ; preds = %.lr.ph.i.i1688.preheader, %.lr.ph.i.i1688
  %.05779.i.i1689 = phi i64 [ %i.bts, %.lr.ph.i.i1688 ], [ 0, %.lr.ph.i.i1688.preheader ] ; 4 uses
  %.05878.i.i1690 = phi i64 [ %i.btr, %.lr.ph.i.i1688 ], [ 0, %.lr.ph.i.i1688.preheader ]
  %niter3530 = phi i64 [ %niter3530.next.1, %.lr.ph.i.i1688 ], [ 0, %.lr.ph.i.i1688.preheader ]
  %i.bsx = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1689 ; 2 uses
  %i.bsy = load i32, ptr %i.bsx, align 4, !tbaa !44
  %i.bsz = zext i32 %i.bsy to i64
  %i.bta = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1689
  %i.btb = load i32, ptr %i.bta, align 4, !tbaa !44
  %i.btc = zext i32 %i.btb to i64
  %i.btd = add nuw nsw i64 %.05878.i.i1690, %i.bsz
  %i.bte = add nuw nsw i64 %i.btd, %i.btc         ; 2 uses
  %i.btf = trunc i64 %i.bte to i32
  store i32 %i.btf, ptr %i.bsx, align 4, !tbaa !44
  %i.btg = lshr i64 %i.bte, 32
  %i.bth = or disjoint i64 %.05779.i.i1689, 1     ; 2 uses
  %i.bti = getelementptr [4 x i8], ptr %i.ak, i64 %i.bth ; 2 uses
  %i.btj = load i32, ptr %i.bti, align 4, !tbaa !44
  %i.btk = zext i32 %i.btj to i64
  %i.btl = getelementptr [4 x i8], ptr %i.am, i64 %i.bth
  %i.btm = load i32, ptr %i.btl, align 4, !tbaa !44
  %i.btn = zext i32 %i.btm to i64
  %i.bto = add nuw nsw i64 %i.btg, %i.btk
  %i.btp = add nuw nsw i64 %i.bto, %i.btn         ; 2 uses
  %i.btq = trunc i64 %i.btp to i32
  store i32 %i.btq, ptr %i.bti, align 4, !tbaa !44
  %i.btr = lshr i64 %i.btp, 32                    ; 2 uses
  %i.bts = add nuw i64 %.05779.i.i1689, 2         ; 2 uses
  %niter3530.next.1 = add nuw i64 %niter3530, 2   ; 2 uses
  %niter3530.ncmp.1 = icmp eq i64 %niter3530.next.1, %i.j
  br i1 %niter3530.ncmp.1, label %.lr.ph.i.i1688.epil, label %.lr.ph.i.i1688, !llvm.loop !3

.lr.ph.i.i1688.epil:                              ; preds = %.lr.ph.i.i1688.preheader, %.lr.ph.i.i1688
  %.05779.i.i1689.epil.init = phi i64 [ 0, %.lr.ph.i.i1688.preheader ], [ %i.bts, %.lr.ph.i.i1688 ] ; 2 uses
  %.05878.i.i1690.epil.init = phi i64 [ 0, %.lr.ph.i.i1688.preheader ], [ %i.btr, %.lr.ph.i.i1688 ]
  %i.btt = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1689.epil.init ; 2 uses
  %i.btu = load i32, ptr %i.btt, align 4, !tbaa !44
  %i.btv = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1689.epil.init
  %i.btw = load i32, ptr %i.btv, align 4, !tbaa !44
  %i.btx = trunc nuw nsw i64 %.05878.i.i1690.epil.init to i32
  %i.bty = add i32 %i.btu, %i.btx
  %i.btz = add i32 %i.bty, %i.btw
  store i32 %i.btz, ptr %i.btt, align 4, !tbaa !44
  br label %bary_2comp.exit1682

bary_2comp.exit1682:                              ; preds = %bb.bx, %.lr.ph26.i1677, %.lr.ph.i.i1688.epil, %middle.block3132, %.lr.ph.i.i1637.epil, %bb.by
  %.1538 = phi i32 [ %.0537, %.lr.ph.i.i1637.epil ], [ %.not587, %middle.block3132 ], [ %.0537, %.lr.ph.i.i1688.epil ], [ %.not587, %bb.by ], [ %.not587, %.lr.ph26.i1677 ], [ %.not587, %bb.bx ]
  %i.bua = icmp ugt i64 %i.f, 6917529027641081855
  br i1 %i.bua, label %bb.bz, label %rbimpl_size_mul_or_raise.exit, !prof !102

bb.bz:                                            ; preds = %bary_2comp.exit1682
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.j) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bary_2comp.exit1682
  %i.bub = shl i64 %i.g, 3                        ; 4 uses
  %.not.i1718 = icmp eq i64 %i.bub, 0             ; 2 uses
  br i1 %.not.i1718, label %ruby_nonempty_memcpy.exit, label %bb.ca

bb.ca:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0560, ptr noundef nonnull readonly align 1 %i.af, i64 noundef range(i64 1, 0) %i.bub, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.ca
  %i.buc = getelementptr [4 x i8], ptr %.0560, i64 %i.j ; 26 uses
  br i1 %.not97.i.i, label %rbimpl_size_mul_or_raise.exit1719, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memset.p0.i64(ptr align 4 %i.buc, i8 0, i64 %i.bub, i1 false), !tbaa !44
  br label %rbimpl_size_mul_or_raise.exit1719

rbimpl_size_mul_or_raise.exit1719:                ; preds = %.lr.ph.preheader, %ruby_nonempty_memcpy.exit
  %.idx = shl i64 %i.g, 4
  %i.bud = getelementptr i8, ptr %.0560, i64 %.idx ; 2 uses
  br i1 %.not.i1718, label %ruby_nonempty_memcpy.exit1722, label %bb.cb

bb.cb:                                            ; preds = %rbimpl_size_mul_or_raise.exit1719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bud, ptr noundef nonnull readonly align 1 %i.aj, i64 noundef range(i64 1, 0) %i.bub, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit1722

ruby_nonempty_memcpy.exit1722:                    ; preds = %rbimpl_size_mul_or_raise.exit1719, %bb.cb
  %i.bue = getelementptr [4 x i8], ptr %i.bud, i64 %i.j
  store i32 0, ptr %i.bue, align 4, !tbaa !44
  %.not590 = icmp eq i32 %.1538, 0
  %i.buf = getelementptr [4 x i8], ptr %.0560, i64 %i.g ; 21 uses
  %i.bug = sub i64 %i.aq, %i.g                    ; 16 uses
  br i1 %.not590, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %ruby_nonempty_memcpy.exit1722
  %i.buh = icmp ugt i64 %i.bug, %i.l
  br i1 %i.buh, label %.lr.ph.i.i1728.preheader, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not.i.i1727 = icmp eq i64 %i.bug, 0
  br i1 %.not.i.i1727, label %.preheader72.i.i1732, label %.lr.ph.i.i1728.preheader

.lr.ph.i.i1728.preheader:                         ; preds = %bb.cc, %bb.cd
  %.061.i.i17262509 = phi ptr [ %i.buf, %bb.cd ], [ %i.ak, %bb.cc ] ; 3 uses
  %.062.i.i17252507 = phi i64 [ %i.l, %bb.cd ], [ %i.bug, %bb.cc ] ; 2 uses
  %.063.i.i17242505 = phi ptr [ %i.ak, %bb.cd ], [ %i.buf, %bb.cc ] ; 5 uses
  %.064.i.i17232503 = phi i64 [ %i.bug, %bb.cd ], [ %i.l, %bb.cc ] ; 6 uses
  %xtraiter3538 = and i64 %.064.i.i17232503, 1
  %i.bui = icmp eq i64 %.064.i.i17232503, 1
  br i1 %i.bui, label %.lr.ph.i.i1728.epil.preheader, label %.lr.ph.i.i1728.preheader.new

.lr.ph.i.i1728.preheader.new:                     ; preds = %.lr.ph.i.i1728.preheader
  %unroll_iter3543 = and i64 %.064.i.i17232503, -2
  br label %.lr.ph.i.i1728

.preheader72.i.i1732.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i1728
  %lcmp.mod3540.not = icmp eq i64 %xtraiter3538, 0
  br i1 %lcmp.mod3540.not, label %.preheader72.i.i1732, label %.lr.ph.i.i1728.epil.preheader

.lr.ph.i.i1728.epil.preheader:                    ; preds = %.preheader72.i.i1732.loopexit.unr-lcssa, %.lr.ph.i.i1728.preheader
  %.05779.i.i1729.epil.init = phi i64 [ 0, %.lr.ph.i.i1728.preheader ], [ %i.bvs, %.preheader72.i.i1732.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i1730.epil.init = phi i64 [ 0, %.lr.ph.i.i1728.preheader ], [ %i.bvr, %.preheader72.i.i1732.loopexit.unr-lcssa ]
  %lcmp.mod3542 = trunc i64 %.064.i.i17232503 to i1
  call void @llvm.assume(i1 %lcmp.mod3542)
  %i.buj = getelementptr [4 x i8], ptr %.061.i.i17262509, i64 %.05779.i.i1729.epil.init
  %i.buk = load i32, ptr %i.buj, align 4, !tbaa !44
  %i.bul = zext i32 %i.buk to i64
  %i.bum = getelementptr [4 x i8], ptr %.063.i.i17242505, i64 %.05779.i.i1729.epil.init
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !44
  %i.buo = zext i32 %i.bun to i64
  %i.bup = add nuw nsw i64 %.05878.i.i1730.epil.init, %i.bul
  %i.buq = add nuw nsw i64 %i.bup, %i.buo         ; 2 uses
  %i.bur = trunc i64 %i.buq to i32
  %i.bus = getelementptr [4 x i8], ptr %i.buf, i64 %.05779.i.i1729.epil.init
  store i32 %i.bur, ptr %i.bus, align 4, !tbaa !44
  %i.but = lshr i64 %i.buq, 32
  br label %.preheader72.i.i1732

.preheader72.i.i1732:                             ; preds = %.lr.ph.i.i1728.epil.preheader, %.preheader72.i.i1732.loopexit.unr-lcssa, %bb.cd
  %.062.i.i17252508 = phi i64 [ %i.l, %bb.cd ], [ %.062.i.i17252507, %.preheader72.i.i1732.loopexit.unr-lcssa ], [ %.062.i.i17252507, %.lr.ph.i.i1728.epil.preheader ] ; 12 uses
  %.063.i.i17242506 = phi ptr [ %i.ak, %bb.cd ], [ %.063.i.i17242505, %.preheader72.i.i1732.loopexit.unr-lcssa ], [ %.063.i.i17242505, %.lr.ph.i.i1728.epil.preheader ] ; 9 uses
  %.064.i.i17232504 = phi i64 [ 0, %bb.cd ], [ %.064.i.i17232503, %.preheader72.i.i1732.loopexit.unr-lcssa ], [ %.064.i.i17232503, %.lr.ph.i.i1728.epil.preheader ] ; 3 uses
  %.058.lcssa.i.i1733 = phi i64 [ 0, %bb.cd ], [ %i.bvr, %.preheader72.i.i1732.loopexit.unr-lcssa ], [ %i.but, %.lr.ph.i.i1728.epil.preheader ] ; 2 uses
  %.063.i.i172425063138 = ptrtoaddr ptr %.063.i.i17242506 to i64
  %i.buu = icmp ult i64 %.064.i.i17232504, %.062.i.i17252508
  br i1 %i.buu, label %.lr.ph83.i.i1753, label %.preheader70.i.i1734

.lr.ph.i.i1728:                                   ; preds = %.lr.ph.i.i1728, %.lr.ph.i.i1728.preheader.new
  %.05779.i.i1729 = phi i64 [ 0, %.lr.ph.i.i1728.preheader.new ], [ %i.bvs, %.lr.ph.i.i1728 ] ; 5 uses
  %.05878.i.i1730 = phi i64 [ 0, %.lr.ph.i.i1728.preheader.new ], [ %i.bvr, %.lr.ph.i.i1728 ]
  %niter3544 = phi i64 [ 0, %.lr.ph.i.i1728.preheader.new ], [ %niter3544.next.1, %.lr.ph.i.i1728 ]
  %i.buv = getelementptr [4 x i8], ptr %.061.i.i17262509, i64 %.05779.i.i1729
  %i.buw = load i32, ptr %i.buv, align 4, !tbaa !44
  %i.bux = zext i32 %i.buw to i64
  %i.buy = getelementptr [4 x i8], ptr %.063.i.i17242505, i64 %.05779.i.i1729
  %i.buz = load i32, ptr %i.buy, align 4, !tbaa !44
  %i.bva = zext i32 %i.buz to i64
  %i.bvb = add nuw nsw i64 %.05878.i.i1730, %i.bux
  %i.bvc = add nuw nsw i64 %i.bvb, %i.bva         ; 2 uses
  %i.bvd = trunc i64 %i.bvc to i32
  %i.bve = getelementptr [4 x i8], ptr %i.buf, i64 %.05779.i.i1729
  store i32 %i.bvd, ptr %i.bve, align 4, !tbaa !44
  %i.bvf = lshr i64 %i.bvc, 32
  %i.bvg = or disjoint i64 %.05779.i.i1729, 1     ; 3 uses
  %i.bvh = getelementptr [4 x i8], ptr %.061.i.i17262509, i64 %i.bvg
  %i.bvi = load i32, ptr %i.bvh, align 4, !tbaa !44
  %i.bvj = zext i32 %i.bvi to i64
  %i.bvk = getelementptr [4 x i8], ptr %.063.i.i17242505, i64 %i.bvg
  %i.bvl = load i32, ptr %i.bvk, align 4, !tbaa !44
  %i.bvm = zext i32 %i.bvl to i64
  %i.bvn = add nuw nsw i64 %i.bvf, %i.bvj
  %i.bvo = add nuw nsw i64 %i.bvn, %i.bvm         ; 2 uses
  %i.bvp = trunc i64 %i.bvo to i32
  %i.bvq = getelementptr [4 x i8], ptr %i.buf, i64 %i.bvg
  store i32 %i.bvp, ptr %i.bvq, align 4, !tbaa !44
  %i.bvr = lshr i64 %i.bvo, 32                    ; 3 uses
  %i.bvs = add nuw nsw i64 %.05779.i.i1729, 2     ; 2 uses
  %niter3544.next.1 = add i64 %niter3544, 2       ; 2 uses
  %niter3544.ncmp.1 = icmp eq i64 %niter3544.next.1, %unroll_iter3543
  br i1 %niter3544.ncmp.1, label %.preheader72.i.i1732.loopexit.unr-lcssa, label %.lr.ph.i.i1728, !llvm.loop !3

.preheader70.i.i1734:                             ; preds = %bb.cf, %.preheader72.i.i1732
  %.159.lcssa.i.i1735 = phi i64 [ %.058.lcssa.i.i1733, %.preheader72.i.i1732 ], [ %i.bwe, %bb.cf ]
  %.1.lcssa.i.i1736 = phi i64 [ %.064.i.i17232504, %.preheader72.i.i1732 ], [ %.062.i.i17252508, %bb.cf ] ; 4 uses
  %i.bvt = icmp ult i64 %.1.lcssa.i.i1736, %i.bug
  br i1 %i.bvt, label %.lr.ph88.preheader.i.i1740, label %bary_add.exit1757

.lr.ph88.preheader.i.i1740:                       ; preds = %.preheader70.i.i1734
  %i.bvu = icmp eq i64 %.159.lcssa.i.i1735, 0
  br i1 %i.bvu, label %.loopexit71.i.i1742, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph88.preheader.i.i1740
  %i.bvv = getelementptr [4 x i8], ptr %i.buf, i64 %.1.lcssa.i.i1736
  store i32 1, ptr %i.bvv, align 4, !tbaa !44
  %i.bvw = add nuw i64 %.1.lcssa.i.i1736, 1       ; 2 uses
  %exitcond103.peel.not.i.i1741 = icmp eq i64 %i.bvw, %i.bug
  br i1 %exitcond103.peel.not.i.i1741, label %bary_add.exit1757, label %.loopexit71.i.i1742

.lr.ph83.i.i1753:                                 ; preds = %.preheader72.i.i1732, %bb.cf
  %.182.i.i1754 = phi i64 [ %i.bwf, %bb.cf ], [ %.064.i.i17232504, %.preheader72.i.i1732 ] ; 4 uses
  %.15981.i.i1755 = phi i64 [ %i.bwe, %bb.cf ], [ %.058.lcssa.i.i1733, %.preheader72.i.i1732 ]
  %i.bvx = icmp eq i64 %.15981.i.i1755, 0
  br i1 %i.bvx, label %.loopexit71.i.i1742, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph83.i.i1753
  %i.bvy = getelementptr [4 x i8], ptr %.063.i.i17242506, i64 %.182.i.i1754
  %i.bvz = load i32, ptr %i.bvy, align 4, !tbaa !44
  %i.bwa = zext i32 %i.bvz to i64
  %i.bwb = add nuw nsw i64 %i.bwa, 1              ; 2 uses
  %i.bwc = trunc i64 %i.bwb to i32
  %i.bwd = getelementptr [4 x i8], ptr %i.buf, i64 %.182.i.i1754
  store i32 %i.bwc, ptr %i.bwd, align 4, !tbaa !44
  %i.bwe = lshr i64 %i.bwb, 32                    ; 2 uses
  %i.bwf = add nuw i64 %.182.i.i1754, 1           ; 2 uses
  %exitcond102.not.i.i1756 = icmp eq i64 %i.bwf, %.062.i.i17252508
  br i1 %exitcond102.not.i.i1756, label %.preheader70.i.i1734, label %.lr.ph83.i.i1753, !llvm.loop !4

.loopexit71.i.i1742:                              ; preds = %.lr.ph83.i.i1753, %bb.ce, %.lr.ph88.preheader.i.i1740
  %.3.i.i1743 = phi i64 [ %i.bvw, %bb.ce ], [ %.1.lcssa.i.i1736, %.lr.ph88.preheader.i.i1740 ], [ %.182.i.i1754, %.lr.ph83.i.i1753 ] ; 7 uses
  %i.bwg = icmp eq ptr %.063.i.i17242506, %i.buf
  %i.bwh = icmp eq i64 %.062.i.i17252508, %i.bug
  %or.cond.i.i1744 = and i1 %i.bwg, %i.bwh
  br i1 %or.cond.i.i1744, label %bary_add.exit1757, label %.preheader69.i.i1745

.preheader69.i.i1745:                             ; preds = %.loopexit71.i.i1742
  %i.bwi = icmp ult i64 %.3.i.i1743, %.062.i.i17252508
  br i1 %i.bwi, label %.lr.ph91.i.i1750.preheader, label %.preheader.i.i1746

.lr.ph91.i.i1750.preheader:                       ; preds = %.preheader69.i.i1745
  %i.bwj = sub nuw i64 %.062.i.i17252508, %.3.i.i1743 ; 3 uses
  %min.iters.check3140 = icmp ult i64 %i.bwj, 16
  br i1 %min.iters.check3140, label %.lr.ph91.i.i1750.preheader3204, label %vector.memcheck3141

vector.memcheck3141:                              ; preds = %.lr.ph91.i.i1750.preheader
  %i.bwk = shl nuw i64 %i.g, 2
end_hunk_0
