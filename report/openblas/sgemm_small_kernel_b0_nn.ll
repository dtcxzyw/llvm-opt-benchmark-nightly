Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_small_kernel_b0_nn?download=true
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@sgemm_small_kernel_b0_nn:bb.a
.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aoq = fmul <16 x float> %i.k, zeroinitializer ; 9 uses
  %i.aor = sub i64 %1, %.10.lcssa
  %xtraiter4183 = and i64 %i.aor, 7               ; 2 uses
  %lcmp.mod4184.not = icmp eq i64 %xtraiter4183, 0
  br i1 %lcmp.mod4184.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.lr.ph.split, %.preheader.prol
  %.113176.prol = phi i64 [ %i.aot, %.preheader.prol ], [ %.10.lcssa, %.preheader.lr.ph.split ] ; 2 uses
  %prol.iter4185 = phi i64 [ %prol.iter4185.next, %.preheader.prol ], [ 0, %.preheader.lr.ph.split ]
  %i.aos = mul nsw i64 %.113176.prol, %9
  %gep3175.prol = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.aos
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.prol, <16 x i1> %i.aly)
  %i.aot = add nuw nsw i64 %.113176.prol, 1       ; 2 uses
  %prol.iter4185.next = add i64 %prol.iter4185, 1 ; 2 uses
  %prol.iter4185.cmp.not = icmp eq i64 %prol.iter4185.next, %xtraiter4183
  br i1 %prol.iter4185.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !45

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.lr.ph.split
  %.113176.unr = phi i64 [ %.10.lcssa, %.preheader.lr.ph.split ], [ %i.aot, %.preheader.prol ]
  %i.aou = sub i64 %.10.lcssa, %1
  %i.aov = icmp ugt i64 %i.aou, -8
  br i1 %i.aov, label %.loopexit, label %.preheader

