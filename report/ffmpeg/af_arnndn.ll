Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_arnndn?download=true
inline.NumInlined: 49
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 60
begin_hunk_0_@rnnoise_channels:bb.a
  %i.apy = fmul nsz float %i.apx, %i.apx
  %i.apz = getelementptr inbounds nuw i8, ptr %gep.i.i.i, i64 4
  %i.aqa = load float, ptr %i.apz, align 4, !tbaa !182 ; 2 uses
  %i.aqb = call nsz float @llvm.fmuladd.f32(float %i.aqa, float %i.aqa, float %i.apy)
  %i.aqc = fsub nsz float 1.000000e+00, %i.apw
  %i.aqd = insertelement <2 x float> poison, float %i.aqc, i64 0
  %i.aqe = insertelement <2 x float> %i.aqd, float %i.apw, i64 1
  %i.aqf = insertelement <2 x float> poison, float %i.aqb, i64 0
  %i.aqg = shufflevector <2 x float> %i.aqf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqe, <2 x float> %i.aqg, <2 x float> %i.apt) ; 2 uses
  %indvars.iv.next.i226.i.i = add nuw nsw i64 %indvars.iv.i225.i.i, 1 ; 2 uses
  %exitcond.not.i227.i.i = icmp eq i64 %indvars.iv.next.i226.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i227.i.i, label %..loopexit_crit_edge.i.i.i, label %bb.at, !llvm.loop !133

compute_band_energy.exit.i.i:                     ; preds = %.loopexit.i.i.i
  %i.aqi = load float, ptr %i.k, align 16, !tbaa !26
  %i.aqj = fmul nsz float %i.aqi, 2.000000e+00
  store float %i.aqj, ptr %i.k, align 16, !tbaa !26
  %i.aqk = load float, ptr %i.bq, align 4, !tbaa !26
  %i.aql = fmul nsz float %i.aqk, 2.000000e+00
  store float %i.aql, ptr %i.bq, align 4, !tbaa !26
  %.sroa.0.0.copyload = load <4 x float>, ptr %i.k, align 16, !tbaa !26 ; 2 uses
  %.sroa.5.0.copyload = load <4 x float>, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !26 ; 2 uses
  %.sroa.7.0.copyload = load <4 x float>, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !26 ; 2 uses
  %.sroa.9.0.copyload = load <4 x float>, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !26 ; 2 uses
  %.sroa.11.0.copyload = load <4 x float>, ptr %.sroa.11.0..sroa_idx, align 16, !tbaa !26 ; 2 uses
  %.sroa.13.0.copyload = load <2 x float>, ptr %.sroa.13.0..sroa_idx, align 16, !tbaa !26 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.j, i8 0, i64 88, i1 false)
  br label %bb.au

..loopexit_crit_edge.i239.i.i:                    ; preds = %bb.av
  store <2 x float> %i.art, ptr %i.aqw, align 4, !tbaa !26
  br label %.loopexit.i230.i.i

.loopexit.i230.i.i:                               ; preds = %bb.au, %..loopexit_crit_edge.i239.i.i
  %exitcond45.not.i231.i.i = icmp eq i64 %indvars.iv.next43.i229.i.i, 21
  br i1 %exitcond45.not.i231.i.i, label %compute_band_corr.exit.i.i, label %bb.au, !llvm.loop !149

bb.au:                                            ; preds = %.loopexit.i230.i.i, %compute_band_energy.exit.i.i
  %i.aqm = phi i8 [ 0, %compute_band_energy.exit.i.i ], [ %i.aqo, %.loopexit.i230.i.i ]
  %indvars.iv42.i228.i.i = phi i64 [ 0, %compute_band_energy.exit.i.i ], [ %indvars.iv.next43.i229.i.i, %.loopexit.i230.i.i ] ; 2 uses
  %indvars.iv.next43.i229.i.i = add nuw nsw i64 %indvars.iv42.i228.i.i, 1 ; 3 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next43.i229.i.i
  %i.aqo = load i8, ptr %i.aqn, align 1, !tbaa !179 ; 2 uses
  %i.aqp = zext i8 %i.aqo to i32
  %i.aqq = zext i8 %i.aqm to i32                  ; 2 uses
  %i.aqr = sub nsw i32 %i.aqp, %i.aqq             ; 2 uses
  %i.aqs = icmp sgt i32 %i.aqr, 0
  br i1 %i.aqs, label %.lr.ph.i232.i.i, label %.loopexit.i230.i.i

.lr.ph.i232.i.i:                                  ; preds = %bb.au
  %i.aqt = shl nuw nsw i32 %i.aqr, 2              ; 2 uses
  %i.aqu = uitofp nneg i32 %i.aqt to float
  %i.aqv = shl nuw nsw i32 %i.aqq, 2
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv42.i228.i.i ; 2 uses
  %i.aqx = load <2 x float>, ptr %i.aqw, align 4, !tbaa !26
  %i.aqy = zext nneg i32 %i.aqv to i64
  %wide.trip.count.i235.i.i = zext nneg i32 %i.aqt to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i232.i.i
  %indvars.iv.i236.i.i = phi i64 [ 0, %.lr.ph.i232.i.i ], [ %indvars.iv.next.i237.i.i, %bb.av ] ; 3 uses
  %i.aqz = phi <2 x float> [ %i.aqx, %.lr.ph.i232.i.i ], [ %i.art, %bb.av ]
  %i.ara = trunc nuw nsw i64 %indvars.iv.i236.i.i to i32
  %i.arb = uitofp nsz nneg i32 %i.ara to float
  %i.arc = fdiv nsz float %i.arb, %i.aqu          ; 2 uses
  %i.ard = add nuw nsw i64 %indvars.iv.i236.i.i, %i.aqy ; 2 uses
  %i.are = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ard ; 2 uses
  %i.arf = load float, ptr %i.are, align 8, !tbaa !181
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ard ; 2 uses
  %i.arh = load float, ptr %i.arg, align 8, !tbaa !181
  %i.ari = fmul nsz float %i.arf, %i.arh
  %i.arj = getelementptr inbounds nuw i8, ptr %i.are, i64 4
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !182
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arg, i64 4
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !182
  %i.arn = call nsz float @llvm.fmuladd.f32(float %i.ark, float %i.arm, float %i.ari)
  %i.aro = fsub nsz float 1.000000e+00, %i.arc
  %i.arp = insertelement <2 x float> poison, float %i.aro, i64 0
  %i.arq = insertelement <2 x float> %i.arp, float %i.arc, i64 1
  %i.arr = insertelement <2 x float> poison, float %i.arn, i64 0
  %i.ars = shufflevector <2 x float> %i.arr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.art = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arq, <2 x float> %i.ars, <2 x float> %i.aqz) ; 2 uses
  %indvars.iv.next.i237.i.i = add nuw nsw i64 %indvars.iv.i236.i.i, 1 ; 2 uses
  %exitcond.not.i238.i.i = icmp eq i64 %indvars.iv.next.i237.i.i, %wide.trip.count.i235.i.i
  br i1 %exitcond.not.i238.i.i, label %..loopexit_crit_edge.i239.i.i, label %bb.av, !llvm.loop !150

