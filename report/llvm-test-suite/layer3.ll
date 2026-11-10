Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/layer3?download=true
inline.NumInlined: 29
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 68
begin_hunk_0_@do_layer3:bb.a
  %index.next307 = add nuw i64 %index305, 2       ; 2 uses
  %i.acz = icmp eq i64 %index.next307, %n.vec299
  br i1 %i.acz, label %middle.block308, label %vector.body304, !llvm.loop !112

middle.block308:                                  ; preds = %vector.body304
  %cmp.n309 = icmp eq i64 %n.vec299, %i.acq
  br i1 %cmp.n309, label %III_i_stereo.exit, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %.lr.ph15.preheader.i, %middle.block308
  %indvars.iv45.i.ph = phi i64 [ %i.acp, %.lr.ph15.preheader.i ], [ %i.acr, %middle.block308 ]
  %.013.i.ph = phi i32 [ %i.aco, %.lr.ph15.preheader.i ], [ %i.act, %middle.block308 ]
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.preheader, %.lr.ph15.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %.lr.ph15.i ], [ %indvars.iv45.i.ph, %.lr.ph15.i.preheader ] ; 3 uses
  %.013.i = phi i32 [ %i.adf, %.lr.ph15.i ], [ %.013.i.ph, %.lr.ph15.i.preheader ] ; 2 uses
  %i.ada = getelementptr inbounds [8 x i8], ptr @do_layer3.hybridIn, i64 %indvars.iv45.i ; 2 uses
  %i.adb = load double, ptr %i.ada, align 8, !tbaa !62 ; 2 uses
  %i.adc = fmul double %i.acj, %i.adb
  store double %i.adc, ptr %i.ada, align 8, !tbaa !62
  %i.add = fmul double %i.acl, %i.adb
  %i.ade = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %indvars.iv45.i
  store double %i.add, ptr %i.ade, align 8, !tbaa !62
  %i.adf = add nsw i32 %.013.i, -1
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i, 1
  %i.adg = icmp samesign ugt i32 %.013.i, 1
  br i1 %i.adg, label %.lr.ph15.i, label %III_i_stereo.exit, !llvm.loop !113

III_i_stereo.exit:                                ; preds = %.lr.ph15.i, %.loopexit.i, %middle.block308, %bb.bj, %._crit_edge.i153, %bb.bc, %.loopexit3.2.i, %.loopexit177
  br i1 %or.cond4, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %III_i_stereo.exit
  %i.adh = getelementptr inbounds nuw i8, ptr %i.pm, i64 64 ; 2 uses
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !90 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.ph, i64 64 ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 8, !tbaa !90 ; 2 uses
  %i.adl = icmp ugt i32 %i.adi, %i.adk
  br i1 %i.adl, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 %i.adi, ptr %i.adj, align 8, !tbaa !90
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  store i32 %i.adk, ptr %i.adh, align 8, !tbaa !90
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %III_i_stereo.exit
  switch i32 %.0126, label %.loopexit.preheader [
    i32 3, label %.preheader172
    i32 1, label %.preheader173
  ]

.preheader173:                                    ; preds = %bb.bn
  %i.adm = getelementptr inbounds nuw i8, ptr %i.pm, i64 64
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !90
  %i.ado = mul i32 %i.adn, 18                     ; 2 uses
  %.not200 = icmp eq i32 %i.ado, 0
  br i1 %.not200, label %.loopexit.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader173
  %i.adp = zext i32 %i.ado to i64
  %i.adq = shl nuw nsw i64 %i.adp, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @do_layer3.hybridIn, ptr nonnull align 16 getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %i.adq, i1 false), !tbaa !62
  br label %.loopexit.preheader