.lr.ph3155.new:                                   ; preds = %.lr.ph3155, %.lr.ph3155.new
  %.1024053154 = phi i64 [ %i.aqz, %.lr.ph3155.new ], [ 0, %.lr.ph3155 ] ; 6 uses
  %.025033153 = phi <16 x float> [ %i.aqx, %.lr.ph3155.new ], [ zeroinitializer, %.lr.ph3155 ]
  %.025043152 = phi <16 x float> [ %i.aqy, %.lr.ph3155.new ], [ zeroinitializer, %.lr.ph3155 ]
  %niter4182 = phi i64 [ %niter4182.next.3, %.lr.ph3155.new ], [ 0, %.lr.ph3155 ]
  %i.aow = mul nsw i64 %.1024053154, %4
  %gep3151 = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.aow
  %i.aox = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.aoy = getelementptr [4 x i8], ptr %6, i64 %.1024053154 ; 2 uses
  %i.aoz = getelementptr [4 x i8], ptr %i.aoy, i64 %i.alt
  %i.apa = load float, ptr %i.aoz, align 1, !tbaa !8
  %i.apb = insertelement <4 x float> poison, float %i.apa, i64 0
  %i.apc = shufflevector <4 x float> %i.apb, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apd = getelementptr [4 x i8], ptr %i.aoy, i64 %i.alv
  %i.ape = load float, ptr %i.apd, align 1, !tbaa !8
  %i.apf = insertelement <4 x float> poison, float %i.ape, i64 0
  %i.apg = shufflevector <4 x float> %i.apf, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aph = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.apc, <16 x float> %.025033153)
  %i.api = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.apg, <16 x float> %.025043152)
  %i.apj = or disjoint i64 %.1024053154, 1        ; 2 uses
  %i.apk = mul nsw i64 %i.apj, %4
  %gep3151.1 = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.apk
  %i.apl = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151.1, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.apm = getelementptr [4 x i8], ptr %6, i64 %i.apj ; 2 uses
  %i.apn = getelementptr [4 x i8], ptr %i.apm, i64 %i.alt
  %i.apo = load float, ptr %i.apn, align 1, !tbaa !8
  %i.app = insertelement <4 x float> poison, float %i.apo, i64 0
  %i.apq = shufflevector <4 x float> %i.app, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apr = getelementptr [4 x i8], ptr %i.apm, i64 %i.alv
  %i.aps = load float, ptr %i.apr, align 1, !tbaa !8
  %i.apt = insertelement <4 x float> poison, float %i.aps, i64 0
  %i.apu = shufflevector <4 x float> %i.apt, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apl, <16 x float> %i.apq, <16 x float> %i.aph)
  %i.apw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apl, <16 x float> %i.apu, <16 x float> %i.api)
  %i.apx = or disjoint i64 %.1024053154, 2        ; 2 uses
  %i.apy = mul nsw i64 %i.apx, %4
  %gep3151.2 = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.apy
  %i.apz = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151.2, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.aqa = getelementptr [4 x i8], ptr %6, i64 %i.apx ; 2 uses
  %i.aqb = getelementptr [4 x i8], ptr %i.aqa, i64 %i.alt
  %i.aqc = load float, ptr %i.aqb, align 1, !tbaa !8
  %i.aqd = insertelement <4 x float> poison, float %i.aqc, i64 0
  %i.aqe = shufflevector <4 x float> %i.aqd, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqf = getelementptr [4 x i8], ptr %i.aqa, i64 %i.alv
  %i.aqg = load float, ptr %i.aqf, align 1, !tbaa !8
  %i.aqh = insertelement <4 x float> poison, float %i.aqg, i64 0
  %i.aqi = shufflevector <4 x float> %i.aqh, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apz, <16 x float> %i.aqe, <16 x float> %i.apv)
  %i.aqk = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apz, <16 x float> %i.aqi, <16 x float> %i.apw)
  %i.aql = or disjoint i64 %.1024053154, 3        ; 2 uses
  %i.aqm = mul nsw i64 %i.aql, %4
  %gep3151.3 = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.aqm
  %i.aqn = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151.3, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.aqo = getelementptr [4 x i8], ptr %6, i64 %i.aql ; 2 uses
  %i.aqp = getelementptr [4 x i8], ptr %i.aqo, i64 %i.alt
  %i.aqq = load float, ptr %i.aqp, align 1, !tbaa !8
  %i.aqr = insertelement <4 x float> poison, float %i.aqq, i64 0
  %i.aqs = shufflevector <4 x float> %i.aqr, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqt = getelementptr [4 x i8], ptr %i.aqo, i64 %i.alv
  %i.aqu = load float, ptr %i.aqt, align 1, !tbaa !8
  %i.aqv = insertelement <4 x float> poison, float %i.aqu, i64 0
  %i.aqw = shufflevector <4 x float> %i.aqv, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqn, <16 x float> %i.aqs, <16 x float> %i.aqj) ; 3 uses
  %i.aqy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqn, <16 x float> %i.aqw, <16 x float> %i.aqk) ; 3 uses
  %i.aqz = add nuw nsw i64 %.1024053154, 4        ; 2 uses
  %niter4182.next.3 = add nuw nsw i64 %niter4182, 4 ; 2 uses
  %niter4182.ncmp.3 = icmp eq i64 %niter4182.next.3, %unroll_iter4181
  br i1 %niter4182.ncmp.3, label %._crit_edge3156.loopexit.unr-lcssa, label %.lr.ph3155.new, !llvm.loop !46

._crit_edge3156.loopexit.unr-lcssa:               ; preds = %.lr.ph3155.new
  br i1 %lcmp.mod4177.not, label %._crit_edge3156, label %.epil.preheader4174

