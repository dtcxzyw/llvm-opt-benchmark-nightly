Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_small_kernel_nn?download=true
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@sgemm_small_kernel_nn:bb.a
  br i1 %niter4577.ncmp.3, label %._crit_edge3662.loopexit.unr-lcssa, label %.lr.ph3661.new, !llvm.loop !100

._crit_edge3662.loopexit.unr-lcssa:               ; preds = %.lr.ph3661.new
  br i1 %lcmp.mod4572.not, label %._crit_edge3662, label %.epil.preheader4569

.epil.preheader4569:                              ; preds = %._crit_edge3662.loopexit.unr-lcssa, %.lr.ph3661
  %.1029003660.epil.init = phi i64 [ 0, %.lr.ph3661 ], [ %i.aov, %._crit_edge3662.loopexit.unr-lcssa ]
  %.029983659.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3661 ], [ %i.aot, %._crit_edge3662.loopexit.unr-lcssa ]
  %.029993658.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3661 ], [ %i.aou, %._crit_edge3662.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4575)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader4569
  %.1029003660.epil = phi i64 [ %.1029003660.epil.init, %.epil.preheader4569 ], [ %i.apj, %bb.k ] ; 3 uses
  %.029983659.epil = phi <16 x float> [ %.029983659.epil.init, %.epil.preheader4569 ], [ %i.aph, %bb.k ]
  %.029993658.epil = phi <16 x float> [ %.029993658.epil.init, %.epil.preheader4569 ], [ %i.api, %bb.k ]
  %epil.iter4571 = phi i64 [ 0, %.epil.preheader4569 ], [ %epil.iter4571.next, %bb.k ]
  %i.aow = mul nsw i64 %.1029003660.epil, %4
  %gep3657.epil = getelementptr [4 x i8], ptr %invariant.gep3656, i64 %i.aow
  %i.aox = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3657.epil, <16 x i1> %i.ahq, <16 x float> zeroinitializer) ; 2 uses
  %i.aoy = getelementptr [4 x i8], ptr %6, i64 %.1029003660.epil ; 2 uses
  %i.aoz = getelementptr [4 x i8], ptr %i.aoy, i64 %i.amk
  %i.apa = load float, ptr %i.aoz, align 1, !tbaa !8
  %i.apb = insertelement <4 x float> poison, float %i.apa, i64 0
  %i.apc = shufflevector <4 x float> %i.apb, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apd = getelementptr [4 x i8], ptr %i.aoy, i64 %i.amm
  %i.ape = load float, ptr %i.apd, align 1, !tbaa !8
  %i.apf = insertelement <4 x float> poison, float %i.ape, i64 0
  %i.apg = shufflevector <4 x float> %i.apf, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aph = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.apc, <16 x float> %.029983659.epil) ; 2 uses
  %i.api = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.apg, <16 x float> %.029993658.epil) ; 2 uses
  %i.apj = add nuw nsw i64 %.1029003660.epil, 1
  %epil.iter4571.next = add i64 %epil.iter4571, 1 ; 2 uses
  %epil.iter4571.cmp.not = icmp eq i64 %epil.iter4571.next, %xtraiter4570
  br i1 %epil.iter4571.cmp.not, label %._crit_edge3662, label %bb.k, !llvm.loop !101

