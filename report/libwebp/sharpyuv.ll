Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/sharpyuv?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@DoSharpArgbToYuv:bb.a
  %i.acn = load i32, ptr %i.abc, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert411 = insertelement <4 x i32> poison, i32 %i.acn, i64 0
  %broadcast.splat412 = shufflevector <4 x i32> %broadcast.splatinsert411, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aco = sext <4 x i32> %broadcast.splat412 to <4 x i64>
  %i.acp = load i32, ptr %i.abd, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %i.acp, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acq = sext <4 x i32> %broadcast.splat414 to <4 x i64>
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph397
  %index420 = phi i64 [ 0, %vector.ph397 ], [ %index.next424, %vector.body419 ] ; 6 uses
  %i.acr = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i, i64 %index420
  %wide.load421 = load <4 x i16>, ptr %i.acr, align 2, !tbaa !15
  %i.acs = getelementptr [2 x i8], ptr %invariant.gep169.i, i64 %index420
  %wide.load422 = load <4 x i16>, ptr %i.acs, align 2, !tbaa !15
  %i.act = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %index420
  %wide.load423 = load <4 x i16>, ptr %i.act, align 2, !tbaa !15
  %i.acu = sext <4 x i16> %wide.load421 to <4 x i64> ; 2 uses
  %i.acv = mul nsw <4 x i64> %i.acc, %i.acu
  %i.acw = sext <4 x i16> %wide.load422 to <4 x i64> ; 2 uses
  %i.acx = mul nsw <4 x i64> %i.ace, %i.acw
  %i.acy = sext <4 x i16> %wide.load423 to <4 x i64> ; 2 uses
  %i.acz = mul nsw <4 x i64> %i.acg, %i.acy
  %i.ada = add <4 x i64> %i.acv, %broadcast.splat416
  %i.adb = add <4 x i64> %i.ada, %i.acx
  %i.adc = add <4 x i64> %i.adb, %i.acz
  %i.add = add <4 x i64> %i.adc, %i.aci
  %i.ade = ashr <4 x i64> %i.add, %broadcast.splat418
  %i.adf = mul nsw <4 x i64> %i.ack, %i.acu
  %i.adg = mul nsw <4 x i64> %i.acm, %i.acw
  %i.adh = mul nsw <4 x i64> %i.aco, %i.acy
  %i.adi = add <4 x i64> %i.adf, %broadcast.splat416
  %i.adj = add <4 x i64> %i.adi, %i.adg
  %i.adk = add <4 x i64> %i.adj, %i.adh
  %i.adl = add <4 x i64> %i.adk, %i.acq
  %i.adm = ashr <4 x i64> %i.adl, %broadcast.splat418
  %i.adn = trunc <4 x i64> %i.ade to <4 x i16>
  %i.ado = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.adn, <4 x i16> zeroinitializer)
  %i.adp = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.ado, <4 x i16> splat (i16 255))
  %i.adq = trunc nuw <4 x i16> %i.adp to <4 x i8>
  %i.adr = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %index420
  store <4 x i8> %i.adq, ptr %i.adr, align 1, !tbaa !19, !alias.scope !47, !noalias !48
  %i.ads = trunc <4 x i64> %i.adm to <4 x i16>
  %i.adt = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ads, <4 x i16> zeroinitializer)
  %i.adu = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.adt, <4 x i16> splat (i16 255))
  %i.adv = trunc nuw <4 x i16> %i.adu to <4 x i8>
  %i.adw = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %index420
  store <4 x i8> %i.adv, ptr %i.adw, align 1, !tbaa !19, !alias.scope !49, !noalias !46
  %index.next424 = add nuw i64 %index420, 4       ; 2 uses
  %i.adx = icmp eq i64 %index.next424, %n.vec398
  br i1 %i.adx, label %middle.block425, label %vector.body419, !llvm.loop !40

middle.block425:                                  ; preds = %vector.body419
  br i1 %cmp.n426, label %.split117.us.us.i, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %.split115.us.us.i, %middle.block425
  %indvars.iv142.i.ph = phi i64 [ %n.vec398, %middle.block425 ], [ 0, %.split115.us.us.i ]
  br label %scalar.ph395