.epil.preheader4174:                              ; preds = %._crit_edge3156.loopexit.unr-lcssa, %.lr.ph3155
  %.1024053154.epil.init = phi i64 [ 0, %.lr.ph3155 ], [ %i.aqz, %._crit_edge3156.loopexit.unr-lcssa ]
  %.025033153.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3155 ], [ %i.aqx, %._crit_edge3156.loopexit.unr-lcssa ]
  %.025043152.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3155 ], [ %i.aqy, %._crit_edge3156.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4180)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader4174
  %.1024053154.epil = phi i64 [ %.1024053154.epil.init, %.epil.preheader4174 ], [ %i.arn, %bb.l ] ; 3 uses
  %.025033153.epil = phi <16 x float> [ %.025033153.epil.init, %.epil.preheader4174 ], [ %i.arl, %bb.l ]
  %.025043152.epil = phi <16 x float> [ %.025043152.epil.init, %.epil.preheader4174 ], [ %i.arm, %bb.l ]
  %epil.iter4176 = phi i64 [ 0, %.epil.preheader4174 ], [ %epil.iter4176.next, %bb.l ]
  %i.ara = mul nsw i64 %.1024053154.epil, %4
  %gep3151.epil = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.ara
  %i.arb = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151.epil, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.arc = getelementptr [4 x i8], ptr %6, i64 %.1024053154.epil ; 2 uses
  %i.ard = getelementptr [4 x i8], ptr %i.arc, i64 %i.alt
  %i.are = load float, ptr %i.ard, align 1, !tbaa !8
  %i.arf = insertelement <4 x float> poison, float %i.are, i64 0
  %i.arg = shufflevector <4 x float> %i.arf, <4 x float> poison, <16 x i32> zeroinitializer
  %i.arh = getelementptr [4 x i8], ptr %i.arc, i64 %i.alv
  %i.ari = load float, ptr %i.arh, align 1, !tbaa !8
  %i.arj = insertelement <4 x float> poison, float %i.ari, i64 0
  %i.ark = shufflevector <4 x float> %i.arj, <4 x float> poison, <16 x i32> zeroinitializer
  %i.arl = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.arb, <16 x float> %i.arg, <16 x float> %.025033153.epil) ; 2 uses
  %i.arm = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.arb, <16 x float> %i.ark, <16 x float> %.025043152.epil) ; 2 uses
  %i.arn = add nuw nsw i64 %.1024053154.epil, 1
  %epil.iter4176.next = add i64 %epil.iter4176, 1 ; 2 uses
  %epil.iter4176.cmp.not = icmp eq i64 %epil.iter4176.next, %xtraiter4175
  br i1 %epil.iter4176.cmp.not, label %._crit_edge3156, label %bb.l, !llvm.loop !47

._crit_edge3156:                                  ; preds = %._crit_edge3156.loopexit.unr-lcssa, %bb.l, %.preheader2627.._crit_edge3156_crit_edge
  %.pre-phi3502 = phi i64 [ %.pre3501, %.preheader2627.._crit_edge3156_crit_edge ], [ %i.alu, %bb.l ], [ %i.alu, %._crit_edge3156.loopexit.unr-lcssa ]
  %.02504.lcssa = phi <16 x float> [ zeroinitializer, %.preheader2627.._crit_edge3156_crit_edge ], [ %i.aqy, %._crit_edge3156.loopexit.unr-lcssa ], [ %i.arm, %bb.l ]
  %.02503.lcssa = phi <16 x float> [ zeroinitializer, %.preheader2627.._crit_edge3156_crit_edge ], [ %i.aqx, %._crit_edge3156.loopexit.unr-lcssa ], [ %i.arl, %bb.l ]
  %i.aro = fmul <16 x float> %i.k, %.02503.lcssa
  %i.arp = mul nsw i64 %.103163, %9
  %gep3160 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.arp
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aro, ptr align 1 %gep3160, <16 x i1> %i.ahf)
  %i.arq = fmul <16 x float> %i.k, %.02504.lcssa
  %i.arr = mul nsw i64 %.pre-phi3502, %9
  %gep3162 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.arr
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.arq, ptr align 1 %gep3162, <16 x i1> %i.ahf)
  %i.ars = add nuw nsw i64 %.103163, 2            ; 3 uses
  %i.art = icmp slt i64 %i.ars, %i.i
  br i1 %i.art, label %.preheader2627, label %.preheader2626, !llvm.loop !48

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.113176 = phi i64 [ %i.asj, %.preheader ], [ %.113176.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.aru = mul nsw i64 %.113176, %9
  %gep3175 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.aru
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175, <16 x i1> %i.aly)
  %i.arv = add nuw nsw i64 %.113176, 1
  %i.arw = mul nsw i64 %i.arv, %9
  %gep3175.1 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.arw
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.1, <16 x i1> %i.aly)
  %i.arx = add nuw nsw i64 %.113176, 2
  %i.ary = mul nsw i64 %i.arx, %9
  %gep3175.2 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.ary
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.2, <16 x i1> %i.aly)
  %i.arz = add nuw nsw i64 %.113176, 3
  %i.asa = mul nsw i64 %i.arz, %9
  %gep3175.3 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.asa
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.3, <16 x i1> %i.aly)
  %i.asb = add nuw nsw i64 %.113176, 4
  %i.asc = mul nsw i64 %i.asb, %9
  %gep3175.4 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.asc
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.4, <16 x i1> %i.aly)
  %i.asd = add nuw nsw i64 %.113176, 5
  %i.ase = mul nsw i64 %i.asd, %9
  %gep3175.5 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.ase
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.5, <16 x i1> %i.aly)
  %i.asf = add nuw nsw i64 %.113176, 6
  %i.asg = mul nsw i64 %i.asf, %9
  %gep3175.6 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.asg
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.6, <16 x i1> %i.aly)
  %i.ash = add nuw nsw i64 %.113176, 7
  %i.asi = mul nsw i64 %i.ash, %9
  %gep3175.7 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.asi
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.7, <16 x i1> %i.aly)
  %i.asj = add nuw nsw i64 %.113176, 8            ; 2 uses
  %exitcond3368.not.7 = icmp eq i64 %i.asj, %1
  br i1 %exitcond3368.not.7, label %.loopexit, label %.preheader, !llvm.loop !44

