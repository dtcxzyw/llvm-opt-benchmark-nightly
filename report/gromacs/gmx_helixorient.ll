Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_helixorient?download=true
inline.NumInlined: 273
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z15gmx_helixorientiPPc:bb.a

.lr.ph660:                                        ; preds = %.lr.ph660.preheader1159, %.lr.ph660
  %indvars.iv698 = phi i64 [ %indvars.iv.next699, %.lr.ph660 ], [ %indvars.iv698.ph, %.lr.ph660.preheader1159 ] ; 7 uses
  %i.aov = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %indvars.iv698 ; 3 uses
  %i.aow = getelementptr inbounds nuw [12 x i8], ptr %i.fk, i64 %indvars.iv698 ; 3 uses
  %i.aox = load float, ptr %i.aov, align 4, !tbaa !68
  store float %i.aox, ptr %i.aow, align 4, !tbaa !68
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aov, i64 4
  %i.aoz = load float, ptr %i.aoy, align 4, !tbaa !68
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 4
  store float %i.aoz, ptr %i.apa, align 4, !tbaa !68
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.apc = load float, ptr %i.apb, align 4, !tbaa !68
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store float %i.apc, ptr %i.apd, align 4, !tbaa !68
  %i.ape = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %indvars.iv698 ; 3 uses
  %i.apf = getelementptr inbounds nuw [12 x i8], ptr %i.fn, i64 %indvars.iv698 ; 3 uses
  %i.apg = load float, ptr %i.ape, align 4, !tbaa !68
  store float %i.apg, ptr %i.apf, align 4, !tbaa !68
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ape, i64 4
  %i.api = load float, ptr %i.aph, align 4, !tbaa !68
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apf, i64 4
  store float %i.api, ptr %i.apj, align 4, !tbaa !68
  %i.apk = getelementptr inbounds nuw i8, ptr %i.ape, i64 8
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !68
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  store float %i.apl, ptr %i.apm, align 4, !tbaa !68
  %i.apn = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %indvars.iv698 ; 3 uses
  %i.apo = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %indvars.iv698 ; 3 uses
  %i.app = load float, ptr %i.apn, align 4, !tbaa !68
  store float %i.app, ptr %i.apo, align 4, !tbaa !68
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apn, i64 4
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !68
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apo, i64 4
  store float %i.apr, ptr %i.aps, align 4, !tbaa !68
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apn, i64 8
  %i.apu = load float, ptr %i.apt, align 4, !tbaa !68
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  store float %i.apu, ptr %i.apv, align 4, !tbaa !68
  %indvars.iv.next699 = add nuw nsw i64 %indvars.iv698, 1 ; 2 uses
  %exitcond702.not = icmp eq i64 %indvars.iv.next699, %wide.trip.count701
  br i1 %exitcond702.not, label %.lr.ph663.preheader, label %.lr.ph660, !llvm.loop !41

bb.ee:                                            ; preds = %._crit_edge653
  %i.apw = load float, ptr %i.e, align 4, !tbaa !68
  %i.apx = fpext float %i.apw to double
  %i.apy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0236, ptr noundef nonnull @.str.78, double noundef %i.apx) #14 ; 0 uses
  %i.apz = load float, ptr %i.e, align 4, !tbaa !68
  %i.aqa = fpext float %i.apz to double
  %i.aqb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0235, ptr noundef nonnull @.str.78, double noundef %i.aqa) #14 ; 0 uses
  %i.aqc = load float, ptr %i.e, align 4, !tbaa !68
  %i.aqd = fpext float %i.aqc to double
  %i.aqe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.79, double noundef %i.aqd) #14 ; 0 uses
  %i.aqf = load float, ptr %i.e, align 4, !tbaa !68
  %i.aqg = fpext float %i.aqf to double
  %i.aqh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jg, ptr noundef nonnull @.str.79, double noundef %i.aqg) #14 ; 0 uses
  %i.aqi = load float, ptr %i.e, align 4, !tbaa !68
  %i.aqj = fpext float %i.aqi to double
  %i.aqk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jo, ptr noundef nonnull @.str.79, double noundef %i.aqj) #14 ; 0 uses
  %i.aql = load i32, ptr %i.i, align 4, !tbaa !54 ; 2 uses
  %i.aqm = icmp sgt i32 %i.aql, 0
  br i1 %i.aqm, label %.lr.ph657, label %.loopexit