scalar.ph395:                                     ; preds = %scalar.ph395.preheader, %scalar.ph395
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %scalar.ph395 ], [ %indvars.iv142.i.ph, %scalar.ph395.preheader ] ; 6 uses
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i, i64 %indvars.iv142.i
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !15
  %gep170.i = getelementptr [2 x i8], ptr %invariant.gep169.i, i64 %indvars.iv142.i
  %i.aea = load i16, ptr %gep170.i, align 2, !tbaa !15
  %gep172.i = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %indvars.iv142.i
  %i.aeb = load i16, ptr %gep172.i, align 2, !tbaa !15
  %i.aec = load i32, ptr %i.aaw, align 4, !tbaa !13
  %i.aed = sext i32 %i.aec to i64
  %i.aee = sext i16 %i.adz to i64                 ; 2 uses
  %i.aef = mul nsw i64 %i.aed, %i.aee
  %i.aeg = load i32, ptr %i.aax, align 4, !tbaa !13
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = sext i16 %i.aea to i64                 ; 2 uses
  %i.aej = mul nsw i64 %i.aeh, %i.aei
  %i.aek = load i32, ptr %i.aay, align 4, !tbaa !13
  %i.ael = sext i32 %i.aek to i64
  %i.aem = sext i16 %i.aeb to i64                 ; 2 uses
  %i.aen = mul nsw i64 %i.ael, %i.aem
  %i.aeo = load i32, ptr %i.aaz, align 4, !tbaa !13
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = add i64 %i.aef, %i.uo
  %i.aer = add i64 %i.aeq, %i.aej
  %i.aes = add i64 %i.aer, %i.aen
  %i.aet = add i64 %i.aes, %i.aep
  %i.aeu = ashr i64 %i.aet, %i.us
  %i.aev = load i32, ptr %i.aba, align 4, !tbaa !13
  %i.aew = sext i32 %i.aev to i64
  %i.aex = mul nsw i64 %i.aew, %i.aee
  %i.aey = load i32, ptr %i.abb, align 4, !tbaa !13
  %i.aez = sext i32 %i.aey to i64
  %i.afa = mul nsw i64 %i.aez, %i.aei
  %i.afb = load i32, ptr %i.abc, align 4, !tbaa !13
  %i.afc = sext i32 %i.afb to i64
  %i.afd = mul nsw i64 %i.afc, %i.aem
  %i.afe = load i32, ptr %i.abd, align 4, !tbaa !13
  %i.aff = sext i32 %i.afe to i64
  %i.afg = add i64 %i.aex, %i.uo
  %i.afh = add i64 %i.afg, %i.afa
  %i.afi = add i64 %i.afh, %i.afd
  %i.afj = add i64 %i.afi, %i.aff
  %i.afk = ashr i64 %i.afj, %i.us
  %i.afl = trunc i64 %i.aeu to i16
  %i.afm = tail call i16 @llvm.smax.i16(i16 %i.afl, i16 0)
  %i.afn = tail call i16 @llvm.umin.i16(i16 %i.afm, i16 255)
  %i.afo = trunc nuw i16 %i.afn to i8
  %i.afp = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %indvars.iv142.i
  store i8 %i.afo, ptr %i.afp, align 1, !tbaa !19
  %i.afq = trunc i64 %i.afk to i16
  %i.afr = tail call i16 @llvm.smax.i16(i16 %i.afq, i16 0)
  %i.afs = tail call i16 @llvm.umin.i16(i16 %i.afr, i16 255)
  %i.aft = trunc nuw i16 %i.afs to i8
  %i.afu = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %indvars.iv142.i
  store i8 %i.aft, ptr %i.afu, align 1, !tbaa !19
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next143.i, %wide.trip.count146.i
  br i1 %exitcond147.not.i, label %.split117.us.us.i, label %scalar.ph395, !llvm.loop !41

.split117.us.us.i:                                ; preds = %scalar.ph395, %middle.block425
  %i.afv = getelementptr inbounds [2 x i8], ptr %.195.us.i, i64 %.pre-phi311
  %i.afw = getelementptr inbounds i8, ptr %.097.us.i, i64 %i.abe
  %i.afx = getelementptr inbounds i8, ptr %.098.us.i, i64 %i.abf
  %i.afy = add nuw nsw i32 %.1.us.i, 1            ; 2 uses
  %exitcond149.not.i = icmp eq i32 %i.afy, %smax148.i
  br i1 %exitcond149.not.i, label %ConvertWRGBToYUV.exit, label %.split115.us.us.i, !llvm.loop !42

.split115.i:                                      ; preds = %.split117.i, %.split115.preheader.i
  %.098.i = phi ptr [ %i.ahk, %.split117.i ], [ %10, %.split115.preheader.i ] ; 2 uses
  %.097.i = phi ptr [ %i.ahj, %.split117.i ], [ %8, %.split115.preheader.i ] ; 2 uses
  %.195.i = phi ptr [ %i.ahi, %.split117.i ], [ %i.ai, %.split115.preheader.i ] ; 4 uses
  %.1.i = phi i32 [ %i.ahl, %.split117.i ], [ 0, %.split115.preheader.i ]
  %invariant.gep.i274 = getelementptr [2 x i8], ptr %.195.i, i64 %i.p
  %invariant.gep167.i = getelementptr [2 x i8], ptr %.195.i, i64 %i.k
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.split115.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %bb.m ], [ 0, %.split115.i ] ; 6 uses
  %i.afz = getelementptr inbounds nuw [2 x i8], ptr %.195.i, i64 %indvars.iv134.i
  %i.aga = load i16, ptr %i.afz, align 2, !tbaa !15
  %gep.i275 = getelementptr [2 x i8], ptr %invariant.gep.i274, i64 %indvars.iv134.i
  %i.agb = load i16, ptr %gep.i275, align 2, !tbaa !15
  %gep168.i = getelementptr [2 x i8], ptr %invariant.gep167.i, i64 %indvars.iv134.i
  %i.agc = load i16, ptr %gep168.i, align 2, !tbaa !15
  %i.agd = sext i16 %i.aga to i64                 ; 2 uses
  %i.age = mul nsw i64 %i.agd, %i.abg
  %i.agf = sext i16 %i.agb to i64                 ; 2 uses
  %i.agg = mul nsw i64 %i.agf, %i.abh
  %i.agh = sext i16 %i.agc to i64                 ; 2 uses
  %i.agi = mul nsw i64 %i.agh, %i.abi
  %i.agj = add i64 %i.abo, %i.age
  %i.agk = add i64 %i.agj, %i.agg
  %i.agl = add i64 %i.agk, %i.agi
  %i.agm = ashr i64 %i.agl, %i.us                 ; 2 uses
  %i.agn = mul nsw i64 %i.agd, %i.abk
  %i.ago = mul nsw i64 %i.agf, %i.abl
  %i.agp = mul nsw i64 %i.agh, %i.abm
  %i.agq = add i64 %i.abp, %i.agn
  %i.agr = add i64 %i.agq, %i.ago
  %i.ags = add i64 %i.agr, %i.agp
  %i.agt = ashr i64 %i.ags, %i.us                 ; 2 uses
  %i.agu = and i64 %i.agm, 32768
  %.not104.i = icmp eq i64 %i.agu, 0
  %i.agv = trunc i64 %i.agm to i32
  %i.agw = and i32 %i.agv, 65535
  %i.agx = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.uk, i32 %i.agw)
  %i.agy = trunc nuw i32 %i.agx to i16
  %i.agz = select i1 %.not104.i, i16 %i.agy, i16 0
  %i.aha = getelementptr inbounds nuw [2 x i8], ptr %.097.i, i64 %indvars.iv134.i
  store i16 %i.agz, ptr %i.aha, align 2, !tbaa !15
  %i.ahb = and i64 %i.agt, 32768
  %.not105.i = icmp eq i64 %i.ahb, 0
  %i.ahc = trunc i64 %i.agt to i32
  %i.ahd = and i32 %i.ahc, 65535
  %i.ahe = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.uk, i32 %i.ahd)
  %i.ahf = trunc nuw i32 %i.ahe to i16
  %i.ahg = select i1 %.not105.i, i16 %i.ahf, i16 0
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %.098.i, i64 %indvars.iv134.i
  store i16 %i.ahg, ptr %i.ahh, align 2, !tbaa !15
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond139.not.i = icmp eq i64 %indvars.iv.next135.i, %wide.trip.count138.i
  br i1 %exitcond139.not.i, label %.split117.i, label %bb.m, !llvm.loop !43

