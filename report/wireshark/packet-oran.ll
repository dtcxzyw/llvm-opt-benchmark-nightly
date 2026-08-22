Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-oran?download=true
inline.NumInlined: 214
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@dissect_oran:bb.a
  store i32 0, ptr %i.ac, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #14
  store i16 0, ptr %i.ad, align 2
  %i.aei = load i32, ptr %i.d, align 4            ; 2 uses
  %i.aej = load i32, ptr %i.q, align 4
  %i.aek = call fastcc i32 @dissect_udcompparam(ptr noundef %.1428.i, ptr noundef %i.aeh, i32 noundef %i.aei, i32 noundef %i.aej, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, i1 noundef zeroext false) ; 3 uses
  store i32 %i.aek, ptr %i.d, align 4
  %i.ael = load i32, ptr %i.u, align 4
  %i.aem = load i32, ptr %i.s, align 4
  %i.aen = add i32 %i.aem, 1
  %i.aeo = mul i32 %i.aen, %.044568.i
  %i.aep = add i32 %i.aeo, %i.ael
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aef, ptr noundef nonnull @.str.1507, i32 noundef %i.aep)
  %i.aeq = load i32, ptr %i.q, align 4            ; 2 uses
  %i.aer = icmp ugt i32 %i.aeq, 4
  br i1 %i.aer, label %bb.dz, label %bb.ef

bb.dz:                                            ; preds = %bb.dy
  %i.aes = icmp ult i32 %i.aeq, 7
  br i1 %i.aes, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.aet = load i16, ptr %i.ad, align 2
  br label %bb.ee

bb.eb:                                            ; preds = %bb.dz
  %i.aeu = load i32, ptr %i.s, align 4
  %i.aev = icmp eq i32 %i.aeu, 1
  %i.aew = and i32 %.044568.i, 1
  %i.aex = icmp eq i32 %i.aew, 0
  %or.cond552.i = or i1 %i.aex, %i.aev
  br i1 %or.cond552.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.aey = load i64, ptr %i.aa, align 8
  %i.aez = trunc i64 %i.aey to i16
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.afa = load i64, ptr %i.ab, align 8
  %i.afb = trunc i64 %i.afa to i16
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.ea
  %.0440.i = phi i16 [ %i.aet, %bb.ea ], [ %i.aez, %bb.ec ], [ %i.afb, %bb.ed ]
  %i.afc = zext i16 %.0440.i to i32               ; 13 uses
  %i.afd = and i32 %i.afc, 1
  %i.afe = lshr i32 %i.afc, 1
  %i.aff = and i32 %i.afe, 1
  %spec.select553.1.i = add nuw nsw i32 %i.aff, %i.afd
  %i.afg = lshr i32 %i.afc, 2
  %i.afh = and i32 %i.afg, 1
  %spec.select553.2.i = add nuw nsw i32 %spec.select553.1.i, %i.afh
  %i.afi = lshr i32 %i.afc, 3
  %i.afj = and i32 %i.afi, 1
  %spec.select553.3.i = add nuw nsw i32 %spec.select553.2.i, %i.afj
  %i.afk = lshr i32 %i.afc, 4
  %i.afl = and i32 %i.afk, 1
  %spec.select553.4.i = add nuw nsw i32 %spec.select553.3.i, %i.afl
  %i.afm = lshr i32 %i.afc, 5
  %i.afn = and i32 %i.afm, 1
  %spec.select553.5.i = add nuw nsw i32 %spec.select553.4.i, %i.afn
  %i.afo = lshr i32 %i.afc, 6
  %i.afp = and i32 %i.afo, 1
  %spec.select553.6.i = add nuw nsw i32 %spec.select553.5.i, %i.afp
  %i.afq = lshr i32 %i.afc, 7
  %i.afr = and i32 %i.afq, 1
  %spec.select553.7.i = add nuw nsw i32 %spec.select553.6.i, %i.afr
  %i.afs = lshr i32 %i.afc, 8
  %i.aft = and i32 %i.afs, 1
  %spec.select553.8.i = add nuw nsw i32 %spec.select553.7.i, %i.aft
  %i.afu = lshr i32 %i.afc, 9
  %i.afv = and i32 %i.afu, 1
  %spec.select553.9.i = add nuw nsw i32 %spec.select553.8.i, %i.afv
  %i.afw = lshr i32 %i.afc, 10
  %i.afx = and i32 %i.afw, 1
  %spec.select553.10.i = add nuw nsw i32 %spec.select553.9.i, %i.afx
  %i.afy = lshr i32 %i.afc, 11
  %i.afz = and i32 %i.afy, 1
  %spec.select553.11.i = add nuw nsw i32 %spec.select553.10.i, %i.afz
  %i.aga = shl nuw nsw i32 %spec.select553.11.i, 1
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.dy
  %.2444.i = phi i32 [ %i.aga, %bb.ee ], [ 24, %bb.dy ]
  %.1441.i = phi i32 [ %i.afc, %bb.ee ], [ 4095, %bb.dy ]
  %i.agb = load i32, ptr %i.p, align 4
  %i.agc = mul i32 %i.agb, %.2444.i
  %i.agd = add i32 %i.agc, 6
  %i.age = lshr i32 %i.agd, 3                     ; 5 uses
  %i.agf = load i32, ptr @hf_oran_iq_user_data, align 4
  %i.agg = call ptr @proto_tree_add_item(ptr noundef %i.aeh, i32 noundef %i.agf, ptr noundef %.1428.i, i32 noundef %i.aek, i32 noundef %i.age, i32 noundef 0) ; 0 uses
  br i1 %.not535.i, label %proto_item_set_generated.exit594.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.agh = load i32, ptr %i.u, align 4
  %i.agi = load i32, ptr %i.s, align 4
  %i.agj = add i32 %i.agi, 1
  %i.agk = mul i32 %i.agj, %.044568.i
  %i.agl = add i32 %i.agk, %i.agh                 ; 2 uses
  %i.agm = icmp ult i32 %i.agl, 273
  br i1 %i.agm, label %bb.eh, label %proto_item_set_generated.exit594.i