.lr.ph657:                                        ; preds = %bb.ee, %bb.eh
  %indvars.iv695 = phi i64 [ %indvars.iv.next696, %bb.eh ], [ 0, %bb.ee ] ; 15 uses
  %i.aqn = phi i32 [ %i.auz, %bb.eh ], [ %i.aql, %bb.ee ]
  %i.aqo = icmp eq i64 %indvars.iv695, 0
  %i.aqp = add nsw i32 %i.aqn, -1
  %i.aqq = zext i32 %i.aqp to i64
  %i.aqr = icmp eq i64 %indvars.iv695, %i.aqq
  %or.cond309 = select i1 %i.aqo, i1 true, i1 %i.aqr
  br i1 %or.cond309, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph657
  %i.aqs = load i8, ptr @_ZZ15gmx_helixorientiPPcE12bIncremental, align 1, !tbaa !70, !range !71, !noundef !72
  %i.aqt = trunc nuw i8 %i.aqs to i1              ; 3 uses
  %i.aqu = select i1 %i.aqt, ptr %i.ft, ptr %i.fk ; 3 uses
  %i.aqv = select i1 %i.aqt, ptr %i.fw, ptr %i.fn ; 3 uses
  %i.aqw = select i1 %i.aqt, ptr %i.fz, ptr %i.fq ; 3 uses
  %storemerge962.in = getelementptr inbounds nuw [12 x i8], ptr %i.aqu, i64 %indvars.iv695
  %storemerge962 = load float, ptr %storemerge962.in, align 4, !tbaa !68
  store float %storemerge962, ptr %i.o, align 16, !tbaa !68
  %i.aqx = getelementptr inbounds nuw [12 x i8], ptr %i.aqu, i64 %indvars.iv695
  %storemerge960.in = getelementptr inbounds nuw i8, ptr %i.aqx, i64 4
  %storemerge960 = load float, ptr %storemerge960.in, align 4, !tbaa !68
  store float %storemerge960, ptr %i.qw, align 4, !tbaa !68
  %i.aqy = getelementptr inbounds nuw [12 x i8], ptr %i.aqu, i64 %indvars.iv695
  %storemerge958.in = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  %storemerge958 = load float, ptr %storemerge958.in, align 4, !tbaa !68
  store float %storemerge958, ptr %i.qx, align 8, !tbaa !68
  %storemerge956.in = getelementptr inbounds nuw [12 x i8], ptr %i.aqv, i64 %indvars.iv695
  %storemerge956 = load float, ptr %storemerge956.in, align 4, !tbaa !68
  store float %storemerge956, ptr %i.qy, align 4, !tbaa !68
  %i.aqz = getelementptr inbounds nuw [12 x i8], ptr %i.aqv, i64 %indvars.iv695
  %storemerge954.in = getelementptr inbounds nuw i8, ptr %i.aqz, i64 4
  %storemerge954 = load float, ptr %storemerge954.in, align 4, !tbaa !68
  store float %storemerge954, ptr %i.qz, align 16, !tbaa !68
  %i.ara = getelementptr inbounds nuw [12 x i8], ptr %i.aqv, i64 %indvars.iv695
  %storemerge952.in = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %storemerge952 = load float, ptr %storemerge952.in, align 4, !tbaa !68
  store float %storemerge952, ptr %i.ra, align 4, !tbaa !68
  %storemerge950.in = getelementptr inbounds nuw [12 x i8], ptr %i.aqw, i64 %indvars.iv695
  %storemerge950 = load float, ptr %storemerge950.in, align 4, !tbaa !68
  store float %storemerge950, ptr %i.rb, align 8, !tbaa !68
  %i.arb = getelementptr inbounds nuw [12 x i8], ptr %i.aqw, i64 %indvars.iv695
  %storemerge948.in = getelementptr inbounds nuw i8, ptr %i.arb, i64 4
  %storemerge948 = load float, ptr %storemerge948.in, align 4, !tbaa !68
  store float %storemerge948, ptr %i.rc, align 4, !tbaa !68
  %i.arc = getelementptr inbounds nuw [12 x i8], ptr %i.aqw, i64 %indvars.iv695
  %storemerge.in = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  %storemerge = load float, ptr %storemerge.in, align 4, !tbaa !68
  store float %storemerge, ptr %i.rd, align 16, !tbaa !68
  %i.ard = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %indvars.iv695 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  %i.arf = load float, ptr %i.are, align 4, !tbaa !68
  %i.arg = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %indvars.iv695 ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 8
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !68
  %i.arj = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %indvars.iv695 ; 3 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 4
  %i.arl = load <2 x float>, ptr %i.ard, align 4, !tbaa !68 ; 2 uses
  %i.arm = load <2 x float>, ptr %i.arg, align 4, !tbaa !68 ; 2 uses
  %i.arn = load <2 x float>, ptr %i.arj, align 4, !tbaa !68 ; 2 uses
  %i.aro = load float, ptr %i.ark, align 4, !tbaa !68
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !68 ; 2 uses
  invoke void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef 3, i32 noundef 3, ptr noundef nonnull %i.s, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %i.t)
          to label %.preheader unwind label %.loopexit625