compute_band_corr.exit.i.i:                       ; preds = %.loopexit.i230.i.i
  %i.aru = load float, ptr %i.j, align 16, !tbaa !26
  %i.arv = fmul nsz float %i.aru, 2.000000e+00
  store float %i.arv, ptr %i.j, align 16, !tbaa !26
  %i.arw = load float, ptr %i.br, align 4, !tbaa !26
  %i.arx = fmul nsz float %i.arw, 2.000000e+00
  store float %i.arx, ptr %i.br, align 4, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.x, ptr noundef nonnull align 16 dereferenceable(88) %i.j, i64 88, i1 false), !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  %i.ary = load <4 x float>, ptr %i.x, align 16, !tbaa !26
  %i.arz = load <4 x float>, ptr %i.w, align 16, !tbaa !26
  %i.asa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.arz, <4 x float> %.sroa.0.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.asb = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.asa)
  %i.asc = fdiv nsz <4 x float> %i.ary, %i.asb
  store <4 x float> %i.asc, ptr %i.x, align 16, !tbaa !26
  %i.asd = load <4 x float>, ptr %i.bs, align 16, !tbaa !26
  %i.ase = load <4 x float>, ptr %i.bt, align 16, !tbaa !26
  %i.asf = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ase, <4 x float> %.sroa.5.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.asg = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.asf)
  %i.ash = fdiv nsz <4 x float> %i.asd, %i.asg
  store <4 x float> %i.ash, ptr %i.bs, align 16, !tbaa !26
  %i.asi = load <4 x float>, ptr %i.bu, align 16, !tbaa !26
  %i.asj = load <4 x float>, ptr %i.bv, align 16, !tbaa !26
  %i.ask = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.asj, <4 x float> %.sroa.7.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.asl = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ask)
  %i.asm = fdiv nsz <4 x float> %i.asi, %i.asl
  store <4 x float> %i.asm, ptr %i.bu, align 16, !tbaa !26
  %i.asn = load <4 x float>, ptr %i.bw, align 16, !tbaa !26
  %i.aso = load <4 x float>, ptr %i.bx, align 16, !tbaa !26
  %i.asp = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aso, <4 x float> %.sroa.9.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.asq = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.asp)
  %i.asr = fdiv nsz <4 x float> %i.asn, %i.asq
  store <4 x float> %i.asr, ptr %i.bw, align 16, !tbaa !26
  %i.ass = load <4 x float>, ptr %i.by, align 16, !tbaa !26
  %i.ast = load <4 x float>, ptr %i.bz, align 16, !tbaa !26
  %i.asu = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ast, <4 x float> %.sroa.11.0.copyload, <4 x float> splat (float 1.000000e-03))
  %i.asv = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.asu)
  %i.asw = fdiv nsz <4 x float> %i.ass, %i.asv
  store <4 x float> %i.asw, ptr %i.by, align 16, !tbaa !26
  %i.asx = load <2 x float>, ptr %i.ca, align 16, !tbaa !26
  %i.asy = load <2 x float>, ptr %i.cb, align 16, !tbaa !26
  %i.asz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asy, <2 x float> %.sroa.13.0.copyload, <2 x float> splat (float 1.000000e-03))
  %i.ata = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.asz)
  %i.atb = fdiv nsz <2 x float> %i.asx, %i.ata
  store <2 x float> %i.atb, ptr %i.ca, align 16, !tbaa !26
  store i64 0, ptr %i.cc, align 8
  call fastcc void @dct(ptr noundef %i.ad, ptr noundef %i.u, ptr noundef nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep326.i.i, ptr noundef nonnull align 16 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa !26
  %i.atc = load <2 x float>, ptr %scevgep326.i.i, align 8, !tbaa !26
  %i.atd = fpext nsz <2 x float> %i.atc to <2 x double>
  %i.ate = fadd nsz <2 x double> %i.atd, <double -1.300000e+00, double -9.000000e-01>
  %i.atf = fptrunc nsz <2 x double> %i.ate to <2 x float>
  store <2 x float> %i.atf, ptr %scevgep326.i.i, align 8, !tbaa !26
  %i.atg = add nsw i32 %storemerge166.i.i.i, -300
  %i.ath = sitofp nsz i32 %i.atg to double
  %i.ati = fmul nnan nsz double %i.ath, 1.000000e-02
  %i.atj = fptrunc nsz double %i.ati to float
  store float %i.atj, ptr %i.cd, align 16, !tbaa !26
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ax
  %i.atk = fcmp nsz olt float %i.aud, 4.000000e-02
  br i1 %i.atk, label %.critedge.i, label %bb.ay

bb.ax:                                            ; preds = %bb.ax, %compute_band_corr.exit.i.i
  %indvars.iv.i39.i = phi i64 [ 0, %compute_band_corr.exit.i.i ], [ %indvars.iv.next.i40.i, %bb.ax ] ; 3 uses
  %.0184279.i.i = phi float [ -2.000000e+00, %compute_band_corr.exit.i.i ], [ %.0184..i.i, %bb.ax ] ; 3 uses
  %.0185278.i.i = phi float [ -2.000000e+00, %compute_band_corr.exit.i.i ], [ %i.auc, %bb.ax ]
  %.0187277.i.i = phi float [ 0.000000e+00, %compute_band_corr.exit.i.i ], [ %i.aud, %bb.ax ]
  %i.atl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i39.i
  %i.atm = load float, ptr %i.atl, align 4, !tbaa !26 ; 2 uses
  %i.atn = fadd nsz float %i.atm, f0x3C23D70A
  %i.ato = call nsz float @llvm.log10.f32(float %i.atn) ; 2 uses
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i39.i
  %i.atq = fadd nsz float %.0184279.i.i, -7.000000e+00 ; 2 uses
  %i.atr = fpext nsz float %i.atq to double
  %i.ats = fpext nsz float %.0185278.i.i to double
  %i.att = fadd nsz double %i.ats, -1.500000e+00  ; 4 uses
  %i.atu = fpext nsz float %i.ato to double       ; 2 uses
  %i.atv = fcmp nsz ule double %i.att, %i.atu     ; 2 uses
  %..i.i = select nsz i1 %i.atv, double %i.atu, double %i.att
  %i.atw = fcmp nsz olt double %..i.i, %i.atr
  %i.atx = fptrunc nsz double %i.att to float     ; 2 uses
  %.mux.i.i = select i1 %i.atv, float %i.ato, float %i.atx
  %i.aty = select i1 %i.atw, float %i.atq, float %.mux.i.i ; 5 uses
  store float %i.aty, ptr %i.atp, align 4, !tbaa !26
  %i.atz = fcmp nsz ogt float %.0184279.i.i, %i.aty
  %.0184..i.i = select nsz i1 %i.atz, float %.0184279.i.i, float %i.aty
  %i.aua = fpext nsz float %i.aty to double
  %i.aub = fcmp nsz ogt double %i.att, %i.aua
  %i.auc = select i1 %i.aub, float %i.atx, float %i.aty
  %i.aud = fadd nsz float %.0187277.i.i, %i.atm   ; 2 uses
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %exitcond.not.i41.i = icmp eq i64 %indvars.iv.next.i40.i, 22
  br i1 %exitcond.not.i41.i, label %bb.aw, label %bb.ax, !llvm.loop !151

.critedge.i:                                      ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #11
  br label %.loopexit.i

bb.ay:                                            ; preds = %bb.aw
  store i64 0, ptr %i.ce, align 8
  call fastcc void @dct(ptr noundef %i.ad, ptr noundef nonnull %i.y, ptr noundef %i.r)
  %i.aue = getelementptr inbounds nuw i8, ptr %i.kd, i64 1920 ; 4 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.kd, i64 2624 ; 3 uses
  %i.aug = load i32, ptr %i.auf, align 16, !tbaa !185 ; 5 uses
  %i.auh = sext i32 %i.aug to i64
  %i.aui = getelementptr [88 x i8], ptr %i.aue, i64 %i.auh ; 8 uses
  %i.auj = load <4 x float>, ptr %i.y, align 16, !tbaa !26 ; 3 uses
  %i.auk = fadd <4 x float> %i.auj, <float -1.200000e+01, float -4.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 3 uses
  store <4 x float> %i.auk, ptr %i.aui, align 4, !tbaa !26
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %i.aum = load <4 x float>, ptr %i.cf, align 16, !tbaa !26 ; 4 uses
  store <4 x float> %i.aum, ptr %i.aul, align 4, !tbaa !26
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aui, i64 32
  %i.auo = load <4 x float>, ptr %i.cg, align 16, !tbaa !26
  store <4 x float> %i.auo, ptr %i.aun, align 4, !tbaa !26
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %i.auq = load <4 x float>, ptr %i.ch, align 16, !tbaa !26
  store <4 x float> %i.auq, ptr %i.aup, align 4, !tbaa !26
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aui, i64 64
  %i.aus = load <4 x float>, ptr %i.ci, align 16, !tbaa !26
  store <4 x float> %i.aus, ptr %i.aur, align 4, !tbaa !26
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aui, i64 80
  %i.auu = load <2 x float>, ptr %i.cj, align 16, !tbaa !26
  store <2 x float> %i.auu, ptr %i.aut, align 4, !tbaa !26
  %i.auv = icmp slt i32 %i.aug, 1
  %i.auw = getelementptr i8, ptr %i.aui, i64 616
  %i.aux = zext nneg i32 %i.aug to i64
  %i.auy = getelementptr [88 x i8], ptr %i.aue, i64 %i.aux ; 2 uses
  %i.auz = getelementptr i8, ptr %i.auy, i64 -88
  %i.ava = select i1 %i.auv, ptr %i.auw, ptr %i.auz ; 3 uses
  %i.avb = icmp slt i32 %i.aug, 2
  %i.avc = getelementptr i8, ptr %i.aui, i64 528
  %i.avd = getelementptr i8, ptr %i.auy, i64 -176
  %i.ave = select i1 %i.avb, ptr %i.avc, ptr %i.avd ; 3 uses
  %i.avf = add nsw i32 %i.aug, 1                  ; 2 uses
  store i32 %i.avf, ptr %i.auf, align 16, !tbaa !185
  %i.avg = load <4 x float>, ptr %i.ave, align 4, !tbaa !26 ; 4 uses
  %i.avh = load <4 x float>, ptr %i.ava, align 4, !tbaa !26 ; 3 uses
  %i.avi = shufflevector <4 x float> %i.auk, <4 x float> %i.auj, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.avj = fadd nsz <4 x float> %i.avi, %i.avh
  %i.avk = fadd nsz <4 x float> %i.avj, %i.avg
  store <4 x float> %i.avk, ptr %i.y, align 16, !tbaa !26
  %i.avl = fsub nsz <4 x float> %i.avi, %i.avg
  store <4 x float> %i.avl, ptr %i.ck, align 8, !tbaa !26
  %i.avm = getelementptr inbounds nuw i8, ptr %i.ava, i64 16
  %i.avn = getelementptr inbounds nuw i8, ptr %i.ave, i64 16
  %i.avo = getelementptr inbounds nuw i8, ptr %i.ava, i64 20
  %i.avp = getelementptr inbounds nuw i8, ptr %i.ave, i64 20
  %i.avq = shufflevector <4 x float> %i.aum, <4 x float> %i.avg, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.avr = load <2 x float>, ptr %i.avm, align 4, !tbaa !26 ; 2 uses
  %i.avs = load float, ptr %i.avo, align 4, !tbaa !26
  %i.avt = load <2 x float>, ptr %i.avn, align 4, !tbaa !26 ; 2 uses
  %i.avu = load float, ptr %i.avp, align 4, !tbaa !26
  %i.avv = shufflevector <4 x float> %i.aum, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.avw = insertelement <2 x float> %i.avr, float %i.avs, i64 1
  %i.avx = fadd nsz <2 x float> %i.avv, %i.avw
  %i.avy = insertelement <2 x float> %i.avt, float %i.avu, i64 1
  %i.avz = fadd nsz <2 x float> %i.avx, %i.avy
  store <2 x float> %i.avz, ptr %i.cf, align 16, !tbaa !26
  %i.awa = shufflevector <2 x float> %i.avt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.awb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avh, <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, <4 x float> %i.auk)
  %i.awc = shufflevector <4 x float> %i.awa, <4 x float> %i.awb, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.awd = fsub nsz <4 x float> %i.avq, %i.awc
  %i.awe = fadd nsz <4 x float> %i.avq, %i.awc
  %i.awf = shufflevector <4 x float> %i.awd, <4 x float> %i.awe, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.awf, ptr %i.cm, align 8, !tbaa !26
  %i.awg = shufflevector <2 x float> %i.avr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.awh = shufflevector <4 x float> %i.avh, <4 x float> %i.awg, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.awi = shufflevector <4 x float> %i.auj, <4 x float> %i.aum, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.awj = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awh, <4 x float> splat (float -2.000000e+00), <4 x float> %i.awi)
  %i.awk = shufflevector <4 x float> %i.avg, <4 x float> %i.awa, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.awl = fadd nsz <4 x float> %i.awj, %i.awk
  store <4 x float> %i.awl, ptr %i.cl, align 8, !tbaa !26
  %i.awm = icmp eq i32 %i.avf, 8
  br i1 %i.awm, label %bb.az, label %.preheader246.i.i.preheader

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.auf, align 16, !tbaa !185
  br label %.preheader246.i.i.preheader