bb.eh:                                            ; preds = %bb.eg
  %i.agn = load i32, ptr @hf_oran_beamId, align 4
  %i.ago = zext nneg i32 %i.agl to i64
  %i.agp = getelementptr [2 x i8], ptr %i.adw, i64 %i.ago
  %i.agq = load i16, ptr %i.agp, align 2
  %i.agr = zext i16 %i.agq to i32
  %i.ags = call ptr @proto_tree_add_uint(ptr noundef %i.aeh, i32 noundef %i.agn, ptr noundef %.1428.i, i32 noundef 0, i32 noundef 0, i32 noundef %i.agr) ; 2 uses
  %.not.i592.i = icmp eq ptr %i.ags, null
  br i1 %.not.i592.i, label %proto_item_set_generated.exit594.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.agt = getelementptr i8, ptr %i.ags, i64 40
  %i.agu = load ptr, ptr %i.agt, align 8          ; 2 uses
  %.not5.i593.i = icmp eq ptr %i.agu, null
  br i1 %.not5.i593.i, label %proto_item_set_generated.exit594.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.agv = getelementptr i8, ptr %i.agu, i64 28   ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 4
  %i.agx = or i32 %i.agw, 2
  store i32 %i.agx, ptr %i.agv, align 4
  br label %proto_item_set_generated.exit594.i

proto_item_set_generated.exit594.i:               ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef
  store i8 0, ptr %i.nv, align 4
  %i.agy = load i8, ptr @pref_showIQSampleValues, align 1, !range !6, !noundef !7
  %i.agz = trunc nuw i8 %i.agy to i1
  br i1 %i.agz, label %bb.ek, label %proto_item_set_hidden.exit603.i

bb.ek:                                            ; preds = %proto_item_set_generated.exit594.i
  %i.aha = load i32, ptr %i.d, align 4            ; 3 uses
  %i.ahb = shl i32 %i.aha, 3                      ; 2 uses
  %i.ahc = load i32, ptr %i.q, align 4            ; 2 uses
  %i.ahd = icmp ugt i32 %i.ahc, 4
  br i1 %i.ahd, label %.preheader.i, label %.preheader39.i

.preheader.i:                                     ; preds = %bb.ek, %bb.fe
  %.043165.i = phi i32 [ %i.aln, %bb.fe ], [ 1, %bb.ek ] ; 6 uses
  %.043264.i = phi i32 [ %.1433.i, %bb.fe ], [ 0, %bb.ek ] ; 2 uses
  %.043663.i = phi i32 [ %.1437.i, %bb.fe ], [ %i.ahb, %bb.ek ] ; 5 uses
  %i.ahe = add nsw i32 %.043165.i, -1
  %i.ahf = shl nuw nsw i32 1, %i.ahe
  %i.ahg = and i32 %i.ahf, %.1441.i
  %.not536.i = icmp eq i32 %i.ahg, 0
  br i1 %.not536.i, label %bb.fe, label %bb.el

bb.el:                                            ; preds = %.preheader.i
  %i.ahh = load i32, ptr %i.p, align 4            ; 9 uses
  %i.ahi = load i32, ptr %i.q, align 4            ; 2 uses
  %i.ahj = load i32, ptr %i.ac, align 4           ; 2 uses
  %i.ahk = call i32 @tvb_get_bits32(ptr noundef %.1428.i, i32 noundef %.043663.i, i32 noundef %i.ahh, i32 noundef 0) ; 7 uses
  switch i32 %i.ahi, label %decompress_value.exit636.i [
    i32 0, label %bb.em
    i32 1, label %bb.en
    i32 5, label %bb.en
    i32 6, label %bb.ep
    i32 4, label %bb.ep
  ]

bb.em:                                            ; preds = %bb.el
  %i.ahl = trunc i32 %i.ahk to i16
  %i.ahm = load i8, ptr @show_unscaled_values, align 1, !range !6, !noundef !7
  %i.ahn = trunc nuw i8 %i.ahm to i1
  %i.aho = sitofp i16 %i.ahl to float             ; 2 uses
  %i.ahp = fdiv float %i.aho, 3.276700e+04
  %.0.i.i635.i = select i1 %i.ahn, float %i.aho, float %i.ahp
  br label %decompress_value.exit636.i

bb.en:                                            ; preds = %bb.el, %bb.el
  %i.ahq = and i32 %i.ahh, 255                    ; 2 uses
  %i.ahr = add nsw i32 %i.ahq, -1                 ; 2 uses
  %i.ahs = shl nuw i32 1, %i.ahr
  %.not58.i632.i = icmp slt i32 %i.ahk, %i.ahs
  %.neg59.i633.i = shl nsw i32 -1, %i.ahq
  %i.aht = select i1 %.not58.i632.i, i32 0, i32 %.neg59.i633.i
  %.051.i634.i = add i32 %i.aht, %i.ahk
  %i.ahu = shl i32 %.051.i634.i, %i.ahj
  %i.ahv = load i8, ptr @show_unscaled_values, align 1, !range !6, !noundef !7
  %i.ahw = trunc nuw i8 %i.ahv to i1
  %i.ahx = sitofp i32 %i.ahu to float             ; 2 uses
  br i1 %i.ahw, label %decompress_value.exit636.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ahy = shl i32 32768, %i.ahr
  %i.ahz = uitofp i32 %i.ahy to float
  %i.aia = fdiv float %i.ahx, %i.ahz
  br label %decompress_value.exit636.i

bb.ep:                                            ; preds = %bb.el, %bb.el
  br i1 %.not34.i, label %.loopexit.i617.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aib = load i32, ptr %i.adx, align 4          ; 2 uses
  %.not.i624.i = icmp eq i32 %i.aib, 0
  br i1 %.not.i624.i, label %.loopexit.i617.i, label %.preheader.i625.i

.preheader.i625.i:                                ; preds = %bb.eq
  %4 = lshr exact i32 4096, %.043165.i
  %wide.trip.count.i627.i = zext i32 %i.aib to i64
  br label %bb.es

