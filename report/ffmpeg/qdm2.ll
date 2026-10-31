Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qdm2?download=true
inline.NumInlined: 120
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 43
begin_hunk_0_@qdm2_decode_frame:bb.a
  %.5.1.i237240.i = phi i32 [ %spec.select.mux.i.i, %bb.ct ], [ 1, %.thread160.i.thread.i ]
  %i.apc = phi i32 [ %i.aox, %bb.ct ], [ %i.aoz, %.thread160.i.thread.i ]
  %i.apd = zext nneg i32 %.5.1.i237240.i to i64
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.apd
  store i32 %i.apc, ptr %i.ape, align 4, !tbaa !57
  br label %.thread164.i.i

.thread164.i.i:                                   ; preds = %.thread238.i, %bb.ct, %.thread160.i.thread.i, %.thread160.i.i
  %.5.2.i.i = phi i32 [ %spec.select.mux.i.i, %.thread160.i.i ], [ 2, %.thread238.i ], [ 2, %bb.ct ], [ 1, %.thread160.i.thread.i ] ; 3 uses
  %i.apf = load i32, ptr %i.bc, align 16, !tbaa !57 ; 2 uses
  %i.apg = icmp sgt i32 %i.apf, -1
  br i1 %i.apg, label %bb.cu, label %.thread169.i.i

bb.cu:                                            ; preds = %.thread164.i.i
  %i.aph = icmp sgt i32 %.5.2.i.i, -1
  br i1 %i.aph, label %bb.cv, label %.thread169.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.api = zext nneg i32 %.5.2.i.i to i64
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.api
  store i32 %i.apf, ptr %i.apj, align 4, !tbaa !57
  br label %.thread169.i.i

.thread169.i.i:                                   ; preds = %bb.cv, %bb.cu, %.thread164.i.i
  %.5.3.i.i = phi i32 [ %.5.2.i.i, %.thread164.i.i ], [ 3, %bb.cv ], [ 3, %bb.cu ] ; 3 uses
  %i.apk = load i32, ptr %i.bd, align 4, !tbaa !57 ; 2 uses
  %i.apl = icmp sgt i32 %i.apk, -1
  %i.apm = icmp sgt i32 %.5.3.i.i, -1             ; 2 uses
  br i1 %i.apl, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %.thread169.i.i
  br i1 %i.apm, label %bb.cx, label %.thread176.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.apn = zext nneg i32 %.5.3.i.i to i64
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.apn
  store i32 %i.apk, ptr %i.apo, align 4, !tbaa !57
  br label %.thread176.i.i

bb.cy:                                            ; preds = %.thread169.i.i
  br i1 %i.apm, label %.thread176.i.i, label %.thread171.i.i

.thread176.i.i:                                   ; preds = %bb.cy, %bb.cx, %bb.cw
  %.5.4178.i.i = phi i32 [ %.5.3.i.i, %bb.cy ], [ 4, %bb.cx ], [ 4, %bb.cw ]
  %i.app = load i32, ptr %i.au, align 16, !tbaa !73
  %i.apq = zext nneg i32 %.5.4178.i.i to i64
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.apq
  store i32 %i.app, ptr %i.apr, align 4, !tbaa !57
  br label %.thread171.i.i

qdm2_fft_tone_synthesizer.exit.thread.i:          ; preds = %bb.cj, %bb.cn, %bb.cm, %bb.cl, %._crit_edge.i74.i, %.preheader118.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %qdm2_decode.exit.thread

.thread171.i.i:                                   ; preds = %.thread176.i.i, %bb.cy, %.preheader119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.pre166.i = load i32, ptr %i.k, align 16, !tbaa !125
  br label %.thread.i

.thread.i:                                        ; preds = %.thread171.i.i, %bb.ci
  %i.aps = phi i32 [ %i.alh, %bb.ci ], [ %.pre166.i, %.thread171.i.i ] ; 2 uses
  %i.apt = load i32, ptr %i.s, align 4, !tbaa !39 ; 4 uses
  %i.apu = icmp sgt i32 %i.apt, 0
  br i1 %i.apu, label %.lr.ph.i89.i, label %._crit_edge.i80.i

.lr.ph.i89.i:                                     ; preds = %.thread.i
  %i.apv = load i32, ptr %i.bf, align 4, !tbaa !42
  %i.apw = sext i32 %i.apv to i64
  %i.apx = shl nsw i64 %i.apw, 3                  ; 9 uses
  %wide.trip.count.i90.i = zext nneg i32 %i.apt to i64 ; 2 uses
  %xtraiter289 = and i64 %wide.trip.count.i90.i, 7 ; 3 uses
  %i.apy = icmp ult i32 %i.apt, 8
  br i1 %i.apy, label %.epil.preheader, label %.lr.ph.i89.i.new

.lr.ph.i89.i.new:                                 ; preds = %.lr.ph.i89.i
  %unroll_iter293 = and i64 %wide.trip.count.i90.i, 2147483640
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.lr.ph.i89.i.new
  %indvars.iv.i91.i = phi i64 [ 0, %.lr.ph.i89.i.new ], [ %indvars.iv.next.i92.i.7, %bb.cz ] ; 9 uses
  %niter294 = phi i64 [ 0, %.lr.ph.i89.i.new ], [ %niter294.next.7, %bb.cz ]
  %i.apz = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.apz, i8 0, i64 %i.apx, i1 false)
  %i.aqa = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 2056
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqb, i8 0, i64 %i.apx, i1 false)
  %i.aqc = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 4112
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqd, i8 0, i64 %i.apx, i1 false)
  %i.aqe = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 6168
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqf, i8 0, i64 %i.apx, i1 false)
  %i.aqg = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8224
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqh, i8 0, i64 %i.apx, i1 false)
  %i.aqi = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 10280
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqj, i8 0, i64 %i.apx, i1 false)
  %i.aqk = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 12336
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aql, i8 0, i64 %i.apx, i1 false)
  %i.aqm = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 14392
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqn, i8 0, i64 %i.apx, i1 false)
  %indvars.iv.next.i92.i.7 = add nuw nsw i64 %indvars.iv.i91.i, 8 ; 2 uses
  %niter294.next.7 = add i64 %niter294, 8         ; 2 uses
  %niter294.ncmp.7 = icmp eq i64 %niter294.next.7, %unroll_iter293
  br i1 %niter294.ncmp.7, label %._crit_edge.i80.i.loopexit.unr-lcssa, label %bb.cz, !llvm.loop !107

._crit_edge.i80.i.loopexit.unr-lcssa:             ; preds = %bb.cz
  %lcmp.mod291.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod291.not, label %._crit_edge.i80.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i80.i.loopexit.unr-lcssa, %.lr.ph.i89.i
  %indvars.iv.i91.i.epil.init = phi i64 [ 0, %.lr.ph.i89.i ], [ %indvars.iv.next.i92.i.7, %._crit_edge.i80.i.loopexit.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter289, 0
  call void @llvm.assume(i1 %lcmp.mod292)
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.epil.preheader
  %indvars.iv.i91.i.epil = phi i64 [ %indvars.iv.i91.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i92.i.epil, %bb.da ] ; 2 uses
  %epil.iter290 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter290.next, %bb.da ]
  %i.aqo = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i.epil
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqo, i8 0, i64 %i.apx, i1 false)
  %indvars.iv.next.i92.i.epil = add nuw nsw i64 %indvars.iv.i91.i.epil, 1
  %epil.iter290.next = add i64 %epil.iter290, 1   ; 2 uses
  %epil.iter290.cmp.not = icmp eq i64 %epil.iter290.next, %xtraiter289
  br i1 %epil.iter290.cmp.not, label %._crit_edge.i80.i, label %bb.da, !llvm.loop !108

._crit_edge.i80.i:                                ; preds = %._crit_edge.i80.i.loopexit.unr-lcssa, %bb.da, %.thread.i
  %i.aqp = load i32, ptr %i.bd, align 4, !tbaa !57 ; 3 uses
  %i.aqq = icmp sgt i32 %i.aqp, -1
  br i1 %i.aqq, label %.preheader123.i.i, label %.loopexit.i81.i

.preheader123.i.i:                                ; preds = %._crit_edge.i80.i
  %i.aqr = load i32, ptr %i.bh, align 8, !tbaa !57 ; 2 uses
  %i.aqs = icmp slt i32 %i.aqp, %i.aqr
  br i1 %i.aqs, label %.lr.ph127.i.i, label %.loopexit.i81.i