._crit_edge3662:                                  ; preds = %._crit_edge3662.loopexit.unr-lcssa, %bb.k, %.preheader3133.._crit_edge3662_crit_edge
  %.pre-phi3926 = phi i64 [ %.pre3925, %.preheader3133.._crit_edge3662_crit_edge ], [ %i.aml, %bb.k ], [ %i.aml, %._crit_edge3662.loopexit.unr-lcssa ]
  %.02999.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3133.._crit_edge3662_crit_edge ], [ %i.aou, %._crit_edge3662.loopexit.unr-lcssa ], [ %i.api, %bb.k ]
  %.02998.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3133.._crit_edge3662_crit_edge ], [ %i.aot, %._crit_edge3662.loopexit.unr-lcssa ], [ %i.aph, %bb.k ]
  %i.apk = fmul <16 x float> %i.k, %.02998.lcssa
  %i.apl = mul nsw i64 %.103669, %10
  %gep3666 = getelementptr [4 x i8], ptr %invariant.gep3642, i64 %i.apl ; 2 uses
  %i.apm = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0 {$3}", "=v,r,v,^Yk,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3666, <16 x float> %i.m, i16 %i.agy, <16 x float> %i.apk) #9, !srcloc !102
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.apm, ptr align 1 %gep3666, <16 x i1> %i.ahq)
  %i.apn = fmul <16 x float> %i.k, %.02999.lcssa
  %i.apo = mul nsw i64 %.pre-phi3926, %10
  %gep3668 = getelementptr [4 x i8], ptr %invariant.gep3642, i64 %i.apo ; 2 uses
  %i.app = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0 {$3}", "=v,r,v,^Yk,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3668, <16 x float> %i.m, i16 %i.agy, <16 x float> %i.apn) #9, !srcloc !103
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.app, ptr align 1 %gep3668, <16 x i1> %i.ahq)
  %i.apq = add nuw nsw i64 %.103669, 2            ; 3 uses
  %i.apr = icmp slt i64 %i.apq, %i.i
  br i1 %i.apr, label %.preheader3133, label %.preheader3132, !llvm.loop !104

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge3676
  %.113682 = phi i64 [ %.10.lcssa, %.preheader.lr.ph ], [ %i.ash, %._crit_edge3676 ] ; 3 uses
  br i1 %i.amo, label %.lr.ph3675, label %._crit_edge3676

.lr.ph3675:                                       ; preds = %.preheader
  %i.aps = mul nsw i64 %.113682, %7
  %invariant.gep3678 = getelementptr [4 x i8], ptr %6, i64 %i.aps ; 9 uses
  br i1 %i.amr, label %.epil.preheader4578, label %.lr.ph3675.new