.preheader246.i.i.preheader:                      ; preds = %bb.az, %bb.ay
  br label %.preheader246.i.i

.preheader246.i.i:                                ; preds = %.preheader246.i.i.preheader, %bb.ba
  %indvars.iv345.i.i = phi i64 [ %indvars.iv.next346.i.i, %bb.ba ], [ 0, %.preheader246.i.i.preheader ] ; 3 uses
  %.0186287.i.i = phi float [ %i.bay, %bb.ba ], [ 0.000000e+00, %.preheader246.i.i.preheader ]
  %i.awn = getelementptr inbounds nuw [88 x i8], ptr %i.aue, i64 %indvars.iv345.i.i ; 22 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 28
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !26
  %.phi.trans.insert349.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 32
  %.pre350.i.i = load float, ptr %.phi.trans.insert349.i.i, align 4, !tbaa !26
  %.phi.trans.insert351.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 36
  %.pre352.i.i = load float, ptr %.phi.trans.insert351.i.i, align 4, !tbaa !26
  %.phi.trans.insert353.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 40
  %.pre354.i.i = load float, ptr %.phi.trans.insert353.i.i, align 4, !tbaa !26
  %.phi.trans.insert355.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 44
  %.pre356.i.i = load float, ptr %.phi.trans.insert355.i.i, align 4, !tbaa !26
  %.phi.trans.insert357.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 48
  %.pre358.i.i = load float, ptr %.phi.trans.insert357.i.i, align 4, !tbaa !26
  %.phi.trans.insert359.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 52
  %.pre360.i.i = load float, ptr %.phi.trans.insert359.i.i, align 4, !tbaa !26
  %.phi.trans.insert361.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 56
  %.pre362.i.i = load float, ptr %.phi.trans.insert361.i.i, align 4, !tbaa !26
  %.phi.trans.insert363.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 60
  %.pre364.i.i = load float, ptr %.phi.trans.insert363.i.i, align 4, !tbaa !26
  %.phi.trans.insert365.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 64
  %.pre366.i.i = load float, ptr %.phi.trans.insert365.i.i, align 4, !tbaa !26
  %.phi.trans.insert367.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 68
  %.pre368.i.i = load float, ptr %.phi.trans.insert367.i.i, align 4, !tbaa !26
  %.phi.trans.insert369.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 72
  %.pre370.i.i = load float, ptr %.phi.trans.insert369.i.i, align 4, !tbaa !26
  %i.awo = load float, ptr %i.awn, align 4, !tbaa !26
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awn, i64 4
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !26
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awn, i64 8
  %i.aws = load float, ptr %i.awr, align 4, !tbaa !26
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awn, i64 12
  %i.awu = load float, ptr %i.awt, align 4, !tbaa !26
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awn, i64 16
  %i.aww = load float, ptr %i.awv, align 4, !tbaa !26
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awn, i64 20
  %i.awy = load float, ptr %i.awx, align 4, !tbaa !26
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awn, i64 24
  %i.axa = load float, ptr %i.awz, align 4, !tbaa !26
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awn, i64 76
  %i.axc = load float, ptr %i.axb, align 4, !tbaa !26
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awn, i64 80
  %i.axe = load float, ptr %i.axd, align 4, !tbaa !26
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awn, i64 84
  %i.axg = load float, ptr %i.axf, align 4, !tbaa !26
  br label %.preheader.i.i