.lr.ph127.i.i:                                    ; preds = %.preheader123.i.i
  %i.aqt = icmp eq i32 %i.apt, 1
  %i.aqu = zext nneg i32 %i.aqp to i64
  br label %bb.db

bb.db:                                            ; preds = %bb.dg, %.lr.ph127.i.i
  %indvars.iv141.i.i = phi i64 [ %i.aqu, %.lr.ph127.i.i ], [ %indvars.iv.next142.i.i, %bb.dg ] ; 2 uses
  %i.aqv = getelementptr inbounds nuw [10 x i8], ptr %i.bg, i64 %indvars.iv141.i.i ; 5 uses
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !76
  %i.aqx = sext i16 %i.aqw to i32
  %.not.i88.i = icmp eq i32 %i.aps, %i.aqx
  br i1 %.not.i88.i, label %bb.dc, label %.loopexit.i81.i

bb.dc:                                            ; preds = %bb.db
  br i1 %i.aqt, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqv, i64 2
  %i.aqz = load i8, ptr %i.aqy, align 2, !tbaa !77
  %i.ara = zext i8 %i.aqz to i64
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.arb = phi i64 [ %i.ara, %bb.dd ], [ 0, %bb.dc ]
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqv, i64 6
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !78 ; 2 uses
  %i.are = icmp slt i16 %i.ard, 0
  br i1 %i.are, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.arf = load i32, ptr %i.ac, align 8, !tbaa !50
  %.not114.i.i = icmp eq i32 %i.arf, 0
  %i.arg = zext i1 %.not114.i.i to i64
  %i.arh = getelementptr inbounds nuw [256 x i8], ptr @fft_tone_level_table, i64 %i.arg
  %i.ari = and i16 %i.ard, 63
  %i.arj = zext nneg i16 %i.ari to i64
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %i.arj
  %i.arl = load float, ptr %i.ark, align 4, !tbaa !32
  %i.arm = fpext nsz float %i.arl to double
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.arn = phi double [ %i.arm, %bb.df ], [ 0.000000e+00, %bb.de ]
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  %i.arp = load i8, ptr %i.aro, align 2, !tbaa !79
  %i.arq = uitofp i8 %i.arp to double
  %i.arr = fmul nnan nsz double %i.arq, f0x3FE921FB54442D18
  %sincos.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.arr) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.ars = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %i.arb
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqv, i64 4
  %i.aru = load i16, ptr %i.art, align 2, !tbaa !80
  %i.arv = sext i16 %i.aru to i64
  %i.arw = getelementptr inbounds [8 x i8], ptr %i.ars, i64 %i.arv ; 2 uses
  %i.arx = insertelement <2 x double> poison, double %i.arn, i64 0
  %i.ary = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %i.arz = insertelement <2 x double> %i.ary, double %sin.i.i, i64 1
  %i.asa = shufflevector <2 x double> %i.arx, <2 x double> poison, <4 x i32> zeroinitializer
  %i.asb = shufflevector <2 x double> %i.arz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.asc = fmul nsz <4 x double> %i.asa, %i.asb
  %i.asd = fptrunc nsz <4 x double> %i.asc to <4 x float> ; 2 uses
  %i.ase = load <4 x float>, ptr %i.arw, align 8, !tbaa !32 ; 2 uses
  %i.asf = fadd nsz <4 x float> %i.ase, %i.asd
  %i.asg = fsub nsz <4 x float> %i.ase, %i.asd
  %i.ash = shufflevector <4 x float> %i.asf, <4 x float> %i.asg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ash, ptr %i.arw, align 8, !tbaa !32
  %indvars.iv.next142.i.i = add nuw nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.asi = trunc nuw i64 %indvars.iv.next142.i.i to i32
  %i.asj = icmp sgt i32 %i.aqr, %i.asi
  br i1 %i.asj, label %bb.db, label %.loopexit.i81.i, !llvm.loop !109

.loopexit.i81.i:                                  ; preds = %bb.dg, %bb.db, %.preheader123.i.i, %._crit_edge.i80.i
  %i.ask = load i32, ptr %i.bi, align 4, !tbaa !140 ; 4 uses
  %i.asl = load i32, ptr %i.bj, align 8, !tbaa !141 ; 2 uses
  %.not115129.i.i = icmp eq i32 %i.ask, %i.asl
  br i1 %.not115129.i.i, label %.preheader122.i.i.preheader, label %.lr.ph131.i.i

.lr.ph131.i.i:                                    ; preds = %.loopexit.i81.i, %qdm2_fft_generate_tone.exit.i
  %i.asm = phi i32 [ %i.awn, %qdm2_fft_generate_tone.exit.i ], [ %i.ask, %.loopexit.i81.i ] ; 2 uses
  %i.asn = phi i32 [ %i.awp, %qdm2_fft_generate_tone.exit.i ], [ %i.asl, %.loopexit.i81.i ] ; 2 uses
  %i.aso = sext i32 %i.asn to i64
  %i.asp = getelementptr inbounds [40 x i8], ptr %i.bk, i64 %i.aso ; 10 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 28
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !145
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asp, i64 24 ; 2 uses
  %i.ast = load i32, ptr %i.ass, align 8, !tbaa !146
  %i.asu = add nsw i32 %i.ast, %i.asr             ; 2 uses
  store i32 %i.asu, ptr %i.ass, align 8, !tbaa !146
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asp, i64 32
  %i.asw = load i32, ptr %i.asv, align 8, !tbaa !147 ; 3 uses
  %i.asx = sext i32 %i.asw to i64
  %i.asy = getelementptr inbounds [124 x i8], ptr @fft_tone_envelope_table, i64 %i.asx
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asp, i64 36 ; 2 uses
  %i.ata = load i16, ptr %i.asz, align 4, !tbaa !148 ; 2 uses
  %i.atb = sext i16 %i.ata to i64
  %i.atc = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %i.atb
  %i.atd = load float, ptr %i.atc, align 4, !tbaa !32
  %i.ate = load float, ptr %i.asp, align 8, !tbaa !149
  %i.atf = fmul nsz float %i.atd, %i.ate
  %i.atg = fpext nsz float %i.atf to double
  %i.ath = sitofp nsz i32 %i.asu to double
  %i.ati = fmul nnan nsz double %i.ath, f0x3F8921FB54442D18
  %sincos.i110.i = call nsz { double, double } @llvm.sincos.f64(double %i.ati) ; 2 uses
  %sin.i111.i = extractvalue { double, double } %sincos.i110.i, 0
  %cos.i112.i = extractvalue { double, double } %sincos.i110.i, 1
  %i.atj = insertelement <2 x double> poison, double %cos.i112.i, i64 0
  %i.atk = insertelement <2 x double> %i.atj, double %sin.i111.i, i64 1
  %i.atl = insertelement <2 x double> poison, double %i.atg, i64 0
  %i.atm = shufflevector <2 x double> %i.atl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.atn = fmul nsz <2 x double> %i.atk, %i.atm
  %i.ato = fptrunc nsz <2 x double> %i.atn to <2 x float> ; 3 uses
  %i.atp = shufflevector <2 x float> %i.ato, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.atq = icmp sgt i32 %i.asw, 2
  br i1 %i.atq, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph131.i.i
  %i.atr = getelementptr inbounds nuw i8, ptr %i.asp, i64 38
  %i.ats = load i16, ptr %i.atr, align 2, !tbaa !150 ; 4 uses
  %i.att = icmp sgt i16 %i.ats, 2
  br i1 %i.att, label %bb.di, label %.preheader.i113.i

bb.di:                                            ; preds = %bb.dh, %.lr.ph131.i.i
  %i.atu = getelementptr inbounds nuw i8, ptr %i.asp, i64 8
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !151 ; 2 uses
  %i.atw = load <4 x float>, ptr %i.atv, align 4, !tbaa !32 ; 2 uses
  %i.atx = fadd nsz <4 x float> %i.atw, %i.atp
  %i.aty = fsub nsz <4 x float> %i.atw, %i.atp
  %i.atz = shufflevector <4 x float> %i.atx, <4 x float> %i.aty, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.atz, ptr %i.atv, align 4, !tbaa !32
  br label %.loopexit.i115.i