.preheader:                                       ; preds = %bb.ef
  %i.arr = load float, ptr %i.rm, align 16, !tbaa !68 ; 2 uses
  %i.ars = load <8 x float>, ptr %i.t, align 16, !tbaa !68 ; 4 uses
  %i.art = load float, ptr %i.rg, align 4, !tbaa !68
  %i.aru = load <4 x float>, ptr %i.o, align 16, !tbaa !68
  %i.arv = load <4 x float>, ptr %i.qw, align 4, !tbaa !68
  %i.arw = load <4 x float>, ptr %i.qx, align 8, !tbaa !68
  %i.arx = load <2 x float>, ptr %i.rb, align 8, !tbaa !68 ; 3 uses
  %i.ary = load float, ptr %i.rl, align 4, !tbaa !68
  %i.arz = shufflevector <2 x float> %i.arx, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asa = shufflevector <4 x float> %i.arv, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asb = shufflevector <8 x float> %i.asa, <8 x float> %i.arz, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 10>
  %i.asc = shufflevector <8 x float> %i.ars, <8 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 1, i32 4, i32 7, i32 1, i32 4>
  %i.asd = fmul <8 x float> %i.asb, %i.asc
  %i.ase = shufflevector <8 x float> %i.ars, <8 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 0, i32 3, i32 6, i32 0, i32 3>
  %i.asf = shufflevector <2 x float> %i.arx, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asg = shufflevector <4 x float> %i.aru, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ash = shufflevector <8 x float> %i.asg, <8 x float> %i.asf, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 10>
  %i.asi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ase, <8 x float> %i.ash, <8 x float> %i.asd)
  %i.asj = insertelement <8 x float> poison, float %i.arr, i64 2
  %i.ask = shufflevector <4 x float> %i.arw, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asl = shufflevector <8 x float> %i.ask, <8 x float> %i.asj, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 10>
  %i.asm = extractelement <2 x float> %i.arx, i64 0
  %i.asn = load <3 x float>, ptr %i.ri, align 8, !tbaa !68 ; 4 uses
  %i.aso = load float, ptr %i.rk, align 16, !tbaa !68 ; 2 uses
  %i.asp = load float, ptr %i.rj, align 4, !tbaa !68 ; 2 uses
  %i.asq = load <4 x float>, ptr %i.rf, align 8, !tbaa !68
  %i.asr = load <4 x float>, ptr %i.re, align 4, !tbaa !68
  %i.ass = shufflevector <3 x float> %i.asn, <3 x float> poison, <8 x i32> <i32 2, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ast = shufflevector <8 x float> %i.ars, <8 x float> %i.ass, <8 x i32> <i32 2, i32 5, i32 8, i32 2, i32 5, i32 8, i32 2, i32 5>
  %i.asu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ast, <8 x float> %i.asl, <8 x float> %i.asi)
  store <8 x float> %i.asu, ptr %i.q, align 16, !tbaa !68
  %i.asv = fmul float %i.ary, %i.asp
  %i.asw = extractelement <3 x float> %i.asn, i64 0 ; 2 uses
  %i.asx = call float @llvm.fmuladd.f32(float %i.asw, float %i.asm, float %i.asv)
  %i.asy = call float @llvm.fmuladd.f32(float %i.aso, float %i.arr, float %i.asx)
  store float %i.asy, ptr %i.rn, align 16, !tbaa !68
  %i.asz = shufflevector <4 x float> %i.asr, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ata = shufflevector <8 x float> %i.asz, <8 x float> %i.ass, <8 x i32> <i32 0, i32 1, i32 10, i32 0, i32 1, i32 10, i32 0, i32 1>
  %i.atb = shufflevector <2 x float> %i.arl, <2 x float> %i.arm, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atc = shufflevector <2 x float> %i.arn, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.atd = shufflevector <8 x float> %i.atb, <8 x float> %i.atc, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 9, i32 9>
  %i.ate = fmul <8 x float> %i.ata, %i.atd
  %i.atf = shufflevector <8 x float> %i.ars, <8 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.atg = insertelement <3 x float> %i.atf, float %i.art, i64 1
  %i.ath = shufflevector <3 x float> %i.atg, <3 x float> %i.asn, <8 x i32> <i32 0, i32 1, i32 3, i32 0, i32 1, i32 3, i32 0, i32 1>
  %i.ati = shufflevector <2 x float> %i.arl, <2 x float> %i.arm, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atj = shufflevector <8 x float> %i.ati, <8 x float> %i.atc, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 8>
  %i.atk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ath, <8 x float> %i.atj, <8 x float> %i.ate)
  %i.atl = shufflevector <3 x float> %i.asn, <3 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atm = shufflevector <4 x float> %i.asq, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atn = shufflevector <8 x float> %i.atm, <8 x float> %i.atl, <8 x i32> <i32 0, i32 1, i32 10, i32 0, i32 1, i32 10, i32 0, i32 1>
  %i.ato = insertelement <8 x float> poison, float %i.arf, i64 0
  %i.atp = insertelement <8 x float> %i.ato, float %i.ari, i64 1
  %i.atq = insertelement <8 x float> %i.atp, float %i.arq, i64 2
  %i.atr = shufflevector <8 x float> %i.atq, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.ats = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.atn, <8 x float> %i.atr, <8 x float> %i.atk)
  store <8 x float> %i.ats, ptr %i.r, align 16, !tbaa !68
  %i.att = fmul float %i.asp, %i.aro
  %i.atu = extractelement <2 x float> %i.arn, i64 0
  %i.atv = call float @llvm.fmuladd.f32(float %i.asw, float %i.atu, float %i.att)
  %i.atw = call float @llvm.fmuladd.f32(float %i.aso, float %i.arq, float %i.atv)
  store float %i.atw, ptr %i.ro, align 16, !tbaa !68
  invoke void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef 3, i32 noundef 3, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q, ptr noundef nonnull %i.t)
          to label %bb.eg unwind label %.loopexit625

