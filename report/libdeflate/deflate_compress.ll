Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_compress?download=true
inline.NumInlined: 64
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 117
begin_hunk_0_@deflate_optimize_and_flush_block:bb.a
.preheader65.i.i:                                 ; preds = %vector.body272
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.r

.preheader63.i.i:                                 ; preds = %bb.r
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 8974480 ; 2 uses
  %i.afa = load <4 x i32>, ptr %i.aez, align 16, !tbaa !31
  %i.afb = add <4 x i32> %i.afa, splat (i32 78)
  %i.afc = lshr <4 x i32> %i.afb, splat (i32 1)
  store <4 x i32> %i.afc, ptr %i.aez, align 16, !tbaa !31
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 8974496 ; 2 uses
  %i.afe = load <4 x i32>, ptr %i.afd, align 32, !tbaa !31
  %i.aff = add <4 x i32> %i.afe, <i32 94, i32 94, i32 110, i32 110>
  %i.afg = lshr <4 x i32> %i.aff, splat (i32 1)
  store <4 x i32> %i.afg, ptr %i.afd, align 32, !tbaa !31
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 8974512 ; 2 uses
  %i.afi = load <4 x i32>, ptr %i.afh, align 16, !tbaa !31
  %i.afj = add <4 x i32> %i.afi, <i32 126, i32 126, i32 142, i32 142>
  %i.afk = lshr <4 x i32> %i.afj, splat (i32 1)
  store <4 x i32> %i.afk, ptr %i.afh, align 16, !tbaa !31
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 8974528 ; 2 uses
  %i.afm = load <4 x i32>, ptr %i.afl, align 32, !tbaa !31
  %i.afn = add <4 x i32> %i.afm, <i32 158, i32 158, i32 174, i32 174>
  %i.afo = lshr <4 x i32> %i.afn, splat (i32 1)
  store <4 x i32> %i.afo, ptr %i.afl, align 32, !tbaa !31
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 8974544 ; 2 uses
  %i.afq = load <4 x i32>, ptr %i.afp, align 16, !tbaa !31
  %i.afr = add <4 x i32> %i.afq, <i32 190, i32 190, i32 206, i32 206>
  %i.afs = lshr <4 x i32> %i.afr, splat (i32 1)
  store <4 x i32> %i.afs, ptr %i.afp, align 16, !tbaa !31
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 8974560 ; 2 uses
  %i.afu = load <4 x i32>, ptr %i.aft, align 32, !tbaa !31
  %i.afv = add <4 x i32> %i.afu, <i32 222, i32 222, i32 238, i32 238>
  %i.afw = lshr <4 x i32> %i.afv, splat (i32 1)
  store <4 x i32> %i.afw, ptr %i.aft, align 32, !tbaa !31
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 8974576 ; 2 uses
  %i.afy = load <4 x i32>, ptr %i.afx, align 16, !tbaa !31
  %i.afz = add <4 x i32> %i.afy, <i32 254, i32 254, i32 270, i32 270>
  %i.aga = lshr <4 x i32> %i.afz, splat (i32 1)
  store <4 x i32> %i.aga, ptr %i.afx, align 16, !tbaa !31
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 8974592 ; 2 uses
  %i.agc = load <2 x i32>, ptr %i.agb, align 32, !tbaa !31
  %i.agd = add <2 x i32> %i.agc, splat (i32 286)
  %i.age = lshr <2 x i32> %i.agd, splat (i32 1)
  store <2 x i32> %i.age, ptr %i.agb, align 32, !tbaa !31
  br label %deflate_set_initial_costs.exit