.preheader.i113.i:                                ; preds = %bb.dh
  %i.aua = getelementptr inbounds nuw i8, ptr %i.asp, i64 16
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !152 ; 5 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 16
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !32 ; 3 uses
  %i.aue = fneg nsz float %i.aud                  ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 12
  %i.aug = load float, ptr %i.auf, align 4, !tbaa !32 ; 2 uses
  %i.auh = load float, ptr %i.aub, align 4, !tbaa !32 ; 2 uses
  %i.aui = fsub nsz float %i.aug, %i.auh          ; 3 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aub, i64 8
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !32 ; 2 uses
  %i.aul = fpext nsz float %i.auk to double
  %i.aum = fsub nsz double 1.000000e+00, %i.aul
  %i.aun = fpext nsz float %i.aug to double
  %i.auo = fsub nsz double %i.aum, %i.aun
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aub, i64 4
  %i.auq = load float, ptr %i.aup, align 4, !tbaa !32 ; 2 uses
  %i.aur = fadd nsz float %i.aud, %i.auq
  %i.aus = fsub nsz float %i.auh, %i.auq
  %i.aut = getelementptr inbounds nuw i8, ptr %i.asp, i64 8
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !151 ; 5 uses
  %i.auv = sext i16 %i.ats to i64
  %i.auw = getelementptr inbounds [8 x i8], ptr @fft_cutoff_index_table, i64 %i.auv ; 2 uses
  %i.aux = load i32, ptr %i.auw, align 8, !tbaa !57
  %i.auy = sext i32 %i.aux to i64
  %i.auz = getelementptr inbounds [8 x i8], ptr %i.auu, i64 %i.auy ; 2 uses
  %.not.i114.i = icmp sgt i16 %i.ats, 0
  %i.ava = fneg nsz float %i.aui
  %i.avb = select nsz i1 %.not.i114.i, float %i.aui, float %i.ava
  %i.avc = load <2 x float>, ptr %i.auz, align 4, !tbaa !32
  %i.avd = insertelement <2 x float> poison, float %i.aui, i64 0
  %i.ave = insertelement <2 x float> %i.avd, float %i.avb, i64 1
  %i.avf = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ato, <2 x float> %i.ave, <2 x float> %i.avc)
  store <2 x float> %i.avf, ptr %i.auz, align 4, !tbaa !32
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auw, i64 4
  %i.avh = load i32, ptr %i.avg, align 4, !tbaa !57
  %i.avi = sext i32 %i.avh to i64
  %i.avj = getelementptr inbounds [8 x i8], ptr %i.auu, i64 %i.avi ; 2 uses
  %.not.1.i.i = icmp eq i16 %i.ats, 2
  %i.avk = select nsz i1 %.not.1.i.i, float %i.aue, float %i.aud
  %i.avl = load <2 x float>, ptr %i.avj, align 4, !tbaa !32
  %i.avm = insertelement <2 x float> poison, float %i.aue, i64 0
  %i.avn = insertelement <2 x float> %i.avm, float %i.avk, i64 1
  %i.avo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ato, <2 x float> %i.avn, <2 x float> %i.avl)
  store <2 x float> %i.avo, ptr %i.avj, align 4, !tbaa !32
  %i.avp = fptrunc nsz double %i.auo to float
  %i.avq = insertelement <4 x float> poison, float %i.avp, i64 0
  %i.avr = insertelement <4 x float> %i.avq, float %i.aur, i64 1
  %i.avs = fadd nsz <4 x float> %i.avr, <float -0.000000e+00, float -1.000000e+00, float poison, float poison>
  %i.avt = shufflevector <4 x float> %i.avs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.avu = load <4 x float>, ptr %i.auu, align 4, !tbaa !32
  %i.avv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atp, <4 x float> %i.avt, <4 x float> %i.avu)
  store <4 x float> %i.avv, ptr %i.auu, align 4, !tbaa !32
  %i.avw = getelementptr inbounds nuw i8, ptr %i.auu, i64 16 ; 2 uses
  %i.avx = load <4 x float>, ptr %i.avw, align 4, !tbaa !32
  %i.avy = insertelement <4 x float> poison, float %i.aus, i64 0
  %i.avz = insertelement <4 x float> %i.avy, float %i.auk, i64 1
  %i.awa = shufflevector <4 x float> %i.avz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.awb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atp, <4 x float> %i.awa, <4 x float> %i.avx)
  store <4 x float> %i.awb, ptr %i.avw, align 4, !tbaa !32
  br label %.loopexit.i115.i

.loopexit.i115.i:                                 ; preds = %.preheader.i113.i, %bb.di
  %i.awc = add i16 %i.ata, 1                      ; 2 uses
  store i16 %i.awc, ptr %i.asz, align 4, !tbaa !148
  %i.awd = sext i16 %i.awc to i32
  %i.awe = sub nsw i32 5, %i.asw
  %notmask.i.i = shl nsw i32 -1, %i.awe
  %i.awf = xor i32 %notmask.i.i, -1
  %i.awg = icmp slt i32 %i.awd, %i.awf
  br i1 %i.awg, label %bb.dj, label %qdm2_fft_generate_tone.exit.i

bb.dj:                                            ; preds = %.loopexit.i115.i
  %i.awh = sext i32 %i.asm to i64
  %i.awi = getelementptr inbounds [40 x i8], ptr %i.bk, i64 %i.awh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.awi, ptr noundef nonnull align 8 dereferenceable(40) %i.asp, i64 40, i1 false)
  %i.awj = load i32, ptr %i.bi, align 4, !tbaa !140
  %i.awk = add nsw i32 %i.awj, 1
  %i.awl = srem i32 %i.awk, 1000                  ; 2 uses
  store i32 %i.awl, ptr %i.bi, align 4, !tbaa !140
  %.pre167.i = load i32, ptr %i.bj, align 8, !tbaa !141
  br label %qdm2_fft_generate_tone.exit.i

qdm2_fft_generate_tone.exit.i:                    ; preds = %bb.dj, %.loopexit.i115.i
  %i.awm = phi i32 [ %i.asn, %.loopexit.i115.i ], [ %.pre167.i, %bb.dj ]
  %i.awn = phi i32 [ %i.asm, %.loopexit.i115.i ], [ %i.awl, %bb.dj ] ; 2 uses
  %i.awo = add nsw i32 %i.awm, 1
  %i.awp = srem i32 %i.awo, 1000                  ; 3 uses
  store i32 %i.awp, ptr %i.bj, align 8, !tbaa !141
  %.not115.i.i = icmp eq i32 %i.ask, %i.awp
  br i1 %.not115.i.i, label %.preheader122.i.i.preheader, label %.lr.ph131.i.i, !llvm.loop !110

.preheader122.i.i.preheader:                      ; preds = %qdm2_fft_generate_tone.exit.i, %.loopexit.i81.i
  %.ph = phi i32 [ %i.ask, %.loopexit.i81.i ], [ %i.awn, %qdm2_fft_generate_tone.exit.i ]
  br label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %.preheader122.i.i.preheader, %bb.dt
  %i.awq = phi i32 [ %i.bbz, %bb.dt ], [ %.ph, %.preheader122.i.i.preheader ] ; 3 uses
  %indvars.iv147.i.i = phi i64 [ %indvars.iv.next148.i.i, %bb.dt ], [ 0, %.preheader122.i.i.preheader ] ; 7 uses
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv147.i.i ; 2 uses
  %i.aws = load i32, ptr %i.awr, align 4, !tbaa !57 ; 4 uses
  %i.awt = icmp sgt i32 %i.aws, -1
  br i1 %i.awt, label %.preheader.i82.i, label %bb.dt

.preheader.i82.i:                                 ; preds = %.preheader122.i.i
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv147.i.i ; 2 uses
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !57 ; 2 uses
  %i.aww = icmp slt i32 %i.aws, %i.awv
  br i1 %i.aww, label %.lr.ph133.i.i, label %qdm2_fft_generate_tone.exit.i.i

.lr.ph133.i.i:                                    ; preds = %.preheader.i82.i
  %i.awx = getelementptr inbounds nuw [320 x i8], ptr @fft_tone_sample_table, i64 %indvars.iv147.i.i
  %i.awy = getelementptr inbounds nuw [124 x i8], ptr @fft_tone_envelope_table, i64 %indvars.iv147.i.i
  %i.awz = icmp eq i64 %indvars.iv147.i.i, 3
  %i.axa = zext nneg i32 %i.aws to i64
  %i.axb = trunc i64 %indvars.iv147.i.i to i32    ; 3 uses
  %i.axc = sub i32 4, %i.axb                      ; 2 uses
  %i.axd = add i32 %i.axb, 3
  br label %bb.dk