.preheader172:                                    ; preds = %bb.bn
  %i.adr = getelementptr inbounds nuw i8, ptr %i.pm, i64 64
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !90
  %i.adt = mul i32 %i.ads, 18                     ; 4 uses
  %.not201 = icmp eq i32 %i.adt, 0
  br i1 %.not201, label %.loopexit.preheader, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %.preheader172
  %i.adu = zext i32 %i.adt to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.adt, 4
  br i1 %min.iters.check, label %.lr.ph192.preheader339, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph192.preheader
  %n.vec = and i64 %i.adu, 4294967292             ; 4 uses
  %i.adv = shl nuw nsw i64 %n.vec, 3              ; 2 uses
  %i.adw = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %i.adv
  %i.adx = getelementptr i8, ptr @do_layer3.hybridIn, i64 %i.adv
  %i.ady = trunc nuw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.adz = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %i.adz ; 2 uses
  %next.gep276 = getelementptr i8, ptr @do_layer3.hybridIn, i64 %i.adz ; 3 uses
  %i.aea = getelementptr i8, ptr %next.gep276, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep276, align 16, !tbaa !62
  %wide.load277 = load <2 x double>, ptr %i.aea, align 16, !tbaa !62
  %i.aeb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load278 = load <2 x double>, ptr %next.gep, align 16, !tbaa !62
  %wide.load279 = load <2 x double>, ptr %i.aeb, align 16, !tbaa !62
  %i.aec = fadd <2 x double> %wide.load, %wide.load278
  %i.aed = fadd <2 x double> %wide.load277, %wide.load279
  store <2 x double> %i.aec, ptr %next.gep276, align 16, !tbaa !62
  store <2 x double> %i.aed, ptr %i.aea, align 16, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aee = icmp eq i64 %index.next, %n.vec
  br i1 %i.aee, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.adu
  br i1 %cmp.n, label %.loopexit.preheader, label %.lr.ph192.preheader339

.lr.ph192.preheader339:                           ; preds = %.lr.ph192.preheader, %middle.block
  %.0112191.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), %.lr.ph192.preheader ], [ %i.adw, %middle.block ]
  %.0113190.ph = phi ptr [ @do_layer3.hybridIn, %.lr.ph192.preheader ], [ %i.adx, %middle.block ]
  %.0114189.ph = phi i32 [ 0, %.lr.ph192.preheader ], [ %i.ady, %middle.block ]
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader339, %.lr.ph192
  %.0112191 = phi ptr [ %i.aeg, %.lr.ph192 ], [ %.0112191.ph, %.lr.ph192.preheader339 ] ; 2 uses
  %.0113190 = phi ptr [ %i.aek, %.lr.ph192 ], [ %.0113190.ph, %.lr.ph192.preheader339 ] ; 3 uses
  %.0114189 = phi i32 [ %i.aej, %.lr.ph192 ], [ %.0114189.ph, %.lr.ph192.preheader339 ]
  %i.aef = load double, ptr %.0113190, align 8, !tbaa !62
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0112191, i64 8
  %i.aeh = load double, ptr %.0112191, align 8, !tbaa !62
  %i.aei = fadd double %i.aef, %i.aeh
  store double %i.aei, ptr %.0113190, align 8, !tbaa !62
  %i.aej = add nuw nsw i32 %.0114189, 1           ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.0113190, i64 8
  %exitcond217.not = icmp eq i32 %i.aej, %i.adt
  br i1 %exitcond217.not, label %.loopexit.preheader, label %.lr.ph192, !llvm.loop !115

.loopexit.preheader:                              ; preds = %.lr.ph192, %middle.block, %.lr.ph.preheader, %.preheader173, %.preheader172, %bb.bn, %bb.aj
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %III_hybrid.exit
  %i.ael = phi i1 [ false, %III_hybrid.exit ], [ %.not204, %.loopexit.preheader ]
  %indvars.iv218 = phi i64 [ 1, %III_hybrid.exit ], [ 0, %.loopexit.preheader ] ; 6 uses
  %gep = getelementptr inbounds nuw [240 x i8], ptr %i.ph, i64 %indvars.iv218 ; 5 uses
  %i.aem = getelementptr inbounds nuw [4608 x i8], ptr @do_layer3.hybridIn, i64 %indvars.iv218 ; 5 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %i.aeo = load i32, ptr %i.aen, align 8, !tbaa !80
  %i.aep = icmp eq i32 %i.aeo, 2
  br i1 %i.aep, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.loopexit
  %i.aeq = getelementptr inbounds nuw i8, ptr %gep, i64 20
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !81
  %.not.i160 = icmp eq i32 %i.aer, 0
  br i1 %.not.i160, label %III_antialias.exit, label %.preheader.preheader.i