bb.r:                                             ; preds = %bb.r, %.preheader65.i.i
  %indvars.iv102.i.i = phi i64 [ 3, %.preheader65.i.i ], [ %indvars.iv.next103.i.i.1, %bb.r ] ; 4 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %indvars.iv102.i.i ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv102.i.i
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !30
  %i.agi = zext i8 %i.agh to i64
  %i.agj = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.agi
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !30
  %i.agl = zext i8 %i.agk to i32
  %i.agm = shl nuw nsw i32 %i.agl, 4
  %i.agn = load i32, ptr %i.agf, align 4, !tbaa !31
  %i.ago = add i32 %i.agn, %i.ku
  %i.agp = add i32 %i.ago, %i.agm
  %i.agq = lshr i32 %i.agp, 1
  store i32 %i.agq, ptr %i.agf, align 4, !tbaa !31
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %indvars.iv.next103.i.i ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next103.i.i
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !30
  %i.agu = zext i8 %i.agt to i64
  %i.agv = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.agu
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !30
  %i.agx = zext i8 %i.agw to i32
  %i.agy = shl nuw nsw i32 %i.agx, 4
  %i.agz = load i32, ptr %i.agr, align 4, !tbaa !31
  %i.aha = add i32 %i.agz, %i.ku
  %i.ahb = add i32 %i.aha, %i.agy
  %i.ahc = lshr i32 %i.ahb, 1
  store i32 %i.ahc, ptr %i.agr, align 4, !tbaa !31
  %indvars.iv.next103.i.i.1 = add nuw nsw i64 %indvars.iv102.i.i, 2 ; 2 uses
  %exitcond105.not.i.i.1 = icmp eq i64 %indvars.iv.next103.i.i.1, 259
  br i1 %exitcond105.not.i.i.1, label %.preheader63.i.i, label %bb.r, !llvm.loop !174

.preheader69.i.i:                                 ; preds = %vector.body252
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.s

vector.body260:                                   ; preds = %bb.s
  %i.ahe = getelementptr inbounds nuw i8, ptr %0, i64 8974480 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 8974496 ; 2 uses
  %wide.load264 = load <4 x i32>, ptr %i.ahe, align 16, !tbaa !31
  %wide.load265 = load <4 x i32>, ptr %i.ahf, align 32, !tbaa !31
  %i.ahg = mul <4 x i32> %wide.load264, splat (i32 3)
  %i.ahh = mul <4 x i32> %wide.load265, splat (i32 3)
  %i.ahi = add <4 x i32> %i.ahg, splat (i32 78)
  %i.ahj = add <4 x i32> %i.ahh, <i32 94, i32 94, i32 110, i32 110>
  %i.ahk = lshr <4 x i32> %i.ahi, splat (i32 2)
  %i.ahl = lshr <4 x i32> %i.ahj, splat (i32 2)
  store <4 x i32> %i.ahk, ptr %i.ahe, align 16, !tbaa !31
  store <4 x i32> %i.ahl, ptr %i.ahf, align 32, !tbaa !31
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 8974512 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 8974528 ; 2 uses
  %wide.load264.1 = load <4 x i32>, ptr %i.ahm, align 16, !tbaa !31
  %wide.load265.1 = load <4 x i32>, ptr %i.ahn, align 32, !tbaa !31
  %i.aho = mul <4 x i32> %wide.load264.1, splat (i32 3)
  %i.ahp = mul <4 x i32> %wide.load265.1, splat (i32 3)
  %i.ahq = add <4 x i32> %i.aho, <i32 126, i32 126, i32 142, i32 142>
  %i.ahr = add <4 x i32> %i.ahp, <i32 158, i32 158, i32 174, i32 174>
  %i.ahs = lshr <4 x i32> %i.ahq, splat (i32 2)
  %i.aht = lshr <4 x i32> %i.ahr, splat (i32 2)
  store <4 x i32> %i.ahs, ptr %i.ahm, align 16, !tbaa !31
  store <4 x i32> %i.aht, ptr %i.ahn, align 32, !tbaa !31
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 8974544 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 8974560 ; 2 uses
  %wide.load264.2 = load <4 x i32>, ptr %i.ahu, align 16, !tbaa !31
  %wide.load265.2 = load <4 x i32>, ptr %i.ahv, align 32, !tbaa !31
  %i.ahw = mul <4 x i32> %wide.load264.2, splat (i32 3)
  %i.ahx = mul <4 x i32> %wide.load265.2, splat (i32 3)
  %i.ahy = add <4 x i32> %i.ahw, <i32 190, i32 190, i32 206, i32 206>
  %i.ahz = add <4 x i32> %i.ahx, <i32 222, i32 222, i32 238, i32 238>
  %i.aia = lshr <4 x i32> %i.ahy, splat (i32 2)
  %i.aib = lshr <4 x i32> %i.ahz, splat (i32 2)
  store <4 x i32> %i.aia, ptr %i.ahu, align 16, !tbaa !31
  store <4 x i32> %i.aib, ptr %i.ahv, align 32, !tbaa !31
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 8974576 ; 2 uses
  %i.aid = load i32, ptr %i.aic, align 16, !tbaa !31
  %i.aie = mul i32 %i.aid, 3
  %i.aif = add i32 %i.aie, 254
  %i.aig = lshr i32 %i.aif, 2
  store i32 %i.aig, ptr %i.aic, align 16, !tbaa !31
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 8974580 ; 2 uses
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !31
  %i.aij = mul i32 %i.aii, 3
  %i.aik = add i32 %i.aij, 254
  %i.ail = lshr i32 %i.aik, 2
  store i32 %i.ail, ptr %i.aih, align 4, !tbaa !31
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 8974584 ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !31
  %i.aio = mul i32 %i.ain, 3
  %i.aip = add i32 %i.aio, 270
  %i.aiq = lshr i32 %i.aip, 2
  store i32 %i.aiq, ptr %i.aim, align 8, !tbaa !31
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 8974588 ; 2 uses
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !31
  %i.ait = mul i32 %i.ais, 3
  %i.aiu = add i32 %i.ait, 270
  %i.aiv = lshr i32 %i.aiu, 2
  store i32 %i.aiv, ptr %i.air, align 4, !tbaa !31
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 8974592 ; 2 uses
  %i.aix = load i32, ptr %i.aiw, align 32, !tbaa !31
  %i.aiy = mul i32 %i.aix, 3
  %i.aiz = add i32 %i.aiy, 286
  %i.aja = lshr i32 %i.aiz, 2
  store i32 %i.aja, ptr %i.aiw, align 32, !tbaa !31
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 8974596 ; 2 uses
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !31
  %i.ajd = mul i32 %i.ajc, 3
  %i.aje = add i32 %i.ajd, 286
  %i.ajf = lshr i32 %i.aje, 2
  store i32 %i.ajf, ptr %i.ajb, align 4, !tbaa !31
  br label %deflate_set_initial_costs.exit