bb.er:                                            ; preds = %bb.es
  %indvars.iv.next.i630.i = add nuw nsw i64 %indvars.iv.i628.i, 1 ; 2 uses
  %exitcond.not.i631.i = icmp eq i64 %indvars.iv.next.i630.i, %wide.trip.count.i627.i
  br i1 %exitcond.not.i631.i, label %.loopexit.i617.i, label %bb.es, !llvm.loop !11

bb.es:                                            ; preds = %bb.er, %.preheader.i625.i
  %indvars.iv.i628.i = phi i64 [ 0, %.preheader.i625.i ], [ %indvars.iv.next.i630.i, %bb.er ] ; 3 uses
  %i.aic = getelementptr [8 x i8], ptr %i.ady, i64 %indvars.iv.i628.i
  %i.aid = load i16, ptr %i.aic, align 4
  %i.aie = zext i16 %i.aid to i32
  %i.aif = and i32 %4, %i.aie
  %.not56.i629.i = icmp eq i32 %i.aif, 0
  br i1 %.not56.i629.i, label %bb.er, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aig = getelementptr [8 x i8], ptr %i.ady, i64 %indvars.iv.i628.i ; 2 uses
  %i.aih = getelementptr i8, ptr %i.aig, i64 2
  %i.aii = load i8, ptr %i.aih, align 2, !range !6, !noundef !7
  %i.aij = getelementptr i8, ptr %i.aig, i64 4
  %i.aik = load float, ptr %i.aij, align 4
  %i.ail = trunc nuw i8 %i.aii to i1
  br label %.loopexit.i617.i

.loopexit.i617.i:                                 ; preds = %bb.er, %bb.et, %bb.eq, %bb.ep
  %.150.i618.i = phi i1 [ false, %bb.ep ], [ false, %bb.eq ], [ %i.ail, %bb.et ], [ false, %bb.er ]
  %.148.i619.i = phi float [ 2.048000e+03, %bb.ep ], [ 2.048000e+03, %bb.eq ], [ %i.aik, %bb.et ], [ 2.048000e+03, %bb.er ]
  %i.aim = and i32 %i.ahh, 255                    ; 3 uses
  %i.ain = add nsw i32 %i.aim, -1
  %i.aio = shl nuw i32 1, %i.ain                  ; 2 uses
  %.not57.i620.i = icmp slt i32 %i.ahk, %i.aio
  %.neg.i621.i = shl nsw i32 -1, %i.aim
  %i.aip = select i1 %.not57.i620.i, i32 0, i32 %.neg.i621.i
  %.045.i622.i = add i32 %i.aip, %i.ahk
  %i.aiq = sitofp i32 %.045.i622.i to float
  %i.air = sitofp i32 %i.aio to float
  %i.ais = fdiv float %i.aiq, %i.air
  %i.ait = shl nuw i32 1, %i.aim
  %i.aiu = sitofp i32 %i.ait to float
  %i.aiv = fdiv nnan float 1.000000e+00, %i.aiu
  %i.aiw = select i1 %.150.i618.i, float %i.aiv, float 0.000000e+00
  %i.aix = fadd float %i.ais, %i.aiw
  %i.aiy = fmul float %.148.i619.i, %i.aix
  %i.aiz = fmul float %i.aiy, f0x3FB504F3
  br label %decompress_value.exit636.i

decompress_value.exit636.i:                       ; preds = %.loopexit.i617.i, %bb.eo, %bb.en, %bb.em, %bb.el
  %.1.i623.i = phi float [ 0.000000e+00, %bb.el ], [ %.0.i.i635.i, %bb.em ], [ %i.aiz, %.loopexit.i617.i ], [ %i.aia, %bb.eo ], [ %i.ahx, %bb.en ] ; 2 uses
  %i.aja = srem i32 %.043663.i, 8
  %i.ajb = add i32 %i.ahh, 7                      ; 2 uses
  %i.ajc = add i32 %i.ajb, %i.aja
  %i.ajd = lshr i32 %i.ajc, 3
  %i.aje = load i32, ptr @hf_oran_iSample, align 4
  %i.ajf = sdiv i32 %.043663.i, 8
  %i.ajg = call ptr @proto_tree_add_float(ptr noundef %i.aeh, i32 noundef %i.aje, ptr noundef %.1428.i, i32 noundef %i.ajf, i32 noundef %i.ajd, float noundef %.1.i623.i)
  %i.ajh = fpext float %.1.i623.i to double
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ajg, ptr noundef nonnull @.str.1532, double noundef %i.ajh, i32 noundef %i.ahk, i32 noundef range(i32 0, 13) %.043165.i)
  %i.aji = add i32 %i.ahh, %.043663.i             ; 4 uses
  %i.ajj = call i32 @tvb_get_bits32(ptr noundef %.1428.i, i32 noundef %i.aji, i32 noundef %i.ahh, i32 noundef 0) ; 7 uses
  switch i32 %i.ahi, label %decompress_value.exit.i [
    i32 0, label %bb.eu
    i32 1, label %bb.ev
    i32 5, label %bb.ev
    i32 6, label %bb.ex
    i32 4, label %bb.ex
  ]

bb.eu:                                            ; preds = %decompress_value.exit636.i
  %i.ajk = trunc i32 %i.ajj to i16
  %i.ajl = load i8, ptr @show_unscaled_values, align 1, !range !6, !noundef !7
  %i.ajm = trunc nuw i8 %i.ajl to i1
  %i.ajn = sitofp i16 %i.ajk to float             ; 2 uses
  %i.ajo = fdiv float %i.ajn, 3.276700e+04
  %.0.i.i615.i = select i1 %i.ajm, float %i.ajn, float %i.ajo
  br label %decompress_value.exit.i

bb.ev:                                            ; preds = %decompress_value.exit636.i, %decompress_value.exit636.i
  %i.ajp = and i32 %i.ahh, 255                    ; 2 uses
  %i.ajq = add nsw i32 %i.ajp, -1                 ; 2 uses
  %i.ajr = shl nuw i32 1, %i.ajq
  %.not58.i.i = icmp slt i32 %i.ajj, %i.ajr
  %.neg59.i.i = shl nsw i32 -1, %i.ajp
  %i.ajs = select i1 %.not58.i.i, i32 0, i32 %.neg59.i.i
  %.051.i.i = add i32 %i.ajs, %i.ajj
  %i.ajt = shl i32 %.051.i.i, %i.ahj
  %i.aju = load i8, ptr @show_unscaled_values, align 1, !range !6, !noundef !7
  %i.ajv = trunc nuw i8 %i.aju to i1
  %i.ajw = sitofp i32 %i.ajt to float             ; 2 uses
  br i1 %i.ajv, label %decompress_value.exit.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ajx = shl i32 32768, %i.ajq
  %i.ajy = uitofp i32 %i.ajx to float
  %i.ajz = fdiv float %i.ajw, %i.ajy
  br label %decompress_value.exit.i