.split117.i:                                      ; preds = %bb.m
  %i.ahi = getelementptr inbounds [2 x i8], ptr %.195.i, i64 %.pre-phi311
  %i.ahj = getelementptr inbounds i8, ptr %.097.i, i64 %i.abe
  %i.ahk = getelementptr inbounds i8, ptr %.098.i, i64 %i.abf
  %i.ahl = add nuw nsw i32 %.1.i, 1               ; 2 uses
  %exitcond141.not.i = icmp eq i32 %i.ahl, %smax148.i
  br i1 %exitcond141.not.i, label %ConvertWRGBToYUV.exit, label %.split115.i, !llvm.loop !42

ConvertWRGBToYUV.exit:                            ; preds = %.split117.i, %.split117.us.us.i, %bb.a
  %.0206 = phi i32 [ 0, %bb.a ], [ 1, %.split117.us.us.i ], [ 1, %.split117.i ]
  tail call void @free(ptr noundef %i.y) #11
  ret i32 %.0206
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ImportOneRow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 9 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 9 uses
  %i.d = ptrtoaddr ptr %6 to i64                  ; 15 uses
  %i.e = icmp sgt i32 %4, 8
  %i.f = sdiv i32 %3, 2                           ; 2 uses
  %i.g = select i1 %i.e, i32 %i.f, i32 %3         ; 2 uses
  %i.h = add i32 %5, 1                            ; 2 uses
  %i.i = and i32 %i.h, -2                         ; 7 uses
  %i.j = icmp slt i32 %4, 13
  %.neg = add nsw i32 %4, -14                     ; 4 uses
  %i.k = sub nsw i32 14, %4
  %i.l = select i1 %i.j, i32 2, i32 %i.k          ; 6 uses
  %notmask = shl nsw i32 -1, %4
  %i.m = xor i32 %notmask, -1                     ; 8 uses
  %i.n = icmp eq i32 %4, 8
  br i1 %i.n, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.o = shl nsw i32 %i.i, 1
  %i.p = sext i32 %3 to i64
  %i.q = sext i32 %i.i to i64                     ; 2 uses
  %i.r = sext i32 %i.o to i64                     ; 2 uses
  %smax132 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count133 = zext nneg i32 %smax132 to i64 ; 9 uses
  %invariant.gep149 = getelementptr [2 x i8], ptr %6, i64 %i.q ; 7 uses
  %invariant.gep151 = getelementptr [2 x i8], ptr %6, i64 %i.r ; 7 uses
  %min.iters.check318 = icmp sgt i32 %5, 55
  %ident.check266.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check318, %ident.check266.not
  br i1 %or.cond, label %vector.memcheck319, label %scalar.ph317.preheader

vector.memcheck319:                               ; preds = %.preheader
  %i.s = shl nuw nsw i64 %wide.trip.count133, 1
  %i.t = getelementptr i8, ptr %6, i64 %i.s       ; 5 uses
  %i.u = add nsw i64 %i.q, %wide.trip.count133
  %i.v = shl nsw i64 %i.u, 1
  %i.w = getelementptr i8, ptr %6, i64 %i.v       ; 5 uses
  %i.x = add nsw i64 %i.r, %wide.trip.count133
  %i.y = shl nsw i64 %i.x, 1
  %i.z = getelementptr i8, ptr %6, i64 %i.y       ; 5 uses
  %i.aa = getelementptr i8, ptr %0, i64 %wide.trip.count133 ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 %wide.trip.count133 ; 3 uses
  %i.ac = getelementptr i8, ptr %2, i64 %wide.trip.count133 ; 3 uses
  %bound0 = icmp ult ptr %6, %i.w
  %bound1 = icmp ult ptr %invariant.gep149, %i.t
  %found.conflict = and i1 %bound0, %bound1
  %bound0320 = icmp ult ptr %6, %i.z
  %bound1321 = icmp ult ptr %invariant.gep151, %i.t
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %found.conflict, %found.conflict322
  %bound0324 = icmp ult ptr %6, %i.aa
  %bound1325 = icmp ult ptr %0, %i.t
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx327 = or i1 %conflict.rdx323, %found.conflict326
  %bound0328 = icmp ult ptr %6, %i.ab
  %bound1329 = icmp ult ptr %1, %i.t
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %conflict.rdx327, %found.conflict330
  %bound0332 = icmp ult ptr %6, %i.ac
  %bound1333 = icmp ult ptr %2, %i.t
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  %bound0336 = icmp ult ptr %invariant.gep149, %i.z
  %bound1337 = icmp ult ptr %invariant.gep151, %i.w
  %found.conflict338 = and i1 %bound0336, %bound1337
  %conflict.rdx339 = or i1 %conflict.rdx335, %found.conflict338
  %bound0340 = icmp ult ptr %invariant.gep149, %i.aa
  %bound1341 = icmp ult ptr %0, %i.w
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx339, %found.conflict342
  %bound0344 = icmp ult ptr %invariant.gep149, %i.ab
  %bound1345 = icmp ult ptr %1, %i.w
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  %bound0348 = icmp ult ptr %invariant.gep149, %i.ac
  %bound1349 = icmp ult ptr %2, %i.w
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  %bound0352 = icmp ult ptr %invariant.gep151, %i.aa
  %bound1353 = icmp ult ptr %0, %i.z
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  %bound0356 = icmp ult ptr %invariant.gep151, %i.ab
  %bound1357 = icmp ult ptr %1, %i.z
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx359 = or i1 %conflict.rdx355, %found.conflict358
  %bound0360 = icmp ult ptr %invariant.gep151, %i.ac
  %bound1361 = icmp ult ptr %2, %i.z
  %found.conflict362 = and i1 %bound0360, %bound1361
  %conflict.rdx363 = or i1 %conflict.rdx359, %found.conflict362
  br i1 %conflict.rdx363, label %scalar.ph317.preheader, label %vector.ph364