bb.bp:                                            ; preds = %.loopexit
  %i.aes = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !90
  %i.aeu = add i32 %i.aet, -1                     ; 2 uses
  %.not2834.i = icmp eq i32 %i.aeu, 0
  br i1 %.not2834.i, label %III_antialias.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.bp, %bb.bo
  %.039.i = phi i32 [ %i.aeu, %bb.bp ], [ 1, %bb.bo ]
  %i.aev = load double, ptr @aa_cs.0, align 16, !tbaa !62
  %i.aew = load double, ptr @aa_ca.0, align 16, !tbaa !62
  %i.aex = load double, ptr @aa_cs.1, align 8, !tbaa !62
  %i.aey = load double, ptr @aa_ca.1, align 8, !tbaa !62
  %i.aez = insertelement <2 x double> poison, double %i.aey, i64 0
  %i.afa = insertelement <2 x double> %i.aez, double %i.aew, i64 1 ; 2 uses
  %i.afb = fneg <2 x double> %i.afa
  %i.afc = load double, ptr @aa_cs.2, align 16, !tbaa !62
  %i.afd = load double, ptr @aa_ca.2, align 16, !tbaa !62
  %i.afe = load double, ptr @aa_cs.3, align 8, !tbaa !62
  %i.aff = load double, ptr @aa_ca.3, align 8, !tbaa !62
  %i.afg = insertelement <2 x double> poison, double %i.aff, i64 0
  %i.afh = insertelement <2 x double> %i.afg, double %i.afd, i64 1 ; 2 uses
  %i.afi = fneg <2 x double> %i.afh
  %i.afj = load double, ptr @aa_cs.4, align 16, !tbaa !62
  %i.afk = load double, ptr @aa_ca.4, align 16, !tbaa !62
  %i.afl = load double, ptr @aa_cs.5, align 8, !tbaa !62
  %i.afm = load double, ptr @aa_ca.5, align 8, !tbaa !62
  %i.afn = insertelement <2 x double> poison, double %i.afm, i64 0
  %i.afo = insertelement <2 x double> %i.afn, double %i.afk, i64 1 ; 2 uses
  %i.afp = fneg <2 x double> %i.afo
  %i.afq = load double, ptr @aa_cs.6, align 16, !tbaa !62
  %i.afr = load double, ptr @aa_ca.6, align 16, !tbaa !62
  %i.afs = load double, ptr @aa_cs.7, align 8, !tbaa !62
  %i.aft = load double, ptr @aa_ca.7, align 8, !tbaa !62
  %i.afu = insertelement <2 x double> poison, double %i.aft, i64 0
  %i.afv = insertelement <2 x double> %i.afu, double %i.afr, i64 1 ; 2 uses
  %i.afw = fneg <2 x double> %i.afv
  %i.afx = insertelement <2 x double> poison, double %i.afs, i64 0
  %i.afy = insertelement <2 x double> %i.afx, double %i.afq, i64 1 ; 2 uses
  %i.afz = insertelement <2 x double> poison, double %i.afl, i64 0
  %i.aga = insertelement <2 x double> %i.afz, double %i.afj, i64 1 ; 2 uses
  %i.agb = insertelement <2 x double> poison, double %i.afe, i64 0
  %i.agc = insertelement <2 x double> %i.agb, double %i.afc, i64 1 ; 2 uses
  %i.agd = insertelement <2 x double> poison, double %i.aex, i64 0
  %i.age = insertelement <2 x double> %i.agd, double %i.aev, i64 1 ; 2 uses
  br label %.preheader.i158