bb.ex:                                            ; preds = %decompress_value.exit636.i, %decompress_value.exit636.i
  br i1 %.not34.i, label %.loopexit.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aka = load i32, ptr %i.adx, align 4          ; 2 uses
  %.not.i609.i = icmp eq i32 %i.aka, 0
  br i1 %.not.i609.i, label %.loopexit.i.i, label %.preheader.i610.i

.preheader.i610.i:                                ; preds = %bb.ey
  %5 = lshr exact i32 4096, %.043165.i
  %wide.trip.count.i611.i = zext i32 %i.aka to i64
  br label %bb.fa

bb.ez:                                            ; preds = %bb.fa
  %indvars.iv.next.i613.i = add nuw nsw i64 %indvars.iv.i612.i, 1 ; 2 uses
  %exitcond.not.i614.i = icmp eq i64 %indvars.iv.next.i613.i, %wide.trip.count.i611.i
  br i1 %exitcond.not.i614.i, label %.loopexit.i.i, label %bb.fa, !llvm.loop !11

bb.fa:                                            ; preds = %bb.ez, %.preheader.i610.i
  %indvars.iv.i612.i = phi i64 [ 0, %.preheader.i610.i ], [ %indvars.iv.next.i613.i, %bb.ez ] ; 3 uses
  %i.akb = getelementptr [8 x i8], ptr %i.ady, i64 %indvars.iv.i612.i
  %i.akc = load i16, ptr %i.akb, align 4
  %i.akd = zext i16 %i.akc to i32
  %i.ake = and i32 %5, %i.akd
  %.not56.i.i = icmp eq i32 %i.ake, 0
  br i1 %.not56.i.i, label %bb.ez, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.akf = getelementptr [8 x i8], ptr %i.ady, i64 %indvars.iv.i612.i ; 2 uses
  %i.akg = getelementptr i8, ptr %i.akf, i64 2
  %i.akh = load i8, ptr %i.akg, align 2, !range !6, !noundef !7
  %i.aki = getelementptr i8, ptr %i.akf, i64 4
  %i.akj = load float, ptr %i.aki, align 4
  %i.akk = trunc nuw i8 %i.akh to i1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ez, %bb.fb, %bb.ey, %bb.ex
  %.150.i.i = phi i1 [ false, %bb.ex ], [ false, %bb.ey ], [ %i.akk, %bb.fb ], [ false, %bb.ez ]
  %.148.i.i = phi float [ 2.048000e+03, %bb.ex ], [ 2.048000e+03, %bb.ey ], [ %i.akj, %bb.fb ], [ 2.048000e+03, %bb.ez ]
  %i.akl = and i32 %i.ahh, 255                    ; 3 uses
  %i.akm = add nsw i32 %i.akl, -1
  %i.akn = shl nuw i32 1, %i.akm                  ; 2 uses
  %.not57.i.i = icmp slt i32 %i.ajj, %i.akn
  %.neg.i.i = shl nsw i32 -1, %i.akl
  %i.ako = select i1 %.not57.i.i, i32 0, i32 %.neg.i.i
  %.045.i.i = add i32 %i.ako, %i.ajj
  %i.akp = sitofp i32 %.045.i.i to float
  %i.akq = sitofp i32 %i.akn to float
  %i.akr = fdiv float %i.akp, %i.akq
  %i.aks = shl nuw i32 1, %i.akl
  %i.akt = sitofp i32 %i.aks to float
  %i.aku = fdiv nnan float 1.000000e+00, %i.akt
  %i.akv = select i1 %.150.i.i, float %i.aku, float 0.000000e+00
  %i.akw = fadd float %i.akr, %i.akv
  %i.akx = fmul float %.148.i.i, %i.akw
  %i.aky = fmul float %i.akx, f0x3FB504F3
  br label %decompress_value.exit.i

decompress_value.exit.i:                          ; preds = %.loopexit.i.i, %bb.ew, %bb.ev, %bb.eu, %decompress_value.exit636.i
  %.1.i608.i = phi float [ 0.000000e+00, %decompress_value.exit636.i ], [ %.0.i.i615.i, %bb.eu ], [ %i.aky, %.loopexit.i.i ], [ %i.ajz, %bb.ew ], [ %i.ajw, %bb.ev ] ; 2 uses
  %i.akz = srem i32 %i.aji, 8
  %i.ala = add i32 %i.akz, %i.ajb
  %i.alb = lshr i32 %i.ala, 3
  %i.alc = load i32, ptr @hf_oran_qSample, align 4
  %i.ald = sdiv i32 %i.aji, 8
  %i.ale = call ptr @proto_tree_add_float(ptr noundef %i.aeh, i32 noundef %i.alc, ptr noundef %.1428.i, i32 noundef %i.ald, i32 noundef %i.alb, float noundef %.1.i608.i)
  %i.alf = fpext float %.1.i608.i to double
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ale, ptr noundef nonnull @.str.1533, double noundef %i.alf, i32 noundef %i.ajj, i32 noundef range(i32 0, 13) %.043165.i)
  %i.alg = load i32, ptr %i.nw, align 4
  %i.alh = add i32 %i.alg, 1
  store i32 %i.alh, ptr %i.nw, align 4
  %i.ali = or i32 %i.ajj, %i.ahk
  %or.cond.i595.i = icmp eq i32 %i.ali, 0
  br i1 %or.cond.i595.i, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %decompress_value.exit.i
  %i.alj = load i32, ptr %i.nx, align 4
  %i.alk = add i32 %i.alj, 1
  store i32 %i.alk, ptr %i.nx, align 4
  br label %dissect_oran_u_re.exit.i