vector.ph364:                                     ; preds = %vector.memcheck319
  %n.vec365 = and i64 %wide.trip.count133, 2147483640 ; 3 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph364
  %index367 = phi i64 [ 0, %vector.ph364 ], [ %index.next371, %vector.body366 ] ; 7 uses
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %index367
  %wide.load368 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !19, !alias.scope !65
  %i.ae = zext <8 x i8> %wide.load368 to <8 x i16>
  %i.af = shl nuw nsw <8 x i16> %i.ae, splat (i16 2)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index367
  store <8 x i16> %i.af, ptr %i.ag, align 2, !tbaa !15, !alias.scope !66, !noalias !67
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %index367
  %wide.load369 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !19, !alias.scope !68
  %i.ai = zext <8 x i8> %wide.load369 to <8 x i16>
  %i.aj = shl nuw nsw <8 x i16> %i.ai, splat (i16 2)
  %i.ak = getelementptr [2 x i8], ptr %invariant.gep149, i64 %index367
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !15, !alias.scope !69, !noalias !70
  %i.al = getelementptr inbounds i8, ptr %2, i64 %index367
  %wide.load370 = load <8 x i8>, ptr %i.al, align 1, !tbaa !19, !alias.scope !71
  %i.am = zext <8 x i8> %wide.load370 to <8 x i16>
  %i.an = shl nuw nsw <8 x i16> %i.am, splat (i16 2)
  %i.ao = getelementptr [2 x i8], ptr %invariant.gep151, i64 %index367
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !15, !alias.scope !72, !noalias !73
  %index.next371 = add nuw i64 %index367, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next371, %n.vec365
  br i1 %i.ap, label %middle.block372, label %vector.body366, !llvm.loop !57

middle.block372:                                  ; preds = %vector.body366
  %cmp.n373 = icmp eq i64 %n.vec365, %wide.trip.count133
  br i1 %cmp.n373, label %.loopexit, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck319, %.preheader, %middle.block372
  %indvars.iv129.ph = phi i64 [ 0, %vector.memcheck319 ], [ 0, %.preheader ], [ %n.vec365, %middle.block372 ]
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph317 ], [ %indvars.iv129.ph, %scalar.ph317.preheader ] ; 5 uses
  %i.aq = mul nsw i64 %indvars.iv129, %i.p        ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = zext i8 %i.as to i16
  %i.au = shl nuw nsw i16 %i.at, 2
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv129
  store i16 %i.au, ptr %i.av, align 2, !tbaa !15
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.aq
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.ay = zext i8 %i.ax to i16
  %i.az = shl nuw nsw i16 %i.ay, 2
  %gep150 = getelementptr [2 x i8], ptr %invariant.gep149, i64 %indvars.iv129
  store i16 %i.az, ptr %gep150, align 2, !tbaa !15
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.aq
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bc = zext i8 %i.bb to i16
  %i.bd = shl nuw nsw i16 %i.bc, 2
  %gep152 = getelementptr [2 x i8], ptr %invariant.gep151, i64 %indvars.iv129
  store i16 %i.bd, ptr %gep152, align 2, !tbaa !15
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count133
  br i1 %exitcond134.not, label %.loopexit, label %scalar.ph317, !llvm.loop !58

bb.b:                                             ; preds = %bb.a
  %i.be = icmp slt i32 %4, 16
  br i1 %i.be, label %.preheader108, label %.preheader110