.preheader.i158:                                  ; preds = %.preheader.i158, %.preheader.preheader.i
  %.02636.pn.i = phi ptr [ %.02636.i, %.preheader.i158 ], [ %i.aem, %.preheader.preheader.i ] ; 8 uses
  %.02735.i = phi i32 [ %i.ahs, %.preheader.i158 ], [ %.039.i, %.preheader.preheader.i ]
  %.02636.i = getelementptr inbounds nuw i8, ptr %.02636.pn.i, i64 144 ; 3 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %.02636.pn.i, i64 128 ; 2 uses
  %i.agg = load <2 x double>, ptr %i.agf, align 8, !tbaa !62 ; 2 uses
  %i.agh = load <2 x double>, ptr %.02636.i, align 8, !tbaa !62
  %i.agi = shufflevector <2 x double> %i.agh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.agj = fmul <2 x double> %i.agi, %i.afb
  %i.agk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agg, <2 x double> %i.age, <2 x double> %i.agj)
  store <2 x double> %i.agk, ptr %i.agf, align 8, !tbaa !62
  %i.agl = getelementptr inbounds nuw i8, ptr %.02636.pn.i, i64 160 ; 2 uses
  %i.agm = fmul <2 x double> %i.afa, %i.agg
  %i.agn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agi, <2 x double> %i.age, <2 x double> %i.agm)
  %i.ago = shufflevector <2 x double> %i.agn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ago, ptr %.02636.i, align 8, !tbaa !62
  %i.agp = getelementptr inbounds nuw i8, ptr %.02636.pn.i, i64 112 ; 2 uses
  %i.agq = load <2 x double>, ptr %i.agp, align 8, !tbaa !62 ; 2 uses
  %i.agr = load <2 x double>, ptr %i.agl, align 8, !tbaa !62
  %i.ags = shufflevector <2 x double> %i.agr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.agt = fmul <2 x double> %i.ags, %i.afi
  %i.agu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agq, <2 x double> %i.agc, <2 x double> %i.agt)
  store <2 x double> %i.agu, ptr %i.agp, align 8, !tbaa !62
  %i.agv = getelementptr inbounds nuw i8, ptr %.02636.pn.i, i64 176 ; 2 uses
  %i.agw = fmul <2 x double> %i.afh, %i.agq
  %i.agx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ags, <2 x double> %i.agc, <2 x double> %i.agw)
  %i.agy = shufflevector <2 x double> %i.agx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.agy, ptr %i.agl, align 8, !tbaa !62
  %i.agz = getelementptr inbounds nuw i8, ptr %.02636.pn.i, i64 96 ; 2 uses
  %i.aha = load <2 x double>, ptr %i.agz, align 8, !tbaa !62 ; 2 uses
  %i.ahb = load <2 x double>, ptr %i.agv, align 8, !tbaa !62
  %i.ahc = shufflevector <2 x double> %i.ahb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ahd = fmul <2 x double> %i.ahc, %i.afp
  %i.ahe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aha, <2 x double> %i.aga, <2 x double> %i.ahd)
  store <2 x double> %i.ahe, ptr %i.agz, align 8, !tbaa !62
  %i.ahf = getelementptr inbounds nuw i8, ptr %.02636.pn.i, i64 192 ; 2 uses
  %i.ahg = fmul <2 x double> %i.afo, %i.aha
  %i.ahh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahc, <2 x double> %i.aga, <2 x double> %i.ahg)
  %i.ahi = shufflevector <2 x double> %i.ahh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahi, ptr %i.agv, align 8, !tbaa !62
  %i.ahj = getelementptr inbounds nuw i8, ptr %.02636.pn.i, i64 80 ; 2 uses
  %i.ahk = load <2 x double>, ptr %i.ahj, align 8, !tbaa !62 ; 2 uses
  %i.ahl = load <2 x double>, ptr %i.ahf, align 8, !tbaa !62
  %i.ahm = shufflevector <2 x double> %i.ahl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ahn = fmul <2 x double> %i.ahm, %i.afw
  %i.aho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahk, <2 x double> %i.afy, <2 x double> %i.ahn)
  store <2 x double> %i.aho, ptr %i.ahj, align 8, !tbaa !62
  %i.ahp = fmul <2 x double> %i.afv, %i.ahk
  %i.ahq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahm, <2 x double> %i.afy, <2 x double> %i.ahp)
  %i.ahr = shufflevector <2 x double> %i.ahq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahr, ptr %i.ahf, align 8, !tbaa !62
  %i.ahs = add nsw i32 %.02735.i, -1              ; 2 uses
  %.not28.i = icmp eq i32 %i.ahs, 0
  br i1 %.not28.i, label %III_antialias.exit, label %.preheader.i158, !llvm.loop !116