.lr.ph2907:                                       ; preds = %bb.i
  %sext = shl i64 %i.agh, 32
  %i.ask = ashr exact i64 %sext, 30
  %i.asl = mul i64 %i.ask, %2
  %i.asm = tail call noalias ptr @malloc(i64 noundef %i.asl) #8 ; 31 uses
  %i.asn = and i64 %2, 9223372036854775792        ; 11 uses
  %i.aso = and i64 %2, 9223372036854775800
  %invariant.gep2903 = getelementptr [4 x i8], ptr %i.asm, i64 %2
  %i.asp = and i64 %i.agh, 4294967295
  %notmask = shl nsw i64 -1, %i.asp
  %i.asq = trunc i64 %notmask to i8
  %i.asr = xor i8 %i.asq, -1
  %i.ass = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa ; 8 uses
  %i.ast = bitcast i8 %i.asr to <8 x i1>          ; 8 uses
  %.idx = mul nuw nsw i64 %2, 28
  %invariant.gep2909 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx
  %.idx2610 = mul nuw nsw i64 %2, 24
  %invariant.gep2911 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2610
  %.idx2611 = mul nuw nsw i64 %2, 20
  %invariant.gep2913 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2611
  %.idx2612 = shl nuw nsw i64 %2, 4
  %invariant.gep2915 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2612
  %.idx2613 = mul nuw nsw i64 %2, 12
  %invariant.gep2917 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2613
  %.idx2614 = shl nuw nsw i64 %2, 3
  %invariant.gep2919 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2614
  br label %bb.m

.preheader2651:                                   ; preds = %bb.v
  %i.asu = icmp slt i64 %i.avd, %2
  br i1 %i.asu, label %.preheader2650.lr.ph, label %._crit_edge2925.split

.preheader2650.lr.ph:                             ; preds = %.preheader2651
  %i.asv = icmp sgt i32 %i.agi, 0
  %i.asw = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa
  br i1 %i.asv, label %.preheader2650.preheader, label %._crit_edge2925.split

.preheader2650.preheader:                         ; preds = %.preheader2650.lr.ph
  %wide.trip.count = and i64 %i.agh, 2147483647
  %i.asx = add nsw i64 %wide.trip.count, -1
  %xtraiter4152 = and i64 %i.agh, 7               ; 3 uses
  %i.asy = icmp ult i64 %i.asx, 7
  %unroll_iter4156 = and i64 %i.agh, 2147483640
  %lcmp.mod4154.not = icmp eq i64 %xtraiter4152, 0
  %lcmp.mod4155 = icmp ne i64 %xtraiter4152, 0
  br label %iter.check