bb.dk:                                            ; preds = %bb.ds, %.lr.ph133.i.i
  %i.axe = phi i32 [ %i.awq, %.lr.ph133.i.i ], [ %i.bbu, %bb.ds ] ; 4 uses
  %i.axf = phi i32 [ %i.awv, %.lr.ph133.i.i ], [ %i.bbv, %bb.ds ]
  %indvars.iv144.i.i = phi i64 [ %i.axa, %.lr.ph133.i.i ], [ %indvars.iv.next145.i.i, %bb.ds ] ; 3 uses
  %i.axg = getelementptr inbounds nuw [10 x i8], ptr %i.bg, i64 %indvars.iv144.i.i ; 5 uses
  %i.axh = load i16, ptr %i.axg, align 2, !tbaa !76
  %i.axi = sext i16 %i.axh to i32
  %.not116.i.i = icmp eq i32 %i.aps, %i.axi
  br i1 %.not116.i.i, label %bb.dl, label %qdm2_fft_generate_tone.exit.loopexit.split.loop.exit.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axg, i64 4
  %i.axk = load i16, ptr %i.axj, align 2, !tbaa !80
  %i.axl = sext i16 %i.axk to i32                 ; 3 uses
  %i.axm = ashr i32 %i.axl, %i.axc                ; 7 uses
  %i.axn = load i32, ptr %i.s, align 4, !tbaa !39
  %i.axo = icmp eq i32 %i.axn, 1
  br i1 %i.axo, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axg, i64 2
  %i.axq = load i8, ptr %i.axp, align 2, !tbaa !77
  %i.axr = zext i8 %i.axq to i64
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.axs = phi i64 [ %i.axr, %bb.dm ], [ 0, %bb.dl ]
  %i.axt = load i32, ptr %i.bl, align 16, !tbaa !47
  %i.axu = icmp slt i32 %i.axm, %i.axt
  br i1 %i.axu, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %bb.dn
  %i.axv = icmp slt i32 %i.axm, 2
  %i.axw = trunc nsw i32 %i.axm to i16
  %i.axx = icmp samesign ugt i32 %i.axm, 59
  %i.axy = select i1 %i.axx, i16 3, i16 2
  %.sroa.20.0.i.i = select i1 %i.axv, i16 %i.axw, i16 %i.axy ; 5 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axg, i64 6
  %i.aya = load i16, ptr %i.axz, align 2, !tbaa !78 ; 2 uses
  %i.ayb = icmp slt i16 %i.aya, 0
  br i1 %i.ayb, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ayc = load i32, ptr %i.ac, align 8, !tbaa !50
  %.not117.i.i = icmp eq i32 %i.ayc, 0
  %i.ayd = zext i1 %.not117.i.i to i64
  %i.aye = getelementptr inbounds nuw [256 x i8], ptr @fft_tone_level_table, i64 %i.ayd
  %i.ayf = and i16 %i.aya, 63
  %i.ayg = zext nneg i16 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %i.ayg
  %i.ayi = load float, ptr %i.ayh, align 4, !tbaa !32
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ayj = phi float [ %i.ayi, %bb.dp ], [ 0.000000e+00, %bb.do ] ; 2 uses
  %i.ayk = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %i.axs
  %i.ayl = sext i32 %i.axm to i64
  %i.aym = getelementptr inbounds [8 x i8], ptr %i.ayk, i64 %i.ayl ; 8 uses
  %i.ayn = shl nsw i32 %i.axm, %i.axc
  %i.ayo = sub nsw i32 %i.axl, %i.ayn
  %i.ayp = sext i32 %i.ayo to i64
  %i.ayq = getelementptr inbounds [20 x i8], ptr %i.awx, i64 %i.ayp ; 6 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.ays = load i8, ptr %i.ayr, align 2, !tbaa !79
  %i.ayt = zext i8 %i.ays to i32
  %i.ayu = shl nuw nsw i32 %i.ayt, 6
  %i.ayv = shl nsw i32 %i.axl, 1
  %i.ayw = or disjoint i32 %i.ayv, 1
  %i.ayx = shl nsw i32 %i.ayw, %i.axd             ; 2 uses
  %i.ayy = shl nsw i32 %i.axm, 8
  %reass.sub = sub i32 %i.ayx, %i.ayy
  %i.ayz = add i32 %reass.sub, -128
  %i.aza = add i32 %i.ayz, %i.ayu                 ; 2 uses
  %i.azb = load float, ptr %i.awy, align 4, !tbaa !32
  %i.azc = fmul nsz float %i.ayj, %i.azb
  %i.azd = fpext nsz float %i.azc to double
  %i.aze = sitofp nsz i32 %i.aza to double
  %i.azf = fmul nnan nsz double %i.aze, f0x3F8921FB54442D18
  %sincos.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.azf) ; 2 uses
  %sin.i.i.i = extractvalue { double, double } %sincos.i.i.i, 0
  %cos.i.i.i = extractvalue { double, double } %sincos.i.i.i, 1
  %i.azg = insertelement <2 x double> poison, double %cos.i.i.i, i64 0
  %i.azh = insertelement <2 x double> %i.azg, double %sin.i.i.i, i64 1
  %i.azi = insertelement <2 x double> poison, double %i.azd, i64 0
  %i.azj = shufflevector <2 x double> %i.azi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.azk = fmul nsz <2 x double> %i.azh, %i.azj
  %i.azl = fptrunc nsz <2 x double> %i.azk to <2 x float> ; 3 uses
  %i.azm = shufflevector <2 x float> %i.azl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.azn = icmp sgt i16 %.sroa.20.0.i.i, 2
  %or.cond.i84.i = select i1 %i.awz, i1 true, i1 %i.azn
  br i1 %or.cond.i84.i, label %bb.dr, label %.preheader.i.i85.i

bb.dr:                                            ; preds = %bb.dq
  %i.azo = load <4 x float>, ptr %i.aym, align 4, !tbaa !32 ; 2 uses
  %i.azp = fadd nsz <4 x float> %i.azo, %i.azm
  %i.azq = fsub nsz <4 x float> %i.azo, %i.azm
  %i.azr = shufflevector <4 x float> %i.azp, <4 x float> %i.azq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.azr, ptr %i.aym, align 4, !tbaa !32
  br label %.loopexit.i.i.i