III_antialias.exit:                               ; preds = %.preheader.i158, %bb.bo, %bb.bp
  %i.aht = getelementptr inbounds nuw [4608 x i8], ptr @do_layer3.hybridOut, i64 %indvars.iv218 ; 4 uses
  %i.ahu = load ptr, ptr @gmp, align 8, !tbaa !137 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 4712 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 23144
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %indvars.iv218 ; 2 uses
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !7 ; 2 uses
  %i.ahz = sext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds [9216 x i8], ptr %i.ahv, i64 %i.ahz
  %i.aib = getelementptr inbounds nuw [4608 x i8], ptr %i.aia, i64 %indvars.iv218 ; 4 uses
  %i.aic = sub i32 1, %i.ahy                      ; 2 uses
  %i.aid = sext i32 %i.aic to i64
  %i.aie = getelementptr inbounds [9216 x i8], ptr %i.ahv, i64 %i.aid
  %i.aif = getelementptr inbounds nuw [4608 x i8], ptr %i.aie, i64 %indvars.iv218 ; 4 uses
  store i32 %i.aic, ptr %i.ahx, align 4, !tbaa !7
  %i.aig = getelementptr inbounds nuw i8, ptr %gep, i64 20
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !81
  %.not.i161 = icmp eq i32 %i.aih, 0
  br i1 %.not.i161, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %III_antialias.exit
  call fastcc void @dct36(ptr noundef nonnull %i.aem, ptr noundef nonnull %i.aib, ptr noundef nonnull %i.aif, ptr noundef nonnull @win, ptr noundef nonnull %i.aht)
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aem, i64 144
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aib, i64 144
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aif, i64 144
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  call fastcc void @dct36(ptr noundef nonnull %i.aii, ptr noundef nonnull %i.aij, ptr noundef nonnull %i.aik, ptr noundef nonnull @win1, ptr noundef nonnull %i.ail)
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aib, i64 288
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aif, i64 288
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aht, i64 16
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %III_antialias.exit
  %.080.i = phi ptr [ %i.aim, %bb.bq ], [ %i.aib, %III_antialias.exit ] ; 4 uses
  %.075.i = phi ptr [ %i.ain, %bb.bq ], [ %i.aif, %III_antialias.exit ] ; 4 uses
  %.070.i = phi i32 [ 2, %bb.bq ], [ 0, %III_antialias.exit ] ; 5 uses
  %.069.i = phi ptr [ %i.aio, %bb.bq ], [ %i.aht, %III_antialias.exit ] ; 4 uses
  %i.aip = load i32, ptr %i.aen, align 8, !tbaa !80 ; 2 uses
  %i.aiq = icmp eq i32 %i.aip, 2
  %i.air = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 3 uses
  %i.ais = load i32, ptr %i.air, align 8, !tbaa !90
  %i.ait = icmp ult i32 %.070.i, %i.ais           ; 2 uses
  br i1 %i.aiq, label %.preheader86.i, label %.preheader87.i

.preheader87.i:                                   ; preds = %bb.br
  br i1 %i.ait, label %.lr.ph.i166, label %.preheader.i163.preheader

.lr.ph.i166:                                      ; preds = %.preheader87.i
  %i.aiu = sext i32 %i.aip to i64                 ; 2 uses
  %i.aiv = getelementptr inbounds [288 x i8], ptr @win, i64 %i.aiu
  %i.aiw = getelementptr inbounds [288 x i8], ptr @win1, i64 %i.aiu
  %i.aix = zext nneg i32 %.070.i to i64
  br label %bb.bs

.preheader86.i:                                   ; preds = %bb.br
  br i1 %i.ait, label %.lr.ph100.preheader.i, label %.preheader.i163.preheader

