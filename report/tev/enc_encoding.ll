Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_encoding?download=true
inline.NumInlined: 3193
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3jxl15ModularCompressERKNS_5ImageERKNS_14ModularOptionsEmRKNSt3__16vectorINS_20PropertyDecisionNodeENS6_9allocatorIS8_EEEERNS_11GroupHeaderERNS7_INS_5TokenENS9_ISG_EEEEPm:bb.a
  %i.agy = icmp eq i64 %index.next312, %n.vec309
  br i1 %i.agy, label %middle.block313, label %vector.body310, !llvm.loop !599

middle.block313:                                  ; preds = %vector.body310
  br i1 %cmp.n314, label %._crit_edge.us.i378.2.i, label %scalar.ph306.preheader

scalar.ph306.preheader:                           ; preds = %.lr.ph.us.i374.2.i, %middle.block313
  %.011.us.i376.2.i.ph = phi i64 [ 0, %.lr.ph.us.i374.2.i ], [ %n.vec309, %middle.block313 ]
  br label %scalar.ph306

scalar.ph306:                                     ; preds = %scalar.ph306.preheader, %scalar.ph306
  %.011.us.i376.2.i = phi i64 [ %i.aha, %scalar.ph306 ], [ %.011.us.i376.2.i.ph, %scalar.ph306.preheader ] ; 2 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %.011.us.i376.2.i
  store float 2.550000e+02, ptr %i.agz, align 4, !tbaa !121
  %i.aha = add nuw nsw i64 %.011.us.i376.2.i, 1   ; 2 uses
  %exitcond.not.i377.2.i = icmp eq i64 %i.aha, %i.agt
  br i1 %exitcond.not.i377.2.i, label %._crit_edge.us.i378.2.i, label %scalar.ph306, !llvm.loop !600

._crit_edge.us.i378.2.i:                          ; preds = %scalar.ph306, %middle.block313
  %i.ahb = add nuw nsw i64 %.01012.us.i375.2.i, 1 ; 2 uses
  %exitcond18.not.i379.2.i = icmp eq i64 %i.ahb, %i.agp
  br i1 %exitcond18.not.i379.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.2.i, label %.lr.ph.us.i374.2.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.2.i: ; preds = %._crit_edge.us.i378.2.i, %.lr.ph14.i372.2.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.ahd = load i64, ptr %i.gu, align 8, !tbaa !98
  %.not727.i = icmp eq i64 %i.ahd, 0
  br i1 %.not727.i, label %.loopexit.i, label %.lr.ph668.i

bb.bd:                                            ; preds = %._crit_edge658.i, %.lr.ph668.i
  %i.ahe = phi i64 [ %.pre854.i, %.lr.ph668.i ], [ %i.aiw, %._crit_edge658.i ]
  %.4666.i = phi ptr [ %.0131, %.lr.ph668.i ], [ %.5.lcssa.i, %._crit_edge658.i ] ; 5 uses
  %.0341665.i = phi i64 [ 0, %.lr.ph668.i ], [ %i.aix, %._crit_edge658.i ] ; 3 uses
  %i.ahf = load ptr, ptr %i.aeq, align 8, !tbaa !141
  %i.ahg = load i64, ptr %i.ahc, align 8, !tbaa !122
  %i.ahh = mul i64 %i.ahg, %.0341665.i
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.ahh ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ahi, i64 64) ]
  %.not728.i = icmp eq i64 %i.ahe, 0
  br i1 %.not728.i, label %._crit_edge658.i, label %.lr.ph657.i

.lr.ph657.i:                                      ; preds = %bb.bd
  %.not607.i = icmp eq i64 %.0341665.i, 0
  %invariant.gep660.i = getelementptr [4 x i8], ptr %i.ahi, i64 %i.aer ; 2 uses
  br i1 %.not607.i, label %.thread584.us.peel.i, label %.thread584.peel.i

.thread584.peel.i:                                ; preds = %.lr.ph657.i
  %i.ahj = load i32, ptr %invariant.gep660.i, align 4, !tbaa !27 ; 2 uses
  %i.ahk = call i32 @llvm.smax.i32(i32 %i.ahj, i32 -8192)
  %i.ahl = call i32 @llvm.smin.i32(i32 %i.ahk, i32 8191)
  %.sroa.speculated.peel.i = sext i32 %i.ahl to i64
  %i.ahm = getelementptr [2 x i8], ptr %i.hn, i64 %.sroa.speculated.peel.i
  %i.ahn = getelementptr i8, ptr %i.ahm, i64 16384
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !29
  %i.ahp = zext i16 %i.aho to i64
  %i.ahq = load i32, ptr %i.ahi, align 64, !tbaa !27
  %i.ahr = sub nsw i32 %i.ahq, %i.ahj             ; 2 uses
  %i.ahs = shl i32 %i.ahr, 1
  %.lobit.i381.peel.i = ashr i32 %i.ahr, 31
  %i.aht = xor i32 %i.ahs, %.lobit.i381.peel.i
  %.sroa.0445.0.insert.ext.peel.i = shl nuw nsw i64 %i.ahp, 1
  %i.ahu = getelementptr inbounds nuw i8, ptr %.4666.i, i64 8 ; 2 uses
  %.sroa.4446.0.insert.ext.peel.i = zext i32 %i.aht to i64
  %.sroa.4446.0.insert.shift.peel.i = shl nuw i64 %.sroa.4446.0.insert.ext.peel.i, 32
  %.sroa.0445.0.insert.insert.peel.i = or disjoint i64 %.sroa.4446.0.insert.shift.peel.i, %.sroa.0445.0.insert.ext.peel.i
  store i64 %.sroa.0445.0.insert.insert.peel.i, ptr %.4666.i, align 4
  %i.ahv = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.ahw = icmp ugt i64 %i.ahv, 1
  br i1 %i.ahw, label %.thread584.i, label %._crit_edge658.i