.preheader.i.i85.i:                               ; preds = %bb.dq
  %i.azs = getelementptr inbounds nuw i8, ptr %i.ayq, i64 16
  %i.azt = load float, ptr %i.azs, align 4, !tbaa !32 ; 3 uses
  %i.azu = fneg nsz float %i.azt                  ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.ayq, i64 12
  %i.azw = load float, ptr %i.azv, align 4, !tbaa !32 ; 2 uses
  %i.azx = load float, ptr %i.ayq, align 4, !tbaa !32 ; 2 uses
  %i.azy = fsub nsz float %i.azw, %i.azx          ; 3 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.ayq, i64 8
  %i.baa = load float, ptr %i.azz, align 4, !tbaa !32 ; 2 uses
  %i.bab = fpext nsz float %i.baa to double
  %i.bac = fsub nsz double 1.000000e+00, %i.bab
  %i.bad = fpext nsz float %i.azw to double
  %i.bae = fsub nsz double %i.bac, %i.bad
  %i.baf = getelementptr inbounds nuw i8, ptr %i.ayq, i64 4
  %i.bag = load float, ptr %i.baf, align 4, !tbaa !32 ; 2 uses
  %i.bah = fadd nsz float %i.azt, %i.bag
  %i.bai = fsub nsz float %i.azx, %i.bag
  %i.baj = sext i16 %.sroa.20.0.i.i to i64
  %i.bak = getelementptr inbounds [8 x i8], ptr @fft_cutoff_index_table, i64 %i.baj ; 2 uses
  %i.bal = load i32, ptr %i.bak, align 8, !tbaa !57
  %i.bam = sext i32 %i.bal to i64
  %i.ban = getelementptr inbounds [8 x i8], ptr %i.aym, i64 %i.bam ; 2 uses
  %.not.i.i86.i = icmp sgt i16 %.sroa.20.0.i.i, 0
  %i.bao = fneg nsz float %i.azy
  %i.bap = select nsz i1 %.not.i.i86.i, float %i.azy, float %i.bao
  %i.baq = load <2 x float>, ptr %i.ban, align 4, !tbaa !32
  %i.bar = insertelement <2 x float> poison, float %i.azy, i64 0
  %i.bas = insertelement <2 x float> %i.bar, float %i.bap, i64 1
  %i.bat = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azl, <2 x float> %i.bas, <2 x float> %i.baq)
  store <2 x float> %i.bat, ptr %i.ban, align 4, !tbaa !32
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bak, i64 4
  %i.bav = load i32, ptr %i.bau, align 4, !tbaa !57
  %i.baw = sext i32 %i.bav to i64
  %i.bax = getelementptr inbounds [8 x i8], ptr %i.aym, i64 %i.baw ; 2 uses
  %.not.1.i.i.i = icmp eq i16 %.sroa.20.0.i.i, 2
  %i.bay = select nsz i1 %.not.1.i.i.i, float %i.azu, float %i.azt
  %i.baz = load <2 x float>, ptr %i.bax, align 4, !tbaa !32
  %i.bba = insertelement <2 x float> poison, float %i.azu, i64 0
  %i.bbb = insertelement <2 x float> %i.bba, float %i.bay, i64 1
  %i.bbc = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azl, <2 x float> %i.bbb, <2 x float> %i.baz)
  store <2 x float> %i.bbc, ptr %i.bax, align 4, !tbaa !32
  %i.bbd = fptrunc nsz double %i.bae to float
  %i.bbe = insertelement <4 x float> poison, float %i.bbd, i64 0
  %i.bbf = insertelement <4 x float> %i.bbe, float %i.bah, i64 1
  %i.bbg = fadd nsz <4 x float> %i.bbf, <float -0.000000e+00, float -1.000000e+00, float poison, float poison>
  %i.bbh = shufflevector <4 x float> %i.bbg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bbi = load <4 x float>, ptr %i.aym, align 4, !tbaa !32
  %i.bbj = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azm, <4 x float> %i.bbh, <4 x float> %i.bbi)
  store <4 x float> %i.bbj, ptr %i.aym, align 4, !tbaa !32
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.aym, i64 16 ; 2 uses
  %i.bbl = load <4 x float>, ptr %i.bbk, align 4, !tbaa !32
  %i.bbm = insertelement <4 x float> poison, float %i.bai, i64 0
  %i.bbn = insertelement <4 x float> %i.bbm, float %i.baa, i64 1
  %i.bbo = shufflevector <4 x float> %i.bbn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bbp = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azm, <4 x float> %i.bbo, <4 x float> %i.bbl)
  store <4 x float> %i.bbp, ptr %i.bbk, align 4, !tbaa !32
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i85.i, %bb.dr
  %i.bbq = sext i32 %i.axe to i64
  %i.bbr = getelementptr inbounds [40 x i8], ptr %i.bk, i64 %i.bbq ; 8 uses
  store float %i.ayj, ptr %i.bbr, align 8
  %.sroa.5118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  store ptr %i.aym, ptr %.sroa.5118.0..sroa_idx.i.i, align 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16
  store ptr %i.ayq, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bbr, i64 24
  store i32 %i.aza, ptr %.sroa.10.0..sroa_idx.i.i, align 8
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bbr, i64 28
  store i32 %i.ayx, ptr %.sroa.13.0..sroa_idx.i.i, align 4
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bbr, i64 32
  store i32 %i.axb, ptr %.sroa.15.0..sroa_idx.i.i, align 8
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bbr, i64 36
  store i16 1, ptr %.sroa.17.0..sroa_idx.i.i, align 4
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bbr, i64 38
  store i16 %.sroa.20.0.i.i, ptr %.sroa.20.0..sroa_idx.i.i, align 2
  %i.bbs = add nsw i32 %i.axe, 1
  %i.bbt = srem i32 %i.bbs, 1000                  ; 2 uses
  store i32 %i.bbt, ptr %i.bi, align 4, !tbaa !140
  %.pre.i87.i = load i32, ptr %i.awu, align 4, !tbaa !57
  br label %bb.ds

bb.ds:                                            ; preds = %.loopexit.i.i.i, %bb.dn
  %i.bbu = phi i32 [ %i.bbt, %.loopexit.i.i.i ], [ %i.axe, %bb.dn ] ; 2 uses
  %i.bbv = phi i32 [ %.pre.i87.i, %.loopexit.i.i.i ], [ %i.axf, %bb.dn ] ; 2 uses
  %indvars.iv.next145.i.i = add nuw nsw i64 %indvars.iv144.i.i, 1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next145.i.i to i32 ; 2 uses
  %i.bbw = icmp sgt i32 %i.bbv, %indvars.i.i
  br i1 %i.bbw, label %bb.dk, label %qdm2_fft_generate_tone.exit.i.i, !llvm.loop !111

qdm2_fft_generate_tone.exit.loopexit.split.loop.exit.i.i: ; preds = %bb.dk
  %i.bbx = trunc nuw i64 %indvars.iv144.i.i to i32
  br label %qdm2_fft_generate_tone.exit.i.i

qdm2_fft_generate_tone.exit.i.i:                  ; preds = %bb.ds, %qdm2_fft_generate_tone.exit.loopexit.split.loop.exit.i.i, %.preheader.i82.i
  %i.bby = phi i32 [ %i.awq, %.preheader.i82.i ], [ %i.axe, %qdm2_fft_generate_tone.exit.loopexit.split.loop.exit.i.i ], [ %i.bbu, %bb.ds ]
  %.0105.lcssa.i.i = phi i32 [ %i.aws, %.preheader.i82.i ], [ %i.bbx, %qdm2_fft_generate_tone.exit.loopexit.split.loop.exit.i.i ], [ %indvars.i.i, %bb.ds ]
  store i32 %.0105.lcssa.i.i, ptr %i.awr, align 4, !tbaa !57
  br label %bb.dt

bb.dt:                                            ; preds = %qdm2_fft_generate_tone.exit.i.i, %.preheader122.i.i
  %i.bbz = phi i32 [ %i.bby, %qdm2_fft_generate_tone.exit.i.i ], [ %i.awq, %.preheader122.i.i ]
  %indvars.iv.next148.i.i = add nuw nsw i64 %indvars.iv147.i.i, 1 ; 2 uses
  %exitcond151.not.i.i = icmp eq i64 %indvars.iv.next148.i.i, 4
  br i1 %exitcond151.not.i.i, label %qdm2_fft_tone_synthesizer.exit.i, label %.preheader122.i.i, !llvm.loop !112

qdm2_fft_tone_synthesizer.exit.i:                 ; preds = %bb.dt, %qdm2_decode_super_block.exit.i
  %i.bca = load i32, ptr %i.s, align 4, !tbaa !39 ; 3 uses
  %i.bcb = icmp sgt i32 %i.bca, 0
  br i1 %i.bcb, label %.lr.ph.i, label %qdm2_fft_tone_synthesizer.exit.._crit_edge_crit_edge.i

qdm2_fft_tone_synthesizer.exit.._crit_edge_crit_edge.i: ; preds = %qdm2_fft_tone_synthesizer.exit.i
  %.pre168.i = load i32, ptr %i.w, align 4, !tbaa !134
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %qdm2_fft_tone_synthesizer.exit.i, %bb.dz
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.dz ], [ 0, %qdm2_fft_tone_synthesizer.exit.i ] ; 4 uses
  %i.bcc = phi i32 [ %i.bei, %bb.dz ], [ %i.bca, %qdm2_fft_tone_synthesizer.exit.i ]
  %i.bcd = icmp eq i32 %i.bcc, 1
  br i1 %i.bcd, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.lr.ph.i
  %i.bce = load i32, ptr %i.e, align 16, !tbaa !40
  %i.bcf = icmp eq i32 %i.bce, 2
  %i.bcg = select nsz i1 %i.bcf, float 5.000000e-01, float 1.000000e+00
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.lr.ph.i
  %i.bch = phi float [ 1.000000e+00, %.lr.ph.i ], [ %i.bcg, %bb.du ] ; 6 uses
  %i.bci = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i ; 5 uses
  %i.bcj = load float, ptr %i.bci, align 8, !tbaa !154
  %i.bck = fmul nsz float %i.bcj, 2.000000e+00
  store float %i.bck, ptr %i.bci, align 8, !tbaa !154
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bci, i64 4
  store float 0.000000e+00, ptr %i.bcl, align 4, !tbaa !155
  %i.bcm = load i32, ptr %i.bf, align 4, !tbaa !42
  %i.bcn = sext i32 %i.bcm to i64
  %i.bco = getelementptr inbounds [8 x i8], ptr %i.bci, i64 %i.bcn
  store <2 x float> zeroinitializer, ptr %i.bco, align 8, !tbaa !32
  %i.bcp = load ptr, ptr %i.bm, align 16, !tbaa !156
  %i.bcq = load ptr, ptr %i.bn, align 8, !tbaa !157
  %i.bcr = getelementptr inbounds nuw [2048 x i8], ptr %i.bo, i64 %indvars.iv.i ; 4 uses
  call void %i.bcp(ptr noundef %i.bcq, ptr noundef nonnull %i.bcr, ptr noundef nonnull %i.bci, i64 noundef 8) #11, !inline_history !113
  %i.bcs = load i32, ptr %i.bf, align 4, !tbaa !42 ; 2 uses
  %i.bct = icmp sgt i32 %i.bcs, 0
  br i1 %i.bct, label %.lr.ph.i95.i, label %qdm2_calculate_fft.exit.i