.lr.ph3675.new:                                   ; preds = %.lr.ph3675, %.lr.ph3675.new
  %.1129013674 = phi i64 [ %i.arw, %.lr.ph3675.new ], [ 0, %.lr.ph3675 ] ; 10 uses
  %.030003673 = phi <16 x float> [ %i.arv, %.lr.ph3675.new ], [ zeroinitializer, %.lr.ph3675 ]
  %niter4585 = phi i64 [ %niter4585.next.7, %.lr.ph3675.new ], [ 0, %.lr.ph3675 ]
  %i.apt = mul nsw i64 %.1129013674, %4
  %gep3672 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.apt
  %i.apu = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %.1129013674
  %i.apv = load float, ptr %gep3679, align 1, !tbaa !8
  %i.apw = insertelement <4 x float> poison, float %i.apv, i64 0
  %i.apx = shufflevector <4 x float> %i.apw, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apu, <16 x float> %i.apx, <16 x float> %.030003673)
  %i.apz = or disjoint i64 %.1129013674, 1        ; 2 uses
  %i.aqa = mul nsw i64 %i.apz, %4
  %gep3672.1 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.aqa
  %i.aqb = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.1, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.1 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.apz
  %i.aqc = load float, ptr %gep3679.1, align 1, !tbaa !8
  %i.aqd = insertelement <4 x float> poison, float %i.aqc, i64 0
  %i.aqe = shufflevector <4 x float> %i.aqd, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqb, <16 x float> %i.aqe, <16 x float> %i.apy)
  %i.aqg = or disjoint i64 %.1129013674, 2        ; 2 uses
  %i.aqh = mul nsw i64 %i.aqg, %4
  %gep3672.2 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.aqh
  %i.aqi = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.2, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.2 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.aqg
  %i.aqj = load float, ptr %gep3679.2, align 1, !tbaa !8
  %i.aqk = insertelement <4 x float> poison, float %i.aqj, i64 0
  %i.aql = shufflevector <4 x float> %i.aqk, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqm = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqi, <16 x float> %i.aql, <16 x float> %i.aqf)
  %i.aqn = or disjoint i64 %.1129013674, 3        ; 2 uses
  %i.aqo = mul nsw i64 %i.aqn, %4
  %gep3672.3 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.aqo
  %i.aqp = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.3, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.3 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.aqn
  %i.aqq = load float, ptr %gep3679.3, align 1, !tbaa !8
  %i.aqr = insertelement <4 x float> poison, float %i.aqq, i64 0
  %i.aqs = shufflevector <4 x float> %i.aqr, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqt = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqp, <16 x float> %i.aqs, <16 x float> %i.aqm)
  %i.aqu = or disjoint i64 %.1129013674, 4        ; 2 uses
  %i.aqv = mul nsw i64 %i.aqu, %4
  %gep3672.4 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.aqv
  %i.aqw = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.4, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.4 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.aqu
  %i.aqx = load float, ptr %gep3679.4, align 1, !tbaa !8
  %i.aqy = insertelement <4 x float> poison, float %i.aqx, i64 0
  %i.aqz = shufflevector <4 x float> %i.aqy, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ara = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqw, <16 x float> %i.aqz, <16 x float> %i.aqt)
  %i.arb = or disjoint i64 %.1129013674, 5        ; 2 uses
  %i.arc = mul nsw i64 %i.arb, %4
  %gep3672.5 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.arc
  %i.ard = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.5, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.5 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.arb
  %i.are = load float, ptr %gep3679.5, align 1, !tbaa !8
  %i.arf = insertelement <4 x float> poison, float %i.are, i64 0
  %i.arg = shufflevector <4 x float> %i.arf, <4 x float> poison, <16 x i32> zeroinitializer
  %i.arh = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ard, <16 x float> %i.arg, <16 x float> %i.ara)
  %i.ari = or disjoint i64 %.1129013674, 6        ; 2 uses
  %i.arj = mul nsw i64 %i.ari, %4
  %gep3672.6 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.arj
  %i.ark = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.6, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.6 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.ari
  %i.arl = load float, ptr %gep3679.6, align 1, !tbaa !8
  %i.arm = insertelement <4 x float> poison, float %i.arl, i64 0
  %i.arn = shufflevector <4 x float> %i.arm, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aro = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ark, <16 x float> %i.arn, <16 x float> %i.arh)
  %i.arp = or disjoint i64 %.1129013674, 7        ; 2 uses
  %i.arq = mul nsw i64 %i.arp, %4
  %gep3672.7 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.arq
  %i.arr = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.7, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.7 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.arp
  %i.ars = load float, ptr %gep3679.7, align 1, !tbaa !8
  %i.art = insertelement <4 x float> poison, float %i.ars, i64 0
  %i.aru = shufflevector <4 x float> %i.art, <4 x float> poison, <16 x i32> zeroinitializer
  %i.arv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.arr, <16 x float> %i.aru, <16 x float> %i.aro) ; 3 uses
  %i.arw = add nuw nsw i64 %.1129013674, 8        ; 2 uses
  %niter4585.next.7 = add nuw nsw i64 %niter4585, 8 ; 2 uses
  %niter4585.ncmp.7 = icmp eq i64 %niter4585.next.7, %unroll_iter4584
  br i1 %niter4585.ncmp.7, label %._crit_edge3676.loopexit.unr-lcssa, label %.lr.ph3675.new, !llvm.loop !105

._crit_edge3676.loopexit.unr-lcssa:               ; preds = %.lr.ph3675.new
  br i1 %lcmp.mod4581.not, label %._crit_edge3676, label %.epil.preheader4578

.epil.preheader4578:                              ; preds = %._crit_edge3676.loopexit.unr-lcssa, %.lr.ph3675
  %.1129013674.epil.init = phi i64 [ 0, %.lr.ph3675 ], [ %i.arw, %._crit_edge3676.loopexit.unr-lcssa ]
  %.030003673.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3675 ], [ %i.arv, %._crit_edge3676.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4583)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader4578
  %.1129013674.epil = phi i64 [ %.1129013674.epil.init, %.epil.preheader4578 ], [ %i.asd, %bb.l ] ; 3 uses
  %.030003673.epil = phi <16 x float> [ %.030003673.epil.init, %.epil.preheader4578 ], [ %i.asc, %bb.l ]
  %epil.iter4580 = phi i64 [ 0, %.epil.preheader4578 ], [ %epil.iter4580.next, %bb.l ]
  %i.arx = mul nsw i64 %.1129013674.epil, %4
  %gep3672.epil = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.arx
  %i.ary = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.epil, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.epil = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %.1129013674.epil
  %i.arz = load float, ptr %gep3679.epil, align 1, !tbaa !8
  %i.asa = insertelement <4 x float> poison, float %i.arz, i64 0
  %i.asb = shufflevector <4 x float> %i.asa, <4 x float> poison, <16 x i32> zeroinitializer
  %i.asc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ary, <16 x float> %i.asb, <16 x float> %.030003673.epil) ; 2 uses
  %i.asd = add nuw nsw i64 %.1129013674.epil, 1
  %epil.iter4580.next = add i64 %epil.iter4580, 1 ; 2 uses
  %epil.iter4580.cmp.not = icmp eq i64 %epil.iter4580.next, %xtraiter4579
  br i1 %epil.iter4580.cmp.not, label %._crit_edge3676, label %bb.l, !llvm.loop !106