bb.s:                                             ; preds = %bb.s, %.preheader69.i.i
  %indvars.iv90.i.i = phi i64 [ 3, %.preheader69.i.i ], [ %indvars.iv.next91.i.i.1, %bb.s ] ; 4 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %indvars.iv90.i.i ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv90.i.i
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !30
  %i.ajj = zext i8 %i.aji to i64
  %i.ajk = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ajj
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !30
  %i.ajm = zext i8 %i.ajl to i32
  %i.ajn = shl nuw nsw i32 %i.ajm, 4
  %i.ajo = add nuw nsw i32 %i.ajn, %i.ku
  %i.ajp = load i32, ptr %i.ajg, align 4, !tbaa !31
  %i.ajq = mul i32 %i.ajp, 3
  %i.ajr = add i32 %i.ajo, %i.ajq
  %i.ajs = lshr i32 %i.ajr, 2
  store i32 %i.ajs, ptr %i.ajg, align 4, !tbaa !31
  %indvars.iv.next91.i.i = add nuw nsw i64 %indvars.iv90.i.i, 1 ; 2 uses
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %indvars.iv.next91.i.i ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next91.i.i
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !30
  %i.ajw = zext i8 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ajw
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !30
  %i.ajz = zext i8 %i.ajy to i32
  %i.aka = shl nuw nsw i32 %i.ajz, 4
  %i.akb = add nuw nsw i32 %i.aka, %i.ku
  %i.akc = load i32, ptr %i.ajt, align 4, !tbaa !31
  %i.akd = mul i32 %i.akc, 3
  %i.ake = add i32 %i.akb, %i.akd
  %i.akf = lshr i32 %i.ake, 2
  store i32 %i.akf, ptr %i.ajt, align 4, !tbaa !31
  %indvars.iv.next91.i.i.1 = add nuw nsw i64 %indvars.iv90.i.i, 2 ; 2 uses
  %exitcond93.not.i.i.1 = icmp eq i64 %indvars.iv.next91.i.i.1, 259
  br i1 %exitcond93.not.i.i.1, label %vector.body260, label %bb.s, !llvm.loop !174