.lr.ph.i95.i:                                     ; preds = %bb.dv
  %i.bcu = add nuw i32 %i.bcs, 7
  %i.bcv = and i32 %i.bcu, -8
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i ; 2 uses
  %i.bcx = load i32, ptr %i.s, align 4, !tbaa !39 ; 2 uses
  %i.bcy = sext i32 %i.bcx to i64                 ; 3 uses
  %i.bcz = shl nsw i32 %i.bcx, 1
  %i.bda = sext i32 %i.bcz to i64                 ; 2 uses
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.bcv, i32 1) ; 3 uses
  %wide.trip.count.i96.i = zext nneg i32 %smax.i.i to i64 ; 2 uses
  %xtraiter296 = and i64 %wide.trip.count.i96.i, 1
  %i.bdb = icmp eq i32 %smax.i.i, 1
  br i1 %i.bdb, label %.epil.preheader295, label %.lr.ph.i95.i.new

.lr.ph.i95.i.new:                                 ; preds = %.lr.ph.i95.i
  %unroll_iter300 = and i64 %wide.trip.count.i96.i, 2147483640
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %.lr.ph.i95.i.new
  %indvars.iv.i97.i = phi i64 [ 0, %.lr.ph.i95.i.new ], [ %indvars.iv.next.i98.i.1, %bb.dw ] ; 3 uses
  %.03536.i.i = phi ptr [ %i.bcw, %.lr.ph.i95.i.new ], [ %i.bdw, %bb.dw ] ; 4 uses
  %niter301 = phi i64 [ 0, %.lr.ph.i95.i.new ], [ %niter301.next.1, %bb.dw ]
  %i.bdc = getelementptr inbounds nuw [8 x i8], ptr %i.bcr, i64 %indvars.iv.i97.i ; 2 uses
  %i.bdd = load float, ptr %i.bdc, align 8, !tbaa !154
  %i.bde = load float, ptr %.03536.i.i, align 4, !tbaa !32
  %i.bdf = call nsz float @llvm.fmuladd.f32(float %i.bdd, float %i.bch, float %i.bde)
  store float %i.bdf, ptr %.03536.i.i, align 4, !tbaa !32
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdc, i64 4
  %i.bdh = load float, ptr %i.bdg, align 4, !tbaa !155
  %i.bdi = getelementptr inbounds [4 x i8], ptr %.03536.i.i, i64 %i.bcy ; 2 uses
  %i.bdj = load float, ptr %i.bdi, align 4, !tbaa !32
  %i.bdk = call nsz float @llvm.fmuladd.f32(float %i.bdh, float %i.bch, float %i.bdj)
  store float %i.bdk, ptr %i.bdi, align 4, !tbaa !32
  %i.bdl = getelementptr inbounds [4 x i8], ptr %.03536.i.i, i64 %i.bda ; 4 uses
  %i.bdm = getelementptr inbounds nuw [8 x i8], ptr %i.bcr, i64 %indvars.iv.i97.i ; 2 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 8
  %i.bdo = load float, ptr %i.bdn, align 8, !tbaa !154
  %i.bdp = load float, ptr %i.bdl, align 4, !tbaa !32
  %i.bdq = call nsz float @llvm.fmuladd.f32(float %i.bdo, float %i.bch, float %i.bdp)
end_hunk_0
begin_hunk_1_@synthfilt_build_sb_samples:bb.a
  %i.act = and i32 %spec.select.i323.2, 7
  %i.acu = lshr i32 %i.acs, %i.act
  store i32 %spec.select.i324.2, ptr %i.e, align 8, !tbaa !72
  %i.acv = shl nuw nsw i32 %i.acu, 1
  %i.acw = and i32 %i.acv, 2
  %i.acx = zext nneg i32 %i.acw to i64
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.acx
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !32
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %spec.select.i324393.2 = phi i32 [ %spec.select.i324.2, %bb.bk ], [ %spec.select.i323.2, %bb.bj ] ; 10 uses
  %i.ada = phi nsz float [ %i.acz, %bb.bk ], [ 0.000000e+00, %bb.bj ]
  store float %i.ada, ptr %i.bb, align 8, !tbaa !32
  %exitcond478.2 = icmp eq i32 %i.aaa, 3
  br i1 %exitcond478.2, label %.loopexit359, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.adb = lshr i32 %spec.select.i324393.2, 3
  %i.adc = zext nneg i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.adc
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !33
  %i.adf = icmp slt i32 %spec.select.i324393.2, %i.zy
  %i.adg = zext i1 %i.adf to i32
  %spec.select.i323.3 = add i32 %spec.select.i324393.2, %i.adg ; 6 uses
  %i.adh = zext i8 %i.ade to i32
  %i.adi = and i32 %spec.select.i324393.2, 7
  store i32 %spec.select.i323.3, ptr %i.e, align 8, !tbaa !72
  %i.adj = shl nuw nsw i32 1, %i.adi
  %i.adk = and i32 %i.adj, %i.adh
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.adm = lshr i32 %spec.select.i323.3, 3
  %i.adn = zext nneg i32 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !33
  %i.adq = icmp slt i32 %spec.select.i323.3, %i.zy
  %i.adr = zext i1 %i.adq to i32
  %spec.select.i324.3 = add i32 %spec.select.i323.3, %i.adr ; 2 uses
  %i.ads = zext i8 %i.adp to i32
  %i.adt = and i32 %spec.select.i323.3, 7
  %i.adu = lshr i32 %i.ads, %i.adt
  store i32 %spec.select.i324.3, ptr %i.e, align 8, !tbaa !72
  %i.adv = shl nuw nsw i32 %i.adu, 1
  %i.adw = and i32 %i.adv, 2
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.adx
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %spec.select.i324393.3 = phi i32 [ %spec.select.i324.3, %bb.bn ], [ %spec.select.i323.3, %bb.bm ] ; 10 uses
  %i.aea = phi nsz float [ %i.adz, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  store float %i.aea, ptr %i.bc, align 4, !tbaa !32
  %exitcond478.3 = icmp eq i32 %i.aaa, 4
  br i1 %exitcond478.3, label %.loopexit359, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aeb = lshr i32 %spec.select.i324393.3, 3
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.aec
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !33
  %i.aef = icmp slt i32 %spec.select.i324393.3, %i.zy
  %i.aeg = zext i1 %i.aef to i32
  %spec.select.i323.4 = add i32 %spec.select.i324393.3, %i.aeg ; 6 uses
  %i.aeh = zext i8 %i.aee to i32
  %i.aei = and i32 %spec.select.i324393.3, 7
  store i32 %spec.select.i323.4, ptr %i.e, align 8, !tbaa !72
  %i.aej = shl nuw nsw i32 1, %i.aei
  %i.aek = and i32 %i.aej, %i.aeh
  %i.ael = icmp eq i32 %i.aek, 0
  br i1 %i.ael, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.aem = lshr i32 %spec.select.i323.4, 3
  %i.aen = zext nneg i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.aen
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !33
  %i.aeq = icmp slt i32 %spec.select.i323.4, %i.zy
  %i.aer = zext i1 %i.aeq to i32
  %spec.select.i324.4 = add i32 %spec.select.i323.4, %i.aer ; 2 uses
  %i.aes = zext i8 %i.aep to i32
  %i.aet = and i32 %spec.select.i323.4, 7
  %i.aeu = lshr i32 %i.aes, %i.aet
  store i32 %spec.select.i324.4, ptr %i.e, align 8, !tbaa !72
  %i.aev = shl nuw nsw i32 %i.aeu, 1
  %i.aew = and i32 %i.aev, 2
  %i.aex = zext nneg i32 %i.aew to i64
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.aex
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %spec.select.i324393.4 = phi i32 [ %spec.select.i324.4, %bb.bq ], [ %spec.select.i323.4, %bb.bp ] ; 6 uses
  %i.afa = phi nsz float [ %i.aez, %bb.bq ], [ 0.000000e+00, %bb.bp ]
  store float %i.afa, ptr %i.bd, align 16, !tbaa !32
  br label %.loopexit359

bb.bs:                                            ; preds = %bb.bd
  %i.afb = load i32, ptr %i.g, align 8, !tbaa !71
  %i.afc = load ptr, ptr %1, align 8, !tbaa !69
  %i.afd = lshr i32 %.promoted392, 3
  %i.afe = zext nneg i32 %i.afd to i64
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afe
  %i.afg = load i32, ptr %i.aff, align 1, !tbaa !33
  %i.afh = and i32 %.promoted392, 7
  %i.afi = lshr i32 %i.afg, %i.afh
  %i.afj = and i32 %i.afi, 255                    ; 2 uses
  %i.afk = add nsw i32 %.promoted392, 8
  %i.afl = tail call i32 @llvm.umin.i32(i32 %i.afb, i32 %i.afk) ; 7 uses
  store i32 %i.afl, ptr %i.e, align 8, !tbaa !72
  %i.afm = icmp samesign ugt i32 %i.afj, 242
  br i1 %i.afm, label %bb.bt, label %.preheader358

.preheader358:                                    ; preds = %bb.bs
  %i.afn = zext nneg i32 %i.afj to i64
  %i.afo = getelementptr inbounds nuw [5 x i8], ptr @random_dequant_index, i64 %i.afn ; 5 uses
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !33
  %i.afq = zext i8 %i.afp to i64
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.afq
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !32
  store float %i.afs, ptr %i.a, align 16, !tbaa !32
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afo, i64 1
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !33
  %i.afv = zext i8 %i.afu to i64
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.afv
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !32
  store float %i.afx, ptr %i.ah, align 4, !tbaa !32
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afo, i64 2
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !33
  %i.aga = zext i8 %i.afz to i64
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.aga
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !32
  store float %i.agc, ptr %i.ai, align 8, !tbaa !32
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afo, i64 3
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !33
  %i.agf = zext i8 %i.age to i64
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.agf
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !32
  store float %i.agh, ptr %i.aj, align 4, !tbaa !32
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afo, i64 4
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !33
  %i.agk = zext i8 %i.agj to i64
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.agk
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !32
  store float %i.agm, ptr %i.ak, align 16, !tbaa !32
  br label %.loopexit359

bb.bt:                                            ; preds = %bb.bs
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.29) #11
  br label %build_sb_samples_from_noise.exit