._crit_edge3676:                                  ; preds = %._crit_edge3676.loopexit.unr-lcssa, %bb.l, %.preheader
  %.03000.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %i.arv, %._crit_edge3676.loopexit.unr-lcssa ], [ %i.asc, %bb.l ]
  %i.ase = fmul <16 x float> %i.k, %.03000.lcssa
  %i.asf = mul nsw i64 %.113682, %10
  %gep3681 = getelementptr [4 x i8], ptr %invariant.gep3642, i64 %i.asf ; 2 uses
  %i.asg = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0 {$3}", "=v,r,v,^Yk,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3681, <16 x float> %i.m, i16 %i.agy, <16 x float> %i.ase) #9, !srcloc !107
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.asg, ptr align 1 %gep3681, <16 x i1> %i.amp)
  %i.ash = add i64 %.113682, 1                    ; 2 uses
  %exitcond3868.not = icmp eq i64 %i.ash, %1
  br i1 %exitcond3868.not, label %.loopexit, label %.preheader, !llvm.loop !108

.lr.ph3413:                                       ; preds = %bb.i
  %sext = shl i64 %i.ags, 32
  %i.asi = ashr exact i64 %sext, 30
  %i.asj = mul i64 %i.asi, %2
  %i.ask = tail call noalias ptr @malloc(i64 noundef %i.asj) #10 ; 31 uses
  %i.asl = and i64 %2, 9223372036854775792        ; 9 uses
  %i.asm = and i64 %2, 9223372036854775800
  %invariant.gep3409 = getelementptr [4 x i8], ptr %i.ask, i64 %2
  %i.asn = and i64 %i.ags, 4294967295
  %notmask = shl nsw i64 -1, %i.asn
  %i.aso = trunc i64 %notmask to i8
  %i.asp = xor i8 %i.aso, -1
  %i.asq = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa ; 8 uses
  %i.asr = bitcast i8 %i.asp to <8 x i1>          ; 8 uses
  %.idx = mul nuw nsw i64 %2, 28
  %invariant.gep3415 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx
  %.idx3105 = mul nuw nsw i64 %2, 24
  %invariant.gep3417 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx3105
  %.idx3106 = mul nuw nsw i64 %2, 20
  %invariant.gep3419 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx3106
  %.idx3107 = shl nuw nsw i64 %2, 4
  %invariant.gep3421 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx3107
  %.idx3108 = mul nuw nsw i64 %2, 12
  %invariant.gep3423 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx3108
  %.idx3109 = shl nuw nsw i64 %2, 3
  %invariant.gep3425 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx3109
  br label %bb.m

.preheader3157:                                   ; preds = %bb.v
  %i.ass = icmp slt i64 %i.avb, %2
  br i1 %i.ass, label %.preheader3156.lr.ph, label %._crit_edge3431.split

.preheader3156.lr.ph:                             ; preds = %.preheader3157
  %i.ast = icmp sgt i32 %i.agt, 0
  %i.asu = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa
  br i1 %i.ast, label %.preheader3156.preheader, label %._crit_edge3431.split

.preheader3156.preheader:                         ; preds = %.preheader3156.lr.ph
  %wide.trip.count = and i64 %i.ags, 2147483647
  %i.asv = add nsw i64 %wide.trip.count, -1
  %xtraiter4550 = and i64 %i.ags, 7               ; 3 uses
  %i.asw = icmp ult i64 %i.asv, 7
  %unroll_iter4554 = and i64 %i.ags, 2147483640
  %lcmp.mod4552.not = icmp eq i64 %xtraiter4550, 0
  %lcmp.mod4553 = icmp ne i64 %xtraiter4550, 0
  br label %iter.check