.preheader110:                                    ; preds = %bb.b
  %i.bf = shl i32 %i.i, 1
  %i.bg = sext i32 %i.f to i64
  %i.bh = sext i32 %i.i to i64                    ; 2 uses
  %i.bi = sext i32 %i.bf to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %6, i64 %i.bh ; 2 uses
  %invariant.gep139 = getelementptr [2 x i8], ptr %6, i64 %i.bi ; 2 uses
  %min.iters.check = icmp sgt i32 %5, 47
  %i.bj = and i32 %3, -2
  %ident.check.not = icmp eq i32 %i.bj, 2
  %or.cond375 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond375, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader110
  %i.bk = shl nsw i64 %i.bh, 1                    ; 4 uses
  %i.bl = add nsw i64 %i.bk, -1
  %diff.check = icmp ult i64 %i.bl, 15
  %i.bm = shl nsw i64 %i.bi, 1                    ; 4 uses
  %i.bn = add nsw i64 %i.bm, -1
  %diff.check156 = icmp ult i64 %i.bn, 15
  %conflict.rdx = or i1 %diff.check, %diff.check156
  %i.bo = sub i64 %i.c, %i.d
  %diff.check157 = icmp ugt i64 %i.bo, -16
  %conflict.rdx158 = or i1 %conflict.rdx, %diff.check157
  %i.bp = sub i64 %i.b, %i.d
  %diff.check159 = icmp ugt i64 %i.bp, -16
  %conflict.rdx160 = or i1 %conflict.rdx158, %diff.check159
  %i.bq = sub i64 %i.a, %i.d                      ; 3 uses
  %diff.check161 = icmp ugt i64 %i.bq, -16
  %conflict.rdx162 = or i1 %conflict.rdx160, %diff.check161
  %i.br = sub nsw i64 %i.bk, %i.bm
  %diff.check163 = icmp ugt i64 %i.br, -16
  %conflict.rdx164 = or i1 %conflict.rdx162, %diff.check163
  %i.bs = add i64 %i.bk, %i.d                     ; 2 uses
  %i.bt = sub i64 %i.c, %i.bs
  %diff.check165 = icmp ugt i64 %i.bt, -16
  %conflict.rdx166 = or i1 %conflict.rdx164, %diff.check165
  %i.bu = sub i64 %i.b, %i.bs
  %diff.check167 = icmp ugt i64 %i.bu, -16
  %conflict.rdx168 = or i1 %conflict.rdx166, %diff.check167
  %i.bv = sub i64 %i.bq, %i.bk
  %diff.check169 = icmp ugt i64 %i.bv, -16
  %conflict.rdx170 = or i1 %conflict.rdx168, %diff.check169
  %i.bw = add i64 %i.bm, %i.d                     ; 2 uses
  %i.bx = sub i64 %i.c, %i.bw
  %diff.check171 = icmp ugt i64 %i.bx, -16
  %conflict.rdx172 = or i1 %conflict.rdx170, %diff.check171
  %i.by = sub i64 %i.b, %i.bw
  %diff.check173 = icmp ugt i64 %i.by, -16
  %conflict.rdx174 = or i1 %conflict.rdx172, %diff.check173
  %i.bz = sub i64 %i.bq, %i.bm
  %diff.check175 = icmp ugt i64 %i.bz, -16
  %conflict.rdx176 = or i1 %conflict.rdx174, %diff.check175
  br i1 %conflict.rdx176, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.neg, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.ca = getelementptr inbounds [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ca, align 2, !tbaa !15
  %i.cb = zext <8 x i16> %wide.load to <8 x i32>
  %i.cc = getelementptr inbounds [2 x i8], ptr %1, i64 %index
  %wide.load177 = load <8 x i16>, ptr %i.cc, align 2, !tbaa !15
  %i.cd = zext <8 x i16> %wide.load177 to <8 x i32>
  %i.ce = getelementptr inbounds [2 x i8], ptr %2, i64 %index
  %wide.load178 = load <8 x i16>, ptr %i.ce, align 2, !tbaa !15
  %i.cf = zext <8 x i16> %wide.load178 to <8 x i32>
  %i.cg = lshr <8 x i32> %i.cb, %broadcast.splat
  %i.ch = trunc nuw nsw <8 x i32> %i.cg to <8 x i16>
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index
  store <8 x i16> %i.ch, ptr %i.ci, align 2, !tbaa !15
  %i.cj = lshr <8 x i32> %i.cd, %broadcast.splat
  %i.ck = trunc nuw nsw <8 x i32> %i.cj to <8 x i16>
  %i.cl = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  store <8 x i16> %i.ck, ptr %i.cl, align 2, !tbaa !15
  %i.cm = lshr <8 x i32> %i.cf, %broadcast.splat
  %i.cn = trunc nuw nsw <8 x i32> %i.cm to <8 x i16>
  %i.co = getelementptr [2 x i8], ptr %invariant.gep139, i64 %index
  store <8 x i16> %i.cn, ptr %i.co, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader110, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader110 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader108:                                    ; preds = %bb.b
  %i.cq = sub nsw i32 0, %i.l                     ; 4 uses
  %i.cr = icmp slt i32 %i.l, 0
  %i.cs = shl i32 %i.i, 1
  %i.ct = sext i32 %i.g to i64                    ; 2 uses
  %i.cu = sext i32 %i.i to i64                    ; 3 uses
  %i.cv = sext i32 %i.cs to i64                   ; 3 uses
  %smax126 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count127 = zext nneg i32 %smax126 to i64 ; 6 uses
  %invariant.gep145 = getelementptr [2 x i8], ptr %6, i64 %i.cu ; 4 uses
  %invariant.gep147 = getelementptr [2 x i8], ptr %6, i64 %i.cv ; 4 uses
  %min.iters.check249 = icmp sgt i32 %5, 39
  %ident.check223.not = icmp eq i32 %i.g, 1
  %or.cond378 = and i1 %min.iters.check249, %ident.check223.not ; 2 uses
  br i1 %i.cr, label %.preheader108.split.us.preheader, label %.preheader108.split.preheader

.preheader108.split.preheader:                    ; preds = %.preheader108
  br i1 %or.cond378, label %vector.memcheck181, label %.preheader108.split.preheader381

vector.memcheck181:                               ; preds = %.preheader108.split.preheader
  %i.cw = shl nsw i64 %i.cu, 1                    ; 4 uses
  %i.cx = add nsw i64 %i.cw, -1
  %diff.check182 = icmp ult i64 %i.cx, 15
  %i.cy = shl nsw i64 %i.cv, 1                    ; 4 uses
  %i.cz = add nsw i64 %i.cy, -1
  %diff.check183 = icmp ult i64 %i.cz, 15
  %conflict.rdx184 = or i1 %diff.check182, %diff.check183
  %i.da = sub i64 %i.c, %i.d
  %diff.check185 = icmp ugt i64 %i.da, -16
  %conflict.rdx186 = or i1 %conflict.rdx184, %diff.check185
  %i.db = sub i64 %i.b, %i.d
  %diff.check187 = icmp ugt i64 %i.db, -16
  %conflict.rdx188 = or i1 %conflict.rdx186, %diff.check187
  %i.dc = sub i64 %i.a, %i.d                      ; 3 uses
  %diff.check189 = icmp ugt i64 %i.dc, -16
  %conflict.rdx190 = or i1 %conflict.rdx188, %diff.check189
  %i.dd = sub nsw i64 %i.cw, %i.cy
  %diff.check191 = icmp ugt i64 %i.dd, -16
  %conflict.rdx192 = or i1 %conflict.rdx190, %diff.check191
  %i.de = add i64 %i.cw, %i.d                     ; 2 uses
  %i.df = sub i64 %i.c, %i.de
  %diff.check193 = icmp ugt i64 %i.df, -16
  %conflict.rdx194 = or i1 %conflict.rdx192, %diff.check193
  %i.dg = sub i64 %i.b, %i.de
  %diff.check195 = icmp ugt i64 %i.dg, -16
  %conflict.rdx196 = or i1 %conflict.rdx194, %diff.check195
  %i.dh = sub i64 %i.dc, %i.cw
  %diff.check197 = icmp ugt i64 %i.dh, -16
  %conflict.rdx198 = or i1 %conflict.rdx196, %diff.check197
  %i.di = add i64 %i.cy, %i.d                     ; 2 uses
  %i.dj = sub i64 %i.c, %i.di
  %diff.check199 = icmp ugt i64 %i.dj, -16
  %conflict.rdx200 = or i1 %conflict.rdx198, %diff.check199
  %i.dk = sub i64 %i.b, %i.di
  %diff.check201 = icmp ugt i64 %i.dk, -16
  %conflict.rdx202 = or i1 %conflict.rdx200, %diff.check201
  %i.dl = sub i64 %i.dc, %i.cy
  %diff.check203 = icmp ugt i64 %i.dl, -16
  %conflict.rdx204 = or i1 %conflict.rdx202, %diff.check203
  br i1 %conflict.rdx204, label %.preheader108.split.preheader381, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck181
  %n.vec208 = and i64 %wide.trip.count127, 2147483640 ; 3 uses
  %broadcast.splatinsert209 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat210 = shufflevector <8 x i32> %broadcast.splatinsert209, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert211 = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat212 = shufflevector <8 x i32> %broadcast.splatinsert211, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph207
  %index214 = phi i64 [ 0, %vector.ph207 ], [ %index.next218, %vector.body213 ] ; 7 uses
  %i.dm = getelementptr inbounds [2 x i8], ptr %0, i64 %index214
  %wide.load215 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !15
  %i.dn = zext <8 x i16> %wide.load215 to <8 x i32>
  %i.do = getelementptr inbounds [2 x i8], ptr %1, i64 %index214
  %wide.load216 = load <8 x i16>, ptr %i.do, align 2, !tbaa !15
  %i.dp = zext <8 x i16> %wide.load216 to <8 x i32>
  %i.dq = getelementptr inbounds [2 x i8], ptr %2, i64 %index214
  %wide.load217 = load <8 x i16>, ptr %i.dq, align 2, !tbaa !15
  %i.dr = zext <8 x i16> %wide.load217 to <8 x i32>
  %i.ds = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dn, <8 x i32> %broadcast.splat210)
  %i.dt = shl <8 x i32> %i.ds, %broadcast.splat212
  %i.du = trunc <8 x i32> %i.dt to <8 x i16>
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index214
  store <8 x i16> %i.du, ptr %i.dv, align 2, !tbaa !15
  %i.dw = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dp, <8 x i32> %broadcast.splat210)
  %i.dx = shl <8 x i32> %i.dw, %broadcast.splat212
  %i.dy = trunc <8 x i32> %i.dx to <8 x i16>
  %i.dz = getelementptr [2 x i8], ptr %invariant.gep145, i64 %index214
  store <8 x i16> %i.dy, ptr %i.dz, align 2, !tbaa !15
  %i.ea = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dr, <8 x i32> %broadcast.splat210)
  %i.eb = shl <8 x i32> %i.ea, %broadcast.splat212
  %i.ec = trunc <8 x i32> %i.eb to <8 x i16>
  %i.ed = getelementptr [2 x i8], ptr %invariant.gep147, i64 %index214
  store <8 x i16> %i.ec, ptr %i.ed, align 2, !tbaa !15
  %index.next218 = add nuw i64 %index214, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next218, %n.vec208
  br i1 %i.ee, label %middle.block219, label %vector.body213, !llvm.loop !60