bb.bu:                                            ; preds = %bb.aj
  %i.agn = sub nsw i32 %.val286, %.val277
  %i.ago = icmp sgt i32 %i.agn, 6
  br i1 %i.ago, label %bb.bv, label %.preheader366

.preheader366:                                    ; preds = %bb.bu
  %i.agp = load float, ptr %i.ov, align 4, !tbaa !32 ; 2 uses
  %i.agq = sext i32 %i.qb to i64                  ; 2 uses
  %i.agr = getelementptr inbounds [4 x i8], ptr @noise_table, i64 %i.agq
  %i.ags = load <2 x float>, ptr %i.agr, align 4, !tbaa !32
  %i.agt = insertelement <2 x float> poison, float %i.agp, i64 0
  %i.agu = shufflevector <2 x float> %i.agt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agv = fmul nsz <2 x float> %i.ags, %i.agu
  store <2 x float> %i.agv, ptr %i.a, align 16, !tbaa !32
  %indvars.iv.next458.2 = add i32 %i.qb, 3        ; 2 uses
  %i.agw = getelementptr [4 x i8], ptr @noise_table, i64 %i.agq
  %i.agx = getelementptr i8, ptr %i.agw, i64 8
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !32
  %i.agz = fmul nsz float %i.agy, %i.agp
  store float %i.agz, ptr %i.ae, align 8, !tbaa !32
  store i32 %indvars.iv.next458.2, ptr %i.j, align 4, !tbaa !67
  br label %.loopexit359

bb.bv:                                            ; preds = %bb.bu
  %i.aha = load i32, ptr %i.g, align 8, !tbaa !71
  %i.ahb = load ptr, ptr %1, align 8, !tbaa !69
  %i.ahc = lshr i32 %.val277, 3
  %i.ahd = zext nneg i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %i.ahd
  %i.ahf = load i32, ptr %i.ahe, align 1, !tbaa !33
  %i.ahg = and i32 %.val277, 7
  %i.ahh = lshr i32 %i.ahf, %i.ahg
  %i.ahi = and i32 %i.ahh, 127                    ; 2 uses
  %i.ahj = add nsw i32 %.val277, 7
  %i.ahk = tail call i32 @llvm.umin.i32(i32 %i.aha, i32 %i.ahj) ; 7 uses
  store i32 %i.ahk, ptr %i.e, align 8, !tbaa !72
  %i.ahl = icmp samesign ugt i32 %i.ahi, 124
  br i1 %i.ahl, label %bb.bw, label %.preheader364

.preheader364:                                    ; preds = %bb.bv
  %i.ahm = zext nneg i32 %i.ahi to i64
  %i.ahn = getelementptr inbounds nuw [3 x i8], ptr @random_dequant_type24, i64 %i.ahm ; 2 uses
  %i.aho = load <2 x i8>, ptr %i.ahn, align 1, !tbaa !33
  %i.ahp = uitofp <2 x i8> %i.aho to <2 x double>
  %i.ahq = fadd nnan nsz <2 x double> %i.ahp, splat (double -2.000000e+00)
  %i.ahr = fmul nnan nsz <2 x double> %i.ahq, splat (double 5.000000e-01)
  %i.ahs = fptrunc nsz <2 x double> %i.ahr to <2 x float>
  store <2 x float> %i.ahs, ptr %i.a, align 16, !tbaa !32
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahn, i64 2
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !33
  %i.ahv = uitofp i8 %i.ahu to double
  %i.ahw = fadd nnan nsz double %i.ahv, -2.000000e+00
  %i.ahx = fmul nnan nsz double %i.ahw, 5.000000e-01
  %i.ahy = fptrunc nsz double %i.ahx to float
  store float %i.ahy, ptr %i.af, align 8, !tbaa !32
  br label %.loopexit359

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.30) #11
  br label %build_sb_samples_from_noise.exit

bb.bx:                                            ; preds = %bb.aj
  %i.ahz = sub nsw i32 %.val286, %.val275
  %i.aia = icmp sgt i32 %i.ahz, 3
  br i1 %i.aia, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.aib = load i32, ptr %i.g, align 8, !tbaa !71 ; 3 uses
  %i.aic = load ptr, ptr %1, align 8, !tbaa !69   ; 3 uses
  %i.aid = lshr i32 %.val275, 3
  %i.aie = zext nneg i32 %i.aid to i64
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 %i.aie
  %i.aig = load i32, ptr %i.aif, align 1, !tbaa !33
  %i.aih = and i32 %.val275, 7
  %i.aii = lshr i32 %i.aig, %i.aih
  %i.aij = and i32 %i.aii, %i.pw
  %i.aik = zext i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %vlc_tab_type30.val273, i64 %i.aik ; 2 uses
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !33 ; 2 uses
  %i.ain = zext nneg i16 %i.aim to i32
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 2
  %i.aip = load i16, ptr %i.aio, align 2, !tbaa !33
  %i.aiq = sext i16 %i.aip to i32
  %i.air = add i32 %.val275, %i.aiq
  %i.ais = tail call i32 @llvm.umin.i32(i32 %i.aib, i32 %i.air) ; 5 uses
  store i32 %i.ais, ptr %i.e, align 8, !tbaa !72
  %i.ait = icmp slt i16 %i.aim, 0
  br i1 %i.ait, label %bb.bz, label %qdm2_get_vlc.exit