.thread584.us.peel.i:                             ; preds = %.lr.ph657.i
  %i.ahx = load i16, ptr %i.aes, align 8, !tbaa !29
  %i.ahy = zext i16 %i.ahx to i64
  %i.ahz = load i32, ptr %i.ahi, align 64, !tbaa !27 ; 2 uses
  %i.aia = shl i32 %i.ahz, 1
  %.lobit.i381.us.peel.i = ashr i32 %i.ahz, 31
  %i.aib = xor i32 %i.aia, %.lobit.i381.us.peel.i
  %.sroa.0445.0.insert.ext.us.peel.i = shl nuw nsw i64 %i.ahy, 1
  %i.aic = getelementptr inbounds nuw i8, ptr %.4666.i, i64 8 ; 2 uses
  %.sroa.4446.0.insert.ext.us.peel.i = zext i32 %i.aib to i64
  %.sroa.4446.0.insert.shift.us.peel.i = shl nuw i64 %.sroa.4446.0.insert.ext.us.peel.i, 32
  %.sroa.0445.0.insert.insert.us.peel.i = or disjoint i64 %.sroa.4446.0.insert.shift.us.peel.i, %.sroa.0445.0.insert.ext.us.peel.i
  store i64 %.sroa.0445.0.insert.insert.us.peel.i, ptr %.4666.i, align 4
  %i.aid = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.aie = icmp ugt i64 %i.aid, 1
  br i1 %i.aie, label %.thread584.us.i, label %._crit_edge658.i

.thread584.us.i:                                  ; preds = %.thread584.us.peel.i, %.thread584.us.i
  %.5655.us.i = phi ptr [ %i.ais, %.thread584.us.i ], [ %i.aic, %.thread584.us.peel.i ] ; 2 uses
  %.0340654.us.i = phi i64 [ %i.ait, %.thread584.us.i ], [ 1, %.thread584.us.peel.i ] ; 2 uses
  %i.aif = getelementptr [4 x i8], ptr %i.ahi, i64 %.0340654.us.i ; 2 uses
  %i.aig = getelementptr i8, ptr %i.aif, i64 -4
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !27 ; 2 uses
  %i.aii = call i32 @llvm.smax.i32(i32 %i.aih, i32 -8192)
  %i.aij = call i32 @llvm.smin.i32(i32 %i.aii, i32 8191)
  %.sroa.speculated.us.i = sext i32 %i.aij to i64
  %i.aik = getelementptr [2 x i8], ptr %i.hn, i64 %.sroa.speculated.us.i
  %i.ail = getelementptr i8, ptr %i.aik, i64 16384
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !29
  %i.ain = zext i16 %i.aim to i64
  %i.aio = load i32, ptr %i.aif, align 4, !tbaa !27
  %i.aip = sub nsw i32 %i.aio, %i.aih             ; 2 uses
  %i.aiq = shl i32 %i.aip, 1
  %.lobit.i381.us.i = ashr i32 %i.aip, 31
  %i.air = xor i32 %i.aiq, %.lobit.i381.us.i
  %.sroa.0445.0.insert.ext.us.i = shl nuw nsw i64 %i.ain, 1
  %i.ais = getelementptr inbounds nuw i8, ptr %.5655.us.i, i64 8 ; 2 uses
  %.sroa.4446.0.insert.ext.us.i = zext i32 %i.air to i64
  %.sroa.4446.0.insert.shift.us.i = shl nuw i64 %.sroa.4446.0.insert.ext.us.i, 32
  %.sroa.0445.0.insert.insert.us.i = or disjoint i64 %.sroa.4446.0.insert.shift.us.i, %.sroa.0445.0.insert.ext.us.i
  store i64 %.sroa.0445.0.insert.insert.us.i, ptr %.5655.us.i, align 4
  %i.ait = add nuw i64 %.0340654.us.i, 1          ; 2 uses
  %i.aiu = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.aiv = icmp ult i64 %i.ait, %i.aiu
  br i1 %i.aiv, label %.thread584.us.i, label %._crit_edge658.i, !llvm.loop !601

._crit_edge658.i:                                 ; preds = %.thread584.i, %.thread584.us.i, %.thread584.us.peel.i, %.thread584.peel.i, %bb.bd
  %i.aiw = phi i64 [ 0, %bb.bd ], [ %i.aiu, %.thread584.us.i ], [ %i.aid, %.thread584.us.peel.i ], [ %i.ahv, %.thread584.peel.i ], [ %i.akb, %.thread584.i ]
  %.5.lcssa.i = phi ptr [ %.4666.i, %bb.bd ], [ %i.ais, %.thread584.us.i ], [ %i.aic, %.thread584.us.peel.i ], [ %i.ahu, %.thread584.peel.i ], [ %i.ajz, %.thread584.i ] ; 2 uses
  %i.aix = add nuw i64 %.0341665.i, 1             ; 2 uses
  %i.aiy = load i64, ptr %i.gu, align 8, !tbaa !98
  %i.aiz = icmp ult i64 %i.aix, %i.aiy
  br i1 %i.aiz, label %bb.bd, label %.loopexit.i, !llvm.loop !602

.thread584.i:                                     ; preds = %.thread584.peel.i, %.thread584.i
  %.5655.i = phi ptr [ %i.ajz, %.thread584.i ], [ %i.ahu, %.thread584.peel.i ] ; 2 uses
  %.0340654.i = phi i64 [ %i.aka, %.thread584.i ], [ 1, %.thread584.peel.i ] ; 3 uses
  %i.aja = getelementptr [4 x i8], ptr %i.ahi, i64 %.0340654.i ; 2 uses
  %i.ajb = getelementptr i8, ptr %i.aja, i64 -4   ; 2 uses
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.ajb, i64 %i.aer
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !27 ; 4 uses
  %i.aje = sext i32 %i.ajd to i64
  %gep661.i = getelementptr [4 x i8], ptr %invariant.gep660.i, i64 %.0340654.i
  %i.ajf = load i32, ptr %gep661.i, align 4, !tbaa !27 ; 4 uses
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = load i32, ptr %i.ajb, align 4, !tbaa !27 ; 4 uses
  %i.aji = sext i32 %i.ajh to i64
  %.sroa.speculated483.i = call i32 @llvm.smin.i32(i32 %i.ajh, i32 %i.ajf) ; 2 uses
  %.sroa.speculated480.i = call i32 @llvm.smax.i32(i32 %i.ajh, i32 %i.ajf) ; 2 uses
  %i.ajj = sub i32 %i.ajf, %i.ajd
  %i.ajk = add i32 %i.ajj, %i.ajh
  %i.ajl = icmp sgt i32 %.sroa.speculated483.i, %i.ajd
  %i.ajm = select i1 %i.ajl, i32 %.sroa.speculated480.i, i32 %i.ajk
  %i.ajn = icmp slt i32 %.sroa.speculated480.i, %i.ajd
  %i.ajo = select i1 %i.ajn, i32 %.sroa.speculated483.i, i32 %i.ajm
  %i.ajp = sub nsw i64 %i.ajg, %i.aje
  %i.ajq = add nsw i64 %i.ajp, %i.aji
  %.sroa.speculated448.i = call i64 @llvm.smax.i64(i64 %i.ajq, i64 -8192)
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %.sroa.speculated448.i, i64 8191)
  %i.ajr = getelementptr [2 x i8], ptr %i.hn, i64 %.sroa.speculated.i
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 16384
  %i.ajt = load i16, ptr %i.ajs, align 2, !tbaa !29
  %i.aju = zext i16 %i.ajt to i64
  %i.ajv = load i32, ptr %i.aja, align 4, !tbaa !27
  %i.ajw = sub nsw i32 %i.ajv, %i.ajo             ; 2 uses
  %i.ajx = shl i32 %i.ajw, 1
  %.lobit.i381.i = ashr i32 %i.ajw, 31
  %i.ajy = xor i32 %i.ajx, %.lobit.i381.i
  %.sroa.0445.0.insert.ext.i = shl nuw nsw i64 %i.aju, 1
  %i.ajz = getelementptr inbounds nuw i8, ptr %.5655.i, i64 8 ; 2 uses
  %.sroa.4446.0.insert.ext.i = zext i32 %i.ajy to i64
  %.sroa.4446.0.insert.shift.i = shl nuw i64 %.sroa.4446.0.insert.ext.i, 32
  %.sroa.0445.0.insert.insert.i = or disjoint i64 %.sroa.4446.0.insert.shift.i, %.sroa.0445.0.insert.ext.i
  store i64 %.sroa.0445.0.insert.insert.i, ptr %.5655.i, align 4
  %i.aka = add nuw i64 %.0340654.i, 1             ; 2 uses
  %i.akb = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.akc = icmp ult i64 %i.aka, %i.akb
  br i1 %i.akc, label %.thread584.i, label %._crit_edge658.i, !llvm.loop !603