bb.m:                                             ; preds = %.lr.ph3413, %bb.v
  %.1229023411 = phi i64 [ 0, %.lr.ph3413 ], [ %i.avb, %bb.v ] ; 17 uses
  %i.asx = mul nsw i64 %.1229023411, %4
  %i.asy = getelementptr [4 x i8], ptr %i.asq, i64 %i.asx
  %i.asz = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.asy, <8 x i1> %i.asr, <8 x float> zeroinitializer) ; 2 uses
  %i.ata = or disjoint i64 %.1229023411, 1
  %i.atb = mul nsw i64 %i.ata, %4
  %i.atc = getelementptr [4 x i8], ptr %i.asq, i64 %i.atb
  %i.atd = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atc, <8 x i1> %i.asr, <8 x float> zeroinitializer) ; 2 uses
  %i.ate = or disjoint i64 %.1229023411, 2
  %i.atf = mul nsw i64 %i.ate, %4
  %i.atg = getelementptr [4 x i8], ptr %i.asq, i64 %i.atf
  %i.ath = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atg, <8 x i1> %i.asr, <8 x float> zeroinitializer) ; 2 uses
  %i.ati = or disjoint i64 %.1229023411, 3
  %i.atj = mul nsw i64 %i.ati, %4
  %i.atk = getelementptr [4 x i8], ptr %i.asq, i64 %i.atj
  %i.atl = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atk, <8 x i1> %i.asr, <8 x float> zeroinitializer) ; 2 uses
  %i.atm = or disjoint i64 %.1229023411, 4
  %i.atn = mul nsw i64 %i.atm, %4
  %i.ato = getelementptr [4 x i8], ptr %i.asq, i64 %i.atn
  %i.atp = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ato, <8 x i1> %i.asr, <8 x float> zeroinitializer) ; 2 uses
  %i.atq = or disjoint i64 %.1229023411, 5
  %i.atr = mul nsw i64 %i.atq, %4
  %i.ats = getelementptr [4 x i8], ptr %i.asq, i64 %i.atr
  %i.att = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ats, <8 x i1> %i.asr, <8 x float> zeroinitializer) ; 2 uses
  %i.atu = or disjoint i64 %.1229023411, 6
  %i.atv = mul nsw i64 %i.atu, %4
  %i.atw = getelementptr [4 x i8], ptr %i.asq, i64 %i.atv
  %i.atx = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atw, <8 x i1> %i.asr, <8 x float> zeroinitializer) ; 2 uses
  %i.aty = or disjoint i64 %.1229023411, 7
  %i.atz = mul nsw i64 %i.aty, %4
  %i.aua = getelementptr [4 x i8], ptr %i.asq, i64 %i.atz
  %i.aub = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.aua, <8 x i1> %i.asr, <8 x float> zeroinitializer) ; 2 uses
  %i.auc = shufflevector <8 x float> %i.asz, <8 x float> %i.atd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aud = shufflevector <8 x float> %i.asz, <8 x float> %i.atd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aue = shufflevector <8 x float> %i.ath, <8 x float> %i.atl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.auf = shufflevector <8 x float> %i.ath, <8 x float> %i.atl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aug = shufflevector <8 x float> %i.atp, <8 x float> %i.att, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.auh = shufflevector <8 x float> %i.atp, <8 x float> %i.att, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aui = shufflevector <8 x float> %i.atx, <8 x float> %i.aub, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.auj = shufflevector <8 x float> %i.atx, <8 x float> %i.aub, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.auk = shufflevector <8 x float> %i.auc, <8 x float> %i.aue, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aul = shufflevector <8 x float> %i.auc, <8 x float> %i.aue, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aum = shufflevector <8 x float> %i.aud, <8 x float> %i.auf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aun = shufflevector <8 x float> %i.aud, <8 x float> %i.auf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.auo = shufflevector <8 x float> %i.aug, <8 x float> %i.aui, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aup = shufflevector <8 x float> %i.aug, <8 x float> %i.aui, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.auq = shufflevector <8 x float> %i.auh, <8 x float> %i.auj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aur = shufflevector <8 x float> %i.auh, <8 x float> %i.auj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aus = shufflevector <8 x float> %i.auk, <8 x float> %i.auo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aut = shufflevector <8 x float> %i.aul, <8 x float> %i.aup, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.auu = shufflevector <8 x float> %i.aum, <8 x float> %i.auq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.auv = shufflevector <8 x float> %i.aun, <8 x float> %i.aur, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.auw = shufflevector <8 x float> %i.auk, <8 x float> %i.auo, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aux = shufflevector <8 x float> %i.aul, <8 x float> %i.aup, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.auy = shufflevector <8 x float> %i.aum, <8 x float> %i.auq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  switch i32 %i.agt, label %bb.v [
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
  %i.auz = shufflevector <8 x float> %i.aun, <8 x float> %i.aur, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %gep3416 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3415, i64 %.1229023411
  store <8 x float> %i.auz, ptr %gep3416, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %gep3418 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3417, i64 %.1229023411
  store <8 x float> %i.auy, ptr %gep3418, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %gep3420 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3419, i64 %.1229023411
  store <8 x float> %i.aux, ptr %gep3420, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %gep3422 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3421, i64 %.1229023411
  store <8 x float> %i.auw, ptr %gep3422, align 1, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %gep3424 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3423, i64 %.1229023411
  store <8 x float> %i.auv, ptr %gep3424, align 1, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %gep3426 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3425, i64 %.1229023411
  store <8 x float> %i.auu, ptr %gep3426, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %gep3410 = getelementptr [4 x i8], ptr %invariant.gep3409, i64 %.1229023411
  store <8 x float> %i.aut, ptr %gep3410, align 1, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %.1229023411
  store <8 x float> %i.aus, ptr %i.ava, align 1, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m
  %i.avb = add nuw nsw i64 %.1229023411, 8        ; 4 uses
  %i.avc = icmp samesign ult i64 %i.avb, %i.asm
  br i1 %i.avc, label %bb.m, label %.preheader3157, !llvm.loop !109

iter.check:                                       ; preds = %.preheader3156.preheader, %._crit_edge3429
  %.1329033430 = phi i64 [ %i.avk, %._crit_edge3429 ], [ %i.avb, %.preheader3156.preheader ] ; 3 uses
  %i.avd = mul nsw i64 %.1329033430, %4
  %i.ave = getelementptr [4 x i8], ptr %i.asu, i64 %i.avd ; 9 uses
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %.1329033430 ; 9 uses
  br i1 %i.asw, label %.epil.preheader4549, label %iter.check.new

._crit_edge3429.unr-lcssa:                        ; preds = %iter.check.new
  br i1 %lcmp.mod4552.not, label %._crit_edge3429, label %.epil.preheader4549

.epil.preheader4549:                              ; preds = %._crit_edge3429.unr-lcssa, %iter.check
  %indvars.iv.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next.7, %._crit_edge3429.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4553)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader4549
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader4549 ], [ %indvars.iv.next.epil, %bb.w ] ; 3 uses
  %epil.iter4551 = phi i64 [ 0, %.epil.preheader4549 ], [ %epil.iter4551.next, %bb.w ]
  %i.avg = getelementptr [4 x i8], ptr %i.ave, i64 %indvars.iv.epil
  %i.avh = load float, ptr %i.avg, align 4, !tbaa !110
  %i.avi = mul nuw nsw i64 %2, %indvars.iv.epil
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.avi
  store float %i.avh, ptr %i.avj, align 4, !tbaa !110
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter4551.next = add i64 %epil.iter4551, 1 ; 2 uses
  %epil.iter4551.cmp.not = icmp eq i64 %epil.iter4551.next, %xtraiter4550
  br i1 %epil.iter4551.cmp.not, label %._crit_edge3429, label %bb.w, !llvm.loop !112