middle.block219:                                  ; preds = %vector.body213
  %cmp.n220 = icmp eq i64 %n.vec208, %wide.trip.count127
  br i1 %cmp.n220, label %.loopexit, label %.preheader108.split.preheader381

.preheader108.split.preheader381:                 ; preds = %vector.memcheck181, %.preheader108.split.preheader, %middle.block219
  %indvars.iv117.ph = phi i64 [ 0, %vector.memcheck181 ], [ 0, %.preheader108.split.preheader ], [ %n.vec208, %middle.block219 ]
  br label %.preheader108.split

.preheader108.split.us.preheader:                 ; preds = %.preheader108
  br i1 %or.cond378, label %vector.memcheck224, label %.preheader108.split.us.preheader379

vector.memcheck224:                               ; preds = %.preheader108.split.us.preheader
  %i.ef = shl nsw i64 %i.cu, 1                    ; 4 uses
  %i.eg = add nsw i64 %i.ef, -1
  %diff.check225 = icmp ult i64 %i.eg, 15
  %i.eh = shl nsw i64 %i.cv, 1                    ; 4 uses
  %i.ei = add nsw i64 %i.eh, -1
  %diff.check226 = icmp ult i64 %i.ei, 15
  %conflict.rdx227 = or i1 %diff.check225, %diff.check226
  %i.ej = sub i64 %i.c, %i.d
  %diff.check228 = icmp ugt i64 %i.ej, -16
  %conflict.rdx229 = or i1 %conflict.rdx227, %diff.check228
  %i.ek = sub i64 %i.b, %i.d
  %diff.check230 = icmp ugt i64 %i.ek, -16
  %conflict.rdx231 = or i1 %conflict.rdx229, %diff.check230
  %i.el = sub i64 %i.a, %i.d                      ; 3 uses
  %diff.check232 = icmp ugt i64 %i.el, -16
  %conflict.rdx233 = or i1 %conflict.rdx231, %diff.check232
  %i.em = sub nsw i64 %i.ef, %i.eh
  %diff.check234 = icmp ugt i64 %i.em, -16
  %conflict.rdx235 = or i1 %conflict.rdx233, %diff.check234
  %i.en = add i64 %i.ef, %i.d                     ; 2 uses
  %i.eo = sub i64 %i.c, %i.en
  %diff.check236 = icmp ugt i64 %i.eo, -16
  %conflict.rdx237 = or i1 %conflict.rdx235, %diff.check236
  %i.ep = sub i64 %i.b, %i.en
  %diff.check238 = icmp ugt i64 %i.ep, -16
  %conflict.rdx239 = or i1 %conflict.rdx237, %diff.check238
  %i.eq = sub i64 %i.el, %i.ef
  %diff.check240 = icmp ugt i64 %i.eq, -16
  %conflict.rdx241 = or i1 %conflict.rdx239, %diff.check240
  %i.er = add i64 %i.eh, %i.d                     ; 2 uses
  %i.es = sub i64 %i.c, %i.er
  %diff.check242 = icmp ugt i64 %i.es, -16
  %conflict.rdx243 = or i1 %conflict.rdx241, %diff.check242
  %i.et = sub i64 %i.b, %i.er
  %diff.check244 = icmp ugt i64 %i.et, -16
  %conflict.rdx245 = or i1 %conflict.rdx243, %diff.check244
  %i.eu = sub i64 %i.el, %i.eh
  %diff.check246 = icmp ugt i64 %i.eu, -16
  %conflict.rdx247 = or i1 %conflict.rdx245, %diff.check246
  br i1 %conflict.rdx247, label %.preheader108.split.us.preheader379, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck224
  %n.vec251 = and i64 %wide.trip.count127, 2147483640 ; 3 uses
  %broadcast.splatinsert252 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat253 = shufflevector <8 x i32> %broadcast.splatinsert252, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert254 = insertelement <8 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat255 = shufflevector <8 x i32> %broadcast.splatinsert254, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph250
  %index257 = phi i64 [ 0, %vector.ph250 ], [ %index.next261, %vector.body256 ] ; 7 uses
  %i.ev = getelementptr inbounds [2 x i8], ptr %0, i64 %index257
  %wide.load258 = load <8 x i16>, ptr %i.ev, align 2, !tbaa !15
  %i.ew = zext <8 x i16> %wide.load258 to <8 x i32>
  %i.ex = getelementptr inbounds [2 x i8], ptr %1, i64 %index257
  %wide.load259 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !15
  %i.ey = zext <8 x i16> %wide.load259 to <8 x i32>
  %i.ez = getelementptr inbounds [2 x i8], ptr %2, i64 %index257
  %wide.load260 = load <8 x i16>, ptr %i.ez, align 2, !tbaa !15
  %i.fa = zext <8 x i16> %wide.load260 to <8 x i32>
  %i.fb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ew, <8 x i32> %broadcast.splat253)
  %i.fc = lshr <8 x i32> %i.fb, %broadcast.splat255
  %i.fd = trunc nuw <8 x i32> %i.fc to <8 x i16>
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index257
  store <8 x i16> %i.fd, ptr %i.fe, align 2, !tbaa !15
  %i.ff = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ey, <8 x i32> %broadcast.splat253)
  %i.fg = lshr <8 x i32> %i.ff, %broadcast.splat255
  %i.fh = trunc nuw <8 x i32> %i.fg to <8 x i16>
  %i.fi = getelementptr [2 x i8], ptr %invariant.gep145, i64 %index257
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !15
  %i.fj = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fa, <8 x i32> %broadcast.splat253)
  %i.fk = lshr <8 x i32> %i.fj, %broadcast.splat255
  %i.fl = trunc nuw <8 x i32> %i.fk to <8 x i16>
  %i.fm = getelementptr [2 x i8], ptr %invariant.gep147, i64 %index257
  store <8 x i16> %i.fl, ptr %i.fm, align 2, !tbaa !15
  %index.next261 = add nuw i64 %index257, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next261, %n.vec251
  br i1 %i.fn, label %middle.block262, label %vector.body256, !llvm.loop !61