bb.be:                                            ; preds = %bb.bc
  switch i32 %i.yv, label %..thread.i_crit_edge [
    i32 0, label %bb.bf
    i32 6, label %.thread591.i
  ]

..thread.i_crit_edge:                             ; preds = %bb.be
  %.phi.trans.insert172 = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %.pre173 = load i32, ptr %.phi.trans.insert172, align 4, !tbaa !79
  br label %.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.akd = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !79 ; 2 uses
  %i.akf = icmp eq i32 %i.ake, 1
  br i1 %i.akf, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.akg = getelementptr inbounds nuw i8, ptr %i.yp, i64 20
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !79
  %i.aki = icmp ne i32 %i.akh, 0
  %or.cond18.i = or i1 %i.aki, %i.gn
  br i1 %or.cond18.i, label %.thread.i, label %.preheader612.preheader.i

.preheader612.preheader.i:                        ; preds = %bb.bg
  %i.akj = load i32, ptr %i.do, align 4, !tbaa !200 ; 3 uses
  %i.akk = zext i32 %i.akj to i64                 ; 2 uses
  %.not.i382.i = icmp eq i32 %i.akj, 0
  br i1 %.not.i382.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i, label %.lr.ph14.i383.i

.lr.ph679.i:                                      ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i
  %i.akl = getelementptr inbounds nuw i8, ptr %i.gp, i64 40 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %.pre856.i = load ptr, ptr %i.akl, align 8, !tbaa !141
  %.pre858.i = load i64, ptr %i.akm, align 8, !tbaa !122
  %.pre855.i.a = load i64, ptr %i.gs, align 8, !tbaa !97
  br label %bb.bh

.lr.ph14.i383.i:                                  ; preds = %.preheader612.preheader.i
  %i.akn = load ptr, ptr %i.dp, align 8, !tbaa !141 ; 9 uses
  %i.ako = load i64, ptr %i.dq, align 8, !tbaa !122 ; 9 uses
  %i.akp = load i32, ptr %7, align 8, !tbaa !201  ; 2 uses
  %.not16.i384.i = icmp eq i32 %i.akp, 0
  br i1 %.not16.i384.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i, label %.lr.ph.us.i385.i.preheader

.lr.ph.us.i385.i.preheader:                       ; preds = %.lr.ph14.i383.i
  %i.akq = zext i32 %i.akp to i64
  %i.akr = shl nuw nsw i64 %i.akq, 2              ; 9 uses
  %xtraiter441 = and i64 %i.akk, 7                ; 3 uses
  %i.aks = icmp ult i32 %i.akj, 8
  br i1 %i.aks, label %.lr.ph.us.i385.i.epil.preheader, label %.lr.ph.us.i385.i.preheader.new

.lr.ph.us.i385.i.preheader.new:                   ; preds = %.lr.ph.us.i385.i.preheader
  %unroll_iter445 = and i64 %i.akk, 4294967288
  br label %.lr.ph.us.i385.i

.lr.ph.us.i385.i:                                 ; preds = %.lr.ph.us.i385.i, %.lr.ph.us.i385.i.preheader.new
  %.01012.us.i386.i = phi i64 [ 0, %.lr.ph.us.i385.i.preheader.new ], [ %i.alq, %.lr.ph.us.i385.i ] ; 9 uses
  %niter446 = phi i64 [ 0, %.lr.ph.us.i385.i.preheader.new ], [ %niter446.next.7, %.lr.ph.us.i385.i ]
  %i.akt = mul i64 %.01012.us.i386.i, %i.ako
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.akt ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aku, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aku, i8 0, i64 %i.akr, i1 false), !tbaa !121
  %i.akv = or disjoint i64 %.01012.us.i386.i, 1
  %i.akw = mul i64 %i.akv, %i.ako
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.akw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.akx, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.akx, i8 0, i64 %i.akr, i1 false), !tbaa !121
  %i.aky = or disjoint i64 %.01012.us.i386.i, 2
  %i.akz = mul i64 %i.aky, %i.ako
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.akz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ala, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.ala, i8 0, i64 %i.akr, i1 false), !tbaa !121
  %i.alb = or disjoint i64 %.01012.us.i386.i, 3
  %i.alc = mul i64 %i.alb, %i.ako
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.alc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ald, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.ald, i8 0, i64 %i.akr, i1 false), !tbaa !121
  %i.ale = or disjoint i64 %.01012.us.i386.i, 4
  %i.alf = mul i64 %i.ale, %i.ako
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.alf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.alg, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.alg, i8 0, i64 %i.akr, i1 false), !tbaa !121
  %i.alh = or disjoint i64 %.01012.us.i386.i, 5
  %i.ali = mul i64 %i.alh, %i.ako
  %i.alj = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.ali ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.alj, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.alj, i8 0, i64 %i.akr, i1 false), !tbaa !121
  %i.alk = or disjoint i64 %.01012.us.i386.i, 6
  %i.all = mul i64 %i.alk, %i.ako
  %i.alm = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.all ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.alm, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.alm, i8 0, i64 %i.akr, i1 false), !tbaa !121
  %i.aln = or disjoint i64 %.01012.us.i386.i, 7
  %i.alo = mul i64 %i.aln, %i.ako
  %i.alp = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.alo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.alp, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.alp, i8 0, i64 %i.akr, i1 false), !tbaa !121
  %i.alq = add nuw nsw i64 %.01012.us.i386.i, 8   ; 2 uses
  %niter446.next.7 = add i64 %niter446, 8         ; 2 uses
  %niter446.ncmp.7 = icmp eq i64 %niter446.next.7, %unroll_iter445
  br i1 %niter446.ncmp.7, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i.loopexit.unr-lcssa, label %.lr.ph.us.i385.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i.loopexit.unr-lcssa: ; preds = %.lr.ph.us.i385.i
  %lcmp.mod443.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod443.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i, label %.lr.ph.us.i385.i.epil.preheader