bb.fd:                                            ; preds = %decompress_value.exit.i
  store i8 1, ptr %i.nv, align 4
  br label %dissect_oran_u_re.exit.i

dissect_oran_u_re.exit.i:                         ; preds = %bb.fd, %bb.fc
  %i.all = add i32 %i.aji, %i.ahh
  %i.alm = add i32 %.043264.i, 1
  br label %bb.fe

bb.fe:                                            ; preds = %dissect_oran_u_re.exit.i, %.preheader.i
  %.1437.i = phi i32 [ %i.all, %dissect_oran_u_re.exit.i ], [ %.043663.i, %.preheader.i ]
  %.1433.i = phi i32 [ %i.alm, %dissect_oran_u_re.exit.i ], [ %.043264.i, %.preheader.i ] ; 2 uses
  %i.aln = add nuw nsw i32 %.043165.i, 1          ; 2 uses
  %exitcond87.not.i = icmp eq i32 %i.aln, 13
  br i1 %exitcond87.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !12

.preheader39thread-pre-split.i:                   ; preds = %dissect_oran_u_re.exit597.i
  %i.alo = add i32 %i.anq, %i.alq
  %.pr163.i = load i32, ptr %i.q, align 4
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %bb.ek, %.preheader39thread-pre-split.i
  %i.alp = phi i32 [ %.pr163.i, %.preheader39thread-pre-split.i ], [ %i.ahc, %bb.ek ] ; 2 uses
  %.043061.i = phi i32 [ %i.apt, %.preheader39thread-pre-split.i ], [ 1, %bb.ek ] ; 5 uses
  %.243859.i = phi i32 [ %i.alo, %.preheader39thread-pre-split.i ], [ %i.ahb, %bb.ek ] ; 4 uses
  %i.alq = load i32, ptr %i.p, align 4            ; 9 uses
  %i.alr = load i32, ptr %i.ac, align 4           ; 2 uses
  %i.als = call i32 @tvb_get_bits32(ptr noundef %.1428.i, i32 noundef %.243859.i, i32 noundef %i.alq, i32 noundef 0) ; 7 uses
  switch i32 %i.alp, label %decompress_value.exit678.i [
    i32 0, label %bb.ff
    i32 1, label %bb.fg
    i32 5, label %bb.fg
    i32 6, label %bb.fi
    i32 4, label %bb.fi
  ]

bb.ff:                                            ; preds = %.preheader39.i
  %i.alt = trunc i32 %i.als to i16
  %i.alu = load i8, ptr @show_unscaled_values, align 1, !range !6, !noundef !7
  %i.alv = trunc nuw i8 %i.alu to i1
  %i.alw = sitofp i16 %i.alt to float             ; 2 uses
  %i.alx = fdiv float %i.alw, 3.276700e+04
  %.0.i.i677.i = select i1 %i.alv, float %i.alw, float %i.alx
  br label %decompress_value.exit678.i

bb.fg:                                            ; preds = %.preheader39.i, %.preheader39.i
  %i.aly = and i32 %i.alq, 255                    ; 2 uses
  %i.alz = add nsw i32 %i.aly, -1                 ; 2 uses
  %i.ama = shl nuw i32 1, %i.alz
  %.not58.i674.i = icmp slt i32 %i.als, %i.ama
  %.neg59.i675.i = shl nsw i32 -1, %i.aly
  %i.amb = select i1 %.not58.i674.i, i32 0, i32 %.neg59.i675.i
  %.051.i676.i = add i32 %i.amb, %i.als
  %i.amc = shl i32 %.051.i676.i, %i.alr
  %i.amd = load i8, ptr @show_unscaled_values, align 1, !range !6, !noundef !7
  %i.ame = trunc nuw i8 %i.amd to i1
  %i.amf = sitofp i32 %i.amc to float             ; 2 uses
  br i1 %i.ame, label %decompress_value.exit678.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.amg = shl i32 32768, %i.alz
  %i.amh = uitofp i32 %i.amg to float
  %i.ami = fdiv float %i.amf, %i.amh
  br label %decompress_value.exit678.i

bb.fi:                                            ; preds = %.preheader39.i, %.preheader39.i
  br i1 %.not34.i, label %.loopexit.i659.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.amj = load i32, ptr %i.adx, align 4          ; 2 uses
  %.not.i666.i = icmp eq i32 %i.amj, 0
  br i1 %.not.i666.i, label %.loopexit.i659.i, label %.preheader.i667.i

.preheader.i667.i:                                ; preds = %bb.fj
  %6 = lshr exact i32 4096, %.043061.i
  %wide.trip.count.i669.i = zext i32 %i.amj to i64
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fl
  %indvars.iv.next.i672.i = add nuw nsw i64 %indvars.iv.i670.i, 1 ; 2 uses
  %exitcond.not.i673.i = icmp eq i64 %indvars.iv.next.i672.i, %wide.trip.count.i669.i
  br i1 %exitcond.not.i673.i, label %.loopexit.i659.i, label %bb.fl, !llvm.loop !11

bb.fl:                                            ; preds = %bb.fk, %.preheader.i667.i
  %indvars.iv.i670.i = phi i64 [ 0, %.preheader.i667.i ], [ %indvars.iv.next.i672.i, %bb.fk ] ; 3 uses
  %i.amk = getelementptr [8 x i8], ptr %i.ady, i64 %indvars.iv.i670.i
  %i.aml = load i16, ptr %i.amk, align 4
  %i.amm = zext i16 %i.aml to i32
  %i.amn = and i32 %6, %i.amm
  %.not56.i671.i = icmp eq i32 %i.amn, 0
  br i1 %.not56.i671.i, label %bb.fk, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.amo = getelementptr [8 x i8], ptr %i.ady, i64 %indvars.iv.i670.i ; 2 uses
  %i.amp = getelementptr i8, ptr %i.amo, i64 2
  %i.amq = load i8, ptr %i.amp, align 2, !range !6, !noundef !7
  %i.amr = getelementptr i8, ptr %i.amo, i64 4
  %i.ams = load float, ptr %i.amr, align 4
  %i.amt = trunc nuw i8 %i.amq to i1
  br label %.loopexit.i659.i