bb.bz:                                            ; preds = %bb.by
  %i.aiu = lshr i32 %i.ais, 3
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aic, i64 %i.aiv
  %i.aix = load i32, ptr %i.aiw, align 1, !tbaa !33
  %i.aiy = and i32 %i.ais, 7
  %i.aiz = lshr i32 %i.aix, %i.aiy
  %i.aja = and i32 %i.aiz, 7                      ; 2 uses
  %i.ajb = add i32 %i.ais, 3
  %i.ajc = tail call i32 @llvm.umin.i32(i32 %i.aib, i32 %i.ajb) ; 4 uses
  store i32 %i.ajc, ptr %i.e, align 8, !tbaa !72
  %i.ajd = lshr i32 %i.ajc, 3
  %i.aje = zext nneg i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aic, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 1, !tbaa !33
  %i.ajh = and i32 %i.ajc, 7
  %i.aji = lshr i32 %i.ajg, %i.ajh
  %i.ajj = xor i32 %i.aja, 31
  %i.ajk = lshr i32 -1, %i.ajj
  %i.ajl = and i32 %i.ajk, %i.aji
  %i.ajm = add i32 %i.ajc, 1
  %i.ajn = add i32 %i.ajm, %i.aja
  %i.ajo = tail call i32 @llvm.umin.i32(i32 %i.aib, i32 %i.ajn) ; 2 uses
  store i32 %i.ajo, ptr %i.e, align 8, !tbaa !72
  br label %qdm2_get_vlc.exit

qdm2_get_vlc.exit:                                ; preds = %bb.by, %bb.bz
  %.val535 = phi i32 [ %i.ajo, %bb.bz ], [ %i.ais, %bb.by ] ; 6 uses
  %.020.i = phi i32 [ %i.ajl, %bb.bz ], [ %i.ain, %bb.by ] ; 3 uses
  %i.ajp = icmp samesign ult i32 %.020.i, 8
  br i1 %i.ajp, label %.thread343, label %bb.ca

.thread343:                                       ; preds = %qdm2_get_vlc.exit
  %i.ajq = zext nneg i32 %.020.i to i64
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr @type30_dequant, i64 %i.ajq
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !32
  store float %i.ajs, ptr %i.a, align 16, !tbaa !32
  br label %.loopexit359

bb.ca:                                            ; preds = %qdm2_get_vlc.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %.020.i) #11
  br label %build_sb_samples_from_noise.exit

bb.cb:                                            ; preds = %bb.bx
  %i.ajt = add nsw i32 %i.qb, 1                   ; 2 uses
  store i32 %i.ajt, ptr %i.j, align 4, !tbaa !67
  %i.aju = sext i32 %i.qb to i64
  %i.ajv = getelementptr inbounds [4 x i8], ptr @noise_table, i64 %i.aju
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !32
  %i.ajx = load float, ptr %i.ov, align 4, !tbaa !32
  %i.ajy = fmul nsz float %i.ajw, %i.ajx
  store float %i.ajy, ptr %i.a, align 16, !tbaa !32
  br label %.loopexit359

bb.cc:                                            ; preds = %bb.aj
  %i.ajz = sub nsw i32 %.val286, %.val
  %i.aka = icmp sgt i32 %i.ajz, 6
  br i1 %i.aka, label %bb.cd, label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %.not264 = icmp eq i32 %.0224415, 0
  %i.akb = load i32, ptr %i.g, align 8, !tbaa !71 ; 5 uses
  %i.akc = load ptr, ptr %1, align 8, !tbaa !69   ; 4 uses
  %i.akd = lshr i32 %.val, 3
  %i.ake = zext nneg i32 %i.akd to i64
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.ake
  %i.akg = load i32, ptr %i.akf, align 1, !tbaa !33
  %i.akh = and i32 %.val, 7
  %i.aki = lshr i32 %i.akg, %i.akh                ; 2 uses
  br i1 %.not264, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.akj = and i32 %i.aki, 3
  %i.akk = add nsw i32 %.val, 2
  %i.akl = tail call i32 @llvm.umin.i32(i32 %i.akb, i32 %i.akk) ; 4 uses
  store i32 %i.akl, ptr %i.e, align 8, !tbaa !72
  %i.akm = shl nuw nsw i32 1, %i.akj
  %i.akn = uitofp nneg i32 %i.akm to float
  %i.ako = lshr i32 %i.akl, 3
  %i.akp = zext nneg i32 %i.ako to i64
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.akp
  %i.akr = load i32, ptr %i.akq, align 1, !tbaa !33
  %i.aks = and i32 %i.akl, 7
  %i.akt = lshr i32 %i.akr, %i.aks
  %i.aku = and i32 %i.akt, 31
  %i.akv = add i32 %i.akl, 5
  %i.akw = tail call i32 @llvm.umin.i32(i32 %i.akb, i32 %i.akv) ; 7 uses
  store i32 %i.akw, ptr %i.e, align 8, !tbaa !72
  %i.akx = add nsw i32 %i.aku, -16
  %i.aky = sitofp i32 %i.akx to float
  %i.akz = fdiv nsz float %i.aky, 1.500000e+01    ; 2 uses
  store float %i.akz, ptr %i.a, align 16, !tbaa !32
  br label %.loopexit359

bb.cf:                                            ; preds = %bb.cd
  %i.ala = and i32 %i.aki, %i.pu
  %i.alb = zext i32 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %vlc_tab_type34.val272, i64 %i.alb ; 2 uses
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !33 ; 2 uses
  %i.ale = zext nneg i16 %i.ald to i32
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alc, i64 2
  %i.alg = load i16, ptr %i.alf, align 2, !tbaa !33
  %i.alh = sext i16 %i.alg to i32
  %i.ali = add i32 %.val, %i.alh
  %i.alj = tail call i32 @llvm.umin.i32(i32 %i.akb, i32 %i.ali) ; 5 uses
  store i32 %i.alj, ptr %i.e, align 8, !tbaa !72
  %i.alk = icmp slt i16 %i.ald, 0
  br i1 %i.alk, label %bb.cg, label %qdm2_get_vlc.exit326

bb.cg:                                            ; preds = %bb.cf
  %i.all = lshr i32 %i.alj, 3
  %i.alm = zext nneg i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.alm
  %i.alo = load i32, ptr %i.aln, align 1, !tbaa !33
  %i.alp = and i32 %i.alj, 7
  %i.alq = lshr i32 %i.alo, %i.alp
  %i.alr = and i32 %i.alq, 7                      ; 2 uses
  %i.als = add i32 %i.alj, 3
  %i.alt = tail call i32 @llvm.umin.i32(i32 %i.akb, i32 %i.als) ; 4 uses
  store i32 %i.alt, ptr %i.e, align 8, !tbaa !72
  %i.alu = lshr i32 %i.alt, 3
  %i.alv = zext nneg i32 %i.alu to i64
  %i.alw = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.alv
  %i.alx = load i32, ptr %i.alw, align 1, !tbaa !33
  %i.aly = and i32 %i.alt, 7
  %i.alz = lshr i32 %i.alx, %i.aly
  %i.ama = xor i32 %i.alr, 31
  %i.amb = lshr i32 -1, %i.ama
  %i.amc = and i32 %i.amb, %i.alz
  %i.amd = add i32 %i.alt, 1
  %i.ame = add i32 %i.amd, %i.alr
  %i.amf = tail call i32 @llvm.umin.i32(i32 %i.akb, i32 %i.ame) ; 2 uses
  store i32 %i.amf, ptr %i.e, align 8, !tbaa !72
  br label %qdm2_get_vlc.exit326

qdm2_get_vlc.exit326:                             ; preds = %bb.cf, %bb.cg
  %.val534 = phi i32 [ %i.amf, %bb.cg ], [ %i.alj, %bb.cf ] ; 6 uses
  %.020.i325 = phi i32 [ %i.amc, %bb.cg ], [ %i.ale, %bb.cf ] ; 3 uses
  %i.amg = icmp samesign ult i32 %.020.i325, 10
  br i1 %i.amg, label %.thread345, label %bb.ch

.thread345:                                       ; preds = %qdm2_get_vlc.exit326
  %i.amh = zext nneg i32 %.020.i325 to i64
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr @type34_delta, i64 %i.amh
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !32
  %i.amk = fdiv nsz float %i.amj, %.2222416
  %i.aml = fadd nsz float %.0216417, %i.amk       ; 2 uses
  store float %i.aml, ptr %i.a, align 16, !tbaa !32
  br label %.loopexit359

bb.ch:                                            ; preds = %qdm2_get_vlc.exit326
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %.020.i325) #11
  br label %build_sb_samples_from_noise.exit

bb.ci:                                            ; preds = %bb.cc
  %i.amm = add nsw i32 %i.qb, 1                   ; 2 uses
  store i32 %i.amm, ptr %i.j, align 4, !tbaa !67
  %i.amn = sext i32 %i.qb to i64
end_hunk_1