.lr.ph.us.i385.i.epil.preheader:                  ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i.loopexit.unr-lcssa, %.lr.ph.us.i385.i.preheader
  %.01012.us.i386.i.epil.init = phi i64 [ 0, %.lr.ph.us.i385.i.preheader ], [ %i.alq, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i.loopexit.unr-lcssa ]
  %lcmp.mod444 = icmp ne i64 %xtraiter441, 0
  call void @llvm.assume(i1 %lcmp.mod444)
  br label %.lr.ph.us.i385.i.epil

.lr.ph.us.i385.i.epil:                            ; preds = %.lr.ph.us.i385.i.epil, %.lr.ph.us.i385.i.epil.preheader
  %.01012.us.i386.i.epil = phi i64 [ %i.alt, %.lr.ph.us.i385.i.epil ], [ %.01012.us.i386.i.epil.init, %.lr.ph.us.i385.i.epil.preheader ] ; 2 uses
  %epil.iter442 = phi i64 [ %epil.iter442.next, %.lr.ph.us.i385.i.epil ], [ 0, %.lr.ph.us.i385.i.epil.preheader ]
  %i.alr = mul i64 %.01012.us.i386.i.epil, %i.ako
  %i.als = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.alr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.als, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.als, i8 0, i64 %i.akr, i1 false), !tbaa !121
  %i.alt = add nuw nsw i64 %.01012.us.i386.i.epil, 1
  %epil.iter442.next = add i64 %epil.iter442, 1   ; 2 uses
  %epil.iter442.cmp.not = icmp eq i64 %epil.iter442.next, %xtraiter441
  br i1 %epil.iter442.cmp.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i, label %.lr.ph.us.i385.i.epil, !llvm.loop !604

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i.loopexit.unr-lcssa, %.lr.ph.us.i385.i.epil, %.lr.ph14.i383.i, %.preheader612.preheader.i
  %i.alu = load i32, ptr %i.dr, align 4, !tbaa !200 ; 3 uses
  %i.alv = zext i32 %i.alu to i64                 ; 2 uses
  %.not.i382.1.i = icmp eq i32 %i.alu, 0
  br i1 %.not.i382.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i, label %.lr.ph14.i383.1.i

.lr.ph14.i383.1.i:                                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i
  %i.alw = load ptr, ptr %i.ds, align 8, !tbaa !141 ; 9 uses
  %i.alx = load i64, ptr %i.dt, align 8, !tbaa !122 ; 9 uses
  %i.aly = load i32, ptr %i.dg, align 8, !tbaa !201 ; 2 uses
  %.not16.i384.1.i = icmp eq i32 %i.aly, 0
  br i1 %.not16.i384.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i, label %.lr.ph.us.i385.1.i.preheader

.lr.ph.us.i385.1.i.preheader:                     ; preds = %.lr.ph14.i383.1.i
  %i.alz = zext i32 %i.aly to i64
  %i.ama = shl nuw nsw i64 %i.alz, 2              ; 9 uses
  %xtraiter447 = and i64 %i.alv, 7                ; 3 uses
  %i.amb = icmp ult i32 %i.alu, 8
  br i1 %i.amb, label %.lr.ph.us.i385.1.i.epil.preheader, label %.lr.ph.us.i385.1.i.preheader.new

.lr.ph.us.i385.1.i.preheader.new:                 ; preds = %.lr.ph.us.i385.1.i.preheader
  %unroll_iter451 = and i64 %i.alv, 4294967288
  br label %.lr.ph.us.i385.1.i

.lr.ph.us.i385.1.i:                               ; preds = %.lr.ph.us.i385.1.i, %.lr.ph.us.i385.1.i.preheader.new
  %.01012.us.i386.1.i = phi i64 [ 0, %.lr.ph.us.i385.1.i.preheader.new ], [ %i.amz, %.lr.ph.us.i385.1.i ] ; 9 uses
  %niter452 = phi i64 [ 0, %.lr.ph.us.i385.1.i.preheader.new ], [ %niter452.next.7, %.lr.ph.us.i385.1.i ]
  %i.amc = mul i64 %.01012.us.i386.1.i, %i.alx
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.amc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amd, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.amd, i8 0, i64 %i.ama, i1 false), !tbaa !121
  %i.ame = or disjoint i64 %.01012.us.i386.1.i, 1
  %i.amf = mul i64 %i.ame, %i.alx
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.amf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amg, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.amg, i8 0, i64 %i.ama, i1 false), !tbaa !121
  %i.amh = or disjoint i64 %.01012.us.i386.1.i, 2
  %i.ami = mul i64 %i.amh, %i.alx
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.ami ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amj, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.amj, i8 0, i64 %i.ama, i1 false), !tbaa !121
  %i.amk = or disjoint i64 %.01012.us.i386.1.i, 3
  %i.aml = mul i64 %i.amk, %i.alx
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.aml ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amm, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.amm, i8 0, i64 %i.ama, i1 false), !tbaa !121
  %i.amn = or disjoint i64 %.01012.us.i386.1.i, 4
  %i.amo = mul i64 %i.amn, %i.alx
  %i.amp = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.amo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amp, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.amp, i8 0, i64 %i.ama, i1 false), !tbaa !121
  %i.amq = or disjoint i64 %.01012.us.i386.1.i, 5
  %i.amr = mul i64 %i.amq, %i.alx
  %i.ams = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.amr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ams, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.ams, i8 0, i64 %i.ama, i1 false), !tbaa !121
  %i.amt = or disjoint i64 %.01012.us.i386.1.i, 6
  %i.amu = mul i64 %i.amt, %i.alx
  %i.amv = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.amu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amv, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.amv, i8 0, i64 %i.ama, i1 false), !tbaa !121
  %i.amw = or disjoint i64 %.01012.us.i386.1.i, 7
  %i.amx = mul i64 %i.amw, %i.alx
  %i.amy = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.amx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amy, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.amy, i8 0, i64 %i.ama, i1 false), !tbaa !121
  %i.amz = add nuw nsw i64 %.01012.us.i386.1.i, 8 ; 2 uses
  %niter452.next.7 = add i64 %niter452, 8         ; 2 uses
  %niter452.ncmp.7 = icmp eq i64 %niter452.next.7, %unroll_iter451
  br i1 %niter452.ncmp.7, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i.loopexit.unr-lcssa, label %.lr.ph.us.i385.1.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i.loopexit.unr-lcssa: ; preds = %.lr.ph.us.i385.1.i
  %lcmp.mod449.not = icmp eq i64 %xtraiter447, 0
  br i1 %lcmp.mod449.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i, label %.lr.ph.us.i385.1.i.epil.preheader