compute_frame_features.exit.i:                    ; preds = %bb.ba
  %i.axh = fmul nsz float %i.bay, 1.250000e-01
  %i.axi = fpext nsz float %i.axh to double
  %i.axj = fadd nsz double %i.axi, -2.100000e+00
  %i.axk = fptrunc nsz double %i.axj to float
  store float %i.axk, ptr %i.cn, align 4, !tbaa !26
  %i.axl = icmp eq i32 %i.kk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #11
  br i1 %i.axl, label %vector.ph280, label %.loopexit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader246.i.i
  %indvars.iv341.i.i = phi i64 [ 0, %.preheader246.i.i ], [ %indvars.iv.next342.i.i, %.preheader.i.i ] ; 3 uses
  %.0176285.i.i = phi float [ f0x58635FA9, %.preheader246.i.i ], [ %.1.i.i, %.preheader.i.i ] ; 2 uses
  %i.axm = getelementptr inbounds nuw [88 x i8], ptr %i.aue, i64 %indvars.iv341.i.i ; 22 uses
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !26
  %i.axo = fsub nsz float %i.awo, %i.axn          ; 2 uses
  %i.axp = fmul nsz float %i.axo, %i.axo
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axm, i64 4
  %i.axr = load float, ptr %i.axq, align 4, !tbaa !26
  %i.axs = fsub nsz float %i.awq, %i.axr          ; 2 uses
  %i.axt = call nsz float @llvm.fmuladd.f32(float %i.axs, float %i.axs, float %i.axp)
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !26
  %i.axw = fsub nsz float %i.aws, %i.axv          ; 2 uses
  %i.axx = call nsz float @llvm.fmuladd.f32(float %i.axw, float %i.axw, float %i.axt)
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axm, i64 12
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !26
  %i.aya = fsub nsz float %i.awu, %i.axz          ; 2 uses
  %i.ayb = call nsz float @llvm.fmuladd.f32(float %i.aya, float %i.aya, float %i.axx)
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axm, i64 16
  %i.ayd = load float, ptr %i.ayc, align 4, !tbaa !26
  %i.aye = fsub nsz float %i.aww, %i.ayd          ; 2 uses
  %i.ayf = call nsz float @llvm.fmuladd.f32(float %i.aye, float %i.aye, float %i.ayb)
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axm, i64 20
  %i.ayh = load float, ptr %i.ayg, align 4, !tbaa !26
  %i.ayi = fsub nsz float %i.awy, %i.ayh          ; 2 uses
  %i.ayj = call nsz float @llvm.fmuladd.f32(float %i.ayi, float %i.ayi, float %i.ayf)
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.ayl = load float, ptr %i.ayk, align 4, !tbaa !26
  %i.aym = fsub nsz float %i.axa, %i.ayl          ; 2 uses
  %i.ayn = call nsz float @llvm.fmuladd.f32(float %i.aym, float %i.aym, float %i.ayj)
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.axm, i64 28
  %i.ayp = load float, ptr %i.ayo, align 4, !tbaa !26
  %i.ayq = fsub nsz float %.pre.i.i, %i.ayp       ; 2 uses
  %i.ayr = call nsz float @llvm.fmuladd.f32(float %i.ayq, float %i.ayq, float %i.ayn)
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axm, i64 32
  %i.ayt = load float, ptr %i.ays, align 4, !tbaa !26
  %i.ayu = fsub nsz float %.pre350.i.i, %i.ayt    ; 2 uses
  %i.ayv = call nsz float @llvm.fmuladd.f32(float %i.ayu, float %i.ayu, float %i.ayr)
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axm, i64 36
  %i.ayx = load float, ptr %i.ayw, align 4, !tbaa !26
  %i.ayy = fsub nsz float %.pre352.i.i, %i.ayx    ; 2 uses
  %i.ayz = call nsz float @llvm.fmuladd.f32(float %i.ayy, float %i.ayy, float %i.ayv)
  %i.aza = getelementptr inbounds nuw i8, ptr %i.axm, i64 40
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !26
  %i.azc = fsub nsz float %.pre354.i.i, %i.azb    ; 2 uses
  %i.azd = call nsz float @llvm.fmuladd.f32(float %i.azc, float %i.azc, float %i.ayz)
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axm, i64 44
  %i.azf = load float, ptr %i.aze, align 4, !tbaa !26
  %i.azg = fsub nsz float %.pre356.i.i, %i.azf    ; 2 uses
  %i.azh = call nsz float @llvm.fmuladd.f32(float %i.azg, float %i.azg, float %i.azd)
  %i.azi = getelementptr inbounds nuw i8, ptr %i.axm, i64 48
  %i.azj = load float, ptr %i.azi, align 4, !tbaa !26
  %i.azk = fsub nsz float %.pre358.i.i, %i.azj    ; 2 uses
  %i.azl = call nsz float @llvm.fmuladd.f32(float %i.azk, float %i.azk, float %i.azh)
  %i.azm = getelementptr inbounds nuw i8, ptr %i.axm, i64 52
  %i.azn = load float, ptr %i.azm, align 4, !tbaa !26
  %i.azo = fsub nsz float %.pre360.i.i, %i.azn    ; 2 uses
  %i.azp = call nsz float @llvm.fmuladd.f32(float %i.azo, float %i.azo, float %i.azl)
  %i.azq = getelementptr inbounds nuw i8, ptr %i.axm, i64 56
  %i.azr = load float, ptr %i.azq, align 4, !tbaa !26
  %i.azs = fsub nsz float %.pre362.i.i, %i.azr    ; 2 uses
  %i.azt = call nsz float @llvm.fmuladd.f32(float %i.azs, float %i.azs, float %i.azp)
  %i.azu = getelementptr inbounds nuw i8, ptr %i.axm, i64 60
end_hunk_0
begin_hunk_1_@rnnoise_channels:bb.a
.loopexit.i.i46.i:                                ; preds = %vector.body271, %bb.bb
  %exitcond26.not.i.i.i = icmp eq i64 %indvars.iv.next24.i.i.i, 21
  br i1 %exitcond26.not.i.i.i, label %vector.body249, label %bb.bb, !llvm.loop !154

vector.body249:                                   ; preds = %.loopexit.i.i46.i, %vector.body249
  %index250 = phi i64 [ %index.next259, %vector.body249 ], [ 0, %.loopexit.i.i46.i ] ; 4 uses
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index250
  %wide.load251 = load <4 x float>, ptr %i.bhz, align 16, !tbaa !26 ; 2 uses
  %i.bia = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index250
  %wide.vec252 = load <8 x float>, ptr %i.bia, align 16, !tbaa !26 ; 2 uses
  %strided.vec253 = shufflevector <8 x float> %wide.vec252, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec254 = shufflevector <8 x float> %wide.vec252, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bib = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index250 ; 2 uses
  %wide.vec255 = load <8 x float>, ptr %i.bib, align 16, !tbaa !26 ; 2 uses
  %strided.vec256 = shufflevector <8 x float> %wide.vec255, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec257 = shufflevector <8 x float> %wide.vec255, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bic = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load251, <4 x float> %strided.vec253, <4 x float> %strided.vec256)
  %i.bid = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load251, <4 x float> %strided.vec254, <4 x float> %strided.vec257)
  %interleaved.vec258 = shufflevector <4 x float> %i.bic, <4 x float> %i.bid, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec258, ptr %i.bib, align 16, !tbaa !26
  %index.next259 = add nuw i64 %index250, 4       ; 2 uses
  %i.bie = icmp eq i64 %index.next259, 480
  br i1 %i.bie, label %interp_band_gain.exit.i.i, label %vector.body249, !llvm.loop !155

bb.bb:                                            ; preds = %.loopexit.i.i46.i, %bb.be
  %i.bif = phi i8 [ 0, %bb.be ], [ %i.bih, %.loopexit.i.i46.i ]
  %indvars.iv23.i.i.i = phi i64 [ 0, %bb.be ], [ %indvars.iv.next24.i.i.i, %.loopexit.i.i46.i ] ; 2 uses
  %indvars.iv.next24.i.i.i = add nuw nsw i64 %indvars.iv23.i.i.i, 1 ; 4 uses
  %i.big = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next24.i.i.i
  %i.bih = load i8, ptr %i.big, align 1, !tbaa !179 ; 2 uses
  %i.bii = zext i8 %i.bih to i32
  %i.bij = zext i8 %i.bif to i32                  ; 2 uses
  %i.bik = sub nsw i32 %i.bii, %i.bij             ; 2 uses
  %i.bil = icmp sgt i32 %i.bik, 0
  br i1 %i.bil, label %.lr.ph.i.i54.i, label %.loopexit.i.i46.i