middle.block262:                                  ; preds = %vector.body256
  %cmp.n263 = icmp eq i64 %n.vec251, %wide.trip.count127
  br i1 %cmp.n263, label %.loopexit, label %.preheader108.split.us.preheader379

.preheader108.split.us.preheader379:              ; preds = %vector.memcheck224, %.preheader108.split.us.preheader, %middle.block262
  %indvars.iv123.ph = phi i64 [ 0, %vector.memcheck224 ], [ 0, %.preheader108.split.us.preheader ], [ %n.vec251, %middle.block262 ]
  br label %.preheader108.split.us

.preheader108.split.us:                           ; preds = %.preheader108.split.us.preheader379, %.preheader108.split.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %.preheader108.split.us ], [ %indvars.iv123.ph, %.preheader108.split.us.preheader379 ] ; 5 uses
  %i.fo = mul nsw i64 %indvars.iv123, %i.ct       ; 3 uses
  %i.fp = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !15
  %i.fr = zext i16 %i.fq to i32
  %i.fs = getelementptr inbounds [2 x i8], ptr %1, i64 %i.fo
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !15
  %i.fu = zext i16 %i.ft to i32
  %i.fv = getelementptr inbounds [2 x i8], ptr %2, i64 %i.fo
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !15
  %i.fx = zext i16 %i.fw to i32
  %i.fy = tail call i32 @llvm.umin.i32(i32 %i.fr, i32 %i.m)
  %i.fz = lshr i32 %i.fy, %i.cq
  %i.ga = trunc nuw i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv123
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !15
  %i.gc = tail call i32 @llvm.umin.i32(i32 %i.fu, i32 %i.m)
  %i.gd = lshr i32 %i.gc, %i.cq
  %i.ge = trunc nuw i32 %i.gd to i16
  %gep146 = getelementptr [2 x i8], ptr %invariant.gep145, i64 %indvars.iv123
  store i16 %i.ge, ptr %gep146, align 2, !tbaa !15
  %i.gf = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 %i.m)
  %i.gg = lshr i32 %i.gf, %i.cq
  %i.gh = trunc nuw i32 %i.gg to i16
  %gep148 = getelementptr [2 x i8], ptr %invariant.gep147, i64 %indvars.iv123
  store i16 %i.gh, ptr %gep148, align 2, !tbaa !15
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count127
  br i1 %exitcond128.not, label %.loopexit, label %.preheader108.split.us, !llvm.loop !62