bb.eg:                                            ; preds = %.preheader
  %i.atx = load float, ptr %i.rf, align 8, !tbaa !68
  %i.aty = load float, ptr %i.t, align 16, !tbaa !68
  %i.atz = call noundef float @atan2f(float noundef %i.atx, float noundef %i.aty) #14
  %i.aua = load float, ptr %i.re, align 4, !tbaa !68
  %29 = call float @asinf(float %i.aua)
  %30 = fneg float %29
  %i.aub = load float, ptr %i.rj, align 4, !tbaa !68
  %i.auc = load float, ptr %i.rh, align 16, !tbaa !68
  %i.aud = call noundef float @atan2f(float noundef %i.aub, float noundef %i.auc) #14
  %i.aue = fpext float %i.aud to double
  %i.auf = fmul double %i.aue, f0x404CA5DC1A63C1F8
  %i.aug = fptrunc double %i.auf to float
  %i.auh = insertelement <2 x float> poison, float %i.atz, i64 0
  %i.aui = insertelement <2 x float> %i.auh, float %30, i64 1
  %i.auj = fpext <2 x float> %i.aui to <2 x double>
  %i.auk = fmul <2 x double> %i.auj, splat (double f0x404CA5DC1A63C1F8)
  %i.aul = fptrunc <2 x double> %i.auk to <2 x float> ; 4 uses
  %foldExtExtBinop1156 = fmul <2 x float> %i.aul, %i.aul
  %i.aum = extractelement <2 x float> %foldExtExtBinop1156, i64 1
  %i.aun = extractelement <2 x float> %i.aul, i64 0 ; 2 uses
  %i.auo = call float @llvm.fmuladd.f32(float %i.aun, float %i.aun, float %i.aum)
  %sqrt = call float @llvm.sqrt.f32(float %i.auo)
  %i.aup = fpext <2 x float> %i.aul to <2 x double> ; 2 uses
  %i.auq = extractelement <2 x double> %i.aup, i64 0
  %i.aur = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.75, double noundef %i.auq) #14 ; 0 uses
  %i.aus = extractelement <2 x double> %i.aup, i64 1
  %i.aut = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jg, ptr noundef nonnull @.str.75, double noundef %i.aus) #14 ; 0 uses
  %i.auu = fpext float %i.aug to double           ; 2 uses
  %i.auv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jo, ptr noundef nonnull @.str.75, double noundef %i.auu) #14 ; 0 uses
  %i.auw = fpext float %sqrt to double
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph657, %bb.eg
  %.0238 = phi double [ %i.auw, %bb.eg ], [ 0.000000e+00, %.lr.ph657 ]
  %.0237 = phi double [ %i.auu, %bb.eg ], [ 0.000000e+00, %.lr.ph657 ]
  %i.aux = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0236, ptr noundef nonnull @.str.75, double noundef %.0238) #14 ; 0 uses
  %i.auy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0235, ptr noundef nonnull @.str.75, double noundef %.0237) #14 ; 0 uses
  %indvars.iv.next696 = add nuw nsw i64 %indvars.iv695, 1 ; 2 uses
  %i.auz = load i32, ptr %i.i, align 4, !tbaa !54 ; 2 uses
  %i.ava = sext i32 %i.auz to i64
  %i.avb = icmp slt i64 %indvars.iv.next696, %i.ava
  br i1 %i.avb, label %.lr.ph657, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %bb.eh, %bb.ee
  %fputc299 = call i32 @fputc(i32 10, ptr %.0236) ; 0 uses
  %fputc300 = call i32 @fputc(i32 10, ptr %.0235) ; 0 uses
  %fputc301 = call i32 @fputc(i32 10, ptr %i.iy)  ; 0 uses
  %fputc302 = call i32 @fputc(i32 10, ptr %i.jg)  ; 0 uses
  %fputc303 = call i32 @fputc(i32 10, ptr %i.jo)  ; 0 uses
  %.pre708 = load i32, ptr %i.i, align 4, !tbaa !54 ; 2 uses
  %i.avc = icmp sgt i32 %.pre708, 0
  br i1 %i.avc, label %.lr.ph663.preheader, label %._crit_edge664