deflate_set_initial_costs.exit:                   ; preds = %vector.body260, %vector.body290, %deflate_set_default_costs.exit.i, %deflate_set_default_costs.exit.i.i, %.preheader.i12.i, %.preheader63.i.i
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 9011688
  %i.akh = getelementptr inbounds nuw i8, ptr %0, i64 8974608 ; 2 uses
  %i.aki = getelementptr i8, ptr %0, i64 8972420  ; 18 uses
  %i.akj = getelementptr i8, ptr %0, i64 8973444  ; 12 uses
  %i.akk = getelementptr i8, ptr %0, i64 8974480  ; 16 uses
  %scevgep = getelementptr i8, ptr %0, i64 8974600
  %scevgep325 = getelementptr i8, ptr %0, i64 3006
  %scevgep341 = getelementptr i8, ptr %0, i64 2944
  %bound0342 = icmp ult ptr %i.aki, %scevgep341
  %bound1343 = icmp ult ptr %i.an, %i.akj
  %found.conflict344 = and i1 %bound0342, %bound1343
  %bound0326 = icmp ult ptr %i.akk, %scevgep325
  %bound1327 = icmp ult ptr %i.ap, %scevgep
  %found.conflict328 = and i1 %bound0326, %bound1327
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 2980
  %i.akm = getelementptr i8, ptr %0, i64 8974496
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 2988
  %i.akp = getelementptr i8, ptr %0, i64 8974512
  %i.akq = getelementptr i8, ptr %0, i64 8974528
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 2996
  %i.akt = getelementptr i8, ptr %0, i64 8974544
  %i.aku = getelementptr i8, ptr %0, i64 8974560
  br label %bb.t

bb.t:                                             ; preds = %deflate_set_costs_from_codes.exit110, %deflate_set_initial_costs.exit
  %.080 = phi i32 [ %i.b, %deflate_set_initial_costs.exit ], [ %i.aop, %deflate_set_costs_from_codes.exit110 ]
  %.079 = phi i32 [ -1, %deflate_set_initial_costs.exit ], [ %i.akv, %deflate_set_costs_from_codes.exit110 ] ; 2 uses
  tail call fastcc void @deflate_find_min_cost_path(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %4)
  %i.akv = tail call fastcc i32 @deflate_compute_true_cost(ptr noundef nonnull %0) ; 4 uses
  %i.akw = load i32, ptr %i.akg, align 8, !tbaa !30
  %i.akx = add i32 %i.akw, %i.akv
  %i.aky = icmp ugt i32 %i.akx, %.079
  br i1 %i.aky, label %bb.u, label %vector.memcheck340

vector.memcheck340:                               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2188) %i.akh, ptr noundef nonnull align 4 dereferenceable(2188) %i.aki, i64 2188, i1 false), !tbaa.struct !216
  br i1 %found.conflict344, label %scalar.ph345, label %vector.body347

vector.body347:                                   ; preds = %vector.memcheck340, %vector.body347
  %index348 = phi i64 [ %index.next351, %vector.body347 ], [ 0, %vector.memcheck340 ] ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.an, i64 %index348 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 4
  %wide.load349 = load <4 x i8>, ptr %i.akz, align 1, !tbaa !30, !alias.scope !223 ; 2 uses
  %wide.load350 = load <4 x i8>, ptr %i.ala, align 1, !tbaa !30, !alias.scope !223 ; 2 uses
  %i.alb = icmp eq <4 x i8> %wide.load349, zeroinitializer
  %i.alc = icmp eq <4 x i8> %wide.load350, zeroinitializer
  %i.ald = zext <4 x i8> %wide.load349 to <4 x i32>
  %i.ale = zext <4 x i8> %wide.load350 to <4 x i32>
  %i.alf = shl nuw nsw <4 x i32> %i.ald, splat (i32 4)
  %i.alg = shl nuw nsw <4 x i32> %i.ale, splat (i32 4)
  %i.alh = select <4 x i1> %i.alb, <4 x i32> splat (i32 208), <4 x i32> %i.alf
  %i.ali = select <4 x i1> %i.alc, <4 x i32> splat (i32 208), <4 x i32> %i.alg
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %index348 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 16
  store <4 x i32> %i.alh, ptr %i.alj, align 4, !tbaa !30, !alias.scope !224, !noalias !223
  store <4 x i32> %i.ali, ptr %i.alk, align 4, !tbaa !30, !alias.scope !224, !noalias !223
  %index.next351 = add nuw i64 %index348, 8       ; 2 uses
  %i.all = icmp eq i64 %index.next351, 256
  br i1 %i.all, label %.preheader40.i96.preheader, label %vector.body347, !llvm.loop !181