.loopexit.i659.i:                                 ; preds = %bb.fk, %bb.fm, %bb.fj, %bb.fi
  %.150.i660.i = phi i1 [ false, %bb.fi ], [ false, %bb.fj ], [ %i.amt, %bb.fm ], [ false, %bb.fk ]
  %.148.i661.i = phi float [ 2.048000e+03, %bb.fi ], [ 2.048000e+03, %bb.fj ], [ %i.ams, %bb.fm ], [ 2.048000e+03, %bb.fk ]
  %i.amu = and i32 %i.alq, 255                    ; 3 uses
  %i.amv = add nsw i32 %i.amu, -1
  %i.amw = shl nuw i32 1, %i.amv                  ; 2 uses
  %.not57.i662.i = icmp slt i32 %i.als, %i.amw
  %.neg.i663.i = shl nsw i32 -1, %i.amu
  %i.amx = select i1 %.not57.i662.i, i32 0, i32 %.neg.i663.i
  %.045.i664.i = add i32 %i.amx, %i.als
  %i.amy = sitofp i32 %.045.i664.i to float
  %i.amz = sitofp i32 %i.amw to float
  %i.ana = fdiv float %i.amy, %i.amz
  %i.anb = shl nuw i32 1, %i.amu
  %i.anc = sitofp i32 %i.anb to float
  %i.and = fdiv nnan float 1.000000e+00, %i.anc
  %i.ane = select i1 %.150.i660.i, float %i.and, float 0.000000e+00
  %i.anf = fadd float %i.ana, %i.ane
  %i.ang = fmul float %.148.i661.i, %i.anf
  %i.anh = fmul float %i.ang, f0x3FB504F3
  br label %decompress_value.exit678.i

decompress_value.exit678.i:                       ; preds = %.loopexit.i659.i, %bb.fh, %bb.fg, %bb.ff, %.preheader39.i
  %.1.i665.i = phi float [ 0.000000e+00, %.preheader39.i ], [ %.0.i.i677.i, %bb.ff ], [ %i.anh, %.loopexit.i659.i ], [ %i.ami, %bb.fh ], [ %i.amf, %bb.fg ] ; 2 uses
  %i.ani = srem i32 %.243859.i, 8
  %i.anj = add i32 %i.alq, 7                      ; 2 uses
  %i.ank = add i32 %i.anj, %i.ani
  %i.anl = lshr i32 %i.ank, 3
  %i.anm = load i32, ptr @hf_oran_iSample, align 4
  %i.ann = sdiv i32 %.243859.i, 8
  %i.ano = call ptr @proto_tree_add_float(ptr noundef %i.aeh, i32 noundef %i.anm, ptr noundef %.1428.i, i32 noundef %i.ann, i32 noundef %i.anl, float noundef %.1.i665.i)
  %i.anp = fpext float %.1.i665.i to double
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ano, ptr noundef nonnull @.str.1532, double noundef %i.anp, i32 noundef %i.als, i32 noundef range(i32 0, 13) %.043061.i)
  %i.anq = add i32 %i.alq, %.243859.i             ; 4 uses
  %i.anr = call i32 @tvb_get_bits32(ptr noundef %.1428.i, i32 noundef %i.anq, i32 noundef %i.alq, i32 noundef 0) ; 7 uses
  switch i32 %i.alp, label %decompress_value.exit657.i [
    i32 0, label %bb.fn
    i32 1, label %bb.fo
    i32 5, label %bb.fo
    i32 6, label %bb.fq
    i32 4, label %bb.fq
  ]

bb.fn:                                            ; preds = %decompress_value.exit678.i
  %i.ans = trunc i32 %i.anr to i16
  %i.ant = load i8, ptr @show_unscaled_values, align 1, !range !6, !noundef !7
  %i.anu = trunc nuw i8 %i.ant to i1
  %i.anv = sitofp i16 %i.ans to float             ; 2 uses
  %i.anw = fdiv float %i.anv, 3.276700e+04
  %.0.i.i656.i = select i1 %i.anu, float %i.anv, float %i.anw
  br label %decompress_value.exit657.i

bb.fo:                                            ; preds = %decompress_value.exit678.i, %decompress_value.exit678.i
  %i.anx = and i32 %i.alq, 255                    ; 2 uses
  %i.any = add nsw i32 %i.anx, -1                 ; 2 uses
  %i.anz = shl nuw i32 1, %i.any
  %.not58.i653.i = icmp slt i32 %i.anr, %i.anz
  %.neg59.i654.i = shl nsw i32 -1, %i.anx
  %i.aoa = select i1 %.not58.i653.i, i32 0, i32 %.neg59.i654.i
  %.051.i655.i = add i32 %i.aoa, %i.anr
  %i.aob = shl i32 %.051.i655.i, %i.alr
  %i.aoc = load i8, ptr @show_unscaled_values, align 1, !range !6, !noundef !7
  %i.aod = trunc nuw i8 %i.aoc to i1
  %i.aoe = sitofp i32 %i.aob to float             ; 2 uses
  br i1 %i.aod, label %decompress_value.exit657.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aof = shl i32 32768, %i.any
  %i.aog = uitofp i32 %i.aof to float
  %i.aoh = fdiv float %i.aoe, %i.aog
  br label %decompress_value.exit657.i

bb.fq:                                            ; preds = %decompress_value.exit678.i, %decompress_value.exit678.i
  br i1 %.not34.i, label %.loopexit.i638.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aoi = load i32, ptr %i.adx, align 4          ; 2 uses
  %.not.i645.i = icmp eq i32 %i.aoi, 0
  br i1 %.not.i645.i, label %.loopexit.i638.i, label %.preheader.i646.i

.preheader.i646.i:                                ; preds = %bb.fr
  %7 = lshr exact i32 4096, %.043061.i
  %wide.trip.count.i648.i = zext i32 %i.aoi to i64
  br label %bb.ft