bb.m:                                             ; preds = %.lr.ph2907, %bb.v
  %.1224072905 = phi i64 [ 0, %.lr.ph2907 ], [ %i.avd, %bb.v ] ; 17 uses
  %i.asz = mul nsw i64 %.1224072905, %4
  %i.ata = getelementptr [4 x i8], ptr %i.ass, i64 %i.asz
  %i.atb = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ata, <8 x i1> %i.ast, <8 x float> zeroinitializer) ; 2 uses
  %i.atc = or disjoint i64 %.1224072905, 1
  %i.atd = mul nsw i64 %i.atc, %4
  %i.ate = getelementptr [4 x i8], ptr %i.ass, i64 %i.atd
  %i.atf = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ate, <8 x i1> %i.ast, <8 x float> zeroinitializer) ; 2 uses
  %i.atg = or disjoint i64 %.1224072905, 2
  %i.ath = mul nsw i64 %i.atg, %4
  %i.ati = getelementptr [4 x i8], ptr %i.ass, i64 %i.ath
  %i.atj = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ati, <8 x i1> %i.ast, <8 x float> zeroinitializer) ; 2 uses
  %i.atk = or disjoint i64 %.1224072905, 3
  %i.atl = mul nsw i64 %i.atk, %4
  %i.atm = getelementptr [4 x i8], ptr %i.ass, i64 %i.atl
  %i.atn = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atm, <8 x i1> %i.ast, <8 x float> zeroinitializer) ; 2 uses
  %i.ato = or disjoint i64 %.1224072905, 4
  %i.atp = mul nsw i64 %i.ato, %4
  %i.atq = getelementptr [4 x i8], ptr %i.ass, i64 %i.atp
  %i.atr = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atq, <8 x i1> %i.ast, <8 x float> zeroinitializer) ; 2 uses
  %i.ats = or disjoint i64 %.1224072905, 5
  %i.att = mul nsw i64 %i.ats, %4
  %i.atu = getelementptr [4 x i8], ptr %i.ass, i64 %i.att
  %i.atv = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atu, <8 x i1> %i.ast, <8 x float> zeroinitializer) ; 2 uses
  %i.atw = or disjoint i64 %.1224072905, 6
  %i.atx = mul nsw i64 %i.atw, %4
  %i.aty = getelementptr [4 x i8], ptr %i.ass, i64 %i.atx
  %i.atz = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.aty, <8 x i1> %i.ast, <8 x float> zeroinitializer) ; 2 uses
  %i.aua = or disjoint i64 %.1224072905, 7
  %i.aub = mul nsw i64 %i.aua, %4
  %i.auc = getelementptr [4 x i8], ptr %i.ass, i64 %i.aub
  %i.aud = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.auc, <8 x i1> %i.ast, <8 x float> zeroinitializer) ; 2 uses
  %i.aue = shufflevector <8 x float> %i.atb, <8 x float> %i.atf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.auf = shufflevector <8 x float> %i.atb, <8 x float> %i.atf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aug = shufflevector <8 x float> %i.atj, <8 x float> %i.atn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.auh = shufflevector <8 x float> %i.atj, <8 x float> %i.atn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aui = shufflevector <8 x float> %i.atr, <8 x float> %i.atv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.auj = shufflevector <8 x float> %i.atr, <8 x float> %i.atv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.auk = shufflevector <8 x float> %i.atz, <8 x float> %i.aud, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aul = shufflevector <8 x float> %i.atz, <8 x float> %i.aud, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aum = shufflevector <8 x float> %i.aue, <8 x float> %i.aug, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aun = shufflevector <8 x float> %i.aue, <8 x float> %i.aug, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.auo = shufflevector <8 x float> %i.auf, <8 x float> %i.auh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aup = shufflevector <8 x float> %i.auf, <8 x float> %i.auh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.auq = shufflevector <8 x float> %i.aui, <8 x float> %i.auk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aur = shufflevector <8 x float> %i.aui, <8 x float> %i.auk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aus = shufflevector <8 x float> %i.auj, <8 x float> %i.aul, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aut = shufflevector <8 x float> %i.auj, <8 x float> %i.aul, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.auu = shufflevector <8 x float> %i.aum, <8 x float> %i.auq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.auv = shufflevector <8 x float> %i.aun, <8 x float> %i.aur, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.auw = shufflevector <8 x float> %i.auo, <8 x float> %i.aus, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aux = shufflevector <8 x float> %i.aup, <8 x float> %i.aut, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.auy = shufflevector <8 x float> %i.aum, <8 x float> %i.auq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.auz = shufflevector <8 x float> %i.aun, <8 x float> %i.aur, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ava = shufflevector <8 x float> %i.auo, <8 x float> %i.aus, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  switch i32 %i.agi, label %bb.v [
    i32 8, label %bb.n
    i32 7, label %bb.o
    i32 6, label %bb.p
    i32 5, label %bb.q
    i32 4, label %bb.r
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m
  %i.avb = shufflevector <8 x float> %i.aup, <8 x float> %i.aut, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %gep2910 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2909, i64 %.1224072905
  store <8 x float> %i.avb, ptr %gep2910, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %gep2912 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2911, i64 %.1224072905
  store <8 x float> %i.ava, ptr %gep2912, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %gep2914 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2913, i64 %.1224072905
  store <8 x float> %i.auz, ptr %gep2914, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %gep2916 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2915, i64 %.1224072905
  store <8 x float> %i.auy, ptr %gep2916, align 1, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %gep2918 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2917, i64 %.1224072905
  store <8 x float> %i.aux, ptr %gep2918, align 1, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %gep2920 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2919, i64 %.1224072905
  store <8 x float> %i.auw, ptr %gep2920, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %gep2904 = getelementptr [4 x i8], ptr %invariant.gep2903, i64 %.1224072905
  store <8 x float> %i.auv, ptr %gep2904, align 1, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %.1224072905
  store <8 x float> %i.auu, ptr %i.avc, align 1, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m
  %i.avd = add nuw nsw i64 %.1224072905, 8        ; 4 uses
  %i.ave = icmp samesign ult i64 %i.avd, %i.aso
  br i1 %i.ave, label %bb.m, label %.preheader2651, !llvm.loop !49

iter.check:                                       ; preds = %.preheader2650.preheader, %._crit_edge2923
  %.1324082924 = phi i64 [ %i.avm, %._crit_edge2923 ], [ %i.avd, %.preheader2650.preheader ] ; 3 uses
  %i.avf = mul nsw i64 %.1324082924, %4
  %i.avg = getelementptr [4 x i8], ptr %i.asw, i64 %i.avf ; 9 uses
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %.1324082924 ; 9 uses
  br i1 %i.asy, label %.epil.preheader4151, label %iter.check.new

._crit_edge2923.unr-lcssa:                        ; preds = %iter.check.new
  br i1 %lcmp.mod4154.not, label %._crit_edge2923, label %.epil.preheader4151

.epil.preheader4151:                              ; preds = %._crit_edge2923.unr-lcssa, %iter.check
  %indvars.iv.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next.7, %._crit_edge2923.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4155)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader4151
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader4151 ], [ %indvars.iv.next.epil, %bb.w ] ; 3 uses
  %epil.iter4153 = phi i64 [ 0, %.epil.preheader4151 ], [ %epil.iter4153.next, %bb.w ]
  %i.avi = getelementptr [4 x i8], ptr %i.avg, i64 %indvars.iv.epil
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !50
  %i.avk = mul nuw nsw i64 %2, %indvars.iv.epil
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %i.avk
  store float %i.avj, ptr %i.avl, align 4, !tbaa !50
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter4153.next = add i64 %epil.iter4153, 1 ; 2 uses
  %epil.iter4153.cmp.not = icmp eq i64 %epil.iter4153.next, %xtraiter4152
  br i1 %epil.iter4153.cmp.not, label %._crit_edge2923, label %bb.w, !llvm.loop !52