.lr.ph.us.i385.1.i.epil.preheader:                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i.loopexit.unr-lcssa, %.lr.ph.us.i385.1.i.preheader
  %.01012.us.i386.1.i.epil.init = phi i64 [ 0, %.lr.ph.us.i385.1.i.preheader ], [ %i.amz, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i.loopexit.unr-lcssa ]
  %lcmp.mod450 = icmp ne i64 %xtraiter447, 0
  call void @llvm.assume(i1 %lcmp.mod450)
  br label %.lr.ph.us.i385.1.i.epil

.lr.ph.us.i385.1.i.epil:                          ; preds = %.lr.ph.us.i385.1.i.epil, %.lr.ph.us.i385.1.i.epil.preheader
  %.01012.us.i386.1.i.epil = phi i64 [ %i.anc, %.lr.ph.us.i385.1.i.epil ], [ %.01012.us.i386.1.i.epil.init, %.lr.ph.us.i385.1.i.epil.preheader ] ; 2 uses
  %epil.iter448 = phi i64 [ %epil.iter448.next, %.lr.ph.us.i385.1.i.epil ], [ 0, %.lr.ph.us.i385.1.i.epil.preheader ]
  %i.ana = mul i64 %.01012.us.i386.1.i.epil, %i.alx
  %i.anb = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.ana ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anb, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.anb, i8 0, i64 %i.ama, i1 false), !tbaa !121
  %i.anc = add nuw nsw i64 %.01012.us.i386.1.i.epil, 1
  %epil.iter448.next = add i64 %epil.iter448, 1   ; 2 uses
  %epil.iter448.cmp.not = icmp eq i64 %epil.iter448.next, %xtraiter447
  br i1 %epil.iter448.cmp.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i, label %.lr.ph.us.i385.1.i.epil, !llvm.loop !605

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i.loopexit.unr-lcssa, %.lr.ph.us.i385.1.i.epil, %.lr.ph14.i383.1.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i
  %i.and = load i32, ptr %i.du, align 4, !tbaa !200 ; 3 uses
  %i.ane = zext i32 %i.and to i64                 ; 2 uses
  %.not.i382.2.i = icmp eq i32 %i.and, 0
  br i1 %.not.i382.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i, label %.lr.ph14.i383.2.i

.lr.ph14.i383.2.i:                                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i
  %i.anf = load ptr, ptr %i.dv, align 8, !tbaa !141 ; 9 uses
  %i.ang = load i64, ptr %i.dw, align 8, !tbaa !122 ; 9 uses
  %i.anh = load i32, ptr %i.dj, align 8, !tbaa !201 ; 2 uses
  %.not16.i384.2.i = icmp eq i32 %i.anh, 0
  br i1 %.not16.i384.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i, label %.lr.ph.us.i385.2.i.preheader

.lr.ph.us.i385.2.i.preheader:                     ; preds = %.lr.ph14.i383.2.i
  %i.ani = zext i32 %i.anh to i64
  %i.anj = shl nuw nsw i64 %i.ani, 2              ; 9 uses
  %xtraiter453 = and i64 %i.ane, 7                ; 3 uses
  %i.ank = icmp ult i32 %i.and, 8
  br i1 %i.ank, label %.lr.ph.us.i385.2.i.epil.preheader, label %.lr.ph.us.i385.2.i.preheader.new

.lr.ph.us.i385.2.i.preheader.new:                 ; preds = %.lr.ph.us.i385.2.i.preheader
  %unroll_iter457 = and i64 %i.ane, 4294967288
  br label %.lr.ph.us.i385.2.i

.lr.ph.us.i385.2.i:                               ; preds = %.lr.ph.us.i385.2.i, %.lr.ph.us.i385.2.i.preheader.new
  %.01012.us.i386.2.i = phi i64 [ 0, %.lr.ph.us.i385.2.i.preheader.new ], [ %i.aoi, %.lr.ph.us.i385.2.i ] ; 9 uses
  %niter458 = phi i64 [ 0, %.lr.ph.us.i385.2.i.preheader.new ], [ %niter458.next.7, %.lr.ph.us.i385.2.i ]
  %i.anl = mul i64 %.01012.us.i386.2.i, %i.ang
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.anl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anm, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.anm, i8 0, i64 %i.anj, i1 false), !tbaa !121
  %i.ann = or disjoint i64 %.01012.us.i386.2.i, 1
  %i.ano = mul i64 %i.ann, %i.ang
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.ano ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anp, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.anp, i8 0, i64 %i.anj, i1 false), !tbaa !121
  %i.anq = or disjoint i64 %.01012.us.i386.2.i, 2
  %i.anr = mul i64 %i.anq, %i.ang
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.anr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ans, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.ans, i8 0, i64 %i.anj, i1 false), !tbaa !121
  %i.ant = or disjoint i64 %.01012.us.i386.2.i, 3
  %i.anu = mul i64 %i.ant, %i.ang
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.anu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anv, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.anv, i8 0, i64 %i.anj, i1 false), !tbaa !121
  %i.anw = or disjoint i64 %.01012.us.i386.2.i, 4
  %i.anx = mul i64 %i.anw, %i.ang
  %i.any = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.anx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.any, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.any, i8 0, i64 %i.anj, i1 false), !tbaa !121
  %i.anz = or disjoint i64 %.01012.us.i386.2.i, 5
  %i.aoa = mul i64 %i.anz, %i.ang
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.aoa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aob, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aob, i8 0, i64 %i.anj, i1 false), !tbaa !121
  %i.aoc = or disjoint i64 %.01012.us.i386.2.i, 6
  %i.aod = mul i64 %i.aoc, %i.ang
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.aod ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aoe, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aoe, i8 0, i64 %i.anj, i1 false), !tbaa !121
  %i.aof = or disjoint i64 %.01012.us.i386.2.i, 7
  %i.aog = mul i64 %i.aof, %i.ang
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.aog ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aoh, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aoh, i8 0, i64 %i.anj, i1 false), !tbaa !121
  %i.aoi = add nuw nsw i64 %.01012.us.i386.2.i, 8 ; 2 uses
  %niter458.next.7 = add i64 %niter458, 8         ; 2 uses
  %niter458.ncmp.7 = icmp eq i64 %niter458.next.7, %unroll_iter457
  br i1 %niter458.ncmp.7, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa, label %.lr.ph.us.i385.2.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa: ; preds = %.lr.ph.us.i385.2.i
  %lcmp.mod455.not = icmp eq i64 %xtraiter453, 0
  br i1 %lcmp.mod455.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i, label %.lr.ph.us.i385.2.i.epil.preheader