.lr.ph100.preheader.i:                            ; preds = %.preheader86.i
  %i.aiy = zext nneg i32 %.070.i to i64
  br label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %.lr.ph100.i, %.lr.ph100.preheader.i
  %indvars.iv123.i = phi i64 [ %i.aiy, %.lr.ph100.preheader.i ], [ %indvars.iv.next124.i, %.lr.ph100.i ] ; 2 uses
  %.199.i = phi ptr [ %.069.i, %.lr.ph100.preheader.i ], [ %i.aje, %.lr.ph100.i ] ; 3 uses
  %.17697.i = phi ptr [ %.075.i, %.lr.ph100.preheader.i ], [ %i.ajg, %.lr.ph100.i ] ; 3 uses
  %.18196.i = phi ptr [ %.080.i, %.lr.ph100.preheader.i ], [ %i.ajf, %.lr.ph100.i ] ; 3 uses
  %i.aiz = getelementptr inbounds nuw [144 x i8], ptr %i.aem, i64 %indvars.iv123.i ; 2 uses
  call fastcc void @dct12(ptr noundef nonnull %i.aiz, ptr noundef nonnull %.18196.i, ptr noundef nonnull %.17697.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @win, i64 576), ptr noundef nonnull %.199.i)
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 144
  %i.ajb = getelementptr inbounds nuw i8, ptr %.18196.i, i64 144
  %i.ajc = getelementptr inbounds nuw i8, ptr %.17697.i, i64 144
  %i.ajd = getelementptr inbounds nuw i8, ptr %.199.i, i64 8
  call fastcc void @dct12(ptr noundef nonnull %i.aja, ptr noundef nonnull %i.ajb, ptr noundef nonnull %i.ajc, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @win1, i64 576), ptr noundef nonnull %i.ajd)
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 2 ; 3 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.199.i, i64 16 ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %.18196.i, i64 288 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.17697.i, i64 288 ; 2 uses
  %i.ajh = load i32, ptr %i.air, align 8, !tbaa !90
  %i.aji = zext i32 %i.ajh to i64
  %i.ajj = icmp samesign ult i64 %indvars.iv.next124.i, %i.aji
  br i1 %i.ajj, label %.lr.ph100.i, label %.loopexit.i169, !llvm.loop !117

bb.bs:                                            ; preds = %bb.bs, %.lr.ph.i166
  %indvars.iv.i167 = phi i64 [ %i.aix, %.lr.ph.i166 ], [ %indvars.iv.next.i168, %bb.bs ] ; 2 uses
  %.292.i = phi ptr [ %.069.i, %.lr.ph.i166 ], [ %i.ajp, %bb.bs ] ; 3 uses
  %.27790.i = phi ptr [ %.075.i, %.lr.ph.i166 ], [ %i.ajr, %bb.bs ] ; 3 uses
  %.28289.i = phi ptr [ %.080.i, %.lr.ph.i166 ], [ %i.ajq, %bb.bs ] ; 3 uses
  %i.ajk = getelementptr inbounds nuw [144 x i8], ptr %i.aem, i64 %indvars.iv.i167 ; 2 uses
  call fastcc void @dct36(ptr noundef nonnull %i.ajk, ptr noundef nonnull %.28289.i, ptr noundef nonnull %.27790.i, ptr noundef nonnull %i.aiv, ptr noundef nonnull %.292.i)
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 144
  %i.ajm = getelementptr inbounds nuw i8, ptr %.28289.i, i64 144
  %i.ajn = getelementptr inbounds nuw i8, ptr %.27790.i, i64 144
  %i.ajo = getelementptr inbounds nuw i8, ptr %.292.i, i64 8
  call fastcc void @dct36(ptr noundef nonnull %i.ajl, ptr noundef nonnull %i.ajm, ptr noundef nonnull %i.ajn, ptr noundef nonnull %i.aiw, ptr noundef nonnull %i.ajo)
  %indvars.iv.next.i168 = add nuw nsw i64 %indvars.iv.i167, 2 ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.292.i, i64 16 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.28289.i, i64 288 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.27790.i, i64 288 ; 2 uses
  %i.ajs = load i32, ptr %i.air, align 8, !tbaa !90
  %i.ajt = zext i32 %i.ajs to i64
  %i.aju = icmp samesign ult i64 %indvars.iv.next.i168, %i.ajt
  br i1 %i.aju, label %bb.bs, label %.loopexit.i169, !llvm.loop !118