._crit_edge2923:                                  ; preds = %bb.w, %._crit_edge2923.unr-lcssa
  %i.avm = add nuw nsw i64 %.1324082924, 1        ; 2 uses
  %exitcond3352.not = icmp eq i64 %i.avm, %2
  br i1 %exitcond3352.not, label %._crit_edge2925.split, label %iter.check, !llvm.loop !53

iter.check.new:                                   ; preds = %iter.check, %iter.check.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %iter.check.new ], [ 0, %iter.check ] ; 10 uses
  %niter4157 = phi i64 [ %niter4157.next.7, %iter.check.new ], [ 0, %iter.check ]
  %i.avn = getelementptr [4 x i8], ptr %i.avg, i64 %indvars.iv
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !50
  %i.avp = mul nuw nsw i64 %2, %indvars.iv
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %i.avp
  store float %i.avo, ptr %i.avq, align 4, !tbaa !50
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.avr = getelementptr [4 x i8], ptr %i.avg, i64 %indvars.iv.next
  %i.avs = load float, ptr %i.avr, align 4, !tbaa !50
  %i.avt = mul nuw nsw i64 %2, %indvars.iv.next
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %i.avt
  store float %i.avs, ptr %i.avu, align 4, !tbaa !50
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.avv = getelementptr [4 x i8], ptr %i.avg, i64 %indvars.iv.next.1
  %i.avw = load float, ptr %i.avv, align 4, !tbaa !50
  %i.avx = mul nuw nsw i64 %2, %indvars.iv.next.1
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %i.avx
  store float %i.avw, ptr %i.avy, align 4, !tbaa !50
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.avz = getelementptr [4 x i8], ptr %i.avg, i64 %indvars.iv.next.2
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !50
  %i.awb = mul nuw nsw i64 %2, %indvars.iv.next.2
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %i.awb
  store float %i.awa, ptr %i.awc, align 4, !tbaa !50
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.awd = getelementptr [4 x i8], ptr %i.avg, i64 %indvars.iv.next.3
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !50
  %i.awf = mul nuw nsw i64 %2, %indvars.iv.next.3
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %i.awf
  store float %i.awe, ptr %i.awg, align 4, !tbaa !50
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.awh = getelementptr [4 x i8], ptr %i.avg, i64 %indvars.iv.next.4
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !50
  %i.awj = mul nuw nsw i64 %2, %indvars.iv.next.4
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %i.awj
  store float %i.awi, ptr %i.awk, align 4, !tbaa !50
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.awl = getelementptr [4 x i8], ptr %i.avg, i64 %indvars.iv.next.5
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !50
  %i.awn = mul nuw nsw i64 %2, %indvars.iv.next.5
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %i.awn
  store float %i.awm, ptr %i.awo, align 4, !tbaa !50
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.awp = getelementptr [4 x i8], ptr %i.avg, i64 %indvars.iv.next.6
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !50
  %i.awr = mul nuw nsw i64 %2, %indvars.iv.next.6
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %i.awr
  store float %i.awq, ptr %i.aws, align 4, !tbaa !50
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter4157.next.7 = add i64 %niter4157, 8       ; 2 uses
  %niter4157.ncmp.7 = icmp eq i64 %niter4157.next.7, %unroll_iter4156
  br i1 %niter4157.ncmp.7, label %._crit_edge2923.unr-lcssa, label %iter.check.new, !llvm.loop !54