.lr.ph663.preheader:                              ; preds = %.lr.ph660, %middle.block1101, %.loopexit
  %i.avd = phi i32 [ %.pre708, %.loopexit ], [ %i.aol, %middle.block1101 ], [ %i.aol, %.lr.ph660 ] ; 2 uses
  %wide.trip.count706 = zext nneg i32 %i.avd to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.avd, 16
  br i1 %min.iters.check, label %.lr.ph663.preheader1158, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph663.preheader
  %i.ave = mul nuw nsw i64 %wide.trip.count706, 12 ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ft, i64 %i.ave ; 5 uses
  %scevgep965 = getelementptr i8, ptr %i.fw, i64 %i.ave ; 5 uses
  %scevgep966 = getelementptr i8, ptr %i.fz, i64 %i.ave ; 5 uses
  %scevgep967 = getelementptr i8, ptr %i.ey, i64 %i.ave ; 3 uses
  %scevgep968 = getelementptr i8, ptr %i.fb, i64 %i.ave ; 3 uses
  %scevgep969 = getelementptr i8, ptr %i.gc, i64 %i.ave ; 3 uses
  %bound0 = icmp ult ptr %i.ft, %scevgep965
  %bound1 = icmp ult ptr %i.fw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0970 = icmp ult ptr %i.ft, %scevgep966
  %bound1971 = icmp ult ptr %i.fz, %scevgep
  %found.conflict972 = and i1 %bound0970, %bound1971
  %conflict.rdx = or i1 %found.conflict, %found.conflict972
  %bound0973 = icmp ult ptr %i.ft, %scevgep967
  %bound1974 = icmp ult ptr %i.ey, %scevgep
  %found.conflict975 = and i1 %bound0973, %bound1974
  %conflict.rdx976 = or i1 %conflict.rdx, %found.conflict975
  %bound0977 = icmp ult ptr %i.ft, %scevgep968
  %bound1978 = icmp ult ptr %i.fb, %scevgep
  %found.conflict979 = and i1 %bound0977, %bound1978
  %conflict.rdx980 = or i1 %conflict.rdx976, %found.conflict979
  %bound0981 = icmp ult ptr %i.ft, %scevgep969
  %bound1982 = icmp ult ptr %i.gc, %scevgep
  %found.conflict983 = and i1 %bound0981, %bound1982
  %conflict.rdx984 = or i1 %conflict.rdx980, %found.conflict983
  %bound0985 = icmp ult ptr %i.fw, %scevgep966
  %bound1986 = icmp ult ptr %i.fz, %scevgep965
  %found.conflict987 = and i1 %bound0985, %bound1986
  %conflict.rdx988 = or i1 %conflict.rdx984, %found.conflict987
  %bound0989 = icmp ult ptr %i.fw, %scevgep967
  %bound1990 = icmp ult ptr %i.ey, %scevgep965
  %found.conflict991 = and i1 %bound0989, %bound1990
  %conflict.rdx992 = or i1 %conflict.rdx988, %found.conflict991
  %bound0993 = icmp ult ptr %i.fw, %scevgep968
  %bound1994 = icmp ult ptr %i.fb, %scevgep965
  %found.conflict995 = and i1 %bound0993, %bound1994
  %conflict.rdx996 = or i1 %conflict.rdx992, %found.conflict995
  %bound0997 = icmp ult ptr %i.fw, %scevgep969
  %bound1998 = icmp ult ptr %i.gc, %scevgep965
  %found.conflict999 = and i1 %bound0997, %bound1998
  %conflict.rdx1000 = or i1 %conflict.rdx996, %found.conflict999
  %bound01001 = icmp ult ptr %i.fz, %scevgep967
  %bound11002 = icmp ult ptr %i.ey, %scevgep966
  %found.conflict1003 = and i1 %bound01001, %bound11002
  %conflict.rdx1004 = or i1 %conflict.rdx1000, %found.conflict1003
  %bound01005 = icmp ult ptr %i.fz, %scevgep968
  %bound11006 = icmp ult ptr %i.fb, %scevgep966
  %found.conflict1007 = and i1 %bound01005, %bound11006
  %conflict.rdx1008 = or i1 %conflict.rdx1004, %found.conflict1007
  %bound01009 = icmp ult ptr %i.fz, %scevgep969
  %bound11010 = icmp ult ptr %i.gc, %scevgep966
  %found.conflict1011 = and i1 %bound01009, %bound11010
  %conflict.rdx1012 = or i1 %conflict.rdx1008, %found.conflict1011
  br i1 %conflict.rdx1012, label %.lr.ph663.preheader1158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count706, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.avf = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %index
  %i.avg = getelementptr inbounds nuw [12 x i8], ptr %i.ft, i64 %index
  %wide.vec = load <24 x float>, ptr %i.avf, align 4, !tbaa !68, !alias.scope !94
  store <24 x float> %wide.vec, ptr %i.avg, align 4, !tbaa !68, !alias.scope !95, !noalias !96
  %i.avh = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %index
  %i.avi = getelementptr inbounds nuw [12 x i8], ptr %i.fw, i64 %index
  %wide.vec1015 = load <24 x float>, ptr %i.avh, align 4, !tbaa !68, !alias.scope !97
  store <24 x float> %wide.vec1015, ptr %i.avi, align 4, !tbaa !68, !alias.scope !98, !noalias !99
  %i.avj = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %index
  %i.avk = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %index
  %wide.vec1020 = load <24 x float>, ptr %i.avj, align 4, !tbaa !68, !alias.scope !100
  store <24 x float> %wide.vec1020, ptr %i.avk, align 4, !tbaa !68, !alias.scope !101, !noalias !102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.avl = icmp eq i64 %index.next, %n.vec
  br i1 %i.avl, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count706
  br i1 %cmp.n, label %._crit_edge664, label %.lr.ph663.preheader1158