scalar.ph345:                                     ; preds = %vector.memcheck340, %scalar.ph345
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i94.1, %scalar.ph345 ], [ 0, %vector.memcheck340 ] ; 4 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.i92
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !30 ; 2 uses
  %.not37.i93 = icmp eq i8 %i.aln, 0
  %i.alo = zext i8 %i.aln to i32
  %i.alp = shl nuw nsw i32 %i.alo, 4
  %i.alq = select i1 %.not37.i93, i32 208, i32 %i.alp
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %indvars.iv.i92
  store i32 %i.alq, ptr %i.alr, align 4, !tbaa !30
  %indvars.iv.next.i94 = or disjoint i64 %indvars.iv.i92, 1 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i94
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !30 ; 2 uses
  %.not37.i93.1 = icmp eq i8 %i.alt, 0
  %i.alu = zext i8 %i.alt to i32
  %i.alv = shl nuw nsw i32 %i.alu, 4
  %i.alw = select i1 %.not37.i93.1, i32 208, i32 %i.alv
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %indvars.iv.next.i94
  store i32 %i.alw, ptr %i.alx, align 4, !tbaa !30
  %indvars.iv.next.i94.1 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %exitcond.not.i95.1 = icmp eq i64 %indvars.iv.next.i94.1, 256
  br i1 %exitcond.not.i95.1, label %.preheader40.i96.preheader, label %scalar.ph345, !llvm.loop !182

.preheader40.i96.preheader:                       ; preds = %vector.body347, %scalar.ph345
  br label %.preheader40.i96

.preheader40.i96:                                 ; preds = %.preheader40.i96, %.preheader40.i96.preheader
  %indvars.iv45.i97 = phi i64 [ 3, %.preheader40.i96.preheader ], [ %indvars.iv.next46.i101.1, %.preheader40.i96 ] ; 4 uses
  %i.aly = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv45.i97
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !30
  %i.ama = zext i8 %i.alz to i64                  ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ama
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 257
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !30 ; 2 uses
  %.not36.i98 = icmp eq i8 %i.amd, 0
  %narrow39.i99 = select i1 %.not36.i98, i8 13, i8 %i.amd
  %spec.select.i100 = zext i8 %narrow39.i99 to i32
  %i.ame = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ama
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !30
  %i.amg = zext i8 %i.amf to i32
  %i.amh = add nuw nsw i32 %spec.select.i100, %i.amg
  %i.ami = shl nuw nsw i32 %i.amh, 4
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.akj, i64 %indvars.iv45.i97
  store i32 %i.ami, ptr %i.amj, align 4, !tbaa !30
  %indvars.iv.next46.i101 = add nuw nsw i64 %indvars.iv45.i97, 1 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next46.i101
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !30
  %i.amm = zext i8 %i.aml to i64                  ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.amm
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 257
  %i.amp = load i8, ptr %i.amo, align 1, !tbaa !30 ; 2 uses
  %.not36.i98.1 = icmp eq i8 %i.amp, 0
  %narrow39.i99.1 = select i1 %.not36.i98.1, i8 13, i8 %i.amp
  %spec.select.i100.1 = zext i8 %narrow39.i99.1 to i32
  %i.amq = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.amm
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !30
  %i.ams = zext i8 %i.amr to i32
  %i.amt = add nuw nsw i32 %spec.select.i100.1, %i.ams
  %i.amu = shl nuw nsw i32 %i.amt, 4
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.akj, i64 %indvars.iv.next46.i101
  store i32 %i.amu, ptr %i.amv, align 4, !tbaa !30
  %indvars.iv.next46.i101.1 = add nuw nsw i64 %indvars.iv45.i97, 2 ; 2 uses
  %exitcond48.not.i102.1 = icmp eq i64 %indvars.iv.next46.i101.1, 259
  br i1 %exitcond48.not.i102.1, label %vector.memcheck324, label %.preheader40.i96, !llvm.loop !165