._crit_edge3429:                                  ; preds = %bb.w, %._crit_edge3429.unr-lcssa
  %i.avk = add nuw nsw i64 %.1329033430, 1        ; 2 uses
  %exitcond3851.not = icmp eq i64 %i.avk, %2
  br i1 %exitcond3851.not, label %._crit_edge3431.split, label %iter.check, !llvm.loop !113

iter.check.new:                                   ; preds = %iter.check, %iter.check.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %iter.check.new ], [ 0, %iter.check ] ; 10 uses
  %niter4555 = phi i64 [ %niter4555.next.7, %iter.check.new ], [ 0, %iter.check ]
  %i.avl = getelementptr [4 x i8], ptr %i.ave, i64 %indvars.iv
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !110
  %i.avn = mul nuw nsw i64 %2, %indvars.iv
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.avn
  store float %i.avm, ptr %i.avo, align 4, !tbaa !110
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.avp = getelementptr [4 x i8], ptr %i.ave, i64 %indvars.iv.next
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !110
  %i.avr = mul nuw nsw i64 %2, %indvars.iv.next
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.avr
  store float %i.avq, ptr %i.avs, align 4, !tbaa !110
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.avt = getelementptr [4 x i8], ptr %i.ave, i64 %indvars.iv.next.1
  %i.avu = load float, ptr %i.avt, align 4, !tbaa !110
  %i.avv = mul nuw nsw i64 %2, %indvars.iv.next.1
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.avv
  store float %i.avu, ptr %i.avw, align 4, !tbaa !110
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.avx = getelementptr [4 x i8], ptr %i.ave, i64 %indvars.iv.next.2
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !110
  %i.avz = mul nuw nsw i64 %2, %indvars.iv.next.2
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.avz
  store float %i.avy, ptr %i.awa, align 4, !tbaa !110
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.awb = getelementptr [4 x i8], ptr %i.ave, i64 %indvars.iv.next.3
  %i.awc = load float, ptr %i.awb, align 4, !tbaa !110
  %i.awd = mul nuw nsw i64 %2, %indvars.iv.next.3
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.awd
  store float %i.awc, ptr %i.awe, align 4, !tbaa !110
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.awf = getelementptr [4 x i8], ptr %i.ave, i64 %indvars.iv.next.4
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !110
  %i.awh = mul nuw nsw i64 %2, %indvars.iv.next.4
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.awh
  store float %i.awg, ptr %i.awi, align 4, !tbaa !110
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.awj = getelementptr [4 x i8], ptr %i.ave, i64 %indvars.iv.next.5
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !110
  %i.awl = mul nuw nsw i64 %2, %indvars.iv.next.5
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.awl
  store float %i.awk, ptr %i.awm, align 4, !tbaa !110
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.awn = getelementptr [4 x i8], ptr %i.ave, i64 %indvars.iv.next.6
  %i.awo = load float, ptr %i.awn, align 4, !tbaa !110
  %i.awp = mul nuw nsw i64 %2, %indvars.iv.next.6
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.awp
  store float %i.awo, ptr %i.awq, align 4, !tbaa !110
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter4555.next.7 = add i64 %niter4555, 8       ; 2 uses
  %niter4555.ncmp.7 = icmp eq i64 %niter4555.next.7, %unroll_iter4554
  br i1 %niter4555.ncmp.7, label %._crit_edge3429.unr-lcssa, label %iter.check.new, !llvm.loop !114