bb.fs:                                            ; preds = %bb.ft
  %indvars.iv.next.i651.i = add nuw nsw i64 %indvars.iv.i649.i, 1 ; 2 uses
  %exitcond.not.i652.i = icmp eq i64 %indvars.iv.next.i651.i, %wide.trip.count.i648.i
  br i1 %exitcond.not.i652.i, label %.loopexit.i638.i, label %bb.ft, !llvm.loop !11

bb.ft:                                            ; preds = %bb.fs, %.preheader.i646.i
  %indvars.iv.i649.i = phi i64 [ 0, %.preheader.i646.i ], [ %indvars.iv.next.i651.i, %bb.fs ] ; 3 uses
  %i.aoj = getelementptr [8 x i8], ptr %i.ady, i64 %indvars.iv.i649.i
  %i.aok = load i16, ptr %i.aoj, align 4
  %i.aol = zext i16 %i.aok to i32
  %i.aom = and i32 %7, %i.aol
  %.not56.i650.i = icmp eq i32 %i.aom, 0
  br i1 %.not56.i650.i, label %bb.fs, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aon = getelementptr [8 x i8], ptr %i.ady, i64 %indvars.iv.i649.i ; 2 uses
  %i.aoo = getelementptr i8, ptr %i.aon, i64 2
  %i.aop = load i8, ptr %i.aoo, align 2, !range !6, !noundef !7
  %i.aoq = getelementptr i8, ptr %i.aon, i64 4
  %i.aor = load float, ptr %i.aoq, align 4
  %i.aos = trunc nuw i8 %i.aop to i1
  br label %.loopexit.i638.i

.loopexit.i638.i:                                 ; preds = %bb.fs, %bb.fu, %bb.fr, %bb.fq
  %.150.i639.i = phi i1 [ false, %bb.fq ], [ false, %bb.fr ], [ %i.aos, %bb.fu ], [ false, %bb.fs ]
  %.148.i640.i = phi float [ 2.048000e+03, %bb.fq ], [ 2.048000e+03, %bb.fr ], [ %i.aor, %bb.fu ], [ 2.048000e+03, %bb.fs ]
  %i.aot = and i32 %i.alq, 255                    ; 3 uses
  %i.aou = add nsw i32 %i.aot, -1
  %i.aov = shl nuw i32 1, %i.aou                  ; 2 uses
  %.not57.i641.i = icmp slt i32 %i.anr, %i.aov
  %.neg.i642.i = shl nsw i32 -1, %i.aot
  %i.aow = select i1 %.not57.i641.i, i32 0, i32 %.neg.i642.i
  %.045.i643.i = add i32 %i.aow, %i.anr
  %i.aox = sitofp i32 %.045.i643.i to float
  %i.aoy = sitofp i32 %i.aov to float
  %i.aoz = fdiv float %i.aox, %i.aoy
  %i.apa = shl nuw i32 1, %i.aot
  %i.apb = sitofp i32 %i.apa to float
  %i.apc = fdiv nnan float 1.000000e+00, %i.apb
  %i.apd = select i1 %.150.i639.i, float %i.apc, float 0.000000e+00
  %i.ape = fadd float %i.aoz, %i.apd
  %i.apf = fmul float %.148.i640.i, %i.ape
  %i.apg = fmul float %i.apf, f0x3FB504F3
  br label %decompress_value.exit657.i

decompress_value.exit657.i:                       ; preds = %.loopexit.i638.i, %bb.fp, %bb.fo, %bb.fn, %decompress_value.exit678.i
  %.1.i644.i = phi float [ 0.000000e+00, %decompress_value.exit678.i ], [ %.0.i.i656.i, %bb.fn ], [ %i.apg, %.loopexit.i638.i ], [ %i.aoh, %bb.fp ], [ %i.aoe, %bb.fo ] ; 2 uses
  %i.aph = srem i32 %i.anq, 8
  %i.api = add i32 %i.aph, %i.anj
  %i.apj = lshr i32 %i.api, 3
  %i.apk = load i32, ptr @hf_oran_qSample, align 4
  %i.apl = sdiv i32 %i.anq, 8
  %i.apm = call ptr @proto_tree_add_float(ptr noundef %i.aeh, i32 noundef %i.apk, ptr noundef %.1428.i, i32 noundef %i.apl, i32 noundef %i.apj, float noundef %.1.i644.i)
  %i.apn = fpext float %.1.i644.i to double
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.apm, ptr noundef nonnull @.str.1533, double noundef %i.apn, i32 noundef %i.anr, i32 noundef range(i32 0, 13) %.043061.i)
  %i.apo = load i32, ptr %i.nw, align 4
  %i.app = add i32 %i.apo, 1
  store i32 %i.app, ptr %i.nw, align 4
  %i.apq = or i32 %i.anr, %i.als
  %or.cond.i596.i = icmp eq i32 %i.apq, 0
  br i1 %or.cond.i596.i, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %decompress_value.exit657.i
  %i.apr = load i32, ptr %i.nx, align 4
  %i.aps = add i32 %i.apr, 1
  store i32 %i.aps, ptr %i.nx, align 4
  br label %dissect_oran_u_re.exit597.i

bb.fw:                                            ; preds = %decompress_value.exit657.i
  store i8 1, ptr %i.nv, align 4
  br label %dissect_oran_u_re.exit597.i

dissect_oran_u_re.exit597.i:                      ; preds = %bb.fw, %bb.fv
  %i.apt = add nuw nsw i32 %.043061.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.apt, 13
  br i1 %exitcond.not.i, label %.loopexit.i, label %.preheader39thread-pre-split.i, !llvm.loop !13