.lr.ph.i.i54.i:                                   ; preds = %bb.bb
  %i.bim = shl nuw nsw i32 %i.bik, 2              ; 2 uses
  %i.bin = shl nuw nsw i32 %i.bij, 2
  %i.bio = zext nneg i32 %i.bin to i64
  %wide.trip.count.i.i55.i = zext nneg i32 %i.bim to i64
  %invariant.gep.i.i56.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bio
  %i.bip = uitofp nneg i32 %i.bim to float
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next24.i.i.i
  %i.bir = load float, ptr %i.biq, align 4, !tbaa !26
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv23.i.i.i
  %i.bit = load float, ptr %i.bis, align 4, !tbaa !26
  %broadcast.splatinsert265 = insertelement <4 x float> poison, float %i.bip, i64 0
  %broadcast.splat266 = shufflevector <4 x float> %broadcast.splatinsert265, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert267 = insertelement <4 x float> poison, float %i.bit, i64 0
  %broadcast.splat268 = shufflevector <4 x float> %broadcast.splatinsert267, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert269 = insertelement <4 x float> poison, float %i.bir, i64 0
  %broadcast.splat270 = shufflevector <4 x float> %broadcast.splatinsert269, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %.lr.ph.i.i54.i
  %index272 = phi i64 [ 0, %.lr.ph.i.i54.i ], [ %index.next274, %vector.body271 ] ; 2 uses
  %vec.ind273 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i.i54.i ], [ %vec.ind.next275, %vector.body271 ] ; 2 uses
  %i.biu = uitofp nneg <4 x i32> %vec.ind273 to <4 x float>
  %i.biv = fdiv nsz <4 x float> %i.biu, %broadcast.splat266 ; 2 uses
  %i.biw = fsub nsz <4 x float> splat (float 1.000000e+00), %i.biv
  %i.bix = fmul nsz <4 x float> %broadcast.splat270, %i.biv
  %i.biy = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.biw, <4 x float> %broadcast.splat268, <4 x float> %i.bix)
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.i56.i, i64 %index272
  store <4 x float> %i.biy, ptr %i.biz, align 16, !tbaa !26
  %index.next274 = add nuw i64 %index272, 4       ; 2 uses
  %vec.ind.next275 = add <4 x i32> %vec.ind273, splat (i32 4)
  %i.bja = icmp eq i64 %index.next274, %wide.trip.count.i.i55.i
  br i1 %i.bja, label %.loopexit.i.i46.i, label %vector.body271, !llvm.loop !156

bb.bc:                                            ; preds = %vector.ph280
  %i.bjb = insertelement <2 x float> poison, float %i.bhw, i64 0
  %i.bjc = insertelement <2 x float> %i.bjb, float %i.bhx, i64 1 ; 2 uses
  %i.bjd = fmul nsz <2 x float> %i.bjc, %i.bjc
  %i.bje = insertelement <2 x float> poison, float %i.bhx, i64 0
  %i.bjf = insertelement <2 x float> %i.bje, float %i.bhw, i64 1 ; 2 uses
  %i.bjg = fneg nsz <2 x float> %i.bjf
  %i.bjh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bjg, <2 x float> %i.bjf, <2 x float> splat (float 1.000000e+00))
  %i.bji = fmul nsz <2 x float> %i.bjd, %i.bjh
  %i.bjj = fpext nsz <2 x float> %i.bji to <2 x double> ; 2 uses
  %i.bjk = extractelement <2 x double> %i.bjj, i64 1
  %i.bjl = fadd nsz double %i.bjk, 1.000000e-03
  %i.bjm = extractelement <2 x double> %i.bjj, i64 0
  %i.bjn = fdiv nsz double %i.bjm, %i.bjl
  %i.bjo = fptrunc nsz double %i.bjn to float
  br label %scalar.ph279.1

scalar.ph279.1:                                   ; preds = %bb.bc, %vector.ph280
  %.sink.i.i = phi float [ %i.bjo, %bb.bc ], [ 1.000000e+00, %vector.ph280 ] ; 2 uses
  %i.bjp = fcmp nsz ogt float %.sink.i.i, 0.000000e+00
  %i.bjq = select nsz i1 %i.bjp, float %.sink.i.i, float 0.000000e+00 ; 2 uses
  %i.bjr = fcmp nsz ogt float %i.bjq, 1.000000e+00
  %..i.i43.i = select nsz i1 %i.bjr, float 1.000000e+00, float %i.bjq
  %i.bjs = call nsz float @llvm.sqrt.f32(float %..i.i43.i)
  %i.bjt = load float, ptr %i.je, align 16, !tbaa !26
  %i.bju = fpext nsz float %i.bjt to double
  %.sroa.13.80.vec.extract = extractelement <2 x float> %.sroa.13.0.copyload, i64 0
  %i.bjv = fpext nsz float %.sroa.13.80.vec.extract to double
  %i.bjw = fadd nsz double %i.bjv, 1.000000e-08
  %i.bjx = fdiv nsz double %i.bju, %i.bjw
  %i.bjy = fptrunc nsz double %i.bjx to float
  %i.bjz = call nsz float @llvm.sqrt.f32(float %i.bjy)
  %i.bka = fmul nsz float %i.bjs, %i.bjz
  store float %i.bka, ptr %i.jd, align 16, !tbaa !26
  %i.bkb = load float, ptr %i.jf, align 4, !tbaa !26 ; 3 uses
  %i.bkc = load float, ptr %i.jg, align 4, !tbaa !26 ; 3 uses
  %i.bkd = fcmp nsz ogt float %i.bkb, %i.bkc
  br i1 %i.bkd, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %scalar.ph279.1
  %i.bke = insertelement <2 x float> poison, float %i.bkb, i64 0
  %i.bkf = insertelement <2 x float> %i.bke, float %i.bkc, i64 1 ; 2 uses
  %i.bkg = fmul nsz <2 x float> %i.bkf, %i.bkf
  %i.bkh = insertelement <2 x float> poison, float %i.bkc, i64 0
  %i.bki = insertelement <2 x float> %i.bkh, float %i.bkb, i64 1 ; 2 uses
  %i.bkj = fneg nsz <2 x float> %i.bki
  %i.bkk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkj, <2 x float> %i.bki, <2 x float> splat (float 1.000000e+00))
  %i.bkl = fmul nsz <2 x float> %i.bkg, %i.bkk
  %i.bkm = fpext nsz <2 x float> %i.bkl to <2 x double> ; 2 uses
  %i.bkn = extractelement <2 x double> %i.bkm, i64 1
  %i.bko = fadd nsz double %i.bkn, 1.000000e-03
  %i.bkp = extractelement <2 x double> %i.bkm, i64 0
  %i.bkq = fdiv nsz double %i.bkp, %i.bko
  %i.bkr = fptrunc nsz double %i.bkq to float
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %scalar.ph279.1
  %.sink.i.i.1 = phi float [ %i.bkr, %bb.bd ], [ 1.000000e+00, %scalar.ph279.1 ] ; 2 uses
  %i.bks = fcmp nsz ogt float %.sink.i.i.1, 0.000000e+00
  %i.bkt = select nsz i1 %i.bks, float %.sink.i.i.1, float 0.000000e+00 ; 2 uses
  %i.bku = fcmp nsz ogt float %i.bkt, 1.000000e+00
  %..i.i43.i.1 = select nsz i1 %i.bku, float 1.000000e+00, float %i.bkt
  %i.bkv = call nsz float @llvm.sqrt.f32(float %..i.i43.i.1)
  %i.bkw = load float, ptr %i.ji, align 4, !tbaa !26
  %i.bkx = fpext nsz float %i.bkw to double
  %.sroa.13.84.vec.extract = extractelement <2 x float> %.sroa.13.0.copyload, i64 1
  %i.bky = fpext nsz float %.sroa.13.84.vec.extract to double
  %i.bkz = fadd nsz double %i.bky, 1.000000e-08
  %i.bla = fdiv nsz double %i.bkx, %i.bkz
  %i.blb = fptrunc nsz double %i.bla to float
  %i.blc = call nsz float @llvm.sqrt.f32(float %i.blb)
  %i.bld = fmul nsz float %i.bkv, %i.blc
  store float %i.bld, ptr %i.jh, align 4, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1924) %i.e, i8 0, i64 1924, i1 false)
  br label %bb.bb