.loopexit.i169:                                   ; preds = %bb.bs, %.lr.ph100.i
  %indvars.iv.next.lcssa.sink.i = phi i64 [ %indvars.iv.next124.i, %.lr.ph100.i ], [ %indvars.iv.next.i168, %bb.bs ] ; 2 uses
  %.383.i = phi ptr [ %i.ajf, %.lr.ph100.i ], [ %i.ajq, %bb.bs ]
  %.378.i = phi ptr [ %i.ajg, %.lr.ph100.i ], [ %i.ajr, %bb.bs ]
  %.3.i = phi ptr [ %i.aje, %.lr.ph100.i ], [ %i.ajp, %bb.bs ]
  %i.ajv = trunc nuw nsw i64 %indvars.iv.next.lcssa.sink.i to i32
  %i.ajw = icmp samesign ult i64 %indvars.iv.next.lcssa.sink.i, 32
  br i1 %i.ajw, label %.preheader.i163.preheader, label %III_hybrid.exit

.preheader.i163.preheader:                        ; preds = %.loopexit.i169, %.preheader86.i, %.preheader87.i
  %.4111.i.ph = phi ptr [ %.069.i, %.preheader87.i ], [ %.069.i, %.preheader86.i ], [ %.3.i, %.loopexit.i169 ]
  %.474110.i.ph = phi i32 [ %.070.i, %.preheader87.i ], [ %.070.i, %.preheader86.i ], [ %i.ajv, %.loopexit.i169 ]
  %.479109.i.ph = phi ptr [ %.075.i, %.preheader87.i ], [ %.075.i, %.preheader86.i ], [ %.378.i, %.loopexit.i169 ]
  %.484108.i.ph = phi ptr [ %.080.i, %.preheader87.i ], [ %.080.i, %.preheader86.i ], [ %.383.i, %.loopexit.i169 ]
  br label %.preheader.i163