vector.memcheck324:                               ; preds = %.preheader40.i96
  br i1 %found.conflict328, label %.preheader.i103.preheader, label %vector.body331

vector.body331:                                   ; preds = %vector.memcheck324
  %wide.load333 = load <4 x i8>, ptr %i.ap, align 32, !tbaa !30, !alias.scope !225 ; 2 uses
  %wide.load334 = load <4 x i8>, ptr %i.akl, align 4, !tbaa !30, !alias.scope !225 ; 2 uses
  %i.amw = icmp eq <4 x i8> %wide.load333, zeroinitializer
  %i.amx = icmp eq <4 x i8> %wide.load334, zeroinitializer
  %i.amy = select <4 x i1> %i.amw, <4 x i8> splat (i8 10), <4 x i8> %wide.load333
  %i.amz = select <4 x i1> %i.amx, <4 x i8> splat (i8 10), <4 x i8> %wide.load334
  %i.ana = zext <4 x i8> %i.amy to <4 x i32>
  %i.anb = zext <4 x i8> %i.amz to <4 x i32>
  %i.anc = add nuw nsw <4 x i32> %i.anb, <i32 1, i32 1, i32 2, i32 2>
  %i.and = shl nuw nsw <4 x i32> %i.ana, splat (i32 4)
  %i.ane = shl nuw nsw <4 x i32> %i.anc, splat (i32 4)
  store <4 x i32> %i.and, ptr %i.akk, align 16, !tbaa !30, !alias.scope !226, !noalias !225
  store <4 x i32> %i.ane, ptr %i.akm, align 32, !tbaa !30, !alias.scope !226, !noalias !225
  %wide.load333.1 = load <4 x i8>, ptr %i.akn, align 8, !tbaa !30, !alias.scope !225 ; 2 uses
  %wide.load334.1 = load <4 x i8>, ptr %i.ako, align 4, !tbaa !30, !alias.scope !225 ; 2 uses
  %i.anf = icmp eq <4 x i8> %wide.load333.1, zeroinitializer
  %i.ang = icmp eq <4 x i8> %wide.load334.1, zeroinitializer
  %i.anh = select <4 x i1> %i.anf, <4 x i8> splat (i8 10), <4 x i8> %wide.load333.1
  %i.ani = select <4 x i1> %i.ang, <4 x i8> splat (i8 10), <4 x i8> %wide.load334.1
  %i.anj = zext <4 x i8> %i.anh to <4 x i32>
  %i.ank = zext <4 x i8> %i.ani to <4 x i32>
  %i.anl = add nuw nsw <4 x i32> %i.anj, <i32 3, i32 3, i32 4, i32 4>
  %i.anm = add nuw nsw <4 x i32> %i.ank, <i32 5, i32 5, i32 6, i32 6>
  %i.ann = shl nuw nsw <4 x i32> %i.anl, splat (i32 4)
  %i.ano = shl nuw nsw <4 x i32> %i.anm, splat (i32 4)
  store <4 x i32> %i.ann, ptr %i.akp, align 16, !tbaa !30, !alias.scope !226, !noalias !225
  store <4 x i32> %i.ano, ptr %i.akq, align 32, !tbaa !30, !alias.scope !226, !noalias !225
  %wide.load333.2 = load <4 x i8>, ptr %i.akr, align 16, !tbaa !30, !alias.scope !225 ; 2 uses
  %wide.load334.2 = load <4 x i8>, ptr %i.aks, align 4, !tbaa !30, !alias.scope !225 ; 2 uses
  %i.anp = icmp eq <4 x i8> %wide.load333.2, zeroinitializer
  %i.anq = icmp eq <4 x i8> %wide.load334.2, zeroinitializer
  %i.anr = select <4 x i1> %i.anp, <4 x i8> splat (i8 10), <4 x i8> %wide.load333.2
  %i.ans = select <4 x i1> %i.anq, <4 x i8> splat (i8 10), <4 x i8> %wide.load334.2
  %i.ant = zext <4 x i8> %i.anr to <4 x i32>
  %i.anu = zext <4 x i8> %i.ans to <4 x i32>
  %i.anv = add nuw nsw <4 x i32> %i.ant, <i32 7, i32 7, i32 8, i32 8>
  %i.anw = add nuw nsw <4 x i32> %i.anu, <i32 9, i32 9, i32 10, i32 10>
  %i.anx = shl nuw nsw <4 x i32> %i.anv, splat (i32 4)
  %i.any = shl nuw nsw <4 x i32> %i.anw, splat (i32 4)
  store <4 x i32> %i.anx, ptr %i.akt, align 16, !tbaa !30, !alias.scope !226, !noalias !225
  store <4 x i32> %i.any, ptr %i.aku, align 32, !tbaa !30, !alias.scope !226, !noalias !225
  br label %.preheader.i103.preheader