..loopexit_crit_edge.i.i53.i:                     ; preds = %bb.bg
  store <2 x float> %i.bmf, ptr %i.blo, align 4, !tbaa !26
  br label %.loopexit.i62.i.i

.loopexit.i62.i.i:                                ; preds = %bb.bf, %..loopexit_crit_edge.i.i53.i
  %exitcond45.not.i.i49.i = icmp eq i64 %indvars.iv.next43.i.i48.i, 21
  br i1 %exitcond45.not.i.i49.i, label %compute_band_energy.exit.i50.i, label %bb.bf, !llvm.loop !132

bb.bf:                                            ; preds = %.loopexit.i62.i.i, %interp_band_gain.exit.i.i
  %i.ble = phi i8 [ 0, %interp_band_gain.exit.i.i ], [ %i.blg, %.loopexit.i62.i.i ]
  %indvars.iv42.i.i47.i = phi i64 [ 0, %interp_band_gain.exit.i.i ], [ %indvars.iv.next43.i.i48.i, %.loopexit.i62.i.i ] ; 2 uses
  %indvars.iv.next43.i.i48.i = add nuw nsw i64 %indvars.iv42.i.i47.i, 1 ; 3 uses
  %i.blf = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next43.i.i48.i
  %i.blg = load i8, ptr %i.blf, align 1, !tbaa !179 ; 2 uses
  %i.blh = zext i8 %i.blg to i32
  %i.bli = zext i8 %i.ble to i32                  ; 2 uses
  %i.blj = sub nsw i32 %i.blh, %i.bli             ; 2 uses
  %i.blk = icmp sgt i32 %i.blj, 0
  br i1 %i.blk, label %.lr.ph.i63.i.i, label %.loopexit.i62.i.i

.lr.ph.i63.i.i:                                   ; preds = %bb.bf
  %i.bll = shl nuw nsw i32 %i.blj, 2              ; 2 uses
  %i.blm = uitofp nneg i32 %i.bll to float
  %i.bln = shl nuw nsw i32 %i.bli, 2
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv42.i.i47.i ; 2 uses
  %i.blp = load <2 x float>, ptr %i.blo, align 4, !tbaa !26
  %i.blq = zext nneg i32 %i.bln to i64
  %wide.trip.count.i64.i.i = zext nneg i32 %i.bll to i64
  %invariant.gep.i65.i.i = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.blq
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph.i63.i.i
  %indvars.iv.i66.i.i = phi i64 [ 0, %.lr.ph.i63.i.i ], [ %indvars.iv.next.i68.i.i, %bb.bg ] ; 3 uses
  %i.blr = phi <2 x float> [ %i.blp, %.lr.ph.i63.i.i ], [ %i.bmf, %bb.bg ]
  %i.bls = trunc nuw nsw i64 %indvars.iv.i66.i.i to i32
  %i.blt = uitofp nsz nneg i32 %i.bls to float
  %i.blu = fdiv nsz float %i.blt, %i.blm          ; 2 uses
  %gep.i67.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i65.i.i, i64 %indvars.iv.i66.i.i ; 2 uses
  %i.blv = load float, ptr %gep.i67.i.i, align 8, !tbaa !181 ; 2 uses
  %i.blw = fmul nsz float %i.blv, %i.blv
  %i.blx = getelementptr inbounds nuw i8, ptr %gep.i67.i.i, i64 4
  %i.bly = load float, ptr %i.blx, align 4, !tbaa !182 ; 2 uses
  %i.blz = call nsz float @llvm.fmuladd.f32(float %i.bly, float %i.bly, float %i.blw)
  %i.bma = fsub nsz float 1.000000e+00, %i.blu
  %i.bmb = insertelement <2 x float> poison, float %i.bma, i64 0
  %i.bmc = insertelement <2 x float> %i.bmb, float %i.blu, i64 1
  %i.bmd = insertelement <2 x float> poison, float %i.blz, i64 0
  %i.bme = shufflevector <2 x float> %i.bmd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmf = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bmc, <2 x float> %i.bme, <2 x float> %i.blr) ; 2 uses
  %indvars.iv.next.i68.i.i = add nuw nsw i64 %indvars.iv.i66.i.i, 1 ; 2 uses
  %exitcond.not.i69.i.i = icmp eq i64 %indvars.iv.next.i68.i.i, %wide.trip.count.i64.i.i
  br i1 %exitcond.not.i69.i.i, label %..loopexit_crit_edge.i.i53.i, label %bb.bg, !llvm.loop !133

compute_band_energy.exit.i50.i:                   ; preds = %.loopexit.i62.i.i
  %i.bmg = load <4 x float>, ptr %i.b, align 16, !tbaa !26
  %i.bmh = fmul <4 x float> %i.bmg, <float 2.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bmi = fpext nsz <4 x float> %i.bmh to <4 x double>
  %i.bmj = fadd nsz <4 x double> %i.bmi, splat (double 1.000000e-08)
  %i.bmk = load <4 x float>, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !tbaa !26
  %i.bml = fpext nsz <4 x float> %i.bmk to <4 x double>
  %i.bmm = fadd nsz <4 x double> %i.bml, splat (double 1.000000e-08)
  %i.bmn = load <4 x float>, ptr %.sroa.11.0..sroa_idx.i.i, align 16, !tbaa !26
  %i.bmo = fpext nsz <4 x float> %i.bmn to <4 x double>
  %i.bmp = fadd nsz <4 x double> %i.bmo, splat (double 1.000000e-08)
  %i.bmq = load <4 x float>, ptr %.sroa.15.0..sroa_idx.i.i, align 16, !tbaa !26
  %i.bmr = fpext nsz <4 x float> %i.bmq to <4 x double>
  %i.bms = fadd nsz <4 x double> %i.bmr, splat (double 1.000000e-08)
  %i.bmt = load <4 x float>, ptr %.sroa.19.0..sroa_idx.i.i, align 16, !tbaa !26
  %i.bmu = fpext nsz <4 x float> %i.bmt to <4 x double>
  %i.bmv = fadd nsz <4 x double> %i.bmu, splat (double 1.000000e-08)
  %i.bmw = load <2 x float>, ptr %.sroa.23.0..sroa_idx.i.i, align 16, !tbaa !26
  %i.bmx = fmul <2 x float> %i.bmw, <float 1.000000e+00, float 2.000000e+00>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.bmy = load <4 x float>, ptr %i.w, align 16, !tbaa !26
  %i.bmz = fpext nsz <4 x float> %i.bmy to <4 x double>
  %i.bna = fdiv nsz <4 x double> %i.bmz, %i.bmj
  %i.bnb = fptrunc nsz <4 x double> %i.bna to <4 x float>
  %i.bnc = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bnb)
  store <4 x float> %i.bnc, ptr %i.d, align 16, !tbaa !26
  %i.bnd = load <4 x float>, ptr %i.bt, align 16, !tbaa !26
  %i.bne = fpext nsz <4 x float> %i.bnd to <4 x double>
  %i.bnf = fdiv nsz <4 x double> %i.bne, %i.bmm
  %i.bng = fptrunc nsz <4 x double> %i.bnf to <4 x float>
  %i.bnh = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bng)
  store <4 x float> %i.bnh, ptr %i.co, align 16, !tbaa !26
  %i.bni = load <4 x float>, ptr %i.bv, align 16, !tbaa !26
  %i.bnj = fpext nsz <4 x float> %i.bni to <4 x double>
  %i.bnk = fdiv nsz <4 x double> %i.bnj, %i.bmp
  %i.bnl = fptrunc nsz <4 x double> %i.bnk to <4 x float>
  %i.bnm = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bnl)
  store <4 x float> %i.bnm, ptr %i.cp, align 16, !tbaa !26
  %i.bnn = load <4 x float>, ptr %i.bx, align 16, !tbaa !26
  %i.bno = fpext nsz <4 x float> %i.bnn to <4 x double>
  %i.bnp = fdiv nsz <4 x double> %i.bno, %i.bms
  %i.bnq = fptrunc nsz <4 x double> %i.bnp to <4 x float>
  %i.bnr = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bnq)
  store <4 x float> %i.bnr, ptr %i.cq, align 16, !tbaa !26
  %i.bns = load <4 x float>, ptr %i.bz, align 16, !tbaa !26
  %i.bnt = fpext nsz <4 x float> %i.bns to <4 x double>
  %i.bnu = fdiv nsz <4 x double> %i.bnt, %i.bmv
  %i.bnv = fptrunc nsz <4 x double> %i.bnu to <4 x float>
  %i.bnw = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bnv)
  store <4 x float> %i.bnw, ptr %i.cr, align 16, !tbaa !26
  %i.bnx = load <2 x float>, ptr %i.cb, align 16, !tbaa !26
  %i.bny = fpext nsz <2 x float> %i.bnx to <2 x double>
  %i.bnz = fpext nsz <2 x float> %i.bmx to <2 x double>
  %i.boa = fadd nsz <2 x double> %i.bnz, splat (double 1.000000e-08)
  %i.bob = fdiv nsz <2 x double> %i.bny, %i.boa
  %i.boc = fptrunc nsz <2 x double> %i.bob to <2 x float>
  %i.bod = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.boc)
  store <2 x float> %i.bod, ptr %i.cs, align 16, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1924) %i.f, i8 0, i64 1924, i1 false)
  br label %bb.bh