.lr.ph.us.i385.2.i.epil.preheader:                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa, %.lr.ph.us.i385.2.i.preheader
  %.01012.us.i386.2.i.epil.init = phi i64 [ 0, %.lr.ph.us.i385.2.i.preheader ], [ %i.aoi, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa ]
  %lcmp.mod456 = icmp ne i64 %xtraiter453, 0
  call void @llvm.assume(i1 %lcmp.mod456)
  br label %.lr.ph.us.i385.2.i.epil

.lr.ph.us.i385.2.i.epil:                          ; preds = %.lr.ph.us.i385.2.i.epil, %.lr.ph.us.i385.2.i.epil.preheader
  %.01012.us.i386.2.i.epil = phi i64 [ %i.aol, %.lr.ph.us.i385.2.i.epil ], [ %.01012.us.i386.2.i.epil.init, %.lr.ph.us.i385.2.i.epil.preheader ] ; 2 uses
  %epil.iter454 = phi i64 [ %epil.iter454.next, %.lr.ph.us.i385.2.i.epil ], [ 0, %.lr.ph.us.i385.2.i.epil.preheader ]
  %i.aoj = mul i64 %.01012.us.i386.2.i.epil, %i.ang
  %i.aok = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.aoj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aok, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aok, i8 0, i64 %i.anj, i1 false), !tbaa !121
  %i.aol = add nuw nsw i64 %.01012.us.i386.2.i.epil, 1
  %epil.iter454.next = add i64 %epil.iter454, 1   ; 2 uses
  %epil.iter454.cmp.not = icmp eq i64 %epil.iter454.next, %xtraiter453
  br i1 %epil.iter454.cmp.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i, label %.lr.ph.us.i385.2.i.epil, !llvm.loop !606

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa, %.lr.ph.us.i385.2.i.epil, %.lr.ph14.i383.2.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i
  %i.aom = load i64, ptr %i.gu, align 8, !tbaa !98 ; 2 uses
  %.not729.i = icmp eq i64 %i.aom, 0
  br i1 %.not729.i, label %.loopexit.i, label %.lr.ph679.i

bb.bh:                                            ; preds = %._crit_edge675.i, %.lr.ph679.i
  %i.aon = phi i64 [ %i.aom, %.lr.ph679.i ], [ %i.aor, %._crit_edge675.i ]
  %i.aoo = phi i64 [ %.pre855.i.a, %.lr.ph679.i ], [ %27, %._crit_edge675.i ]
  %25 = phi i64 [ %.pre858.i, %.lr.ph679.i ], [ %i.aos, %._crit_edge675.i ] ; 2 uses
  %26 = phi ptr [ %.pre856.i, %.lr.ph679.i ], [ %28, %._crit_edge675.i ] ; 2 uses
  %.6678.i = phi ptr [ %.0131, %.lr.ph679.i ], [ %.7.lcssa.i, %._crit_edge675.i ] ; 2 uses
  %.0337677.i = phi i64 [ 0, %.lr.ph679.i ], [ %i.aot, %._crit_edge675.i ] ; 2 uses
  %i.aop = mul i64 %.0337677.i, %25
  %i.aoq = getelementptr inbounds nuw i8, ptr %26, i64 %i.aop ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aoq, i64 64) ]
  %.not730.i = icmp eq i64 %i.aoo, 0
  br i1 %.not730.i, label %._crit_edge675.i, label %.lr.ph674.i

._crit_edge675.loopexit.i:                        ; preds = %.lr.ph674.i
  %.pre855.i = load ptr, ptr %i.akl, align 8, !tbaa !141
  %.pre857.i = load i64, ptr %i.akm, align 8, !tbaa !122
  %.pre856.i.a = load i64, ptr %i.gu, align 8, !tbaa !98
  br label %._crit_edge675.i

._crit_edge675.i:                                 ; preds = %._crit_edge675.loopexit.i, %bb.bh
  %i.aor = phi i64 [ %i.aon, %bb.bh ], [ %.pre856.i.a, %._crit_edge675.loopexit.i ] ; 2 uses
  %27 = phi i64 [ 0, %bb.bh ], [ %i.apf, %._crit_edge675.loopexit.i ]
  %i.aos = phi i64 [ %25, %bb.bh ], [ %.pre857.i, %._crit_edge675.loopexit.i ]
  %28 = phi ptr [ %26, %bb.bh ], [ %.pre855.i, %._crit_edge675.loopexit.i ]
  %.7.lcssa.i = phi ptr [ %.6678.i, %bb.bh ], [ %i.apd, %._crit_edge675.loopexit.i ] ; 2 uses
  %i.aot = add nuw i64 %.0337677.i, 1             ; 2 uses
  %i.aou = icmp ult i64 %i.aot, %i.aor
  br i1 %i.aou, label %bb.bh, label %.loopexit.i, !llvm.loop !607