.preheader.i103.preheader:                        ; preds = %vector.body331, %vector.memcheck324
  %indvars.iv49.i104.ph = phi i64 [ 0, %vector.memcheck324 ], [ 24, %vector.body331 ]
  br label %.preheader.i103

.preheader.i103:                                  ; preds = %.preheader.i103, %.preheader.i103.preheader
  %indvars.iv49.i104 = phi i64 [ %indvars.iv49.i104.ph, %.preheader.i103.preheader ], [ %indvars.iv.next50.i108.1, %.preheader.i103 ] ; 5 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv49.i104
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !30 ; 2 uses
  %.not.i105 = icmp eq i8 %i.aoa, 0
  %narrow.i106 = select i1 %.not.i105, i8 10, i8 %i.aoa
  %spec.select38.i107 = zext i8 %narrow.i106 to i32
  %i.aob = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv49.i104
  %i.aoc = load i8, ptr %i.aob, align 2, !tbaa !30
  %i.aod = zext i8 %i.aoc to i32
  %i.aoe = add nuw nsw i32 %spec.select38.i107, %i.aod
  %i.aof = shl nuw nsw i32 %i.aoe, 4
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %i.akk, i64 %indvars.iv49.i104
  store i32 %i.aof, ptr %i.aog, align 4, !tbaa !30
  %indvars.iv.next50.i108 = or disjoint i64 %indvars.iv49.i104, 1 ; 3 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.next50.i108
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !30 ; 2 uses
  %.not.i105.1 = icmp eq i8 %i.aoi, 0
  %narrow.i106.1 = select i1 %.not.i105.1, i8 10, i8 %i.aoi
  %spec.select38.i107.1 = zext i8 %narrow.i106.1 to i32
  %i.aoj = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.next50.i108
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !30
  %i.aol = zext i8 %i.aok to i32
  %i.aom = add nuw nsw i32 %spec.select38.i107.1, %i.aol
  %i.aon = shl nuw nsw i32 %i.aom, 4
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.akk, i64 %indvars.iv.next50.i108
  store i32 %i.aon, ptr %i.aoo, align 4, !tbaa !30
  %indvars.iv.next50.i108.1 = add nuw nsw i64 %indvars.iv49.i104, 2 ; 2 uses
  %exitcond52.not.i109.1 = icmp eq i64 %indvars.iv.next50.i108.1, 30
  br i1 %exitcond52.not.i109.1, label %deflate_set_costs_from_codes.exit110, label %.preheader.i103, !llvm.loop !186

deflate_set_costs_from_codes.exit110:             ; preds = %.preheader.i103
  %i.aop = add i32 %.080, -1                      ; 2 uses
  %.not85 = icmp eq i32 %i.aop, 0
  br i1 %.not85, label %bb.u, label %bb.t, !llvm.loop !187
end_hunk_0