._crit_edge3431.split:                            ; preds = %._crit_edge3429, %.preheader3156.lr.ph, %.preheader3157
  %i.awr = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.aws = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.awt = trunc i64 %10 to i32                   ; 3 uses
  %i.awu = mul i32 %i.awt, 3
  %i.awv = shl i32 %i.awt, 1
  %i.aww = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.awt, i64 1
  %i.awx = insertelement <4 x i32> %i.aww, i32 %i.awv, i64 2
  %i.awy = insertelement <4 x i32> %i.awx, i32 %i.awu, i64 3 ; 6 uses
  %i.awz = icmp slt i64 %.2.lcssa, %i.d
  br i1 %i.awz, label %.preheader3155.lr.ph, label %.preheader3149

.preheader3155.lr.ph:                             ; preds = %._crit_edge3431.split
  %i.axa = icmp sgt i64 %1, 3
  %i.axb = and i64 %2, 9223372036854775792        ; 19 uses
  %i.axc = and i64 %2, 15                         ; 2 uses
  %.not3103 = icmp eq i64 %i.axc, 0
  %notmask3104 = shl nsw i64 -1, %i.axc
  %i.axd = trunc nsw i64 %notmask3104 to i16
  %i.axe = xor i16 %i.axd, -1
  %i.axf = bitcast i16 %i.axe to <16 x i1>        ; 8 uses
  %invariant.gep4163 = getelementptr [4 x i8], ptr %6, i64 %i.axb
  %invariant.gep4165 = getelementptr [4 x i8], ptr %6, i64 %i.axb
  %invariant.gep4167 = getelementptr [4 x i8], ptr %6, i64 %i.axb
  %invariant.gep4169 = getelementptr [4 x i8], ptr %6, i64 %i.axb
  %i.axg = and i64 %2, 15                         ; 2 uses
  %.not3101 = icmp eq i64 %i.axg, 0
  %notmask3102 = shl nsw i64 -1, %i.axg
  %i.axh = trunc nsw i64 %notmask3102 to i16
  %i.axi = xor i16 %i.axh, -1
  %i.axj = bitcast i16 %i.axi to <16 x i1>        ; 6 uses
  %invariant.gep4171 = getelementptr [4 x i8], ptr %6, i64 %i.axb
  %invariant.gep4173 = getelementptr [4 x i8], ptr %6, i64 %i.axb
  %i.axk = and i64 %2, 15                         ; 2 uses
  %.not3099 = icmp eq i64 %i.axk, 0
  %notmask3100 = shl nsw i64 -1, %i.axk
  %i.axl = trunc nsw i64 %notmask3100 to i16
  %i.axm = xor i16 %i.axl, -1
  %i.axn = bitcast i16 %i.axm to <16 x i1>        ; 5 uses
  %invariant.gep4175 = getelementptr [4 x i8], ptr %6, i64 %i.axb
  br label %.preheader3155