.loopexit.i:                                      ; preds = %dissect_oran_u_re.exit597.i, %bb.fe
  %.3435.i = phi i32 [ %.1433.i, %bb.fe ], [ 12, %dissect_oran_u_re.exit597.i ]
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aef, ptr noundef nonnull @.str.1508, i32 noundef %.3435.i)
  br i1 %.not535.i, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %.loopexit.i
  %i.apu = load i32, ptr %i.u, align 4
  %i.apv = load i32, ptr %i.s, align 4
  %i.apw = add i32 %i.apv, 1
  %i.apx = mul i32 %i.apw, %.044568.i
  %i.apy = add i32 %i.apx, %i.apu                 ; 2 uses
  %i.apz = icmp ult i32 %i.apy, 273
  br i1 %i.apz, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.aqa = zext nneg i32 %i.apy to i64
  %i.aqb = getelementptr [2 x i8], ptr %i.adw, i64 %i.aqa
  %i.aqc = load i16, ptr %i.aqb, align 2
  %i.aqd = zext i16 %i.aqc to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aef, ptr noundef nonnull @.str.1509, i32 noundef %i.aqd)
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx, %.loopexit.i
  %i.aqe = load i8, ptr %i.nv, align 4, !range !6, !noundef !7
  %i.aqf = trunc nuw i8 %i.aqe to i1
  br i1 %i.aqf, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aqg = load i32, ptr %i.ny, align 4
  %i.aqh = add i32 %i.aqg, 1
  store i32 %i.aqh, ptr %i.ny, align 4
  %i.aqi = load i32, ptr @hf_oran_zero_prb, align 4
  %i.aqj = call ptr @proto_tree_add_item(ptr noundef %i.aeh, i32 noundef %i.aqi, ptr noundef %.1428.i, i32 noundef %i.aha, i32 noundef %i.age, i32 noundef 0) ; 2 uses
  %.not.i598.i = icmp eq ptr %i.aqj, null
  br i1 %.not.i598.i, label %proto_item_set_hidden.exit600.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aqk = getelementptr i8, ptr %i.aqj, i64 40
  %i.aql = load ptr, ptr %i.aqk, align 8          ; 2 uses
  %.not5.i599.i = icmp eq ptr %i.aql, null
  br i1 %.not5.i599.i, label %proto_item_set_hidden.exit600.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aqm = getelementptr i8, ptr %i.aql, i64 28   ; 2 uses
  %i.aqn = load i32, ptr %i.aqm, align 4
  %i.aqo = or i32 %i.aqn, 1
  store i32 %i.aqo, ptr %i.aqm, align 4
  br label %proto_item_set_hidden.exit600.i

proto_item_set_hidden.exit600.i:                  ; preds = %bb.gc, %bb.gb, %bb.ga
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aef, ptr noundef nonnull @.str.1510)
  br label %proto_item_set_hidden.exit603.i

bb.gd:                                            ; preds = %bb.fz
  %i.aqp = load i32, ptr @hf_oran_nonzero_prb, align 4
  %i.aqq = call ptr @proto_tree_add_item(ptr noundef %i.aeh, i32 noundef %i.aqp, ptr noundef %.1428.i, i32 noundef %i.aha, i32 noundef %i.age, i32 noundef 0) ; 2 uses
  %.not.i601.i = icmp eq ptr %i.aqq, null
  br i1 %.not.i601.i, label %proto_item_set_hidden.exit603.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 40
  %i.aqs = load ptr, ptr %i.aqr, align 8          ; 2 uses
  %.not5.i602.i = icmp eq ptr %i.aqs, null
  br i1 %.not5.i602.i, label %proto_item_set_hidden.exit603.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aqt = getelementptr i8, ptr %i.aqs, i64 28   ; 2 uses
  %i.aqu = load i32, ptr %i.aqt, align 4
  %i.aqv = or i32 %i.aqu, 1
  store i32 %i.aqv, ptr %i.aqt, align 4
  br label %proto_item_set_hidden.exit603.i

proto_item_set_hidden.exit603.i:                  ; preds = %bb.gf, %bb.ge, %bb.gd, %proto_item_set_hidden.exit600.i, %proto_item_set_generated.exit594.i
  %i.aqw = load i32, ptr %i.nz, align 4
  %i.aqx = add i32 %i.aqw, 1
  store i32 %i.aqx, ptr %i.nz, align 4
  %i.aqy = load i32, ptr %i.d, align 4
  %i.aqz = add i32 %i.aqy, %i.age                 ; 2 uses
  store i32 %i.aqz, ptr %i.d, align 4
  call void @proto_item_set_end(ptr noundef %i.aef, ptr noundef %.1428.i, i32 noundef %i.aqz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  %i.ara = add nuw i32 %.044568.i, 1              ; 2 uses
  %i.arb = load i32, ptr %i.v, align 4
  %i.arc = icmp ult i32 %i.ara, %i.arb
  br i1 %i.arc, label %bb.dy, label %._crit_edge.i, !llvm.loop !14

bb.gg:                                            ; preds = %bb.dx
  %i.ard = load i32, ptr %i.x, align 4            ; 2 uses
  %.not533.i = icmp eq i32 %i.aec, %i.ard
  br i1 %.not533.i, label %bb.gj, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.are = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef nonnull %.1453.i, ptr noundef nonnull @ei_oran_ud_comp_len_wrong_size, ptr noundef nonnull @.str.1511, i32 noundef %i.ard, i32 noundef %i.aec) ; 0 uses
  br label %bb.gj

bb.gi:                                            ; preds = %bb.cv
  store i8 %i.xl, ptr %i.np, align 8
  %i.arf = call i32 @tvb_captured_length(ptr noundef %.0427.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  br label %dissect_oran_u.exit

bb.gj:                                            ; preds = %bb.gh, %bb.gg, %bb.dx
  %i.arg = call i32 @tvb_captured_length(ptr noundef %.1428.i)
  %i.arh = load i32, ptr %i.d, align 4            ; 2 uses
  %i.ari = sub i32 %i.arg, %i.arh
  %i.arj = add i32 %.0467.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  %i.ark = add i32 %.1465.lcssa.i, 4
  %.not534.i = icmp ult i32 %i.ari, %i.ark
  br i1 %.not534.i, label %bb.gk, label %bb.ay, !llvm.loop !15

bb.gk:                                            ; preds = %bb.gj
  %i.arl = load i32, ptr @hf_oran_numberOfSections, align 4
  %i.arm = call ptr @proto_tree_add_uint(ptr noundef %i.bb, i32 noundef %i.arl, ptr noundef %.1428.i, i32 noundef 0, i32 noundef 0, i32 noundef %i.arj) ; 2 uses
  %.not.i604.i = icmp eq ptr %i.arm, null
  br i1 %.not.i604.i, label %proto_item_set_generated.exit606.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
end_hunk_0