._crit_edge2925.split:                            ; preds = %._crit_edge2923, %.preheader2650.lr.ph, %.preheader2651
  %i.awt = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.awu = trunc i64 %9 to i32                    ; 3 uses
  %i.awv = mul i32 %i.awu, 3
  %i.aww = shl i32 %i.awu, 1
  %i.awx = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.awu, i64 1
  %i.awy = insertelement <4 x i32> %i.awx, i32 %i.aww, i64 2
  %i.awz = insertelement <4 x i32> %i.awy, i32 %i.awv, i64 3 ; 3 uses
  %i.axa = icmp slt i64 %.2.lcssa, %i.d
  br i1 %i.axa, label %.preheader2649.lr.ph, label %.preheader2643

.preheader2649.lr.ph:                             ; preds = %._crit_edge2925.split
  %i.axb = icmp sgt i64 %1, 3
  %i.axc = and i64 %2, 9223372036854775792        ; 19 uses
  %i.axd = and i64 %2, 15                         ; 2 uses
  %.not2608 = icmp eq i64 %i.axd, 0
  %notmask2609 = shl nsw i64 -1, %i.axd
  %i.axe = trunc nsw i64 %notmask2609 to i16
  %i.axf = xor i16 %i.axe, -1
  %i.axg = bitcast i16 %i.axf to <16 x i1>        ; 8 uses
  %invariant.gep3749 = getelementptr [4 x i8], ptr %6, i64 %i.axc
  %invariant.gep3751 = getelementptr [4 x i8], ptr %6, i64 %i.axc
  %invariant.gep3753 = getelementptr [4 x i8], ptr %6, i64 %i.axc
  %invariant.gep3755 = getelementptr [4 x i8], ptr %6, i64 %i.axc
  %i.axh = and i64 %2, 15                         ; 2 uses
  %.not2606 = icmp eq i64 %i.axh, 0
  %notmask2607 = shl nsw i64 -1, %i.axh
  %i.axi = trunc nsw i64 %notmask2607 to i16
  %i.axj = xor i16 %i.axi, -1
  %i.axk = bitcast i16 %i.axj to <16 x i1>        ; 6 uses
  %invariant.gep3757 = getelementptr [4 x i8], ptr %6, i64 %i.axc
  %invariant.gep3759 = getelementptr [4 x i8], ptr %6, i64 %i.axc
  %i.axl = and i64 %2, 15                         ; 2 uses
  %.not2604 = icmp eq i64 %i.axl, 0
  %notmask2605 = shl nsw i64 -1, %i.axl
  %i.axm = trunc nsw i64 %notmask2605 to i16
  %i.axn = xor i16 %i.axm, -1
  %i.axo = bitcast i16 %i.axn to <16 x i1>        ; 5 uses
  %invariant.gep3761 = getelementptr [4 x i8], ptr %6, i64 %i.axc
  br label %.preheader2649