.lr.ph674.i:                                      ; preds = %bb.bh, %.lr.ph674.i
  %.7672.i = phi ptr [ %i.apd, %.lr.ph674.i ], [ %.6678.i, %bb.bh ] ; 2 uses
  %.0336671.i = phi i64 [ %i.ape, %.lr.ph674.i ], [ 0, %bb.bh ] ; 2 uses
  %i.aov = load ptr, ptr %11, align 8, !tbaa !211
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !213
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %.0336671.i
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !27 ; 2 uses
  %i.apa = shl i32 %i.aoz, 1
  %.lobit.i392.i = ashr i32 %i.aoz, 31
  %i.apb = xor i32 %i.apa, %.lobit.i392.i
  %i.apc = shl i32 %i.aox, 1
  %i.apd = getelementptr inbounds nuw i8, ptr %.7672.i, i64 8 ; 2 uses
  %.sroa.4444.0.insert.ext.i = zext i32 %i.apb to i64
  %.sroa.4444.0.insert.shift.i = shl nuw i64 %.sroa.4444.0.insert.ext.i, 32
  %.sroa.0443.0.insert.ext.i = zext i32 %i.apc to i64
  %.sroa.0443.0.insert.insert.i = or disjoint i64 %.sroa.4444.0.insert.shift.i, %.sroa.0443.0.insert.ext.i
  store i64 %.sroa.0443.0.insert.insert.i, ptr %.7672.i, align 4
  %i.ape = add nuw i64 %.0336671.i, 1             ; 2 uses
  %i.apf = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.apg = icmp ult i64 %i.ape, %i.apf
  br i1 %i.apg, label %.lr.ph674.i, label %._crit_edge675.loopexit.i, !llvm.loop !608

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.bg, %bb.bf
  %i.aph = phi i32 [ %.pre173, %..thread.i_crit_edge ], [ 1, %bb.bg ], [ %i.ake, %bb.bf ]
  %i.api = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.apj = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aph)
  %i.apk = icmp samesign ult i32 %i.apj, 2
  br i1 %i.apk, label %bb.bi, label %.thread591.i

bb.bi:                                            ; preds = %.thread.i
  %i.apl = getelementptr inbounds nuw i8, ptr %i.yp, i64 20
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !79
  %i.apn = icmp ne i32 %i.apm, 0
  %or.cond20.i = or i1 %i.apn, %i.gn
  br i1 %or.cond20.i, label %.thread591.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.bi
  %i.apo = icmp ult i32 %i.yv, 14
  br i1 %i.apo, label %switch.lookup393, label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i

.lr.ph691.i:                                      ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.2.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %.pre859.i = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  br label %bb.bj

switch.lookup393:                                 ; preds = %.preheader.preheader.i
  %i.apq = zext nneg i32 %i.yv to i64
  %switch.gep394 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN3jxl15ModularCompressERKNS_5ImageERKNS_14ModularOptionsEmRKNSt3__16vectorINS_20PropertyDecisionNodeENS6_9allocatorIS8_EEEERNS_11GroupHeaderERNS7_INS_5TokenENS9_ISG_EEEEPm.100, i64 %i.apq
  %switch.load395 = load float, ptr %switch.gep394, align 4
  br label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i

_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i: ; preds = %.preheader.preheader.i, %switch.lookup393
  %.sroa.0.0.i.i = phi float [ %switch.load395, %switch.lookup393 ], [ 2.550000e+02, %.preheader.preheader.i ] ; 2 uses
  %i.apr = load i32, ptr %i.do, align 4, !tbaa !200 ; 2 uses
  %i.aps = zext i32 %i.apr to i64
  %.not.i393.i = icmp eq i32 %i.apr, 0
  br i1 %.not.i393.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i, label %.lr.ph14.i394.i

.lr.ph14.i394.i:                                  ; preds = %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i
  %i.apt = load ptr, ptr %i.dp, align 8, !tbaa !141
  %i.apu = load i64, ptr %i.dq, align 8, !tbaa !122
  %i.apv = load i32, ptr %7, align 8, !tbaa !201  ; 3 uses
  %i.apw = zext i32 %i.apv to i64                 ; 3 uses
  %.not16.i395.i = icmp eq i32 %i.apv, 0
  br i1 %.not16.i395.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i, label %.lr.ph.us.i396.i.preheader

.lr.ph.us.i396.i.preheader:                       ; preds = %.lr.ph14.i394.i
  %min.iters.check295 = icmp ult i32 %i.apv, 8
  %n.vec297 = and i64 %i.apw, 4294967288          ; 3 uses
  %broadcast.splatinsert298 = insertelement <4 x float> poison, float %.sroa.0.0.i.i, i64 0
  %broadcast.splat299 = shufflevector <4 x float> %broadcast.splatinsert298, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n304 = icmp eq i64 %n.vec297, %i.apw
  br label %.lr.ph.us.i396.i

.lr.ph.us.i396.i:                                 ; preds = %.lr.ph.us.i396.i.preheader, %._crit_edge.us.i400.i
  %.01012.us.i397.i = phi i64 [ %i.aqe, %._crit_edge.us.i400.i ], [ 0, %.lr.ph.us.i396.i.preheader ] ; 2 uses
  %i.apx = mul i64 %.01012.us.i397.i, %i.apu
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apt, i64 %i.apx ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.apy, i64 64) ]
  br i1 %min.iters.check295, label %scalar.ph294.preheader, label %vector.body300

vector.body300:                                   ; preds = %.lr.ph.us.i396.i, %vector.body300
  %index301 = phi i64 [ %index.next302, %vector.body300 ], [ 0, %.lr.ph.us.i396.i ] ; 2 uses
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %index301 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 16
  store <4 x float> %broadcast.splat299, ptr %i.apz, align 32, !tbaa !121
  store <4 x float> %broadcast.splat299, ptr %i.aqa, align 16, !tbaa !121
  %index.next302 = add nuw i64 %index301, 8       ; 2 uses
  %i.aqb = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.aqb, label %middle.block303, label %vector.body300, !llvm.loop !609

middle.block303:                                  ; preds = %vector.body300
  br i1 %cmp.n304, label %._crit_edge.us.i400.i, label %scalar.ph294.preheader

scalar.ph294.preheader:                           ; preds = %.lr.ph.us.i396.i, %middle.block303
  %.011.us.i398.i.ph = phi i64 [ 0, %.lr.ph.us.i396.i ], [ %n.vec297, %middle.block303 ]
  br label %scalar.ph294

scalar.ph294:                                     ; preds = %scalar.ph294.preheader, %scalar.ph294
  %.011.us.i398.i = phi i64 [ %i.aqd, %scalar.ph294 ], [ %.011.us.i398.i.ph, %scalar.ph294.preheader ] ; 2 uses
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %.011.us.i398.i
  store float %.sroa.0.0.i.i, ptr %i.aqc, align 4, !tbaa !121
  %i.aqd = add nuw nsw i64 %.011.us.i398.i, 1     ; 2 uses
  %exitcond.not.i399.i = icmp eq i64 %i.aqd, %i.apw
  br i1 %exitcond.not.i399.i, label %._crit_edge.us.i400.i, label %scalar.ph294, !llvm.loop !610