.preheader.i163:                                  ; preds = %.preheader.i163.preheader, %.preheader.i163
  %.4111.i = phi ptr [ %i.amr, %.preheader.i163 ], [ %.4111.i.ph, %.preheader.i163.preheader ] ; 19 uses
  %.474110.i = phi i32 [ %i.amq, %.preheader.i163 ], [ %.474110.i.ph, %.preheader.i163.preheader ]
  %.479109.i = phi ptr [ %i.amp, %.preheader.i163 ], [ %.479109.i.ph, %.preheader.i163.preheader ] ; 19 uses
  %.484108.i = phi ptr [ %i.amm, %.preheader.i163 ], [ %.484108.i.ph, %.preheader.i163.preheader ] ; 19 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.484108.i, i64 8
  %i.ajy = load double, ptr %.484108.i, align 8, !tbaa !62
  store double %i.ajy, ptr %.4111.i, align 8, !tbaa !62
  %i.ajz = getelementptr inbounds nuw i8, ptr %.479109.i, i64 8
  store double 0.000000e+00, ptr %.479109.i, align 8, !tbaa !62
  %i.aka = getelementptr inbounds nuw i8, ptr %.484108.i, i64 16
  %i.akb = load double, ptr %i.ajx, align 8, !tbaa !62
  %i.akc = getelementptr inbounds nuw i8, ptr %.4111.i, i64 256
  store double %i.akb, ptr %i.akc, align 8, !tbaa !62
  %i.akd = getelementptr inbounds nuw i8, ptr %.479109.i, i64 16
  store double 0.000000e+00, ptr %i.ajz, align 8, !tbaa !62
  %i.ake = getelementptr inbounds nuw i8, ptr %.484108.i, i64 24
  %i.akf = load double, ptr %i.aka, align 8, !tbaa !62
  %i.akg = getelementptr inbounds nuw i8, ptr %.4111.i, i64 512
  store double %i.akf, ptr %i.akg, align 8, !tbaa !62
  %i.akh = getelementptr inbounds nuw i8, ptr %.479109.i, i64 24
  store double 0.000000e+00, ptr %i.akd, align 8, !tbaa !62
  %i.aki = getelementptr inbounds nuw i8, ptr %.484108.i, i64 32
  %i.akj = load double, ptr %i.ake, align 8, !tbaa !62
  %i.akk = getelementptr inbounds nuw i8, ptr %.4111.i, i64 768
  store double %i.akj, ptr %i.akk, align 8, !tbaa !62
  %i.akl = getelementptr inbounds nuw i8, ptr %.479109.i, i64 32
  store double 0.000000e+00, ptr %i.akh, align 8, !tbaa !62
  %i.akm = getelementptr inbounds nuw i8, ptr %.484108.i, i64 40
  %i.akn = load double, ptr %i.aki, align 8, !tbaa !62
  %i.ako = getelementptr inbounds nuw i8, ptr %.4111.i, i64 1024
  store double %i.akn, ptr %i.ako, align 8, !tbaa !62
  %i.akp = getelementptr inbounds nuw i8, ptr %.479109.i, i64 40
  store double 0.000000e+00, ptr %i.akl, align 8, !tbaa !62
  %i.akq = getelementptr inbounds nuw i8, ptr %.484108.i, i64 48
  %i.akr = load double, ptr %i.akm, align 8, !tbaa !62
  %i.aks = getelementptr inbounds nuw i8, ptr %.4111.i, i64 1280
  store double %i.akr, ptr %i.aks, align 8, !tbaa !62
  %i.akt = getelementptr inbounds nuw i8, ptr %.479109.i, i64 48
  store double 0.000000e+00, ptr %i.akp, align 8, !tbaa !62
  %i.aku = getelementptr inbounds nuw i8, ptr %.484108.i, i64 56
  %i.akv = load double, ptr %i.akq, align 8, !tbaa !62
  %i.akw = getelementptr inbounds nuw i8, ptr %.4111.i, i64 1536
  store double %i.akv, ptr %i.akw, align 8, !tbaa !62
  %i.akx = getelementptr inbounds nuw i8, ptr %.479109.i, i64 56
  store double 0.000000e+00, ptr %i.akt, align 8, !tbaa !62
  %i.aky = getelementptr inbounds nuw i8, ptr %.484108.i, i64 64
  %i.akz = load double, ptr %i.aku, align 8, !tbaa !62
  %i.ala = getelementptr inbounds nuw i8, ptr %.4111.i, i64 1792
  store double %i.akz, ptr %i.ala, align 8, !tbaa !62
  %i.alb = getelementptr inbounds nuw i8, ptr %.479109.i, i64 64
  store double 0.000000e+00, ptr %i.akx, align 8, !tbaa !62
  %i.alc = getelementptr inbounds nuw i8, ptr %.484108.i, i64 72
  %i.ald = load double, ptr %i.aky, align 8, !tbaa !62
  %i.ale = getelementptr inbounds nuw i8, ptr %.4111.i, i64 2048
  store double %i.ald, ptr %i.ale, align 8, !tbaa !62
  %i.alf = getelementptr inbounds nuw i8, ptr %.479109.i, i64 72
  store double 0.000000e+00, ptr %i.alb, align 8, !tbaa !62
  %i.alg = getelementptr inbounds nuw i8, ptr %.484108.i, i64 80
  %i.alh = load double, ptr %i.alc, align 8, !tbaa !62
  %i.ali = getelementptr inbounds nuw i8, ptr %.4111.i, i64 2304
  store double %i.alh, ptr %i.ali, align 8, !tbaa !62
  %i.alj = getelementptr inbounds nuw i8, ptr %.479109.i, i64 80
  store double 0.000000e+00, ptr %i.alf, align 8, !tbaa !62
  %i.alk = getelementptr inbounds nuw i8, ptr %.484108.i, i64 88
  %i.all = load double, ptr %i.alg, align 8, !tbaa !62
  %i.alm = getelementptr inbounds nuw i8, ptr %.4111.i, i64 2560
  store double %i.all, ptr %i.alm, align 8, !tbaa !62
  %i.aln = getelementptr inbounds nuw i8, ptr %.479109.i, i64 88
  store double 0.000000e+00, ptr %i.alj, align 8, !tbaa !62
  %i.alo = getelementptr inbounds nuw i8, ptr %.484108.i, i64 96
  %i.alp = load double, ptr %i.alk, align 8, !tbaa !62
  %i.alq = getelementptr inbounds nuw i8, ptr %.4111.i, i64 2816
  store double %i.alp, ptr %i.alq, align 8, !tbaa !62
  %i.alr = getelementptr inbounds nuw i8, ptr %.479109.i, i64 96
  store double 0.000000e+00, ptr %i.aln, align 8, !tbaa !62
  %i.als = getelementptr inbounds nuw i8, ptr %.484108.i, i64 104
end_hunk_0