interp_band_gain.exit.i.i:                        ; preds = %vector.body249
  %i.boe = load float, ptr %i.jj, align 16, !tbaa !26
  %i.bof = load <2 x float>, ptr %i.jk, align 16, !tbaa !26
  %i.bog = load <2 x float>, ptr %i.jl, align 16, !tbaa !26
  %i.boh = insertelement <2 x float> poison, float %i.boe, i64 0
  %i.boi = shufflevector <2 x float> %i.boh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.boj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.boi, <2 x float> %i.bof, <2 x float> %i.bog)
  store <2 x float> %i.boj, ptr %i.jl, align 16, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  br label %bb.bf

.loopexit.i72.i.i:                                ; preds = %vector.body239, %bb.bh
  %exitcond26.not.i73.i.i = icmp eq i64 %indvars.iv.next24.i71.i.i, 21
  br i1 %exitcond26.not.i73.i.i, label %vector.body220, label %bb.bh, !llvm.loop !154

vector.body220:                                   ; preds = %.loopexit.i72.i.i, %vector.body220
  %index221 = phi i64 [ %index.next227, %vector.body220 ], [ 0, %.loopexit.i72.i.i ] ; 3 uses
  %i.bok = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index221
  %wide.load222 = load <2 x float>, ptr %i.bok, align 8, !tbaa !26
  %i.bol = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index221 ; 2 uses
  %wide.vec223 = load <4 x float>, ptr %i.bol, align 16, !tbaa !26
  %i.bom = shufflevector <2 x float> %wide.load222, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec226 = fmul nsz <4 x float> %i.bom, %wide.vec223
  store <4 x float> %interleaved.vec226, ptr %i.bol, align 16, !tbaa !26
  %index.next227 = add nuw i64 %index221, 2       ; 2 uses
  %i.bon = icmp eq i64 %index.next227, 480
  br i1 %i.bon, label %interp_band_gain.exit81.i.i, label %vector.body220, !llvm.loop !157

bb.bh:                                            ; preds = %.loopexit.i72.i.i, %compute_band_energy.exit.i50.i
  %i.boo = phi i8 [ 0, %compute_band_energy.exit.i50.i ], [ %i.boq, %.loopexit.i72.i.i ]
  %indvars.iv23.i70.i.i = phi i64 [ 0, %compute_band_energy.exit.i50.i ], [ %indvars.iv.next24.i71.i.i, %.loopexit.i72.i.i ] ; 2 uses
  %indvars.iv.next24.i71.i.i = add nuw nsw i64 %indvars.iv23.i70.i.i, 1 ; 4 uses
  %i.bop = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next24.i71.i.i
  %i.boq = load i8, ptr %i.bop, align 1, !tbaa !179 ; 2 uses
  %i.bor = zext i8 %i.boq to i32
  %i.bos = zext i8 %i.boo to i32                  ; 2 uses
  %i.bot = sub nsw i32 %i.bor, %i.bos             ; 2 uses
  %i.bou = icmp sgt i32 %i.bot, 0
  br i1 %i.bou, label %.lr.ph.i74.i.i, label %.loopexit.i72.i.i

.lr.ph.i74.i.i:                                   ; preds = %bb.bh
  %i.bov = shl nuw nsw i32 %i.bot, 2              ; 2 uses
  %i.bow = shl nuw nsw i32 %i.bos, 2
  %i.box = zext nneg i32 %i.bow to i64
  %wide.trip.count.i75.i.i = zext nneg i32 %i.bov to i64
  %invariant.gep.i76.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.box
  %i.boy = uitofp nneg i32 %i.bov to float
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next24.i71.i.i
  %i.bpa = load float, ptr %i.boz, align 4, !tbaa !26
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv23.i70.i.i
  %i.bpc = load float, ptr %i.bpb, align 4, !tbaa !26
  %broadcast.splatinsert233 = insertelement <4 x float> poison, float %i.boy, i64 0
  %broadcast.splat234 = shufflevector <4 x float> %broadcast.splatinsert233, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert235 = insertelement <4 x float> poison, float %i.bpc, i64 0
  %broadcast.splat236 = shufflevector <4 x float> %broadcast.splatinsert235, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert237 = insertelement <4 x float> poison, float %i.bpa, i64 0
  %broadcast.splat238 = shufflevector <4 x float> %broadcast.splatinsert237, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %.lr.ph.i74.i.i
  %index240 = phi i64 [ 0, %.lr.ph.i74.i.i ], [ %index.next242, %vector.body239 ] ; 2 uses
  %vec.ind241 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i74.i.i ], [ %vec.ind.next243, %vector.body239 ] ; 2 uses
  %i.bpd = uitofp nneg <4 x i32> %vec.ind241 to <4 x float>
  %i.bpe = fdiv nsz <4 x float> %i.bpd, %broadcast.splat234 ; 2 uses
  %i.bpf = fsub nsz <4 x float> splat (float 1.000000e+00), %i.bpe
  %i.bpg = fmul nsz <4 x float> %broadcast.splat238, %i.bpe
  %i.bph = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bpf, <4 x float> %broadcast.splat236, <4 x float> %i.bpg)
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i76.i.i, i64 %index240
  store <4 x float> %i.bph, ptr %i.bpi, align 16, !tbaa !26
  %index.next242 = add nuw i64 %index240, 4       ; 2 uses
  %vec.ind.next243 = add <4 x i32> %vec.ind241, splat (i32 4)
  %i.bpj = icmp eq i64 %index.next242, %wide.trip.count.i75.i.i
  br i1 %i.bpj, label %.loopexit.i72.i.i, label %vector.body239, !llvm.loop !158