.preheader3155:                                   ; preds = %.preheader3155.lr.ph, %._crit_edge3519
  %indvars.iv3853 = phi i64 [ 0, %.preheader3155.lr.ph ], [ %indvars.iv.next3854, %._crit_edge3519 ] ; 13 uses
  %.33521 = phi i64 [ %.2.lcssa, %.preheader3155.lr.ph ], [ %i.blw, %._crit_edge3519 ] ; 2 uses
  %invariant.gep3468 = getelementptr [4 x i8], ptr %9, i64 %.33521 ; 7 uses
  br i1 %i.axa, label %.preheader3152.lr.ph, label %.preheader3154

.preheader3152.lr.ph:                             ; preds = %.preheader3155
  %i.axo = mul nuw nsw i64 %2, %indvars.iv3853
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.axo ; 2 uses
  %i.axq = or disjoint i64 %indvars.iv3853, 1
  %i.axr = mul nuw nsw i64 %2, %i.axq
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.axr ; 2 uses
  %i.axt = or disjoint i64 %indvars.iv3853, 2
  %i.axu = mul nuw nsw i64 %2, %i.axt
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.axu ; 2 uses
  %i.axw = or disjoint i64 %indvars.iv3853, 3
  %i.axx = mul nuw nsw i64 %2, %i.axw
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.axx ; 2 uses
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.axp, i64 %i.axb
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.axb
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %i.axb
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %i.axb
  br label %.lr.ph3449

.preheader3149.loopexit:                          ; preds = %._crit_edge3519
  %i.ayd = trunc nuw i64 %indvars.iv.next3854 to i32
  br label %.preheader3149

.preheader3149:                                   ; preds = %.preheader3149.loopexit, %._crit_edge3431.split
  %.03018.lcssa = phi i32 [ 0, %._crit_edge3431.split ], [ %i.ayd, %.preheader3149.loopexit ] ; 2 uses
  %.3.lcssa = phi i64 [ %.2.lcssa, %._crit_edge3431.split ], [ %i.blw, %.preheader3149.loopexit ] ; 3 uses
  %i.aye = icmp slt i64 %.3.lcssa, %i.e
  br i1 %i.aye, label %.preheader3148.lr.ph, label %.preheader3142

.preheader3148.lr.ph:                             ; preds = %.preheader3149
  %i.ayf = icmp sgt i64 %1, 3
  %i.ayg = and i64 %2, 9223372036854775792        ; 13 uses
  %i.ayh = zext i32 %.03018.lcssa to i64
  %i.ayi = and i64 %2, 15                         ; 2 uses
  %.not3097 = icmp eq i64 %i.ayi, 0
  %notmask3098 = shl nsw i64 -1, %i.ayi
  %i.ayj = trunc nsw i64 %notmask3098 to i16
end_hunk_0