.preheader108.split:                              ; preds = %.preheader108.split.preheader381, %.preheader108.split
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.preheader108.split ], [ %indvars.iv117.ph, %.preheader108.split.preheader381 ] ; 5 uses
  %i.gi = mul nsw i64 %indvars.iv117, %i.ct       ; 3 uses
  %i.gj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !15
  %i.gl = zext i16 %i.gk to i32
  %i.gm = getelementptr inbounds [2 x i8], ptr %1, i64 %i.gi
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !15
  %i.go = zext i16 %i.gn to i32
  %i.gp = getelementptr inbounds [2 x i8], ptr %2, i64 %i.gi
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !15
  %i.gr = zext i16 %i.gq to i32
  %i.gs = tail call i32 @llvm.umin.i32(i32 %i.gl, i32 %i.m)
  %i.gt = shl i32 %i.gs, %i.l
  %i.gu = trunc i32 %i.gt to i16
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv117
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !15
  %i.gw = tail call i32 @llvm.umin.i32(i32 %i.go, i32 %i.m)
  %i.gx = shl i32 %i.gw, %i.l
  %i.gy = trunc i32 %i.gx to i16
  %gep142 = getelementptr [2 x i8], ptr %invariant.gep145, i64 %indvars.iv117
  store i16 %i.gy, ptr %gep142, align 2, !tbaa !15
  %i.gz = tail call i32 @llvm.umin.i32(i32 %i.gr, i32 %i.m)
  %i.ha = shl i32 %i.gz, %i.l
  %i.hb = trunc i32 %i.ha to i16
  %gep144 = getelementptr [2 x i8], ptr %invariant.gep147, i64 %indvars.iv117
  store i16 %i.hb, ptr %gep144, align 2, !tbaa !15
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count127
  br i1 %exitcond122.not, label %.loopexit, label %.preheader108.split, !llvm.loop !63

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.hc = mul nsw i64 %indvars.iv, %i.bg          ; 3 uses
  %i.hd = getelementptr inbounds [2 x i8], ptr %0, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !15
  %i.hf = zext i16 %i.he to i32
  %i.hg = getelementptr inbounds [2 x i8], ptr %1, i64 %i.hc
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !15
  %i.hi = zext i16 %i.hh to i32
  %i.hj = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hc
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !15
  %i.hl = zext i16 %i.hk to i32
  %i.hm = lshr i32 %i.hf, %.neg
  %i.hn = trunc nuw nsw i32 %i.hm to i16
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !15
  %i.hp = lshr i32 %i.hi, %.neg
  %i.hq = trunc nuw nsw i32 %i.hp to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.hq, ptr %gep, align 2, !tbaa !15
  %i.hr = lshr i32 %i.hl, %.neg
  %i.hs = trunc nuw nsw i32 %i.hr to i16
  %gep140 = getelementptr [2 x i8], ptr %invariant.gep139, i64 %indvars.iv
  store i16 %i.hs, ptr %gep140, align 2, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !64

.loopexit:                                        ; preds = %scalar.ph, %.preheader108.split, %.preheader108.split.us, %scalar.ph317, %middle.block, %middle.block219, %middle.block262, %middle.block372
  %i.ht = and i32 %5, 1
  %.not = icmp eq i32 %i.ht, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.hu = sext i32 %5 to i64
  %i.hv = getelementptr [2 x i8], ptr %6, i64 %i.hu ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 -2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !15
  store i16 %i.hx, ptr %i.hv, align 2, !tbaa !15
  %i.hy = add nsw i32 %i.i, %5
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr [2 x i8], ptr %6, i64 %i.hz ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 -2
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !15
  store i16 %i.ic, ptr %i.ia, align 2, !tbaa !15
  %i.id = shl nsw i32 %i.h, 1
  %i.ie = add nsw i32 %i.id, %5
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr [2 x i8], ptr %6, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 -2
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !15
  store i16 %i.ii, ptr %i.ig, align 2, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @UpdateChroma(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = or disjoint i32 %i.a, 1
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = shl nsw i32 %3, 2                        ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = or disjoint i32 %i.e, 1
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sext i32 %3 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.051 = phi i32 [ 0, %bb.a ], [ %i.cc, %bb.b ]
  %.050 = phi ptr [ %2, %bb.a ], [ %i.bz, %bb.b ] ; 4 uses
  %.049 = phi ptr [ %1, %bb.a ], [ %i.cb, %bb.b ] ; 7 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.ca, %bb.b ]   ; 7 uses
  %i.j = load i16, ptr %.0, align 2, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !15
  %i.m = load i16, ptr %.049, align 2, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !15
  %i.p = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.j, i32 noundef %4, i32 noundef %5) #11
  %i.q = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.l, i32 noundef %4, i32 noundef %5) #11
  %i.r = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.m, i32 noundef %4, i32 noundef %5) #11
  %i.s = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.o, i32 noundef %4, i32 noundef %5) #11
end_hunk_0