interp_band_gain.exit81.i.i:                      ; preds = %vector.body220
  %i.bpk = load float, ptr %i.jm, align 16, !tbaa !26
  %i.bpl = load <2 x float>, ptr %i.jn, align 16, !tbaa !26
  %i.bpm = insertelement <2 x float> poison, float %i.bpk, i64 0
  %i.bpn = shufflevector <2 x float> %i.bpm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpo = fmul nsz <2 x float> %i.bpn, %i.bpl
  store <2 x float> %i.bpo, ptr %i.jn, align 16, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.kd, i64 18400 ; 2 uses
  %i.bpq = load <4 x float>, ptr %i.z, align 16, !tbaa !26 ; 2 uses
  %i.bpr = load <4 x float>, ptr %i.bpp, align 16, !tbaa !26
  %i.bps = fmul nsz <4 x float> %i.bpr, splat (float 6.000000e-01) ; 2 uses
  %i.bpt = fcmp nsz ogt <4 x float> %i.bpq, %i.bps
  %i.bpu = select <4 x i1> %i.bpt, <4 x float> %i.bpq, <4 x float> %i.bps ; 2 uses
  store <4 x float> %i.bpu, ptr %i.z, align 16, !tbaa !26
  store <4 x float> %i.bpu, ptr %i.bpp, align 16, !tbaa !26
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.kd, i64 18416 ; 2 uses
  %i.bpw = load <4 x float>, ptr %i.ct, align 16, !tbaa !26 ; 2 uses
  %i.bpx = load <4 x float>, ptr %i.bpv, align 16, !tbaa !26
  %i.bpy = fmul nsz <4 x float> %i.bpx, splat (float 6.000000e-01) ; 2 uses
  %i.bpz = fcmp nsz ogt <4 x float> %i.bpw, %i.bpy
  %i.bqa = select <4 x i1> %i.bpz, <4 x float> %i.bpw, <4 x float> %i.bpy ; 2 uses
  store <4 x float> %i.bqa, ptr %i.ct, align 16, !tbaa !26
  store <4 x float> %i.bqa, ptr %i.bpv, align 16, !tbaa !26
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.kd, i64 18432 ; 2 uses
  %i.bqc = load <4 x float>, ptr %i.cu, align 16, !tbaa !26 ; 2 uses
  %i.bqd = load <4 x float>, ptr %i.bqb, align 16, !tbaa !26
  %i.bqe = fmul nsz <4 x float> %i.bqd, splat (float 6.000000e-01) ; 2 uses
  %i.bqf = fcmp nsz ogt <4 x float> %i.bqc, %i.bqe
  %i.bqg = select <4 x i1> %i.bqf, <4 x float> %i.bqc, <4 x float> %i.bqe ; 2 uses
  store <4 x float> %i.bqg, ptr %i.cu, align 16, !tbaa !26
  store <4 x float> %i.bqg, ptr %i.bqb, align 16, !tbaa !26
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.kd, i64 18448 ; 2 uses
  %i.bqi = load <4 x float>, ptr %i.cv, align 16, !tbaa !26 ; 2 uses
  %i.bqj = load <4 x float>, ptr %i.bqh, align 16, !tbaa !26
  %i.bqk = fmul nsz <4 x float> %i.bqj, splat (float 6.000000e-01) ; 2 uses
  %i.bql = fcmp nsz ogt <4 x float> %i.bqi, %i.bqk
  %i.bqm = select <4 x i1> %i.bql, <4 x float> %i.bqi, <4 x float> %i.bqk ; 2 uses
  store <4 x float> %i.bqm, ptr %i.cv, align 16, !tbaa !26
  store <4 x float> %i.bqm, ptr %i.bqh, align 16, !tbaa !26
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.kd, i64 18464 ; 2 uses
  %i.bqo = load <4 x float>, ptr %i.cw, align 16, !tbaa !26 ; 2 uses
  %i.bqp = load <4 x float>, ptr %i.bqn, align 16, !tbaa !26
  %i.bqq = fmul nsz <4 x float> %i.bqp, splat (float 6.000000e-01) ; 2 uses
  %i.bqr = fcmp nsz ogt <4 x float> %i.bqo, %i.bqq
  %i.bqs = select <4 x i1> %i.bqr, <4 x float> %i.bqo, <4 x float> %i.bqq ; 2 uses
  store <4 x float> %i.bqs, ptr %i.cw, align 16, !tbaa !26
  store <4 x float> %i.bqs, ptr %i.bqn, align 16, !tbaa !26
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.kd, i64 18480 ; 2 uses
  %i.bqu = load <2 x float>, ptr %i.cx, align 16, !tbaa !26 ; 2 uses
  %i.bqv = load <2 x float>, ptr %i.bqt, align 16, !tbaa !26
  %i.bqw = fmul nsz <2 x float> %i.bqv, splat (float 6.000000e-01) ; 2 uses
  %i.bqx = fcmp nsz ogt <2 x float> %i.bqu, %i.bqw
  %i.bqy = select <2 x i1> %i.bqx, <2 x float> %i.bqu, <2 x float> %i.bqw ; 2 uses
  store <2 x float> %i.bqy, ptr %i.cx, align 16, !tbaa !26
  store <2 x float> %i.bqy, ptr %i.bqt, align 16, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1924) %i.aa, i8 0, i64 1924, i1 false)
  br label %bb.bi

.loopexit.i.i:                                    ; preds = %vector.body214, %bb.bi
  %exitcond26.not.i.i = icmp eq i64 %indvars.iv.next24.i.i, 21
  br i1 %exitcond26.not.i.i, label %vector.body197, label %bb.bi, !llvm.loop !154

vector.body197:                                   ; preds = %.loopexit.i.i, %vector.body197
  %index198 = phi i64 [ %index.next204, %vector.body197 ], [ 0, %.loopexit.i.i ] ; 3 uses
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index198
  %wide.load199 = load <2 x float>, ptr %i.bqz, align 8, !tbaa !26
  %i.bra = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index198 ; 2 uses
  %wide.vec200 = load <4 x float>, ptr %i.bra, align 16, !tbaa !26
  %i.brb = shufflevector <2 x float> %wide.load199, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec203 = fmul nsz <4 x float> %i.brb, %wide.vec200
  store <4 x float> %interleaved.vec203, ptr %i.bra, align 16, !tbaa !26
  %index.next204 = add nuw i64 %index198, 2       ; 2 uses
  %i.brc = icmp eq i64 %index.next204, 480
  br i1 %i.brc, label %interp_band_gain.exit.i, label %vector.body197, !llvm.loop !159

bb.bi:                                            ; preds = %.loopexit.i.i, %interp_band_gain.exit81.i.i
  %i.brd = phi i8 [ 0, %interp_band_gain.exit81.i.i ], [ %i.brf, %.loopexit.i.i ]
  %indvars.iv23.i.i = phi i64 [ 0, %interp_band_gain.exit81.i.i ], [ %indvars.iv.next24.i.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.next24.i.i = add nuw nsw i64 %indvars.iv23.i.i, 1 ; 4 uses
  %i.bre = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next24.i.i
  %i.brf = load i8, ptr %i.bre, align 1, !tbaa !179 ; 2 uses
  %i.brg = zext i8 %i.brf to i32
  %i.brh = zext i8 %i.brd to i32                  ; 2 uses
  %i.bri = sub nsw i32 %i.brg, %i.brh             ; 2 uses
  %i.brj = icmp sgt i32 %i.bri, 0
  br i1 %i.brj, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.bi
  %i.brk = shl nuw nsw i32 %i.bri, 2              ; 2 uses
  %i.brl = shl nuw nsw i32 %i.brh, 2
  %i.brm = zext nneg i32 %i.brl to i64
  %wide.trip.count.i.i = zext nneg i32 %i.brk to i64
  %invariant.gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.brm
  %i.brn = uitofp nneg i32 %i.brk to float
  %i.bro = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next24.i.i
  %i.brp = load float, ptr %i.bro, align 4, !tbaa !26
  %i.brq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv23.i.i
  %i.brr = load float, ptr %i.brq, align 4, !tbaa !26
  %broadcast.splatinsert208 = insertelement <4 x float> poison, float %i.brn, i64 0
  %broadcast.splat209 = shufflevector <4 x float> %broadcast.splatinsert208, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert210 = insertelement <4 x float> poison, float %i.brr, i64 0
  %broadcast.splat211 = shufflevector <4 x float> %broadcast.splatinsert210, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert212 = insertelement <4 x float> poison, float %i.brp, i64 0
  %broadcast.splat213 = shufflevector <4 x float> %broadcast.splatinsert212, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %.lr.ph.i.i
  %index215 = phi i64 [ 0, %.lr.ph.i.i ], [ %index.next216, %vector.body214 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i.i ], [ %vec.ind.next, %vector.body214 ] ; 2 uses
  %i.brs = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.brt = fdiv nsz <4 x float> %i.brs, %broadcast.splat209 ; 2 uses
  %i.bru = fsub nsz <4 x float> splat (float 1.000000e+00), %i.brt
  %i.brv = fmul nsz <4 x float> %broadcast.splat213, %i.brt
end_hunk_1