.preheader2649:                                   ; preds = %.preheader2649.lr.ph, %._crit_edge3013
  %indvars.iv3354 = phi i64 [ 0, %.preheader2649.lr.ph ], [ %indvars.iv.next3355, %._crit_edge3013 ] ; 13 uses
  %.33015 = phi i64 [ %.2.lcssa, %.preheader2649.lr.ph ], [ %i.blm, %._crit_edge3013 ] ; 2 uses
  %invariant.gep2962 = getelementptr [4 x i8], ptr %8, i64 %.33015 ; 7 uses
  br i1 %i.axb, label %.preheader2646.lr.ph, label %.preheader2648

.preheader2646.lr.ph:                             ; preds = %.preheader2649
  %i.axp = mul nuw nsw i64 %2, %indvars.iv3354
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.axp ; 2 uses
  %i.axr = or disjoint i64 %indvars.iv3354, 1
  %i.axs = mul nuw nsw i64 %2, %i.axr
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.axs ; 2 uses
  %i.axu = or disjoint i64 %indvars.iv3354, 2
  %i.axv = mul nuw nsw i64 %2, %i.axu
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.axv ; 2 uses
  %i.axx = or disjoint i64 %indvars.iv3354, 3
  %i.axy = mul nuw nsw i64 %2, %i.axx
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.axy ; 2 uses
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.axq, i64 %i.axc
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %i.axc
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.axw, i64 %i.axc
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %i.axc
  br label %.lr.ph2943

.preheader2643.loopexit:                          ; preds = %._crit_edge3013
  %i.aye = trunc nuw i64 %indvars.iv.next3355 to i32
  br label %.preheader2643

.preheader2643:                                   ; preds = %.preheader2643.loopexit, %._crit_edge2925.split
  %.02523.lcssa = phi i32 [ 0, %._crit_edge2925.split ], [ %i.aye, %.preheader2643.loopexit ] ; 2 uses
  %.3.lcssa = phi i64 [ %.2.lcssa, %._crit_edge2925.split ], [ %i.blm, %.preheader2643.loopexit ] ; 3 uses
  %i.ayf = icmp slt i64 %.3.lcssa, %i.e
  br i1 %i.ayf, label %.preheader2642.lr.ph, label %.preheader2636

.preheader2642.lr.ph:                             ; preds = %.preheader2643
  %i.ayg = icmp sgt i64 %1, 3
  %i.ayh = and i64 %2, 9223372036854775792        ; 13 uses
  %i.ayi = zext i32 %.02523.lcssa to i64
  %i.ayj = and i64 %2, 15                         ; 2 uses
  %.not2602 = icmp eq i64 %i.ayj, 0
  %notmask2603 = shl nsw i64 -1, %i.ayj
  %i.ayk = trunc nsw i64 %notmask2603 to i16
  %i.ayl = xor i16 %i.ayk, -1
end_hunk_0