._crit_edge.us.i400.i:                            ; preds = %scalar.ph294, %middle.block303
  %i.aqe = add nuw nsw i64 %.01012.us.i397.i, 1   ; 2 uses
  %exitcond18.not.i401.i = icmp eq i64 %i.aqe, %i.aps
  br i1 %exitcond18.not.i401.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.i, label %.lr.ph.us.i396.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.i: ; preds = %._crit_edge.us.i400.i
  %.pre857.i.a = load i32, ptr %i.yu, align 4, !tbaa !79
  br label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.i, %.lr.ph14.i394.i, %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i
  %i.aqf = phi i32 [ %.pre857.i.a, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.i ], [ %i.yv, %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i ], [ %i.yv, %.lr.ph14.i394.i ] ; 4 uses
  %i.aqg = icmp ult i32 %i.aqf, 14
  br i1 %i.aqg, label %switch.lookup396, label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i

switch.lookup396:                                 ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i
  %i.aqh = zext nneg i32 %i.aqf to i64
  %switch.gep397 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN3jxl15ModularCompressERKNS_5ImageERKNS_14ModularOptionsEmRKNSt3__16vectorINS_20PropertyDecisionNodeENS6_9allocatorIS8_EEEERNS_11GroupHeaderERNS7_INS_5TokenENS9_ISG_EEEEPm.101, i64 %i.aqh
  %switch.load398 = load float, ptr %switch.gep397, align 4
  br label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i

_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i, %switch.lookup396
  %.sroa.10.0.i.1.i = phi float [ %switch.load398, %switch.lookup396 ], [ 2.550000e+02, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i ] ; 2 uses
  %i.aqi = load i32, ptr %i.dr, align 4, !tbaa !200 ; 2 uses
  %i.aqj = zext i32 %i.aqi to i64
  %.not.i393.1.i = icmp eq i32 %i.aqi, 0
  br i1 %.not.i393.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i, label %.lr.ph14.i394.1.i

.lr.ph14.i394.1.i:                                ; preds = %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i
  %i.aqk = load ptr, ptr %i.ds, align 8, !tbaa !141
  %i.aql = load i64, ptr %i.dt, align 8, !tbaa !122
  %i.aqm = load i32, ptr %i.dg, align 8, !tbaa !201 ; 3 uses
  %i.aqn = zext i32 %i.aqm to i64                 ; 3 uses
  %.not16.i395.1.i = icmp eq i32 %i.aqm, 0
  br i1 %.not16.i395.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i, label %.lr.ph.us.i396.1.i.preheader

.lr.ph.us.i396.1.i.preheader:                     ; preds = %.lr.ph14.i394.1.i
  %min.iters.check283 = icmp ult i32 %i.aqm, 8
  %n.vec285 = and i64 %i.aqn, 4294967288          ; 3 uses
  %broadcast.splatinsert286 = insertelement <4 x float> poison, float %.sroa.10.0.i.1.i, i64 0
  %broadcast.splat287 = shufflevector <4 x float> %broadcast.splatinsert286, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n292 = icmp eq i64 %n.vec285, %i.aqn
  br label %.lr.ph.us.i396.1.i

.lr.ph.us.i396.1.i:                               ; preds = %.lr.ph.us.i396.1.i.preheader, %._crit_edge.us.i400.1.i
  %.01012.us.i397.1.i = phi i64 [ %i.aqv, %._crit_edge.us.i400.1.i ], [ 0, %.lr.ph.us.i396.1.i.preheader ] ; 2 uses
  %i.aqo = mul i64 %.01012.us.i397.1.i, %i.aql
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aqo ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aqp, i64 64) ]
  br i1 %min.iters.check283, label %scalar.ph282.preheader, label %vector.body288

vector.body288:                                   ; preds = %.lr.ph.us.i396.1.i, %vector.body288
  %index289 = phi i64 [ %index.next290, %vector.body288 ], [ 0, %.lr.ph.us.i396.1.i ] ; 2 uses
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %i.aqp, i64 %index289 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16
  store <4 x float> %broadcast.splat287, ptr %i.aqq, align 32, !tbaa !121
  store <4 x float> %broadcast.splat287, ptr %i.aqr, align 16, !tbaa !121
  %index.next290 = add nuw i64 %index289, 8       ; 2 uses
  %i.aqs = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.aqs, label %middle.block291, label %vector.body288, !llvm.loop !611

middle.block291:                                  ; preds = %vector.body288
  br i1 %cmp.n292, label %._crit_edge.us.i400.1.i, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %.lr.ph.us.i396.1.i, %middle.block291
  %.011.us.i398.1.i.ph = phi i64 [ 0, %.lr.ph.us.i396.1.i ], [ %n.vec285, %middle.block291 ]
  br label %scalar.ph282

scalar.ph282:                                     ; preds = %scalar.ph282.preheader, %scalar.ph282
  %.011.us.i398.1.i = phi i64 [ %i.aqu, %scalar.ph282 ], [ %.011.us.i398.1.i.ph, %scalar.ph282.preheader ] ; 2 uses
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.aqp, i64 %.011.us.i398.1.i
  store float %.sroa.10.0.i.1.i, ptr %i.aqt, align 4, !tbaa !121
  %i.aqu = add nuw nsw i64 %.011.us.i398.1.i, 1   ; 2 uses
  %exitcond.not.i399.1.i = icmp eq i64 %i.aqu, %i.aqn
  br i1 %exitcond.not.i399.1.i, label %._crit_edge.us.i400.1.i, label %scalar.ph282, !llvm.loop !612

._crit_edge.us.i400.1.i:                          ; preds = %scalar.ph282, %middle.block291
  %i.aqv = add nuw nsw i64 %.01012.us.i397.1.i, 1 ; 2 uses
  %exitcond18.not.i401.1.i = icmp eq i64 %i.aqv, %i.aqj
  br i1 %exitcond18.not.i401.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.1.i, label %.lr.ph.us.i396.1.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.1.i: ; preds = %._crit_edge.us.i400.1.i
  %.pre858.i.a = load i32, ptr %i.yu, align 4, !tbaa !79
  br label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.1.i, %.lr.ph14.i394.1.i, %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i
  %i.aqw = phi i32 [ %.pre858.i.a, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.1.i ], [ %i.aqf, %.lr.ph14.i394.1.i ], [ %i.aqf, %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i ] ; 2 uses
  %i.aqx = icmp ult i32 %i.aqw, 14
  br i1 %i.aqx, label %switch.lookup399, label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.2.i
end_hunk_0