.lr.ph663.preheader1158:                          ; preds = %vector.memcheck, %.lr.ph663.preheader, %middle.block
  %indvars.iv703.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph663.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph663

.lr.ph663:                                        ; preds = %.lr.ph663.preheader1158, %.lr.ph663
  %indvars.iv703 = phi i64 [ %indvars.iv.next704, %.lr.ph663 ], [ %indvars.iv703.ph, %.lr.ph663.preheader1158 ] ; 7 uses
  %i.avm = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %indvars.iv703 ; 3 uses
  %i.avn = getelementptr inbounds nuw [12 x i8], ptr %i.ft, i64 %indvars.iv703 ; 3 uses
  %i.avo = load float, ptr %i.avm, align 4, !tbaa !68
  store float %i.avo, ptr %i.avn, align 4, !tbaa !68
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avm, i64 4
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !68
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avn, i64 4
  store float %i.avq, ptr %i.avr, align 4, !tbaa !68
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avm, i64 8
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !68
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avn, i64 8
  store float %i.avt, ptr %i.avu, align 4, !tbaa !68
  %i.avv = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %indvars.iv703 ; 3 uses
  %i.avw = getelementptr inbounds nuw [12 x i8], ptr %i.fw, i64 %indvars.iv703 ; 3 uses
  %i.avx = load float, ptr %i.avv, align 4, !tbaa !68
  store float %i.avx, ptr %i.avw, align 4, !tbaa !68
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avv, i64 4
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !68
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avw, i64 4
  store float %i.avz, ptr %i.awa, align 4, !tbaa !68
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avv, i64 8
  %i.awc = load float, ptr %i.awb, align 4, !tbaa !68
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avw, i64 8
  store float %i.awc, ptr %i.awd, align 4, !tbaa !68
  %i.awe = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %indvars.iv703 ; 3 uses
  %i.awf = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %indvars.iv703 ; 3 uses
  %i.awg = load float, ptr %i.awe, align 4, !tbaa !68
  store float %i.awg, ptr %i.awf, align 4, !tbaa !68
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awe, i64 4
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !68
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awf, i64 4
  store float %i.awi, ptr %i.awj, align 4, !tbaa !68
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awe, i64 8
  %i.awl = load float, ptr %i.awk, align 4, !tbaa !68
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awf, i64 8
  store float %i.awl, ptr %i.awm, align 4, !tbaa !68
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 1 ; 2 uses
  %exitcond707.not = icmp eq i64 %indvars.iv.next704, %wide.trip.count706
  br i1 %exitcond707.not, label %._crit_edge664, label %.lr.ph663, !llvm.loop !51

._crit_edge664:                                   ; preds = %.lr.ph663, %middle.block, %.preheader624, %.loopexit
  %i.awn = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.awo = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.awp = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.awq = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.awn, ptr noundef %i.awo, ptr noundef nonnull %i.e, ptr noundef %i.awp, ptr noundef nonnull %i.g)
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit

bb.ei:                                            ; preds = %._crit_edge664
  %i.awr = add nuw nsw i32 %.0239, 1
  br i1 %i.awq, label %bb.do, label %bb.ej, !llvm.loop !52

bb.ej:                                            ; preds = %bb.ei
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.qk)
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ek:                                            ; preds = %bb.ej
  %i.aws = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.gx)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses
end_hunk_0
